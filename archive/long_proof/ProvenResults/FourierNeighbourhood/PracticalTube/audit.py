"""Independent exact audit of family equivalences, grids and tube constants.

This does not replace the integer exhaustive search; it verifies the
non-search reductions on which that search depends.
"""
from fractions import Fraction as Q
from itertools import product
import hashlib
from pathlib import Path

# Affine phase = p coefficient, q coefficient, constant in turns.
def add(a,b):return tuple(x+y for x,y in zip(a,b))
def scale(k,a):return tuple(k*x for x in a)
def eq(a,b):return a[:2]==b[:2] and (a[2]-b[2]).denominator==1
p=(Q(1),Q(0),Q(0));q=(Q(0),Q(1),Q(0));zero=(Q(0),)*3

def N(r,c,pp=p,qq=q):
    ss,i=divmod(r,3);tt,j=divmod(c,3)
    return add(scale(ss,[zero,pp,qq][j]),(Q(0),Q(0),Q(i*j,3)+Q(ss*tt,2)))

generators=[
    (add(p,(0,0,Q(1,2))),q,lambda r:r,lambda c:((c//3)^int(c%3==1))*3+c%3,lambda r:zero,1),
    (p,add(q,(0,0,Q(1,2))),lambda r:r,lambda c:((c//3)^int(c%3==2))*3+c%3,lambda r:zero,1),
    (add(p,(0,0,Q(1,3))),add(q,(0,0,Q(2,3))),lambda r: r if r<3 else 3+(r-2)%3,lambda c:c,lambda r:zero,1),
    (q,p,lambda r:3*(r//3)+(-r)%3,lambda c:3*(c//3)+(-c)%3,lambda r:zero,1),
    (scale(-1,p),add(q,scale(-1,p)),lambda r:3*(r//3)+(-r)%3,
     lambda c:3*(c//3)+(1-c)%3,lambda r:(Q(-(r//3)),Q(0),Q(r%3,3)),1),
    (scale(-1,p),scale(-1,q),lambda r:3*(r//3)+(-r)%3,lambda c:c,lambda r:zero,-1),
]
for pp,qq,rperm,cperm,phase,sign in generators:
    assert len({rperm(r)for r in range(6)})==6
    assert len({cperm(c)for c in range(6)})==6
    for r,c in product(range(6),repeat=2):
        assert eq(N(r,c,pp,qq),add(scale(sign,N(rperm(r),cperm(c))),phase(r)))
print('PASS: 216 exact affine-phase identities for all six parameter generators')
# p=a+1/6, q=b+1/3 and row permutation to M.
for r,c in product(range(6),repeat=2):
    source=r//2+3*(r%2)
    actual=N(source,c,add(p,(0,0,Q(1,6))),add(q,(0,0,Q(1,3))))
    desired=add(scale(r%2,[zero,p,q][c%3]),(0,0,Q(r*c,6)))
    assert eq(actual,desired)
    # Integer centers and half widths of both generated Family variants.
    for grid in (180,360,720):
        for A,B in [(0,0),(28,0),(29,15),(59,5)]:
            vary=r%2 and c%3!=0
            k=A if c%3==1 else B if c%3==2 else 0
            center=Q(r*c,6)+(Q(2*k+1,2*grid) if vary else 0)
            half=Q(1,2*grid) if vary else Q(0)
            for eps in (-1,1):
                actual=N(source,c,(0,0,Q(A,grid)+Q(1,6)+Q(eps+1,2*grid)),
                         (0,0,Q(B,grid)+Q(1,3)+Q(eps+1,2*grid)))
                assert eq(actual,(0,0,center+eps*half))
print('PASS: exact matrix convention and coarse/refined interval endpoints')
parents={(28,0),(28,1),(29,0),(29,1),(29,2)}
coarse={(a,b)for a in range(30)for b in range(a//2+2)}
assert len(coarse)==270 and parents<=coarse
for a,b in parents:
    for j,k in product((0,1),repeat=2):
        assert Q(2*a+j,360)==Q(a,180)+Q(j,360)
        assert Q(2*a+j+1,360)==Q(a,180)+Q(j+1,360)
        assert Q(2*b+k,360)==Q(b,180)+Q(k,360)
        assert Q(2*b+k+1,360)==Q(b,180)+Q(k+1,360)
leaves={(180,a,b)for a,b in coarse-parents}|{(360,2*a+i,2*b+j)for a,b in parents for i,j in product((0,1),repeat=2)}
second={(360,58,0),(360,59,0),(360,59,1)}
assert second<=leaves
leaves-=second
for grid,a,b in second:
    for i,j in product((0,1),repeat=2):
        assert Q(2*a+i,720)==Q(a,360)+Q(i,720)
        assert Q(2*b+j,720)==Q(b,360)+Q(j,720)
        assert Q(2*a+i+1,720)==Q(a,360)+Q(i+1,720)
        assert Q(2*b+j+1,720)==Q(b,360)+Q(j+1,720)
        leaves.add((720,2*a+i,2*b+j))
assert len(leaves)==294
for grid in (180,360,720):assert 218880%(2*grid)==0
for a in range(30):assert (a+1)//2<=a//2+1
print('PASS: 270-parent cover and exact four-child partitions; 294 leaves')
# Transpose and raw-amplitude inequalities, with rational square witnesses.
assert Q(31,32)**2<Q(63,64)
assert Q(12)/(1+Q(31,32))==Q(128,21)<Q(25,4)
assert Q(5,2)**2>6 and Q(11,2)**2>30
assert Q(5,2)/8+Q(11,2)<6
assert Q(15,16384)<Q(1,1000)
# Arithmetic range bounds (larger than every actual scalar-test operand).
scaleQ=2**26
assert 2*(12*scaleQ+10)**2<2**61
assert 710*scaleQ*5*(218880//38+218880//360)<2**63
assert 2432<2**12 and 7<2**3
print('PASS: transpose radius 1/16384, raw tolerance 1/1000, integer ranges, cache fields')
for name in ('tube.cpp','domain_audit.py','verify_partition.py','audit.py'):
    print(hashlib.sha256(Path(__file__).with_name(name).read_bytes()).hexdigest(),name)
