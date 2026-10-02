# Exact branches of sharp Gram equality S=126

**Statement.** Let X be three orthogonal flat rows of length six with
`S(X)=126`. Use the normalized kernel `(zeta,conjugate(zeta))` of the
cyclic-feature Gram matrix from the [sharp SOS](SharpBound.md), and write
t_i=|zeta_i|^2 for the kernel weights. Then:

1. The feature matrix has rank exactly five.
2. Exactly two nonzero coordinates of zeta are impossible.
3. One nonzero coordinate forces a binary row quotient, so every full
   Hadamard completion then has an ordinary zero3.
4. If all three kernel weights are equal, every full Hadamard completion is
   monomially equivalent, allowing conjugation, to the explicit H8 in (7).

Three positive *unequal* weights are excluded separately in
[PositiveWeightEquality.md](PositiveWeightEquality.md). All quartets and all
mates through H8 are handled in [H8Mates.md](H8Mates.md).

**Status.** Proved (analytic, with exact finite checks and exact polynomial
multiplier certificates for the completion step).

**Refuted statement (kept as a control):** equality, even together with a
full mate, forces an ordinary zero3 on the equality carrier itself. H8 has
all 400 ordinary three-minors nonzero and an exactly constructed full mate.
That mate does have a zero3 (and so, by H8Mates.md, do all four mates).

**Dependencies.** [SharpBound.md](SharpBound.md), Section 1 (the equality
moments). Nothing else.

**Provenance.** Archive `03_algebraic/core/phase_reduction/gram_forcing/EQUALITY_BRANCHES.md`,
Sections 1-5, copied. Edits: links; the archive "Open" paragraph is replaced
by a pointer; one sentence about archive reconstruction-guard checks is
replaced by a note. Verifier based on `gram_forcing/verify.py` and
`equality_control.py`; `completion_certificate.json` copied to `data/`.

---

## 1. A diagonal projection identity

Multiply each cyclic feature by the inverse phase of its kernel coefficient:
`g_i=exp(-i arg(zeta_i)) f_i`, choosing an arbitrary phase at a zero coefficient.
Write `x_i=|zeta_i|`, `t_i=x_i^2`, `g_i=u_i+i v_i`, and
`rho=product(g_i)` (the latter is constant across the six columns).
These are coordinates for the proof, not independent physical row gauges.
The real vector x has squared norm one. Equality gives

    U U^T=3(I-xx^T),
    V V^T=3 B, B=I+2 diag(t)-xx^T,
    U V^T=0, U1=V1=0, x^T U=0.                         (1)

B is positive definite: a vector annihilated by its two positive terms
`I-xx^T` and `2 diag(t)` would be proportional to x and then zero.
Thus U has rank2, V has rank3, and together with the constant row they span
all of R6. This proves feature rank5 and, column by column, gives

    1/6 + ||u||^2/3 + v^T B^(-1) v/3 = 1.             (2)

There is no generic-rank premise. With `p=t1 t2 t3`, the inverse is explicit:

    det B=2-4p,
    adj(B)_ii=2-ti,
    adj(B)_ij=xi xj(1+2tk), {i,j,k}={1,2,3}.           (3)

Since `0<=p<=1/27`, this denominator is strictly positive everywhere,
including zero kernel coordinates. The verifier checks (3) modulo
`sum x_i^2=1` in characteristic zero.

## 2. Zero-coordinate branches

If only x1 is nonzero, equality gives `sum g1^2=-6`. All six terms are unit,
so each equals -1. Thus g1 is plus or minus i; its zero sum gives three of
each. This is a binary quotient of two ACTUAL rows of X. In any full
completion, those rows are proportional on three columns, giving a zero3
after adjoining any other row. Permuting indices covers all three cases.

Suppose instead x1,x2>0 and x3=0; put `t=x1^2`. Then
`u2=-x1 u1/x2`. The first two coordinates of B have determinant2 and inverse

    (1/2) [[2-t, x1 x2], [x1 x2, 1+t]],

while its third coordinate is1. Substitute this in (2), using
`u_i^2+v_i^2=1`. The result is

    t u1^2+x1 x2 v1 v2=0.

Consequently `v1 v2=u1 u2` and `Re(g1 g2)=0` on EVERY column.
As `g1 g2=rho/g3`, this says that g3 takes
the two values `+i rho,-i rho`. Therefore `sum g3^2=-6 rho^2`, contradicting
the equality condition `sum g3^2=-6 t3=0`. All divisions were by x1,x2>0.
This excludes the entire support-two branch, not a sampled normal vector.

## 3. Equal positive weights: a finite phase configuration

Now `t1=t2=t3=1/3`. Then `sum u_i=0` and
`B=(5/3)I-(1/3)11^T`. Set `T=sum v_i` for a column and
`sigma=Im rho`. Equation (2) becomes

    4 sum v_i^2-3T^2=5.                               (4)

The three unit numbers g_i have sum iT and product rho. Thus they are the
three roots, including multiplicity, of

    F_T(lambda)=lambda^3-iT lambda^2-i rho T lambda-rho.

Their squared sum is `-T^2+2i rho T`, so
`2 sum v_i^2=3+T^2+2 sigma T`. Together with (4), this yields

    T^2-4 sigma T-1=0.                                (5)

Its two real roots T+>0>T- have product -1. If n columns use T+, the
zero feature sums imply `n T+ +(6-n)T-=0`. Hence n is1,...,5 and

    T+^2=(6-n)/n, T-^2=n/(6-n).

For three unit roots the normalized discriminant `disc(F_T)/rho^2` is
nonpositive, including repeated roots. Directly it equals

    T^4+18T^2-27+8 sigma T^3
      =3T^4+16T^2-27                                 (6)

on (5). For n=1 or5, one of the two discriminants is128>0; for n=2 or4,
one is17>0. Only n=3 survives, with both discriminants -8. Thus
`T=+1,-1`, three columns each, and `sigma=0`.

Changing the real kernel vector's sign changes every g_i's sign and rho's
sign, so assume rho=1. The three positive-T entries are permutations of
`(i,q,-q)`, where `q=(1+i)/sqrt(2)`; the negative-T entries are conjugates.
Columns are distinct: otherwise their difference gives a nonconstant right
kernel of M, whose kernel is already exactly the constant line by rank5.

There are therefore `binom(6,3)^2=400` unordered column configurations.
Exact first- and second-moment checks leave precisely two: the three cyclic
permutations of `(i,q,-q)` together with their conjugates, or the opposite
cyclic orientation. Feature-index permutations are realized by row
permutations, with conjugation when needed; column orderings remain free.
Because rho=1, the feature phase normalization can now be implemented by
actual row phases. This proves one monomial/conjugation class of X.

## 4. Every full completion of that configuration

An explicit full completion is

    H8 = [ 1    1     1      1     1     1
          -i   qbar  -qbar   i     q    -q
          -q    i     q     -qbar -i     qbar
           1   -1     i      1    -1    -i
           1   qbar   q     -1    -q    -qbar
           1  -qbar  -i      i     qbar -1 ].          (7)

Its first three rows are the configuration just classified. Write them as
`[E B]`. The exact matrices E and B are invertible. Every additional flat
row, after its own scalar normalization, must be

    (1,p,r | (1,p,r)T), T=-E^* (B^*)^(-1), |p|=|r|=1.

This is the original block orthogonality/reconstruction equation, not a
family guess or an independent bottom-block choice. Let f_j be the three
polynomials `p r (|(1,p,r)T[:,j]|^2-1)`, using `bar p=1/p,bar r=1/r`.
The frozen exact multipliers prove

    p r Gq=sum c_j f_j, p r Gp=sum d_j f_j,
    Gp=(p+1)(p-i)(p^2+i),

where Gq is linear in r with nonzero constant coefficient, explicitly in
`EqualityBranches.py::completion_data`. No torus root is lost since p,r are units.
The four possible pairs (p,r) are

    (-1,i), (i,-qbar), (qbar,q), (-qbar,-i).

Every candidate passes the original equations. Their exact orthogonality
graph has a UNIQUE three-clique: candidates1,3,4 in this displayed order.
It yields the last three rows of (7). This proves exhaustive full completion,
up to bottom-row phases and order, rather than just constructing one example.

**Certified computation:** all36 flatness equations, Hadamard orthogonality
and all400 nonzero ordinary3-minors of (7) are checked in Q(i,sqrt(2)).
(The archive also checked the product-reconstruction guards in one frame;
that archive-coordinate check is not replayed here and is not needed.)

## 5. A full mate survives; what remains to be done

Use rows `(0,5,4,2,1,3)` and columns `(0,1,2,5,3,4)` of (7), dephasing
each row at its first entry. This is the H_X form (see
[../TriangleNullities.md](../TriangleNullities.md), Section 4.2) with
`(a,b,c,d)=(q^3,q^6,q^7,q)`.

For each of the three roots `s^3=ac`, put

    u=(1,a/s,s), v=(1,d/s,bs/a),
    A_j=sum_i u_i/H_ij, B_j=sum_i v_i/H_(i+3),j.

Here `C=A_0 conjugate(B_0)` is nonzero. Both vectors
`(u, plus-or-minus z v)`, with `z=i C/|C|`, are common-unbiased rays.
The six columns are exactly orthogonal and form a full mate K. The verifier
checks these claims in Q(i,sqrt(2),sqrt(3)); K's top-left3-minor is zero.
This explicit mate construction is not an all-mates calculation. The separate
finite certificate and good-reduction proof exclude every quartet containing
H8. [The all-mates theorem](H8Mates.md) additionally lifts all four
finite bases and proves their unique two-column refinements, yielding a
complete physical mate census with a zero3 on each mate.

*(Archive "Open" paragraph removed: the unequal-positive-weight branch is
now settled by [PositiveWeightEquality.md](PositiveWeightEquality.md), and
H8 by [H8Mates.md](H8Mates.md). Forcing equality from a quartet is still
open; see [StrictBound.md](StrictBound.md).)*

## 6. Verification

    python3 EqualityBranches.py

runs in about 10 s and exits nonzero on failure. It checks the inverse
formula (3) modulo sum x_i^2=1, the support-two projected identity, the
uniform-weight projection and cubic identities (4)-(6), the discriminant
table for n=1,...,5, all 400 uniform column configurations (exactly two
survive, one class), both polynomial multiplier identities of Section 4
(data/completion_certificate.json), the four (p,r) candidates and the
unique orthogonal three-clique, H8's physicality, 400 nonzero minors,
S=126 and kernel weights 1/3, and the explicit full mate of Section 5 (with a
zero3), all in characteristic zero. The analytic arguments establish scope.
