# Enlarged crossing neighborhood: a radius of 0.02

## Status and theorem

**PROVED quantitative implication, using the exact structure and quantitative derivative bounds in the supplied receipts as explicit inputs.** The new frequency calculations and scalar inequalities have standalone exact verifiers. None of the supplied project Python files was imported or executed. No qualitative solution-surface theorem is required after equivariant averaging of the obstruction map.

For **each of the two crossing patterns**, every physical triple zero whose orthogonal horizontal phase displacement from its exact center satisfies

\[
 \boxed{\|x\|_2\le\frac1{50}=0.02}
\]

has one of the two balanced order-three symmetries, and hence is classified by the recognition theorem. Phases are in **radians**. The same sufficient radius holds in the 55 dephased phase coordinates, since embedding those coordinates in 72 entries and applying the orthogonal horizontal projection cannot increase norm.

The proof uses an ambient derivative ball of radius `R=0.0201`, a kernel radius `rho=0.02`, and a normal radius `eta=0.001`. An a priori estimate traps every physical zero in the full radius-0.02 ball inside this product domain. Thus 0.02 is a classification radius for a full phase ball, not only the long axis of an anisotropic domain.

This improves the mixed-obstruction argument without assuming vanishing of third derivatives. Independent numerical exploration did find such a cancellation at a canonical crossing, but that observation is not used anywhere in this certificate.

## 1. Inputs retained from the supplied receipts

Retain the 55-dimensional horizontal space `E`, rank-51 Jacobian `J`, orthogonal splitting

\[
 E=K_0\oplus K_1\oplus V,
 \qquad \dim K_0=\dim K_1=2,
\]

and the two commuting orthogonal order-three actions. On the kernel `K=K0+K1`, the fixed space of the first action is exactly `K0`, and that of the second is exactly `K1`. Let `A` be the supplied equivariant normal inverse with range `V`, and let `B` annihilate `J` and normalize the four mixed Hessian columns. Write

\[
 H=AF,\qquad G=BF.
\]

The following rounded-up rational bounds dominate both supplied radius receipts:

| Quantity | Bound used |
|---|---:|
| `||I_V-AJ|V||` | `d = 10^(-14)` |
| `||D²H(0)||` | `h2 = 1167/500 = 2.334` |
| global `||D³H||` | `h3 = 63` |
| `||D²G(0)||` | `g2 = 147/20 = 7.35` |
| global `||D³G||` | `g3 = 105` |

These are Euclidean multilinear operator bounds, or larger symmetric-flattening bounds. The derivation below adds restricted third-derivative bounds from the exact planes in the structure receipt.

## 2. Remove the qualitative-surface dependency

Let `S_g` denote the orthogonal action of the nine-element group on

\[
 W=K_0\otimes K_1\cong\mathbb R^4.
\]

If necessary replace `B` by

\[
 \bar B=\frac19\sum_g S_g^{-1}B Y_g.
\]

The mixed Hessian map `T:W -> R^96` intertwines the group actions. Therefore `bar B J=0`, `bar B T=I`, and `bar B Y_g=S_g bar B`. All derivative bounds used below remain valid after this averaging: each summand is an orthogonal conjugate of the same derivative, and the group preserves `K0`, `K1`, `K`, `V` and `E`. This includes the restricted derivative bounds, so no recomputation of an averaged coefficient-amplitude matrix is needed. In the remainder of the proof relabel this averaged map as `B` and write `G=BF`.

The normal graph constructed below is equivariant. Consequently the reduced residual

\[
 f(k)=\bar B F(k+\phi(k))
\]

is equivariant with values in `W`. The first action has no nonzero fixed vector in `W`, because its action on `K0` is trivial and its action on `K1` has no fixed vector; the second action has the corresponding property. Hence

\[
 f(u,0)=0,\qquad f(0,v)=0
\]

throughout the graph's parameter domain, purely by equivariance.

This is sufficient for the mixed factorization. We do not need to prove that every point of either graph axis is a physical zero. Once an actual physical zero is forced onto an axis, equivariance of the graph makes it fixed by the corresponding physical order-three action. Recognition then classifies it.

## 3. Exact restricted frequency bounds

The coherent equations contain 720 nonconstant Fourier terms: 180 individual-orthogonality terms and 540 mixed-flatness terms. Every frequency `ell` has either two or four nonzero entries, all `+1` or `-1`.

Let `L` be their 720-by-72 integer frequency matrix and put

\[
 D_{ij}=\ell_i\cdot\ell_j,
\quad U_{ij}=\ell_i\cdot\Pi_{K_0}\ell_j,
\quad V_{ij}=\ell_i\cdot\Pi_{K_1}\ell_j.
\]

The supplied full cubic tensor Gram bound is

\[
 \max_i\sum_j|D_{ij}|^3=308.
\]

Using the two exact fixed-plane bases in the attached JSON, the standalone verifier proves, for **both** crossings,

\[
 \max_i\sum_j|D_{ij}U_{ij}V_{ij}|
 =\frac{373248+46080\sqrt3}{129600}<\frac72,
\]

and

\[
 \max_i\sum_j|D_{ij}^2(U_{ij}+V_{ij})|
 =\frac{7240320+345600\sqrt3}{129600}<61.
\]

The unrestricted frequency factors above use the full ambient space `R^72`, which only enlarges the relevant norms. The first is therefore a sufficient Gram row bound for tensor slots `E,K0,K1`; the second is sufficient for slots `E,E,K`. Absolute row sums bound the spectral norm of the symmetric Gram matrix.

The original receipt's construction gives coefficient-amplitude spectral bounds at most `63/sqrt(308)` for `H`, and `105/sqrt(308)` for `G`. Combining those amplitude bounds with these smaller frequency Gram matrices proves the following rounded-up global inequalities:

\[
 \boxed{
 \begin{aligned}
 \|D^3H[E,K_0,K_1]\|&\le7,&
 \|D^3G[E,K_0,K_1]\|&\le12,\\
 \|D^3H[E,E,K]\|&\le29,&
 \|D^3G[E,E,K]\|&\le47.
 \end{aligned}}
\]

For example, `105 sqrt((7/2)/308)<12` and `63 sqrt(61/308)<29`. The exact scalar verifier checks all four conversions by squaring rational quantities.

The new exact frequency verifier is `projected_frequency_bounds.py`; its receipt is `projected_frequency_bounds_verified.json`. Its input is only the supplied exact-plane JSON and the explicitly reconstructed integer frequencies. It uses exact arithmetic in `Q(sqrt(3))` and does not import project code.

## 4. Normal graph with a quadratic height bound

Choose

\[
 R=\frac{201}{10000}=0.0201,\quad
 \rho=\frac1{50}=0.02,\quad
 \eta=\frac1{1000}=0.001.
\]

The product domain lies inside the ambient ball because

\[
 \rho^2+\eta^2=0.000401<0.00040401=R^2.
\]

Taylor integration gives a sharper normal contraction bound than replacing the center Hessian by its worst value on the ball:

\[
 q=d+h_2R+\frac{h_3R^2}{2}
   =0.05963971500001<1.
\]

Write `D=1-q`. For `r=||k||`, the graph forcing term satisfies

\[
 \|H(k)\|\le\frac{h_2r^2}{2}+\frac{h_3r^3}{6}.
\]

The uniform image inequality is

\[
 \frac{h_2\rho^2}{2}+\frac{h_3\rho^3}{6}+q\eta
 =0.00061043971500001<\eta.
\]

Thus the normal contraction constructs a unique analytic equivariant graph `y=phi(k)` on the kernel ball, containing every physical zero in the product domain. Comparing the fixed point with the map value at zero gives

\[
 \|\phi(k)\|\le
 \frac{h_2r^2/2+h_3r^3/6}{D}
 \le C r^2,\qquad C=\frac32.
\]

The exact sufficient scalar inequality is

\[
 \frac{h_2/2+h_3\rho/6}{D}<1.465<\frac32.
\]

Orthogonality of kernel and normal spaces now gives

\[
 \|k+\phi(k)\|\le \chi r,
 \qquad \chi=\frac{1001}{1000}=1.001,
\]

because `1+C²rho² < chi²`.

## 5. Derivative majorants only where the graph is evaluated

Put `X=chi r`. The inverse normal derivative has norm at most `1/D` throughout the domain.

### First derivative of the graph

The kernel derivative of `H` vanishes at the origin. Taylor expansion with the `E,E,K` third-derivative bound yields

\[
 \boxed{
 t(r)=\frac{h_2X+29X^2/2}{D}
 \quad\Longrightarrow\quad
 \|D\phi(k)\|\le t(r).
 }
\]

### Mixed second derivative of the graph

For unit `a in K0`, `b in K1`, differentiate the implicit equation twice. Its numerator is

\[
 D^2H(x)[a+D\phi a,b+D\phi b],\qquad x=k+\phi(k).
\]

The pure kernel term uses the `E,K0,K1` bound 7; the two terms with one normal derivative use the `E,E,K` bound 29; the term with two normal derivatives uses the global bound 63. Thus

\[
 \boxed{
 s(r)=\frac{
 h_2+7X+2(h_2+29X)t(r)+(h_2+63X)t(r)^2}{D}
 }
\]

bounds `||D²phi(k)[a,b]||`. We only need this **mixed** second derivative, rather than a bound for the entire second-derivative tensor.

### First derivative of the obstruction on normal vectors

Since `BJ=0`, `DG(0)=0`. Taylor expansion of `DG(x)` has a linear Hessian term and a cubic remainder. Split one occurrence of `x=k+phi(k)` in that remainder, applying the restricted 47 bound to `k` and the global 105 bound to `phi(k)`. This proves

\[
 \boxed{
 m(r)=g_2X+\frac{X}{2}\left(47r+105Cr^2\right)
 \quad\Longrightarrow\quad
 \|DG(x)|_V\|\le m(r).
 }
\]

## 6. A mixed residual error polynomial

Normalize `B` so that `D²G(0)[a,b]=a tensor b` on `K0 x K1`. Differentiating the reduced residual and separating its four contributions gives

\[
 \boxed{
 \varepsilon(r)=12X
   +2(g_2+47X)t(r)
   +(g_2+105X)t(r)^2
   +m(r)s(r).
 }
\]

For unit `a in K0`, `b in K1`, this bounds

\[
 \|D^2f(k)[a,b]-a\otimes b\|\le\varepsilon(\|k\|).
\]

The four terms respectively control the change in the pure mixed Hessian, the two single graph-derivative corrections, the double graph-derivative correction, and `DG(x) D²phi[a,b]`.

All constants in `X,t,s,m` are positive rational numbers, so

\[
 \varepsilon(r)=\sum_{n=1}^8 c_n r^n
\]

has nonnegative **exact rational** coefficients. Their approximate values are

\[
(c_1,\ldots,c_8)\approx
(66.79544,710.21792,5133.51625,28622.35521,
123335.31460,375684.94557,829155.04999,1261969.16793).
\]

These displayed approximations are not used for acceptance; the standalone scalar verifier carries the rational coefficients exactly.

## 7. Integrate the error, and test only rank-one tensors

The reduced residual vanishes on both axes. Therefore the double fundamental theorem of calculus gives

\[
 f(u,v)=u\otimes v+
 \int_0^1\!\int_0^1
 \left(D^2f(su+tv)[u,v]-u\otimes v\right)\,ds\,dt.
\]

There is no need to prove that a four-by-four coefficient matrix is invertible on arbitrary tensors: the tensor appearing here is always rank one. Directly,

\[
 \|f(u,v)-u\otimes v\|
 \le \|u\|\|v\|
 \int_0^1\!\int_0^1\varepsilon(\|su+tv\|)\,ds\,dt.
\]

Let `r0=sqrt(||u||²+||v||²)`. Orthogonality gives

\[
 \int\!\int\|su+tv\|\le\frac{r_0}{\sqrt3}<\frac7{12}r_0
\]

by Jensen's inequality, since the average squared norm is `r0²/3`. For every integer `n>=2`, convexity in the weight `||u||²/r0²` gives

\[
 \int\!\int\|su+tv\|^n\le\frac{r_0^n}{n+1}.
\]

Indeed, the integrand is a convex function of that weight for exponent `n/2>=1`; its maximum average occurs at an endpoint, where the integral is the one-variable moment `1/(n+1)`.

Consequently, throughout the kernel ball,

\[
 \delta\le \frac7{12}c_1\rho
       +\sum_{n=2}^8\frac{c_n\rho^n}{n+1}
       <\boxed{0.885229}<1.
\]

The exact verified rational value is

\[
 \delta=\frac{1363151904329954011957119423177129198308308259}
 {1539887795510432262818853642306218676851850000}
 =0.885228072009042\ldots.
\]

Even the simpler moment estimate `int int r^n <= rho^n/3` for all `n>=2` gives a sufficient defect below `0.889332`.

It follows that

\[
 \|f(u,v)\|\ge(1-\delta)\|u\|\|v\|.
\]

Thus any physical zero on the graph has `u=0` or `v=0`. Equivariance of the graph then gives the corresponding actual balanced order-three symmetry.

## 8. Include the full 0.02 phase ball

It remains to show that a physical zero `x=k+y` with `||x||<=rho` lies in the normal domain. Taylor's theorem applied directly to `H(x)=0` gives

\[
 (1-d)\|y\|\le
 \frac{h_2\rho^2}{2}+\frac{h_3\rho^3}{6}.
\]

The exact right-side bound after dividing by `1-d` is

\[
 \|y\|\le0.000550800000000006<\eta=0.001.
\]

Also `||k||<=||x||<=rho`. Therefore every physical zero in the full radius-0.02 phase ball lies in the classified graph domain.

For a cell whose coherent shared gauge and integer windings have been aligned with either exact crossing, the following sufficient check is now available:

\[
 \sum_{j=1}^{55}\max(|\ell_j|,|u_j|)^2\le\frac1{2500},
\]

where `[ell_j,u_j]` encloses each relative radian phase. Projecting the interval carrier and error onto the horizontal space can produce a sharper enclosure. The direct anisotropic check `||Pi_K x||<=.02`, `||Pi_V x||<=.001` also remains valid and may include additional points outside the isotropic ball.

## 9. Reproduction and dependency boundary

New independent verifiers:

- `projected_frequency_bounds.py`: exact fixed-plane projectors, original frequency row bound 308, and the restricted row bounds below 7/2 and 61 for both supplied patterns.
- `crossing_scalar_certificate.py`: exact rational geometry, contraction, graph-height, derivative-conversion, moment and zero-trapping inequalities. Its JSON stores all exact polynomial coefficients and the resulting defect fraction.

Their JSON receipts are `projected_frequency_bounds_verified.json` and `crossing_scalar_certificate.json`.

The proof still takes the supplied exact crossing structure, physical action identification, normal inverse, and original derivative receipts as inputs. Their external project dependencies were not available and the supplied project Python was read only. The new work independently checks the extra algebra and all revised scalar inequalities. It removes the need to import an unspecified qualitative crossing radius, and after the equivariant obstruction argument it removes the qualitative solution-surface dependency altogether.
