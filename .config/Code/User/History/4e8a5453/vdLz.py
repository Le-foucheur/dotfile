from math import *
from matplotlib.pyplot import plot,show
from numpy import *

# evenly sampled time at 200ms intervals
t = arange(0., 5., 0.2)

# red dashes, blue squares and green triangles
plot(t, t, 'r--', t, t**2, 'bs', t, t**3, 'g^')
show()