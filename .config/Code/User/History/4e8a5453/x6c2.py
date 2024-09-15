from math import *
from matplotlib.pyplot import plot,show
from numpy import *

T = 2*pi
N = 100
t = arange(0., 2*T, T/N)

def e1(x):
    return sin(2*pi*x/T)

plot(t, e1(t))
show()