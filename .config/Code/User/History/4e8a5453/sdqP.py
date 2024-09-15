from math import *
from matplotlib.pyplot import plot,show
from numpy import *

T = 2*pi
N = 10000
t = arange(0., 2*T, T/N)

def e2(x):
    res = 0
    for i in range(0,5):
        res += (1/(2*i+1)) * sin(2*pi*(2*i+1)*x/T)
    return res

def s1

plot(t, e2(t), "r")
show()