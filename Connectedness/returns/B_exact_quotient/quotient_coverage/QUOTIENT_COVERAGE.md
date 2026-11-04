# Exact sheet transport and the quotient coverage argument

## Scope and outcome

The analytic obligations in Tasks B and C can be discharged. At the proposed
maximum

\[
\theta_*=(\alpha,2\alpha,-\alpha,-2\alpha),\qquad
\cos\alpha=\frac14,\quad 0<\alpha<\pi,
\]

the orbit statement is stronger than requested: **the 36 row/column seed maps
already generate all 18 points of the 144-map orbit, and the positive-sheet
Hadamards at these 18 points are all equivalent to one another.** This uses
an invariant that distinguishes the two side orbits; equality of numerical
signatures is not used.

The quotient class map is continuous throughout the strict domain, including
the auxiliary sign cuts. Every component of that domain contains a positive
local maximum of R. A finite, rigorous boundary-overlap certificate makes a
finite union of Records relatively open and closed. An explicit certificate
format and checker accompany the proof.

These statements do **not** constitute the missing global critical-point
cover in Task A. They also do not supply the finite family of actual Records,
their boundary overlaps, or their quartet-exclusion certificates. The final
coverage theorem below remains conditional on those concrete inputs.

## 1. Inputs used

The following inputs are accepted exactly in the sense authorized by the
handoff. No claim is made here to re-prove the underlying classification.

1. Strict-domain validity: R>0 gives positive side Grams, positive g, and
   nonzero prescribed divisors. Both matched constructors are Hadamard.
2. At fixed side Gram G and fixed choice of z, the normalized side fiber is
   a single orbit under complementary column permutations. This is the
   sheet-resolved form of MC2/MC3 proved in
   `reference/reconstruction/Proofs_SIDE_FIBER.md`.
3. For a phase side X, the invariant in Section 2 has the values identified
   in `Proofs_SIDE_FIBER.md` and `Proofs_OPPOSITE_CORNER.md`.
4. For the final global reduction only: MC1, matched exhaustion of non-Tao
   completions, and MC5. Tao is an isolated class, as stipulated.

The algebra below checks the auxiliary root change directly, including the
qualification needed when a reversed raw formula is undefined. The quotient
metric and component argument are proved without an external input.

## 2. Which operations exchange the sheet?

For an invertible 3 by 3 phase matrix X define

\[
\Theta(X)=
-\frac{\operatorname{perm}(X)\det(X)^2}
 {|\det(X)|^2\prod_{i,j}X_{ij}}.
\tag{2.1}
\]

This invariant is unchanged by row phases, column phases, row permutations,
column permutations and transposition. To check phases, let t be the product
of all row and column multipliers. The permanent and determinant gain factors
t, the product of all nine entries gains t cubed, and the determinant modulus
is unchanged. The factors cancel in (2.1). The sign of a row or column
permutation disappears in the squared determinant. Transposition preserves
the determinant, permanent and entry product. Conjugation sends Theta to its
complex conjugate.

For either matched completion write

\[
H_e(\theta)=\begin{pmatrix}E&B\\ C&D\end{pmatrix},
\qquad
z_e=\frac{\chi+e i\sqrt R}{2g},\quad e\in\{1,-1\}.
\]

The side-fiber identities give

\[
\Theta(B)=z_e,\qquad \Theta(C)=\overline{z_e}=z_{-e}.
\tag{2.2}
\]

In particular, the sign of the imaginary part of Theta(B) distinguishes the
two horizontal side orbits, since g>0 and R>0. Moreover

\[
g=|\det B|^2,\quad \eta=|\Theta(B)|^2,
\quad \chi=g(\Theta(B)+\overline{\Theta(B)}),
\quad R=4g^2(\operatorname{Im}\Theta(B))^2.
\tag{2.3}
\]

Let T_{p,q} denote the seed map obtained by permuting the three corner rows
and columns and re-dephasing. Let tau transpose the seed corner, and let
kappa conjugate it. Applying the corner permutations to the first three rows
and columns of a full completion, then re-dephasing, performs only monomial
operations on each side. Thus the horizontal invariant remains z_e and the
vertical invariant remains z_{-e}. The two normalized side fibers are unique
at these fixed invariants. The forced formula

\[
D=-CE^*G_h^{-1}B
\tag{2.4}
\]

then transports the complementary permutations to the full completion.
Consequently

\[
\boxed{H_e(T_{p,q}\theta)\cong H_e(\theta).}
\tag{2.5}
\]

This is actual sheet preservation. Applying (2.3) to the transformed side
also proves that these seed maps preserve g, eta, chi and R.

Transposing the full Hadamard exchanges its two sides. Its horizontal side
is C transposed, whose invariant is z_{-e}. Conjugating the full Hadamard
conjugates both invariants. Side uniqueness and (2.4) therefore give

\[
\boxed{
H_e(\tau\theta)\cong H_{-e}(\theta)^T,
\qquad
H_e(\kappa\theta)\cong \overline{H_{-e}(\theta)}.
}
\tag{2.6}
\]

These operations preserve R as well. For a seed map in the toolkit's order,

\[
L=\kappa^c\tau^t T_{p,q},\qquad c,t\in\{0,1\},
\]

the exact transport rule is

\[
\boxed{
H_e(L\theta)\cong
\operatorname{conj}^{c}\operatorname{transpose}^{t}
H_{(-1)^{c+t}e}(\theta).
}
\tag{2.7}
\]

This proves Claim B, with all combinations of conjugation and transposition
understood. The proof does not accidentally identify the two matched sheets
at an arbitrary fixed seed. It also does not route a matched completion into
an exceptional nonmatched Tao pairing: (2.2) transports the matched invariant
pair explicitly.

### 2.1. Exact orbit at the proposed maximum

Write the exponent matrix of the corner as

\[
V=\begin{pmatrix}0&0&0\\0&1&2\\0&-1&-2\end{pmatrix},
\qquad E_{ij}=e^{i\alpha V_{ij}}.
\]

After permuting V, re-dephasing is the integer operation

\[
V'_{ij}=V_{p(i),q(j)}+V_{p(0),q(0)}
         -V_{p(i),q(0)}-V_{p(0),q(j)}.
\tag{2.8}
\]

The 18 distinct coefficient vectors for the four seed phases are

| | | |
|---|---|---|
| (-4,-2,-2,-1) | (-2,-4,-1,-2) | (-2,-1,-4,-2) |
| (-2,-1,2,1) | (-2,2,-1,1) | (-1,-2,-2,-4) |
| (-1,-2,1,2) | (-1,1,-2,2) | (-1,1,1,-1) |
| (1,-1,-1,1) | (1,-1,2,-2) | (1,2,-1,-2) |
| (1,2,2,4) | (2,-2,1,-1) | (2,1,-2,-1) |
| (2,1,4,2) | (2,4,1,2) | (4,2,2,1) |

Each table entry denotes alpha times that vector, modulo 2 pi. The file
`orbit18.json` gives explicit row and column permutations realizing every
entry. Integer enumeration checks that each of the four transpose/conjugate
cosets gives exactly this same set. Thus the 36 row/column maps already
generate the entire 144-map orbit.

There is no unnoticed collision modulo 2 pi. If alpha/pi were rational,
z=e to the i alpha would be a root of unity. Then z+z inverse=1/2 would be a
rational algebraic integer, which is impossible. Hence different integer
coefficient vectors give different points of the torus.

Equation (2.5) now proves the stronger orbit conclusion

\[
\boxed{[H_+(L\theta_*)]=[K_*]\quad\hbox{for every one of the 144 maps }L.}
\tag{2.9}
\]

This removes a logical shortcut in the supplied draft. MC5 alone says
H_-(theta*) is equivalent to the conjugate of H_+(-theta*); it does not by
itself put H_+(-theta*) into W. Here a direct row swap sends theta* to
-theta*, or one can use the complete row/column orbit above. Consequently

\[
H_-(\theta_*)\cong\overline{K_*}.
\tag{2.10}
\]

All these identities concern the proposed exact point. They do not establish
that every positive local maximum belongs to its orbit; that is Task A.

## 3. The quotient metric and local phase coordinates

Let V_h be the 25-dimensional space of real 6 by 6 matrices with every row
and column sum zero. Its orthogonal projector is

\[
(P_hx)_{ij}=x_{ij}-\frac16\sum_kx_{ik}-\frac16\sum_kx_{kj}
                         +\frac1{36}\sum_{k,l}x_{kl}.
\tag{3.1}
\]

The kernel consists precisely of row-plus-column phase matrices. The lattice

\[
\Lambda=2\pi P_h\mathbb Z^{36}\subset V_h
\tag{3.2}
\]

is discrete: P_h has entries in (1/36) times the integers. It spans V_h, so
it is a full lattice. Taking an entrywise phase lift x identifies the torus
of phase matrices modulo row and column phases with V_h/Lambda, by the map
e to the i x goes to P_h x modulo Lambda. Independence of the chosen lift,
surjectivity, and the description of the kernel follow immediately from
(3.1)-(3.2).

Row and column permutations give a finite group Gamma of orthogonal
automorphisms preserving this lattice. Hence the full equivalence quotient
of phase matrices is the compact metric space

\[
Y=(V_h/\Lambda)/\Gamma.
\]

For phase lifts x,y the metric is

\[
d([x],[y])=\min_{\gamma\in\Gamma,\lambda\in\Lambda}
       \|P_hx-\gamma P_hy+\lambda\|_F.
\tag{3.3}
\]

The minimum is attained because Gamma is finite and Lambda is discrete.
Formula (3.3) is exactly the horizontal-phase minimum in the question: the
discarded row-plus-column phases are the continuous equivalences, while
Gamma and Lambda account for permutations and changes of phase lift. It is
a genuine metric, since a zero minimum is precisely an equivalence. The
triangle inequality follows from composition of the isometries. Its topology
is the quotient topology, and the quotient map is open.

The Hadamard locus is a closed invariant subset of the phase torus. Its
quotient Q therefore inherits this same metric and quotient topology, with
d restricted to Q equal to delta. Conjugation and transposition act by
-x and x transposed on V_h. They are isometries of Q.

For any fixed phase reference A, the map

\[
p_A:V_h\longrightarrow Y,\qquad u\longmapsto[A\circ e^{iu}]
\tag{3.4}
\]

is continuous and open. One may first take the open lattice quotient, then a
translation, and then the open finite-group quotient. Restricting its domain
to the preimage of Q, or of Q minus Tao, preserves relative openness. This
fact is what turns an interior phase representative into an interior point
of a Record in the quotient. No freeness of the equivalence action and no
manifold assumption on the Hadamard locus are needed.

## 4. Continuity across every auxiliary branch switch

The positive sqrt(R) has no cut inside S. All quantities before the two
auxiliary delta roots are real analytic and all their denominators are
nonzero on S. Each radicand delta squared is nonzero. The only difficulties
are the choice of its square-root sign and the cube-root presentation of
each side.

Here is the needed side algebra. Use the side-constructor notation and write
d_F for its real orientation quantity. The accepted sign-selected side
identities imply

\[
|\sigma|^2=\rho,\qquad n=\rho(1+|q|^2),
\qquad\alpha=\rho q,\qquad
\mu(1+|q|^2)+u\bar q+q\bar\mu=0.
\tag{4.1}
\]

Replace delta by minus delta. Whenever rho prime=n-rho is positive,

\[
\rho'=\rho|q|^2,\quad q'=1/\bar q,\quad
\sigma'=q^2\bar\sigma/\bar q,
\quad c_+'=c_-/q,\quad c_-'=c_+/\bar q.
\tag{4.2}
\]

The sigma identity follows by subtracting q times the conjugate of the last
identity in (4.1) from that identity. Let J exchange Fourier indices 1 and 2,
and put t=q/bar q. Substitution in the side matrix gives

\[
M'=MJ\operatorname{diag}(1,t,\bar t),\qquad
\xi'=t^3\bar\xi.
\tag{4.3}
\]

Choose w prime=t bar w. Then

\[
M'\operatorname{diag}(1,\bar w',w')
=M\operatorname{diag}(1,\bar w,w)J.
\]

Since J commutes with F3, the reconstructed side is exactly S prime=SJ.
Multiplying w by a cube root of unity merely cycles the three columns.
The vertical version permutes the last three rows. Formula (2.4) propagates
these permutations to the complete matrix.

### 4.1. The necessary qualification

One must not claim that both raw delta-sign formulas are defined everywhere.
When s=0, one has mu=alpha=q=0, n=rho=1, d_F=1. The reversed expression has
rho prime=0 and contains 0/0. This occurs at strict seeds. For example,

\[
a=\omega,\quad b=\omega^2,\quad c=i,\quad d=(3+4i)/5,
\qquad\omega=e^{2\pi i/3},
\]

has

\[
s=0,\qquad g=(24+6\sqrt3)/5,
\qquad R=5184/625>0.
\tag{4.4}
\]

This exact exception is checked in `verify_quotient.py`. It does not obstruct
continuity: at such a point the sign-selected chart has d_F=1, so its sign
does not switch in a sufficiently small neighborhood.

### 4.2. A local analytic representative

Fix theta zero in S. Select local analytic square roots of both nonzero
delta radicands, agreeing at theta zero with an allowed sign-selected value.
Keep these branches fixed instead of reapplying the pointwise sign rule.
At the center, each signed rho is at least n/2>0. Thus each remains positive
on a sufficiently small neighborhood. If a signed d_F changes sign, both
rho values are positive there and (4.2)-(4.3) identify the analytic chart with
the sign-selected chart by a complementary permutation. At d_F=0, both
values equal n/2 and |q|=1, so no singularity occurs. At q=0, d_F=n>0 and
there is no sign switch nearby.

The associated xi is nonzero, and a local analytic cube root can likewise be
selected. Cube-root changes are the complementary cycles already proved.
The two sides and (2.4) consequently give a real analytic matrix provider
on this neighborhood, representing exactly [H_+(theta)] pointwise.

Continuous projection to the quotient proves

\[
\boxed{\theta\longmapsto[H_+(\theta)]\text{ is continuous on all of }S.}
\tag{4.5}
\]

The same argument works on the negative sheet. In particular, no global
choice of root or of the comparison permutation is being assumed.

### 4.3. The image cannot hit an isolated class

The local provider is globally dephased and has E(theta) as its upper-left
corner. A fixed equivalence class has only finitely many globally dephased
representatives: fix row and column permutations, and dephasing removes the
continuous phase freedom uniquely. Thus its possible dephased four-seed
corners form a finite set.

If the continuous class map took the value of an isolated class at some
theta zero, it would take this value throughout an open neighborhood of
theta zero. Its four independent seed entries would then range through a
finite set, which is impossible. Therefore the matched image avoids every
isolated class, in particular Tao. This also follows from the supplied Tao
pairing census, but no extra pairing assertion is needed for this conclusion.

## 5. Every strict-domain component contains a maximum

Let C be a connected component of S={R>0}. Open subsets of the torus are
locally path connected, so C is open. Its boundary is contained in {R=0}.
Indeed, if a boundary point had R>0, it would lie in a connected small open
ball contained in S. That ball intersects C, so it is contained in C,
contradicting that its center is a boundary point of the open set C.

The closure of C is compact. Pick any theta in C. The maximum of R on the
closure is at least R(theta)>0 and cannot occur on its zero-valued boundary.
It is attained inside C. Since C is open, the maximizing point is a local
maximum of R on the full torus.

No assertion about a gradient flow, convergence of ascent, or finiteness of
the number of connected components is needed.

## 6. A precise open-and-closed Record criterion

Let X=Q minus the Tao class. For each of finitely many indices r, choose a
phase reference A_r and a compact region D_r in V_h. Define

\[
\mathcal R_r=\{[A_r\circ e^{iu}]\in X:u\in D_r,
                         \ A_r\circ e^{iu}\text{ is Hadamard}\},
\qquad W=\bigcup_r\mathcal R_r.
\tag{6.1}
\]

A reference may be a Hadamard center, as in the suggested construction; the
topological argument does not require the reference itself to be Hadamard.
Assume the following boundary certificate:

> For every r and every u on the boundary of D_r such that the associated
> phase matrix is Hadamard and not Tao, there is an index s and a phase
> vector v in the strict interior of D_s with
> [A_r circle e to the i u]=[A_s circle e to the i v].

It suffices to demand s different from r, as in the question. Allowing a
different interior lift in the same Record is also mathematically valid.

**Theorem.** Under this condition, W is open and closed in X.

**Closedness.** Before removing Tao, each Record image is the continuous
image of the closed Hadamard preimage inside compact D_r. Hence it is
compact, and therefore closed in Q. Its intersection with X is relatively
closed. A finite union remains relatively closed.

**Openness.** Let x belong to W and choose a representing u in some D_r.
If u is interior, (3.4) maps a small open neighborhood of u to a relatively
open neighborhood of x in X contained in W. If u is on the boundary, the
certificate supplies an interior representative v in some D_s, and the same
argument applies there. Thus every point of W is interior relative to X.

This argument addresses equivalence at the quotient level. It does not
assume that the raw matrix patch is open in the 36-dimensional matrix torus,
that the quotient action is free, or that its physical solutions form a
smooth four-dimensional manifold.

### 6.1. What a fixed-point Record must certify

For a tube

\[
D_r=\{v+n:v\in T_r,\quad v^TA_rv\le1,
                    \ n\in N_r,\quad\|n\|^2\le(\rho_r')^2\},
\tag{6.2}
\]

with complementary four- and twenty-one-dimensional spaces, its phase
boundary is contained in the union of the ellipsoid boundary and the normal
sphere. One can partition an enclosing coordinate cube and, on every leaf
that might meet this boundary, either exclude the full Hadamard equations
or enclose every Hadamard solution and transfer that enclosure strictly
inside a target tube. Covering only the tangential ellipsoid boundary is
insufficient unless the normal boundary has independently been shown to
contain no Hadamards.

A certified contraction in the normal coordinates is useful: it gives
unique normal fixed points for each tangential input and sharper enclosures.
For topology, the essential requirement is exhaustive enclosure of every
physical solution. Existence or uniqueness for a selected projected residual
does not itself show that all remaining Hadamard equations hold. Conversely,
the clopenness proof needs no rank or uniqueness assumption when exhaustive
enclosure is otherwise available.

### 6.2. A finite interval certificate with exact transitions

`BOUNDARY_FORMAT.md` specializes (6.2) to exact rational coordinate data and
specifies a finite binary box partition. Its checker accepts a leaf only
after proving one of four facts:

1. The leaf is disjoint from the closed source tube.
2. The leaf lies strictly inside the source tube and hence misses its boundary.
3. A full Hadamard orthogonality residual is bounded away from zero.
4. An explicit row/column permutation and integer phase winding sends its
   entire enclosure strictly inside a target tube.

The first three cases eliminate the leaf from the boundary obligation; the
fourth certifies the overlap. All inequalities are rational or outward-rounded
Arb interval decisions. A failed or inconclusive inequality rejects the
certificate. The binary tree proves exhaustive coverage of the enclosing
cube without relying on sampled boundary points.

The overlap uses an exact affine horizontal phase map. If P,Q are the
chosen permutations, C_r,C_s are reference phase matrices and N is an
integer matrix, it is

\[
v=P_h(PC_rQ-C_s+2\pi N)+PuQ.
\tag{6.3}
\]

The discrepancy removed by P_h is a row-plus-column phase matrix, so
A_s circle e to the i v is equivalent to P(A_r circle e to the i u)Q.
This identity is valid for every u, including on branch boundaries of a
principal argument. The winding N is part of the finite certificate.

No actual Record boundary tree accompanies the supplied handoff. The
standalone checker's regression uses an explicitly empty physical tube and
is labeled as such; it cannot be mistaken for a nonempty atlas certificate.

## 7. Assembly of the coverage theorem

Assume, in addition to the supplied classification inputs:

1. Claim A has been certified: every positive local maximum of R belongs
   to the orbit in Section 2.1.
2. A finite collection of Records has a valid boundary certificate of
   Section 6, giving W relatively open and closed in X.
3. W contains [K_*] and [F], and is closed under conjugation. Transposition
   closure, as stipulated in the question, is harmless but is not needed
   after the stronger orbit identity (2.9).

Let C be any component of S. By Section 5 it contains a positive local
maximum theta_m. Claim A and (2.9) give [H_+(theta_m)]=[K_*] in W. The
continuous map of Section 4 has its image in X. Its image of connected C
is connected and meets the relatively clopen set W, so the entire image
lies in W. Thus H_+(S) is covered.

For any non-Fourier, non-Tao Hadamard H, MC1 gives a strict corner.
Matched exhaustion gives H equivalent to H_+(theta) or H_-(theta) at that
corner. The first possibility is covered. In the second, MC5 gives

\[
[H]=[\overline{H_+(-\theta)}].
\]

The conjugate seed -theta is in S because R is conjugation invariant.
Hence its positive-sheet image belongs to W, and conjugation closure puts
[H] into W as well. The explicit membership of [F] covers the remaining
non-Tao class. Therefore

\[
\boxed{W=Q\setminus\{[\mathrm{Tao}]\}.}
\tag{7.1}
\]

If every Record also carries a valid local quartet-exclusion certificate,
then (7.1) transfers that exclusion to every non-Tao class. Tao still needs
the separate stipulated exclusion. Neither the boundary checker nor this
topological theorem proves the local quartet certificates.

For completeness, conjugation preserves a MUB quartet by conjugating every
basis. Transposition preserves the quartet-edge question as well: from
I,U,V,W, conjugate all four bases and then apply U transposed to all four.
The resulting bases include I and U transposed. This justifies adjoining
conjugate and transpose Records without changing their exclusion meaning.

## 8. Verification and exact remaining obligations

Run

```text
python3 verify_quotient.py
python3 verify_boundary_records.py --selftest
```

The first checks the integer orbit and its stored witnesses, rational
branch-reflection identities, the side invariant's monomial behavior, the
strict s=0 example, and the exact horizontal projector. The second tests the
boundary checker's arithmetic and rejection of an inconclusive residual.

For a real supplied boundary certificate, run

```text
python3 verify_boundary_records.py path/to/boundary_records.json
```

That command proves only the specified union's clopenness. Representative
membership, symmetry closure, Claim A, and the cellwise quartet exclusions
remain separate obligations. No numerical signature comparison or successful
ascent is an acceptance condition in either script.
