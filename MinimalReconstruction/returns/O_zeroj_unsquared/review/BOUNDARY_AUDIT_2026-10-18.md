# Independent audit of Return O: zero products and the geometric conclusion

**Date:** 18 October 2026.  
**Scope:** the recovered `O_zeroj_mixed_signatures/REPORT.md` §§2, 5 and 8; the corresponding scalar and geometric verifiers; and the permitted actual-side identities in `SIDE_FIBER.md` §1. This audit does not certify the recovered mixed-moment identity (12), which is being replayed separately, or Lean compilation.

## 1. Verdict

**CORRECT, conditional on the source-bound mixed identity (12):** the zero-product scalar deduction in §5. No unhandled vanishing denominator was found. Exactly one correlation vanishes; an admissible row relabelling makes the other two `X,Y>0`. If the claimed product equation fails, neither equals `tau=z+3`. The real part of the cleared mixed identity forces `P_X=0`. The displayed quadratic norm then gives `u=z²+2z-2=0`, and the nonzero linear coefficient forces the selected positive modulus to equal one. Choosing the other positive modulus if necessary closes this case. The assertion that both positive moduli cannot equal one has an explicit nonzero constant identity.

The scalar boundary verifier replayed all nine identities and rejected its deliberately altered target. The geometric verifier replayed all nine displayed finite identities. These checks were run independently during this audit.

**CORRECT, conditional on Z1 and the upstream actual-side identities:** the permanent argument in §8. It proves the desired matching of the actual coordinates on both halves. It does not depend on distinct coordinate values, simple roots, or an unstated choice of a permutation.

**Minor explanatory correction:** `review/SCALAR_ZERO_PRODUCT.md` says that the choice `X≠1` handles a symbolic denominator. In the final cleared identity, no factor `X-1` is canceled. The mathematical purpose of this choice in the proof is to contradict the eventual conclusion `X=1`. The main report already states that (12) holds when `X=1`. The wording in the supplementary note has been corrected in this return.

**NOT CHECKED:** Lean elaboration, the complete import graph, the final theorem's axioms, or the physical source binding of the large generic weighted identities. The recovered Lean file is labelled as an uncompiled candidate; this remains the correct status.

## 2. Why the reciprocal gauge is legitimate

After genuine unit row phases, let the physical sums be `s_phys=sqrt(X)` and `t_phys=sqrt(Y)`. Multiplying the x coordinates by `1/sqrt(X)` and their reciprocal variables by `sqrt(X)`, and doing the analogous operation for y, gives

\[
s=t=1,\quad s^*=X,\quad t^*=Y,\quad
r=h/Y,\quad r^*=-h/X,
\qquad h=s_{\rm phys}r_{\rm phys}\bar t_{\rm phys}.
\]

The original physical number `h` is purely imaginary because `J=0`, and `h²=-XYZ`. The star is reciprocal Laurent substitution. It is not ordinary conjugation after the nonunit scaling. The recovered report makes this distinction explicitly.

Each corner signature has row weight zero. The two selected weighted sums have definite row weights `(1,0)` and `(1,1)`, so their vanishing is preserved by the scaling. The final expressions involve real scalar variables and the original purely imaginary `h`; taking their real and imaginary parts is therefore valid. No conjugation of a nonunit scaled coordinate is asserted.

## 3. Why a single physical gauge works for the geometric step

Once Z1 factors the modulus cubic, permute the three rows once so that

\[
X=Y=\tau=z+3>0,\qquad Z=(1-z)\tau.
\]

Dephase all six columns by the same initial row, and apply unit phases to the two remaining complete rows so that the selected half has `s=t=sigma=sqrt(tau)`. Its `r` is purely imaginary. The complementary half then has exactly `s'=t'=-sigma` and `r'=-r` in these same phases.

For each half separately, the actual-side numerator and denominator are

\[
P_0=(3-Z)\tau=z(z+2)\tau=L_0.
\]

All factors are nonzero under the standing exclusions. Thus `lambda_0=1`, the actual permanent is `pi=z`, and

\[
\sum_jx_jy_j=st-\pi=\tau-z=3.
\]

The same computation on the complement uses `s't'=tau`, `(s')²=(t')²=tau`, and `r'+bar(r')=0`; in particular it gives `lambda'_0=1` as well. Each summand has unit modulus, so equality of the real parts with their upper bounds forces `x_jy_j=1` separately. This is an equality for each original column, on both halves. No reordering is needed after the row permutation.

The sign convention for the invariant is also consistent: `SIDE_FIBER.md` defines `Theta=-pi det/(conj(det)UV)`. The recovered `D` uses the difference of the *positive* signature `pi det²/(UV)` and its conjugate. Reversing this global sign leaves `D=0` unchanged. The actual-side equations, which fix `z` and `pi=z lambda_0`, retain the upstream convention.

## 4. Independent proof of the K=0 case under the brief's full invertibility hypothesis

The following argument independently verifies the zero-product conclusion from individual unsquared corners. It uses all twenty corner determinants being nonzero, so it is slightly weaker than the recovered report's stronger theorem, which requires only the selected halves to be invertible. It is an alternative audit argument, not a replacement claim for that stronger theorem.

### 4.1 The columns occur in three opposite pairs

Assume `K=0` and `z` is not `0,-2,-3`. Since

\[
W=z^2(z+3)^2>0,
\]

exactly one modulus vanishes. Relabel rows so that `s=0`. The unit x coordinates on a half are then an equilateral triple: their coordinate polynomial is `T³-U`, since the second elementary symmetric function is `U bar(s)=0`. The allowed actual-side formulas give

\[
P_0=\bar r t^2,\quad P_1=r^2\bar t,\quad
P_2=3\bar r\bar t.
\]

On the complementary half the first two numerators change sign and the third does not. The nonzero real denominators are unchanged. Hence

\[
\lambda'_0=-\lambda_0,\quad \lambda'_1=-\lambda_1,
\quad U'=\lambda'_0\bar\lambda'_1=U,
\quad \pi'=z\lambda'_0=-\pi.
\]

Both halves therefore have the same three distinct x coordinates, and can be matched by them. The three sums

\[
\sum y_j=t,\qquad \sum\bar x_jy_j=r,
\qquad \sum x_jy_j=-\pi
\]

all change sign on the complement. Their Fourier matrix is invertible, so the matched y coordinates also change sign. After one row phase, the six columns are

\[
(1,x_i,y_i),\quad(1,x_i,-y_i),\qquad
(x_0,x_1,x_2)=(1,\omega,\omega^2).
\]

### 4.2 Eight critical corners give three elementary equations

Put `a=y_0,b=y_1,c=y_2,V=abc`, and select one column from each pair using signs `epsilon_i`. For the all-positive corner define `q=a+omega b+omega² c`. Direct determinant and permanent expansion gives

\[
\det=(\omega^2-\omega)q,\quad \operatorname{perm}=-q,
\quad \Psi=3q^3/V.
\]

After conjugating by reciprocals, the antisymmetric signature is the remarkably short identity

\[
D=3\sum_{i=0}^2\left(y_i^3/V-V/y_i^3\right).
\]

Under the signs, its i-th summand acquires the character `epsilon_j epsilon_k`, where `{i,j,k}={0,1,2}`. All eight sign corners are critical. Multiplying by each of these characters and summing the eight equations yields

\[
24\left(y_i^3/V-V/y_i^3\right)=0,
\quad\text{hence}\quad y_i^6=V^2\quad(i=0,1,2).
\]

These are linear combinations of individual `D`, with no signature squares. The independent verifier reconstructs `D` from the six determinant and six permanent terms and verifies all three Walsh identities exactly in the Eisenstein integer ring. A corner containing both members of one pair has real signature 24, also checked independently.

### 4.3 Invertibility removes two patterns

Write `A_i=y_i²`. The equations imply `A_i³=V²=A_0 A_1 A_2`. After dividing by `A_0`, the pair `(A_1/A_0,A_2/A_0)` is exactly one of

\[
(1,1),\qquad(\omega,\omega^2),\qquad(\omega^2,\omega).
\]

The constant pattern permits signs making all y coordinates equal, yielding a singular corner. The last pattern permits signs making y proportional to x, again yielding a singular corner. Both contradict the full invertibility assumption. The only remaining pattern is

\[
y_i^2=y_0^2x_i.
\]

This relation is preserved in both members of each pair and already makes the complete three-row strip geometric after phasing and permuting its rows.

More explicitly, `y_i=epsilon_i y_0 bar(x_i)`. If the three signs agree, both other correlations vanish and `p=0`. Otherwise their squared moduli are both four and `p=8`. The first case forces `z=-3` (or the excluded determinant-zero value `z=0`), so the generic case has

\[
\{X,Y,Z\}=\{0,4,4\},\quad z^2=1,
\quad16=z^2(z+3)^2,
\]

which forces `z=1`. Thus

\[
K=0=(1-z)(z+3)^3.
\]

## 5. Reproducible checking

Run `python3 verify_boundary_independent.py`. It uses only the Python standard library and imports no recovered Return O code. It checks the Fourier determinant/permanent, all three Walsh coefficients, double-pair criticality, the complete finite list of squared-coordinate patterns, the singular witnesses, all eight remaining corner moduli, and the two permanent-saturation factors. A deliberately shifted identity is rejected. These algebra checks complement the paper deductions above; they do not establish Lean acceptance.
