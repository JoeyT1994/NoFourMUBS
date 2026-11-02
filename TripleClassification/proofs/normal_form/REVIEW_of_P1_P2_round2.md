# Independent review of the hard-ball pattern witness

**Review date:** 1 November 2026.  
**Input:** `TC_hardballs_review_20261101.zip`.  
**Subject:** P1, P2, E1/E2, and the implementation chain requested in `original/BRIEF.md`.

## 1. Verdict

**P1 and P2 are mathematically sound. The new witness has one proof-critical implementation defect: its floating-key maximum is not a certified maximum. The returned implementation repairs that defect.** The enclosure and chaining argument then passes, conditional on the native input theorems and their hypotheses.

**The historical numerical table is only partially reproduced:** 1,601 of its 1,671 classification row identifiers and all 4,717 exclusion row identifiers have fresh successful replays; 70 historical classifications remain OPEN. The complete claims for 1016/768 level-4 cells are reproduced, but the complete 825 cell claim is not. See Section 6.

The review found no omitted Taylor term, incorrect derivative constant, missing tensor factor, invalid midpoint cancellation, lost phase winding, or unsound two-stage implication. The body of the copied native contraction was checked against the frozen source supplied in the package.

| Review item | Verdict |
|---|---|
| P1 decomposition and correlated linear term | Pass |
| Universal third-derivative bound `||F_HKK|| <= 2 sqrt(2)` | Pass |
| Tensor flattenings and monotone upper-corner bounds | Pass |
| Two localization stages on the same zero set | Pass |
| E1 product-of-bins enclosure, as mathematics | Pass |
| Original `fmax` implementation of its maxima | **Repair required; repaired here** |
| E2 carrier and error handoff | Pass |
| P2 native decomposition and small-gain argument | Pass |
| Native copied code | Exact prefix match |
| Whole-run assertion that every acceptance uses Arb only | Requires the Stage C qualification below |

The statement proved by the repaired witness is conditional and uniform: given a valid normal form for an actual H branch and a complete native cover, each successful pattern verdict applies to **every** actual completion in that pattern over the entire source cell. A reference point need not be a solution. A proposed matrix need not be an exact inverse or an orthogonal matrix.

This review does not supply the explicitly excluded cell-containment, branch-identification, or Stage C input-guard checks. Those remain required when transferring a record's theorem to a cell of an original ball. It does not close the far weak region of 815 or establish a whole-ball or global MUB classification.

## 2. Required repair: a maximum must bound every candidate

The original helper in `original/code/TripleClassification/hardballs/witness.py` is:

```python
def fmax(xs):
    return max(xs, key=lambda x: float(x.upper()))
```

It is used for three proof quantities: the largest bin displacement in a column; the largest support over that column's bins; and the largest of the 64 directional support caps. These are upper bounds, not choices of an expansion point.

At 160-bit precision, take exact dyadic numbers

\[
a=1,\qquad b=1+2^{-80}.
\]

Both upper endpoints convert to the same binary64 number `1.0`. Consequently `fmax([a,b])` returns `a`, although `a<b`. Applying `up` to the selected value does not restore the omitted candidate. This is a counterexample to the helper's claimed bounding property; it is not evidence that an actual reported pattern was falsely classified.

The repaired helper maximizes the outward Arb endpoints themselves:

```python
def fmax(xs):
    bounds = [up(x) for x in xs]
    if not bounds:
        raise ArithmeticError('empty maximum in colour enclosure')
    if any(not x.is_finite() for x in bounds):
        raise ArithmeticError('nonfinite maximum in colour enclosure')
    return max(bounds)
```

Here `up(x) = arb(x.upper())`. At the working precision these endpoints are finite, zero-radius dyadic Arb values; their comparisons are exact. The returned value therefore dominates every original candidate. Rejecting empty and nonfinite collections ensures that failure cannot be mistaken for an enclosure.

The regression imports the actual repaired helper. It reproduces the old counterexample and checks exact endpoint domination for ties, reversed order, singleton inputs, signed support values, and overlapping balls. It also checks conservative rejection of empty and nonfinite inputs. All 12 regression cases pass. See `checks/test_certified_max.py` and `evidence/max_regression.json`.

## 3. P1: independent derivation and code correspondence

### 3.1 Coordinates and reference gauges

Use the P1 residual with 66 real equations: 30 K-Gram components and 36 normalized mixed-modulus components. In this section E is the 36-by-30 Helmert injection, not the moving-space projector used in P2.

Let

\[
p=q-q_*=Uu+h,\qquad \|u\|\le r,\quad \|h\|\le e_H,
\]

\[
\zeta=z+\Lambda u,\qquad k=ET\zeta,\qquad
\rho=\|z\|,\quad \rho_\zeta=\rho+\lambda r.
\]

The normal form gives

\[
e_H=\|Q_0-q_*\|+\tfrac12\|H_2\|r^2+\|X\|\tau,
\qquad D=\|U\|r+e_H.
\]

Thus `||p|| <= D` and `||k|| <= t rho_zeta`, with `t=||T||`. The reference-rounding term is explicitly included.

The original statement unnecessarily requires exact column centering of `y_*`. Floating centering does not establish that hypothesis for the exact stored dyadic numbers. It is simpler to remove the hypothesis: each actual K column can be multiplied by a global phase so that its lifted phase has the same mean as the corresponding arbitrary exact reference column. Then `y-y_*` is column-centred and has the required representation. Column phases preserve the zero set, and the native joint gauge subsequently removes them. The revised proof states this convention explicitly.

### 3.2 Complete Taylor decomposition

Write

\[
G(\zeta)=BF(q_*,y_*+ET\zeta)
=G(0)+(I+L)\zeta+N(\zeta).
\]

At a putative zero, first Taylor-expand the H displacement while holding K fixed:

\[
0=G(\zeta)+B F_H(q_*,y_*+k)p+B R_1,
\qquad \|R_1\|\le\sqrt6D^2.
\]

Next expand the H derivative in the K displacement:

\[
F_H(q_*,y_*+k)p
=J_Hp+F_{HK}(q_*,y_*)[p,k]+R_2.
\]

Splitting `p=Uu+h` and `zeta=z+Lambda u` gives the exact identity

\[
\begin{aligned}
0={}&z+G(0)+Lz+K_u u+N(\zeta)+BJ_Hh\\
&+\sum_j u_jC_jz+M(u\otimes u)
+BF_{HK}[h,k]+BR_2+BR_1,
\end{aligned}
\]

where

\[
K_u=(I+L)\Lambda+BJ_HU,
\qquad M(u\otimes u)=\sum_j u_jC_j\Lambda u.
\]

In particular the term `(I+L)Lambda u` is retained. Replacing it by `Lambda u` would lose `L Lambda u`; the supplied proof and code do not make that error. The floating proposal `Lambda=-BJ_HU` need not cancel the exact correlated linear term, because its actual defect is explicitly bounded.

The code computes `JH` with the correct positive imaginary-part sign. It constructs `Cj` from the exact mixed ridge derivatives, `Ku` from `(Sf*A)*Lam + BJ*U`, and `M` in the matching ordered `(j,k)` layout. The Gram and mixed ridge coefficients also give the correct `G0` and linear defect. The constant term `-1` in the mixed residual cancels the diagonal contribution `6/6` exactly.

### 3.3 The third derivative bound

For the mixed component `(a,b)`, the third derivative has absolute value at most

\[
\frac13\sum_{s<t}
 |d_{ta}-d_{sa}|\,|e_{sb}-e_{tb}|\,|e'_{sb}-e'_{tb}|.
\]

For any real six-vector v,

\[
\sum_{s<t}(v_s-v_t)^2
=6\|v\|^2-\left(\sum_s v_s\right)^2
\le6\|v\|^2.
\]

Also `|d_t-d_s| <= sqrt(2)||d_a||`. Applying Cauchy-Schwarz to the two K difference factors gives

\[
|F_{HKK}[d,e,e']_{ab}|
\le2\sqrt2\,\|d_a\|\,\|e_b\|\,\|e'_b\|.
\]

Squaring and summing over a and b yields

\[
\|F_{HKK}[d,e,e']\|^2
\le8\|d\|^2\sum_b\|e_b\|^2\|e'_b\|^2
\le8\|d\|^2\|e\|^2\|e'\|^2.
\]

Therefore

\[
\boxed{\|F_{HKK}\|\le2\sqrt2},\qquad
\|R_2\|\le\sqrt2D t^2\rho_\zeta^2.
\]

This bound is global in the phases and does not assume an unbiased or Hadamard reference point.

### 3.4 Block bounds, tensors and monotonicity

Taking either strong or weak block of the exact decomposition gives precisely

\[
\|z_a\|\le\|G_a(0)\|+\eta_a+\beta_a\rho+
\gamma_a(\rho)+P_a(S+\lambda_s r,W+\lambda_w r),
\]

with the stated

\[
\eta_a=r\|(K_u)_a\|+e_H\|(BJ_H)_a\|
+r^2\|M_a\|+\sqrt6 b_aD^2,
\]

\[
\beta_a=\|L_a\|+r\|[C]_a\|,
\quad
\gamma_a(\rho)=2b_at e_H\rho_\zeta
+\sqrt2b_at^2D\rho_\zeta^2.
\]

The linear cross-term bound uses `[C](u tensor z)` and therefore introduces `r||[C]||rho`, with no additional dimension factor. The quadratic term uses `||u tensor u||=||u||^2`.

The three Gram flattenings in `tensor_bounds` are the reviewed output-, strong-input- and weak-input-slot flattenings. Their certified norm bounds are valid independently of which one floating arithmetic proposes. The Taylor coefficient is divided by `(n-k)! k!`, retaining the binomial multiplicity. The ninth-order sine/cosine tail uses the global amplitude bound and requires neither a small-angle assumption nor an exponential factor.

All coefficients in the resulting bounding functions are nonnegative. The maps `sqrt(S^2+W^2)`, their affine shifts, the polynomial powers and the norm of the nonnegative componentwise tail are nondecreasing for `S,W >= 0`. The use of the upper corner of a rectangle is consequently valid.

With `Lambda=0`, the new estimate is an alternative local treatment of the H-K dependence. It is not identically the old bound and is not guaranteed to be numerically smaller everywhere: its extra quadratic remainder can dominate at large radius. This wording has been corrected without changing the theorem.

### 3.5 Two stages and closed boundaries

The first stage uses `Lambda=0`, so its variable is the original `zeta`. A successful localization gives `||zeta||<rho_1`. The second stage uses the same actual zeros and the identity `z=zeta-Lambda u`. It therefore starts with

\[
\|z\|\le\rho_1+\lambda r,
\qquad
\|z_w\|\le\min(w_{\rm cap},\rho_1)+\lambda_w r.
\]

If every first-stage target fails, the implementation retains the original E1 radius and weak cap before adding these affine-shift allowances. This is also sound; it merely gives a weaker starting enclosure.

The search retains both closed children at every split. Its rules discard only boxes outside a proved initial bound or boxes for which a norm lower endpoint strictly exceeds a residual upper bound. Localized boxes are retained conceptually as a covering of all possible zeros inside the target radius. Budget or depth exhaustion raises an error and proves nothing. Interval-rounded endpoints can be interpreted as enclosures of exact subdivision endpoints, so the strict comparisons remain conservative and no shared boundary is lost.

## 4. P2: exact cancellation in the native averaged equation

For P2, F is the native 96-component full-triple residual and E is the native 72-by-72 moving-space orthogonal projector. These differ from the P1 symbols.

Let `W` be the joint-gauge projector, `G` the group average, `L` the joint carrier, `m` the moving component of the lifted centre and `n` the unknown joint error. With a canonically fixed reference a,

\[
x=a+m+WLu+Wn,\qquad \bar x=a+GWLu+GWn.
\]

Their midpoint displacement is exactly

\[
\frac{x+\bar x}{2}-a
=\frac m2+\frac{I+G}{2}WLu+\frac{I+G}{2}Wn.
\]

Thus the signed average of the native endpoint matrices gives the claimed constant `Delta_c` and matrices `V_k`. It is an estimate of the integrated Jacobian, not a pointwise Jacobian claim. The native remainder bounds are unchanged.

### 4.1 The two projection identities

Every `V_k` has the right factor `LMAT*E`, so exact idempotence gives

\[
V_kE=V_k.
\]

The left factor E in the preconditioner also gives `range(V_k) subset range(E)`.

Exact covariance and canonical fixedness give

\[
YF(\bar x)=F(\bar x),\qquad Q_YF(\bar x)=0.
\]

Consequently `A_0 F(xbar)=0`. This does **not** assume `F(xbar)=0`. Left multiplication by `Pi(u)` preserves the cancellation, establishing `A(u)F(xbar)=0` exactly.

### 4.2 Small-gain estimate

Set

\[
V(u)=\sum_k u_kV_k,\quad
D_*=\Delta_0+\Delta_c+\Delta_{\rm rest},\quad
\Pi(u)=I-V(u),\quad A(u)=\Pi(u)A_0.
\]

From the native decomposition and `V(u)E=V(u)`,

\[
\boxed{E-A(u)ME=V(u)^2-\Pi(u)D_*}.
\]

There is no commutativity assumption: the quadratic term is the ordered sum `sum_{j,k} u_j u_k V_j V_k`. Horizontal concatenation gives

\[
\|V(u)\|\le\nu r,\qquad
\|V(u)^2\|\le\mu r^2,
\]

with block matrix sizes 72-by-288 and 72-by-1152 respectively. Therefore

\[
\|E-A(u)ME\|
\le\mu r^2+(1+\nu r)
 (\eta+\|\Delta_c\|+h+R)=q_2.
\]

For the selected putative solution, u is fixed. The preconditioner is therefore constant during the segment integration; no derivative of `A(u)` is missing. Since `0=A(u)Me`, `Ee=e` and `q_2<1`, we have `||e||<=q_2||e||` and hence `e=0`.

The copied prefix of `moving.parts` is byte-for-byte identical to the supplied frozen native `prove`: 76 lines, comprising 43 matching AST statements before the changed return. The P2 code extracts and multiplies all 16 ordered blocks in the correct layout. Spectral bounds use the native positive Gram-shift/LDL verification.

There is also a useful explanation of the improvement. For the exact concatenated norms, `mu <= nu^2`, since the product-block matrix factors as `[V_j]` times a block diagonal matrix with four copies of `[V_k]`. Put `a=nu*r` and `b=eta+||Delta_c||+h+R`. Then

\[
q_{\rm native}-q_2
=a(1-q_{\rm native})+(\nu^2-\mu)r^2.
\]

Thus, at the level of exact norms, P2 improves every strict native contraction with nonzero carrier variation. To rescue a failed native contraction it needs a sufficiently strong product-block improvement. Independently rounded upper bounds need not preserve this identity exactly, so this observation is explanatory, not an additional acceptance test in the code.

The selection `q_native if q_native < q_p2 else q_p2` is safe because either bound is independently valid and the selected bound must pass a strict test. With overlapping intervals it can theoretically miss a native-only success. An explicit disjunction would improve completeness, but no soundness repair is required and this was left unchanged.

## 5. E1, E2 and the remaining implementation chain

### 5.1 Product-bin enclosure

For a unit weak direction n, let `a=T^{-T}(0,n)`. A column whose Helmert displacement belongs to a bin ball `d+B_rho` obeys

\[
a_c\cdot x_c\le a_c\cdot d+\rho\|a_c\|.
\]

Taking the maximum over that column's retained bins and summing over columns gives the stated support function. One of 64 equally spaced directions lies within `pi/64` of any nonzero weak vector, so the maximum directional support divided by `cos(pi/64)` bounds its weak norm. The Euclidean initial radius similarly follows from `||T^{-1}||` and the six maximum column reaches. The corrected maximum is the only new repair required for these calculations.

The integer winding choices need not be optimal. Translating an entire closed bin by integer multiples of `2*pi` preserves all of its represented K columns, and the mean-zero projection and gauge choice then supply the displacement relative to `y_*`.

### 5.2 Handoff to the native theorem

If the moving localization proves `||z||<t_0`, then

\[
K\text{-phase}=y_*+ET\Lambda u+e,
\qquad \|e\|\le\|T\|t_0.
\]

Each column has no larger error than the full phase matrix. The native carrier is correctly extracted by row-major indices `6*a+c`, and the shared error is safely supplied as every column's `epsilon`.

The original `force` additionally supplied `phase_radius=tube`. That field would understate a radius about the fixed reference because it omits the carrier motion. The current moving classifier never reads it, so it did not affect any acceptance. The returned code removes the unused field instead of advertising an incorrect bound to future consumers.

### 5.3 Proposals, caching and arithmetic

The numerical root finder, SVD, pseudoinverse, affine slope, flattening choice, winding choice, symmetry action proposal and reference matching are proposal mechanisms. Each accepted conclusion is subsequently verified by its own mathematical bounds. Reference matching verifies a full permutation, and the fine bins are reordered into cached-reference order. Reusing a reference does not assume equality of two numerical roots.

The Helmert matrices are constructed at the runner's 120-bit import context and later used at 160-bit precision. They still enclose the exact isometry; this is conservative. Higher precision cannot recover already-lost tightness, but no exact identity is inferred from the numerical midpoint alone.

The whole runner is not literally an Arb-only proof computation: inherited Stage C uses its reviewed conservative binary64 error enclosures. That was already an explicit qualification in `original/refs/NATIVE_PROOF.md`. The correct claim is that the **new witness** uses Arb-certified bounds and strict Arb acceptance predicates, while native-cover completeness retains Stage C's separate theorem and input guard.

The public certifier must still combine the witness with cell containment, branch identity and the Stage C guard. Merely running this standalone script does not establish those excluded integration obligations.

## 6. Verification results

### 6.1 Integrity and supplied receipts

All **91** entries in the original SHA-256 manifest match. The original source remains unchanged. Source comparisons use the frozen files supplied in that archive.

The independent standard-library receipt check finds **34 files and 10,362 pattern rows**:

| Supplied status | Rows |
|---|---:|
| CLASSIFIED | 1,671 |
| EXCLUDED | 4,717 |
| OPEN | 3,974 |

Every file has unique contiguous pattern indices. Parsing the displayed Arb balls with exact decimal endpoint arithmetic confirms that all 1,671 supplied classifications have both bounds strictly below one, and P2's upper endpoint is below the native lower endpoint. The largest supplied native upper bound is about **0.9709339201**, and the largest supplied P2 upper bound about **0.9393615684**. Both occur at `768_3_4_5_5_1`, pattern 384.

These are checks of the supplied receipts. They are not a fresh replay by themselves.

### 6.2 Fresh interval replay

The fresh runs used **Python 3.12.14**, python-flint **0.9.0**, NumPy **2.2.6**, and SciPy **1.17.0**, with the runner's 160-bit computations. The supplied reproduction environment specified Python 3.13, so this is not an identical interpreter/platform reproduction.

The initial repaired replay recomputed all **6,388 previously successful rows**. It freshly returned **1,510 CLASSIFIED**, **4,717 EXCLUDED**, and **161 OPEN**. Every rebuilt full pattern count and every pattern's recorded colour list matched the supplied enumeration. All 4,717 exclusions came from native fine bins, as in the supplied logs.

Changing the work-item sequence also changes the process-local reference cache. A second pass restored the original contiguous-chunk context for those 161 OPEN rows by executing earlier fine-bin/proposal/preparation steps and then rechecking the targets. It freshly classified **91** and left **70 OPEN**, with no chunk errors. Exact hexadecimal proposal data are retained for this pass.

A full-order run on `1016_3_5_4_3_4` additionally classified 17 formerly OPEN row identifiers. Across the successful fresh receipts, **1,601 of the 1,671 historical classification row identifiers** have a fresh success, and all **4,717 exclusion row identifiers** pass again. Including the 17 additional classifications gives **1,618 distinct CLASSIFIED rows** in the combined receipt summary. All selected fresh classifications also pass the native bound; none needs P2. The largest selected native upper bound is about **0.9687464909**, and the largest P2 upper bound about **0.9372206405**.

The comparison is explicitly keyed by the supplied pattern indices and colour lists on rebuilt covers. Historical floating proposals and original bin assignments were not archived as exact witnesses. These aggregate comparisons therefore document fresh execution outcomes; they do not replace a bound cover or a complete replay in the public certifier. In particular, matching an aggregate count is not enough: the full-order 1016 experiment both gains and loses particular classifications. The exact outstanding identifiers are in `replay/combined/UNREVALIDATED_PATTERNS.json`.

The historical classification rows compare as follows:

| Cell identifier | Supplied C | Fresh success on supplied C identifiers | Still OPEN |
|---|---:|---:|---:|
| `1016_3_5_4_3_4` | 129 | 112 | 17 |
| `1016_4_11_9_7_9` | 192 | 192 | 0 |
| `1016_4_13_10_7_9` | 64 | 64 | 0 |
| `768_3_3_5_5_2` | 872 | 864 | 8 |
| `768_3_4_5_5_1` | 92 | 78 | 14 |
| `768_4_6_10_11_4` | 48 | 48 | 0 |
| `768_4_8_11_11_3` | 192 | 192 | 0 |
| `815_5_20_19_12_14` | 29 | 15 | 14 |
| `815_5_21_19_12_14` | 24 | 16 | 8 |
| `825_4_7_6_7_9` | 12 | 7 | 5 |
| `825_4_8_6_7_9` | 17 | 13 | 4 |
| **Total** | **1,671** | **1,601** | **70** |

Of the 70 outstanding rows, the final context replay stalls at localization for **59**, and at the symmetry step for **11**. They are not exclusions or counterexamples. The unmodified prototype also fails to reproduce some historical successes in this environment.

### 6.3 Fully reproduced cells and diagnostic comparisons

The initial repaired run closes every pattern in these six complete cells:

| Cell | CLASSIFIED | EXCLUDED | OPEN |
|---|---:|---:|---:|
| `1016_4_11_9_7_9` | 192 | 64 | 0 |
| `1016_4_13_10_7_9` | 64 | 192 | 0 |
| `768_4_6_10_11_4` | 48 | 208 | 0 |
| `768_4_8_11_11_3` | 192 | 64 | 0 |
| `905_4_10_9_2_12` | 0 | 4 | 0 |
| `905_4_2_4_5_11` | 0 | 6 | 0 |

These complete fresh runs support all-pattern conclusions on their own represented branches, with the external native hypotheses retained. They do not identify those branches with the original-ball cells without the excluded integration checks.

For the requested example `1016_4_11_9_7_9`, the largest fresh selected contraction bound is approximately **0.2331692309**. Running the original and repaired code on that entire cell produces identical non-timing receipt fields. A second matched diagnostic, patterns 32 through 63 of `1016_3_5_4_3_4`, likewise produces identical non-timing receipt fields: 21 CLASSIFIED, 6 EXCLUDED, and 5 OPEN. Those tests isolate cases where the reproduction difference is already present in the original code.

The claimed complete closure of `825_4_7_6_7_9` is **not reproduced**: the fresh runs retain 7 classifications and 36 exclusions, with 5 rows still OPEN. The broader historical table must therefore remain qualified.

### 6.4 Reproduction recommendation

The mathematics and corrected acceptance path can be approved. The historical numerical table is only partially independently revalidated.

For reliable portable replay, retain the exact binary proposals used by each successful run, including the reference and coordinate/preconditioner data, affine slope, native inverse/action data, and a binding to the retained cover. Shared references can be stored once. The hexadecimal y/T/B traces included here help preserve the context-replay attempts; they are diagnostic proposal data and are not standalone certificates for the historical results.

Both replay drivers return a nonzero exit status when requested rows remain OPEN. That is the intended conservative outcome, not a runtime error. No OPEN row has been promoted to a proved result in the returned summaries.


## 7. Scope of the accepted theorem

The repaired checker supports this implication:

> For a valid represented H branch and a complete covering pattern, `EXCLUDED` means no completing K lies in that pattern. `CLASSIFIED` means every such completion has the balanced order-three symmetry. The conclusion is uniform over the whole cell. If every pattern is resolved, the same classification or emptiness applies to every completion on that represented branch.

Applying the existing recognition theorem then identifies the corresponding triple type under its stated equivalence conventions. No existence claim about the proposed reference is needed.

The review resolves the new proof obligations in P1 and P2 and repairs the new enclosure calculation. It does not provide the missing far-region exclusion, fill an `OPEN` pattern by assumption, infer a whole-ball result from selected cells, or prove no four MUBs in all of C^6.

## 8. Returned files and reproduction

- `REVIEW.md`: this integrated review.
- `original/`: the input package's files, unchanged and with its original manifest.
- `patched/`: runnable source, inputs, reference proofs and revised `PROOFS.md`, with the maximum repair and removal of the unused inaccurate field. Historical reports and receipts remain in `original/`.
- `PATCH.diff`: exact changes from the supplied package.
- `checks/`: independent receipt/source checks, maximum regression, and replay drivers.
- `evidence/` and `replay/`: machine-readable audit and execution results; `replay/combined/UNREVALIDATED_PATTERNS.json` lists the 70 outstanding identifiers and diagnostics.
- `requirements-audit.txt`: the numerical package versions used here.
- `MANIFEST.sha256`: hashes of the returned package's files.

From the returned directory, after installing the listed dependencies:

```bash
python checks/check_receipts.py original --output supplied_receipt_audit.json
python checks/test_certified_max.py --package patched --output max_regression.json
python patched/code/TripleClassification/hardballs/run_cell.py \
  patched/data/1016_4_11_9_7_9.input.json.gz example.jsonl --workers 8
```

The source receipt audit reads the supplied logs and verifies their arithmetic text and static source correspondence. It is deliberately distinct from the fresh interval replay. Proposals can vary with numerical environment, reference-cache order and worker scheduling; the validity of an accepted strict inequality does not rely on reproducing a particular floating proposal.
