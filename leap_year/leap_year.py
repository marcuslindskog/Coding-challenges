# -*- coding: utf-8 -*-
"""
Created on Wed Jan 26 11:59:58 2022

@author: marcuslindskog
"""


def leap(year):
    return(year%4 == 0 and (year%100 != 0 or year%400 == 0))

#Tests
leap(1996)
leap(1997)
leap(1900)
leap(2000)
