# make_generator

## Summary
Make_generator uses a broad makefile template, and simply applies it to the files whose names (before file type) are identical to the project name. It stores this makefile in a new directory named after the project, unless a directory of that name exists already.

## Purpose
This program is designed to simplify C++ project creation and compilation through GCC from a command line environment.

## Example

```bash
./mk_gen.py -f projectname
Directory projectname Created
```

