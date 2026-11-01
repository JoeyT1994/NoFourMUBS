# Coverage by the exact maximum orbit

## Result

**Tasks A–C are proved.** The positive local maxima of the structural corner
invariant R are exactly the 18 points in the stated seed-map orbit. The
proposed point and value are exact:

\[
\boxed{
\alpha=\arccos(1/4),\qquad
\theta_*=\alpha(1,2,-1,-2),\qquad
R_*=\frac{3^{13}}{2^{12}}=\frac{1594323}{4096}.
}
\]

Every point of this orbit is nondegenerate. Moreover, all 18 positive-sheet
completions are equivalent to the same matrix \(K_*=H_+(\theta_*)\).
The quotient class map is continuous on the entire strict seed domain.

The classification is algebraic. Its acceptance checks consist of exact
Laurent and ordinary polynomial identities, rational elimination, rational
Sturm root isolation and rational interval signs. It requires no global
four-dimensional box enumeration.

The resulting coverage theorem is the one requested in the prompt:
**any actual finite Record family meeting the precise boundary, membership
and symmetry conditions below covers every non-Tao class.**
The handoff does not contain that family or its boundary overlap data.
This bundle therefore supplies the coverage argument and a concrete
boundary checker; it does not certify an instantiated atlas or the
no-four-MUBs conclusion by itself.

Optional Task D is proved on the whole two-parameter Fourier family.
Its proposed global extension is not proved here.

## 1. Exact statements for the seed invariant

Define

\[
\begin{split}
\mathcal F(p,J,W)&=
4(27-3p+J)^2(9-p+J)\\
&\quad-[W-(p-9)(p-18)+(p-15)J]^2,\\
p&=X+Y+Z,\qquad W=XY+XZ+YZ-XYZ,\\
R&=\mathcal F(p,J,W),\\
\widehat R&=\mathcal F(p,-J,W),\qquad Q=4XYZ-J^2.
\end{split}
\]

Here X,Y,Z,J are exactly those in the prompt, formed from 6I-EE*.
The sign-reversed invariant \(\widehat R\) belongs to the raw Gram EE*.

### Theorem A

Every local maximum of R with R>0 is one of the 18 points

\[
\{L\theta_*:L\text{ is one of the 144 seed maps}\}.
\]

There are exactly 18 distinct points, all with value R* and negative-definite
Hessian.

At the displayed representative,

\[
D^2R(\theta_*)=-\frac{3^9}{2^{11}}
\begin{pmatrix}
240&-120&-234&117\\
-120&138&117&-18\\
-234&117&240&-120\\
117&-18&-120&138
\end{pmatrix}.
\]

Its eigenvalues are

\[
-\frac{3^9}{2^{11}}(63\pm3\sqrt{362}),
\qquad
-5\frac{3^9}{2^{11}}(63\pm3\sqrt{362}).
\]

They are strictly negative because \(63^2>9\cdot362\).

### Corollaries

Since the torus is compact and R is positive at the stated point,

\[
\boxed{R(\theta)\le R_*\quad\text{for every }\theta\in\mathbb T^4.}
\]

Equality holds precisely at those 18 points. Also, the open set S={R>0}
has at most 18 connected components: each component contains a positive
local maximum, as proved in Section 4 below.

These are global statements. No neighborhood, regularity guard, positive
lower cutoff on R, or choice of reconstruction sheet restricts their domain.

## 2. Proof of Theorem A: an exhaustive algebraic decomposition

The full proofs and every required coefficient are in the accompanying
files. This section states how they assemble, including the exceptional
fibers that could otherwise invalidate a critical-point reduction.

### 2.1. The invariant-Jacobian identity

Let \(\Psi(\theta)=(X,Y,Z,J)\). The central identity is

\[
\boxed{(\det D_\theta\Psi)^2=Q\widehat R.}                         \tag{1}
\]

The verifier regenerates the structural R as an integer Laurent polynomial
in a,b,c,d, independently of the supplied coefficient table. It constructs
the angular Jacobian and checks (1) coefficient by coefficient.

Both factors in (1) are nonnegative on the torus. For Q this is the identity
\(Q=4(\operatorname{Im}(sr\bar t))^2\).
For \(\widehat R\), one can either use the phase-side identity
\(\widehat R=4(\operatorname{Im}q(E))^2\), or derive nonnegativity from
(1) where Q>0 and extend by continuity.

A positive local maximum must lie on \(Q\widehat R=0\).
Indeed, on the regular branch \(\Psi\) is a local coordinate system.
The invariant stationary equations reduce to all X,Y,Z equal or to two
of them equal to 1. Their only positive candidate is

\[
(X,Y,Z,J)=(1,1,5,-2/3)
\]

up to permutation. It has R=1024/27 and a positive invariant Hessian
direction, so it is a saddle.

Proof and exact checks:
[EXACT_MAXIMA.md](exact_maxima/EXACT_MAXIMA.md),
[verify_exact_maxima.py](exact_maxima/verify_exact_maxima.py),
[verify_regular_branch.py](exact_maxima/verify_regular_branch.py).

### 2.2. The branch \(Q=0,\widehat R>0\)

This branch is completely excluded, including a vanishing overlap.
Where X,Y>0 use the smooth coordinates

\[
\Gamma=(X,Y,\operatorname{Re}(sr\bar t/\sqrt{XY}),
              \operatorname{Im}(sr\bar t/\sqrt{XY})).
\]

They satisfy \(4(\det D_\theta\Gamma)^2=\widehat R\), so they remain valid
at Q=0. If two overlaps vanished, R would already be nonpositive.

Constrained stationarity on Q=0 forces two equal moduli.
Writing \(X=Y=u,\ Z=v^2,\ J=2uv\), exact elimination leaves only

\[
u=v^2,\qquad v=(1\pm\sqrt5)/2
\]

as positive candidates. The positive root has \(\widehat R<0\); the
negative root has a positive second derivative in the Gram phase.
Neither can be a maximum.

The same exact elimination proves an additional fact used on the
intersection: the three weighted-triangle derivatives cannot all vanish
at \(Q=\widehat R=0,\ R>0\).

Proof and exact checks:
[Q_BRANCH.md](conditioning_audit/Q_BRANCH.md),
[verify_q_branch.py](conditioning_audit/verify_q_branch.py).

### 2.3. The branch \(Q>0,\widehat R=0\)

Away from the raw-side numerator zeros, the rational side formulas give a
continuous local right inverse of \(\Psi\), through the particular seed,
on a full relative neighborhood in \(\{\widehat R\ge0\}\).
This is proved by matching and continuing the roots that reconstruct the
actual seed. It does not assume an ordinary fold normal form.

A boundary maximum must have

\[
\nabla R=\lambda\nabla\widehat R,\qquad \lambda\le0.
\]

With \(t=\widehat\chi/(2\widehat g)\), the boundary is parametrized by

\[
J=9-p-t^2,\qquad
W=-(t+3)(pt+p-2t^2-9t-9).
\]

The generic stationary equations reduce to zero-R solutions and one sextic.
Exact Sturm isolation gives precisely two real roots: one has R<0; the
other has R>0 but \(\lambda>0\). The latter increases R into the physically
liftable side and is excluded.

The projection \((X,Y,Z,J)\mapsto(p,J,W)\) has deficient rank only when all
three moduli are equal or two are 1. The nonpole parts are excluded by,
respectively, a strictly monotone boundary curve and opposite-sign
constrained Hessian directions.

The pole set is also exhaustively treated. Under Q>0, any raw-side
numerator zero forces, up to permutation, either

\[
X=Y=Z=q,\quad J=3q-q^2,
\]

or

\[
(X,Y,Z)=(1,1,q),\quad J=3-q.
\]

For the two-one pole, the antipodal-pair structure of unit triples gives
the complete phase family

\[
E(A,U)=
\begin{pmatrix}
1&1&1\\
1&A&-A\\
1&AU&-AU
\end{pmatrix}.
\]

The full four-derivative stationary ideal, after removal of factors
nonzero at R>0, is exactly \(\langle A^2-1,U^2-1\rangle\).
Thus its critical points have Q=0.

For the all-equal pole, full phase stationarity reduces to a common
circulant three-spin quadratic form. Its stationary columns consist
of Fourier vectors or one cyclic orbit of three mixed vectors.
Invertibility and the circulant Gram force all three columns to be of
one type. The mixed case contradicts the unit-root cubic discriminant:

\[
0\le3(q-1)(q-9)<0,\qquad 1<q<9/5.
\]

Criticality is essential in that argument. Actual strict seeds on this
pole exist; an exact example is included in the proof and verifier.

Proofs and exact checks:
[FOLD_BRANCH.md](fold_branch/FOLD_BRANCH.md),
[FOLD_LIFT.md](conditioning_audit/FOLD_LIFT.md),
[ALL_EQUAL_POLE.md](quotient_coverage/ALL_EQUAL_POLE.md),
[verify_fold_branch.py](fold_branch/verify_fold_branch.py),
[verify_fold_lift.py](conditioning_audit/verify_fold_lift.py),
[verify_all_equal_pole.py](quotient_coverage/verify_all_equal_pole.py).

### 2.4. The intersection \(Q=\widehat R=0\)

No overlap can vanish on this intersection at R>0, since J would vanish
and R would equal \(\widehat R\).

Gauge the raw Gram to real signed correlations x,y,z.
Full phase stationarity makes each column stationary for the same real
weighted triangle energy. The three weights are not all zero by the
lemma in Section 2.2. Classifying stationary triangles, including zero
weights, proves that a critical seed is equivalent to a real sign corner
or to

\[
V(\phi,\psi)=
\begin{pmatrix}
1&1&1\\
1&e^{i\phi}&e^{-i\phi}\\
1&e^{i\psi}&e^{-i\psi}
\end{pmatrix}.                                                   \tag{2}
\]

This is a critical-point theorem; no uniqueness of singular side fibers
is assumed. All six positive real sign corners have R=256 and a positive
Hessian direction.

For (2), its real correlations satisfy

\[
x^2+y^2+z^2-xyz+xy+xz+yz-3(x+y+z)=0.
\]

When x,y,z are distinct, two symmetric coordinates reduce stationarity
to a sextic with precisely two real roots. One has negative R.
At the other, the sum of three explicit normal quadratic coefficients
is strictly positive. Consequently an actual seed direction increases R.

If two correlations agree, set x=y=r. Strictness gives z=r²-2r and
R>0 forces 0<r<2. The derivative of the restricted R factors into
nonvanishing factors, \(2r-3\), and a quintic with no roots in (0,2).
Thus r=3/2 is the only remaining possibility:

\[
x=y=3/2,\quad z=-3/4,\quad
\cos\phi=1/4,\quad\psi=-\phi.
\]

This is in the stated 18-point orbit. The exact negative-definite Hessian
proves that all orbit points really are maxima.

Proof and exact checks:
[INTERSECTION.md](exact_maxima/INTERSECTION.md),
[verify_intersection.py](exact_maxima/verify_intersection.py).

The regular region, the two single-zero branches and their intersection
exhaust the entire seed torus at R>0. Theorem A follows.

### 2.5. Why no unmodified global box cover was used

At the F3 corner
\((a,b,c,d)=(\omega,\omega^2,\omega^2,\omega)\), vary only a to
\(\omega e^{i\varepsilon}\). Exact substitution gives

\[
R=9x^3(4-x),\qquad x=4\sin^2(\varepsilon/2).
\]

Strict seeds therefore approach a point where R, its gradient and its
Hessian all vanish. A box containing this point cannot pass any of the
prompt's proposed strict sign tests or a nondegenerate critical-point
test. The algebraic classification handles the degeneracy directly.

## 3. Exact sheet transport and the maximum orbit

For an invertible phase side X define

\[
\Theta(X)=-
\frac{\operatorname{perm}(X)\det(X)^2}
 {|\det(X)|^2\prod X_{ij}}.
\]

It is invariant under row and column phases and permutations and under
transposition; conjugation conjugates it.
For a matched completion H_e, \(e=\pm1\),

\[
\Theta(B)=z_e,\qquad \Theta(C)=z_{-e}.
\]

The imaginary sign distinguishes the two horizontal side orbits.
Side uniqueness at fixed z and the forced lower block therefore give
the exact transport law

\[
\boxed{
H_e(L\theta)\cong
\operatorname{conj}^{c}\operatorname{transpose}^{t}
H_{(-1)^{c+t}e}(\theta),
}                                                               \tag{3}
\]

where L consists of corner row/column permutations followed by optional
transpose t and conjugation c.

Pure row and column permutations preserve the sheet.
An integer calculation shows that the 36 pure row/column maps alone
generate all 18 points in the full orbit of theta*. Thus

\[
\boxed{[H_+(L\theta_*)]=[K_*]\quad\text{at every maximum}.}         \tag{4}
\]

This is stronger than the requested closure under four symmetry images.
It avoids the circular shortcut in the supplied draft: MC5 alone relates
H_-(theta*) to the conjugate of H_+(-theta*), but does not yet put that
second positive-sheet point in W. Equation (4) supplies that missing step.

Proof, integer witnesses and algebraic checks:
[QUOTIENT_COVERAGE.md](quotient_coverage/QUOTIENT_COVERAGE.md),
[orbit18.json](quotient_coverage/orbit18.json),
[verify_quotient.py](quotient_coverage/verify_quotient.py).

## 4. Continuity and connected components

Let P_h project real 6 by 6 phase arrays onto the horizontal space by
subtracting row and column means and adding the overall mean.
The phase quotient by continuous row and column gauges is the flat torus

\[
V_h/(2\pi P_h\mathbb Z^{36}).
\]

The lattice is discrete because P_h has rational entries, and it spans
the 25-dimensional horizontal space. Quotienting further by the finite
row/column permutation group gives the metric in the prompt. Its minimum
is attained, it induces the quotient topology, and the quotient map is open.

At each strict seed, all required divisors and the two auxiliary
square-root arguments are nonzero. Choose local analytic square roots
and cube roots agreeing with the constructor at that point.
A cube-root change cycles complementary rows or columns.
A permitted delta-sign change reflects them, with the lower block
transformed consistently. Therefore these local analytic representatives
all define the same quotient class, and

\[
\boxed{\theta\longmapsto[H_+(\theta)]\text{ is continuous on }S.}
\]

One qualification matters: at s=0 the reversed raw delta formula can
have rho'=0 and be undefined. The prescribed formula remains regular,
and its sign does not change locally there. This is treated explicitly;
the continuity proof never evaluates the singular reversed formula.

The image avoids Tao. Otherwise, isolation and continuity would force
the class map to be constant on a neighborhood, while the dephased four
seed entries vary independently. A fixed class has only finitely many
dephased representatives, making that impossible.

Now let C be a component of S. Components are open because the torus
is locally path connected. Its boundary lies in R=0. Compactness of
its closure makes R attain a positive maximum inside C; that point is
a local maximum on the torus.

By Theorem A and (4), every connected image H_+(C) contains [K_*].
In particular, the positive-sheet image H_+(S) is itself connected.

All details are in QUOTIENT_COVERAGE.md, Sections 3–5.

## 5. A finite boundary condition for Records

Let \(\mathcal Q=\mathcal H/\cong\), and remove the isolated Tao class.
For each of finitely many Records choose a phase reference A_r and a
compact full-dimensional horizontal tube D_r. For example,

\[
D_r=\{v+n:
v\in T_r,\ v^TM_rv\le1,\ 
n\in N_r,\ \|n\|\le\rho'_r\},
\]

where \(T_r\oplus N_r=V_h\), with dimensions 4 and 21.
Define the Record as the quotient image of all Hadamards
\(A_r\circ e^{iu}\) with \(u\in D_r\).

The precise sufficient boundary condition is:

> Every horizontal boundary point of every source tube that represents a
> non-Tao Hadamard has an equivalent representative strictly inside a
> target tube.

Both the tangential ellipsoid boundary and the normal boundary count.
A certificate for only one of them is insufficient unless the other
has been proved physically empty.

Under this condition, the finite union W is relatively closed because
its Record images are compact. It is relatively open because an
interior horizontal representative projects to an open neighborhood
in the quotient, and the boundary condition gives such a representative
for every remaining point of W.

This proof does not require a free quotient action or an unproved
rank-21 theorem. Unique normal fixed-point enclosures can make the
checks sharper, but exhaustive enclosure of every physical solution
is what the topological argument needs.

### Executable certificate format

BOUNDARY_FORMAT.md gives rational rank-4 and rank-21 quadratic forms,
a checked enclosing cube, and a finite binary partition of that cube.
Every leaf must certify one of four statements:

1. The leaf misses the source tube.
2. It lies strictly inside the source tube.
3. A full Hadamard row-orthogonality residual excludes zero.
4. An explicit permutation and integer phase winding sends its enclosure
   strictly inside a target tube.

The exact transition is

\[
v=P_h(PC_rQ-C_s+2\pi N)+PuQ.
\]

This handles row and column phases and phase windings without relying on
principal-argument continuity. All inequalities are rational or
outward-rounded Arb decisions. Inconclusive leaves are rejected.

The supplied checker has only an explicitly empty-tube arithmetic
regression, not an instantiated nonempty atlas.

See [BOUNDARY_FORMAT.md](quotient_coverage/BOUNDARY_FORMAT.md) and
[verify_boundary_records.py](quotient_coverage/verify_boundary_records.py).

## 6. Assembly: the requested coverage theorem

Assume the permitted classification inputs MC1–MC5, and let W be an
actual finite union of Records satisfying:

1. The boundary condition of Section 5, so W is relatively open and closed
   in \(\mathcal Q\setminus\{[\mathrm{Tao}]\}\).
2. Membership of [F] and [K_*].
3. Closure under conjugation. Transposition closure as specified in the
   handoff is allowed, but is no longer needed for the maximum orbit.

For each component C of S, the connected image H_+(C) lies in the
non-Tao quotient and meets W at [K_*]. Relative clopenness therefore
forces the whole image into W.

Every non-Fourier, non-Tao Hadamard has a strict corner by MC1.
Matched exhaustion and MC5 put its class either in H_+(S) or in the
conjugate of H_+(S). Both are covered. The explicit Fourier membership
covers the remaining class. Therefore

\[
\boxed{W=\mathcal Q\setminus\{[\mathrm{Tao}]\}.}
\]

If every actual Record additionally passes its local quartet-exclusion
certificate, that exclusion is global on the non-Tao quotient. The
separate Tao exclusion completes the intended no-four-MUBs application.
Neither those actual local certificates nor the actual Record overlaps
are supplied in this handoff, so this application is conditional here.

### Precisely which supplied inputs are used

| Input | Role |
|---|---|
| Strict-domain positivity and nonvanishing identities | Positivity and invertibility used in the invariant analysis and local providers. |
| Universal side identities and their localization/specialization proof in SIDE_FIBER | The local boundary halfspace lift; the discriminant is not inverted, so its zero is permitted. |
| MC2/MC3, resolved at fixed side invariant z | Exact sheet transport, root-permutation identities and continuity. |
| Matched flatness in MC4 | H_+ and H_- really lie in the Hadamard quotient on S. |
| MC1 and non-Tao matched exhaustion in MC2–MC4 | Final reduction of arbitrary classes to strict corners and matched sheets. |
| MC5 | The negative sheet is obtained from the positive sheet at conjugated seeds. |
| Tao isolation, stipulated in the handoff | The matched continuous image avoids Tao. |

The quotient topology, component-maximizer argument, Record boundary lemma,
exact maximum classification and orbit computation are proved in this bundle.
The permitted classification itself is not re-proved or independently audited.

The proof inputs supplied with the handoff are copied verbatim under
reference/. Their historical provenance links may name files that were
not included in the original upload; no such missing historical file is
silently treated as a new computational certificate.

## 7. Optional conditioning result

For the complete two-parameter Fourier family

\[
H(a,b)=
\begin{pmatrix}
F_3&D F_3\\
F_3&-D F_3
\end{pmatrix},
\qquad D=\operatorname{diag}(1,a,b),\quad |a|=|b|=1,
\]

the squared singular values of the toolkit's 25-dimensional horizontal
Jacobian are exactly

\[
\boxed{12^{[5]},\quad9^{[12]},\quad3^{[4]},\quad0^{[4]}.}
\]

Thus rank 21 and minimum nonzero singular value sqrt(3) hold throughout
this entire family. The proof is an exact Fourier-mode decomposition,
checked by Laurent-polynomial character sums.

The proposed global rank and spectral bound for every non-Tao Hadamard
remain unproved. They are not used in Theorem A or the coverage theorem.

See [CONDITIONING.md](conditioning_audit/CONDITIONING.md) and
[verify_conditioning.py](conditioning_audit/verify_conditioning.py).

## 8. Replay and deliverable map

From this output directory run:

~~~text
python3 verify_all.py
~~~

It checks the payload hashes and runs every exact acceptance verifier,
including the boundary checker's explicitly labeled arithmetic regression.
Any failed assertion or subprocess exits nonzero.

For actual future Record data, run:

~~~text
python3 quotient_coverage/verify_boundary_records.py boundary_records.json
~~~

That verifies the supplied union's boundary coverage. Membership, symmetry
and local quartet exclusions remain distinct requirements.

STATUS.md gives the exact proved/conditional/open split.
VERIFICATION.json records the completed replay, including versions and
per-script results. MANIFEST.sha256 records the payload hashes.

