#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import math

def quadratic(a,b,c):
    n1 = b*b-4*a*c
    if a == 0 :
        x1 = -c/b
        x2 = c/b
        return x1,x2
    elif n1 < 0 :
        print('无解')
    else:
        n2 = math.sqrt(n1)
        x1 = (b-n2)/2*a
        x2 = (b+n2)/2*a
        return x1,x2

print(quadratic(0,3,1))
print(quadratic(1, 3, -4))