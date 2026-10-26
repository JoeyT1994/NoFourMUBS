# Exact fixed-coordinate error certificates

This file supplements `INTRINSIC_GRAPH.md`. Its finite checks are in the standard-library `../scripts/verify_coordinates.py`, which imports `../scripts/verify_spectrum.py`.

## Coordinates and the cancellation used in the bounds

Write the scaled U coordinates as `q=(u1,u2,u3,tau)`, with `tau=y/24=-S(B)/12`. Let `A=Dq(0)` on horizontal phase increments, let `T` be the four tangent columns of U(13), and put

`V=T(AT)^{-1}`, `B=VA`, `v=V[:,3]`, `W=V^T V`.

Thus `AV=I`, `Vq` belongs to the tangent space, and `V A t=t` for every tangent vector. In the raw U parameters `p=(u1,u2,u3,y)`, the corresponding ellipsoid coordinate is `w=V diag(1,1,1,1/24) p`, a vector in the tangent space.

The exact output Gram matrix is

`W=[[1,-1/2,-1/2,0],[-1/2,7/4,1/4,0],[-1/2,1/4,7/4,0],[0,0,0,1]]`.

In particular `||v||=1`. Let `Jplus` be the normal pseudoinverse of the Fourier orthogonality derivative. Define, for arbitrary horizontal increments `z`,

`E(z)=-B Jplus (Phi(z)-J0 z)-v (S(z)-S(0)-DS(0)z)/12`.

For an actual point `z=t+nu(t)` on the constructed Hadamard graph, `Phi(z)=0` and `Jplus J0 z=nu`; therefore

`V q(z)-t=E(z)`.

This uses cancellation between the orthogonality correction and the nonlinear signature term. Bounding them separately is substantially weaker.

## Exact spectral and tensor calculations — CERTIFIED

The verifier reconstructs the Fourier orthogonality derivative and the signature polynomial from their definitions. It uses no numerical arrays, external scientific package, or precomputed coefficient list.

1. `||B Jplus||<1`. In four tangent output coordinates, this is equivalent to positivity of

   `W^{-1}-A (J0^T J0)^+ A^T`.

   Its exact LDL pivots are

   `28/27, 2743/12096, 682/8229, 5857/6696`.

   Its Frobenius squared norm is `113/72`.

2. On horizontal input directions, the tensor `E''(0)` is `sqrt(3)` times a rational tensor. Its flattened operator norm is below `8/3`, hence so is its bilinear operator norm. Positivity of the corresponding four-by-four matrix has exact LDL pivots

   `214/27, 10075/5778, 65752/90675, 4735595/1183536`.

   Its Frobenius squared norm is `589/48`.

3. The tensor `E'''(0)` on horizontal inputs is rational. Its exact Frobenius squared norm is `17135/48<400`. Thus its multilinear operator norm is below 20. The calculation uses the identity

   `<c tensor a^3,d tensor b^3>=(c^T W d)(a dot b)^3`

   to avoid forming a dense four-by-36-by-36-by-36 tensor.

The horizontal-input qualification is necessary. The orthogonality residual transforms covariantly under row phases away from its zero set, so its higher derivatives on arbitrary ambient phase directions need not have the same bounds.

## Global third and fourth derivative bounds — PROVED with CERTIFIED constants

The pair-product argument in `INTRINSIC_GRAPH.md`, multiplied by one or two additional bounds `|u_i-u_j|<=sqrt(2)||u||`, proves globally

`||Phi'''||<=4`, `||Phi''''||<=4sqrt(2)`.

The signature has the Laurent expansion `Psi=sum c_k exp(i k dot phi)`. The verifier constructs its 55 nonzero integer terms and proves

`M_abs=sum |c_k| k k^T`, `M_abs^2=162 M_abs`, `max ||k||^2=18`.

Since `M_abs` is positive semidefinite by construction, `||M_abs||=162`. Weighted Cauchy--Schwarz gives

`||S'''||<=162 sqrt(18)`, `||S''''||<=162*18`.

For example, bound one of the three factors `|k dot u|` by `sqrt(18)||u||`, then apply weighted Cauchy--Schwarz to the remaining pair. The fourth derivative uses two such factors.

Consequently

`||E'''||<4+162sqrt(18)/12<62`,

and

`||E''''||<4sqrt(2)+162*18/12<249`.

Taylor's theorem, using `E(0)=E'(0)=0`, gives the explicit improved bound

`||E(z)|| <= (4/3)||z||^2+(10/3)||z||^3+(249/24)||z||^4`.

A coarser bound, requiring no third derivative at zero, is

`||E(z)|| <= (4/3)||z||^2+(62/6)||z||^3`.

## Sharp normal envelope on the constructed graph — PROVED

Put `b=sqrt(2/3)` and `r=||t||`. The projected equation and Taylor's theorem imply

`||nu|| <= b(r^2+||nu||^2)`.

Since the constructed branch has `||nu||<=11/200`, it lies below the smaller root of this quadratic, for all `r<=1/4`. Thus

`n_*(r)=[1-sqrt(1-(8/3)r^2)]/(2b)`,

`||nu(t)||<=n_*(r)`,

`||t+nu(t)||<=R_*(r)=sqrt[(3/4)(1-sqrt(1-(8/3)r^2))]`.

These bounds also hold along every radial path `t -> s t`, with `r` replaced by `s r`.

Numerical values for orientation only:

| tangent radius | normal envelope | ambient envelope |
|---|---:|---:|
| 0.13 | 0.013957864 | 0.130747168 |
| 0.14 | 0.016218093 | 0.140936250 |
| 0.15 | 0.018655331 | 0.151155620 |
| 0.20 | 0.033580591 | 0.202799547 |

## Exact enclosure useful for coverage at rho=3/20 — CERTIFIED

At tangent radius `rho=3/20`, use the rational normal bound `187/10000` and ambient bound `Rrho=189/1250`. The verifier checks the strict contraction enclosure inequality and `rho^2+n^2<Rrho^2`. Then

`||V q(z)|| <= rho+||E(z)||`

`<= 3/20 + 926299456803/19531250000000`

`= 3855986956803/19531250000000 < 1/5`.

Thus the U coordinates extracted from every graph point with tangent norm at most 0.15 lie strictly inside the explicit tangent-metric ellipsoid `||Vq||<=0.2`.

This is a coverage-side coordinate enclosure. Existence and uniqueness of the U solve for every point of that ellipsoid is a separate requirement; this certificate alone does not prove that requirement or global injectivity of the U extraction.
