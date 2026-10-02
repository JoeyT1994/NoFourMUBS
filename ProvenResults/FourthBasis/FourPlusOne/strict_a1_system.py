"""Exact a=-1 specialization of the current global measurement equations.

No numerical seed, sampled slice, side reconstruction, or local chart is used.
All expressions are Laurent polynomials in phase variables after the harmless
complex moment denominators have been cleared. Use build_system(3) for the
21 real ray equations plus the shared sheet equation tau**2=R, tau>0.
"""
from functools import lru_cache
from pathlib import Path
import json
import sympy as sp

b,c,d=sp.symbols('b c d',nonzero=True)
tau=sp.Symbol('tau',real=True)
SEEDS=(b,c,d)


def star(expr,phases=SEEDS):
    """Conjugation on the phase torus, fixing real tau and sqrt(6)."""
    substitutions={q:1/q for q in phases}
    substitutions[sp.I]=-sp.I
    if isinstance(expr,sp.MatrixBase):
        return expr.applyfunc(lambda z:z.xreplace(substitutions))
    return sp.sympify(expr).xreplace(substitutions)


def dagger(M,phases=SEEDS):
    return star(M,phases).T


def adj3(G):
    return G.adjugate()


def side(s,t,r,g,eta,chi):
    sb,tb,rb=star(s),star(t),star(r)
    c0=9-r*rb;c1=9-t*tb
    P0=r*s*s+rb*t*t+(3-r*rb)*s*t
    P1=t*sb*sb+r*r*tb+(3-t*tb)*r*sb
    p0b=star(P0)
    denominator=2*p0b*P1
    U=2*g*g+2*c0*c1*eta+(c0+c1)*chi
    # denominator * N_X^(0), denominator * N_X^(1).
    N0=sp.Matrix([[denominator*s,3*denominator,denominator*rb],
                   [denominator*s*s-2*sb*U,denominator*s,
                    denominator*s*rb-p0b*(chi+2*c1*eta)],
                   [denominator*s*t-P1*(chi+2*c0*eta),denominator*t,denominator*s]])
    N1=sp.Matrix([[0,0,0],[-2*sp.I*sb*(c1-c0),0,sp.I*p0b],
                   [-sp.I*P1,0,0]])
    return dict(s=s,t=t,r=r,c0=c0,c1=c1,P0=P0,P1=P1,
                denominator=denominator,N0=N0,N1=N1)


@lru_cache(maxsize=1)
def seed_data():
    E=sp.Matrix([[1,1,1],[1,-1,b],[1,c,d]])
    alpha=b*c-b-c-1
    V=4+(b-1/b)*(c-1/c)
    theta=alpha/d+star(alpha)*d
    A=V+2*theta-8
    K=4*V-(theta-4)**2
    g=V+4*theta
    eta=A+4
    chi=(A*A-(A+8)*g)/2
    R=A*A*K
    s_h=-b;t_h=-(1+c+d);r_h=c-1-d/b
    s_v=-1/c;t_v=-(1+1/b+1/d);r_v=-1+1/b-c/d
    def gram(s,t,r):
        return sp.Matrix([[3,star(s),star(t)],[s,3,star(r)],[t,r,3]])
    G=gram(s_h,t_h,r_h);T=gram(s_v,t_v,r_v)
    return dict(E=E,G=G,T=T,JG=adj3(G),JT=adj3(T),
                alpha=alpha,V=V,theta=theta,A=A,K=K,g=g,eta=eta,chi=chi,R=R,
                h=side(s_h,t_h,r_h,g,eta,chi),
                v=side(s_v,t_v,r_v,g,eta,chi))


def build_system(k=3):
    if not isinstance(k,int) or k<1:raise ValueError('k must be a positive integer')
    data=seed_data();E=data['E'];g=data['g']
    rays=[];ray_symbols=[]
    for j in range(1,k+1):
        xx=sp.symbols(f'x{j}1 x{j}2',nonzero=True)
        pp=sp.symbols(f'p{j}0 p{j}1 p{j}2',nonzero=True)
        ray_symbols.extend(xx+pp)
        x=sp.Matrix([1,*xx]);p=sp.Matrix(pp)
        z=sp.sqrt(6)*p-dagger(E)*x;h=sp.sqrt(6)*x-E*p
        rays.append(dict(x=x,p=p,z=z,av=data['JT']*z,ah=data['JG']*h))
    phases=SEEDS+tuple(ray_symbols)
    equations=[]
    def real_parts(label,f0,f1):
        f0b=star(f0,phases);f1b=star(f1,phases)
        equations.extend([
            dict(label=label+'.real',A=(f0+f0b)/2,B=(f1+f1b)/2),
            dict(label=label+'.imag',A=(f0-f0b)/(2*sp.I),B=(f1-f1b)/(2*sp.I))])
    for j,ray in enumerate(rays,1):
        z=ray['z'];N=(dagger(z,phases)*data['JT']*z)[0]-3*g
        equations.append(dict(label=f'ray{j}.norm',A=N,B=sp.S.Zero))
        for direction in ('v','h'):
            sd=data[direction];a=ray['a'+direction]
            f0=(dagger(a,phases)*sd['N0']*a)[0]-g*g*sd['s']*sd['denominator']
            f1=(dagger(a,phases)*sd['N1']*a)[0]
            real_parts(f'ray{j}.{direction}',f0,f1)
    for i in range(k):
        for j in range(i+1,k):
            first,second=rays[i],rays[j]
            ov=g*(dagger(first['x'],phases)*second['x'])[0]
            ov+=(dagger(first['z'],phases)*data['JT']*second['z'])[0]
            real_parts(f'orthogonality.{i+1}.{j+1}',ov,sp.S.Zero)
    return dict(seeds=SEEDS,ray_symbols=tuple(ray_symbols),tau=tau,data=data,
                rays=rays,equations=equations,sheet_equation=tau*tau-data['R'],
                domain='Every seed and ray symbol has modulus one; R>0; tau>0.',
                count=5*k+k*(k-1))


def export_coefficients(path=None):
    """Compact explicit seed coefficients, shared by every ray."""
    data=seed_data();items=[]
    for key in ('alpha','V','theta','A','K','g','eta','chi','R','E','G','T','JG','JT'):
        items.append((key,data[key]))
    for direction in ('v','h'):
        for key in ('s','t','r','P0','P1','denominator','N0','N1'):
            items.append((direction+'.'+key,data[direction][key]))
    values=[];shapes=[]
    for name,item in items:
        if isinstance(item,sp.MatrixBase):
            flat=list(item);shape=[item.rows,item.cols]
        else:flat=[item];shape=None
        shapes.append((name,shape,len(flat)));values.extend(flat)
    replacements,reduced=sp.cse(values,symbols=sp.numbered_symbols('_k'))
    expressions={};offset=0
    for name,shape,length in shapes:
        entries=[str(x)for x in reduced[offset:offset+length]];offset+=length
        expressions[name]=dict(shape=shape,entries=entries) if shape else entries[0]
    result=dict(description='Exact symbolic coefficients on the entire strict a=-1 section; no ray elimination or seed-only restriction.',
                seeds=['b','c','d'],conjugation='bar(b)=1/b, bar(c)=1/c, bar(d)=1/d, bar(I)=-I',
                domain='abs(b)=abs(c)=abs(d)=1; R>0; tau>0; tau**2=R',
                replacements=[[str(x),str(y)]for x,y in replacements],expressions=expressions,
                equations='N=z†JT z-3g; F_l=a_l†(N0_l+tau*N1_l)a_l-g**2*s_l*denominator_l; O_ij=g*x_i†x_j+z_i†JT*z_j',
                number_of_real_ray_equations_for_three_rays=21,
                number_of_ray_phases_for_three_rays=15)
    if path is not None:Path(path).write_text(json.dumps(result,indent=2)+'\n')
    return result


if __name__=='__main__':
    import time
    start=time.time();system=build_system(3);coeff=export_coefficients(None)
    print(f"Built {len(system['equations'])} real equations, 15 ray phases, 3 symbolic seeds, one shared sheet equation.")
    print(f"Exported {len(coeff['replacements'])} common subexpressions in {time.time()-start:.2f}s.")
