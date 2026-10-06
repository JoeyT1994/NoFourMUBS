"""Exact rational controls for native interval and radial Taylor-model arithmetic.
These controls supplement the analytic remainder proof; they do not replace it.
"""
from fractions import Fraction as Q
from pathlib import Path
import itertools, math

def number(s):
    f=float.fromhex(s) if '0x' in s.lower() else float(s)
    if not math.isfinite(f):raise AssertionError('nonfinite native endpoint')
    return Q(f)

def add(a,b):
    c=dict(a)
    for e,v in b.items():c[e]=c.get(e,Q(0))+v
    return {e:v for e,v in c.items() if v}

def mul(a,b):
    c={}
    for e,v in a.items():
        for f,w in b.items():
            g=tuple(x+y for x,y in zip(e,f));c[g]=c.get(g,Q(0))+v*w
    return {e:v for e,v in c.items() if v}

def scale(a,b):return {e:v*b for e,v in a.items() if v*b}

def power(a,n):
    out={(0,)*8:Q(1)}
    for _ in range(n):out=mul(out,a)
    return out

def formal_polynomials(degree):
    zero=(0,)*8;e0=(1,)+(0,)*7;e1=(0,1)+(0,)*6
    one={zero:Q(1)};p={zero:Q(1),e0:Q(1,8),e1:Q(1,16)}
    s={e0:Q(1,16),e1:Q(-1,32)}
    inv={}
    for n in range(degree+1):inv=add(inv,scale(power(s,n),Q((-1)**n,2)))
    v={e0:Q(1,32),e1:Q(-1,64)};root={};bc=Q(1)
    for n in range(degree+1):
        if n:bc*= (Q(1,2)-(n-1))/n
        root=add(root,scale(power(v,n),2*bc))
    return [power(p,6),inv,{zero:Q(2),e0:Q(1,16)},{},{zero:Q(2),e0:Q(1,8),e1:Q(-1,16)},root]

def sqrt_bounds(a):
    scale=1<<256;k=math.isqrt((a.numerator*scale*scale)//a.denominator)
    lo=Q(k,scale);hi=lo if lo*lo==a else Q(k+1,scale)
    assert lo*lo<=a<=hi*hi
    return lo,hi

def target(model,x,y):
    a=2+x/8-y/16
    if model==0:v=(1+x/8+y/16)**6
    elif model==1:v=1/a
    elif model==2:v=2+x/16
    elif model==3:v=Q(0)
    elif model==4:v=a
    else:return sqrt_bounds(4+x/8-y/16)
    return v,v

def check_file(path):
    ninterval=ntrig=0;ex={};pairs=[];tails={};coeff={};degree=count=None
    for raw in Path(path).read_text().splitlines():
        row=raw.split();tag=row[0]
        if tag=='I':
            mode=int(row[1])%4;a,b,c,d,lo,hi=map(number,row[2:]);assert a<=b and c<=d and lo<=hi
            if mode==0:values=[a+c,b+d]
            elif mode==1:values=[a-d,b-c]
            elif mode==2:values=[x*y for x in (a,b) for y in (c,d)]
            else:
                assert not c<=0<=d;values=[x/y for x in (a,b) for y in (c,d)]
            assert lo<=min(values)<=max(values)<=hi,(row,values)
            ninterval+=1
        elif tag=='T':
            t,slo,shi,clo,chi=map(number,row[1:]);ns=21
            s=sum(((-1)**k*t**(2*k+1)/math.factorial(2*k+1) for k in range(ns)),Q(0))
            c=sum(((-1)**k*t**(2*k)/math.factorial(2*k) for k in range(ns)),Q(0))
            sr=abs(t)**(2*ns+1)/math.factorial(2*ns+1);cr=abs(t)**(2*ns)/math.factorial(2*ns)
            assert slo<=s-sr and s+sr<=shi and clo<=c-cr and c+cr<=chi,row
            ntrig+=1
        elif tag=='B':degree,count,pair_count=map(int,row[1:])
        elif tag=='E':
            i=int(row[1]);assert i not in ex;ex[i]=tuple(map(int,row[2:]));assert len(ex[i])==8
        elif tag=='J':pairs.append(tuple(map(int,row[1:])))
        elif tag=='P':tails[int(row[1])]=number(row[2]);assert tails[int(row[1])]>=0
        elif tag=='C':
            m,i=map(int,row[1:3]);lo,hi=map(number,row[3:]);assert lo<=hi
            assert (m,i) not in coeff;coeff[m,i]=(lo,hi)
        else:raise AssertionError('unknown control tag')
    assert degree in (2,4) and count==math.comb(8+degree,degree)
    assert set(ex)==set(range(count)) and len(set(ex.values()))==count
    assert ex[0]==(0,)*8 and all(min(e)>=0 and sum(e)<=degree for e in ex.values())
    invex={e:i for i,e in ex.items()};expected=[]
    for i,e in ex.items():
        for j,f in ex.items():
            g=tuple(x+y for x,y in zip(e,f))
            if sum(g)<=degree:expected.append((i,j,invex[g]))
    assert len(pairs)==pair_count and len(set(pairs))==pair_count and set(pairs)==set(expected)
    polys=formal_polynomials(degree);assert set(tails)==set(range(6)) and len(coeff)==6*count
    for m in range(6):
        for i,e in ex.items():
            lo,hi=coeff[m,i];truth=polys[m].get(e,Q(0));assert lo<=truth<=hi,(m,e,truth,lo,hi)
    points=0
    for x,y in itertools.product([Q(-1),Q(-1,2),Q(0),Q(1,2),Q(1)],repeat=2):
        h=max(abs(x),abs(y));z=[x,y]+[Q(0)]*6
        for m in range(6):
            lower=upper=Q(0)
            for i,e in ex.items():
                v=math.prod(z[j]**e[j] for j in range(8));a,b=coeff[m,i];av,bv=a*v,b*v
                lower+=min(av,bv);upper+=max(av,bv)
            err=tails[m]*h**(degree+1);vl,vh=target(m,x,y)
            assert lower-err<=vl<=vh<=upper+err,(degree,m,x,y,lower-err,vl,vh,upper+err)
            points+=1
    return {'status':'PASS','degree':degree,'interval_operations':ninterval,'trigonometric_controls':ntrig,'monomials':count,'multiplication_pairs':pair_count,'exact_coefficient_controls':6*count,'radial_remainder_regression_points':points}
