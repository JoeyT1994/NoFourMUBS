# Intrinsic graph theorem with explicit radius 1/4

All phases are in radians. Let `h` be the orthogonal projection of real 6-by-6 matrices onto the 25-dimensional subspace of zero row and column sums. Let `F_ij=exp(2*pi*i*j/6)`. For horizontal phase increments `z`, put `H(z)=F .* exp(i*z)`. Let `Phi(z)` consist of the real and imaginary parts of the 15 upper-triangular row inner products of `H(z)`. Thus `Phi(z)=0` is exactly the phase-Hadamard condition. There is no normalization factor in `Phi`.

Let `T=ker DPhi(0)` within the horizontal space and `N=T^perp`. Fix an orthonormal identification of `T` with R^4; write `z=t+nu`, `t in T`, `nu in N`.

## Exact linear algebra — CERTIFIED

`../scripts/verify_spectrum.py` uses only integer arithmetic and `fractions.Fraction`. It constructs `B=2 J0^T J0`, proves

`B(B-6I)(B-18I)(B-24I)=0`,

and obtains spectral multiplicities

`J0^T J0 : 0 (15), 3 (4), 9 (12), 12 (5)`.

The 11 row/column gauge directions are in the kernel. The four tangent matrices from U(13), after horizontal projection, have Gram matrix `diag([[2,-1],[-1,2]],[[2,-1],[-1,2]])`; the verifier checks they are in the kernel. Consequently they exhaust the horizontal kernel. In particular `dim T=4` and the restriction of `J0` to `N` has smallest singular value `sqrt(3)`.

## A sharper global Hessian bound — PROVED

For all real phase matrices and all real directions `u,v`,

`||D^2 Phi(z)[u,v]||_2 <= 2 sqrt(2) ||u||_F ||v||_F`.

For each column separately, subtracting the column mean from either direction changes no row difference and cannot increase its norm. If `a` is a centered real six-vector, then

`sum_{i<j}(a_i-a_j)^4 = 6 sum_i a_i^4 + 3 ||a||^4 <= 8 ||a||^4`.

Indeed `a_i^2 <= (5/6)||a||^2`, by Cauchy--Schwarz applied to `a_i=-sum_{j!=i}a_j`. Hence `sum a_i^4 <= (5/6)||a||^4`. Cauchy--Schwarz over pairs now gives

`||((a_i-a_j)(b_i-b_j))_{i<j}||_2 <= 2 sqrt(2) ||a|| ||b||`.

The second derivative is the sum, over columns, of such vectors multiplied componentwise by unit complex numbers. Minkowski followed by Cauchy--Schwarz over columns proves the claim. Real-imaginary splitting preserves the complex Euclidean norm.

It follows that `||J(z)-J(z')|| <= 2 sqrt(2)||z-z'||` globally.

## Projected normal graph — PROVED, conditional only on U's full germ theorem

Let `P` be the Moore--Penrose inverse of `J0` restricted to its image, with range `N`. Thus `P J0` is the orthogonal projection onto `N`, and `||P||=1/sqrt(3)`.

For each tangent vector `||t|| <= r=1/4`, solve

`P Phi(t+nu)=0`, `||nu|| <= n=11/200`.

Use the map `K_t(nu)=nu-P Phi(t+nu)`. Set

`R^2=r^2+n^2=2621/40000`, `b=sqrt(2/3)`, `q=2bR`.

Taylor's theorem gives `||K_t(nu)||<=b(||t||^2+||nu||^2)<=bR^2<n`. The derivative in `nu` has norm at most `2bR=q<21/50`. These strict inequalities give a unique fixed point, analytic on an open neighborhood of the entire closed tangent ball.

To recover all 30 equations, use precisely U's supplied local full-Hadamard germ theorem: the local genuine four-dimensional Hadamard chart projects diffeomorphically onto a neighborhood of zero in `T`. Its normal component is in the above tube, so uniqueness identifies it with this projected graph. Thus each component of the real-analytic function `t -> Phi(t+nu(t))` vanishes on an open neighborhood of zero. The real-analytic identity theorem on the connected tangent ball makes it vanish everywhere. No statement about ranks at other points, no global classification, no MUB atlas, and no Stage C is used.

The dependency on U's full germ theorem is essential: a tangent kernel and a projected solution alone would not establish the remaining orthogonality equations.

## Coverage and uniqueness — PROVED

If two full Hadamard phase matrices `z_1=t+nu_1`, `z_2=t+nu_2` have the same tangent coordinate and `||z_i||<=R_G`, then averaging `J` along their joining segment gives

`0=J0(nu_1-nu_2)+E(nu_1-nu_2)`, `||E||<=2sqrt(2)R_G`.

Hence they coincide whenever `R_G<sqrt(3/8)`. In particular `R_G=3/5` is valid.

Any Hadamard class with phase quotient distance `d([K],[F])<=1/4` has an aligned horizontal lift `z` of norm at most `1/4`. Its tangent part has norm at most `1/4`, and the constructed graph at that tangent point has norm below `32/125<3/5`. The graph uniqueness argument identifies the two. Thus the intrinsic graph covers every such class.

This is a metric ball statement for the phase Frobenius metric after minimizing over row/column phases, permutations, and phase windings. It is not a Frobenius metric on complex entries.

## Quantitative derivatives — PROVED

For the horizontal graph `G(t)=t+nu(t)`, all normal derivatives take values in `N`. Differentiating the projected equation and using `P J0=projection_N` yields

`||Dnu(t)[a]|| <= q ||DG(t)[a]||`.

Orthogonality of tangent and normal then gives

`||DG|| <= 1/sqrt(1-q^2) < 10/9`, `sigma_min(DG)>=1`.

The normal part of `P J(G)` is invertible with inverse norm at most `1/(1-q)`. A second differentiation yields

`||D^2 G|| <= sqrt(8/3)/((1-q)(1-q^2)) < 7/2`.

These bounds apply to Euclidean tangent coordinates and horizontal phase output. They are not bounds for the raw U coordinates, nor for an ordinary differentiable coordinate system on the singular finite quotient.

## Explicit isolation of the 72-element isotropy — PROVED

For any permutation pair not stabilizing the dephased Fourier matrix, some dephased 2-by-2 cross ratio changes. Both cross ratios are sixth roots of unity, so their circular phase difference is at least `pi/3`. The corresponding linear cross-ratio functional on horizontal phase differences has Euclidean norm 2. Therefore the distance from `F` to every nonstabilizing permuted Fourier center is at least `pi/6`.

Every point of the graph has horizontal norm below `32/125`. Since `64/125 < pi/6`, equivalent graph points can only be related by a Fourier stabilizer. The stabilizer consists of the 72 affine permutation pairs specified in U(16). On local horizontal lifts these act linearly and orthogonally, preserving the tangent graph by uniqueness. Thus the intrinsic graph is injective modulo precisely that action.

For the boundary `||t||=1/4`, the horizontal norm is at least `1/4`. Stabilizers preserve this norm, while a nonstabilizing permutation cannot bring the class within distance `pi/6-32/125 > 1/4` of Fourier. Alternative integer phase lifts cannot do so either: any nonzero horizontal winding lattice vector has a nonzero integer cross ratio, giving norm at least `pi`. Consequently the quotient distance of the boundary is at least `1/4`.

## Fixed-coordinate assembly

This component note establishes the auxiliary intrinsic graph. The requested fixed U-coordinate domain, its existence certificate, the coverage transfer, the full-domain isotropy census, and boundary separation are assembled in `../REPORT.md`, Sections 3 through 6. The intrinsic chart is not substituted for the fixed chart in the final result.
