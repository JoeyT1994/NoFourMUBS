"""Exact arithmetic replay; no campaign computation or random tests."""
from fractions import Fraction as F
from math import factorial
from itertools import product

x=float.fromhex('0x0.fffffffffffffp-1022')
a=float.fromhex('0x1.0000000000001p+1023')
u=2.0**-53
assert F(x)==F(2)**-1022*(1-F(2)**-52)
assert F(a)==F(2)**1023*(1+F(2)**-52)
assert F(x)*F(a)==2-F(2)**-103
assert x*a==2 and u*x==0
assert F(2)**-103>F(1e-298)>F(1e-300)
# Reproduce up with correctly rounded FMA using exact rational evaluation.
def up(t):
    return float(F(t)*F(1+2.0**-30)+F(1e-300))
r=up(0.0)
r=up(r) # subtracting 2: the new coefficient and its error allowance are zero
pad=up(2.0**-40*r)
endpoint=float(r+pad)
assert F(endpoint)<F(1e-298)<F(2)**-103
for alpha in (F(1,2),F(1,3)):
    b=F(1)
    for k in range(1,101):
        new=b*(alpha-(k-1))/k
        assert abs(new)<=abs(b)
        b=new
for k in range(19):
    assert F(float(factorial(k)))==factorial(k)
signs=list(product((-1,1), repeat=5))
assert min(abs(sum(e)) for e in signs)==1
assert len([e for e in signs if e[0]==1])==16
# 24c²+10c+2-6 = 2(4c-1)(3c+2).
assert (24,10,-4)==(2*4*3,2*(4*2-3),-2*2)
assert F(24)*F(1,4)**2+F(10)*F(1,4)+2==6
print('PASS: exact FastTM underflow witness and false composed range enclosure')
print('PASS: binomial recurrences, exact factorials 0..18, 16-pattern capacity and threshold')
