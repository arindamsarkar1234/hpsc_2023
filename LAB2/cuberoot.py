"""
I am creating a cuberoot function
"""
def cuberoot(x):
s=2;
km=50;
for k in range(km):
t=s
print("Number of Iterations %s, s= %s" %(k,s))
s=(2*s+x/s**2)/3
if s==t:
break
return(s)


def test_main():
from numpy import cbrt
xvalues=[-1.e6,-10,-2,0,2,10, 1.e6]
for x in xvalues:
print("testing x=%20.15e" %x)
s=cuberoot(x)
s_numpy=cbrt(x)
print("cuberoot s = %20.15e, numpy s =%20.15e" %(s,s_numpy))
assert abs(s-s_numpy) < 1.e-14, "Your cuberoot does not agree with numpy cbrt"
