# Quantitative Fourier rigidity and degenerate maximal-corner exclusion

**Scope:** every actual complex Hadamard matrix of order six. No reconstruction,
side matching, strict-corner classification, quartet completion, or numerical
cover is assumed. This is an analytical reduction, not a proof that four MUBs do
not exist. The finite rational certificates are included and independently
reconstructed by `verify.py`.

## Results

Let `M(H)` be the largest of the repository's 400 positional corner values R.
Write a dephased matrix close to the standard Fourier matrix as

\[
 H_{ij}=\zeta_6^{ij}e^{i\theta_{ij}},\qquad
 \theta_{0j}=\theta_{i0}=0,\qquad
 t=\max_{1\le i,j\le5}|\theta_{ij}|.
\]

We prove the following.

**A. Quantitative local rigidity.**
\[
 t\le \frac{\sqrt{M(H)}}{18}+\frac{389}{9}t^2. \tag{A}
\]
In particular, `t <= 1/100` implies `M(H) >= 100 t^2`. At `t <= 1/48`,
`t <= (24/43) sqrt(M(H))`.

**B. Only two Fourier corner classes can maximize locally.** If
`0 < t <= 1/256`, four of the six reference corner classes, accounting for 220
of the 400 positional corners, cannot maximize. Every such corner satisfies
\[
 R_c(H)\le \left(\frac{1112}{1915}\right)^2 M(H)
             <\frac{17}{50}M(H). \tag{B}
\]
The two remaining classes have representatives `(4,5,0,3)` and `(1,2,2,4)`
in units of `pi/3`.

**C. A seed-only exclusion, global in the other two seeds.** Suppose a maximal
3-by-3 corner contains two rows whose three-column restriction dephases to
\[
 (1,1,1),\qquad (1,e^{ia},e^{ib}),\qquad
 h=\max(|a|,|b|)\le2^{-14}.
\]
Then H is equivalent to F6. The same holds for a 3-by-2 subblock by
transposition. These tubes therefore have **empty intersection with strict
physical D0**, where the maximal corner has R>0. There is no restriction on
the third row's seeds, and no separate small-R premise.

B is a **carrier-neighborhood** theorem, not permission to discard four
arbitrary seed neighborhoods without a seed-to-carrier argument. C supplies
such an argument for the rank-one-pair class, with an explicit radius.

## 1. Universal corner identities

A raw Hadamard has unit entries and `HH*=6I`. For a dephased corner
\[
 E=\begin{pmatrix}1&1&1\\1&a&b\\1&c&d\end{pmatrix},\qquad G=6I-EE^*,
\]
write `s=G21`, `t_side=G31`, `r=G32` and
\[
\begin{aligned}
 X&=|s|^2,&Y&=|t_{\rm side}|^2,&Z&=|r|^2,\\
 p&=X+Y+Z,&J&=2\operatorname{Re}(sr\overline{t_{\rm side}}),&
 W&=XY+XZ+YZ-XYZ,\\
 g&=27-3p+J,&\eta&=9-p+J,\\
 \chi&=W-(p-9)(p-18)+(p-15)J,&R&=4g^2\eta-\chi^2.
\end{aligned}
\]
Here `g=det G`. The phase-distance variable t below is not `t_side`.

For three phase columns `(1,x_j,y_j)^T`, set `z_j=y_j/x_j` and
\[
 A_j=(x_j,-x_j^{-1},0,0,-z_j,z_j^{-1})^T,\quad
 B_j=(0,0,y_j,-y_j^{-1},z_j,-z_j^{-1})^T,
\]
\[
 D=\det[A_0\ B_0\ A_1\ B_1\ A_2\ B_2],\qquad d=-iD.
\]
D is purely imaginary. In dephased variables `x=(1,a,b)`, `y=(1,c,d)` it has
48 Laurent terms with coefficients +1 or -1. Formal conjugation inverts the
phase variables. Direct Laurent arithmetic gives
\[
 R(p,-J,W)=-D^2.
\]
If C is a corner of an actual Hadamard and C' uses the same rows and the
complementary columns, then `CC*+C'C'^*=6I`, which changes the sign of J.
Consequently
\[
 R_C(H)=d_{C'}(H)^2\ge0,\qquad
 \sqrt{M(H)}=\max_C|d_C(H)|. \tag{1.1}
\]
These include singular corners and R=0. They are the existing
`ProvenResults/CornerBounds/PROOF.md` identities, independently reconstructed
by the present verifier rather than taken from stored outputs.

### An entry-phase perturbation constant

A seed monomial with exponents `(A,B,C,D)` has exponent matrix in the nine
undephased corner entries
\[
 \begin{pmatrix}
 A+B+C+D&-A-C&-B-D\\
 -A-B&A&B\\
 -C-D&C&D
 \end{pmatrix}. \tag{1.2}
\]
The sum of the absolute values of these exponents over all 48 monomials is
exactly 432. If two physical Hadamards are aligned in a common gauge with
entrywise phase discrepancy at most alpha, the exponential difference bound
and (1.1) give
\[
 |d_C(H)-d_C(K)|\le432\alpha,
\]
\[
 |\sqrt{R_C(H)}-\sqrt{R_C(K)}|\le432\alpha,\qquad
 |\sqrt{M(H)}-\sqrt{M(K)}|\le432\alpha. \tag{1.3}
\]
The R comparison uses the complementary corner. This is a phase-distance
estimate, not an entrywise-chord or projector-distance estimate.

## 2. Quantitative local rigidity

### 2.1 A map detecting all dephased directions

Use the 25 variables `theta_ij`, `i,j=1,...,5`, in row-major order. For every
`0 <= r < s <= 5`, define
\[
 q_{rs}(\theta)=\sum_{j=0}^5\zeta_6^{(r-s)j}
                  e^{i(\theta_{rj}-\theta_{sj})}.
\]
Take its real part divided by sqrt(3) and its imaginary part. These are 30
real functions which vanish on actual Hadamards. Append the 400 signed
functions d_C. All 430 functions vanish at F6. Their Jacobian A is rational:
cos(k*pi/3) and sin(k*pi/3)/sqrt(3) are rational. For a determinant monomial
`c exp(i phi_0) exp(i ell.theta)`, the derivative of -iD is
`c exp(i phi_0) ell`; imaginary parts cancel. The verifier checks all these
cancellations and zero constant terms.

The first 30 rows, denoted T, have rank 21. Their kernel consists of these
5-by-5 phase arrays, with independent real x,y,z,w:
\[
 \begin{pmatrix}
 x+z&-y+w&x&z&x-y+w\\
 y&0&y&0&y\\
 z&-y+w&0&z&-y+w\\
 x&0&x&0&x\\
 y+z&-y+w&y&z&w
 \end{pmatrix}. \tag{2.1}
\]
Four corner derivatives restricted to this kernel give
\[
 \begin{pmatrix}
 12&12&0&0\\-24&12&0&0\\0&-12&12&12\\0&-12&-24&12
 \end{pmatrix},\qquad \det=186624. \tag{2.2}
\]
Their D blocks are `(015;013)`, `(012;013)`, `(013;015)`, `(013;012)`, with
zero-based row and column indices. A D block controls R on its column
complement. Thus the full A has rank 25. The quantitative estimate below
uses a sparse rational inverse with better constants than just these four
rows give.

### 2.2 Uniform nonlinear remainder bounds

For every real u,
\[
 |e^{iu}-1-iu|\le u^2/2. \tag{2.3}
\]
Let `e_ij` be the coordinate vector, with `e_0j=e_i0=0`. For an orthogonality
row put `ell_j=e_rj-e_sj`. Valid bounds in
\[
 |f_k(\theta)-(A\theta)_k|\le b_k t^2 \tag{2.4}
\]
are
\[
 b_{rs,\operatorname{Re}/\sqrt3}=\frac3{10}\sum_j\|\ell_j\|_1^2,
 \qquad b_{rs,\operatorname{Im}}=\frac12\sum_j\|\ell_j\|_1^2.
\]
The first uses `1/(2 sqrt(3)) < 3/10`. For a determinant, express its 48
monomials in the 25 actual phase coordinates; if their exponent vectors
are ell_n, use
\[
 b_{D_C}=\frac12\sum_{n=1}^{48}\|\ell_n\|_1^2. \tag{2.5}
\]
These bounds are global bounds on explicit exponential polynomials; no
radius smallness or reconstruction regularity is required.

### 2.3 An exact rational inverse

`certificates/local_inverse.json` supplies 25 sparse rational vectors L_i
such that
\[
 L_iA=e_i^T,\qquad
 \sum_k|L_{ik}|b_k\le389/9,\qquad
 \sum_{k\text{ a determinant row}}|L_{ik}|\le1/18. \tag{2.6}
\]
The verifier rebuilds D, all exponent vectors, A, and b before checking these
identities and inequalities. A numerical linear program was used only to
discover sparsity patterns; its numerical answers and optimality claims are
not used as proof, and the replay requires no optimizer.

For a physical H, the orthogonality functions vanish and `|d_C|<=sqrt(M)`.
Equations (2.4)--(2.6) imply, coordinate by coordinate,
\[
 |\theta_i|\le\sqrt M/18+(389/9)t^2.
\]
Taking the maximum proves A.

### 2.4 Consequences

For `t<=9/389`, rearrangement gives
\[
 \sqrt{M(H)}\ge18t-778t^2. \tag{2.7}
\]
At `t<=1/100` this is at least 10t, proving
\[
 M(H)\ge100t^2. \tag{2.8}
\]
At `t<=1/48`,
\[
 (1-389/432)t\le\sqrt M/18,\qquad t\le(24/43)\sqrt M. \tag{2.9}
\]
Also M=0 and `t<9/389` force H=F6 in this gauge. This is an explicit local
strict-corner-existence theorem, not the missing global classification.

## 3. Four locally inactive corner classes

A determinant is called inactive when its derivative annihilates ker T.
There are exactly 220 inactive and 180 active determinants. For every
inactive derivative row A_C the second certificate supplies rational
lambda_C such that
\[
 A_C=\lambda_CT,\qquad
 b_{D_C}+\sum_{k=1}^{30}|\lambda_{Ck}|b_k\le2224. \tag{3.1}
\]
On a physical H, orthogonality linear terms are negatives of their Taylor
remainders. Thus
\[
 |d_C(H)|\le2224t^2 \quad\text{for every inactive C}. \tag{3.2}
\]
This uses actual orthogonality, and does not hold for arbitrary phase arrays.

For the associated **R owners**, obtained by complementing the determinant
columns, the exact census is:

| Seed representative in pi/3 units | Positional R corners | Type |
|---|---:|---|
| `(4,5,0,3)` | 144 | Active |
| `(1,2,2,4)` | 36 | Active |
| `(0,2,3,0)` | 72 | Inactive |
| `(0,2,3,2)` | 72 | Inactive |
| `(2,4,4,2)` | 28 | Inactive |
| `(0,0,2,4)` | 48 | Inactive |

Classes allow row and column permutations, dephasing, and transposition.
The verifier enumerates all 400 corners, complements the columns, and
checks each sixth-root seed against these exact finite orbits.

If the R owner of an inactive determinant were maximal, A and (3.2) would
imply
\[
 t\le(2224/18)t^2+(389/9)t^2=(1501/9)t^2.
\]
For nonzero t this requires `t>=9/1501`. Thus no inactive corner maximizes
when
\[
 0<t<9/1501. \tag{3.3}
\]
At the convenient closed radius `t<=1/256`, equations (2.7), (3.2) give
\[
 \frac{\sqrt{R_C(H)}}{\sqrt{M(H)}}
 \le\frac{2224t}{18-778t}
 \le\frac{2224}{18\cdot256-778}=\frac{1112}{1915}.
\]
Squaring proves B. At t=0 all R values vanish and all corners tie; the
endpoint is deliberately not called an exclusion.

The mechanism is that some active R grows at quadratic order in every
physical deformation, whereas inactive R is at most quartic. The constants
make the argument uniform even along singular deformation paths. A seed
near a degenerate F6 corner does not itself establish carrier closeness;
that missing implication must not be assumed when applying this result.

## 4. Linear stability of a nearly proportional 2-by-3 block

We next prove a separate seed-only lifting theorem with **linear** error,
rather than the square-root error of the retained near-F3-block argument.

### 4.1 Three unit phases

**Lemma.** If `|u|=|v|=1` and `|1+u+v|<=e<=1/100`, then, after possibly
exchanging u,v,
\[
 |u-\omega|\le(6/5)e,\qquad |v-\omega^2|\le(6/5)e,
 \qquad\omega=e^{2\pi i/3}. \tag{4.1}
\]

**Proof.** The reverse triangle inequality gives `||1+u|-1|<=e`. Therefore
\[
 |(u-\omega)(u-\omega^2)|=|u^2+u+1|
 =\big||1+u|^2-1\big|\le(2+e)e.
\]
The farther root is at distance at least sqrt(3)/2. Using sqrt(3)>17/10,
the nearer distance is less than `(12/5)e`. The farther distance is now at
least `sqrt(3)-(12/5)e`, so the nearer distance is bounded by
\[
 \frac{(2+e)e}{\sqrt3-(12/5)e}<\frac65e.
\]
The same applies to v. Both cannot be assigned to the same root, since that
would imply `sqrt(3)<=e+(12/5)e`. All numerical inequalities are checked
rationally by the verifier. The argument includes e=0. QED.

### 4.2 Split the remaining rows into Fourier triples

Suppose two rows on three columns dephase as `(1,1,1)` and
`(1,exp(ia),exp(ib))`, with `h=max(|a|,|b|)<=1/1000`. Move them to the first
two rows and first three columns, and fully dephase H. Its first row is all
ones. Write its second row as x and put
\[
 \sigma=(1,1,1,-1,-1,-1).
\]
Orthogonality to the first row gives the exact identity
\[
 \sum_{j=3}^5|x_j+1|^2=\sum_{j=0}^2|x_j-1|^2\le2h^2,
 \qquad\|x-\sigma\|_2\le2h. \tag{4.2}
\]
For another row y, write its left and right triples as y_L,y_R. Orthogonality
to the first two rows implies
\[
 \sum y_L=-\sum y_R,\qquad
 2\left|\sum y_L\right|
 =\left|\sum_jy_j(\sigma_j-\overline{x_j})\right|\le2\sqrt6h.
\]
Thus both triple sums have modulus at most sqrt(6)h. Normalize each triple
by its first entry and apply (4.1). Each triple is within 3h entrywise of a
phase multiple of one of
\[
 u_1=(1,\omega,\omega^2),\qquad u_2=(1,\omega^2,\omega).
\]
The first entry is exact, so the Euclidean error in each triple is at most
`3 sqrt(2)h`. The left-triple phase is one, by full dephasing. Write the
right-triple phase as p.

### 4.3 Orientations and phases pair correctly

Exactly two of the four remaining rows have each left orientation. Indeed,
column orthogonality compares zero with
\[
 2+n\omega+(4-n)\omega^2=i\sqrt3(n-2)
\]
up to error 13h. Therefore the integer n must be two.

An inner product of actual triples differs from the inner product of their
reference triples by at most
\[
 2\sqrt3\,(3\sqrt2h)=6\sqrt6h<15h. \tag{4.3}
\]
Equal orientations have reference inner-product modulus three; distinct
orientations have inner product zero. Full-row orthogonality forces two
rows to have the same left orientation exactly when they have the same
right orientation. Otherwise a quantity of modulus at least 3-15h would
have to cancel one of modulus at most 15h.

Swap the last two columns of the right triple if needed; then left and right
labels agree. For rows y,z with the same left orientation, orthogonality
also gives
\[
 \|y_R+z_R\|_2^2=\|y_L-z_L\|_2^2\le72h^2. \tag{4.4}
\]
If their right first entries are p,p', then `|p+p'|<=6 sqrt(2)h`. Choose the
unit phase p0 halfway along the shorter arc from p to -p'. For a chord of
length at most one,
\[
 |p-p_0|,\ |p'+p_0|\le\frac{3}{4\sqrt2}|p+p'|\le\frac92h. \tag{4.5}
\]
Indeed the half-angle ratio is `1/(2 cos(Delta/4))`, at most
`1/sqrt(2+sqrt(3)) < 3/(4 sqrt(2))`. Do this for both orientation pairs.

### 4.4 Construct an exact nearby Fourier carrier

After ordering rows the resulting reference is
\[
 K=\begin{pmatrix}F&PF\\F&-PF\end{pmatrix},\qquad
 F=(\omega^{ij})_{i,j=0}^2,\quad P=\operatorname{diag}(1,p_0,q_0).
 \tag{4.6}
\]
This is an exact Hadamard in the transpose Fourier family. Each left triple
has entry error at most 3h, each right triple at most
`3h+(9/2)h=(15/2)h`, and the first pair at most 2h. Hence
\[
 \max_{ij}|H_{ij}-K_{ij}|\le\frac{15}{2}h<8h. \tag{4.7}
\]
Both H,K in this frame are dephased. Their compatible entry phase errors obey
\[
 \max_{ij}|\arg(H_{ij}/K_{ij})|
 \le2\arcsin(4h)\le\frac{81}{10}h. \tag{4.8}
\]
Use `arcsin x<=x/sqrt(1-x^2)` and `h<=1/1000`. For h=0 all steps are exact,
so H itself is in the Fourier family.

This linear stability theorem applies across the entire near-rank-one
2-by-3 tube: no condition on the third row of a selected corner, no
reconstruction, and no branch choice.

## 5. A cubic cap on the corner's square root R

Let E be a corner containing the two rows of Section 4, and B its column
complement on the same rows. Then `G=BB*`. The first two rows of B are 1
and x_R. Put `e=x_R+1`; by (4.2), `||e||_2<=sqrt(2)h`. Add the first row to
the second inside the determinant and use the row-norm determinant bound:
\[
 g=|\det B|^2\le(\sqrt3\,\sqrt2h\,\sqrt3)^2=18h^2. \tag{5.1}
\]
Let y be the third row of B. Write
\[
 s=\sum x_R,\qquad t_{\rm side}=\sum y,\qquad
 r=\sum y\overline{x_R},\qquad
 \Pi=st_{\rm side}-\sum x_Ry.
\]
For arbitrary three pairs of unit phases there is the identity
\[
 9-|s|^2-|t_{\rm side}|^2-|r|^2
 +2\operatorname{Re}(sr\overline{t_{\rm side}})=|\Pi|^2. \tag{5.2}
\]
Expansion in six independent phase variables proves it; the verifier checks
that Laurent identity exactly. Its left side is the corner invariant eta.

From Section 4, `|t_side|<=sqrt(6)h`. Also `|s+1|<=2+sqrt(6)h` and
`|sum e y|<=sqrt(6)h`. Since
\[
 \Pi=(s+1)t_{\rm side}-\sum ey,
\]
we obtain, for h<=1/1000,
\[
 \sqrt\eta=|\Pi|\le(3+\sqrt6h)\sqrt6h<8h.
\]
Using `R=4g^2 eta-chi^2` and physical nonnegativity,
\[
 \sqrt{R_E(H)}\le2g\sqrt\eta\le288h^3. \tag{5.3}
\]
This is a sixth-order cap on R_E, not a quadratic Taylor bound. If E is
maximal, it gives
\[
 \sqrt{M(H)}\le288h^3. \tag{5.4}
\]

## 6. The exact Fourier maximum and a phase-distance bound

We use the repository's exact Fourier calculation, with an independent
algebraic replay and the following phase-distance proof. Define
\[
 N(z,w)=\begin{pmatrix}F&F\\FZ&-FZ\end{pmatrix},\qquad
 Z=\operatorname{diag}(1,z,w),\qquad z=e^{i\alpha},\quad w=e^{i\beta}.
\]
Put `X=2 beta-alpha`, `Y=alpha+beta`, `T=beta-2 alpha=X-Y`. Then
\[
 M(N)=36(|\sin X|+|\sin Y|+|\sin T|)^2. \tag{6.1}
\]
The exact corner multiset is zero 256 times, and each of
`36(sin X+s sin Y+t sin T)^2`, `s,t in {-1,1}`, 36 times. Maximizing the
signed sums proves (6.1). The verifier derives all 400 values both directly
from R and from complementary D squares, in exact Laurent arithmetic over
the sixth-root coefficient ring.

The zero set is precisely the twelve pairs
\[
 \alpha=a\pi/3,\qquad\beta=b\pi/3,\qquad
 a,b\in\{0,\ldots,5\},\qquad a+b\equiv0\pmod3. \tag{6.2}
\]
The replay supplies exact row/column permutations to F6 at each point.

For `M(N)<=36`, there is an F6 reference and row/column phase gauges in
which the entry phase discrepancy is bounded by
\[
 \beta_{\rm err}\le\frac\pi{144}\sqrt{M(N)}. \tag{6.3}
\]
To see this, choose nearest multiples of pi for X,Y and write their errors
as e_X,e_Y in [-pi/2,pi/2]. Put
`S=|sin X|+|sin Y|+|sin T|=sqrt(M)/6<=1`. Then
`|e_X|+|e_Y|<=pi/2`, so also `|e_X-e_Y|<=pi/2`. On this interval use
`|u|<=(pi/2)|sin u|`. Parameter deviations from a grid reference are
\[
 \delta_\alpha=(2e_Y-e_X)/3,\qquad
 \delta_\beta=(e_X+e_Y)/3.
\]
Each of delta_alpha, delta_beta, and their difference has magnitude at most
pi*S/6. For example `2e_Y-e_X=e_Y-(e_X-e_Y)`; the corresponding sine terms
are included in S. Thus `{0,delta_alpha,delta_beta}` has span at most pi*S/6.
Shift its midpoint with a bottom-row phase, then use half-phases on the two
columns of each Fourier phase class. The remaining entry phases are plus
or minus half a centered phase, and therefore at most one quarter of the
span: pi*sqrt(M)/144.

The same entrywise phase result holds on transposition by swapping row and
column gauges. No transpose invariance of a maximum-column projector metric
is assumed.

## 7. Seed-only maximal-corner exclusion

Assume E is maximal and the selected two-row restriction has
`h=max(|a|,|b|)<=h0=2^-14`. First take h>0. Section 4 constructs an exact
Fourier or transpose reference K with common-gauge entry phase error
`alpha_err <= (81/10)h`. By (1.3), (5.4),
\[
 \sqrt{M(K)}\le288h^3+432\frac{81}{10}h<6. \tag{7.1}
\]
Apply (6.3). Relative to a monomial F6 reference, H has entry phase error at
most alpha_err+beta_err. Permute to standard F6 and fully dephase. Each
new entry error is a sum of four old entry errors, so there is a dephased
F6 chart satisfying
\[
\begin{aligned}
 t&\le4(\alpha_{\rm err}+\beta_{\rm err})\\
  &\le4(1+3\pi)\frac{81}{10}h+8\pi h^3<\frac1{48}. \tag{7.2}
\end{aligned}
\]
The last step is a strict rational inequality after inserting h=2^-14 and
pi<22/7, and is checked by the verifier.

Now use the local bound (2.9) with the actual small maximum (5.4), rather
than the larger preliminary reference estimate:
\[
 t\le\frac{24}{43}\sqrt{M(H)}\le\frac{6912}{43}h^3. \tag{7.3}
\]
Return to the original seed cross ratios exp(ia),exp(ib). Row and column
phases do not change cross ratios, and permutations just identify their
positions. Each is within angular distance 4t of its corresponding F6
cross ratio. The latter is a sixth root of unity. Since
\[
 h+4t<\pi/3,
\]
both reference ratios must be one: the angular distance from one to any
other sixth root is at least pi/3. Thus
\[
 h\le4t\le\frac{27648}{43}h^3.
\]
For positive h<=2^-14 this contradicts `(27648/43)h^2<1`.

At h=0, Section 4 yields an exact Fourier carrier. Equation (5.3) gives
R_E=0, maximality gives M(H)=0, and (6.2) yields H equivalent to F6. This
proves C for 2-by-3 blocks. Apply the same proof to the transposed H,E to
obtain the 3-by-2 version, using R's transpose invariance. QED.

The conclusion is a **strict-D0 exclusion**, not just a quartet-extension
exclusion. It quantifies over all physical completions; neither sheet,
side matching, nor any MUB-exclusion theorem is needed.


### 7.1 A larger quartet-free tube using the retained F6 certificate

There is a useful integration corollary with a larger radius. **Assume the
retained F6 maximum-column projector exclusion radius 1/30**, as proved in
`ProvenResults/FourierNeighbourhood/ClusterTube/EXPANDED.md`. Then every
physical maximal corner satisfying the same near-rank-one condition with

\[
 h\le\frac1{2560}
\]

is quartet-free. This corollary, unlike A--C, uses that retained computer-assisted
MUB exclusion theorem; its 7,485,187-node cover is not replayed in this package.

Indeed Section 4 gives normalized-column Euclidean error at most 8h from K,
and (1.3), (5.4), (6.3) apply since
`288h^3+432(81/10)h<6`. The projector triangle inequality gives

\[
 d_{F_6}(H)\le8h+\frac\pi{144}\sqrt{M(K)}
 \le\left(8+\frac{243\pi}{10}\right)h+2\pi h^3<\frac1{30}. \tag{7.4}
\]

The last bound is checked with h=1/2560 and pi<22/7. The entrywise bounds
also control normalized rows, so the same proof covers transposed blocks
without assuming that the projector metric itself is transpose invariant.
This reaches a larger seed tube than C, at the cost of using the retained
quartet-exclusion certificate. It does not show that these larger tubes
are outside D0.

A conservative exact box half-width is **2^-14 turns**, because
`2*pi*2^-14<1/2560`. `prune.quartet_exclusion_prune` implements this variant
and explicitly reports the extra F6-certificate dependency.

## 8. Exact whole-box implementation

`prune.maximal_corner_prune` accepts four closed rational intervals for the
seed phases **in turns**, not radians. It tests each row pair and each anchor
column, and then transposes the corner and repeats. Both normalized
row-ratio phase intervals must lie within 2^-17 turns of an integer.
Since `2*pi*2^-17 < 2^-14`, this conservatively implements C.

A positive result proves that every physical completion with this corner
maximal is equivalent to F6; the entire box is outside strict physical D0.
A `None` return means only that this predicate did not prove an exclusion.
Exact integer, rational-string, and `Fraction` inputs are accepted. Binary
floats are rejected to avoid silently shrinking a box.

For `[[1,1,1],[1,a,b],[1,c,d]]`, a whole box passes whenever

```
arg(a)/(2*pi), arg(b)/(2*pi) in [-2^-17,2^-17],
arg(c)/(2*pi), arg(d)/(2*pi) arbitrary.
```

The other row pairs and column pairs are also tested. The implementation
propagates the full intervals of the cross-ratio phases, not their centers.
Unwrapped intervals must be supplied in a consistent lift; a wrap-around
box may instead be split.

The retained maximal Fourier curve near `(4,5,0,3)` is an explicit negative
control: the new predicate does not remove it. This is not an assertion of
a nonexistent uniform positive R floor.

## 9. Integration and remaining work

These results belong upstream as a new proven-result module. No campaign,
branch layer, leaf database, or original archive is modified by this package.

The immediately usable addition is the exact near-rank-one whole-box prune.
The analytical radius 2^-14 exceeds the retained rank-one-pair radius 2^-43
in `EXTENDED_ANALYTIC_RADII.md` by **2^29**. The conclusion is stronger and
the other two seeds are unrestricted. The conservative turns implementation
loses a small factor relative to the analytical radius. This is a comparison
of mathematical radii, not a runtime or cell-count claim.

The four-inactive-class theorem reduces the six-class analysis **where
carrier closeness to F6 is established**. Only `(4,5,0,3)` and `(1,2,2,4)` can
be maximal reference types inside that neighborhood. It does not implicitly
supply arbitrary seed-to-carrier bounds for the other three inactive classes.

The local bound M>=100t^2 gives explicit conditioning and excludes any
additional zero-M Hadamard in the stated chart. It does not show that all
globally small-M carriers lie in that chart. That remains a separate global
step; compactness and a local inverse do not supply a numerical global
cutoff on their own.

No full cover was run here, and no production-cell savings count is claimed.
Reconstruction/matching/coverage assumptions not addressed by these theorems
remain as in the supplied repository. A global no-four-MUB theorem is not
claimed.

## 10. Verification boundary

Run

```
python verify.py --output verification.json
```

The replay checks: the universal Laurent identities; the 432 phase constant;
the independently rebuilt local Jacobian and rational inverse; all 220
inactive-corner certificates and six R-owner classes; the full Fourier-family
400-corner census; all twelve F6 grid equivalences; rational constants; and
whole-box predicate controls. The finite algebra is exact. The universal
analytic implications are the inequalities proved in this document, not
sample extrapolations.

Only Python and SymPy are needed. The included JSON coefficient arrays are
part of the proof and must accompany the verifier.
