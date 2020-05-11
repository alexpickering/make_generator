#!/usr/bin/python3
# -*- coding: utf-8 -*-

import os
import argparse

def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('--filepath', '-f', type=str)
    args = parser.parse_args()
 
    if not args.filepath:
        project = input("Enter project name: ")
    else:
        project = args.filepath

    path = os.path.join(os.getcwd(), project)
    try:
        os.mkdir(path)
        print("Directory ", project, " Created")
    except FileExistsError:
        print("Directory ", project, " already exists")

    with open('makefile', 'r') as f:
        makefile = f.read()

    makefile = makefile.replace('test', project)

    with open(os.path.join(path, 'makefile'), 'w') as f:
        f.write(makefile)

if __name__ == "__main__":
    main()

