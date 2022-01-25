# -*- coding: utf-8 -*-
"""
Created on Tue Jan 25 13:44:39 2022

@author: marcuslindskog
"""
from itertools import compress

def raindrops(number):
    resp_text = ["Pling", "Plang", "Plong", str(number)]
    resp_check = [number%3==0, number%5==0, number%7==0, number%3!=0 and number%5!=0 and number%7!=0]
    resp_out = list(compress(resp_text, resp_check))
    return print(f"{''.join(resp_out)}")


##Checks
raindrops(1)
raindrops(3)
raindrops(5)
raindrops(7)
raindrops(15)
raindrops(21)
raindrops(35)
raindrops(68)
raindrops(105)