"""Exact partition of an enlarged rational box into an inner box and slabs."""
from fractions import Fraction as Q

def normalize(bounds):
    b=tuple((Q(a),Q(z)) for a,z in bounds)
    if len(b)!=4 or any(a>=z for a,z in b):raise ValueError('Four positive-width rational intervals required')
    return b

def partition(outer,inner):
    outer,inner=normalize(outer),normalize(inner)
    if any(not a<=c<d<=b for (a,b),(c,d) in zip(outer,inner)):
        raise ValueError('Inner box is not contained in outer box')
    slabs=[]
    for axis in range(4):
        a,b=outer[axis];c,d=inner[axis]
        if a<c:slabs.append(inner[:axis]+((a,c),)+outer[axis+1:])
        if d<b:slabs.append(inner[:axis]+((d,b),)+outer[axis+1:])
    return [inner,*slabs]

def audit(outer,inner,leaves):
    expected=partition(outer,inner);actual=[normalize(b) for b in leaves]
    if len(set(actual))!=len(actual) or set(actual)!=set(expected):
        raise ValueError('Missing, duplicated or changed collar leaf')
    def volume(b):
        v=Q(1)
        for a,z in b:v*=z-a
        return v
    if sum(map(volume,actual),Q(0))!=volume(normalize(outer)):
        raise ValueError('Volume mismatch')
    return True
