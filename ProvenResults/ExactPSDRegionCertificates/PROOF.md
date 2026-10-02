# Exact whole-region signed-corner certificates

## 0. Result, scope and proof status

This package proves **14 whole-region strict-D0 exclusions**, with two signed
2-by-2 principal-minor witnesses per region. Their union covers all **7,553**
records selected by `R.startswith('[+/-')` from the supplied
`shoulder/cluster_driver_round1/unresolved_pairing_leaves.jsonl.gz`. The file
has 14,164 records in total. Selection by this string is only a way of naming
the population: none of the stored numerical R enclosures authorizes acceptance.

Every selected angular leaf has, independently,

\[
R\leq\frac{24557803815474091518089}{37778931862957161709568}<\frac23.
\]

The 14 exclusion regions are **rational Cayley-coordinate boxes intersected
with `0 < R <= 1`**, not their unrestricted angular hulls. They have positive
width in all four seed coordinates. There is no additional subdivision of
the seed regions and no subdivision of the radical interval. Checking
membership of the already supplied leaves is a separate coverage operation.

The certificate is a polynomial identity containing `tau^2-R` explicitly,
with nonnegative multipliers certified by exact whole-box second-order Taylor
bounds and degree-two Bernstein coefficients. It is **not** an assertion
that the four-seed polynomial has a globally nonnegative SOS decomposition,
and it is **not interval-free**: it replaces recursive interval subdivision
by a single exact rational whole-region enclosure for each coefficient.

The new certificate theorem uses the reconstruction and fixed-corner
matching theorems already used in SignedCornerPSDPrune. Their exact scope is
listed in Section 8; source proofs and their ClassificationPaper imports
are pinned under `upstream_text/`. This package does not independently
formalize those reconstruction theorems or certify their external paper
imports. It does independently regenerate the complementary-corner square,
the six determinant coefficients, 31 moment identities, and the denominator
norm identities with rational polynomial arithmetic.

**The residual patches near `(2,4,4,2)` and `(4,5,0,3)` are not closed by this
package.** The four representative cases in the supplied cases file were
investigated but did not yield successful whole-box certificates. No claim
about the remaining 6,611 frontier records follows from this result.

## 1. Exact region and witness data

For region l, `certificates/region_l.json` gives four rational unit anchors
`zeta_i = x_i + i y_i`, four positive rational Cayley radii `rho_i`, and a
rational angular hull used only for coverage. The actual phase region is

\[
 a_i=\zeta_i\frac{1+i u_i}{1-i u_i},\qquad -\rho_i\leq u_i\leq\rho_i,
 \qquad 0<R(a_1,a_2,a_3,a_4)\leq1.
\tag{1}
\]

The rational anchors satisfy `x_i^2+y_i^2=1`, checked as integer identities.
A polynomial formulation of (1) uses the eight equations

\[
\begin{aligned}
(1+u_i^2)\Re a_i&=x_i(1-u_i^2)-2y_i u_i,\\
(1+u_i^2)\Im a_i&=y_i(1-u_i^2)+2x_i u_i.
\end{aligned}
\tag{2}
\]

They imply all four unit-circle equations, since `1+u_i^2>0`. Unit-circle
equations can also be retained explicitly. The box generators are
`rho_i-u_i`, `rho_i+u_i`. The radical variables satisfy

\[
e=\tau^2-R=0,\qquad \tau\geq0,\qquad g_c=1-R\geq0.
\tag{3}
\]

We never replace (3) by an independent square-root interval assumption.

A witness records `tr`, `sg`, `j`, `eps`, `k`:

* `tr=0`: horizontal side; `tr=1`: transpose the seed, swapping b and c.
* `sg` is the side-constructor sign sigma. `eps` selects `tau G + eps N`.
* `j=0,1,2` selects known-column pairs `(0,1),(0,2),(1,2)` respectively.
* `k=0,1,2` selects the lower entries s,t,r, hence principal row pairs
  `(0,1),(0,2),(1,2)` respectively. All indices here are zero-based.

All numerical literals in acceptance data are integers or rational strings.
The polynomial coefficients are specified by the fixed arithmetic circuits
in `exact_core.py`, the witness indices, and the rational region data. This
is an exact circuit representation, not a list of decimal approximations
or an unspecified eliminant.

## 2. Why an actual strict-D0 completion gives PSD pencils

Let H be an actual complex Hadamard, with phase entries and `HH*=6I`. Dephase
the selected corner to

\[
 E=\begin{pmatrix}1&1&1\\1&a&b\\1&c&d\end{pmatrix}.
\]

Normalize the remaining three columns in these rows to
`v_l=(1,x_l,y_l)^T`. Their phases have modulus one. Orthogonality gives

\[
G=\sum_\ell v_\ell v_\ell^*
 =\begin{pmatrix}3&\bar s&\bar t\\s&3&\bar r\\t&r&3\end{pmatrix},
\quad s=-1-a-b,\quad t=-1-c-d,\quad r=-1-c\bar a-d\bar b.
\tag{4}
\]

For each chosen known pair of columns let
`f_l=i det L(E_j,E_k,v_l)`, using the six-by-six determinant in the source
proof. The Laurent determinant is purely imaginary on phase inputs, so
`f_l` is real. Its negative square is the invariant of the complementary
same-row corner. To see the complement step, note that complementary triples
have opposite row correlations, so X,Y,Z,W are unchanged and J changes
sign. The exact identity is `R(p,-J,W)=-det(L)^2`.

In strict D0 the chosen corner has

\[
 0<R(E)=\max_{\text{400 positional corners }C}R(C).
\tag{5}
\]

Thus `f_l^2 <= R(E)`. With the **same** tau in both orientations,

\[
\tau G\pm N_{jk}
 =\sum_\ell(\tau\pm f_\ell)v_\ell v_\ell^*\succeq0,
\qquad N_{jk}=\sum_\ell f_\ell v_\ell v_\ell^*.
\tag{6}
\]

This argument does not use balance, a completed MUB triple, quartet
orthogonality, a matrix tube, or an approximation to individual side roots.
It is a necessary condition for the framed Hadamard completion itself.

All diagonal entries of N equal `S_0=sum f_l`. Its three lower entries are
`S_x=sum x_l f_l`, `S_y=sum y_l f_l`, `S_z=sum (y_l/x_l) f_l`.
Consequently a selected 2-by-2 principal minor is

\[
 m(\tau)=[3\tau+\epsilon S_0]^2
       -|\tau G_k+\epsilon S_k|^2,
 \qquad \epsilon\in\{-1,1\}.
\tag{7}
\]

The exact side formulas give `S_k=A_k+sigma*tau*B_k`. Therefore (7) is
quadratic in tau, with seed-dependent rational coefficients. Equality with
the actual side sums is required only on physical points satisfying (3),
not at arbitrary values of the formal radical extension.

## 3. Denominators and the polynomial extension

Use the source conventions

\[
\begin{gathered}
X=|s|^2,\ Y=|t|^2,\ Z=|r|^2,\ p=X+Y+Z,\ J=2\Re(sr\bar t),\\
W=XY+XZ+YZ-XYZ,\quad g=27-3p+J,\quad\eta=9-p+J,\\
\chi=W-(p-9)(p-18)+(p-15)J,\qquad R=4g^2\eta-\chi^2.
\end{gathered}
\]

Define

\[
\begin{aligned}
P_0&=rs^2+\bar r t^2+(3-Z)st,\\
P_1&=t\bar s^2+r^2\bar t+(3-Y)r\bar s,\\
P_2&=s\bar t^2+\bar r^2\bar s+(3-X)\bar r\bar t,
\end{aligned}
\quad (k_0,k_1,k_2)=(9-Z,9-Y,9-X).
\]

There is no hidden strict-denominator branch. First R>0 implies g nonzero
and eta>0. Also

\[
\eta+|\det E|^2=36-4p,\qquad g=\eta+2(9-p).
\]

Hence p<9 and g>0. The identities

\[
|P_j|^2=g^2+k_j\chi+k_j^2\eta,\qquad
4\eta|P_j|^2=(\chi+2k_j\eta)^2+R
\tag{8}
\]

show that all P_j are nonzero on every strict unit seed. These identities
are regenerated by `algebra.py`; the reasoning uses no numerical premise.
The leading minors `3,9-X,g` also show G is positive definite.

Set

\[
\Delta=|P_0P_1P_2|^2>0.
\]

For completeness the denominator-free circuit is as follows. Put h=sigma*tau,
`A_j=chi+2*k_j*eta`, and

\[
F_{ij}=2g^2+2k_i k_j\eta+(k_i+k_j)\chi+i(k_j-k_i)h.
\]

The six quantities used in the moment recurrences have polynomial scalings

\[
\begin{aligned}
\Delta u&=F_{01}P_0\bar P_1|P_2|^2/2,&
\Delta v&=F_{02}P_0\bar P_2|P_1|^2/2,\\
\Delta w&=F_{21}P_2\bar P_1|P_0|^2/2,&
\Delta\Pi&=(A_0+ih)P_0|P_1|^2|P_2|^2/2,\\
\Delta C_1&=(A_1-ih)\bar P_1|P_0|^2|P_2|^2/2,&
\Delta C_2&=(A_2-ih)\bar P_2|P_0|^2|P_1|^2/2.
\end{aligned}
\tag{9}
\]

The 31 moment recurrences are linear in these six quantities and their
conjugates. Multiplying seed-only terms by Delta gives every scaled moment,
then Delta N, with no division. They are implemented by
`expressions(ph,cleared=True)`. Six determinant coefficient functions then
form the four weighted sums exactly as in the source proof. The independent
Laurent checker verifies those coefficient functions and all 31 recurrences.

Let tilde-m be the corresponding minor of `tau Delta G + eps Delta N`.
It is a real polynomial in phase real/imaginary parts and tau, and

\[
\widetilde m=\Delta^2m.
\tag{10}
\]

In all accepted regions the full Cayley cube, even before imposing R>0,
has certified positive lower bounds for the three norms |P_j|^2. Thus the
unscaled rational circuit is legal on the whole cube. Each witness stores
a positive rational delta with `Delta >= delta`. This stronger whole-cube
separation is verified, not inferred from the strict-domain argument.

## 4. Degree-two Bernstein certificate

For a quadratic `m(tau)=c0+c1*tau+c2*tau^2`, set

\[
b_0=c_0,\qquad b_1=c_0+c_1/2,\qquad b_2=c_0+c_1+c_2.
\]

Then

\[
 m(\tau)=b_0(1-\tau)^2+2b_1\tau(1-\tau)+b_2\tau^2.
\tag{11}
\]

For **each of the 28 witnesses**, exact whole-cube certificates give

\[
 b_0<-1/4,\qquad b_1<-1/4,\qquad b_2<-1/4.
\tag{12}
\]

The common bound is deliberately rounded down from the strictly stronger
stored bounds. Since the weights in (11) are nonnegative and sum to one
on [0,1], the witness has `m(tau)<-1/4` on that entire interval, without
radical subdivision. Equations (3) imply that the physical tau is in it.

Here are direct formulas for the coefficient circuit. With `S=A+sigma*tau B`,
let

\[
\begin{aligned}
d_0&=\epsilon A_0,&d_1&=d_0+3+\epsilon\sigma B_0,\\
z_0&=\epsilon A_k,&z_1&=z_0+G_k+\epsilon\sigma B_k.
\end{aligned}
\]

Then `b0=d0^2-|z0|^2`, `b1=d0*d1-Re(z0*conj(z1))`, and
`b2=d1^2-|z1|^2`. For the scaled circuit replace 3 by `3 Delta`, G by
Delta G, and A,B by their scaled values. In particular the scaled Bernstein
coefficients are `tilde-b_i=Delta^2 b_i`.

## 5. Explicit polynomial identity retaining tau^2-R

For each witness set the **constant rational**

\[
\varepsilon=\delta^2/8>0,\qquad
\beta_i=-\widetilde b_i-\varepsilon.
\tag{13}
\]

These beta_i are explicitly specified real polynomials via (9) and the
three determinant formulas above. By (12), Delta>=delta, and positivity,

\[
\beta_i>\Delta^2/4-\delta^2/8\geq\delta^2/8>0
\tag{14}
\]

on the whole Cayley phase cube. This is their exact nonnegativity
certificate; its numerical premises are fully replayed rational bounds.

Write `e=tau^2-R` and `g_c=1-R`. The desired identity is

\[
\boxed{\begin{aligned}
-(1+\tau)^2\widetilde m-\varepsilon
={}&\beta_0g_c^2
 +2\beta_1\tau(1+\tau)g_c
 +\beta_2\tau^2(1+\tau)^2
 +\varepsilon\tau(2+\tau)\\
 &+e\left[\beta_0(e-2g_c)-2\beta_1\tau(1+\tau)\right].
\end{aligned}}
\tag{15}
\]

It is an identity in the polynomial ring over the rationals, with beta_i
and epsilon initially treated as independent symbols. `radical_identity()`
checks it by expansion. The proof is simply substitution of (11), using
`(1-tau)(1+tau)=g_c-e`.

In the user's requested notation,

\[
 D=(1+\tau)^2\Delta^2,
\]

and the equality multiplier is

\[
 a_e=\beta_0(e-2g_c)-2\beta_1\tau(1+\tau).
\]

One explicit grouping is

\[
\begin{aligned}
\sigma_0&=\beta_0g_c^2+\beta_2\tau^2(1+\tau)^2+\varepsilon\tau^2,\\
\sigma_c&=2\beta_1\tau(1+\tau),\qquad
\sigma_\tau=2\varepsilon,
\end{aligned}
\]

so that `-D m-epsilon=sigma0+sigmac*g_c+sigmatau*tau+a_e*e`.
Each displayed sigma is nonnegative on the region, by (14), tau>=0, and
squares. All other equality multipliers may be zero in this final identity;
the physical, unit-circle, and auxiliary circuit equations justify the
identifications (7)–(10). This is not a claim that each sigma is globally
SOS in unconstrained seed variables.

The degree in the two symbols tau and R is at most four on the positive
side, and the coefficient of e has degree at most two in those symbols.
The seed-dependent polynomials have the degrees fixed by (9); no claim of
low total degree in every original Hadamard entry is made.

Under the physical equations e=0 the right-hand side is nonnegative.
Since D>0 and epsilon>0, m<0, contradicting (6). Thus each witness excludes
its recorded side sign throughout the region.

## 6. Exact nonnegativity and coverage arithmetic

### Coefficient bounds

For a real coefficient function F on the symmetric Cayley box, the verifier
uses

\[
F(u)\in F(0)+[-E,E],\quad
E=\sum_i\rho_i|\partial_iF(0)|
  +\frac12\sum_{i,j}\rho_i\rho_j\sup|\partial_i\partial_jF|.
\tag{16}
\]

Taylor's integral remainder along the segment from 0 to u proves (16).
The full box is convex and all rational denominators are separated there.
The diagonal Hessian terms carry factor 1/2; each stored off-diagonal term
carries factor 1. `J` propagates exact first and second derivative rules for
sums, products, inverses, real parts, and conjugation. There are no finite
differences, sampled Hessians, fitted constants, or omitted mixed terms.

Two legal upper bounds are computed for each b_i: a direct application of
(16) to b_i, and interval evaluation of its determinant formula after (16)
bounds the individual coefficients. The smaller of two certified upper
bounds is again an upper bound. Both traces are stored and recomputed. This
intersection is sometimes essential for a merged region to pass.

Intervals have endpoints n/2^80. Multiplication and inversion use integer
floor/ceiling to round outward; inversion rejects any interval containing
zero. Complex inverses divide by the real squared norm. Every acceptance
comparison is an integer or Fraction comparison. A wall-clock float in the
report is timing metadata only.

### Angular hull to exact Cayley box

For rational hull center c and halfwidth h, compute a rigorous rational
Taylor enclosure for `v=exp(ic)*conj(zeta)`. The sine series through degree
71 and cosine series through degree 70 have Lagrange errors bounded by
`|c|^73/73!` and `|c|^72/72!`, respectively. Their zero next coefficients
justify these orders.

For |d|<=h, `|sin d|<=h`, `cos d>=1-h^2/2`, and the certified positive
Re(v) give

\[
1+\Re(ve^{id})\geq1+\Re v-h|\Im v|-h^2/2>0,
\quad |\Im(ve^{id})|\leq|\Im v|+h.
\]

Their quotient bounds the Cayley coordinate throughout the entire closed
arc. The verifier checks it is no larger than the recorded rho. This is a
proof of inclusion, not a floating conversion of angles to rational phases.

### Population coverage

A root key k has angle center `(2*k+1)/512` and radius `1/512` in each
coordinate. At path depth d, coordinate `d mod 4` is halved; bit 0 takes the
lower half and bit 1 the upper half. This is exactly the archived
`ActiveShoulderClosure/geometry.py` rule at grid 256, copied in
`geometry_exact.py` and pinned with the source.

Every selected leaf is checked to lie in its assigned region's angular
hull. For R bounds there are 79 whole-hull Taylor models, one per original
root ID. The existing leaf endpoints are converted to interval Cayley
coordinates using monotonicity of the local Cayley map and a rational
small-angle Taylor enclosure. Full-arc pole separation above validates that
monotonicity on the whole segment, not just at its endpoints.

The R Taylor model retains the signed linear term on each leaf, bounding
only its second-order remainder absolutely. This matters: some parent hull
centers have R>1 although every selected leaf has R<2/3. The largest proved
upper bound is the fraction in Section 0, attained in the coverage audit at
source line 5202. The 79 models prove a cap; the 14 regions prove the PSD
exclusion. They are different objects.

No full-box claim is inferred from sampling. No source R metadata is used
as an analytical inequality. `--frontier` checks the original gzip hash,
all 14,164 records, and equality of the selected geometry manifest with
exactly the 7,553 named records.

## 7. Sign, boundary and denominator branches

**Both sheets.** Outside Tao, a physical completion has horizontal and
transposed side-constructor signs `(+, -)` or `(-, +)`. For each region the
verifier proves that at least one recorded witness excludes each of these
two possibilities. A positive-sheet witness alone would not suffice.
The raw signs in the frontier pairing records are not used to decide this.

**Tao.** Every dephased Tao corner has cube-root phase entries: arbitrary
row and column gauges cancel in the cross ratios. Each region has a
coordinate with an exact whole-Cayley-box enclosure of `Im(a_i^3)` bounded
away from zero. Therefore no Tao corner lies in it. The verifier refuses
the matched-only shortcut without this check. No uncovered Tao branch is
silently discarded.

**Side permutations.** All weighted moments are sums over the three side
columns. Reordering those columns does not change G or N. Strict side
exhaustion therefore supplies all sides, not only one labelling of roots.

**R<0 and R=0.** Neither belongs to strict D0. The polynomial identity is
still meaningful at tau=0 and does not divide by tau. The theorem does not
classify the R=0 stratum and does not claim it is empty. The selected source
boxes may straddle this stratum; only their strict subset is being pruned.

**R=1.** It is included. Then tau=1, g_c=e=0, and the Bernstein endpoint b2
is strictly negative. No open endpoint or numerical epsilon is needed.

**Seed-box faces.** All boxes, arc inclusions, and Bernstein bounds are
closed. Negative upper bounds remain strict there. Overlaps and split
faces do not create coverage gaps.

**P_j=0 and Delta=0.** These are impossible when R>0 by (8). Additionally
all our full Cayley boxes have certified separated P norms, so the rational
coefficient bound never attempts an unsafe division even at unphysical
seed points. Failure of any separation causes rejection.

**Chart poles.** The polynomial chart denominator is 1+u_i^2>0. The angular
inclusion checks separately prove `1+Re(exp(i theta)/zeta)>0`; no omitted
angular pole is licensed by an endpoint test.

## 8. Reconstruction dependency ledger

The local theorem does not need the global assertion that every non-F6
class has a strict corner: it starts with a hypothetical framed strict-D0
completion. Its non-elementary imports are exactly the following existing
repository results.

1. `MinimalConstruction/Proofs/SIDE_FIBER.md`: on each strict unit seed, all
   normalized phase sides are the two prescribed orbits under column
   permutations; the prescribed symmetric quantities give their moments.
   The proof uses Fourier normalization, exact phase identities, and the
   two values of the side invariant. It applies on all R>0, not just the
   earlier product-regular coordinate domain.
2. `MinimalConstruction/Proofs/NONMATCHED_EXCEPTIONS.md`: an actual strict
   completion not of Tao type has the opposite side-constructor signs at
   this fixed corner. This is the fixed-corner converse, not the weaker
   positive-sheet surjection after changing corners. Its proof imports the
   listed ClassificationPaper product-regular reach, necessary affine-minus
   matching rule, and admissibility results, propagates the all-corner
   matching identities, includes ramified charts, and treats H_cross
   separately. Those paper imports remain part of the upstream trust base.
3. `MinimalConstruction/Proofs/TAO_PAIRINGS.md` and the explicit Tao matrix:
   exceptional corners have cube-root entries after dephasing. We use only
   this necessary property to exclude them, not numerical nearest-class
   labels.

The original `SignedCornerPSDPrune/PROOF.md`, `engine.cpp`, denominator
proof, side proof, matching proof, Tao proof, reconstruction conventions,
and relevant paper source text are bundled as unchanged reference inputs.
`upstream_manifest.json` pins their exact bytes. These copies are references,
not an assertion that every historical verifier in them is standalone in
this smaller package. To replay the complete upstream dossier use the
supplied original core archive.

The new arithmetic kernel, polynomial identities, coefficient enclosures,
region membership, and source coverage are independently replayed here.
They are not formal Lean proofs; the Python runtime and the supplied small
integer/interval/automatic-differentiation implementation remain the
executable verification trust base.

## 9. Negative controls and an obstruction to overextending the result

The replay rejects corrupted certificates with a missing matched branch,
nonunit anchor, too-small Cayley radius, absent Tao separation, changed
radical cap, negative Delta bound, inflated epsilon, altered Bernstein
trace, wrong pencil sign, or missing source leaf. It also detects deletion
or sign reversal of the ideal term in (15), rejects zero-crossing inverses,
and checks exact rational arithmetic and mixed inverse derivatives.

An independent **physical** control is

\[
H(z)=\begin{pmatrix}F&F\\FZ&-FZ\end{pmatrix},\quad
F_{jk}=\omega^{jk},\quad Z=\operatorname{diag}(1,z,1),\quad\omega^3=1,\ \omega\ne1.
\]

The checker proves `HH*=6I` in the Laurent cyclotomic ring. It computes all
400 corner invariants directly and independently by the complementary
square identity. Their values and multiplicities are

\[
\begin{array}{c|r}
0&256\\
-9(z-1)^6(z+1)^2/z^4&36\\
-9(z-1)^2(z+1)^2(z^2+1)^2/z^4&72\\
-9(z-1)^2(z+1)^6/z^4&36.
\end{array}
\]

For `z=(1-i v)/(1+i v)`, `0<v<1`, put
`M=2304 v^2/(1+v^2)^4`. Exact substitution gives `0,v^4 M,(1-v^2)^2 M/4,M`.
The maximum is the strictly positive M. After the recorded permutations
and dephasing, a maximal leading corner has seeds

\[
(a,b,c,d)=(\omega^2,-\omega/z,1,-1/z).
\]

As v tends to zero these approach the sixth-root seed `(4,5,0,3)`.
Thus an unrestricted neighborhood of that seed cannot be certified empty
of strict-D0 completions. This does **not** settle the smaller residual
patches requested in the task; it is a safeguard against claiming that a
successful witness extends to a whole neighborhood without its defining
inequalities. No such extension is claimed here.

## 10. Reproduction and integration

Run `python3 verify.py` for the standalone certificate, algebra, coverage,
and negative-control replay. It requires only Python's standard library.
Use `--frontier /path/to/unresolved_pairing_leaves.jsonl.gz` to verify the
manifest against the original source bytes as well. `--region-only 1025`
replays one whole-region exclusion without making a population claim.

The retained run with original-source verification passed every check.
`validation_report.json` records exact bounds and per-region counts.
Timing is observational metadata, not a mathematical hypothesis.

For a Lean port the natural separation is: (i) a small ordered-ring theorem
for (15); (ii) positivity of rational interval circuits and the second-order
Taylor enclosure; (iii) the already existing physical side/matching
interface; (iv) exact finite membership and sign-coverage checks. No Lean
source or claim of compatibility with the requested Lean/Mathlib revisions
is included in this delivery.
