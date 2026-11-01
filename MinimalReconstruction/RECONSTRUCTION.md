# Four-phase reconstruction of order-six complex Hadamard matrices

## Scope

This document fixes the definitions of Step 2 of [`PROOF.md`](../PROOF.md): the corner seed and its domain (§1), the
explicit side constructor (§2) and the matched completion H₊ built from them (§3). The theorems about this
construction (matched existence, uniqueness, the nonmatched converse and strict-corner coverage, Theorems 2.2–2.5)
are proved in `PROOF.md`, in [`../proof/coverage/`](../Connectedness/COVERAGE_INDEX.md) and in [`Proofs/`](Proofs/README.md),
without classification input.

## 1. Convention, seeds and domain

A raw complex Hadamard matrix H has |H_ij|=1 and HH†=6I6. Its normalized
unitary is H/sqrt(6). Equivalence means row and column permutations and
multiplication of individual rows and columns by unit phases. A selected
3-by-3 corner is moved to the upper left and the first row and column are
made equal to one by these operations.

Throughout, bar denotes complex conjugation, T transpose, dagger conjugate
transpose, I3 the 3-by-3 identity, and i²=-1. Choose

    a,b,c,d in T = {z in C : |z|=1},
    E = [[1,1,1],[1,a,b],[1,c,d]],
    Gh = 6I3 - E E†,
    Gv = 6I3 - E^T bar(E).

For either Gram matrix G write

    G = [[3,bar(s),bar(t)],[s,3,bar(r)],[t,r,3]].

Define its real scalars

    X=|s|², Y=|t|², Z=|r|²,
    p=X+Y+Z,
    J=2 Re(s r bar(t)),
    W=XY+XZ+YZ-XYZ,
    g=27-3p+J,
    eta=9-p+J,
    chi=W-(p-9)(p-18)+(p-15)J,
    R=4g² eta-chi².

The horizontal and vertical values g,eta,chi,R agree. The entire seed domain
for this strict reconstruction is

    (a,b,c,d) in T^4,  R>0.

This implies positive definiteness of Gh,Gv, g=det(Gh)=det(Gv)>0,
and nonvanishing of every divisor below. No extra guard is imposed.
Boundary seeds R=0 are unnecessary for this class-covering construction:
the external strict-corner theorem supplies another corner for every non-F6
matrix. It does not assert that every corner of such a matrix is strict.

## 2. Explicit side constructor S(G,z)

Set

    z_+ = (chi+i sqrt(R))/(2g),
    z_- = (chi-i sqrt(R))/(2g),

where sqrt(R)>0. For either G and either z=z_+ or z=z_-, compute

    P0 = r s² + bar(r)t² + (3-Z)s t,
    P1 = t bar(s)² + r² bar(t) + (3-Y)r bar(s),
    P2 = s bar(t)² + bar(r)² bar(s) + (3-X)bar(r)bar(t),
    (c0,c1,c2) = (9-Z,9-Y,9-X),
    lambda_j = Pj (g+cj bar(z))/|Pj|²,  j=0,1,2.

The lambda_j are unit phases. Put

    u = lambda0 bar(lambda1),
    mu=s/3, nu=t/3,
    n=1-|mu|²,
    k=r/3-nu bar(mu),
    alpha=mu²-u bar(mu),
    gamma=2mu nu-z lambda0/3.

Choose a complex square root

    delta²=(g/27)lambda0 bar(lambda1)bar(lambda2).

The quantity

    dF=(27/g)(n gamma-2alpha k)bar(delta)

is real. Select the sign of delta so dF>=0; at dF=0 either sign is allowed.
Then set

    rho=(n+dF)/2,
    q=alpha/rho,
    cplus=(k-delta bar(q))/n,
    cminus=(k q+delta)/n,
    sigma=u+mu q,
    xi=sigma²/rho,
    M=[[1,0,0],
       [mu,sigma,q bar(sigma)],
       [nu,cplus sigma,cminus bar(sigma)]].

Here n,rho>0, |xi|=1 and 3MM†=G. These are consequences, not extra guards.
Let

    omega=exp(2 pi i/3),
    F3=(omega^(jk))_(j,k=0,1,2),
    P(w)=diag(1,bar(w),w).

Choose any cube root w³=xi and define

    S(G,z)=M P(w) F3.

The entries of S have modulus one, its first row is (1,1,1), and SS†=G.
The three cube-root choices simply cycle its columns. The orientation
choice at dF=0 is likewise a presentation choice modulo side permutations.

## 3. The matched completion

At a strict seed the matched completion is

    B = S(Gh,z_+),
    C = S(Gv,bar(z_+))^T,
    D = -C E† adj(Gh) B/g,
    H_+(a,b,c,d) = [[E,B],[C,D]].

By Theorem 2.2 of `PROOF.md` (matched existence), H_+ is Hadamard throughout
the domain Dstrict={(a,b,c,d) in T^4 : R>0}; no flatness filter or choice
between pairings is needed.
Here `adj` is the classical adjugate and `g=det(Gh)>0`; only explicit cofactors
and scalar division are required.

By Theorems 2.2–2.5 of `PROOF.md`, every order-six Hadamard class other than F6 and Tao's class is the class of a
matched completion H_o at a strict seed, for an orientation o = ±1. The map is not injective: different strict
corners of one matrix give different seeds of the same class.
