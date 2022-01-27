# -*- coding: utf-8 -*-
"""
Created on Wed Jan 26 12:35:50 2022

@author: marcuslindskog
"""

class LengthError(Exception):
    pass

def hamming(strand1, strand2):
    hamming_dist = 0
    
    if len(strand1) != len(strand2):
        raise LengthError('Strands are not of the same length')
    
    for c in range(0,len(strand1)):
        if strand1[c] == strand2[c]:
            hamming_dist = hamming_dist + 1
            
    return(hamming_dist)
    
    
#Tests
y = "ABSD"
x = "ABSDD"

hamming(y, x)

y = "ABSDD"
x = "ABSDD"

hamming(y, x)

y = "CDSDA"
x = "ABSDD"

hamming(y, x)
