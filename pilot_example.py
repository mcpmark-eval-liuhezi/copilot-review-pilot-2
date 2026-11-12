#!/usr/bin/env python3
"""Pilot example script for GitHub Copilot code review demo.

This short script prints environment info and a status line.
It is intentionally minimal so the Copilot review feedback is easy to show.
"""

import os
import sys


def main() -> int:
    print("copilot-review-pilot-2: demo script")
    print(f"Python version: {sys.version.split()[0]}")
    print(f"Workspace: {os.getenv("GITHUB_WORKSPACE", "(unset)")}")
    print("Status: pilot review ready")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
