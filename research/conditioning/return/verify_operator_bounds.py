#!/usr/bin/env python3
"""Exact scalar bounds and normalization checks for OPERATOR_QUANTITATIVE.md."""
from fractions import Fraction as Q
from math import comb, factorial


def mul(a,b):
    bt=list(zip(*b))
    return [[sum(x*y for x,y in zip(row,col)) for col in bt] for row in a]


def check_cross_unitary(exponents):
    n=6
    c2=[2,1,-1,-2,-1,1]
    s2=[0,1,1,0,-1,-1]
    cells=[(a,j) for a in range(n) for j in range(n)]
    t=[]; s=[]
    for a,j in cells:
        tr=[]; sr=[]
        for b,k in cells:
            z=(exponents[a][j]-exponents[b][j]+exponents[b][k]-exponents[a][k])%6
            tr.append(c2[z]); sr.append(s2[z])
        t.append(tr);s.append(sr)
    assert t==list(map(list,zip(*t)))
    assert s==list(map(list,zip(*s)))
    tt=mul(t,t);ss=mul(s,s)
    assert all(tt[a][b]+3*ss[a][b]==(144 if a==b else 0) for a in range(36) for b in range(36))
    assert mul(t,s)==mul(s,t)
    gauge=[]
    for r in range(6): gauge.append([int(a==r) for a,j in cells])
    for c in range(6): gauge.append([int(j==c) for a,j in cells])
    for g in gauge:
        assert [sum(x*y for x,y in zip(row,g)) for row in t]==[12*x for x in g]
        assert all(sum(x*y for x,y in zip(row,g))==0 for row in s)


def main():
    assert 64*Q(12,5)**5 < 72**2
    assert Q(49,20)**2>6
    scalar=2*72**2*64+Q(243,2)*(64+144*Q(49,20))**2
    assert scalar<4700**2
    height=comb(25,21)*factorial(21)*8**21
    assert height<2**143
    assert 2**143>2*50+2*55
    assert 84**50<2**320
    assert (2**122)*(84**50)<2**442
    assert 12**10<2**36
    exponent=50*2**50*84**50
    assert exponent==50*168**50
    N=221*exponent+36
    assert N==11050*168**50+36
    fourier=[[(a*j)%6 for j in range(6)] for a in range(6)]
    tao3=[[0,0,0,0,0,0],[0,0,1,1,2,2],[0,1,0,2,2,1],
          [0,1,2,0,1,2],[0,2,2,1,0,1],[0,2,1,2,1,0]]
    tao6=[[2*v for v in row] for row in tao3]
    check_cross_unitary(fourier)
    check_cross_unitary(tao6)
    print('PASS: all exact coefficient, scalar and exponent bounds')
    print('PASS: exact Fourier/Tao cross-ratio unitary and gauge normalization')
    print('N =',N)

if __name__=='__main__':
    main()
