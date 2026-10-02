# Sharp three-row Gram moment S>=126 and the optimal two-valued gap 4/17

**Statement.**
1. For any three rows X of an order-six phase Hadamard H, with G=X*X,
   S(X)=sum_(j!=k)|G_jk|^4 >= 126. An exact sum-of-squares identity proves
   this, and the bound is sharp (F6, rows {0,1,3}).
2. Let D be diagonal unitary with at most two distinct values, and let Q be
   a column monomial. Then K=DHQ has flatness defect E(H,DHQ) >= 4/17. The
   bound is optimal. In particular no such K is a mate of H: I, H/sqrt6,
   DHQ/sqrt6 is never an MUB triple.

**Status.** Proved (analytic, with exact checks). These sharpen the
constants 108 and 1/11 of [../../CommonRays/PhaseCollisions.md](../../CommonRays/PhaseCollisions.md).

**Dependencies.** None: no classification, reconstruction, genericity or
minor hypothesis.

**Provenance.** Archive
`03_algebraic/core/phase_reduction/sharp_phase_bounds/PROOF.md`, Sections 1-2
(copied). Its written sources are the archive note
`sharp_phase_bounds/supplied/binary_anchor_results.md`, Sections 6-7. The
verifier is based on `sharp_phase_bounds/verify.py`. PROOF.md Sections 3-5
(partial binary constellations, the shared-reference gap and the binary
detector) are not imported here.

---

Use phase Hadamards H*H=6I with unit entries; physical bases are H/sqrt(6).
For phase Hadamards K,L define

    E(K,L)=sum_ij (|(K*L/6)_ij|^2-1/6)^2.

## 1. Sharp three-row moment and SOS

**Theorem.** For any three rows X of H, with G=X*X,

    S(X)=sum_(j!=k)|G_jk|^4 >=126.                       (1)

Let the rows be x1,x2,x3 and use the cyclic features

    f1=x1 conj(x2), f2=x2 conj(x3), f3=x3 conj(x1),
    M=[f1;f2;f3;conj(f1);conj(f2);conj(f3)].

Products are entrywise. The features have zero sums and f1 f2 f3=1.
Consequently M1=0 and

    Y=MM*=[A B;conj(B) conj(A)],
    A=A*, diag(A)=6, B=diag(b1,b2,b3).

The off-diagonal entries of B vanish because fi fj=conj(fk) for distinct
indices. The kernel of Y is nonzero and invariant under
(u,v)->(conj(v),conj(u)). For a nonzero kernel vector w, either w+Cw or
i(w-Cw) is a nonzero fixed vector. Normalize it as (zeta,conj(zeta)), with
sum_i |zeta_i|^2=1. This feature-kernel vector is not a triangle-matching
vector.

Writing a_ij=A_ij for i<j, the kernel equation gives

    2 Re sum_(i<j) a_ij conj(zeta_i)zeta_j
        +Re sum_i b_i conj(zeta_i)^2 = -6.               (2)

Weighted Cauchy-Schwarz, using
2 sum_(i<j)|zeta_i|^2|zeta_j|^2+sum_i|zeta_i|^4=1, gives
2 sum|a_ij|^2+sum|b_i|^2>=36. Thus tr(Y^2)>=288.
The feature identity (M*M)_jk=|G_jk|^2-3, together with G^2=6G and
diag(G)=3, gives tr(Y^2)=162+S(X), which proves (1).

More precisely, expanding (2) yields the exact identity

    S(X)-126 = 4 sum_(i<j)|a_ij+6 zeta_i conj(zeta_j)|^2
                      +2 sum_i|b_i+6 zeta_i^2|^2.        (3)

All lower feature ranks are covered by the real-structure kernel argument.
For F6 with entries exp(i pi rj/3), rows {0,1,3} have off-diagonal Gram
intensities (1,3,1,3,1) by column difference, giving S=126. Hence the
constant is sharp. This example does not classify equality cases; see
[EqualityBranches.md](EqualityBranches.md) and
[PositiveWeightEquality.md](PositiveWeightEquality.md).

## 2. Optimal two-valued diagonal-orbit gap

**Theorem.** For every H and every diagonal unitary D with at most two values,

    E(H,DH)>=4/17.                                      (4)

This is unchanged by independent right column monomials on H and DH.
After removing a scalar, let D differ from the identity on p<=3 rows R, and
put t=|1-eta|^2 in [0,4], c=p(6-p) and S_p=S(H_R). Exact expansion gives

    1296 E(H,DH)=6480-432 c t+(6c^2+S_p)t^2.             (5)

For p=0 the defect is 5. For p=1, S_1=30 and the defect is
5(t-6)^2/36>=5/9. For p=2, S_2=120+2|sum_j z_j^2|^2>=120 for the selected
row quotient, giving E>=7(t-24/7)^2/18+3/7. For p=3, (1) gives

    E(H,DH)=17(t-54/17)^2/36+4/17+t^2(S_3-126)/1296.    (6)

Every additional term is nonnegative. The global minimum is 4/17, attained
by the F6 and row set of Section 1 with eta=(-10+3i sqrt21)/17. The exact
intensity table is circulant with first row (7,3,9,3,9,3)/34. If the
balanced diagonal overlaps themselves pass MU, then t=10/3 and E>=20/81.

This improves the old 1/11 bound. It does not impose the diagonal-orbit
hypothesis on a general K.

(Derivation of (5), for the reader: the diagonal intensities of H*DH/6 are
|1+(eta-1)p/6|^2=1-ct/36, and the off-diagonal ones are t|G_jk|^2/36 with
sum_(j!=k)|G_jk|^2=36p-6p^2=6c, where G=H_R*H_R. The verifier checks (5)
against a direct computation of E(H,DH) for F6, for every row set of size
1, 2 and 3.)

## 3. Verification

    python3 SharpBound.py

runs in about 1 s and exits nonzero on failure. It checks the SOS identity
(3) symbolically under the two stated constraints; the completed squares for
p=1,2,3; the value 20/81; |eta|=1 and t=54/17; the p=2 identity
S_2=120+8|sum z|^2+2|sum z^2|^2 on the torus; and, exactly in Q(i,sqrt3), the
F6 moment 126, the feature identities, tr(Y^2)=162+S, the optimal intensity
table and defect 4/17, and (5) against a direct evaluation of E(H,DH) for all
41 row sets of size 1-3 at eta=(3+4i)/5.
