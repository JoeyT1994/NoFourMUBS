# Exclusion of positive critical points on the all-equal side pole

## Statement

Let E be a 3 by 3 phase matrix. For its complementary Gram 6I-EE*, use
the invariants X,Y,Z,J and R of the handoff. Suppose

\[
X=Y=Z=q,\qquad J=3q-q^2,\qquad 1<q<\frac95.
\tag{1}
\]

Then E is **not a critical point of R in its four dephased seed phases**.
In particular it cannot be a positive local maximum.

This excludes the required all-equal pole at criticality. It does not claim
that a phase E satisfying (1) is itself impossible. The stronger physical
nonexistence assertion is false, as the exact family below shows.

### Exact physical family on the pole

Choose any unit a and put

\[
b=-\frac{a+2}{2a+1},\qquad
E=\begin{pmatrix}1&1&1\\1&a&b\\1&\bar b&\bar a\end{pmatrix}.
\tag{1a}
\]

The denominator is nonzero and b is unit, because |a+2|=|2a+1|. The three
off-diagonal entries s,t,r of EE* obey

\[
s=1+a+b=-1-2ab,\qquad t=\bar s,\qquad r=-\bar s.
\]

Thus X=Y=Z=q, with J_0=-2q Re(s)=q(q-3). If x=Re(a), then

\[
q-1=\frac{8(1-x^2)}{5+4x},\qquad
3-q=\frac{2(2x+1)^2}{5+4x}.
\]

This family realizes every q in [1,3]. For a fully rational complex example,

\[
a=\frac{3+4i}{5},\qquad b=\frac{-35+12i}{37},
\qquad q=\frac{313}{185}\in(1,9/5).
\tag{1b}
\]

It has R>0 by the exact pole-value formula below. Consequently the
circulant factorization used later must be deduced from **criticality**;
it cannot be assumed for an arbitrary phase E with a circulant Gram.

## 1. Exact derivative reduction

Write K=EE*=3I+C, with C having zero diagonal. Its squared off-diagonal
moduli are still X,Y,Z, while its triple-product invariant is

\[
J_0=-J=q(q-3).
\]

At (1), all three derivatives of R with respect to X,Y,Z agree. Set

\[
\begin{aligned}
A&=R_X=-4q(q-3)(4q^3+3q^2-42q+27),\\
B&=R_J=12q(q-3)(3q^2-2q-9).
\end{aligned}
\tag{2}
\]

Thus, at this point, the differential is

\[
dR=A\,dp-B\,dJ_0,
\qquad p=X+Y+Z.
\tag{3}
\]

Because R is invariant under row and column phases, criticality of its four
dephased phases is equivalent to criticality under all nine entry phases.
The spectral identities

\[
\operatorname{tr}K^2=27+2p,\qquad
\operatorname{tr}K^3=81+18p+3J_0
\]

show that (3) is the differential of

\[
\frac{A+6B}{2}\operatorname{tr}K^2
-\frac B3\operatorname{tr}K^3
\]

with A,B held fixed at the point. Differentiating with respect to an entry
phase gives the necessary stationarity equations

\[
\operatorname{Im}\left(((AC-BC^2)E)_{ij}\overline{E_{ij}}\right)=0
\quad\hbox{for all }i,j.
\tag{4}
\]

Terms proportional to E were discarded, since their entrywise product with
bar E is real. These steps are elementary matrix differentiation; the
polynomial coefficients in (2) are verified exactly by the companion script.

## 2. Put the equal-modulus Gram into circulant gauge

Choose a diagonal row rephasing and a cube root c of the invariant triple
product so that

\[
C=cP+\bar cP^2,\qquad P e_j=e_{j+1}\quad(j\bmod3).
\tag{5}
\]

This is always possible when all three off-diagonal moduli are equal and
nonzero: match two off-diagonal phases by row rephasings; their invariant
product forces the third. We have

\[
|c|^2=q,\qquad 2\operatorname{Re}(c^3)=J_0=q(q-3).
\tag{6}
\]

The Gram is invertible, since

\[
\det K=27-9q+q(q-3)=(q-3)(q-9)>0.
\tag{7}
\]

Using P cubed=I in (4), its nonconstant part is

\[
AC-BC^2=\kappa P+\bar\kappa P^2-2BqI,
\qquad \kappa=Ac-B\bar c^2.
\tag{8}
\]

The coupling kappa cannot vanish. First B is nonzero: for 1<q<9/5,
the increasing polynomial 3q squared-2q-9 is at most -72/25. If kappa
were zero, A/B=bar c squared/c=bar c cubed/q would be real. But (6) gives

\[
(\operatorname{Im}c^3)^2
=q^3-\frac{q^2(q-3)^2}{4}
=-\frac{q^2(q-1)(q-9)}4>0.
\tag{9}
\]

Therefore kappa is nonzero. Write kappa=|kappa| exp(i phi).

## 3. Classify stationary flat columns

For any column x of E, equation (4) says that x is stationary, under its
three phases, for the real quadratic form

\[
x^*(\kappa P+\bar\kappa P^2)x.
\]

Write x_i=exp(i theta_i) after removing its overall phase, and let
delta_i=theta_(i-1)-theta_i, cyclically. Then the sum of the three deltas
is zero modulo 2 pi. The three stationarity equations are precisely

\[
\sin(\phi+\delta_0)
=\sin(\phi+\delta_1)
=\sin(\phi+\delta_2).
\tag{10}
\]

For real angles with equal sine, each angle is congruent to beta or
pi-beta. There are two possibilities.

**All three are equal.** Then the three deltas are equal modulo 2 pi.
The phase vector is one of the three Fourier eigenvectors of P, up to
an overall phase. Its rank-one projector is circulant.

**Two are equal and the third is supplementary.** Let beta be the repeated
value of phi+delta. Their sum condition gives beta=3phi-pi modulo 2 pi.
Consequently the two repeated edge ratios exp(i delta) equal

\[
u=-e^{2i\phi},
\]

and the third ratio is u to the minus two. Up to an overall phase the column
is one of the three cyclic shifts of

\[
v=(1,u^{-1},u^{-2})^T.
\tag{11}
\]

If u cubed=1, these mixed candidates are already Fourier vectors. Otherwise
their three projectors are distinct, noncirculant, and form one cyclic orbit.
This includes the equal-sine endpoint cases: when the two sine solutions
coincide, they fall into the Fourier case, not an additional family.

## 4. Circulant Gram forces three columns of one type

Invertibility (7) forbids proportional columns, so no normalized stationary
column can occur twice. The Fourier columns each contribute a circulant
rank-one projector to K. The sum of the three mixed projectors is also
circulant because it is a complete cyclic orbit average.

A nonempty proper subset of the mixed projectors cannot have a circulant
sum. A singleton would itself be circulant. For a pair, subtract its
circulant sum from the circulant sum of all three; the remaining singleton
would be circulant. But a rank-one projector xx* commutes with P if and only
if its one-dimensional range is invariant under P, meaning x is a Fourier
eigenvector. This contradicts the non-Fourier mixed case.

Since K is circulant, the number of mixed columns must therefore be zero or
three. If it is zero, invertibility forces the three distinct Fourier vectors,
so K=3I and q=0, contradicting (1). If it is three, E consists of all cyclic
shifts of v, up to column phases and permutation. Thus E has a circulant
phase representative.

## 5. The deltoid obstruction for a circulant phase factor

For a circulant 3 by 3 phase matrix, a cyclic off-diagonal Gram entry c is
a sum of three unit phases z1,z2,z3 whose product is 1. Their cubic is

\[
t^3-ct^2+\bar c t-1.
\]

Its discriminant is

\[
\Delta=|c|^4+18|c|^2-27-8\operatorname{Re}(c^3).
\tag{12}
\]

For three unit roots with product 1, this discriminant is nonpositive:
writing zk=exp(i theta_k), the product of the three squared root differences
is minus 64 times a product of three squared real sines. Therefore (12),
combined with (6), requires

\[
0\le-\Delta
=27-18q+4J_0-q^2
=3(q-1)(q-9).
\tag{13}
\]

The right side is strictly negative for 1<q<9/5. This contradiction completes
the critical-point exclusion.

## 6. A useful q=1 endpoint check

The open lower endpoint in the lemma is deliberate. The real seed

\[
E_0=\begin{pmatrix}1&1&1\\1&1&-1\\1&-1&1\end{pmatrix}
\]

has q=1, R=256 and zero phase gradient. It is a saddle. Along the exact
phase variation

\[
E(t)=\begin{pmatrix}1&1&1\\1&1&-e^{it}\\1&-e^{it}&1\end{pmatrix},
\]

one has R second derivative at zero equal to 512>0. The companion verifier
checks this through the structural formula. Thus a treatment of a two-ones
pole reaching this endpoint must exclude it as a saddle, rather than claim
that there are no positive critical points there.

## Verification

`verify_all_equal_pole.py` checks the derivatives in (2), the exact value
R=-4q squared(q-3) squared(q+3)(5q-9), the Gram determinant, nonzero-coupling
identity (9), the cubic discriminant, and the final factorization (13), all
symbolically. It also checks the exact physical pole family and the q=1
saddle direction. The stationary-column classification and finite-projector
argument above are the analytic proof; no numerical optimization or
circulant-only assumption is used as an input.
