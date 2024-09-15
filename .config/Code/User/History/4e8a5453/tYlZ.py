from math import *
from matplotlib.pyplot import plot,show
from numpy import *

T = 2*pi
N = 100
t = arange(0., 2*T, T/N)

def e1(x):
    return sin(2*pi*x/T)

def e2(x):
    for i in range(1,5):
        (1/(2*i+1)) * sin(2*pi*(2*pi+1)*x/T)

plot(t, e1(t), t, "b", e2(t), "r")
show()