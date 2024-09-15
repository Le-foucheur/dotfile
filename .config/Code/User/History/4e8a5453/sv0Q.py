from math import *
from matplotlib.pyplot import plot,show
from numpy import *

T = 2*pi
N = 100
t = [i/N for i in range(int(floor(2*T)))]

def e1(x):
    return sin(2*pi*x/(2*T))
    

plot(t,e1(t))
show()
