# Global confinement for order-six complex Hadamards: exact partial results

## Status of the requested theorem

**The implication \(M(H)<26\Rightarrow\nu(H)\le0.55\) is not proved in
this return.** No counterexample was found. The package proves explicit
confinement on a global subregion and excludes a complete class of possible
exterior local minima, including every singular case within that class.

The precise remaining obstruction is a local minimum where maximal corners
from different \(3+3\) partitions have balancing gradients. The package
does not exclude all such balances and contains no certified cover of that
remaining region. Therefore it does not complete the proposed proof about
four mutually unbiased bases.

All inequalities used to prove the statements below are justified by exact
algebra, elementary arguments, rational interval bounds, or exact polynomial
root counting. Floating-point experiments are identified separately and are
not inputs to any theorem. The detailed proofs and their executable
certificates are part of this `output/` directory.

## 1. Statements proved

Let \(\mathcal F\) denote the union of the full two-parameter Fourier
family, its transpose, and all their row/column permutation and phase
equivalents. Write

\[
F(a,b)=F_6\circ\exp\bigl(i(a t_1+b t_2)\bigr).
\]

For two unit-entry matrices, define the quotient horizontal phase distance

\[
\delta(H,K)=\inf\{\|v\|_F:v\text{ horizontal},\ H\cong K\circ e^{iv}\}.
\]

It is an attained metric on equivalence classes; in particular
\(\nu(H)=\delta(H,F_6)\). The notation \(\delta\) here corresponds to
\(\Delta\) in `global/TUBE.md`. It is distinct from the Gram chirality
quantity \(\mathcal D\) used below.

### Theorem A: a sharp bound on the entire Fourier family

For every \(H\in\mathcal F\) with \(M(H)<144\),

\[
\boxed{\nu(H)\le\sqrt{\frac23}\arcsin\left(\frac{\sqrt{M(H)}}{12}\right)}
\tag{1}
\]

and

\[
\boxed{d_F(H)\le\sin\left[\frac16
\arcsin\left(\frac{\sqrt{M(H)}}{12}\right)\right].}
\tag{2}
\]

Consequently \(M(H)<26\) implies

\[
\nu(H)<0.358338,\qquad d_F(H)<0.073081.
\tag{3}
\]

The phase-distance envelope (1) is optimal at every level
\(0\le m\le26\):

\[
\sup_{H\in\mathcal F,\ M(H)\le m}\nu(H)
=\sqrt{\frac23}\arcsin(\sqrt m/12).
\tag{4}
\]

Every local minimum of \(M\) on either Fourier parameter torus has
value zero. These are full-torus assertions, not just local statements
near the standard Fourier representative.

### Theorem B: a uniform tube for arbitrary Hadamards

For arbitrary order-six Hadamards,

\[
\boxed{M(H)<26,\quad\delta(H,\mathcal F)\le1/40
\quad\Longrightarrow\quad\nu(H)<0.548503<0.55.}
\tag{5}
\]

Using the supplied local lemma F4, this improves to
\(\nu(H)\le0.451\). The radius \(1/40\) surrounds the entire family
\(\mathcal F\). No claim that every \(M<26\) matrix lies in this
tube is proved.

### Theorem C: exclusion of all local minima supported in one partition

Assume the supplied reconstruction theorem on its open seed domain and
its coverage assertion restricted to \(0<M<26\), as specified in
Section 7. Suppose that the **entire** active-corner set of a Hadamard
\(H\) is contained in the four blocks of one partition

\[
H=\begin{pmatrix}A&B\\C&D\end{pmatrix}.
\]

Then

\[
\boxed{0<M(H)<26\quad\Longrightarrow\quad
H\text{ is not a local minimum of }M.}
\tag{6}
\]

There is an actual analytic Hadamard arc through \(H\) on which all
active corner values strictly decrease. This includes every singular
stratum of the map from the four seed phases to the four Gram invariants.
No assumption that the whole Hadamard variety is a smooth manifold is
needed.

The main regular complementary-pair barrier is the exact number

\[
\boxed{K_*=\frac{233472\sqrt6-488448}{3125}>26.}
\tag{7}
\]

Its approximate value is \(26.7005661526637\), used only for orientation.
This is a barrier for a two-function stationary system, not a claimed
lower bound on every positive local minimum of the full 400-corner maximum.

### Theorem D: a corrected projector gauge and a rigorous residual system

An elementary improvement of the supplied gauge gives

\[
\boxed{d_F(H)\le0.09141\quad\Longrightarrow\quad
\nu(H)<0.549999<0.55.}
\tag{8}
\]

Assuming F1, F2, F4 and the restricted reconstruction input used in
Theorem C, if global confinement is false there is a Hadamard \(H_*\)
satisfying all of the following necessary conditions:

\[
\begin{gathered}
0<M(H_*)<26,\qquad \nu(H_*)>0.55,\\
d_F(H_*)>0.09141,\qquad \delta(H_*,\mathcal F)>1/40,\\
H_*\text{ is a local minimum of }M,\\
\mathcal A(H_*)\text{ meets at least two distinct }3+3\text{ partitions}.
\end{gathered}
\tag{9}
\]

In an actual analytic four-seed family supplied at \(H_*\), at most five
active gradients suffice to witness necessary first-order stationarity:

\[
\begin{gathered}
1\le k\le5,\quad R_{c_1}=\cdots=R_{c_k}=M(H_*),\quad R_c\le M(H_*)
\text{ for every }c,\\
\lambda_i\ge0,\quad\sum_i\lambda_i=1,\qquad
\sum_i\lambda_i\nabla_\theta R_{c_i}=0.
\end{gathered}
\tag{10}
\]

Conditions (9) concern the full active set. No additional partition
restriction on an arbitrary Caratheodory subset in (10) is asserted.

## 2. Proof of Theorem A

Set \(U=2a-b\), \(V=a+b\), and \(W=U-V\). Exact Laurent expansion
of all 400 defining corner polynomials gives the complete multiset

| Value | Multiplicity |
|---|---:|
| \(0\) | 256 |
| \(36(\sin U+\sin V+\sin W)^2\) | 36 |
| \(36(\sin U+\sin V-\sin W)^2\) | 36 |
| \(36(\sin U-\sin V+\sin W)^2\) | 36 |
| \(36(\sin U-\sin V-\sin W)^2\) | 36 |

Thus

\[
M=36\bigl(|\sin U|+|\sin V|+|\sin(U-V)|\bigr)^2.
\tag{11}
\]

The verifier works over
\(\mathbb Z[\omega,x^{\pm1},y^{\pm1}]/(\omega^2-\omega+1)\),
where \(x=e^{ia},y=e^{ib}\). It checks each corner against the
original definition of \(R\), so Theorem A does not assume F2.

Independent shifts of \(U,V\) by integer multiples of \(\pi\)
are actual row/column permutations of this family. An explicit
permutation formula, verified modulo six, reduces them to
\(\widehat U,\widehat V\in[-\pi/2,\pi/2]\). If \(M<144\),
the sine sum is less than two. Elementary sine concavity then forces

\[
T=\max\{|\widehat U|,|\widehat V|,|\widehat U-\widehat V|\}<\pi/2.
\]

These three absolute values are \(r,s,r+s\) for nonnegative \(r,s\).
Since \(\sin r+\sin s\ge\sin(r+s)\),

\[
T\le\arcsin(\sqrt M/12).
\tag{12}
\]

For the residual parameters
\(\alpha=(\widehat U+\widehat V)/3\),
\(\beta=(2\widehat V-\widehat U)/3\), horizontal projection gives
an explicit representative of squared norm

\[
\|u\|_F^2=2(\alpha^2+\beta^2-\alpha\beta)
=\frac23(\widehat U^2-\widehat U\widehat V+\widehat V^2)
=\frac23(r^2+rs+s^2)\le\frac23T^2.
\tag{13}
\]

This proves (1). Suitable row phases give column-projector distances at
most \(\sin(T/6)\) in both the original and transposed families,
proving (2). The transpose is checked separately; transpose invariance
of the column-projector distance is not assumed.

To prove sharpness for \(M\le26\), let \(P\) be horizontal
projection. For every integer matrix \(N\) with \(PN\ne0\),

\[
\|PN\|_F\ge5/6.
\tag{14}
\]

Indeed,
\(36\|PN\|_F^2\) equals the sum of the squared integer rectangular
differences \(N_{ij}-N_{il}-N_{kj}+N_{kl}\). There are at least five
row pairs with nonconstant differences, each contributing at least five
nonzero squared column differences. Hence the sum is at least 25.

Any two horizontal residuals for a fixed matrix relative to arbitrary
Fourier equivalents differ by an element of
\((\pi/3)P\mathbb Z^{36}\). Distinct residuals are therefore at
least \(5\pi/18\) apart. The explicit residual (13) has norm
less than \(0.358338<5\pi/36\) when \(M\le26\), so it attains
the actual infimum defining \(\nu\). Taking
\((U,V)=(t,0)\), \(t=\arcsin(\sqrt m/12)\), proves (4).

Finally, on each sine-sign chamber the sine sum in (11) is strictly
concave in the interior and restricts to \(2\sin t\) on each open
edge. Its only local minima are the Fourier-equivalent chamber vertices.
In the sublevel \(M<144\), scaling
\((\widehat U,\widehat V)\) toward zero explicitly decreases \(M\).

Full details and certificate:
`fourier/CONFINEMENT_FOURIER.md`, `fourier/verify_fourier.py`.

## 3. Proof of Theorem B

For any unit-entry \(3\times3\) matrix \(B\), write

\[
d(B)=2\Im q(B)=-i\sum_{\ell\in L}a_\ell e^{i\ell\cdot\theta}.
\]

The exact coefficient expansion has 48 exponent vectors, each balanced
in rows and columns, with \(a_\ell\in\{-1,1\}\). It satisfies

\[
\sum_{\ell\in L}\ell\ell^{\mathsf T}=144P_3,
\tag{15}
\]

where \(P_3\) is horizontal projection for a \(3\times3\) phase
matrix. Cauchy--Schwarz gives the global bounds

\[
|Dd[w]|\le48\sqrt3\|w\|_F,\qquad
|D^2d[w,w']|\le144\|w\|_F\|w'\|_F.
\tag{16}
\]

These hold on the whole unit-entry torus. Thus they may be integrated
along a straight phase segment even if its interior is not Hadamard.
Using F2 only at its endpoints gives

\[
|\sqrt{M(H)}-\sqrt{M(K)}|
\le48\sqrt3\,\delta(H,K).
\tag{17}
\]

The quotient metric and compactness of \(\mathcal F\) allow an
attaining \(K\in\mathcal F\) with \(\delta(H,K)\le1/40\).
Equations (1), (17), and the triangle inequality give

\[
\nu(H)<\frac1{40}+\sqrt{\frac23}
\arcsin\left(\frac{\sqrt{26}+6\sqrt3/5}{12}\right)
<\frac{548503}{10^6}<\frac{11}{20}.
\tag{18}
\]

The final inequality is certified by rational square-root enclosures
and a positive arcsine series with an explicit tail bound. F4, applied
to an attaining horizontal representative, now forces
\(\nu(H)\le0.451\).

Full details and certificate: `global/TUBE.md`, `global/verify_tube.py`.

## 4. Proof of Theorem C

### 4.1 Actual feasible families

For a physical seed with \(R>0\), \(G=6I-EE^*\) is positive
definite. Let \(g=\det G\), and let \(c_j\) denote the three
principal \(2\times2\) minors \(9-X,9-Y,9-Z\). Exact identities
for the reconstruction denominators give

\[
g\ge(R/2)^{1/3},\qquad c_j\ge g/3,\qquad |P_j|^2\ge R/36.
\tag{19}
\]

The side-matrix identities also give
\(\rho\ge g/54\), \(|\sigma|\ge\sqrt{g/54}\), and
\(|\det M_{\rm side}|=\sqrt{g/27}\). Local analytic square- and
cube-root branches can therefore be chosen. An auxiliary square-root
sign switch is exactly a permutation of the three complementary
columns or rows. It is a removable parameter convention, not an
obstruction to a feasible local arc.

Conditional on the stipulated F7 reconstruction validity, these
identities produce a genuine analytic four-seed family through each
covered matrix. Its four seed entries have independent derivatives.
This avoids substituting an unvalidated tangent vector from linearized
Hadamard equations for an actual feasible direction.

Proof and certificate: `critical/CHART_REGULARITY.md`,
`critical/verify_chart.py`.

### 4.2 The complete single-corner classification below 26

Write

\[
R_+=R(X,Y,Z,J),\qquad Q=R_-=R(X,Y,Z,-J),\qquad
\mathcal D=4XYZ-J^2.
\]

For every unit-entry seed,

\[
Q=4(\Im q(E))^2,
\qquad
\left(\det D_\theta(X,Y,Z,J)\right)^2=\mathcal D Q.
\tag{20}
\]

The following exhaustive calculations show that a physical maximal
seed with \(0<R_+=M<26\) has nonzero seed gradient.

| Stratum | Exact exclusion |
|---|---|
| \(\mathcal D>0,Q>0\) | The only positive stationary value of the unrestricted four-variable polynomial is \(1024/27>26\), at permutations of \((1,1,5,-2/3)\). It has a negative second derivative in the \(J\) direction. |
| \(\mathcal D=0,Q>0\) | The six-phase Gram Jacobian has determinant \(\Im q(E)/4\), giving the full rank-three tangent image. Positive constrained critical values are \((625\pm275\sqrt5)/2\). The smaller value is below 26, but its complementary corner has value \((-3351+1541\sqrt5)/2>26\), so it cannot be maximal in the target sublevel. |
| \(\mathcal D>0,Q=0\) | Every positive seed-stationary value is greater than 30. Smooth and singular \(Q=0\) points, including rank-two differential images, are covered by exact elimination and a Hessian argument. |
| \(\mathcal D=Q=0\), transverse | In signed real Gram coordinates, \(Q\) factors into four Cayley polynomials. On a smooth factor, stationarity reduces to a sextic with one positive readout in \((35,36)\), or a two-equal curve whose positive critical value is \(1594323/4096>26\). |
| \(\mathcal D=Q=0\), nontransverse | The Hessian of \(Q\) in the full Gram quotient has signature \((2,1,0)\). Every possible rank-two or rank-three seed image contains its radical, the tangent to the double-Cayley curve. Its stationary-value resultant has a strict negative sign on \([0,26]\). |

For the regular first row, differences of the stationary equations
factor as multiples of \((X-Y)(1-Z)\). The alternatives are
\(X=Y=Z\) or two variables equal to one. Direct substitution gives
the displayed classification. The remaining rows handle exactly the
loci on which that unrestricted coordinate argument is invalid.

The Hessian argument in the singular-Q cases and the nontransverse
intersection is useful at rank drops.
If a map satisfies \(Q\circ\Psi=f^2\) and
\(\det D\Psi=\gamma f\), then at \(f=0,\nabla Q=0\),

\[
(D\Psi)^{\mathsf T}(\operatorname{Hess}Q)D\Psi
=2\,df\otimes df.
\]

For a Lorentzian Hessian with one-dimensional radical, a rank-three
image must contain that radical. At rank two, differentiating the
determinant identity forces \(df=0\); the resulting totally isotropic
image must again contain the radical. This justifies a necessary
curve-stationarity equation without assuming that a seed image follows
one selected algebraic branch.

Detailed proofs: `global/REGULAR_CRITICAL_POINTS.md`,
`critical/CHIRALITY_CRITICAL.md`,
`critical_exceptions/QZERO_CRITICAL.md`,
`global/CAYLEY_SMOOTH.md`, and `critical/DOUBLE_ZERO.md`.
Each has its own exact verifier.

### 4.3 Two complementary active values

By F2, the four blocks of one partition give just two functions:

\[
R(A)=R(D)=R_+,\qquad R(B)=R(C)=R_-.
\tag{21}
\]

These two values need not agree. At a positive tie with
\(\mathcal D>0\), the Gram coordinates are regular and
\(u=9-p>|J|\). Write

\[
R_\pm=E\pm2JT,
\]

where

\[
\begin{aligned}
A_0&=W-u^2-9u,\quad B_0=-u^2+16u-36,\\
E&=36u^3-A_0^2+B_0J^2,\\
T&=2J^2+(u+6)W-u(u-6)(u-9).
\end{aligned}
\]

A tie is \(JT=0\). A convex balance of the two gradients reduces
exactly to the cases \(J=0\), or \(J\ne0,T=0\). Subtracting
stationarity equations reduces to equal variables or two variables
equal to one, after explicitly excluding the vanishing-coefficient
branch. The only positive candidate below 36 is

\[
X=Y=1,\quad u=\frac{26-4\sqrt6}{5},\quad
Z=7-u,\quad J^2=\frac{432\sqrt6-588}{125},
\]

with value \(K_*\). Its strict separation from 26 is the integer
comparison

\[
6\cdot233472^2-569698^2=2499237500>0.
\]

In fact each positive regular stationary candidate decreases to
second order on an explicit curve preserving the tie. At
\(\mathcal D=0\), a separate complete constrained calculation
excludes convex balance at every common value \(0<R_+=R_-\le26\).
A positive tie has \(Q>0\), so no q-zero case remains for this part.

Proofs: `mc1/complement_minimax/COMPLEMENT_MINIMAX.md` and
`critical/CHIRALITY_PAIR.md`, with their exact verifiers.

### 4.4 Assembly

The maximal provider actually supplied by F7 must use a corner in the
specified partition if the full active set is contained there.
Section 4.2 supplies strict descent if only one of the two functions
in (21) is active. Section 4.3 and strict separation of a finite convex
hull supply common descent if both are active. The analytic provider
realizes the direction. Every other corner has a strict gap at the
central point, which continuity preserves locally. Thus the full
maximum decreases, proving Theorem C.

The exact assembly and its scope are recorded in
`critical/ONE_PARTITION.md`.

## 5. Proof of Theorem D and the corrected compactness reduction

For fixed permutations and a real phase lift \(\theta\) of the
ratios to \(F_6\), the admissible horizontal phase vectors are

\[
P\theta+2\pi P\mathbb Z^{36}.
\]

The projection matrix \(P\) has entries in \((1/36)\mathbb Z\),
so this projected lattice is discrete. Its distance is attained.
There are finitely many permutation alignments, and locally each entry
has a continuous phase lift. Hence \(\nu\) is finite, attained,
and continuous. In particular F4 applies to its minimizing representative.

If a counterexample exists, minimize \(M\) on the compact set
\(K=\{H:\nu(H)\ge0.55\}\). Its minimum is below 26. F4
excludes equality \(\nu=0.55\), so the minimizer is in the
relative interior of \(K\) and is a local minimum on the full
Hadamard set. F1 makes its value strictly positive. This establishes
the handoff's proposed equivalence without relying on its
connected-component boundary argument.

For the improved gauge, let \(s=\sqrt{1-r^2}\) and
\(b=2(1-3s+2/s)\). Align each column so that its six unit ratios
to a Fourier column have real sum \(S\ge6s\). The other five
ratios have sum of modulus at most five, so every ratio \(z\)
satisfies

\[
\Re z\ge\frac{S^2-24}{2S}\ge3s-2/s.
\]

Thus each squared chord is at most \(b\), while the sum of all
36 squared chords is at most \(72(1-s)\). Converting chords to
principal angles and projecting horizontally gives, for
\(0<r<\sqrt5/3\),

\[
\nu(H)\le
\frac{\arcsin(\sqrt b/2)}{\sqrt b/2}\sqrt{72(1-s)}.
\tag{22}
\]

Rational Taylor bounds at \(r=0.09141\) prove (8). Theorem B,
Theorem C, and the compact minimization just proved imply (9).

Finally, a local minimum on a four-seed family requires zero in the
convex hull of all active gradients. Otherwise strict separation
produces common descent. Caratheodory's theorem in \(\mathbb R^4\)
gives (10). These are necessary conditions; their infeasibility on the
entire remaining region has not been established.

Proofs: `critical/COMPACTNESS_AND_DESCENT.md`, `critical/GAUGE.md`;
exact numerical gauge certificate: `critical/verify_gauge.py`.

## 6. Further global identities and the exact obstacle to shortcuts

The following statements hold for arbitrary order-six Hadamards.
For any same-row complementary blocks \(A,B\), put
\(d=|\det A|^2\), \(g=|\det B|^2\). Exact determinant and
permanent identities give

\[
|\operatorname{perm}A|^2=(2d-g)/3,\qquad
|\operatorname{perm}B|^2=(2g-d)/3,
\tag{23}
\]

so \(d/2\le g\le2d\), and either both determinants vanish
or neither does. The permanent squares over the twenty column
triples of any fixed row triple sum to 72.

Every row triple has a maximum-volume corner with

\[
d\ge54/5,\quad d/2\le g\le d,\quad
\sigma_{\min}(A)^2\ge3/5,\quad
\sigma_{\min}(B)^2\ge6/19.
\tag{24}
\]

If \(M<26\), this corner further satisfies

\[
\Re q(A)\ge891/50,
\qquad |\arg q(A)|<\arcsin\sqrt{1625/104976}<1/8.
\tag{25}
\]

For arbitrary unit-entry \(3\times3\) matrices,

\[
q(A)=2|\det A|^2+
\frac{\det A\det(A^{[2]})}{\prod A_{ij}},
\tag{26}
\]

where \(A^{[2]}\) is the entrywise square. Cauchy--Binet also gives
an exact row-triple sum \(\sum_Tq=432+L_aL_bL_c\), with
\(L_a=\sum_jH_{aj}^2/(H_{bj}H_{cj})\) and cyclic analogues.
The full sum of all 400 invariants reduces to twelve explicitly
listed balanced contractions after exact orthogonality reductions.

These are quantitative global restrictions, but a proof propagating
the selected minor phases (25) into a compatible Fourier labeling of
all entries is missing. The mixed three-row contractions do not
vanish by the elementary orthogonality equations used here. In (26),
the product phases couple row and column triples, preventing a direct
unweighted Parseval argument.

All formulas, proofs, and the twelve-term coefficient table appear in
`mc1/GLOBAL_IDENTITIES.md`, with `verify_minor_identities.py` and
`verify_global_contractions.py`.

There is also a useful exact warning about the remaining critical-point
problem. Along \(F(a,-a)\) for \(0<a\le1/10\), exactly 72
corners attain \(M=144\sin^2(3a)<26\). They occupy 18 different
\(3+3\) partitions, with all four blocks active in each. Every
cross-partition overlap type occurs. All these active values have a
common inward descent; the example is inside the confined Fourier
family. It proves that merely forbidding cross-partition ties or
assuming sparse active sets cannot finish the argument. What matters
is whether the gradients balance.

See `mc1/CROSS_PARTITION_OBSTRUCTION.md` and its standalone exact
verifier `mc1/verify_cross_partition.py`.

## 7. Complete input ledger and consistency audit

The definitions and allowed equivalences are those in the supplied
handoff, reproduced unchanged in `inputs/PROMPT.md`. The supplied code
is copied unchanged into `inputs/toolkit/` for the numerical experiments.
It is not a proof engine for any new theorem here.

| Supplied fact | Use in this package |
|---|---|
| **F1: qualitative MC1** | Used to ensure an exterior low-value minimizer has \(M>0\). No quantitative strengthening sufficient for full confinement is proved. |
| **F2: square/opposite-block identity** | Used for the global Lipschitz theorem, physical complementary invariants, and the one-partition assembly. The universal seed reflection identity and the Fourier-family identities are independently checked exactly. |
| **F3: original gauge** | Not used to establish any confinement radius. Its printed rounding implication is audited and replaced by the stronger elementary bound (22). |
| **F4: certified local lemma** | Assumed as supplied. Used in compact minimization and to improve Theorem B to \(\nu\le0.451\). Its original computational certificate is not independently reconstructed here. |
| **F5: local theory** | The definitions of the two Fourier masks are used. None of the stated local estimates or tangent dimension theorems is used as a proof input. |
| **F6: exact numerics/sampling** | Not used to prove any new result. The extremal-family formula and its low-sublevel orbit-distance sharpness are derived independently. The isolation assertion for Tao is relevant only to the consistency audit below. |
| **F7: corner reconstruction** | Its local formula-validity assertion on an open seed domain is assumed, and its coverage assertion is used only for \(0<M<26\). Denominators, branch changes, and actual local analytic arcs are justified in `CHART_REGULARITY.md`. No new global coverage theorem is claimed. |
| **F8: Cauchy--Binet** | Used for the determinant/permanent sum rules and the maximum-volume bounds. |

Other inputs are elementary compactness and finite-dimensional linear
algebra, Cauchy--Schwarz, the inverse-function theorem, convex separation,
Caratheodory's theorem, elementary trigonometric inequalities and Taylor
bounds, and exact polynomial algebra/root counting. Python integer and
rational arithmetic and SymPy's exact polynomial routines implement the
finite certificates. No external classification of order-six Hadamards,
numerical root tolerance, or unproved algebraic branch selection is an input.

Two issues in the handoff require explicit treatment:

1. **The original gauge radius is rounded across the threshold.** Its
   exact small-radius inverse at \(0.55\) lies strictly between
   \(0.0913784975325\) and \(0.0913784975326\). In particular,
   the printed F3 formula gives \(\rho(0.09138)>0.55\). The new
   gauge (22) proves the intended sufficient radius \(0.0914\),
   and even \(0.09141\), without relying on that rounding.
2. **Literal global F7 coverage conflicts with isolated Tao.** An
   analytic rank-four provider with independently variable seed entries
   cannot represent an isolated equivalence class. F6 asserts that Tao
   is isolated with \(M=243\), while literal F7 covers every
   non-Fourier matrix. The proofs here do not infer anything from this
   inconsistency. They explicitly stipulate only F7's target-region
   coverage, which remains an input. The conflict is outside the target
   sublevel but should be repaired in a final source theorem.

## 8. What remains to finish global confinement

The remaining task is to rule out an exterior local minimum satisfying
(9)–(10). Three concrete ways to close it would be:

- A theorem showing common descent for every full active set spanning
  several partitions in the target region.
- An exact elimination or certified interval cover of the corresponding
  systems of at most five active gradients, with all remaining corners
  constrained below the common maximum.
- A quantitative MC1 estimate that turns the global minor constraints
  into \(\delta(H,\mathcal F)\le1/40\), \(d_F(H)\le0.09141\),
  or directly \(\nu(H)\le0.55\).

For a future interval cover, `COMPACTNESS_AND_DESCENT.md` supplies a
rigorous cell acceptance criterion: each corner is certified strictly
inactive throughout the box or has strictly negative derivative in one
fixed direction, using an actual analytic provider on a neighborhood
of the box. The denominator bounds (19) help away from \(R=0\).
No such complete cover is delivered here.

The floating-point pilot used 30 deterministic starts. It found twelve
near-Fourier endpoints with tiny computed \(M\), and higher-valued
stationary candidates. These observations are evidence only, not a
classification or an exclusion certificate. See `STATUS.md` and
`exploration_fourier_agent/RESULTS.md` for the numerical record and limits.

## 9. Reproduction

Install `requirements.txt` and run `python3 verify_all.py` from this
directory. The runner executes every exact certificate, records software
versions and output in `verification.log`, and exits nonzero if any
certificate fails. Individual verifiers can also be run directly with
`python3 path/to/verify_script.py`.

`README.md` maps the files. `STATUS.md` separates hand arguments, exact
finite computations, assumed supplied certificates, and numerical evidence.
`INPUTS.md` records provenance and SHA-256 hashes of the supplied material.
`SHA256SUMS` inventories the final package contents.
