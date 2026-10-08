"""Exact Laurent-polynomial proof of the six-corner comparison identity."""
from functools import reduce
from itertools import product
import sympy as sp
from sympy.polys.rings import ring


def verify_identity(coefficients, variance_coefficients=None):
    domain = sp.QQ.algebraic_field(sp.sqrt(3)*sp.I)
    polys,z,w = ring('z,w',domain)
    omega = polys(domain.from_sympy((-1+sp.sqrt(3)*sp.I)/2))
    # Monomials (omega exponent,z exponent,w exponent,alpha exponent,gamma exponent).
    xs = [(0,0,0,0,0),(1,0,0,0,0),(2,0,0,0,0),
          (0,0,0,1,0),(1,0,0,1,0),(2,0,0,1,0)]
    ys = [(0,0,0,0,0),(0,1,0,0,0),(0,0,1,0,0),
          (0,0,0,0,1),(0,0,-1,0,1),(0,-1,0,0,1)]
    def difference(a,b):return tuple(x-y for x,y in zip(a,b))
    def sine_numerator(a,b):
        d=difference(a,b)
        return [(d,1),(tuple(-v for v in d),-1)]
    def parity(seq):return (-1)**sum(seq[i]>seq[j]for i in range(6)for j in range(i+1,6))
    def q_terms(cols):
        xx=[xs[c]for c in cols];yy=[ys[c]for c in cols]
        gg=[difference(y,x)for x,y in zip(xx,yy)];out={}
        for i,j in product(range(3),repeat=2):
            if i==j:continue
            a,b=[k for k in range(3)if k!=i];c,d=[k for k in range(3)if k!=j]
            sign=parity([2*a,2*b,2*c+1,2*d+1,2*i,2*j+1])
            for terms in product(sine_numerator(xx[b],xx[a]),sine_numerator(yy[d],yy[c]),sine_numerator(gg[i],gg[j])):
                ex=tuple(sum(t[0][k]for t in terms)for k in range(5))
                cc=sign*reduce(lambda a,b:a*b,[t[1]for t in terms])
                out[ex]=out.get(ex,0)+cc
        return {k:v for k,v in out.items()if v}
    S=1+z+w;Sb=z*w+z+w
    T=1+omega**2*z+omega*w;Tb=z*w+omega*w+omega**2*z
    # alpha=S*Tb/(Sb*T), gamma=-(zw)*S/Sb; Sb=(zw)*conj(S).
    nums=[z,w,S*Tb,-z*w*S];dens=[polys.one,polys.one,Sb*T,Sb]
    chosen=[(0,1,3),(0,1,5),(0,2,3),(0,2,4),(1,2,4),(1,2,5)]
    qs=[q_terms([c for c in range(6)if c not in J])for J in chosen]
    bounds=[max(abs(key[i+1])for q in qs for key in q)for i in range(4)]
    assert bounds==[3,3,2,2]
    D=reduce(lambda a,b:a*b,[(n*d)**b for n,d,b in zip(nums,dens,bounds)],polys.one)
    powers=[{e:n**(b+e)*d**(b-e)for e in range(-b,b+1)}for n,d,b in zip(nums,dens,bounds)]
    squares=[]
    for q in qs:
        poly=polys.zero
        for key,cc in q.items():
            poly+=cc*omega**(key[0]%3)*reduce(lambda a,b:a*b,[pp[e]for pp,e in zip(powers,key[1:])],polys.one)
        squares.append(poly**2)
    # The complementary-square identity gives R=-q_raw^2: each of
    # three sine factors contributes 1/(2i), cancelling the factor 64.
    numerator=-sum(squares,polys.zero)*(z*w)**4+54*(z*z-w)**2*(w*w-z)**2*(z*w-1)**2*D**2
    denominator=(z*w)**4*D**2
    Yp=S*Sb;Zp=T*Tb
    assert Yp-Zp==(1-omega**2)*(z-omega**2)*(w-omega)*(z-omega*w)
    Uraw=9*z*w-Yp-Zp
    assert 36*Uraw**3*z*w-(Yp*Zp-Uraw*(Uraw+9*z*w))**2 == -9*(z*z-w)**2*(w*w-z)**2*(z*w-1)**2
    # alpha^3 alignment is exactly measured by the modulus imbalance.
    an=S*Tb;ad=Sb*T
    Rnum=-9*(z*z-w)**2*(w*w-z)**2*(z*w-1)**2
    assert -(an**3-ad**3)**2==(Yp-Zp)**2*Rnum
    expected=polys.zero
    for i,j,cc in coefficients:
        assert i+2*j<=10
        expected+=domain.from_sympy(sp.Rational(cc))*(Yp-Zp)**2*(Yp+Zp)**i*(Yp*Zp)**j*(z*w)**(10-i-2*j)
    common=(z*w)**10*S**4*Sb**4
    assert denominator==common*(z*w)**4*Yp**4*Zp**4
    assert numerator==common*expected
    print('PASS: exact six-corner comparison identity over Q(sqrt(-3))[z,w]',flush=True)

    if variance_coefficients is not None:
        differences=[-q*(z*w)**4-Rnum*D**2 for q in squares]
        variance=sum((v*v for v in differences),polys.zero)
        expected=polys.zero
        for i,j,cc in variance_coefficients:
            assert i+2*j<=22
            expected+=domain.from_sympy(sp.Rational(cc))*(Yp+Zp)**i*(Yp*Zp)**j*(z*w)**(22-i-2*j)
        common=(z*w)**20*S**8*Sb**8*(Yp-Zp)**2
        assert variance==common*expected
        assert (z*w)**8*D**4==(z*w)**20*S**8*Sb**8*(z*w)**8*Yp**8*Zp**8
        print('PASS: exact six-corner squared-gap identity over Q(sqrt(-3))[z,w]',flush=True)
