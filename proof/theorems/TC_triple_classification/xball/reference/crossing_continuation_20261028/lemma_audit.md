# Crossing lemma audit and two structural improvements

## Scope and status

**PROVED:** the analytic implications and improvements below. Numerical values quoted from supplied receipts remain conditional on the recorded exact-structure and Arb derivative computations. The supplied project `.py` files were read but not executed or imported. Independent scalar comparisons use exact rational arithmetic only.

## 1. The statement needs the complete fixed spaces

Replace “each `K_i` is a two-dimensional fixed plane of `P_i`” by

\[
K_i=K\cap\operatorname{Fix}(P_i),\qquad
K=K_0\mathbin{\perp\!\oplus}K_1.
\]

A two-dimensional subplane inside a larger fixed space would not suffice: the projected fixed solution surface might curve within that larger space instead of lying in `K_i`. The supplied `crossing_structure.py` implements the stronger condition. Its group average `(I+P_i+P_i^2)/3` projects the full four-dimensional kernel onto its complete fixed subspace; it checks dimension two and checks the joint fixed space is zero. Thus this is a repair of the written hypothesis, not a newly discovered failure of the recorded calculation.

The code relies on the imported horizontal projector `W` being the orthogonal projector onto the 55-dimensional complement of the 17 continuous gauge directions. Its checks of `P_i W=W P_i`, the lifted kernel dimension, and `JN=0` are consistent with that interpretation. The definitions and arithmetic of the imported projector and Fourier term list are outside this attachment.

## 2. The normal graph argument is valid

Write `H=AF`, with `A` mapping into the invariant normal space `V`. The group average

\[
\bar A=\frac19\sum_g P_g A_0Y_g^{-1}
\]

has range in `V` and intertwines the actions. The code uses orthogonality to write `Y_g^{-1}=Y_g^T`. Conceptually `A_0` is a fixed rational/binary matrix, projected onto the exact `V`; Arb operations enclose that one exact averaged map. Interval endpoints themselves need not satisfy symbolic equivariance.

The defect `d` gives the lower bound `||AJy|| >= (1-d)||y||` on `V`. The derivative difference on the ambient `R` ball is at most `hR`; hence `y -> y-H(k+y)` has contraction constant `q=d+hR`. Its value at `y=0` has norm at most `h||k||²/2`. The stated image inequality is sufficient. The strict slack in both the image condition and `rho²+eta²<R²` gives an analytic graph on a neighborhood of the entire closed kernel ball. Uniqueness gives its equivariance.

All normal inverse, first graph derivative, and second graph derivative estimates in the supplied lemma are valid with the stated Euclidean operator norms. In particular orthogonality justifies `||D(k+phi(k))|| <= sqrt(1+t²)`; no factor `1+t` is needed.

## 3. The qualitative germ input is adequate at its own representative

Sections 4.1–4.4 of `prior_local_CHECKPOINT.md` construct genuine analytic two-dimensional solution surfaces, prove immersion, and state that the indicated ray permutations persist along them. This is the input needed by the original proof, considerably stronger than a tangent-cone calculation. Passing from dephased coordinates to the invariant horizontal quotient makes those fixed-permutation actions the linear actions in the new lemma.

The real-analytic identity theorem is used correctly: projection of a fixed surface lies in the complete fixed kernel plane, its differential is an isomorphism, and normal uniqueness identifies the local surface with the implicit graph. The restriction of the residual to that plane therefore vanishes on an open germ and hence on the connected disk where the graph is analytic. No numerical radius of the original germ is required.

There is a provenance distinction: the prior document uses one representative with anchors 0 and 2, whereas the two current receipts use anchors 0 and 1. The missing `exact_centres.json` or a corresponding action-preserving equivalence certificate would connect them explicitly. Alternatively, the earlier recognition theorem plus smoothness of the complementary-circulant construction supplies a fixed two-dimensional germ at each of the current physical symmetries directly; rank 51 excludes the isolated product alternative.

The next section removes the need for this qualitative transfer altogether for the classification implication.

## 4. Equivariant obstruction removes the qualitative surface dependency — PROVED

Let `W=K_0 tensor K_1`, endowed with its Euclidean tensor norm, and let

\[
S_g=(P_g|_{K_0})\otimes(P_g|_{K_1}).
\]

Because the actions commute, both planes are group invariant. Let

\[
M(u\otimes v)=D^2F(0)[u,v].
\]

Covariance of `F` gives `Y_gM=MS_g`. Starting with any map `B` satisfying `BJ=0` and `BM=I_W`, define

\[
\boxed{\bar B=\frac19\sum_g S_g^{-1}B Y_g.}
\]

Then

\[
\bar B J=0,\qquad \bar B M=I_W,\qquad
\bar B Y_g=S_g\bar B.
\]

The existing derivative bounds do not increase under this averaging. Indeed, covariance identifies

\[
D^r(Y_g F)(x)[h_1,\ldots,h_r]
=D^rF(P_gx)[P_gh_1,\ldots,P_gh_r],
\]

and all `P_g,S_g` are orthogonal. Thus the bound at zero for `D²(BF)` and the uniform bound for `D³(BF)` on the invariant ball also bound the averaged residual `bar G=bar B F`.

The representation `W` has no `P_i`-fixed vectors: one tensor factor is the fixed plane `K_i`, while the other is a two-dimensional order-three representation with no fixed vectors. The equivariant graph satisfies

\[
k\in K_i\quad\Longrightarrow\quad k+\phi(k)\in\operatorname{Fix}(P_i).
\]

Therefore

\[
\boxed{\bar G(k+\phi(k))=0\quad(k\in K_0\cup K_1).}
\]

This supplies exactly the axis vanishing needed for double integration, using representation theory alone. It does **not** assert that every point of either graph axis solves all 96 equations; that converse is unnecessary. For an actual zero of `F`, the mixed obstruction forces one axis, the graph equivariance gives an actual order-three symmetry, and recognition classifies the triple.

Consequently the quantitative classification theorem needs no qualitative surface germ or analytic identity extension once `B` is averaged as above.

In this formulation `C³` regularity suffices: the argument uses a differentiable implicit graph and double integration, not analytic continuation.

There is also a reason the code's `B` is already equivariant. After orthonormal conversion it is the unique least-norm linear map satisfying `BJ=0`, `BM=I`. Orthogonal conjugation `B -> S_g^{-1}B Y_g` preserves these constraints and the Frobenius norm, so uniqueness fixes `B`. Explicit averaging is a convenient way to state the theorem without relying on this extra characterization.

## 5. The factor two can be removed — PROVED

Let `f(k)=bar G(k+phi(k))`, and suppose the supplied Hessian comparison gives

\[
\|D^2f(k)-D^2\bar G(0)|_{K\times K}\|\leq\epsilon.
\]

Axis vanishing and double integration give directly

\[
f(u,v)-u\otimes v
=\int_0^1\!\int_0^1
\left(D^2f(su,tv)-D^2\bar G(0)\right)[u,v]\,ds\,dt.
\]

Thus

\[
\boxed{\|f(u,v)\|\geq(1-\epsilon)\|u\|\|v\|.}
\]

Only `epsilon<1` is required. Bounding all four columns of `C-I` and proving `C` invertible on the entire four-dimensional tensor space loses a factor two. The argument only needs nonvanishing on decomposable tensors `u tensor v`.

With unchanged derivative constants, the receipt's next trial `R=3/512` has `epsilon<0.981` and passes normal contraction. Hence the existing scalar bounds already establish twice the recorded ambient radius.

## 6. Zero trapping converts the product domain into a much larger ball — PROVED

An actual zero `x=k+y` with `||x||<=r<=R` obeys

\[
0=H(x)=AJy+\operatorname{Rem}(x).
\]

Therefore

\[
\|y\|\leq\frac{h r^2}{2(1-d)}.
\]

If the centre Hessian and uniform third derivative bounds are retained separately, Taylor's formula gives the sharper bound

\[
\boxed{\|y\|\leq\frac{h_2r^2/2+h_3r^3/6}{1-d}.}
\]

For any `r<=rho` whose displayed bound is at most `eta`, every actual zero in the ambient `r` ball lies in the certified product domain. Thus the receipt's inscribed-ball radius `eta` is unnecessarily small for classifying zeros. This is an exclusion argument for actual zeros; it does not falsely claim geometric inclusion of the whole `r` ball in the product domain.

Using rational upper bounds common to both patterns,

\[
d=2\cdot10^{-15},\quad h_2=2.333333335,\quad
h_3=62.916216922,\quad g_2=7.347996708,\quad
g_3=104.763770505,
\]

exact rational evaluation yields:

| Ambient derivative radius | Kernel radius | Normal radius | `q` | `epsilon` | Normal image bound | Zero trapping at kernel radius |
|---|---|---|---:|---:|---:|---:|
| `3/1024` | `21/8192` | `3/8192` | 0.007375952 | 0.473435228 | 0.000010974 | 0.000007844 |
| `3/512` | `21/4096` | `3/4096` | 0.015831932 | 0.980431656 | 0.000047108 | 0.000032080 |

The rational bounds strictly exceed every corresponding Arb interval endpoint in both supplied receipts. The new second row is therefore a proved scalar consequence of those receipts, not a new project-code replay.

The product allocation can also be improved without changing `epsilon`. At

\[
R=\frac3{512},\qquad
\rho=\frac{4095}{4096}R=\frac{12285}{2097152},\qquad
\eta=\frac{R}{64}=\frac3{32768},
\]

one has `rho²+eta²<R²`, normal image below `0.000047810`, and zero-trapping bound below `0.000042143`, both strictly below `eta=0.000091552734375`. Thus

\[
\boxed{r_{\rm isotropic}=\frac{12285}{2097152}\approx0.00585794449}
\]

is already justified by the original constants and the factor-two improvement, conditional on their recorded certification.

The horizontal norm is inherited from the 72 phase entries. A standard 55-coordinate dephased displacement embeds isometrically into those entries, and the subsequent horizontal orthogonal projection is nonexpansive. Consequently the same isotropic radius is valid for a dephased Euclidean ball after correct shared gauge and phase-lift alignment.

## 7. Derivative code audit

The signed symmetric Hessian flattening uses `sqrt(2)` on off-diagonal entries. This is correct: evaluating on `h,k` contracts against the symmetric tensor `(h tensor k+k tensor h)/2`, whose norm is at most `||h||||k||`.

The third derivative uses a coefficient matrix bounded entrywise in absolute value by a nonnegative amplitude matrix, and a frequency tensor matrix with Gram entries `(ell_i·ell_j)^3`. Entrywise domination gives the required spectral-norm domination; the absolute row-sum bound is a valid upper bound on the Gram spectral norm. No sampling is being promoted to a uniform derivative bound.

The orthonormal basis conversion is correct. If `N_i L_i` is the orthonormal basis, the mixed columns transform by `L_0 tensor L_1` and `B` must transform by its inverse on the left, exactly as in the code.

The corresponding supplied source hashes and receipt hashes agree for all five attached files referenced by the radius receipt: the structure receipt, prior checkpoint, radius source, structure source, and quantitative plan. `exact_centres.json`, bootstrap dependencies, and the complete all-K receipt are absent from this attachment, so no independent claim is made to have replayed their calculations or the all-K inclusion.

## 8. Independent exact restricted-frequency certificate

The new standalone `projected_frequency_bounds.py` reads the fixed-plane bases from the supplied structure JSON and reconstructs their orthogonal projectors as

\[
\Pi_i=N_i(N_i^TN_i)^{-1}N_i^T.
\]

It uses exact arithmetic in `Q(sqrt(3))`, with all projector entries sharing denominator 360. It derives the standard 720 Fourier frequencies of the coherent equations: 180 complex orthogonality terms and 540 cosine terms in the mixed squared moduli. No project source is executed or imported.

For unrestricted cubic frequency tensors the Gram matrix has entries

\[
(\ell_p\cdot\ell_q)^3,
\]

and its maximum absolute row sum is independently reproduced as exactly 308. For the three restricted tensors, the Gram entries are respectively

\[
(\ell_p\cdot\ell_q)(\ell_p\cdot\Pi_0\ell_q)(\ell_p\cdot\Pi_1\ell_q),
\]
\[
(\ell_p\cdot\ell_q)(\ell_p\cdot(\Pi_0+\Pi_1)\ell_q)^2,
\]
\[
(\ell_p\cdot\ell_q)^2(\ell_p\cdot(\Pi_0+\Pi_1)\ell_q).
\]

For both supplied patterns the exact maximum absolute row sums are

| Restricted slots | Exact maximum row sum | Convenient strict upper bound |
|---|---|---:|
| `E,K0,K1` | `72/25+(16/45)sqrt(3)` | `7/2` |
| `E,K,K` | `3362/225` | `15` |
| `E,E,K` | `838/15+(8/3)sqrt(3)` | `61` |

Using the full ambient slot in place of `E` only enlarges these estimates. The checker records the input SHA-256, matching the structure hash in the supplied radius receipt, and proves the strict comparisons by integer sign tests for `a+b sqrt(3)`.

The original coefficient-amplitude estimates therefore imply

\[
\|D^3H[E,K_0,K_1]\|<7,\quad
\|D^3G[E,K_0,K_1]\|<12,
\]
\[
\|D^3H[E,E,K]\|<29,\quad
\|D^3G[E,E,K]\|<47.
\]

For example `63²(7/2)/308<7²` and `105²(61)/308<47²`; all four conversions are rational comparisons. These bounds are uniform in the phases because the coefficient-amplitude argument is uniform. Equivariant averaging of `B` preserves them, since the group preserves each constrained input subspace.

The separate `larger_crossing.md` and `crossing_scalar_certificate.py` use these estimates and integrated, rather than pointwise, mixed-defect bounds to prove the radius `1/50`. I independently checked the scalar derivation: the mixed graph Hessian expansion, the improved bound on `DG` in the normal slot, and all moment inequalities are valid. For the latter, `r(s,t)^2=s²||u||²+t²||v||²`; Jensen gives `E r<=rho/sqrt(3)`, and convexity gives `E r^n<=rho^n/(n+1)` for every integer `n>=2`.
