"""Round a proposed reconstruction separator and verify it with exact/Arb bounds.

A verified negative support bound excludes the stated box and sign pairing.
It is NOT a global confinement certificate.
"""
from pathlib import Path
from fractions import Fraction as Q
from itertools import product
import json,math,time,sys,hashlib
import numpy as np
from flint import arb,acb,acb_mat,ctx
from reconstruction_polynomials import LP,combined_polynomials
HERE=Path(__file__).resolve().parent
RADII=[1,1,1,3,3,3]*2

def exact(x):return arb(x.numerator)/x.denominator

def rounded_witness(proposal,bits=40):
    D=2**bits
    Y=np.array(proposal['Y_real'])+1j*np.array(proposal['Y_imag'])
    lam=np.array(proposal['lambda_real'])+1j*np.array(proposal['lambda_imag'])
    def rounded(z):return LP.dyadic(round(Q(float(z.real))*D),round(Q(float(z.imag))*D),bits)
    ys=[];matrices=[];shifts=[]
    for y in Y:
        rounded_y=[[LP(0) for _ in range(3)] for _ in range(3)]
        for i in range(3):
            for j in range(i,3):
                z=complex(y[i,j].real,0 if i==j else y[i,j].imag)
                rounded_y[i][j]=rounded(z);rounded_y[j][i]=rounded_y[i][j].conjugate()
        shift=Q(1,2**24)
        for attempt in range(20):
            yy=[[rounded_y[i][j]+(LP.dyadic(shift.numerator,0,shift.denominator.bit_length()-1) if i==j else LP(0)) for j in range(3)] for i in range(3)]
            def value(p):
                r,i=p.d.get((0,0,0,0),(0,0));return acb(arb(r)/2**p.den,arb(i)/2**p.den)
            M=acb_mat([[value(p) for p in row] for row in yy])
            minors=[acb_mat([[M[i,j] for j in range(k)] for i in range(k)]).det() for k in [1,2,3]]
            if all(x.imag.contains(0) and x.real>0 for x in minors):break
            shift*=2
        else:raise ArithmeticError('Cannot verify positive definite dual matrix')
        ys.append(yy);shifts.append(str(shift))
    return ys,[rounded(z) for z in lam],shifts

def aggregate(A,E,Y,lam):
    result=[]
    for k in range(26):
        p=LP(0)
        for a in range(12):
            for i in range(3):
                for j in range(3):p+=Y[a][i][j]*A[a,j,i,k]
            p-=(lam[a].conjugate()*E[a,k]).real
        assert p.den==p.conjugate().den and p.d==p.conjugate().d
        result.append(p)
    return result

def taylor_support(polys,nums,h,degree=3,denominator=64):
    alpha=sorted((a for a in product(range(degree+1),repeat=4) if sum(a)<=degree),key=lambda a:(sum(a),a))
    trig={k:((arb.pi()*k/denominator).cos(),(arb.pi()*k/denominator).sin()) for k in range(2*denominator)}
    coeff=[];errors=[]
    for p in polys:
        halves=[]
        for k,(r,i) in p.d.items():
            if k<tuple(-x for x in k):continue
            factor=1 if not any(k) else 2
            co,si=trig[sum(a*b for a,b in zip(k,nums))%(2*denominator)]
            halves.append((k,(co*r-si*i)*factor,(si*(-r)-co*i)*factor))
        row=[]
        for a in alpha:
            d=sum(a);v=sum((vals[1+d%2]*math.prod(k**n for k,n in zip(vals[0],a)) for vals in halves),arb(0))
            row.append(v*((-1)**(d//2))/2**p.den)
        coeff.append(row)
        B=sum((abs(r)+abs(i))*sum(map(abs,k))**(degree+1) for k,(r,i) in p.d.items())
        errors.append((arb(B)*h**(degree+1)/(2**p.den*math.factorial(degree+1))).upper())
    def support(c,absolute):
        ans=abs(c[0]) if absolute else c[0]
        for j,r in enumerate(RADII):ans+=r*(c[1+2*j]**2+c[2+2*j]**2).sqrt()
        ans+=arb(5).sqrt()*(abs(c[-1]) if absolute else max(arb(0),c[-1].upper()))
        return ans.upper()
    by_degree=[arb(0)]*(degree+1)
    for j,a in enumerate(alpha):
        d=sum(a);fac=math.prod(math.factorial(x) for x in a)
        term=support([c[j] for c in coeff],d>0)*h**d/fac
        by_degree[d]+=term
    tail=errors[0]+sum(r*(errors[1+2*j]**2+errors[2+2*j]**2).sqrt() for j,r in enumerate(RADII))+arb(5).sqrt()*errors[-1]
    triangle_upper=sum(by_degree,arb(0))+tail
    # The support function is convex. The first-order coefficient vector
    # lies in the convex hull of its values at the 16 vertices of the cube.
    # Keep the common phase displacement across all unknown coefficients;
    # bounding each derivative separately loses this correlation.
    first=[alpha.index(tuple(int(i==j) for i in range(4))) for j in range(4)]
    vertex_upper=max(support([c[0]+sum(h*sign*c[j] for sign,j in zip(signs,first)) for c in coeff],False)
                     for signs in product([-1,1],repeat=4))
    affine_upper=vertex_upper+sum(by_degree[2:],arb(0))+tail
    upper=min(triangle_upper.upper(),affine_upper.upper())
    quadratic_upper=None
    if degree>=2:
        # Tensor Bernstein coefficients of the quadratic Taylor polynomial
        # on [-h,h]^4. For one coordinate, the coefficients of 1,x,x^2
        # in degree two are respectively (1,1,1), (-h,0,h), (h^2,-h^2,h^2).
        # Bernstein basis functions are nonnegative and sum to one.
        low=[(j,a) for j,a in enumerate(alpha) if sum(a)<=2]
        hull=[]
        for vertex in product(range(3),repeat=4):
            weights=[h**sum(a)*math.prod((1,vertex[k]-1,(1,-1,1)[vertex[k]])[a[k]] for k in range(4))
                     /math.prod(math.factorial(n) for n in a) for _,a in low]
            hull.append(support([sum((c[j]*w for (j,_),w in zip(low,weights)),arb(0)) for c in coeff],False))
        quadratic_upper=max(hull)+sum(by_degree[3:],arb(0))+tail
        upper=min(upper,quadratic_upper.upper())
    return dict(verified=bool(upper<0),support_upper=str(upper.upper()),support_upper_decimal=float(upper.upper()),
        triangle_upper=str(triangle_upper.upper()),affine_hull_upper=str(affine_upper.upper()),
        quadratic_hull_upper=str(quadratic_upper.upper()) if quadratic_upper is not None else None,
        by_degree=[str(x.upper()) for x in by_degree],remainder=str(tail.upper()),
        polynomial_term_counts=[len(p.d) for p in polys])

def main():
    import argparse
    parser=argparse.ArgumentParser();parser.add_argument('--input',default='robust_dual_proposals.json')
    parser.add_argument('--output',default='dual_witness_checks.json');parser.add_argument('--radius',default='1/100')
    parser.add_argument('--degree',type=int,default=3);parser.add_argument('--limit',type=int,default=0)
    args=parser.parse_args()
    ctx.prec=160
    proposals=json.loads((HERE/args.input).read_text())['rows']
    matrices={};out=[]
    for row in (proposals[:args.limit] if args.limit else proposals):
        start=time.monotonic();sigma=row['sigma']
        if sigma not in matrices:matrices[sigma]=combined_polynomials(sigma)
        A,E=matrices[sigma];Y,lam,shifts=rounded_witness(row['proposal']);polys=aggregate(A,E,Y,lam)
        denominator=2**(len(row['path'])//4)
        nums=[2*int(row['path'][j::4],2)+1-denominator for j in range(4)]
        h=arb(args.radius)
        # Tao's dephased corner coordinates are cube roots of unity. A
        # strict exclusion of any one such coordinate licenses matching.
        guard=None
        for j,n in enumerate(nums):
            angle=3*(arb.pi()*n/denominator+arb(0,h))
            for name,val in [('sin',angle.sin()),('cos_minus_one',angle.cos()-1)]:
                if not val.contains(0):guard=dict(coordinate=j,test=name,enclosure=str(val));break
            if guard:break
        assert guard is not None,'The matched-sign version requires a Tao-absence guard.'
        check=taylor_support(polys,nums,h,args.degree,denominator)
        r=dict(path=row['path'],center_pi_numerators=nums,center_pi_denominator=denominator,radius=args.radius,sigma=sigma,
            Tao_absence=guard,Taylor_degree=args.degree,
            dual_matrices_positive_definite=True,diagonal_shifts=shifts,**check,seconds=time.monotonic()-start)
        out.append(r);print(row['path'],sigma,'verified',r['verified'],'upper',r['support_upper_decimal'],'seconds',r['seconds'],flush=True)
        hashes={p.name:hashlib.sha256(p.read_bytes()).hexdigest() for p in [Path(__file__),HERE/'reconstruction_polynomials.py',HERE/'dual_reconstruction.py',HERE/args.input]}
        (HERE/args.output).write_text(json.dumps(dict(scope='Finite box/sign exclusions from reconstruction; not a global cover',global_confinement_proved=False,source_sha256=hashes,rows=out),indent=2)+'\n')
if __name__=='__main__':main()
