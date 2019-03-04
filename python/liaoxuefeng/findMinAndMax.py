#!/usr/bin/env python
# -*- coding: utf-8 -*-

def findMinAndMax(L):
    if L==[]:
        return (None,None)
    min=max=L[0]
    for i in L:
        if i > max:
            max = i
        if i < min:
            min = i
    return (min,max)
    

print (findMinAndMax([7, 1, 3, 9, 5]))
