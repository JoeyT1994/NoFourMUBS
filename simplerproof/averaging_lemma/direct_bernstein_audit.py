"""Independent controls from exact trigonometric Taylor coefficients.

Do not audit by propagating the deliberately wide floating-point error
balls through a second interval sum: rounding of Arb's radius bounds can
make that second over-enclosure protrude beyond the first. Instead compute
the actual coefficients afresh from integer Laurent weights and Arb trig.
The original forward-error bounds and acceptance thresholds are unchanged.
"""
from flint import arb

def audit(T,path,co,bounds):
    den=2**T.level;nums=[2*int(path[j::4],2)+1-den for j in range(4)]
    angles=[arb.pi()*sum(int(k)*n for k,n in zip(freq,nums))/den for freq in T.freq]
    cosine=[x.cos() for x in angles];sine=[x.sin() for x in angles]
    double=T.W.shape[1]==2*len(T.freq)
    if not double:assert T.W.shape[1]==len(T.freq)
    coefficients=[]
    for j,degree in enumerate(T.degrees):
        trig=cosine+sine if double else (cosine if degree%2==0 else sine)
        exact=sum((arb(int(w))*v for w,v in zip(T.W[j],trig)),arb(0))
        bound=arb(float(co[j]),T.error[j])
        assert exact.is_finite() and exact.lower()>=bound.lower() and exact.upper()<=bound.upper()
        coefficients.append(exact*T.scale[j])
    controls=[sum((c*int(b) for c,b in zip(coefficients,row)),arb(0))/T.denominator for row in T.B]
    lo,hi=bounds
    assert all(c.is_finite() for c in controls)
    assert all(c.lower()>=lo+T.remainder and c.upper()<=hi-T.remainder for c in controls)
    return dict(controls=len(controls),exact_trigonometric_coefficients=len(coefficients),
                minimum_margin=str(min(min(c.lower()-lo-T.remainder,hi-T.remainder-c.upper()).lower() for c in controls)))

if __name__=='__main__':
    from scalar_bernstein import ScalarBernstein,conditions
    T=ScalarBernstein(7,conditions()['R_difference']);p='1110111100011110011010110000'
    co=T.coefficients([p]);bounds=T.enclosures(co,audit=False)
    print(audit(T,p,co[0],bounds[0]))
