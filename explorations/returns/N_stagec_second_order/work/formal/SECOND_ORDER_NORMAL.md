# N2: second-order normal bound, with units and branch conditions

**Status: PROVED analytically.** The inequality proposed in the archived
`MILESTONE1.md` §5.2 is correct in **radian coordinates**. Its use as a small
normal-radius bound requires the explicit branch check below. No chart existence,
numerical chart coefficients, or radius 0.12–0.16 certification is asserted here.
The numerical chart-residual constants quoted in the archive are measurements,
not consequences of this theorem.

## 1. Conventions and two global estimates

Let `P,x,v` be real 6 by 6 matrices, in radians. Write

\[
 Z(P)_{ac}=e^{iP_{ac}},\qquad
 \Phi_P(x)=Z(P+x)Z(P+x)^*-6I,
\]

and equip its Hermitian zero-diagonal output with

\[
 \|A\|_{\rm out}=\left(\tfrac12\sum_{a,b}|A_{ab}|^2\right)^{1/2}.
\]

This is the norm in the supplied `NormalBound.lean`. It equals the Euclidean
norm of the 30 real coordinates of the 15 upper-triangular complex entries.
All norms on phase displacements below are Frobenius norms. The Jacobian is

\[
 (J_{P+x}v)_{ab}
 =\sum_c Z(P+x)_{ac}\overline{Z(P+x)_{bc}}
              i(v_{ac}-v_{bc}).
\]

Every norm or error upper bound used below is assumed **nonnegative**. This
includes `d0,e0,e1,e2,e3,j_T,U,H,HN,HT,nold,Z,ℓ` and every phase/parameter
radius. The lower spectral bounds satisfy `σ>0` and, whenever the Gram bound
is used, `gmin>0`. These sign conditions are needed when substituting norm
bounds into the inequalities and selecting the smaller quadratic root.

The supplied theorem `outNorm_rem_le`, applied at the arbitrary base `P+x`, gives

\[
 \boxed{\ \|\Phi_P(x+v)-\Phi_P(x)-J_{P+x}v\|_{\rm out}
          \le\sqrt3\,\|v\|^2.\ } \tag{N2.1}
\]

For completeness, the Jacobian perturbation bound is

\[
 \boxed{\ \|(J_{P+x}-J_P)v\|_{\rm out}
          \le2\sqrt3\,\|x\|\|v\|.\ } \tag{N2.2}
\]

Here is a direct proof with no unspecified derivative constant. Set

\[
 D_{ab}(v)=\sum_c(v_{ac}-v_{bc})^2.
\]

The bound `|exp(it)-1|≤|t|` and Cauchy–Schwarz give

\[
 |((J_{P+x}-J_P)v)_{ab}|
 \le\sum_c|x_{ac}-x_{bc}|\,|v_{ac}-v_{bc}|
 \le\sqrt{D_{ab}(x)D_{ab}(v)}.
\]

For every real six-row matrix, without any horizontality assumption,

\[
 0\le D_{ab}(x)\le2\|x\|^2,\qquad
 \sum_{a,b}D_{ab}(v)
 =12\|v\|^2-2\sum_c\left(\sum_a v_{ac}\right)^2
 \le12\|v\|^2.
\]

Consequently the squared output norm is at most
`(1/2)·2||x||²·12||v||²=12||x||²||v||²`, proving (N2.2).
The same calculation with

\[
 (B_P(v,w))_{ab}
 =-\sum_c Z(P)_{ac}\overline{Z(P)_{bc}}
           (v_{ac}-v_{bc})(w_{ac}-w_{bc})
\]

proves `||B_P(v,w)||out≤2√3||v||||w||` for the symmetric Hessian.

## 2. The second-order normal inequality

Let the horizontal phase space split orthogonally as `H=Tspace⊕N`. Suppose

\[
 \|J_P n\|_{\rm out}\ge\sigma\|n\|\quad(n\in N),\qquad
 \|J_P t\|_{\rm out}\le j_T\|t\|\quad(t\in Tspace).
\]

Any certified full operator norm of `J_P` can be used for `j_T`, as in the
archive. A bound on the tangent restriction is usually smaller. If the frame
matrix is `T`, `G=TᵀT`, `||J_PT||op≤j1`, and `λmin(G)≥gmin>0`, one may take
`j_T=j1/√gmin`; `j1` itself need not be an operator bound on the tangent subspace
when the columns of `T` are not orthonormal.

Choose **any** chart proposal

\[
 x=\delta_0(\eta)=g_0+T\eta+\tfrac12q(\eta,\eta),
\]

with coefficients in the horizontal phase space, and certified bounds `||x||≤d0`
and `||Φ_P(x)||out≤e3`. No exact tangent or quadratic-jet equation is imposed
on these coefficients. If a numerical chart has additional components outside
the horizontal space, project them away with a certified error or include them
in a larger leakage complement and bound the Jacobian on that complement.
Suppose `δ` is horizontal and `Φ_P(δ)=0`, and decompose

\[
 \nu=\delta-x=\nu_N+\nu_T,\qquad z=\|\nu_N\|,\quad t=\|\nu_T\|.
\]

Then

\[
 \boxed{
 (\sigma-2\sqrt3\,d_0)z
 \le e_3+(j_T+2\sqrt3\,d_0)t+\sqrt3\,\|\nu\|^2.
 } \tag{N2.3}
\]

**Proof.** Put `Jx=J_{P+x}` and let `R=Φ_P(x+ν)-Φ_P(x)-Jxν`. Since
`Φ_P(x+ν)=0`, one has `Jxν_N=-Φ_P(x)-Jxν_T-R`. Therefore

\[
 \begin{aligned}
 \sigma z
 &\le\|J_P\nu_N\|_{\rm out}\\
 &\le\|J_x\nu_N\|_{\rm out}+2\sqrt3\,d_0z\\
 &\le e_3+\|J_x\nu_T\|_{\rm out}+\sqrt3\|\nu\|^2
           +2\sqrt3\,d_0z\\
 &\le e_3+(j_T+2\sqrt3\,d_0)t+\sqrt3\|\nu\|^2
           +2\sqrt3\,d_0z.
 \end{aligned}
\]

Rearrangement proves (N2.3). This proof requires no equation satisfied by the
coefficients of `q`; all chart defects must be included in `e3`. ∎

## 3. A completely explicit small-root corollary

Assume a certified leakage bound `t≤ℓ`, a certified a-priori bound `z≤Z`, and

\[
 \alpha=\sigma-2\sqrt3\,d_0>0,\qquad
 b=e_3+(j_T+2\sqrt3\,d_0)\ell+\sqrt3\ell^2.
\]

Since the decomposition is orthogonal, `||ν||²=z²+t²`. Thus (N2.3) implies

\[
 \alpha z-\sqrt3 z^2\le b. \tag{N2.4}
\]

The following sufficient checks select the small branch:

\[
 \boxed{\quad 2\sqrt3 Z<\alpha,
 \qquad D=\alpha^2-4\sqrt3 b\ge0.\quad} \tag{N2.5}
\]

Under them,

\[
 z\le z_*=
 \frac{\alpha-\sqrt D}{2\sqrt3}
 =\frac{2b}{\alpha+\sqrt D},\qquad
 \boxed{\ \|\nu\|\le n_3=\sqrt{z_*^2+\ell^2}.\ } \tag{N2.6}
\]

The rationalized expression is preferable numerically, with certified downward
rounding in the denominator and upward rounding in the result. `z_*+ℓ` is a
weaker alternative requiring no final square root. The scalar function
`αz-√3z²` is increasing below its vertex `α/(2√3)`; (N2.5) places the actual
`z` there, and (N2.4) then places it at or below its smaller root. Merely checking
`D≥0` does **not** select the smaller root.

An appropriate `Z` follows from the existing first-order normal bound. With

\[
 \eta=(T^\top T)^{-1}T^\top\delta,\qquad
 h(\eta)=g_0+\tfrac12q(\eta,\eta),
\]

the old residual `νold=δ-Tη` lies in `N`. If `||νold||≤nold`,
`||Π_N h||≤HN`, and `||Π_T h||≤HT`, then

\[
 Z=n_{\rm old}+H_N,\qquad \ell=H_T
\]

are valid. The identity `ν_T=-Π_T h` is exact. Finite-precision coefficient
errors can invalidate a claimed zero tangent leakage and must be included in
`HT` or checked by exact projection. Subdivision alone does not make `e3` or
`n3` cubic in a smaller box width: a new local chart and new residual bounds are
needed for that conclusion.

## 4. An explicit residual certificate for a quadratic chart

Taylor expansion at `P` has a cubic remainder satisfying

\[
 \left\|\Phi_P(v)-\Phi_P(0)-J_Pv-\tfrac12B_P(v,v)\right\|_{\rm out}
 \le\sqrt{\tfrac23}\,\|v\|^3. \tag{N2.7}
\]

Indeed, each entry is at most `D_ab(v)^(3/2)/6` by the scalar exponential
remainder and `||s||₃≤||s||₂`. Its squared output norm is at most

\[
 \tfrac1{72}\sum_{a,b}D_{ab}(v)^3
 \le\tfrac1{72}(2\|v\|^2)^2(12\|v\|^2)
 =\tfrac23\|v\|^6.
\]

For `g0=0`, write `u=Tη`, `h=q(η,η)/2`, and certify, over the parameter region,

\[
 \|u\|\le U,\quad\|h\|\le H,\quad
 \|\Phi_P(0)\|_{\rm out}\le e_0,\quad
 \|J_Pu\|_{\rm out}\le e_1,\quad
 \|J_Ph+\tfrac12B_P(u,u)\|_{\rm out}\le e_2.
\]

The explicit choice

\[
 \boxed{\ e_3=e_0+e_1+e_2+2\sqrt3 UH+\sqrt3 H^2
               +\sqrt{\tfrac23}(U+H)^3\ } \tag{N2.8}
\]

is valid by expanding `B_P(u+h,u+h)`. A sharper Taylor-model or exact
coefficient enclosure can replace this bound. If the constant defect and the
first two jets cancel exactly, `e0=e1=e2=0`, then `U=O(rH)` and `H=O(rH²)`
give `e3=O(rH³)`.

The further conclusion **`n3=O(rH³)` requires tangent leakage
`ℓ=O(rH³)` as well**, a positive lower bound on `α`, bounded `j_T` and `d0`,
and the small-branch checks (N2.5). Under these conditions `b=O(rH³)`, the
rationalized formula gives `z_*=O(rH³)`, and (N2.6) then gives the claimed
cubic total residual. An important sufficient case is that `g0` and every
coefficient of `q` lie **exactly in N**, with `η` chosen by the exact
orthogonal projection described in Section 3: then `ℓ=0`.

A cubic chart defect alone does not control this leakage. In particular,
even with perfect jets, a tangential quadratic chart correction can give
`ℓ=O(rH²)`. Since the certified radius in (N2.6) satisfies `n3≥ℓ`, that
formula then supplies only a quadratic total-radius estimate in general.
Coefficient rounding must therefore preserve exact normality or contribute
an explicit leakage allowance; it cannot be omitted on the grounds that
the chart defect is cubic.

Approximate jet cancellation leaves explicit constant, linear, or quadratic
terms. For nonzero `g0`, rebase the expansion at `P+g0`, while bounding the
Jacobian/spectral data at that base, or include every resulting constant
and lower-degree term.

## 5. Units: the archive's constants are not cycle constants

The archive and `BallRecord.normal_bound(R)` use radians; `stagec.py` uses
cycles after dividing radii by `2π`. Applying (N2.3) directly to cycle norms
with the same constants is incorrect.

Let `Φc(v)=Φ_{2πP}(2πv)` be the unscaled Gram defect in cycle coordinates.
Then `Jc=2πJrad`, and the corresponding bounds are

\[
 \|\Phi_c(x+v)-\Phi_c(x)-J_c(x)v\|_{\rm out}
 \le4\pi^2\sqrt3\|v\|^2,
\]

\[
 \|(J_c(x)-J_c(0))v\|_{\rm out}
 \le8\pi^2\sqrt3\|x\|\|v\|.
\]

Thus the cycle version of (N2.3) is

\[
 (\sigma_c-8\pi^2\sqrt3 d_{0,c})z_c
 \le e_3+(j_{T,c}+8\pi^2\sqrt3 d_{0,c})t_c
       +4\pi^2\sqrt3\|\nu_c\|^2,
\]

where `σc=2πσrad` and `jT,c=2πjT,rad`. The simplest implementation computes
N2 entirely in radians and then passes `n3/(2π)` to Stage C. For a dimensionless
frame `T`, a radian chart coefficient `qrad` becomes `qcyc=2π qrad` when
`ηrad=2πηcyc`; this factor must also be accounted for.

## 6. The extra N1 polynomial and its additional remainder

This subsection uses **cycles**. For the N1 column quadratic form write
`Q_i(w)=πwᵀH_iw`, with `||H_i||op≤1`. Let

\[
 w_{1,i}=x-T_i\eta,\qquad h_i=\tfrac12q_i(\eta,\eta),\qquad
 w_{0,i}=w_{1,i}-h_i.
\]

For a chart with `g0=0`, the degree-at-most-two part of the weighted polynomial is

\[
 \boxed{\quad
 p_2(d,\eta)=\sum_i y_i\big[J_iw_{1,i}+Q_i(w_{1,i})-J_ih_i\big].
 \quad} \tag{N2.9}
\]

The new quadratic coefficient is **`-Σ_i y_i J_i h_i`**. Substitution of the
quadratic chart into `Q_i` also produces cubic and quartic terms:

\[
 \sum_i y_i\big[-2\pi w_{1,i}^{\!\top}H_i h_i
                         +\pi h_i^{\!\top}H_i h_i\big].
\]

If `||h||F≤H` and `W1(y²)≥Σ_i y_i²||w1,i||²`, their total absolute value is at most

\[
 \boxed{\ E_{\rm chart}
 =2\pi H\sqrt{W_1(y^2)}+\pi H^2\|y\|_\infty.\ } \tag{N2.10}
\]

A universally valid choice is
`W1(y²)=||y||∞²(√6 X+||T||op rH)²`. Exact horizontality of `T` improves the
unweighted sum to `6X²+||Tη||²`, and the same weighted refinements as N1 may
be used when their hypotheses are available. Bounds for the actual residual
`δ-δ0` use `n3` in the N1 normal-error formula; the original cubic exponential
remainder is still bounded on the **actual** displacement `δ`, using the
certified ball radii.

For `g0≠0`, either rebase to the shifted centre before building N1 or retain
all constant and linear contributions involving `g0`; (N2.9) alone omits them.
Alternatively, retain the entire degree-four `linearQuadratic(δ0)` polynomial
and bound it directly. The generic Lean support interface accepts that choice.

## 7. Interface audit: what N2 can and cannot replace

The existing `StageCCert.hleaf` quantifies over every
`Admissible(T,rH,n,r,rF,δ)`, including displacements which are not Hadamard.
The old `Admissible` condition is a linear tangent tube. N2 constrains
`δ-δ0(η)` only **when `Φ_P(δ)=0`**, and `δ0` is quadratic.

Consequently one must not replace `n` by `n3` in the existing `Admissible`
definition while leaving its centre `Tη` unchanged. The chart correction
`q(η,η)/2` would be lost, and the new domain would omit physical displacements.
N1 can populate the unchanged `StageCCert` through the supplied
`leafRej_all_of_secondOrderOriented` theorem. For N2, keep `StageCCert` itself
unchanged and add a separate Hadamard-to-quadratic-chart adapter, applying
`stageC_semantic` to each actual Hadamard with the chart bounds established for
it. Such an adapter and its integer checker have not been implemented here.

### Source dependencies

- Supplied `inputs/lean/NoFourMUBs/NormalBound.lean`: `outNorm`,
  `outNorm_rem_le`, `rowDist_le`, `sum_rowDist_le`, `quad_root_bound`.
- Supplied `inputs/proof/atlas/ballrecord.py`: exact frame, projection,
  normal-radius calculation and radian-to-cycle conversion.
- Supplied archive `MILESTONE1.md` §5.2: the proposed statement audited here.
- The Hessian, Jacobian perturbation, cubic Gram remainder, explicit branch
  selection and chart-polynomial formulas above are proved in this note.
