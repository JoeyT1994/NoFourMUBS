# Independent audit: moving symmetry, covariance, and averaged bound

Review date: 1 November 2026. Package: `TC_native_review_20261101`.

## Scope and verdict

This review independently checked `moving_symmetry.py`, including every term of `prove`, and the operator-norm helper `wholeball.spectral`. It derived the covariance at all three anchors and checked it by exact finite symbolic computations covering every legal balanced labelling and permutation action. It found **no failing implication in this reviewed symmetry-forcing path**, conditional on the incoming phase tubes enclosing the actual columns and on the stated source enclosure of H.

This is not an independent certification of the local tests (Stage C in the code), the source enclosures of H, incoming contractions, atlas coverage, or all recorded ball receipts. Those are separate parts of the review. The symmetry test proves the asserted implication for a pattern. It does not establish existence of a completing basis.

### Answers within this subreview

| Brief question | Status here | Reason |
|---|---|---|
| 6 | **Verified** | A fixed gauge representative gives an explicit balanced ambient unitary at I₆, H, or K, with details below. |
| 7 | **Verified for this module and its spectral helper** | The residual normalizations, row-major ordering of K, carrier insertion, signed Hessian flattening, H2 insertion, and endpoint error indexing agree. Other contractors are outside this subreview. |
| 8 | **Verified** | Universal algebraic covariance, plus exact factorized checks of all 432,000 legal actions. The pair-conjugation and sine signs are correct. |
| 9 | **Verified** | The fixed residual vanishes after the exact equation-space projection. The midpoint Hessian, H/K block estimates, endpoint bounds, and integrated Fourier remainder include every term. |
| 10 | **Verified for symmetry acceptance only** | The final comparison and inverse-defect comparison are strict Arb inequalities, and numerical proposals are arbitrary exact binary64 data whose defects are certified. |

The winding component of question 1 is also verified here: arbitrary integer windings preserve the represented matrices, and the subsequent gauge transformation preserves the zero set. Bad winding proposals can only make the sufficient test fail.

## Findings by severity

### Critical / major

None found in the reviewed symmetry-forcing path.

### Minor: clarify the default bound in the proof document

**Location:** `family_neighbourhoods/PROOF.md`, section 4, lines 108–139, and section 6, lines 151–171, and `moving_symmetry.py:181,194,210,227,250–258`.

Section 4 describes the older pointwise estimate on the symmetry-pair segment, whereas the default call uses the stronger integrated estimate on the segment from the group average to the solution. Section 6 supplies the required replacement, so this is **not a proof gap** when the two sections are read together. It was also identified by the previous audit. In a final proof presentation, lead with the averaged criterion and place the other path separately. In particular, do not claim that the default numerical `q` uniformly bounds the Jacobian at every individual segment point: it bounds the relevant averaged derivative operator.

**Affected claims:** exposition of `CERTIFIED`, including root/native sub-cell leaves and shared-helper shell uses. There is no change to acceptance soundness.

**Repair:** replace section 4's default formula with the integrated formula derived below, or label section 4 prominently as the optional `averaged=False` path. No frozen-source edit was made.

### Remark: exact covariance evidence is now supplied

**Location:** `moving_symmetry.py:155–178`, and previous tests `test_native.py:55–64`.

Checking only `Y^3=I` and `Y^T Y=I` does not by itself prove covariance. The universal derivation below closes that logical dependency. The supplemental exact checker tests the actual canonical phase construction, residual layout, and raw rational covariance builder without a numerical tolerance. The existing numerical test at a few examples is supplementary, not the reason covariance is verified.

## 1. Residuals and array order

Use phase arrays `H[r,c] = exp(i x[6r+c])` and `K[r,c] = exp(i x[36+6r+c])`. This is the order used consistently in `layout` (lines 13–25), the reference vector (line 184), the carrier (lines 188–189), the endpoint K-error insertion (lines 236–238), and the numerical proposal (line 266).

For each ordered column pair `s<t`, the first two residual blocks consist of real and imaginary parts of

\[
 O^H_{st}=\sum_r e^{i(x^H_{rt}-x^H_{rs})},\qquad
 O^K_{st}=\sum_r e^{i(x^K_{rt}-x^K_{rs})}.
\]

The four real/imaginary groups are indexed `0:15`, `15:30`, `30:45`, `45:60`. No factor 1/6 is used in these orthogonality equations, consistently throughout this module.

The last 36 residuals are

\[
 F_{st}^{\rm mix}=\frac{|H_s^\dagger K_t|^2-6}{6}
 =\frac13\sum_{r<q}\cos(x^K_{rt}-x^H_{rs}-x^K_{qt}+x^H_{qs}).
\]

The constant 6 cancels because all six entries of each phase column have unit modulus. Thus the code's denominator 3 and its lack of a constant term are correct. There are 180 complex orthogonality terms and 540 real mixed terms, a total of 720 `TERMS`.

The Jacobian uses `d cos(theta) = -sin(theta) dtheta` and `d sin(theta) = cos(theta) dtheta`, which gives precisely `jacobian:149–152`.

## 2. Universal covariance at all three anchors

In this note the symmetry is written T, as in the paper, and `S`, `T` in code font are the code's H-column and K-column permutations. Let `omega = exp(2 pi i/3)`, `D_l = diag(omega**labels[r])`, and write `Rop X[r,c]=X[R[r],c]`. Let `X[:,S]` denote the column array `X[r,S[c]]`. Position numbers around every 3-cycle obey

\[
 \operatorname{pos}(p(j))-\operatorname{pos}(j)\equiv1\pmod3.
\]

Consequently, the canonical phase array `b` in `group:103–111` makes `b+P(x-b)` act on matrices as follows:

| Anchor | Transformed H | Transformed K |
|---|---|---|
| I₆ | `D_l H[:,S]` | `D_l K[:,T]` |
| H | `Rop H D_{-l}` | `Rop K[:,T]` |
| K | `Rop H[:,S]` | `Rop K D_{-l}` |

These identities hold for every phase array, not only for Hadamard arrays or exact triples. The canonical offsets agree modulo `2 pi`, which is all the exponential residuals require. At H or K, the anchor's column permutation is the identity.

### Orthogonality equations

On the anchor's orthogonality block, the two column phases multiply the complex inner product by

\[
 \omega^{\ell_s-\ell_t}.
\]

On a nonanchor block there is no additional factor. Column permutations replace `(s,t)` by `(perm[s],perm[t])`. If the new pair is reversed relative to the stored `u<v` convention, the corresponding complex inner product is conjugated.

Let `sign=+1` for the stored order and `sign=-1` otherwise, and write the root-of-unity factor as `co+i sqrt(3) si`, where `co` is 1 or -1/2 and `si` is 0 or ±1/2. The transformed real and imaginary residuals are

\[
 \begin{pmatrix}\mathrm{Re}\,O'\\\mathrm{Im}\,O'\end{pmatrix}
 =
 \begin{pmatrix}
 co&-\mathrm{sign}\sqrt3\,si\\
 \sqrt3\,si&\mathrm{sign}\,co
 \end{pmatrix}
 \begin{pmatrix}\mathrm{Re}\,O\\\mathrm{Im}\,O\end{pmatrix}.
\]

This is exactly the assignment at lines 166–167. In particular, the sign multiplies the imaginary input under conjugation, not the sine factor in both output rows. The implemented signs are correct.

### Mixed equations

A common row factor cancels in H_s†K_t, and a column factor changes only its overall phase. Row permutations preserve the sum. Therefore the squared-modulus equations are only permuted by `(s,t) -> (S[s],T[t])`, exactly as at line 169. At the Fourier-term level, reordering a row pair may negate its frequency, but cosine is even.

It follows identically that

\[
 F(b+P(x-b))=YF(x)
\]

for every real x and every legal action. The exact order-three and orthogonality checks at lines 170–177 then provide the stated rational/`Q(sqrt(3))` projectors. They are consistent with this explicit group action.

## 3. Gauge projection, fixed point, and the actual unitary

Think of the 72 phases as a `6 by 12` array. The common row phases and the twelve independent column phases form a 17-dimensional gauge space. Its orthogonal complement consists of arrays whose row sums and column sums are zero. Its projector is

\[
 W_{(b,r,c),(d,s,j)}=(\delta_{rs}-1/6)(\delta_{bd}\delta_{cj}-1/12),
\]

as implemented at lines 94–96. Therefore `x -> b+W(x-b)` changes the phase array only by a common row phase and independent column phases. It preserves all zero equations and the equivalence class of the triple.

The code checks the exact identities for `P,W,G,E`, including that `E=(I-G)W` is an orthogonal projector. It does not infer these from floating-point matrices. Windings at lines 185–186 add only integer multiples of `2 pi` to entries, hence do not change the matrices.

Suppose the gauge representative is fixed by the canonical affine action. The matrix transformations above give an explicit ambient unitary:

- At anchor I₆, take T = `D_l`. The fixed equations give T H_c = H_{`S`⁻¹c} and T K_c = K_{`T`⁻¹c}.
- At anchor H, take T = `Rop`. The fixed equations give T H = H `D_l`, and T permutes the I₆ rays by `R^{-1}` and the K rays by `T^{-1}`.
- At anchor K, take T = `Rop`. It has the analogous diagonal action on K and cycles I₆ and H.

In each case T³ = I₆, the nonanchor permutations are exactly two 3-cycles, and the anchor eigenvalues are the balanced multiset `{1,1,omega,omega,omega^2,omega^2}`, as for the paper's T = diag(1,1,ω,ω,ω²,ω²). Undoing the common row gauge conjugates T by that diagonal unitary, and column phases affect ray representatives only. Thus the original triple has precisely the actual balanced symmetry required by recognition.

This proof is independent of the product-point numerical test. It also explains why a numerically proposed winding or monomial match need not be correct in advance: acceptance proves the canonical fixed-point property itself.

## 4. Exact cancellation of the fixed residual

Let `q` be the lifted center, let the raw carrier be `L=[U;T]`, and write the raw error as `n=[h;e_K]`, with

\[
 h=\tfrac12H_2[w,w]+Xz,\quad \|w\|\le r,\quad\|z\|\le\tau,
 \qquad\|(e_K)_c\|\le\epsilon_c.
\]

After the gauge transformation, an actual zero has the form

\[
 x=a+m+WLw+Wn,
 \quad a=b+GW(q-b),\quad m=(I-G)W(q-b).
\]

Its group average is

\[
 \bar x=a+GWLw+GWn.
\]

Because `P G=G`, both `a-b` and `bar x-b` are fixed by P. Also

\[
 e=x-\bar x=m+E(Lw+n)\in\operatorname{range}E.
\]

The code uses the exact algebraic preconditioner `A=E A_0 Q_Y`, where `A_0` is an arbitrary exact-binary64 matrix proposed by a pseudoinverse and

\[
 Q_Y=I-(I+Y+Y^2)/3.
\]

Arb encloses this matrix, and the exact mathematical matrix is well defined despite its interval representation. Covariance gives `F(bar x)=YF(bar x)`, hence `Q_Y F(bar x)=0` and therefore `A F(bar x)=0` **exactly**. Since `F(x)=0`,

\[
 0=A\bigl(F(x)-F(\bar x)\bigr)
   =A\int_0^1 DF(\bar x+t e)e\,dt.
\]

There is no omitted residual term. Neither a nor `bar x` needs to solve F. The inverse defect `||E-A DF(a)E||` is independently bounded at line 195. The preliminary `<1/10` threshold is a conservative additional requirement.

## 5. Derivation of every contribution to the averaged bound

For one Fourier term with frequency ell and denominator d, define the complex coefficient in output row i by

\[
 c_{i,\ell}
 =\frac{A_{i,re}-i A_{i,im}}{d}\,e^{i\ell a},
\]

with the imaginary coefficient omitted for a real mixed term. This is exactly lines 198–202. The preconditioned residual contribution is `Re(c exp(i ell delta))`. Its Jacobian change, after right projection by E, has signed linear part

\[
 -\operatorname{Re}(c_{i,\ell})(\ell\delta)\,\ell E
\]

and entrywise remainder bounded by

\[
 |c_{i,\ell}|\,\frac{|\ell\delta|^2}{2}\,|\ell E|.
\]

Thus `linear=-coeff.real` and `amplitudes=abs(coeff).upper()` have the right signs and normalizations.

### 5.1 Signed midpoint term

Let

\[
 C=\frac{I+G}{2}W.
\]

The integral of the phase displacement from a along the averaged segment is

\[
 \int_0^1(\bar x+t e-a)\,dt
 =\frac m2+C Lw+C n.
\]

The deterministic signed Hessian therefore contains the constant `m/2` and the carrier `CL`. The code computes exactly these by averaging the endpoint signed matrices with transforms G and I at lines 227–245 and 256–257. The four carrier matrices are horizontally flattened. Their spectral norm multiplied by r bounds their combination with w because the corresponding input is `w tensor v` of norm `||w|| ||v||`. The code sums signed Fourier contributions before taking these norms.

### 5.2 Unknown H and K error contribution

Lines 210–220 form the signed Hessian with first argument C and second argument E. If its full flattening has norm h and its first-argument H/K blocks have norms `h_H,h_K`, then for every n and v,

\[
 \|A D^2F(a)[Cn,Ev]\|
 \le h\|n\|\|v\|
 \le h\sqrt{N_H^2+N_K^2}\,\|v\|,
\]

where

\[
 N_H=\tfrac12\|H_2\|r^2+\|X\|\tau,
 \qquad N_K=\sqrt{\sum_c\epsilon_c^2}.
\]

Splitting the first argument instead gives

\[
 \|A D^2F(a)[Cn,Ev]\|
 \le(h_HN_H+h_KN_K)\|v\|.
\]

Both are valid, so the minimum at lines 224–225 is valid. The first-argument projector C is essential and is present. There is no missing factor 1/2: it is already in C. The row-major interleaving of the K errors preserves their total Euclidean norm.

`H2` is a `36 by 16` map on `w tensor w`. Since `||w tensor w||=||w||^2`, the operator-norm estimate used for N_H is correctly scaled.

### 5.3 Endpoint phase increments

For either endpoint transform `J=G` or `J=I`, lines 228–240 bound each Fourier increment by

\[
 \beta_{J,\ell}
 =|\ell Jm|+r\|\ell JWL\|
 +\tfrac12r^2\|\ell JWH_2\|_F
 +\tau\|\ell JWX\|
 +\sum_c\|C_6(\ell JW)_{K_c}\|\epsilon_c.
\]

The endpoint with G is `bar x`, and the endpoint with I is x. The term `Gm` is exactly zero mathematically, although its interval evaluation may have a small radius, which only weakens the bound. The row Frobenius norm of the 16 quadratic coefficients is a valid bound on their scalar contraction with `w tensor w`. Each K error has mean zero, so subtracting the mean of its six coefficient entries at lines 237–238 is valid. All six errors are included in the `36+6*a+c` order.

### 5.4 Integrated Fourier remainder

For each real segment parameter t,

\[
 |\ell(\bar x+t e-a)|
 \le(1-t)\beta_{0,\ell}+t\beta_{1,\ell}.
\]

Hence

\[
 \int_0^1\frac{|\ell(\bar x+t e-a)|^2}{2}\,dt
 \le\frac{\beta_{0,\ell}^2+
 \beta_{0,\ell}\beta_{1,\ell}+
 \beta_{1,\ell}^2}{6}.
\]

This is the exact factor at line 251. Multiplying by coefficient moduli and `|ell E|` gives an entrywise nonnegative matrix M. If R is the true integrated remainder matrix, `|Rv|<=M|v|` componentwise, and therefore `||R||_2<=||M||_2`. Lines 254–255 implement precisely this majorant. No factor from the number of terms, complex components, or integration length is missing: all term contributions are explicitly summed in the matrix product.

### 5.5 Final contraction

The code bounds

\[
 \left\|E-A\left(\int_0^1DF(\bar x+t e)\,dt\right)E\right\|
 \le\eta+L_{\mathrm{mid}}+
 \min\{h_HN_H+h_KN_K,\ h\sqrt{N_H^2+N_K^2}\}+\|M\|.
\]

This is `qbound` at line 258. The strict Arb comparison at line 259 gives q<1. Since e is in the range of E and the preconditioned integral annihilates e, `||e||<=q||e||`, so e=0. That is the actual fixed-point conclusion used in section 3.

## 6. Certified spectral norms and proposal arithmetic

`wholeball.py:77–100` computes an upper bound on the Euclidean operator norm. After a possible transpose, it proposes a binary64 lambda and certifies that `lambda I-AA^T` is positive definite by an Arb LDL-transpose recurrence with every pivot strictly positive. For every exact matrix enclosed by the input intervals, the corresponding exact Gram matrix lies in the computed interval Gram matrix, and the exact LDL recurrence is enclosed. Positive pivots therefore prove the required strict Gram bound. The square root of lambda bounds the operator norm.

The SVD is only a proposal mechanism. An optimistic, inaccurate, or nonfinite proposal does not pass an unverified norm comparison. A failed LDL attempt increases the proposal, and exhaustion raises. The one-row branch uses an upper Frobenius bound with absolute upper endpoints. No midpoint norm is used for acceptance.

The pseudoinverse in `prove:193` is also only an exact-binary64 preconditioner proposal. Its actual defect, signed derivatives, and remainders are recomputed in Arb. Integer windings and monomial assignments similarly affect which sufficient test is attempted, without supplying an acceptance assertion themselves. `classify:268–271` turns failed symmetry attempts into `NOT ESTABLISHED`. It never interprets a missing action as an exclusion.

## 7. Exact supplemental verification and reproducibility

Run, from the workspace root:

```sh
python audit/symmetry_checks/exact_covariance.py /path/to/TC_native_review_20261101
```

The script uses the Python standard library. It reads the frozen source through the AST and executes a copied raw covariance builder before its final conversion to Arb, using rational sparse matrices. The frozen file itself is never edited. It similarly extracts the actual canonical phase and permutation construction and the actual Fourier layout.

Fresh receipt: `audit/symmetry_checks/exact_covariance.json`.

Recorded result:

- Source SHA-256: `eb7a3df68ed032dc0c78ac6649cd100c580514bd9398c7c5cd63893546732a9e`.
- Status: **PASS**.
- 90 balanced labellings, including more than the 15 symmetry-reduced proposals used in production.
- 40 allowed permutations consisting of two 3-cycles.
- All `3 * 90 * 40^2 = 432000` legal actions covered by exact factorization of independent effects.
- 777,600 canonical phase-offset checks.
- 50,430 exact orthogonality Fourier-frequency checks.
- 1,476 exact mixed cosine-frequency checks.
- All 8,800 distinct implemented equation-action matrices checked over `Q(sqrt(3))`.

The factorization is exhaustive for covariance: canonical shifts depend only on the relevant cycle, orthogonality phases depend only on the anchored labels and column permutation, row permutations reorder summands, and the mixed equations depend on `S`, `T` only through their image column pair. It is not a claim that 432,000 full whole-ball certificates or 432,000 dense matrix LDL computations were replayed.

## Dependencies checked and trusted

**Independently checked here:**
- residual definitions and normalization,
- actual array order,
- canonical action at each anchor,
- universal covariance and its signs,
- gauge removal,
- conversion of a fixed array to an ambient unitary,
- exact fixed-residual cancellation,
- the full averaged derivative bound and every coefficient,
- mathematical validity of the spectral LDL helper,
- strict symmetry acceptance and the proposal-only role of floating calculations.

**Trusted inputs here:**
- correctness of python-flint/Arb's documented ball arithmetic and exact rational operations,
- correctness of NumPy/SciPy only insofar as they supply arbitrary finite proposals, whose quality is not trusted,
- the incoming complete cover and valid per-column tube bounds,
- the enclosure of H (claim C1 in the code, with the interval theorem of `patches.normal_form`),
- analytic classification of balanced-symmetric triples, reviewed separately,
- broader root/sub-cell record interpretation and the preconditions of the local tests, reviewed separately.

No atlas file or full replay of the certifier on a ball was needed for these symbolic and analytic conclusions. This subreview does not report a replay of the 2,775 atlas receipts.
