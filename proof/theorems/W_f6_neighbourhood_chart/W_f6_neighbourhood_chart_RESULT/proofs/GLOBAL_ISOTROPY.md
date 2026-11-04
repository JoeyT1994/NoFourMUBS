# A full-domain 72-isotropy certificate

## Hypotheses

For each matrix in the chart, write its continuously lifted dephased phase matrix as

`P_F+V+e`,

where V lies in the four-dimensional Fourier tangent space and its horizontal Frobenius norm is at most 1/5. Assume

- `|e_ij| <=153/10000` whenever `i<3` or `j<3`;
- `|e_ij| <=11/50` when `i>=3` and `j>=3`.

These hypotheses are not established by the permutation enumeration. They must be supplied by the side/completion certificate. The companion chart certificate `verify_block_phase.py` establishes the visible bound and a uniform chord bound `|D_ij-D_tan,ij|<109/500`. The latter implies the hidden-phase hypothesis: continuity from the origin fixes the phase branch, and

`|phase difference| <=(109/500)/sqrt(1-(109/1000)^2) <11/50`.

The last rational comparison follows by squaring positive quantities.

## Theorem

**PROVED using the certified chart tube hypotheses; finite enumeration CERTIFIED.** Every Hadamard equivalence between any two matrices in this tube uses one of the 72 Fourier-stabilizing row/column permutation pairs

`r_i=u i+b`, `c_j=u j+d mod 6`, with `u=+1` or `-1`.

Row/column phase multipliers are removed by taking rectangle cross ratios. This theorem does not need an ambient Frobenius bound for the completed chart.

## Proof and exact replay

The dephased tangent kernel is

`V_ij=1_(i odd) f(j mod3)+1_(j odd) g(i mod3)`,

with `f=(0,alpha,beta)`, `g=(0,gamma,delta)`. Its horizontal norm squared is

`2(alpha^2-alpha beta+beta^2+gamma^2-gamma delta+delta^2)`.

For each of the 225 rectangles, exact rational arithmetic verifies that the squared dual norm of its phase functional on this tangent is at most 4/3. Consequently the sum of the two tangent contributions to a cross-ratio comparison is at most

`4/(5 sqrt(3))`.

For a proposed permutation pair r,c and rectangle `(i,k;j,l)`, put

`a=((i-k)(j-l)-(r_i-r_k)(c_j-c_l)) mod6`,

`gap=min(a,6-a)`.

If gap is nonzero, the two Fourier rectangle ratios differ by an angle whose distance from 2pi Z is exactly `gap*pi/3`. Let m be the number, counting both matrices, of the eight rectangle-entry occurrences that lie in a lower-right 3x3 block. The error bound gives the contradiction whenever

`4/(5 sqrt(3))+(8-m)(153/10000)+m(11/50)<gap*pi/3`.

The standard-library exact replay checks every one of the 720^2 permutation pairs. It finds a rectangle satisfying this strict inequality for every pair except precisely the 72 affine stabilizers.

- 518,228 pairs have a witnessing rectangle with all eight occurrences outside the hidden block.
- The remaining 100 nonstabilizing pairs require some hidden-block entries and are also excluded.
- Every admitted gap/count inequality has a rigorously certified margin exceeding `1/20` radians; the tight admitted case is `gap=1,m=2`.

The replay regenerates all witnesses and their digest, rather than trusting a witness table. It takes approximately one second in this environment.

```sh
python -I ../scripts/verify_global_isotropy.py
```

The witness digest from the complete enumeration is

`841b2f0db5a1b63f31b14f3a7be0895e70cb0f9e76262dd7beef36930c4a7fbb`.

## Scope

The enumeration without the hidden-block hypothesis leaves 100 nonstabilizing pairs. All 100 also satisfy every longer-cycle constraint on the graph of simultaneously visible entries. Therefore the hidden-block bound is a real additional hypothesis, not a technical convenience that can silently be omitted.

## Boundary separation for the explicit U parameter ellipsoid

Let the parameter domain be

`D={p: ||V p|| <=1/5}`,

where V is the horizontal linear tangent predictor used in the chart certificate. Suppose the established coverage theorem includes every Hadamard class at horizontal phase quotient distance at most `rho=3/20`, with the extracted small representative lying in the interior of D.

The coordinate certificate gives, for every actual Hadamard horizontal perturbation delta,

`||V E_raw(delta)|| <= ||P_T delta||+(4/3)||delta||^2+(10/3)||delta||^3+(249/24)||delta||^4`.

At `||delta||<=3/20`, this is at most

`3/20+(4/3)(3/20)^2+(10/3)(3/20)^3+(249/24)(3/20)^4`

`=251523/1280000 <1/5`,

with strict margin `4477/1280000`.

**PROVED.** Every parameter on the boundary of D maps to a class at phase quotient distance strictly greater than 3/20 from the Fourier class.

For contradiction, suppose p is on the parameter boundary and its class has phase quotient distance at most 3/20. Choose a horizontal Fourier-aligned representative `F o exp(i delta)` with `||delta||<=3/20`. By coverage it equals, after dephasing, the U-chart matrix at a parameter p' in the interior of D. The full-domain isotropy theorem above says that the equivalence from `H_U(p')` to `H_U(p)` uses a Fourier stabilizer.

A Fourier stabilizer acts on horizontal perturbations by an orthogonal row/column permutation, so its transformed horizontal perturbation delta' still has norm at most 3/20. There is no phase-winding ambiguity in extracting p. Indeed each dephased seed coordinate of the chart has magnitude at most `2/(5 sqrt(3))<6/25`, whereas the corresponding rectangle functional of delta' has magnitude at most `2||delta'||<=3/10`. Their sum is below 2pi, so equality modulo 2pi is equality over the reals. The signed-root coordinate is the gauge-invariant polynomial signature and requires no phase unwrapping.

Thus `p=E_raw(delta')`. The displayed extraction estimate gives `||V p||<1/5`, contradicting that p is on the boundary.

This proves the requested boundary bonus on the full explicit ellipsoid. It does not require an upper bound of 13/50 on the ambient Frobenius norm of every matrix in the ellipsoid image, nor invariance of the parameter ellipsoid under the nonlinear parameter action of the stabilizer.
