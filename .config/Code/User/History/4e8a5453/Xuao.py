from math import *
from matplotlib.pyplot import plot,show
from numpy import *

T = 2*pi
N = 100
t = arange(0., 2*T, T/N)

# red dashes, blue squares and green triangles
plot(t, t)
show()