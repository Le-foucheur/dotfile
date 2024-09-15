from math import *
from matplotlib import plot,show
from numpy import *

T = 2*pi
N = 100
t = [i/N from i in range(floor(2*T))]

def e1(t):
    return sin(2*pi*t/(2*T))
    
plot(t,e1(t))