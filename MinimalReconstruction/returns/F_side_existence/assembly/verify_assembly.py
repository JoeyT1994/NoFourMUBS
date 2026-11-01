#!/usr/bin/env python3
"""Exact, standalone integer-polynomial certificates for final side assembly.

Default mode reconstructs every displayed circuit and checks the stored integer
cofactors.  --write regenerates the same certificates first.  No floating point,
CAS, or assertion-elision dependence occurs in the verifier.
"""
from itertools import permutations
from pathlib import Path
from time import perf_counter
import json
import sys

FILE = Path(__file__).with_name("assembly_certificates.json")


def require(ok, label):
    if not ok:
        raise RuntimeError(label)


class Ring:
    def __init__(self, names):
        self.names = names.split()
        self.n = len(self.names)
        self.zero = (0,) * self.n

    def const(self, value):
        return Poly(self, {self.zero: value})

    def vars(self):
        out = []
        for i in range(self.n):
            e = [0] * self.n
            e[i] = 1
            out.append(Poly(self, {tuple(e): 1}))
        return out


class Poly:
    def __init__(self, ring, terms):
        self.ring = ring
        self.terms = {e: c for e, c in terms.items() if c}
        require(all(len(e) == ring.n and min(e) >= 0 and type(c) is int
                    for e, c in self.terms.items()), "integer polynomial")

    def coerce(self, other):
        if type(other) is int:
            return self.ring.const(other)
        require(isinstance(other, Poly) and self.ring is other.ring, "ring mismatch")
        return other

    def __add__(self, other):
        other = self.coerce(other)
        out = dict(self.terms)
        for e, c in other.terms.items():
            out[e] = out.get(e, 0) + c
        return Poly(self.ring, out)

    __radd__ = __add__

    def __neg__(self):
        return Poly(self.ring, {e: -c for e, c in self.terms.items()})

    def __sub__(self, other):
        return self + (-self.coerce(other))

    def __rsub__(self, other):
        return self.coerce(other) - self

    def __mul__(self, other):
        other = self.coerce(other)
        out = {}
        for e, c in self.terms.items():
            for f, d in other.terms.items():
                g = tuple(a + b for a, b in zip(e, f))
                out[g] = out.get(g, 0) + c * d
        return Poly(self.ring, out)

    __rmul__ = __mul__

    def __pow__(self, n):
        require(type(n) is int and n >= 0, "nonnegative power")
        out = self.ring.const(1)
        base = self
        while n:
            if n & 1:
                out *= base
            base *= base
            n //= 2
        return out

    def encode(self):
        return [[c, list(e)] for e, c in sorted(self.terms.items())]


def product(values, ring):
    out = ring.const(1)
    for value in values:
        out *= value
    return out


def determinant(M, signed=True):
    ring = M[0][0].ring
    out = ring.const(0)
    for p in permutations(range(3)):
        sign = (-1) ** sum(p[i] > p[j] for i in range(3) for j in range(i + 1, 3)) if signed else 1
        out += sign * product([M[i][p[i]] for i in range(3)], ring)
    return out


def divide_cyclotomic(p, name="omega"):
    """Return q,r with p=(omega^2+omega+1)q+r by monic division."""
    ring = p.ring
    j = ring.names.index(name)
    omega = ring.vars()[j]
    modulus = omega**2 + omega + 1
    remainder = p
    quotient = ring.const(0)
    while any(e[j] >= 2 for e in remainder.terms):
        e = max((e for e in remainder.terms if e[j] >= 2), key=lambda e: (e[j], e))
        c = remainder.terms[e]
        f = list(e)
        f[j] -= 2
        term = Poly(ring, {tuple(f): c})
        quotient += term
        remainder -= term * modulus
    return modulus, quotient, remainder


def divide_unit(p, left, right):
    """Return q,r with p=(left*right-1)q+r using the monomial rule."""
    ring = p.ring
    i, j = ring.names.index(left), ring.names.index(right)
    vv = ring.vars()
    modulus = vv[i] * vv[j] - 1
    remainder = p
    quotient = ring.const(0)
    while any(e[i] and e[j] for e in remainder.terms):
        e = max(e for e in remainder.terms if e[i] and e[j])
        c = remainder.terms[e]
        f = list(e)
        f[i] -= 1
        f[j] -= 1
        term = Poly(ring, {tuple(f): c})
        quotient += term
        remainder -= term * modulus
    return modulus, quotient, remainder


def inventory():
    out = []

    def add(name, statement, lhs, relations, cofactors):
        require(set(relations) == set(cofactors), name + ": cofactor labels")
        residual = lhs
        for key in relations:
            residual -= relations[key] * cofactors[key]
        require(not residual.terms, name + ": generated cofactor identity failed")
        out.append(dict(name=name, statement=statement, variables=lhs.ring.names,
                        lhs=lhs.encode(), relations={k: p.encode() for k, p in relations.items()},
                        cofactors={k: p.encode() for k, p in cofactors.items()}))

    def cyclo(name, statement, lhs, units=()):
        modulus, quotient, rem = divide_cyclotomic(lhs)
        rels, cofs = {"omega2+omega+1": modulus}, {"omega2+omega+1": quotient}
        for l, r in units:
            modulus, quotient, rem = divide_unit(rem, l, r)
            rels[l + "*" + r + "-1"] = modulus
            cofs[l + "*" + r + "-1"] = quotient
        require(not rem.terms, name + ": normal-form remainder")
        add(name, statement, lhs, rels, cofs)

    # x row: all conjugates are independent variables in these identities.
    ring = Ring("mu mubar u ubar rho")
    mu, Mu, u, U, rho = ring.vars()
    alpha, Alpha = mu**2 - u*Mu, Mu**2 - U*mu
    n = 1 - mu*Mu
    disc = rho**2 - n*rho + alpha*Alpha
    unit = u*U-1
    sn, Sn = rho*u+mu*alpha, rho*U+Mu*Alpha
    add("x_sigma_norm", "sn*Sn-rho^3=(mu*mubar-rho)*(disc-rho*(u*ubar-1))",
        sn*Sn-rho**3, {"disc": disc, "u_unit": unit},
        {"disc": mu*Mu-rho, "u_unit": -rho*(mu*Mu-rho)})
    add("x_flatness", "rho^2*(mu+q*mubar+sigma*qbar)=mu*(disc-rho*(u*ubar-1))",
        mu*rho**2+alpha*Mu*rho+sn*Alpha,
        {"disc": disc, "u_unit": unit}, {"disc": mu, "u_unit": -mu*rho})

    ring = Ring("rho n q qbar alpha alphabar")
    rho,n,q,Q,alpha,Alpha=ring.vars()
    add("rho_q_norm", "rho*(rho*(1+q*qbar)-n)=disc+rho*qbar*(rho*q-alpha)+alpha*(rho*qbar-alphabar)",
        rho*(rho*(1+q*Q)-n),
        {"disc":rho**2-n*rho+alpha*Alpha,"q_def":rho*q-alpha,"qbar_def":rho*Q-Alpha},
        {"disc":ring.const(1),"q_def":rho*Q,"qbar_def":alpha})

    ring=Ring("mu mubar u n rho q qbar sigma sigmabar")
    mu,Mu,u,n,rho,q,Q,sig,S=ring.vars()
    rel={"flat":mu+q*Mu+sig*Q,"flatbar":Mu+Q*mu+S*q,
         "sigma_def":sig-u-mu*q,"q_norm":rho*(1+q*Q)-n,
         "n_def":n+mu*Mu-1,"alpha_def":rho*q-mu**2+u*Mu}
    add("x_product", "mu^3+rho*sigma+rho*q^3*sigmabar-3*mu*rho*q-u=0",
        mu**3+rho*sig+rho*q**3*S-3*mu*rho*q-u,rel,
        {"flat":-rho*q,"flatbar":rho*q**2,"sigma_def":rho*(1+q*Q),
         "q_norm":u,"n_def":u,"alpha_def":-mu})

    # General row: the small reduced phase-flatness equation lifts to the gate equation.
    ring=Ring("a abar cp cpbar cm cmbar sigma sigmabar rho")
    a,A,cp,CP,cm,CM,sig,S,rho=ring.vars()
    gate=sig**2*(a*CP*S+cm*S*A)+rho*cp*sig*CM*sig
    flat=a*CP+cm*A+sig*cp*CM
    add("row_gate", "gate-rho*sigma*(a*cpbar+cm*abar+sigma*cp*cmbar)=0",
        gate-rho*sig*flat,{"sigma_norm":sig*S-rho},
        {"sigma_norm":sig*(a*CP+cm*A)})

    # Fourier row expansion and exact unitarity of F3.
    ring=Ring("a abar b bbar c cbar w wbar omega")
    a,A,b,B,c,C,w,W,o=ring.vars()
    V=w*(a*B+c*A)+W**2*b*C
    Vbar=W*(A*b+C*a)+w**2*B*c
    const=a*A+b*B+c*C
    for j in range(3):
        x=a+b*W*o**(j%3)+c*w*o**((-j)%3)
        X=A+B*w*o**((-j)%3)+C*W*o**(j%3)
        cyclo("fourier_flat_"+str(j), "x_j*xbar_j=constant+omega^(-j)*V+omega^j*Vbar",
              x*X-const-o**((-j)%3)*V-o**(j%3)*Vbar,[("w","wbar")])
    for i in range(3):
        for j in range(3):
            lhs=sum((o**((i*k)%3)*o**((-j*k)%3) for k in range(3)),ring.const(0))-(3 if i==j else 0)
            cyclo("fourier_unitary_"+str(i)+str(j), "(F3*F3^*)_ij=3*delta_ij",lhs)

    ring=Ring("a abar b bbar c cbar sigma rho w wbar")
    a,A,b,B,c,C,sig,rho,w,W=ring.vars()
    V=w*(a*B+c*A)+W**2*b*C
    gate=sig**2*(a*B+c*A)+rho*b*C
    add("gate_to_fourier", "rho*w^2*V-gate=0",rho*w**2*V-gate,
        {"cube":rho*w**3-sig**2,"w_unit":w*W-1},
        {"cube":a*B+c*A,"w_unit":rho*(w*W+1)*b*C})

    # Elementary Fourier products, permanent and determinant square.
    ring=Ring("mu A B nu C D omega")
    mu,A,B,nu,C,D,o=ring.vars()
    one=ring.const(1)
    x=[mu+A*o**j+B*o**((-j)%3) for j in range(3)]
    y=[nu+C*o**j+D*o**((-j)%3) for j in range(3)]
    matrix=[[one,one,one],x,y]
    cyclo("fourier_row_product","prod_j x_j=mu^3+A^3+B^3-3*mu*A*B",
          product(x,ring)-(mu**3+A**3+B**3-3*mu*A*B))
    cyclo("fourier_permanent","perm S=6*mu*nu-3*(A*D+B*C)",
          determinant(matrix,False)-(6*mu*nu-3*(A*D+B*C)))
    cyclo("fourier_determinant","det S=3*(omega^2-omega)*(A*D-B*C)",
          determinant(matrix)-3*(o**2-o)*(A*D-B*C))
    cyclo("fourier_determinant_square","det(S)^2=-27*(A*D-B*C)^2",
          determinant(matrix)**2+27*(A*D-B*C)**2)

    ring=Ring("rho sigma sigmabar w wbar cp cm")
    rho,sig,S,w,W,cp,cm=ring.vars()
    add("gate_cubic_A","(cp*sigma*wbar)^3=rho*cp^3*sigma",
        rho*(cp*sig*W)**3-rho**2*cp**3*sig,
        {"cube_bar":rho*W**3-S**2,"sigma_norm":sig*S-rho},
        {"cube_bar":cp**3*sig**3,"sigma_norm":cp**3*sig*(sig*S+rho)})
    add("gate_cubic_B","(cm*sigmabar*w)^3=rho*cm^3*sigmabar",
        rho*(cm*S*w)**3-rho**2*cm**3*S,
        {"cube":rho*w**3-sig**2,"sigma_norm":sig*S-rho},
        {"cube":cm**3*S**3,"sigma_norm":cm**3*S*(sig*S+rho)})
    add("gate_pair_product","(cp*sigma*wbar)*(cm*sigmabar*w)=rho*cp*cm",
        cp*sig*W*cm*S*w-rho*cp*cm,
        {"sigma_norm":sig*S-rho,"w_unit":w*W-1},
        {"sigma_norm":cp*cm*w*W,"w_unit":rho*cp*cm})

    ring=Ring("sigma sigmabar rho n q qbar cp cm k delta")
    sig,S,rho,n,q,Q,cp,cm,k,d=ring.vars()
    add("det_M","n*(det M-delta)=0",n*(sig*S*(cm-q*cp)-d),
        {"sigma_norm":sig*S-rho,"cp_def":n*cp-k+d*Q,
         "cm_def":n*cm-k*q-d,"q_norm":rho*(1+q*Q)-n},
        {"sigma_norm":n*(cm-q*cp),"cp_def":-rho*q,"cm_def":rho,"q_norm":d})

    ring=Ring("mu nu rho cm q cp gamma z lambda0")
    mu,nu,rho,cm,q,cp,gamma,z,L=ring.vars()
    add("permanent_sheet","6*mu*nu-3*rho*(cm+q*cp)=z*lambda0",
        6*mu*nu-3*rho*(cm+q*cp)-z*L,
        {"gamma_def":6*mu*nu-3*gamma-z*L,"mixed_symmetric":rho*(cm+q*cp)-gamma},
        {"gamma_def":ring.const(1),"mixed_symmetric":ring.const(-3)})

    # Universal actual-phase-side Laurent-0, independent unit variables.
    ring=Ring("x0 X0 x1 X1 x2 X2 y0 Y0 y1 Y1 y2 Y2")
    vv=ring.vars()
    x=[vv[2*i] for i in range(3)]
    X=[vv[2*i+1] for i in range(3)]
    y=[vv[6+2*i] for i in range(3)]
    Y=[vv[7+2*i] for i in range(3)]
    one=ring.const(1)
    matrix=[[one,one,one],x,y]
    barmatrix=[[one,one,one],X,Y]
    h=determinant(matrix)
    p=product(x+y,ring)
    pbar=product(X+Y,ring)
    ss,SS=sum(x,ring.const(0)),sum(X,ring.const(0))
    tt,TT=sum(y,ring.const(0)),sum(Y,ring.const(0))
    rr=sum((y[i]*X[i] for i in range(3)),ring.const(0))
    RR=sum((x[i]*Y[i] for i in range(3)),ring.const(0))
    Z=rr*RR
    p0bar=RR*SS**2+rr*TT**2+(3-Z)*SS*TT
    residual=h**2-p*((9-Z)*determinant(barmatrix,False)-p0bar)
    rel,cof={},{}
    for l,r in [("x0","X0"),("x1","X1"),("x2","X2"),("y0","Y0"),("y1","Y1"),("y2","Y2")]:
        mod,quo,residual=divide_unit(residual,l,r)
        rel[l+"_unit"]=mod
        cof[l+"_unit"]=quo
    require(not residual.terms,"Laurent0 remainder")
    add("phase_side_Laurent0","h^2=p*((9-|r|^2)*bar(perm)-bar(P0))",
        h**2-p*((9-Z)*determinant(barmatrix,False)-p0bar),rel,cof)
    coeff=ring.const(1)
    product_cofs={}
    for (name,mod) in rel.items():
        product_cofs[name]=coeff
        coeff*=mod+1
    add("phase_total_product_unit","p*pbar=1",p*pbar-1,rel,product_cofs)

    # Signature from flatness plus permanent, avoiding row-product recovery.
    ring=Ring("H2 p pbar c p0bar pi pibar lambda0 lambda0bar g z zbar")
    H2,p,pbar,c,P,pi,Pi,L,Lbar,g,z,Z=ring.vars()
    Laurent=H2-p*(c*Pi-P)
    Lnorm=L*Lbar-1
    Lp=L*P-g-c*Z
    pib=Pi-Z*Lbar
    add("signature_h2","lambda0*det^2+g*p=0",L*H2+g*p,
        {"Laurent0":Laurent,"lambda_relation":Lp,"perm_bar":pib,"lambda_unit":Lnorm},
        {"Laurent0":L,"lambda_relation":-p,"perm_bar":p*c*L,"lambda_unit":p*c*Z})
    add("signature_final","-pi*det^2*pbar=g*z",-pi*H2*pbar-g*z,
        {"permanent":pi-z*L,"signature_h2":L*H2+g*p,"product_unit":p*pbar-1},
        {"permanent":-H2*pbar,"signature_h2":-z*pbar,"product_unit":g*z})

    # Optional recovery of the individual row products, after flatness.
    ring=Ring("lambda0 lambda1bar lambda2bar delta2 g u v")
    L,L1bar,L2bar,delta2,g,u,v=ring.vars()
    add("root_phase_products","27*lambda0*delta2=g*u*v",27*L*delta2-g*u*v,
        {"delta_root":27*delta2-g*L*L1bar*L2bar,"u_definition":u-L*L1bar,
         "v_definition":v-L*L2bar},
        {"delta_root":L,"u_definition":-g*v,"v_definition":-g*L*L1bar})
    ring=Ring("lambda0 H2 g u v delta2 p actual_u actual_v")
    L,H2,g,u,v,delta2,p,Uactual,Vactual=ring.vars()
    add("determinant_phase","lambda0*det^2+g*u*v=0",L*H2+g*u*v,
        {"determinant_square":H2+27*delta2,"delta_phase":27*L*delta2-g*u*v},
        {"determinant_square":L,"delta_phase":ring.const(-1)})
    add("actual_total_product","g*(p-u*v)=0",g*(p-u*v),
        {"actual_signature_h2":L*H2+g*p,"determinant_phase":L*H2+g*u*v},
        {"actual_signature_h2":ring.const(1),"determinant_phase":ring.const(-1)})
    add("actual_y_product","u*(actual_v-v)=0",u*(Vactual-v),
        {"product_definition":Uactual*Vactual-p,"actual_x_product":Uactual-u,
         "actual_total_product":p-u*v},
        {"product_definition":ring.const(1),"actual_x_product":-Vactual,
         "actual_total_product":ring.const(1)})

    ring=Ring("signature g z chi signed_i_sqrtR")
    signature,g,z,chi,jroot=ring.vars()
    add("target_scaling","2*T=chi+signed_i_sqrtR",2*signature-chi-jroot,
        {"signature":signature-g*z,"root_definition":2*g*z-chi-jroot},
        {"signature":ring.const(2),"root_definition":ring.const(1)})

    # Transpose does not conjugate either invariant in the signature.
    ring=Ring("a00 a01 a02 a10 a11 a12 a20 a21 a22")
    values=ring.vars()
    mat=[values[3*i:3*i+3] for i in range(3)]
    trans=[[mat[j][i] for j in range(3)] for i in range(3)]
    add("transpose_determinant","det M^T=det M",determinant(trans)-determinant(mat),{}, {})
    add("transpose_permanent","perm M^T=perm M",determinant(trans,False)-determinant(mat,False),{}, {})
    add("transpose_total_product","prod entries M^T=prod entries M",
        product([x for row in trans for x in row],ring)-product(values,ring),{}, {})
    return out


def decode(ring, raw):
    require(type(raw) is list,"coefficient array")
    out={}
    for pair in raw:
        require(type(pair) is list and len(pair)==2,"coefficient pair")
        c,e=pair
        require(type(c) is int and c!=0 and type(e) is list and len(e)==ring.n,"coefficient data")
        require(all(type(k) is int and k>=0 for k in e),"monomial exponents")
        key=tuple(e)
        require(key not in out,"duplicate monomial")
        out[key]=c
    return Poly(ring,out)


def main():
    start=perf_counter()
    expected=inventory()
    data={"format":"integer-polynomial-cofactors-v1","certificates":expected}
    if "--write" in sys.argv:
        FILE.write_text(json.dumps(data,sort_keys=True,separators=(",",":"))+"\n")
    require(FILE.exists(),"missing certificate JSON")
    saved=json.loads(FILE.read_text())
    require(saved.get("format")==data["format"],"format mismatch")
    got=saved.get("certificates")
    require(type(got) is list and len(got)==len(expected),"certificate inventory")
    max_terms=0
    for want,item in zip(expected,got):
        require(item==want,"stored circuit/cofactor differs: "+want["name"])
        ring=Ring(" ".join(item["variables"]))
        lhs=decode(ring,item["lhs"])
        for key in item["relations"]:
            relation=decode(ring,item["relations"][key])
            cofactor=decode(ring,item["cofactors"][key])
            lhs-=relation*cofactor
            max_terms=max(max_terms,len(cofactor.terms))
        require(not lhs.terms,"nonzero certificate residual: "+item["name"])
    print(f"PASS assembly: {len(expected)} integer-polynomial identities; largest cofactor {max_terms} terms; {perf_counter()-start:.3f} s")


if __name__=="__main__":
    main()
