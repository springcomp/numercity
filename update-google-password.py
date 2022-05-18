#!/usr/bin/env python3
"""
Use: update-google-password <configuration-file.yml> <password>
"""

import ruamel.yaml as yaml
import sys

def main(path, password):
    with open(path) as f:
        data = yaml.load(f, yaml.RoundTripLoader)
    data['spring']['mail']['password'] = password
    with open(path, "w") as f:
        f.writelines(yaml.dump(data, Dumper=yaml.RoundTripDumper))
        f.close()
                

if __name__ == '__main__':
    if len(sys.argv) < 2:
        print(__doc__)
        exit(1)
    exit(main(*sys.argv[1:]))

