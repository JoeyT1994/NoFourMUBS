# Four-phase reconstruction of order-six complex Hadamard matrices

## Scope

This document fixes the definitions of Step 2 of [`PROOF.md`](../PROOF.md): the seed and the region Ω of strict
seeds (§1), the explicit constructor of the side blocks (§2) and the matched completion H₊(θ) built from them (§3). The
theorems about this construction (matched existence, uniqueness, the nonmatched converse and strict-corner coverage,
`PROOF.md` Theorems 2.2–2.5, SM Propositions S.2–S.5) are proved in `PROOF.md`, in
[`../Connectedness/COVERAGE_INDEX.md`](../Connectedness/COVERAGE_INDEX.md) and in [`Proofs/`](Proofs/README.md),
without classification input.

## 1. Convention, seeds and domain

A raw complex Hadamard matrix H has |H_ij|=1 and HH†=6I₆. Its normalized
unitary is H/sqrt(6). Equivalence means row and column permutations and
multiplication of individual rows and columns by unit phases. A selected
3-by-3 corner is moved to the upper left and the first row and column are
made equal to one by these operations.

Throughout, bar denotes complex conjugation, ^T (ᵀ) the transpose, dagger the
conjugate transpose, I3 the 3-by-3 identity, and i²=-1. Choose a seed

    θ = (θ₁,θ₂,θ₃,θ₄) in 𝕋⁴,  𝕋 = {z in C : |z|=1},
    E = E(θ) = [[1,1,1],[1,e^{iθ₁},e^{iθ₂}],[1,e^{iθ₃},e^{iθ₄}]],
    Gh = 6I3 - E E†,
    Gv = 6I3 - E^T bar(E).

For either overlap matrix G write

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

The values g,eta,chi,R of Gh and Gv agree. The entire seed domain for this
strict reconstruction is the region of strict seeds

    Ω = {θ in 𝕋⁴ : R(θ)>0}.

This implies positive definiteness of Gh,Gv, g=det(Gh)=det(Gv)>0,
and nonvanishing of every divisor below. No extra guard is imposed.
Boundary seeds R=0 are unnecessary for this class-covering construction:
strict-corner coverage (`PROOF.md` Theorem 2.5, SM Proposition S.5) supplies
a strict corner for every matrix not equivalent to F₆. It does not assert
that every corner of such a matrix is strict.

## 2. Explicit constructor S(G,z) of a side block

Set

    z_+ = (chi+i sqrt(R))/(2g),
    z_- = (chi-i sqrt(R))/(2g),

where sqrt(R)>0 (z₊ = ζ of Methods). For either G and either z=z_+ or z=z_-, compute

    P1 = r s² + bar(r)t² + (3-Z)s t,
    P2 = t bar(s)² + r² bar(t) + (3-Y)r bar(s),
    P3 = s bar(t)² + bar(r)² bar(s) + (3-X)bar(r)bar(t),
    (c1,c2,c3) = (9-Z,9-Y,9-X),
    lambda_j = Pj (g+cj bar(z))/|Pj|²,  j=1,2,3.

The lambda_j are unit phases. Put

    u = lambda1 bar(lambda2),
    mu=s/3, nu=t/3,
    n=1-|mu|²,
    k=r/3-nu bar(mu),
    beta=mu²-u bar(mu),
    gamma=2mu nu-z lambda1/3.

Choose a complex square root

    delta²=(g/27)lambda1 bar(lambda2)bar(lambda3).

The quantity

    dF=(27/g)(n gamma-2beta k)bar(delta)

is real. Select the sign of delta so dF>=0. At dF=0 either sign is allowed.
Then set

    rho=(n+dF)/2,
    q=beta/rho,
    cplus=(k-delta bar(q))/n,
    cminus=(k q+delta)/n,
    sigma=u+mu q,
    xi=sigma²/rho,
    N=[[1,0,0],
       [mu,sigma,q bar(sigma)],
       [nu,cplus sigma,cminus bar(sigma)]].

Here n,rho>0, |xi|=1 and 3NN†=G. These are consequences, not extra guards.
Let

    omega=exp(2 pi i/3),
    F3=(omega^((j-1)(k-1)))_(j,k=1,2,3).

Choose any cube root w³=xi and define

    S(G,z)=N diag(1,bar(w),w) F3.

The entries of S have modulus one, its first row is (1,1,1), and SS†=G.
The three cube-root choices simply cycle its columns. The orientation
choice at dF=0 is likewise a presentation choice modulo side permutations.

## 3. The matched completion

At a strict seed the matched completion is

    B = S(Gh,z_+),
    C = S(Gv,bar(z_+))^T,
    D = -C E† adj(Gh) B/g = -C E† Gh^(-1) B,
    H_+(θ) = [[E,B],[C,D]].

By Theorem 2.2 of `PROOF.md` (matched existence), H₊(θ) is Hadamard throughout
the region Ω = {θ in 𝕋⁴ : R(θ)>0}. No flatness filter or choice between
pairings is needed.
Here `adj` is the classical adjugate and `g=det(Gh)>0`. Only explicit cofactors
and scalar division are required.

Every complex Hadamard matrix of order six outside the classes [F₆] and Tao's class is equivalent to H₊(θ) for some
strict seed θ (the paper's reconstruction theorem, using block exchange). `PROOF.md` Theorems 2.2–2.5 reach it as
H₊(θ) or its conjugate. The map θ ↦ [H₊(θ)]
is not injective: different strict corners of one matrix give different seeds of the same class.
