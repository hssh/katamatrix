#!/usr/bin/env python

import sys

def gce(n, m):
    if n == 0:
        return m
    elif n > m:
        return gce(m, n)
    else:
        return gce(m % n, n)

if len(sys.argv) < 2 or not sys.argv[1].isdigit() or not sys.argv[2].isdigit():
    print 'Usage:', sys.argv[0], 'num1 num2'

print gce(int(sys.argv[1]), int(sys.argv[2]))
