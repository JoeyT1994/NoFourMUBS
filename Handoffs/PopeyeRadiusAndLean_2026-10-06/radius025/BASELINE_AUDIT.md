# Critical audit of the radius-1/100 stationary-F3 exclusion package

**Date:** 6 October 2026.  
**Verdict:** No fatal mathematical or active-verifier error was found in this audit. The complete supplied certificate passed fresh GCC and Clang builds. One genuine, nonfatal metadata bug was reproduced in an unused legacy helper.

This audit concerns `CentiradianComplete`, not the entire no-four-MUBs campaign, every earlier exploratory argument, or any radius exceeding 1/100. It is not a proof-assistant formalization. The original package was not edited.

## 1. Exact target and provenance

The audited ZIP is `Patch2442Local_uniform_ball_centiradian.zip`, SHA-256:

```
0b886210f36d6c74c96c1c3d01da4b871223230752dcbd95fb4b302ed5c0ce4c
```

Its package-manifest SHA-256 is:

```
bd37e8a6f971eb7bc02e7f168642ba5c8999cdc20a3c807fb446defa2a34dcf1
```

The theorem excludes a physical order-six unit-entry Hadamard whose selected corner satisfies

\[
0<R(E(\theta))=\max_c R(H_c)
\]

when

\[
0<\|\theta-\theta_*\|_{\infty,\mathrm{circ}}\le1/100,
\qquad
\theta_*\in\{(2,4,4,2),(4,2,2,4)\}\pi/3.
\]

It allows maximality ties. The conclusion is about a physical **maximal** corner; it does not exclude arbitrary nonmaximal physical corners in those seed neighborhoods.

## 2. What was executed

| Audit | Result |
|---|---:|
| Original archive hash | Matched exactly |
| Original manifest | All 29 entries passed |
| Complete fresh GCC replay | 117,459 terminals, 104 local inequalities, all passed |
| Complete fresh Clang replay | 117,459 terminals, 104 local inequalities, all passed |
| Independent exact directional Taylor coefficients | 1,560 passed |
| Independent high-precision outward radial-remainder tests | 1,560 passed |
| Independent complete binary-trie coverage | 117,459 leaves; 117,357 internal nodes |
| Independent exact terminal-coordinate comparisons | 469,836 passed |
| Deliberately corrupted covers | Six classes rejected |
| Components-only mode combined with box acceptance | Rejected |

The fresh GCC invocation took 165.933320342 wall seconds, of which 146.441787356 were the global replay. Summed native global-worker CPU time was 577.99 seconds. The Clang invocation took 133.106436447 wall seconds, including 114.332115623 for global replay; summed native global-worker CPU time was 446.818 seconds. These are actual observations in this audit, not performance guarantees or timings for discovery.

GCC was Debian 14.2.0. Clang was version 17.0.0. The Clang audit omitted the GCC-only `-fno-tree-vrp` option while retaining `-fno-fast-math`, `-ffp-contract=off`, C++17, and the runtime binary64 guards. No mathematical input or package file was changed. These are two compiler builds of the same full verifier, **not two separately designed complete verifiers**.

Both full replays reported the same worst local score:

\[
\frac{7602259868333991}{9007199254740992}
\approx0.8440203945008208.
\]

The exact margin to one is

\[
\frac{1404939386407001}{9007199254740992}>0.
\]

Receipts are retained under `receipts/`. The summary is `audit_summary.json`.

## 3. Mathematical audit

### 3.1 The seed majorant and normalization

The invariant convention was traced from the Gram definition, through the signed determinant, to the native residuals. The complementary identity is

\[
R(p,-J,W)=-D(E)^2,
\]

not a statement that the same corner has R equal to its own signed square. For a physical matrix, the complementary block reverses the three off-diagonal Gram parameters. Thus

\[
R(Q^c)=f(Q)^2,
\qquad
M(H)=\max_Q f(Q)^2.
\]

Consequently a maximal selected corner really implies `|f(Q)| <= sqrt(R(E))` for every tested mixed corner. The normalization and factor of two in the fast six-term signed formula were checked by exact algebra and independently tested using the literal 48-word expression. R and D transpose invariance were also checked exactly.

The seed majorant was independently expanded and its constants checked rationally. Its normalized value at radius 1/100 is

\[
\frac{1434053106309}{625000000}=2294.4849700944<2304.
\]

Therefore the necessary bound `q <= 48 rho^2` is supported. The enlarged dyadic native width was checked separately, so the rational outer boundary is not narrowed by binary rounding. The majorant is an upper bound and never divides by `u1*u4-u2*u3`; degeneration of that expression does not create an omitted case.

### 3.2 Exhaustiveness of the local completion model

The side formula is elementary and exhaustive. After fixing the first unit entry z and the row sum S, the two other normalized unit entries have sum `a = S conjugate(z) - 1`. Since a is nonzero in this domain, they are precisely

\[
a\left(\frac12-ik\right),\quad
 a\left(\frac12+ik\right),\qquad
k=\sqrt{|a|^{-2}-1/4},
\]

in the two possible orders. These are all solutions, not a selected branch of an assumed classification.

The three-phase estimate forces opposite Fourier orders in the two nontrivial rows: equal orders would give inner-product modulus at least `3-32 rho`, contradicting the physical bound `4 rho`. Permuting the two remaining complementary columns fixes the order while keeping the selected corner and anchor intact. The same construction applies to C.

The anchor half-plane restriction is justified. A rotated cube-root triple has an entry with real part at least 1/2. The side approximation error is below `8 rho`, so one can choose the first anchor in the right half-plane. These complementary row/column permutations do not alter the selected seed.

The forced lower block was checked directly from

\[
T=-CE^*(B^*)^{-1}=-CE^*Z_0(K^*)^{-1}.
\]

The independently coded derivative audit used the **full B inverse**, rather than reproducing the native factored expression. The lower singular-value bound for K is uniformly positive. Auxiliary nonphysical matrices are allowed in the model, but every rejecting residual is necessary for an actual physical maximal completion; enlarging the auxiliary domain is conservative.

No global all-critical classification or MC1--MC4 premise enters this argument. The classification-dependent section of the copied `CornerBounds_PROOF.md` is not being used; the unconditional complementary-square identity is regenerated algebraically.

### 3.3 Symmetry and coverage

A mere enumeration of root orbits would not justify the physical symmetry reduction. The relevant full-matrix operations were checked analytically. With `S = diag(P,P)` and P swapping indices 1 and 2 of a three-block, they are

\[
H\mapsto H^T,\qquad H\mapsto S\overline H,\qquad H\mapsto\overline H S.
\]

For anchors `(z,w,x,y)`, their angle actions are respectively

\[
(a,b,c,d)\mapsto(c,d,a,b),\quad
(-b,-a,-c,-d),\quad
(-a,-b,-d,-c).
\]

Their seed actions are signed coordinate permutations. They preserve the fully dephased first row and column, physicality, maximality, the seed cube, and the common local completion widths. The side orders return to the prescribed convention. For transpose, only the action on physical completions is needed; an arbitrary nonphysical auxiliary model need not satisfy a transpose-covariance identity.

The 324-cell anchor domain need not itself be invariant under every group operation. Taking intersections of full symmetry orbits with that domain gives a valid equivalence partition. The independent audit verified that the 102 representative cells cover exactly those 324 initial cells, with no omitted or double-counted orbit.

The independent coverage checker used full binary tries rather than the original Kraft-sum implementation. Every nonleaf had both children. It found exactly 117,459 leaves and 117,357 internal nodes across 102 roots. Separately, iterative rational bisection agreed with the native integer path-decoding formula on all four coordinates of every leaf: 469,836 exact comparisons.

The reference set is **not assumed to exhaust physical completions**. The global cover excludes every allowed anchor phase outside the local reference neighborhoods. Local contractions then handle all radial scales inside those neighborhoods. This removes the usual gap between a finite annular cover and a punctured-ball theorem.

### 3.4 Radial Taylor models and the contraction

The key invariant of the arithmetic is

\[
f(\xi)=P(\xi)+e(\xi),\qquad |e(\xi)|\le\tau h^{m+1},\quad
h=\|\xi\|_\infty\le1.
\]

Products account for all discarded degrees and all products involving tails. For inversion or a positive square root, the expansion is about the **actual** constant coefficient c. Although c is interval-enclosed, the analytic normalized variable `x = f/c - 1` has exact constant zero. Setting that coefficient to zero is valid with this interpretation; it would not be valid if one silently used an unrelated representative of the c interval. The remaining coefficient and tail enclosures cover the correlated actual value of c.

The same distinction is important when the local verifier omits the residual constant term. Every reference is an exactly checked physical sixth-root matrix with all signed invariants zero, so the actual constant is exactly zero. No numerical-nearness-to-zero tolerance is used to justify dropping it.

For the fixed dyadic preconditioner P, an approximate inverse is not a premise. The verifier checks the full defect of `xi - W^{-1}P F(W xi)`, including the linear defect, nonlinear terms and tail. At a physical maximal point,

\[
\|\xi\|_\infty
\le\max_i(e_i h+b_i h^2)
\le\max_i(e_i+b_i)h.
\]

The independently checked score is strictly below one, forcing h=0. The argument genuinely covers arbitrarily small h and directions whose approach to a degeneracy set is coupled to h.

The global preconditioned tests also permit arbitrary finite dyadic P. Ordinary floating-point row selection and inversion are only proposals: a final outward separation from the necessary interval is required. Singular proposal matrices, invalid Taylor domains and inconclusive ranges cannot yield an accepting terminal.

## 4. Independent arithmetic checks beyond replay

### Exact derivatives

A separate implementation over `Q(i,sqrt(3))` used univariate coefficient recurrences for inverses and square roots. It did not call the native Taylor arithmetic or its six-term signed formula. It used direct cofactor inversion of the full B block and literal signed determinant words.

For all 13 selected references and their eight selected residuals, it checked three rational directions through degree four. This gives 312 residual-direction pairs and 1,560 exact coefficient-containment checks. All passed. The directions include degenerate seed directions and a generic mixed seed/anchor direction.

These are exact tests, but they do not individually check every multivariate coefficient of every residual.

### Radial remainders

At each of those reference/direction pairs, the actual model function was evaluated using 100-decimal-digit outward interval arithmetic. The polynomial subtracted was the independently computed **exact** directional polynomial, not the native interval polynomial. Thus native coefficient uncertainty did not conceal a failed radial tail bound.

The five radial parameters were `1, 1/2, 1/16, -1/8, 1/256`. All 1,560 comparisons satisfied

\[
|f(t)-P_4(t)|\le\tau_{\mathrm{native}}|t|^5.
\]

The largest tested ratio was bounded above by `30967/500000`, about 0.061934. This is only a statistic about the tested points; it is **not** a uniform improvement to the certified tail constant and cannot justify a larger radius.

The independent point evaluator uses mpmath interval arithmetic, version 1.3.0. The main supplied verifier remains standard-library Python plus C++ and does not depend on mpmath.

### Fail-closed tests

The supplied cover validator rejected a missing terminal, duplicate terminal, overlapping root prefix, invalid binary path, missing root orbit and nonaccepting source label. The documented CLI rejected combining component-only mode with box acceptance and did not create an accepting output.

## 5. A genuine nonfatal defect

`geometry.py` is an unused legacy helper. It imports the centiradian `RADIUS = 1/100` but returns the literal metadata value `radius: "1/1000"`; its module description and one control message also retain the milliradian label.

The audit reproduces the inconsistent output. This is a real packaging/API defect, not evidence that the active theorem is false. The public verifier explicitly imports

```
import box_interface as geo
```

and the active `box_interface.py` reports `radius_radians: "1/100"` correctly. No complete-replay accepting path imports the legacy helper.

**Recommended correction:** remove the obsolete helper or make all its radius labels agree with the imported radius, then regenerate the manifest and replay the package. The audit has not silently altered a pinned file or issued a replacement proof archive.

`seed_bound.py` also returns a component-level `OPEN` field. In context that module explicitly verifies the invariant majorant, not exclusion; the complete verifier does not treat this component field as its final proof status. Unlike the legacy radius mismatch, this is not an accepting-logic defect.

## 6. What this audit does and does not warrant

On the checks performed here, the radius-1/100 theorem should be retained, not withdrawn. Its certificate is reproducible, the main analytic reductions are consistent, and the additional independent calculations found no contradiction.

A `PASS_UNIFORM_BALL` receipt alone is not a mathematical proof. It must be read together with the analytic lemmas, input normalization, completeness argument, and correctness of the accepting implementation. The correct description remains **a computer-assisted proof under the stated numerical execution model**.

The remaining trust boundary includes IEEE-754 execution, compilers and hardware, the correctness of the finite interval/Taylor implementation, and human checking of the elementary analytic remainder arguments. The independent tests reduce particular risks; they do not constitute formal verification or independent peer review. Compiling the same program twice cannot detect every shared mathematical error.

No result at radius 0.0475 or 0.06 is certified by this audit. No other stage of the global no-four-MUBs campaign was replayed. Earlier exploratory claims were not automatically validated merely because this final, logically separate package passed.

## 7. Reproduction of the additional audit

Install the audit-only dependency from `requirements.txt`. With the original proof ZIP available:

```
python scripts/reproduce.py /path/to/Patch2442Local_uniform_ball_centiradian.zip \
  --work audit_run --workers 4
```

To include the second compiler:

```
python scripts/reproduce.py /path/to/Patch2442Local_uniform_ball_centiradian.zip \
  --work audit_run --workers 4 --clang clang++
```

The driver verifies the exact archive hash, extracts it, runs the original complete verifier, exports its local coefficient enclosures, executes the independent coefficient/remainder/coverage audits, and optionally repeats the complete verifier under Clang. It records commands and errors rather than turning an incomplete audit into success.

The originally recorded receipts accompany this report. Timings from a reproduction will differ. The standalone driver and all bundled scripts were syntax-checked; the substantive underlying GCC/Clang replays and audit tests were executed as recorded. The portable script variants were also exercised against the extracted package where indicated by the audit chronology. No claim is made that the orchestration driver itself was subjected to an additional third complete end-to-end run.
