# Updated crossing brief: results and integration

## 1. The requested scale is reached

**PROVED from the stated certified inputs:** for both crossing patterns in the
updated archive, every actual zero in the full horizontal phase ball

\[
\boxed{\|x\|_2\le 1/50=0.02}
\]

has one of the two balanced order-three symmetries and is classified by
recognition. The same sufficient radius holds in correctly aligned 55
dephased radian coordinates. The proof does not require the earlier qualitative
crossing-surface theorem.

The retained inputs are the exact rank-51 structure and physical group actions,
the equivariant normal inverse, the original coefficient-amplitude derivative
certificates, and the recognition theorem. The new fixed-plane frequency
calculations and all revised scalar inequalities have independent, exact,
standard-library verifiers in this package. The supplied project `.py` files
were read only, as requested.

The other main conclusions are an exact centre-specific regular tube of radius
`r<0.025`, a computable interval-uniform tube theorem, and the constructive
gluing bound `distance <= 4.04 |gamma|` in the same-anchor horizontal norm.

## 2. Review of the original crossing lemma

### Complete fixed spaces

**PROVED audit finding.** The written hypothesis should explicitly require

\[
K_i=K\cap\operatorname{Fix}(P_i),\qquad
K=K_0\mathbin{\perp\!\oplus}K_1.
\]

Merely saying that `K_i` is a fixed two-plane is insufficient. The supplied
structure code already checks the stronger condition by projecting the full
kernel onto each fixed space and checking the dimensions and joint fixed
space. Thus this repairs the statement to match its recorded implementation.

The normal contraction, equivariance by averaging, orthonormal basis changes,
and Hessian flattening in the original argument are valid. The original
factorization proof is conservative because it establishes invertibility on
all four tensor coordinates; only rank-one tensors occur in the residual.

### What the old qualitative checkpoint supplies

The prior checkpoint describes genuine analytic fixed solution surfaces and
their immersions, which suffice for the original identity-theorem argument
at that representative. It supplies more than a tangent-cone calculation.
It does not, by itself, identify its anchor/action labels with those of the
two newly certified centres. That transfer would need an exact equivalence
certificate or the omitted centre data.

The new proof avoids needing that transfer. Let `W=K0 tensor K1` and let `S_g`
be the induced orthogonal representation. If `B J=0` and `B M=I_W` for the
mixed Hessian map `M`, replace `B` by

\[
\bar B=\frac19\sum_g S_g^{-1}B Y_g.
\]

Then `bar B J=0`, `bar B M=I`, and `bar B` intertwines the actions. The normal
graph is equivariant, so its reduced residual

\[
f(k)=\bar B F(k+\phi(k))
\]

is equivariant with values in `W`. Neither generator has a nonzero fixed
vector in `W`, so `f(u,0)=f(0,v)=0`. This is exactly the axis vanishing needed
by double integration. It does not assert that every graph-axis point solves
all 96 equations; that assertion is unnecessary for classifying actual zeros.

All bounds used below survive this averaging, since the relevant actions
are orthogonal and preserve the constrained derivative slots. This removes
the qualitative surface hypothesis altogether; `C^3` regularity suffices for
the revised implication. See `lemma_audit.md` for the detailed audit.

## 3. The radius-0.02 certificate

### Uniform constants and restricted derivative slots

The following rational bounds dominate both supplied Arb receipts:

| Quantity | Bound |
|---|---:|
| Normal inverse defect `d` | `10^(-14)` |
| Centre Hessian `h2` for `H=AF` | `1167/500 = 2.334` |
| Global third derivative `h3` | `63` |
| Centre Hessian `g2` for `G=bar B F` | `147/20 = 7.35` |
| Global third derivative `g3` | `105` |

The full cubic-frequency Gram maximum absolute row sum is exactly 308.
Reconstructing the two projectors from the attached exact-plane JSON gives,
for both patterns, the much smaller restricted row sums

\[
\begin{aligned}
E,K_0,K_1:&\quad \frac{72}{25}+\frac{16\sqrt3}{45}<\frac72,\\
E,E,K:&\quad \frac{838}{15}+\frac{8\sqrt3}{3}<61.
\end{aligned}
\]

The original derivative code constructs its cubic bounds as a
coefficient-amplitude norm times `sqrt(308)`. Combining that same certified
amplitude bound with the restricted frequency matrices proves

\[
\begin{aligned}
\|D^3H[E,K_0,K_1]\|&\le7,&
\|D^3G[E,K_0,K_1]\|&\le12,\\
\|D^3H[E,E,K]\|&\le29,&
\|D^3G[E,E,K]\|&\le47.
\end{aligned}
\]

These four gains use that **coefficient-amplitude construction**, not merely
the existence of generic global bounds 63 and 105. This dependency is kept
explicit in the proof and verification scope.

### Normal graph

Use

\[
R=201/10000=0.0201,\qquad
\rho=1/50=0.02,\qquad \eta=1/1000=0.001.
\]

The product domain is strictly inside the ambient derivative ball. Integrating
the centre Hessian and cubic bound separately gives

\[
q=d+h_2R+\tfrac12h_3R^2=0.05963971500001<1,
\]

and the normal image bound is `0.00061043971500001<eta`. The unique graph
obeys `||phi(k)|| <= (3/2)||k||^2`, and therefore
`||k+phi(k)|| <= 1.001 ||k||` for `||k||<=rho`.

### Integrated mixed obstruction

Only the mixed graph Hessian and derivative slots entering it need to be
bounded. The complete positive-coefficient rational polynomial
`epsilon(r)=sum_{n=1}^8 c_n r^n` is derived in `larger_crossing.md` and stored
exactly in `crossing_scalar_certificate.json`.

For `k=u+v`, with `u` and `v` in the orthogonal planes, double integration gives

\[
\|f(u,v)-u\otimes v\|
\le\|u\|\|v\|\int_0^1\!\int_0^1
\epsilon(\|su+tv\|)\,ds\,dt.
\]

At `r0^2=||u||^2+||v||^2`, Jensen and convexity give the moments

\[
\mathbb E\|su+tv\|\le\frac{7r_0}{12},\qquad
\mathbb E\|su+tv\|^n\le\frac{r_0^n}{n+1}\quad(n\ge2).
\]

Thus the exact scalar certificate proves

\[
\delta=\frac7{12}c_1\rho+
\sum_{n=2}^8\frac{c_n\rho^n}{n+1}
=0.885228072009042\ldots<1.
\]

It follows that `||f(u,v)|| >= (1-delta)||u||||v||`. Every actual zero lies
on one axis; equivariance then supplies an actual physical symmetry and
recognition applies. Directly testing these rank-one tensors removes the
factor two from the original matrix-invertibility estimate.

### Why the entire 0.02 ball is covered

An actual zero `x=k+y` of norm at most `rho` satisfies

\[
\|y\|\le
\frac{h_2\rho^2/2+h_3\rho^3/6}{1-d}
<0.000550800000000006<\eta.
\]

Its kernel projection also has norm at most `rho`. Consequently every actual
zero in the full radius-0.02 ball enters the normal graph's product domain.
The theorem is not limited to the inscribed radius `eta`.

## 4. A fully certified regular-family tube

**PROVED.** At an exact regular family point `p`, let `Q` be the orthogonal
projector onto the moving part of the horizontal phase action. If

\[
\|J_p v\|\ge\sigma_0\|v\|\quad(v\in\operatorname{im}Q),
\]

then every exact zero at distance `r<sigma0/60` has the same order-three
symmetry. Here 60 is the global Hessian bound for the unweighted 96 real
residuals, in radians; its proof is included in
`reference/REGULAR_TUBE_PROOF.md`. Residual rescaling must be applied to both
the singular-value and Hessian constants.

The proof compares the zeros `x` and `P x`. Their difference is in the moving
space, and integrating the derivative along their joining segment gives
`sigma0||(P-I)x|| <= 60||x||||(P-I)x||`. Strict inequality forces invariance.

At the exact parameters

\[
a=(1,i,i),\qquad b=(1,1,-1),\qquad\gamma=1,
\]

the new verifier rigorously encloses the canonical lift and its Jacobian.
It checks a saved rational preconditioner `C0` with

\[
\|C_0\|<13/20,\qquad
\|Q-C_0J_pQ\|<10^{-4}.
\]

The first inequality is an exact integer positive-definiteness test; the second
uses directed intervals and exact matrix products. Hence

\[
\sigma_0\ge\frac{1-10^{-4}}{13/20}>3/2,
\qquad\boxed{r<1/40=0.025}.
\]

**NUMERICAL diagnostic only:** the moving singular value is approximately
`1.5502563898`. The exact proof does not use this floating-point value.

## 5. Uniform family intervals and cell alignment

**PROVED.** Suppose `p(lambda)` is a family of exact references in a common
anchor and labeling, with one fixed action and moving projector `Q`. Express
the references and their Jacobians in one coherent phase and equation frame.
If

\[
\|C_0\|\le\kappa,\qquad
\sup_\lambda\|Q-C_0J_{p(\lambda)}Q\|\le\delta<1,
\]

then every exact zero at distance strictly less than the following uniform
tube radius from its chosen reference has the corresponding symmetry:

\[
\boxed{r_\Lambda=(1-\delta)/(60\kappa).}
\]

For a rational midpoint `Jc`, the sufficient bound
`delta=e0+kappa eJ` uses `e0>=||Q-C0JcQ||` and an interval bound
`eJ>=sup_lambda||Jp(lambda)-Jc||`. The included
`family_interval_check.py` implements this implication for the saved gamma-one
preconditioner. It requires a valid full interval Jacobian enclosure; it does
not infer the enclosure from floating-point samples.

For a concrete uniform patch, represent every exact reference with the same
action by its horizontal phase displacement of norm at most `1/100000` from
the gamma-one point, keeping the same equation frame. Its Jacobian then lies
in the entrywise enclosure `Jc +/- 1/1000`. This follows from the global
derivative bound 60 and the independently certified midpoint error. An
additional rephasing can rotate the Gram residual coordinates, so it must
also be propagated into the Jacobian enclosure and preconditioner.
The enclosure checker proves `sigma>=7/5`, giving the uniform radius
`r<7/300`. A larger useful parameter box should use its actual interval
Jacobian; the included small patch demonstrates a completely specified
uniform application, not a computed atlas cover.

For a whole cell, choose a coherent anchor, a common row transformation,
independent column transformations, and consistent phase windings. A
55-coordinate enclosure `[ell_j,u_j]` is in a tube of radius `r` when

\[
\sum_j\max(|\ell_j|,|u_j|)^2<r^2.
\]

Include reference uncertainty. For a correlated common carrier
`x=c+Lw+e`, use
`||Wc||+||WL|| r_w+e0` as a sufficient horizontal bound, retaining the shared
dependence of H and all K columns. A certified parameter selection
`lambda=lambda(w)` is allowed when the singular-value certificate is uniform.
Intersection with the reference family alone does not show that an entire
cell is in its tube. See `FAMILY_TUBES.md` for the full alignment rules.

## 6. Explicit gluing to the crossing cores

**PROVED.** For a canonical constructed family point and
`g=|gamma|<=1/2`, the ratios of the normalized triple `a` solve

\[
z^3-\gamma z^2+\overline\gamma z-1=0.
\]

The ratios of `b` satisfy the same equation with `gamma` replaced by
`-gamma`.

Matching these ratios to distinct cube roots gives phase changes at most
`3g/4` and selects one of the 36 canonical zero-correlation endpoints.
Propagating through the Fourier coefficients and canonical lift gives:

| Alignment and metric | Distance bound |
|---|---:|
| Same-anchor horizontal quotient | `sqrt(261) g / 4 < 4.04 g` |
| Natural canonical 55-coordinate dephasing | `<14 g` |
| Arbitrary same-anchor monomial alignment, then dephasing | `<35 g` |
| Reanchoring, then horizontal projection | `<10 g` |
| Reanchoring and arbitrary monomial alignment, then dephasing | `<84 g` |

For crossing neighborhoods of radius `Rc` covering all matching endpoints,
every family point outside their union obeys

\[
g\ge\min(1/2,R_c/C).
\]

In the same-anchor horizontal metric, `Rc=1/50` and `C=101/25` give

\[
\boxed{|\gamma|\ge1/202.}
\]

Thus the earlier generic radius `|gamma|/540` is bounded below by
`1/109080` on the remaining family. Centre-specific or interval-certified
singular values can give substantially wider tubes than this fallback.

The matching union matters: distance from one arbitrarily labeled centre
cannot bound `|gamma|` below when other labeled centres have `gamma=0`.
The proof and the exact metric constants are in `gluing.md`.

## 7. Project integration and remaining obligations

The integration sequence is concrete:

1. Retain the exact structure, physical action, and normal inverse checks;
   state the complete fixed-space hypothesis. Average `B`, or prove its
   existing least-norm construction already intertwines the actions.
2. Add the restricted frequency certificates, retaining their link to the
   original coefficient-amplitude bound. Use the new radii, graph majorants,
   and integrated mixed-defect test. The former qualitative-surface flag is
   unnecessary for this classification implication.
3. Test aligned cell enclosures against the radius-0.02 horizontal ball, or
   directly against `||Pi_K x||<=.02`, `||Pi_V x||<=.001`. Recompute their
   original-chart inclusion; do not scale an earlier accepted w-radius by
   the phase-radius ratio.
4. Cover the remaining family parameter boxes with uniform regular tubes,
   using the matching endpoint union and gluing floor to stay away from
   zero correlation. Preserve the existing exhaustive all-K tree and
   coverage accounting.

All five attached files hashed by the supplied radius receipt match their
recorded hashes. The new archive omits `results/exact_centres.json`, imported
bootstrap dependencies, and the complete all-K inclusion receipt. Therefore
the local implications and new independent arithmetic are established as
stated, while concrete endpoint-to-current-pattern alignment and enlarged
X-ball inclusion remain project-side tasks. No completion of the X-ball,
remaining seed shells, or global classification is claimed here.

No **CONJECTURED** cancellation or sampled singular value enters the new
certificates. The only numerical value retained above is explicitly labeled
as a diagnostic.
