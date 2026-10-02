"""Cheap outward-Arb test of the already proved canonical F ordering."""
from flint import arb

def exclude_F(centers,radii):
    cc,hh=list(map(arb,centers)),list(map(arb,radii))
    if len(cc)!=4 or len(hh)!=4 or not all(h>=0 for h in hh):
        raise ValueError('Four centres and nonnegative radii required')
    if not all(x.is_finite() for x in cc+hh):return dict(ok=False,reason='unbounded_input')
    a,b,c,d=[v+arb(0,h) for v,h in zip(cc,hh)]
    def mod(x,y):return 3+2*(x.cos()+y.cos()+(x-y).cos())
    horizontal=[mod(a,b),mod(c,d),mod(a-c,b-d)]
    vertical=[mod(a,c),mod(b,d),mod(a-b,c-d)]
    pairs=[(horizontal[0],horizontal[1]),(horizontal[1],horizontal[2]),
           (vertical[0],vertical[1]),(vertical[1],vertical[2]),(horizontal[0],vertical[0])]
    for index,(x,y) in enumerate(pairs):
        if x-y<0:return dict(ok=True,scope='outside_F',inequality=index,reason='strict_order_violation')
    return dict(ok=False,reason='unresolved')
