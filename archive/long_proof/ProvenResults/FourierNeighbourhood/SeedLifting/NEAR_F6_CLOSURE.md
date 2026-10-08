# Positive seed neighbourhoods at every F6 corner class

**Proved, with conservative constants.** The three previously missing F6
corner classes now have positive seed radii. Together with the retained
matched-cover cubes, this covers all six classes, including singular
complementary Grams and physical R=0 points. The new analytic radii are
far below production width; this closes a local mathematical gap, not
the whole campaign or the intervening trimmed-atlas shoulders.

All matrices below are raw order-six complex Hadamards. Write
`M(H)=max_c R_c(H)`, over all 400 positional corners. The seed of a
corner is dephased, and phase distances are modulo 2pi, in radians.
The quartet exclusion uses the already proved F6 matrix radius 1/30.
No reconstruction or strict-corner coverage assumption is used.

## 1. The usable conclusions

For a **maximal** leading corner, every physical completion of a seed
in one of the following closed cubes has no quartet edge:

| Centre, in units of pi/3 | Phase half-width | Source |
|---|---:|---|
| (4,5,0,3) | pi/512 | ProductionCube |
| (0,2,3,0) | 1/1024 | MatchedCoverLift |
| (0,2,3,2) | 1/2048 | MatchedCoverLift |
| (1,2,2,4) | 1/65536 | New complete residual lift, Section 6 |
| (2,4,4,2) | 2^(-42) | Nearly F3 theorem below |
| (0,0,2,4) | 2^(-46) | Nearly rank-one pair below |

All 72 corner frames are allowed, with the corresponding change of
coordinates. Their maximum row absolute sum is four. Consequently:

> Every physical maximal carrier with seed at maximum-coordinate phase
> distance at most **2^(-48)** from **any F6 corner seed** has no quartet
> edge, including at R=0.

The exact enumeration of all 400 corners gives the six classes with
multiplicities 48,72,144,72,36,28. Thus no F6 corner class remains omitted.
The standalone predicate [near_f6.py](near_f6.py) applies this uniform
neighbourhood as well as the larger individual cubes by outward
whole-box containment. Its scope is physical maximal carriers.

There is also an explicit, uniform statement beyond F6. Let theta be
the seed of **any** corner of a Fourier-family reference, in either
orientation. If the reference has

    M(reference) <= 2^(-92),

then every physical maximal carrier with seed within **2^(-49)** of
theta has no quartet edge. This includes non-F6 references with M>0.
These constants are extremely small. The larger previously certified
non-F6 corridor remains useful and is not replaced by this bound.

## 2. A quantitative three-phase lemma

If |u|=|v|=1 and |1+u+v|<=e<=1/10, then, after swapping u,v,

    |u-omega| <= 4e,   |v-omega^2| <= 4e.             (1)

Indeed, ||1+u|-1|<=e gives
`|u^2+u+1|=|1+2 Re u|<=(2+e)e`.
One of the distances from u to omega and omega^2 is at least sqrt(3)/2,
so the smaller is at most `2(2+e)e/sqrt(3)<3e`. The sum bounds the other
phase's error by 4e.

If three unit phases a,b,c additionally have abc=1 and |a+b+c|<=e,
each is within **8e** of a cube root, with the three selected roots
distinct and product one. Apply (1) after division by a. Then
`|a^3-1|<=8e`. The nearest cube root a0 obeys
`|a-a0|<=|a^3-1|/2<=4e`: write its argument error t in [-pi/3,pi/3]
and use `sin(3|t|/2)>=2 sin(|t|/2)`. The other two errors are at most 8e.

## 3. Stability of the F3-block classification

Suppose a dephased leading block E satisfies

    max_ij |E_ij-F_ij| <= h <= 2^(-42),
    F_ij=omega^(ij),   i,j=0,1,2.

Then H, after permutations among its last three rows and columns, is
within maximum entry error

    epsilon = 1800 sqrt(h)                            (2)

of a physical Fourier-family matrix, its transpose family, or Tao.
For h=0 use the exact [F3-block classification](../../FourierBlocks/FourierBlockClassification.md).
Here is a quantitative proof for h>0.

Dephase the full first row and column. Write H=[[E,B],[C,D]]. The sums
of the last three entries of top rows 1 and 2 have modulus at most 2h.
Apply (1), anchoring at the first entry of each of those triples.
After a column permutation, the x row of B is within 8h of p(1,omega,omega^2).
The y row must have the opposite ordering: the same ordering would
make its ratio sum have modulus at least 3-32h, whereas row
orthogonality bounds that sum by 4h. Since 36h<3, this is impossible.
The transposed argument gives, with unit p,q,r,s,

    B0=diag(1,p,q)F,   C0=F diag(1,r,s),
    ||E-F||_F<=2h,  ||B-B0||_F<=16h,  ||C-C0||_F<=16h.

Put `D0=-C0 F* B0/3`. Its singular values are sqrt(3), whether or not
its entries are flat. Subtract `C*D=-E*B` and `C0*D0=-F*B0`:

    C0*(D-D0)=-(E-F)*B-F*(B-B0)-(C-C0)*D.

The inverse of C0* has operator norm 1/sqrt(3); B and D have operator
norm at most sqrt(6). Therefore

    ||D-D0||_F <= (18 sqrt(2)+16)h < 42h.              (3)

In particular each squared modulus of D0 differs from one by at most
`42h(1+sqrt(3))<126h`.

Use the exact factorization from the block classification, with
v=(1,p,q), w=(1,r,s), unnormalized Fourier transforms, and

    A_k=vhat_k conjugate(vhat_(k-1)),
    alpha_m=w_m conjugate(w_(m+1)).

For each k the Fourier transform of `z_m=w_m vhat_(k-m)` is -3 times
column k of D0. Its squared moduli are within `9*126h` of 9.
Fourier inversion bounds its nonzero autocorrelation, `(alpha*A)_k`,
by `9*126h`. Transforming once more gives, for j=1,2,

    |alphahat_j Ahat_j| <= 27*126h < 3600h.            (4)

Set `tau=60 sqrt(h)<1/1000`. For each j, (4) forces at least one
factor to have modulus at most tau. The four allocations are exhaustive.
The explicit coefficients, up to ordering, are

    Ahat: 3(q+omega/p+omega^2 p/q),
          3(p+omega q/p+omega^2/q),
    alphahat: 1/r+omega r/s+omega^2 s,
              1/r+omega^2 r/s+omega s.

Each parenthesis is a sum of three unit phases with product one.
Thus a small A coefficient puts both p,q within 8tau of cube roots;
a small alpha coefficient does the same for r,s.

If both A coefficients are small, round p,q to those roots. Changing
them by at most 8tau changes either A coefficient by at most 96tau.
At a cube-root pair the coefficients have moduli 0 or 9. Since
97tau<9, both rounded coefficients vanish, so the rounded v is a
Fourier row. Keep w unchanged: this is a pure Fourier/transpose branch.
If both alpha coefficients are small, the same argument uses change
32tau, grid moduli 0 or 3, and 33tau<3. It rounds w to a Fourier row
while keeping v unchanged. In a mixed allocation round all four parameters.

The lower-right block changes in operator norm by at most
`sqrt(3)(max|v-v0|+max|w-w0|)<=16 sqrt(3)tau<28tau`.
The other blocks change by at most 8tau per entry. Combining with (3),
the resulting reference K is within

    42h+28tau <= 1722 sqrt(h) < epsilon

of H in every entry. In a mixed allocation K is one of the 81 exact
grid matrices in the existing classification. A nonflat one has some
squared entry modulus differing from 1 by at least 1/9, since the
entries are Eisenstein integers divided by three. Also |K_ij|<=sqrt(3)
in its D block. Its distance from every unit phase is therefore greater
than 1/27. But epsilon<=1800/2^21<1/1000, so it cannot be nonflat.
The remaining grid cases are exactly Fourier/transpose or Tao, with
explicit equivalence witnesses in the classification. This proves (2).

## 4. Small global R forces the nearby reference to F6

For physical H,K with maximum entry error epsilon in a common gauge,

    |sqrt(R_c(H))-sqrt(R_c(K))| <= 576 epsilon         (5)

for every corresponding corner. To prove this use the complementary
square identity `R_c=64 q_c^2`, where q is a sum of six products of
three sine differences. Express row quotients as unit phases. Each
quotient changes by at most 2epsilon, and each sine difference changes
by at most 4epsilon. The products have three factors of modulus at most
one, giving `|q_H-q_K|<=6*3*4epsilon=72epsilon`.
The absolute value inequality proves (5), even when R=0.

Assume now M(H)<=1/4. A Tao reference is impossible: it has a corner
R=243, whereas (5) gives `sqrt(243)<=1/2+576epsilon<2`.
So K belongs to a Fourier orientation, with

    sqrt(M(K)) <= sqrt(M(H))+576epsilon < 2 < 6.

Apply [FourierMaxR](FOURIER_MAX_R.md) to K. Entrywise error epsilon
also bounds every normalized row and column error. Its balanced-gauge Fourier
estimate controls both rows and columns and is therefore valid in
either orientation. The triangle inequality yields

    d_F6(H) <= epsilon + pi/144*(sqrt(M(H))+576epsilon)
             <= 14epsilon + sqrt(M(H))/40
             <= 14*1800/2^21 + 1/80 < 1/40.           (6)

Consequently every H with a block as in Section 3 and M(H)<=1/4 lies
strictly inside the F6 radius 1/30. This is a useful conditional theorem
even when the nearly F3 corner is not maximal. The same bound holds for
normalized rows, so transposing a corner frame back is legitimate; no
transpose invariance of maximum-column distance is assumed.

## 5. The singular corner: make a nearly F3 block

Suppose two globally dephased rows have first three entries

    (1,1,1),  (1,exp(i a),exp(i b)),  |a|,|b|<=t.

Orthogonality implies, for the remaining entries v3,v4,v5 of row 2,

    sum_(j=3..5) |v_j+1|^2
      = 2(1-cos a)+2(1-cos b) <= 2t^2.

Thus the whole second row differs in l1 norm by less than 5t from
(1,1,1,-1,-1,-1). For any of the other four rows, let L be the sum of
its first three entries. Orthogonality to the first two rows gives
`|2L|<5t`. Formula (1) makes these entries within 10t of either
(1,omega,omega^2) or (1,omega^2,omega).

There must be exactly two of each orientation. If n choose the first,
orthogonality of the first two columns gives
`|(n-2)i sqrt(3)|<=41t`; for t<=2^(-46) this forces n=2.
Choose one row of each orientation together with the first row. Their
first three columns form a dephased F3 block with entry error at most
`10t<=2^(-42)`. Section 4 therefore applies whenever M(H)<=1/4.
This proof never inverts the original singular complementary Gram.

For the two seed cubes in Sections 3 and 5, outward Taylor bounds in
the verifier certify `R(leading)<1/4` on the entire closed cube. On
the physical maximal-corner domain this implies M(H)<1/4, supplying
the only global hypothesis. No leaf is discarded merely because R=0.

## 6. The remaining nonsingular class and the uniform statement

At seed `(pi/3,2pi/3,2pi/3,4pi/3)`, use the standard F6 reference
without row or column permutations. The unchanged residual-lift engine
certifies the full 1/65536 cube at phase depth 22. Each side cover has
372 labels and 856 retained triples. All choices are included; the
carrier column distance is less than **0.031810 < 1/30** at both 96 and
160 bits. The leading-corner cap is positive; only the full residual
tube outcome is accepted. Thus this also covers physical R=0 carriers.
The centre and the isotropic seed cube are invariant under transposition
(the two middle seed coordinates agree). Applying this same universal
column estimate to H transposed supplies the row estimate as well.
Consequently this cube also supports the transposed corner frames.

The exact 72-frame enumeration maps every F6 seed to one of the six
listed cubes. A phase error 2^(-48) grows by at most four, giving at
most 2^(-46), the smallest listed half-width. This proves the uniform
F6 seed neighbourhood in Section 1.

For a Fourier reference, the proof of FourierMaxR gives a common gauge
with every entry's phase error from F6 at most pi sqrt(M)/144.
Dephasing a corner adds four such errors, so its seed is within
`pi sqrt(M)/36` of an F6 corner seed. If M<=2^(-92), this is less than
`2^(-49)` because pi<9/2. Adding a seed perturbation of at most
2^(-49) still lies strictly within 2^(-48). This proves the uniform
non-F6 small-M neighbourhood claimed above.

## Replay and limits

Run `python3 -B ProvenResults/FourierNeighbourhood/SeedLifting/verify_near_f6.py`.
It checks the rational constants, the 81 exact coefficient allocations
and classification, the Tao corner, all 400 F6 corner classes and frame
containments, analytic-cube Taylor caps, and the entire new residual
lift at both 96 and 160 bits. The analytic inequalities above supply
the universal perturbation argument; numerical samples do not do so.

The result does **not** certify the entire omitted intervals
`0<|q-k/3|<1/24` from ZeroNeighbourhood at its earlier fixed radius,
nor a universal small-R cutoff for arbitrary seeds far from the Fourier
atlas. Those are distinct remaining jobs. All F6 limit points themselves,
in all corner classes, now have certified neighbourhoods.
