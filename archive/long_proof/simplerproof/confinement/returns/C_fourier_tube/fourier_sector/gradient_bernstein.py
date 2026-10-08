"""Exact tensor Bernstein bound on the Fourier ambient-gradient polynomial."""
from fractions import Fraction as F
from math import comb

# P(p,q) for p=cos((x+y)/2), q=cos((x-y)/2).
COEFFICIENTS = {
    (4,0):1248,
    (3,3):-5376,(3,1):3744,
    (2,6):19968,(2,4):-31104,(2,2):11808,(2,0):-2184,
    (1,5):-1152,(1,3):3648,(1,1):-1512,
    (0,6):-15360,(0,4):23040,(0,2):-8064,(0,0):1296,
}
DEGREES=(4,6)

def initial_bernstein():
    """Exact power-to-Bernstein conversion after p=2s-1,q=2t-1."""
    m,n=DEGREES
    power={}
    for (a,b),c in COEFFICIENTS.items():
        for i in range(a+1):
            for j in range(b+1):
                k=(i,j)
                value=c*comb(a,i)*comb(b,j)*2**(i+j)*(-1)**(a+b-i-j)
                power[k]=power.get(k,0)+value
    return tuple(tuple(sum(F(c*comb(i,k)*comb(j,l),comb(m,k)*comb(n,l))
                           for (k,l),c in power.items() if k<=i and l<=j)
                       for j in range(n+1)) for i in range(m+1))

def split_line(v):
    left=[v[0]];right=[v[-1]]
    while len(v)>1:
        v=tuple((v[i]+v[i+1])/2 for i in range(len(v)-1))
        left.append(v[0]);right.append(v[-1])
    return tuple(left),tuple(reversed(right))

def split_tensor(B,axis):
    if axis==1:
        pairs=[split_line(row) for row in B]
        return tuple(p[0] for p in pairs),tuple(p[1] for p in pairs)
    columns=list(zip(*B))
    pairs=[split_line(col) for col in columns]
    return (tuple(zip(*(p[0] for p in pairs))),
            tuple(zip(*(p[1] for p in pairs))))

def certify(bound=F(1767), max_depth=40):
    todo=[(initial_bernstein(),0)]
    leaves=0;max_used=0;max_upper=None
    while todo:
        B,depth=todo.pop()
        upper=max(c for row in B for c in row)
        if upper <= bound:
            leaves+=1;max_used=max(max_used,depth)
            if max_upper is None or upper>max_upper: max_upper=upper
            continue
        assert depth<max_depth, ('certificate depth exceeded',depth,upper)
        left,right=split_tensor(B,depth%2)
        todo.append((right,depth+1));todo.append((left,depth+1))
    return {'leaves':leaves,'max_depth':max_used,'max_upper':max_upper}

if __name__=='__main__':
    print(certify())
