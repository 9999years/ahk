#!/usr/bin/env python3.7
"""Note: This script is non-working / deprecated by now.

It was an experiment to generate (partial) AHK scripts from YAML data, but
turned out to be more trouble than it was worth. It will be rewritten to
perform roughly the same functionality (checking that hotstrings don't have
duplicate/conflicting prefixes) by doing a (partial) parse of the AHK scripts
in their raw form.
"""

from typing import Dict, Iterable, Tuple, Union, Any
import argparse
from argparse import ArgumentParser
from dataclasses import dataclass

from blessings import Terminal
import yaml

t = Terminal()

NO_ENDING_CHARACTER = "*"
NEEDS_ENDING_CHARACTER = "*0"


@dataclass
class Hotstring:
    search: str
    replace: str
    options: str = ""


def hotstring_from_yaml(search: str, replace: Union[str, Dict[str, str]]) -> Hotstring:
    if isinstance(replace, str):
        return Hotstring(search, replace)
    else:
        return Hotstring(search, replace=replace["repl"], options=replace["opts"])


def prefixes(s: str) -> Iterable[str]:
    for i in range(1, len(s)):
        yield s[:i]


def prefix_conflicts(mapping: Dict[str, str]) -> Iterable[Tuple[str, Iterable[str]]]:
    for key in mapping:
        conflicts = [prefix for prefix in prefixes(key) if prefix in mapping]
        if conflicts:
            yield (key, conflicts)


def format_prefix_conflicts(mapping: Dict[str, Hotstring]) -> str:
    ret = []
    for key, conflicts in prefix_conflicts(hotstrings_to_dict(mapping)):
        ret.append(
            t.bold_red
            + key
            + t.normal
            + " :: "
            + t.cyan
            + f"{t.normal}, {t.cyan}".join(conflicts)
        )
    return "\n".join(ret)


def format_ahk(mapping: Dict[str, Hotstring], prefix=";", postfix="") -> str:
    ret = [f'; === Generated with {__file__} === ;']
    for key, val in mapping.items():
        ret.append(f":{val.options}:{prefix}{val.search}{postfix}::{val.replace}")
    return "\n".join(ret)


def yaml_to_hotstrings(data: Dict[str, Any]) -> Dict[str, Hotstring]:
    return {key: hotstring_from_yaml(key, val) for key, val in data.items()}


def hotstrings_to_dict(data: Dict[str, Hotstring]) -> Dict[str, str]:
    return {
        key: val.replace
        for key, val in data.items()
        if NO_ENDING_CHARACTER not in val.options
    }


def argparser() -> ArgumentParser:
    parser = ArgumentParser(description="???")
    parser.add_argument("FILE", help="YAML input file.")
    return parser


def main():
    args = argparser().parse_args()
    with open(args.FILE) as f:
        data = yaml_to_hotstrings(yaml.safe_load(f.read()))
    conflicts = format_prefix_conflicts(data)
    if conflicts:
        print(conflicts)
    else:
        print(format_ahk(data))


if __name__ == "__main__":
    main()
