# One relative phase is rationally determined

## Header

**Statement.** Let H be any order-six phase Hadamard and A any phase
6-by-m rectangle with A†A=6I_m and m≥2. In the compatibility equations
|H†diag(v)A|²=6, fix all unit phases v_s except v_r=λ. At every solution the
real coefficient matrix of (Re λ, Im λ) has rank two. So λ is recovered
uniquely and rationally from the other phases, and the unit-modulus condition
is retained as an explicit equation (Section 2). Section 3 adds an exact
candidate algorithm for two phases.

**Status.**
- Sections 1–2 (rank two, rational recovery, the reduced system (2)):
  analytic, with no hypotheses beyond those stated.
- Section 3 (two-phase alternatives): analytic. The rank≤5 branch uses the
  finiteness of the common-ray scheme and is therefore **conditional on H
  having all 3-by-3 minors nonzero**.
- Exact controls: `alignment/verify.py`.

**Dependencies.** Section 3's finiteness premise is
[FiniteCommonRayAlgebra.md](FiniteCommonRayAlgebra.md) (all 3-by-3 minors
nonzero ⇒ the Laurent common-ray scheme is finite). For quartet edges this
hypothesis holds by the block/zero-minor lemma ([../EdgeRigidity/](../EdgeRigidity/))
and the [Fourier-block classification](../FourierBlocks/FourierBlockClassification.md),
together with the published Fourier/Tao quartet exclusions.

**Provenance.** Archive `04_algebraiccoreV2/physical_branch_reduction/{PROOF.md, verify.py}`.
It extends `03_algebraic/core/phase_reduction/ONE_PHASE_PROOF.md`, whose
full-square case it contains. References to the archive's V2 seed
coordinates are removed. In those coordinates m=3 and A is a permuted,
reconstructed three-column rectangle.

---

## Theorem (global coordinate reduction, not seed-locus classification)

Let H be any phase Hadamard of order six and A any phase 6-by-m rectangle,
A†A=6I_m, with m>=2. Fix unit phases v_s except v_r=lambda. At every solution

    |H†diag(v)A|²=6,

the real linear coefficient matrix for Re(lambda),Im(lambda) has rank TWO.
Thus lambda is uniquely and rationally recovered from the other phases.
No product regularity, minor, noncollision or generic-rank hypothesis is
needed for this theorem.

The new point, compared with the full-square case, is that two orthogonal
columns already suffice; a complete second basis is not needed. This does
not constitute a classification of compatible seed families.

## 1. Exact real equations and the rectangular argument

Use all six transform rows j and m columns k. Write

    Z=lambda U+B,
    U_jk=bar(H_rj) A_rk,
    B_jk=sum_(s!=r) bar(H_sj) v_s A_sk,
    C_jk=U_jk bar(B_jk),
    M_(jk)=(2 Re C_jk,-2 Im C_jk), b_jk=5-|B_jk|².

For lambda=x+iy with x²+y²=1, compatibility is exactly M(x,y)^T=b.
The first five j values suffice: sums over j of C and b vanish for each k,
by H unitarity and A column norm. No nonexistent rectangular row-sum
identity is used. For m=3 this gives a 15-by-2 real matrix.

Since U is rank one with unit entries, diagonal row/column phases turn it
into J_(6,m). Apply the same transformations to B, obtaining B'. Directly,

    J_(6,m)† B'=0,
    B'† B'=36 I_m-6 J_m.                                (1)

Proof: before normalization U†B=0, since distinct rows of H are orthogonal;
B†B=6 A†(I-e_r e_r†)A=36I_m-6(A_r)†A_r. The column phases which normalize
U turn the last outer product into J_m. Thus every column of B' sums to
zero and has squared norm 30; distinct columns have inner product -6.
These identities require A†A=6I_m, not AA†=6I_6.

Rank M=0 implies B'=0, contradicting (1). If rank M=1, all entries of B'
lie on one real line, so B'=zeta T with |zeta|=1 and T real. A physical
lambda would give every entry of T as a root of

    t²+2c t-5=0, c=Re(lambda bar(zeta)), |c|<=1.

The two roots are a>0>b with ab=-5. Each column sums to zero, so it contains
the SAME number k of a entries, where 1<=k<=5. Column norm and zero sum give

    a²=5(6-k)/k, b²=5k/(6-k),
    c²=5(k-3)²/[k(6-k)].

For k=1 or 5, c²=4 violates |c|<=1. For k=2,3,4 take ANY TWO columns.
If their sets of a positions intersect in t entries, their inner product
-6 and norm 30 imply

    (a-b)²(k-t)=36, (a-b)²=180/[k(6-k)],
    t=k(k-1)/5.

This is respectively 2/5, 6/5, 12/5, impossible for an integer intersection.
Hence rank one has no physical solution. This proves rank M=2 globally.

## 2. A smaller exact physical system

Define G=M^T M, Delta=det G and n=adj(G)M^T b. Every physical solution has

    Delta>0, lambda=(n_1+i n_2)/Delta.

Conversely, for unit remaining phases, the equations

    Delta>0,
    Delta b-Mn=0,
    n_1²+n_2²=Delta²                                    (2)

are sufficient and necessary. The last equality retains UNIT MODULUS;
it is not replaced by a reciprocal-variable convention. Thus, in any
coordinate system with k relative phase variables, one of them is replaced by
the explicit recovered value, leaving k-1 phases plus the equations (2).
These are variable counts, not moduli dimensions. All original seed guards,
sheets and finite placements remain.

This reduction does not remove any physical phase branch by genericity.
The rank-zero/one branches are genuinely empty for physical compatibility.
The remaining rank-two branch is not proved empty or classified by seeds.

## 3. Complete two-phase alternatives with three phases retained

The sparse two-phase construction also extends to three columns.
Fix the anchor and three other phases; write the remaining two lambda,mu.
For each of the fifteen entries write Z=lambda U+mu V+C and set

    alpha=U bar(C), beta=V bar(C), gamma=U bar(V), d=|C|²-4.

After multiplying its physical Laurent equation by lambda mu, the row is

    alpha lambda² mu + beta lambda mu² + gamma lambda²
    +bar(gamma)mu²+d lambda mu+bar(beta)lambda+bar(alpha)mu=0.

Let P be the explicit 15-by-7 coefficient matrix in that monomial order.

* rank P=7: impossible even over the nonzero complex torus.
* rank P=6: the kernel is a line; it gives at most one phase pair. For kernel
  vector w, require w_5,w_6,w_7 nonzero and recover lambda=w_5/w_7,
  mu=w_5/w_6 (indices 1,...,7). Check all monomial ratios, unit moduli and
  original equations; otherwise reject. Kernel singularities are not omitted.
* rank P<=5: retain the full branch. Under no-zero3 H, the finite
  common-ray theorem ([FiniteCommonRayAlgebra.md](FiniteCommonRayAlgebra.md))
  makes the joint Laurent solution set finite, since one
  column diag(v)A[:,k] is already a common ray of the same H. Multiplication
  by its fixed unit entries identifies phases with that ray; a full mate is
  not assumed. A physical solution then requires rank P>=2.

For 2<=rank P<=5 (and rank 6 if desired), choose a row basis F_0,...,F_(q-1).
Over C(mu)[lambda] they have no common positive-lambda-degree factor: such
a factor would give a torus curve, contradicting finiteness. No factor lambda
is common, because each original row has nonzero bar(gamma)mu² in its
lambda-constant coefficient. Starting with a nonconstant-in-lambda basis
row F_0, one of G_t=F_1+t F_2+...+t^(q-2)F_(q-1), t=0,...,8, has a nonzero
lambda-resultant with F_0. At most two factors of F_0 and degree q-2 in t
bound the bad choices by 2(q-2)<=8. A lambda-constant F_0 can instead be
used directly as a polynomial condition on mu and then checked in the full
system; no root is silently divided out.

For quadratic presentations F=a lambda²+b lambda+c, G=e lambda²+f lambda+g,

    Res_lambda(F,G)=(ag-ce)²-(af-be)(bg-cf).

Here a,e have mu-degree<=1, b,f degree<=2, c,g degree<=2 and vanish at mu=0.
Thus the resultant has degree<=7 and contains mu; remove only that nonphysical
factor to obtain a polynomial of degree<=6. In the exceptional lower-degree
case choose the appropriate actual-degree resultant; its degree bound is no
larger. If a specialization drops both leading coefficients, test its
original equations as well. Each UNIT root mu has at most one lambda by
Sections 1--2. Check (2) and all original equations, rejecting every nonphysical
candidate. Repeated product roots and repeated eliminant roots stay included.

This adapts the archive's full-square sextic argument
(`03_algebraic/core/phase_reduction/FRAME_AND_SEXTIC_PROOF.md`) to fifteen
rather than twenty-five equations. It gives an exact candidate algorithm with
three continuous phases retained, not an explicit finite list of compatible
seed families.

## 4. What remains unresolved

The theorem does not give a global classification by relations on
the seeds alone. The continuous three-phase base and its rank strata
still need to be solved. Nor does it prove that any surviving branch forces a
zero3. A list of coefficient-rank alternatives must not be advertised as
classification of the physical seed locus.

Known compatible controls have rank-six two-phase matrices, so the rank-six
branch is real and cannot be discarded. Lower-rank incompatible controls
also exist. Branch rank alone is therefore not a zero3 proof.

## 5. Exact controls (`alignment/verify.py`)

Exact arithmetic over Q(i,√2,√3). The script checks:

- the five integer cases k=1,…,5 of Section 1;
- for an exact MUB triple (a carrier with all 400 three-minors nonzero and
  a full mate of 24th roots of unity), the identities (1), the system (2),
  and recovery λ=(n_1+in_2)/Δ for every r and m=2,3;
- the two-phase ranks 6 (compatible), 3 and 5 (incompatible);
- the rank-six recovery ratios;
- a rank-one control, which forces Re λ=−2 and so is not physical;
- the quadratic-resultant identity.
