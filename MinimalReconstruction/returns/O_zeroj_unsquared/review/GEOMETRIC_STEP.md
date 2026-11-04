# Zero-J geometric step without Vieta

## Status and scope

**PROVED.** Once the scalar conclusion

\[
K=(1-z)(z+3)^3
\]

is established, the entire coordinate-cubic and permutation argument can be replaced by the elementary permanent identity and equality in the triangle inequality. This proves the same geometric conclusion as `CoverageStripGeom.half_geometric` and `strip_geometric`, including repeated coordinate values. This standalone subproof assumes Z1; the complete proof of Z1 is now in `../REPORT.md`.

No twenty-corner square sum, splitting algebra, side-fiber uniqueness, genericity argument, or permutation classification is used below.

## 1. A general permanent criterion

Let

\[
E=\begin{pmatrix}1&1&1\\x_0&x_1&x_2\\y_0&y_1&y_2\end{pmatrix},
\qquad |x_j|=|y_j|=1,
\]

and set \(s=\sum_jx_j\), \(t=\sum_jy_j\), and \(\pi=\operatorname{perm}(E)\). Directly expanding the permanent gives

\[
\boxed{\sum_{j=0}^{2}x_jy_j=st-\pi.}\tag{G1}
\]

Consequently, if \(st-\pi=3\), then \(y_j=\bar x_j\) for every original column index \(j\).

Indeed, all three numbers \(x_jy_j\) have modulus one and real part at most one. Their sum is three, so their real parts all equal one; a unit complex number with real part one is one. Equivalently, the elementary identity

\[
\boxed{\sum_j|y_j-\bar x_j|^2=6-2\operatorname{Re}(st-\pi)}\tag{G2}
\]

has zero right-hand side, forcing each difference to vanish. This is a three-term identity in the row coordinates, unrelated to the twenty-corner signature square sum.

This criterion requires neither invertibility nor distinct coordinate values. Invertibility is needed only to obtain the actual-side identities used next.

## 2. One half of the zero-J step

Suppose the already-established scalar conclusion and modulus cubic have been used to relabel the rows so that

\[
X=Y=z+3,\qquad Z=(1-z)(z+3),\qquad z\notin\{0,-2,-3\}.
\]

The scalar range gives \(z>-3\), so \(X>0\). Phase the two noninitial rows to make

\[
s=t=\sigma\in\mathbb R,\qquad \sigma^2=z+3.
\]

The sign of \(\sigma\) is arbitrary; this is useful for the complementary half. Since

\[
J=2\sigma^2\operatorname{Re}r=0
\]

and \(\sigma^2>0\), we have \(r+\bar r=0\). The actual-side formulas in `SIDE_FIBER.md` §1 now give

\[
\begin{aligned}
P_0&=rs^2+\bar r\,t^2+(3-Z)st\\
&=(3-Z)\sigma^2\\
&=\bigl[3-(1-z)(z+3)\bigr](z+3)\\
&=z(z+2)(z+3),\\
L_0&=g+(9-Z)z\\
&=3z^2+\bigl[9-(1-z)(z+3)\bigr]z\\
&=z(z+2)(z+3).
\end{aligned}\tag{G3}
\]

The common value is nonzero. Therefore \(L_0\lambda_0=P_0\) implies \(\lambda_0=1\). The actual-side permanent identity gives

\[
\pi=z\lambda_0=z.
\]

Applying (G1),

\[
\sum_jx_jy_j=\sigma^2-z=(z+3)-z=3.
\]

The criterion of §1 proves \(y_j=\bar x_j\) for every \(j\).

This uses only \(\lambda_0\), not \(\lambda_1,\lambda_2\), the row products \(U,V\), or either coordinate cubic. It eliminates every transposition, cycle, repeated-root, and pairing issue at once.

## 3. One common gauge on both halves

Start with three complete rows \(R_0,R_1,R_2\) of the strip. Dephase all six columns simultaneously by

\[
c_j=\overline{R_{0j}},\qquad x_j^{(0)}=R_{1j}c_j,
\qquad y_j^{(0)}=R_{2j}c_j.
\]

After the required single row permutation, let the first half have correlation sums \(s,t,r\) with \(|s|^2=|t|^2=z+3\). Put

\[
\sigma=\sqrt{z+3}>0,\qquad
\alpha=\frac{\bar s}{\sigma}=\frac{\sigma}{s},\qquad
\beta=\frac{\bar t}{\sigma}=\frac{\sigma}{t}.
\]

Both \(\alpha\) and \(\beta\) are unit phases. Apply them to the complete rows, setting \(x_j=\alpha x_j^{(0)}\), \(y_j=\beta y_j^{(0)}\). Then on the first half,

\[
s_{\rm new}=t_{\rm new}=\sigma,\qquad
r_{\rm new}=\beta\bar\alpha r=
\frac{sr\bar t}{\sigma^2},\qquad
\operatorname{Re}r_{\rm new}=\frac{J}{2\sigma^2}=0.
\]

The orthogonality of the complete rows makes the complementary-half correlations the negatives of those on the first half. Hence the same, already-chosen phases give

\[
s'_{\rm new}=t'_{\rm new}=-\sigma,\qquad
r'_{\rm new}=-r_{\rm new}.
\]

The scalar data \(p,W,K,g,z\) agree on the two halves because \(J=0\). Section 2 applies to the complementary half with \(\sigma\) replaced by \(-\sigma\): every formula there depends on \(\sigma^2\), and \(s't'=\sigma^2\). It gives \(y_j=\bar x_j\) on that half too. Thus one column gauge and one pair of row phases give the full six-column strip \((1;x;\bar x)\).

No second gauge or independent column reordering is introduced.

## 4. Audit of the existing proof

The existing Vieta proof appears mathematically correct as written. In particular:

* Equality of the three elementary symmetric functions implies equality of multisets with multiplicity, and `cases_of_esymm` explicitly handles all six permutations without assuming distinct roots.
* A transposition forces \(h=\bar h\), incompatible with \(\lambda_0=1\), \(V=\bar U\), and \(h\ne0\).
* A three-cycle gives \(r=\bar U\sigma\) and hence \(Z=X\), incompatible with \(z(z+3)\ne0\).
* `strip_geometric` already uses the same phases on both halves and invokes `half_geometric` with \(\sigma\) and \(-\sigma\), so there is no hidden mismatch of gauges.

The replacement above makes those checks unnecessary. It is shorter and depends on fewer identities.

## 5. Lean integration and limits

`CoverageStripGeom.lean` can retain the statement of `half_geometric` and all of `strip_geometric`. In the proof of `half_geometric`, retain the construction through

```lean
have hstar : -(u * v) * conj h = h := ...
```

which is the cleared form of \(\lambda_0=1\). Obtain \(\pi=z\) with the existing `Side.pi_eq` lemma, whose use is visible in `CoverageSignedBoundary.half_cleared`. Replace the rest by (G1) and the unit-phase criterion from §1. The independent cubics, `hreal`, `hcyc`, and `cases_of_esymm` are unnecessary. Only the `I0` branch of `Side.side_identities` is needed after this change.

`CoverageStripGeom.candidate.lean` implements this source-level replacement. **It has not been compiled:** this handoff omits its direct import `CoverageStripBlock.lean`, the full Mathlib/project configuration, `lean/check_axioms.py`, and `Final.lean`; this environment has neither `lean` nor `lake` installed. Python exact replay verifies the displayed polynomial identities, not Lean elaboration or kernel acceptance.

### Z1 interface

The scalar handoff can be reduced to a new proposition of the following shape:

```lean
def ZeroJProduct : Prop :=
  ∀ H : Mat6, Hadamard6.IsHadamard H →
    AllCritical H → AllMinorsInvertible H → ∀ l : Fin 20,
    blockJ (triBlock H 0 l) = 0 →
    blockTheta (triBlock H 0 l) ≠ -3 →
    blockTheta (triBlock H 0 l) ≠ -2 →
    blockK (triBlock H 0 l) =
      (1 - blockTheta (triBlock H 0 l)) *
        (blockTheta (triBlock H 0 l) + 3) ^ 3
```

For a theorem with this interface, `zeroJ_classification` can obtain `hK` directly after its two exceptional cases and retain `zero_moduli` and all subsequent row relabelling unchanged. The current `zero_moduli` itself already takes the product equality directly; it does not take `ZeroJSquareSum`.

`CoverageSignedNonzero.topStripClassification_signed` currently takes `ZeroJAlgebra`, calls `zeroJSquareSum_of_algebra`, and passes its result into `zeroJ_classification`; this boundary must change along with `CoverageStripParts` and the complete project's final theorem application.

### Shared imports that prevent blanket deletion

The handoff's deletion instruction requires an additional refactor. The supplied integrated K modules still depend on the allegedly disposable shared machinery:

* `CoverageSignedGauge.lean` directly imports `CoverageStripIdHalf`. It uses `fData`, `lamData_eq_fData`, `fData_mom_scale`, `QF`, `halfQ`, `halfQ_val`, `HalfQ.val_mom`, and `qvalidR`. Its own documentation explicitly cites `CoverageStripIdFormal` for row scaling.
* `CoverageSignedBoundary.lean` directly imports `CoverageStripReduce`. That file imports `CoverageStripAlgebra`, defines the obsolete zero-J square-sum interface and reductions, but also supplies shared results `halves_reduction`, `triBlock_rowperm`, `isHadamard_rowperm`, `blockG_perm`, and `blockL_swap01/02`.

Therefore do not delete all `CoverageStripId{Formal,QF,Half,Fast,Stage}` modules simply because Z1 has been proved. Extract the shared row-scaling, fraction/quadratic-field, and half-moment infrastructure to neutrally named modules; extract the shared physical reduction and row-permutation lemmas from `CoverageStripReduce`; then change K's imports and audit the full project graph. The current excerpt does not contain enough dependencies to certify which of `Fast` and `Stage` remain necessary transitively.

## 6. An additional small repeated-modulus identity

For the repeated-modulus reduction used in the main report, suppose only \(X=Y=a\), \(Z=9-z^2-2a\), and use the real gauge \(s=t=\sqrt a\). Then

\[
\begin{aligned}
P_0-L_0&=(a-z-3)(2a+z^2),\\
P_0+L_0&=2a^2+(z^2+2z-6)a+z^2(z+3),\\
a^2+2aZ-a^2Z-z^2(z+3)^2
&=(a-z-3)(P_0+L_0).
\end{aligned}
\]

Thus on this repeated-modulus locus, proving \(\lambda_0=1\) immediately forces \(a=z+3\), because \(2a+z^2>0\). The other algebraic branch has \(\lambda_0=-1\). This observation alone does not exclude that branch.
