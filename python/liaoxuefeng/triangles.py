#!/usr/bin/env python
# -*- coding: utf-8 -*

def triangles(max):
    N = [1]
    total = 0
    while total<max:
        yield N
        S = N[:]
        S.append(0)
        N = [S[i-1]+S[i] for i in range(len(S))]
        total+=1

for line in triangles(9):
    print(line)