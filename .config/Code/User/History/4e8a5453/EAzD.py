from math import *
from matplotlib.pyplot import plot,show
from numpy import *

T = 2*pi
N = 10000
t = arange(0., 2*T, T/N)

def e1(x):
    return sin(2*pi*x/T)

def e2(x):
    res = 0
    for i in range(1,200):
        res += (1/(2*i+1)) * sin(2*pi*(2*i+1)*x/T)
    return res

plot(t, e1(t), "b", t, e2(t), "r")
show()