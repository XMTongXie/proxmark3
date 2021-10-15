#!/usr/bin/python
from __future__ import with_statement
import sys
import binascii

def main(argv):
    argc = len(argv)
    if argc < 3:
        print 'Usage:', argv[0], 'data.txt output.bin'
        sys.exit(1)
    
    with file(argv[1], "r") as file_inp, file(argv[2], "wb") as file_out:
        for line in file_inp:
            line = line.rstrip('\n').rstrip('\r')
            print line
            data = binascii.unhexlify(line)
            file_out.write(data)

if __name__ == '__main__':
    main(sys.argv)
