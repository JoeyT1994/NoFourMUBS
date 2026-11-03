# Algebraic review of the Antigravity hard-ball witness

**Review date:** 2 November 2026.  
**Input:** `TC_antigravity_review_20261102.zip`.  
**Status:** completed algebraic audit, repaired code, and all requested full-cell replays.

## 1. Verdict and scope

**The witness fails as submitted because the combined quadratic H-motion matrix has the wrong sign in both its proof and executable implementation.** This is a substantive certificate defect: rigorous interval arithmetic applied to the wrong matrix does not bound the required Taylor coefficient. The supplied successful replays do not resolve that problem.

The repair is small and mathematically definite: add the symmetric $C_j\Lambda$ contribution instead of subtracting it. An independent derivative regression passes with the corrected implementation and fails when the original sign is restored. Additional proof corrections are required for the normal-form remainder sign, the exact H-motion decomposition, the fourth-derivative constant, and the explanatory Gram arguments.

**After these corrections, all requested lemmas pass within the represented H-branch scope of the brief.** The corrected proof includes every Taylor term, retains every original zero under an invertible coordinate change, and supplies the bounds used by the executable witness. The certificate reader has also been hardened against incomplete coverage, incorrect input identity, invalid stored proposals, and unannounced replacement searches.

This is a per-pattern theorem on the supplied represented cell branches. Certification of an original ball still requires its separate dyadic-cell containment, branch overlap/identity, and Stage C input-precondition checks. Those integration obligations were explicitly excluded from this review. No global no-four-MUB theorem follows from this package alone.

The mathematical review and numerical campaign are separate conclusions. The former establishes the repaired acceptance theorem; the latter determines which particular cells satisfy its strict inequalities.

## 2. Per-lemma decisions

| Item | Submitted version | Corrected version and principal finding |
|---|---|---|
| N9 radius notation in the proposal | Incorrect denominator; code correct | Use $ρ=π√(29/6)/m$, with $m=96$; 192 is the midpoint-grid denominator. |
| P1.1: binomial isometry and flattenings | Pass | Correct normalizations, including the vertical $\sqrt2L_{11}$ block. |
| P1.2: cubic normal form | Fail as written | Use $\widetilde N_s=N_s+q_2+q_3$. Existing normal-form coefficients implement this corrected statement. |
| P1.3: H-motion floor | Fail in proof and code | Change the sign of the symmetric $C_j\Lambda$ coefficient; replace incomplete remainder identities. |
| P1.3: derivative and 90-ridge bounds | Constants pass; proofs need corrections | Correct the sine coefficient and justify the fourth-order constant using the sharper fourth-power identity. |
| P1.4: combined Gram/angular bounds | Bounds and code pass | Replace the flawed explanatory scaling with exact direct-sum/tensor constructions. |
| P1: localization and exhaustion | Conditional on invalid submitted floor | Pass after preceding repairs; upper-corner tests are monotone and the coordinate shear preserves all zeros. |
| E1′: weak-ray strong cap | Pass | Every retained bin remains enclosed for any proposed weak centre. |
| E2′: per-colour tube | Pass | The split operator norms bound each column's native phase error. |
| E3: recursive core/outer peel | Pass | Exhaustive partition; arc consistency preserves every actual clique. |
| P2: affine preconditioner | Pass | Same reviewed cancellation and all 16 ordered product blocks. |
| Joint $(u,y)$ proposal | Pass as a proposal | No accepted conclusion assumes the numerical reference is an exact solution. |
| “Zero floating-point decisions” replay | Incorrect literal claim | New witness acceptance is Arb/exact; inherited native setup retains its reviewed numerical mechanisms. |

Detailed independent derivations are in `normal_form.md`, `motion_gram.md`, and `native_replay.md`. The complete corrected statements are in `repaired/proposal/PROOFS.md`.

## 3. The decisive matrix-sign error

Write

\[
\zeta=z+\Lambda u,\qquad d=Uu,\qquad k=ET\zeta,
\qquad C_j=BF_{HK}(q^*,y^*)[Ue_j,ET\,\cdot].
\]

The mixed quadratic term is exactly

\[
BF_{HK}[d,k]
=\sum_j u_jC_jz+\sum_{j,k}u_ju_kC_j\Lambda e_k.
\]

Consequently the required coefficient is

\[
\boxed{
M_{\mathrm{comb}}[:,(j,k)]
=\frac12\left(BJ_HH_2[:,(j,k)]
+BF_{HH}[Ue_j,Ue_k]
+C_j\Lambda e_k+C_k\Lambda e_j\right).
}
\]

The submitted code used `... / 2 - c_ul`. It must use `... / 2 + c_ul`. This cannot be repaired by taking a larger interval for the original expression unless that interval is independently shown to enclose the correct matrix. No such argument was present.

The regression checks the coefficient against the original residual rather than against a second transcription of the matrix formula. At $q^*=y^*=0$, change only the phase of $H_{00}$ and use its mean-zero copy in the first K column. The relevant exact residual difference is

\[
F_{00}(td,tk)-F_{00}(0,tk)=\frac53(1-\cos t).
\]

Its quadratic coefficient is $5/6$. At the zero-phase reference the repaired formula gives $5/6$, while the original sign gives $-5/2$. The production-expansion test uses a nearby generic dyadic reference and independently differentiates the complex overlap: the correct coefficient is $0.8322185008787635\ldots$, while restoring only the old sign gives $-2.4966555026362905\ldots$ and the test fails. This proves a coefficient error in the original implementation. It does not, by itself, construct an actual falsely classified MUB triple; the changed benchmark verdicts must be determined by rerunning the repaired inequalities.

A second exact scalar check shows that the wrong sign can actually underestimate the required coefficient. Set $k=-\tfrac12 d_{\mathrm{centered}}$ at the same zero-phase reference. Then

\[
F_{00}(td,tk)-F_{00}(0,tk)=\frac53\bigl(\cos(3t/2)-\cos(t/2)\bigr).
\]

The true quadratic coefficient is $-5/3$; the submitted matrix gives zero. This is a counterexample to the proposed algebraic coefficient identity, not an asserted physical MUB counterexample.

## 4. Correct normal-form cancellation

The definitions of the normal-form maps should remain

\[
q_2=-\frac12D^2_{ww}G_s[w,w],\qquad
q_3=-\left(D^2_{sw}G_s[q_2(w),w]+\frac16D^3_{www}G_s[w^3]\right).
\]

With these definitions, the cancelling remainder is

\[
\boxed{\widetilde N_s=N_s+q_2+q_3,\qquad\widetilde N_w=N_w.}
\]

The submitted proof instead wrote $N_s-q_2-q_3$ and claimed the corresponding differences vanished. They do not. For example, $G(s,w)=\sin s+\cos w$ gives $q_2=w^2/2$, $q_3=0$; at $s=q_2$, the incorrectly defined remainder has a nonzero quadratic term, while the claimed bound starts at fourth order.

The coordinate change itself is correct:

\[
(z_s,w)\mapsto(z_s-q_2(w)-q_3(w),w).
\]

It is a globally invertible polynomial shear, with the obvious additive inverse. It requires no small-radius or nondegeneracy assumption. Subtracting $q_2+q_3$ from $z_s=-[\cdots+N_s+\cdots]$ places **plus** $q_2+q_3$ inside the bracket. The code's normal-form bounds already correspond to this corrected sign, so reversing the definitions of $q_2,q_3$ would be an additional error.

Set $t=\widetilde\zeta_s$, $s'=t+q_3$, and $s=s'+q_2$. The quadratic strong term splits into $D^2_{ss}[s',s']/2$, $D^2_{ss}[s',q_2]$, and $D^2_{ss}[q_2,q_2]/2$. The mixed quadratic term uses $t+q_2+q_3$, while the cubic $sww$ term uses $s'+q_2$. These substitutions yield exactly the claimed grouped quartic and mixed operators.

For a single ridge, writing $a=a_w\cdot w$, $b_2=a_s\cdot q_2$, $b_3=a_s\cdot q_3$, its pure quartic contribution is

\[
-C(b_3a+b_2^2/2)-Sb_2a^2/2+Ca^4/24.
\]

All five monomial coefficients match the implementation. Higher-degree contributions are retained inside the unexpanded $s,s'$ terms and the unchanged degree-four-through-eight Taylor sum. The ninth-order tail follows by bounding each ridge derivative by $\sqrt{C^2+S^2}$, summing componentwise, and taking the output norm. A common Lagrange point is unnecessary.

The independent flat bound also applies to the same corrected remainder. Therefore taking the minimum of flat and curved bounds is valid.

## 5. Complete H-motion bounds

Let $h=H_2[u,u]/2+\widetilde h$, with bounds $\|h\|\le e_H$, $\|\widetilde h\|\le\widetilde e_H$, and $\|d\|\le d_u$. Keep pure H remainders at $y^*$:

\[
R_{HH}=F(q^*+d+h,y^*)-F(q^*+d,y^*)-J_Hh.
\]

There is no extra subtraction of $J_HH_2[u,u]/2$. Its bound is

\[
\|R_{HH}\|\le2\sqrt6\|d\|\|h\|+\sqrt6\|h\|^2.
\]

The third-order remainder after the quadratic Taylor polynomial in $d$ obeys $\|R_{HHH}\|\le2d_u^3/\sqrt3$. The mixed $h$-increment is the full four-corner difference

\[
\begin{aligned}
R_h={}&F(q^*+d+h,y^*+k)-F(q^*+d,y^*+k)\\
&-F(q^*+d+h,y^*)+F(q^*+d,y^*),
\end{aligned}
\]

which is bounded by $2\|h\|\|k\|$. The remaining mixed quadratic H contribution is

\[
R_{HHK}=\int_0^1(1-s)
\left(F_{HH}(q^*+sd,y^*+k)-F_{HH}(q^*+sd,y^*)\right)[d,d]\,ds,
\]

bounded by $\sqrt2\|d\|^2\|k\|$. These definitions give an exact decomposition and account for all $h$-dependent mixed terms. In P1, the incomplete linearized $h$-cross term is replaced by $BR_h$.

The repaired block floor is consequently

\[
\eta_g=r\|(K_u)_g\|+\widetilde e_H\|(BJ_H)_g\|
+r^2\|(M_{\mathrm{comb}})_g\|
+b_ge_H(2\sqrt6d_u+\sqrt6e_H)
+\frac2{\sqrt3}b_gd_u^3.
\]

The cubic H constant is valid: subtracting the mean of a six-vector gives

\[
\sum_{s<t}|x_s-x_t|^3\le6\sqrt2\|x\|^3,
\]

and summing the resulting mixed-component bounds gives the stated full-vector norm.

The proposed explanation of the fourth K derivative was insufficient: its bound $12\|x\|^4$ does not establish the claimed constant. The required estimate is nevertheless true. For $z=x-\overline x\mathbf1$,

\[
\sum_{s<t}(x_s-x_t)^4
=6\sum_s z_s^4+3\|z\|^4\le9\|x\|^4.
\]

This proves $\|F_{HKKKK}[d,k^4]\|\le3\sqrt2\|d\|\|k\|^4$, hence the code's $\sqrt2/8$ Taylor coefficient. Similarly $\|F_{HKKK}[d,k^3]\|\le4\|d\|\|k\|^3$ gives $2/3$. These bounds are uniform in all phases, without assuming the reference is Hadamard or solves the completion equations.

The exact H-derivative ridge is

\[
-\frac{\delta_j}{3}\sin(\phi+a_l^T\zeta).
\]

Its cosine coefficient is therefore $-\delta_j\sin\phi/3$, correcting another submitted sign. This particular error did not change the numerical Gram bounds: a common minus sign disappears from $V_C^TV_C$ and squared amplitudes. The repair makes the advertised exact identity true.

Stacking the four H directions is valid by Cauchy–Schwarz in $u$. The quadratic Taylor factors $1/2,1,1/2$, cubic factors $1/((3-k)!k!)$, and componentwise fourth-order ridge tail all match the code. The Gram-plus-fourth-tail estimate and universal cubic remainder estimate bound the same quantity, so their minimum is sound.

## 6. Polynomial operators, localization, and native classification

P1.1 follows directly from the binomial theorem: $\|\phi_d(w)\|=\|w\|^d$. Both horizontal and vertical flattenings are valid operator bounds; the degree-three and degree-four binomial normalizations and the $\sqrt2L_{11}$ stack are correct.

For P1.4, use $v=(s,\sqrt\alpha\,w)$ and the linear feature $b_l=(a_{l,s}/2,a_{l,w}/\sqrt\alpha)$. Their tensor Gram gives exactly $K_S/4+K_W/\alpha$. For degree three, use the symmetric block feature

\[
D_l=\begin{pmatrix}
a_{l,s}a_{l,s}^T/6&a_{l,s}a_{l,w}^T/(4\sqrt\alpha)\\
a_{l,w}a_{l,s}^T/(4\sqrt\alpha)&a_{l,w}a_{l,w}^T/(2\alpha)
\end{pmatrix}.
\]

Its Frobenius Gram is precisely $K_S^{\circ2}/36+(K_S\circ K_W)/(8\alpha)+K_W^{\circ2}/(4\alpha^2)$. Contracting with $v\otimes v$ establishes the implemented combined bound. The 16-ray angular estimate follows from positive interpolation between consecutive rays with coefficient sum at most $\sec(\pi/32)$.

With the strong cap fixed on a search rectangle, every term of `curved_slack` is nondecreasing in the two upper radii. This remains true for minima of valid increasing bounds. The upper-corner test therefore encloses the entire rectangle. Bisection retains both closed halves; budget exhaustion returns OPEN. The repaired geometric cap takes outward endpoints before clipping against zero, avoiding the generic interval error in Python's `max(arb(0), uncertain_value)`.

The introductory N9 radius also needed a written correction. The final Stage C bins have width $1/96$ cycles and midpoints on the $1/192$ grid. Their centred phase radius is $\rho=\pi\sqrt{29/6}/96$, not the proposal’s $\pi\sqrt{29/6}/192$. More generally it is $\pi\sqrt{29/6}/m$ for the returned resolution $m$. The code already passes the correct `cover['bin_radius']`; this changes no numerical verdict.

E1′ and E2′ are direct norm inequalities. Translating the colour-product enclosure along a proposed weak ray preserves every retained bin. Each native column error satisfies

\[
\|e_c\|\le\|T_{s,c}\|\|z_s\|+\|T_{w,c}\|\|z_w\|,
\]

and the corrected coordinate bounds give the stated tube. E3 partitions by the first outer colour; interval-uncertain bins may be assigned to the core because the partition does not depend on an exact reach classification. Arc consistency cannot remove any member of an actual clique.

P2 uses the reviewed identity

\[
E-(I-V(u))A_0ME=V(u)^2-(I-V(u))D_*.
\]

The code includes all ordered $V_jV_k$ products and uses the strict disjunction $q_{\mathrm{native}}<1$ or $q_{P2}<1$. After normalizing only the stored winding and inverse substitutions, 43 arithmetic AST statements match the frozen native contraction exactly. No derivative of the $u$-dependent preconditioner is missing: $u$ is fixed during the segment integral.

## 7. Replay integrity and honest arithmetic claims

The numerical completion finder, SVD, inverse proposal, weak centre, and symmetry action are proposal mechanisms. Their accuracy is never asserted as an exact premise: residuals, linear defects, reference displacement, and contraction bounds are recomputed. A numerical reference need not be a zero, and a Gauss–Newton iterate need not remain in the cell.

Nevertheless, the original replay protocol was too permissive. It stored an input hash without checking it, silently intersected requested indices with recorded indices, and could finish without establishing complete coverage. Missing native tube proposals could invoke a fresh floating search. Arbitrary stored winding values were accepted although gauge invariance requires integers.

The repaired protocol now:

- Checks the cell-record hash, requested-pattern coverage, legal verdict metadata, and column permutations.
- Saves native root proposals and binds version-two certificates to the rebuilt pattern count and closed-bin colour assignment.
- Records the exact dyadic reference centre and validates finite proposal arrays and their dimensions.
- Requires legal native actions, integral windings, complete flattening choices, valid plans, and the reconstructed peel leaf set.
- Rejects missing native replay proposals rather than searching for replacements.
- Reports verdict changes, OPEN rows, processed counts, and whether the entire cell was checked; incomplete or mismatching checks return failure.

Explicitly requested partial checks remain available but do not claim complete-cell coverage. Legacy certificates still undergo their available identity and coverage checks; they lack the newer pattern/bin binding and must not be described as having it.

The original new-witness `fmax` already compared outward endpoints correctly; finite/nonempty guards were added. Witness winding choices now use exact rational rounding of Arb midpoints. The entire executable is still not literally free of floating-point decisions: inherited native cover construction and Stage C retain their reviewed binary64 enclosures. The accurate claim is **strict Arb/exact acceptance for the new witness, conditional on the reviewed native cover and its input hypotheses**.

One additional reporting qualification is necessary: a peel result records the last classified leaf’s `q`, not the maximum over all classified leaves. Each leaf is separately certified, so the theorem is unaffected. The returned authors’ report now labels the table as largest reported pattern bounds and explicitly avoids a worst-leaf-margin claim.

## 8. Verification evidence

The following independent checks pass:

- Four dependency-free exact-rational normal-form tests: binomial identity, corrected cancellations, full grouped degree-two-through-four decomposition, and the flat strong cubic identity.
- The actual H-motion derivative regression, with an expected failing negative control restoring the old sign.
- Nine replay/enclosure regressions covering sub-binary64 endpoint gaps, positive-part rounding, integer windings, malformed actions, missing-proposal rejection, invalid plans/data, and clique preservation.
- Ten driver regressions covering identity, pattern/bin binding, missing or empty coverage, invalid verdict/permutation metadata, and explicit partial verification.

The repaired modules compile and import successfully. These tests establish the particular identities and protocol properties they exercise; they do not replace the full-cell strict-inequality replay.

## 9. Completed benchmark and supplied-certificate replays

The 18 benchmark rows contain **9,338 patterns**, correcting the submitted executive summary’s 9,162.

The repaired checker resolved **9,338/9,338 patterns: 4,669 CLASSIFIED, 4,669 EXCLUDED, 0 OPEN**, with **0 changed per-pattern verdicts** relative to freshly regenerated original-code output.

The original implementation was used to generate proposal certificates for all 18 cells, then every requested pattern was independently recomputed by the repaired checker. Old acceptance bounds were not trusted. All repaired process exits and complete-cell summaries passed. This is a repaired replay campaign, not a claim that the original mathematical bound was valid.

| Cell | Patterns | Repaired CLASSIFIED | Repaired EXCLUDED | OPEN | Changed verdicts |
|---|---:|---:|---:|---:|---:|
| `905_4_10_9_2_12` | 4 | 0 | 4 | 0 | 0 |
| `905_4_2_4_5_11` | 6 | 0 | 6 | 0 | 0 |
| `825_4_7_6_7_9` | 48 | 12 | 36 | 0 | 0 |
| `825_4_8_6_7_9` | 64 | 32 | 32 | 0 | 0 |
| `815_4_10_9_6_7` | 64 | 64 | 0 | 0 | 0 |
| `815_4_8_9_6_7` | 64 | 64 | 0 | 0 | 0 |
| `1016_4_11_9_7_9` | 256 | 192 | 64 | 0 | 0 |
| `1016_4_13_10_7_9` | 256 | 64 | 192 | 0 | 0 |
| `768_4_6_10_11_4` | 256 | 48 | 208 | 0 | 0 |
| `768_4_8_11_11_3` | 256 | 192 | 64 | 0 | 0 |
| `1016_3_5_4_3_4` | 256 | 192 | 64 | 0 | 0 |
| `1016_3_6_5_3_4` | 256 | 208 | 48 | 0 | 0 |
| `768_3_4_5_5_1` | 1,024 | 528 | 496 | 0 | 0 |
| `768_3_3_5_5_2` | 2,048 | 906 | 1,142 | 0 | 0 |
| `1016_2_2_2_1_2` | 64 | 64 | 0 | 0 | 0 |
| `1016_2_3_2_1_2` | 256 | 256 | 0 | 0 | 0 |
| `768_2_1_2_2_1` | 4,096 | 1,783 | 2,313 | 0 | 0 |
| `768_2_2_2_2_0` | 64 | 64 | 0 | 0 | 0 |
| **Total** | **9,338** | **4,669** | **4,669** | **0** | **0** |

The three original supplied certificates were also replayed directly, since their stored dyadic proposals differ from this machine’s regenerated proposals:

| Original supplied certificate | Patterns | Repaired verdicts | Changes |
|---|---:|---|---:|
| `815_4_8_9_6_7` | 64 | 64 CLASSIFIED | 0 |
| `815_4_10_9_6_7` | 64 | 64 CLASSIFIED | 0 |
| `1016_2_3_2_1_2` | 256 | 256 CLASSIFIED | 0 |

Known family-triple patterns **0 and 49** in `815_4_8_9_6_7` both remain **CLASSIFIED**. Their rebuilt colour tuples are `(4,9,16,22,24,40)` and `(16,22,24,41,46,47)`, matching the source membership report. This checks the classification witness against those known-containing patterns; it does not rerun the separate prior existence/membership certificate, whose full input files were not included.

CLASSIFIED is a universal implication about any completion in the represented pattern; it does not assert existence. EXCLUDED rules out completions there. OPEN would establish neither conclusion.

Counts, changed-index lists, branch record hashes, exact proposal certificates, and complete logs are retained in `RESULTS.json`, `baseline/`, `repaired_replay/`, and `supplied_replay/`. The version-two certificate creation/replay smoke check also passed and is retained in `extra_checks/`. Runs used Python 3.12.14, python-flint 0.9.0, NumPy 2.3.5, SciPy 1.17.0, and 160-bit Arb precision. Several runs overlapped; their wall times are execution records, not controlled performance comparisons.

## 10. Returned materials and resulting theorem

The return package contains repaired runnable code and complete proofs, the patch against the supplied implementation, focused regressions, original and fresh certificates, execution logs, and machine-readable coverage/change summaries. Reproducibility commands and dependency information should be provided alongside those artifacts.

For every repaired successful row, every actual completion in that represented pattern is either impossible or has the balanced order-three symmetry established by the native contraction. The reviewed recognition argument then applies. Extending that conclusion to each original ball requires the separate integration checks stated in the brief; extending it to all of dimension six requires additional global coverage and exclusion arguments absent from this review.

## 11. Reproduction

From this package root, install the pinned dependencies with `python -m pip install -r requirements.txt`. The repaired runnable package is `repaired/`; `upstream.zip` preserves the supplied original source. `REPAIRS.patch` applies at the root of an extracted original package using `patch -p1 < REPAIRS.patch`. It includes regression tests and their requirements. The repaired copy’s `UPSTREAM_MANIFEST.sha256` is the supplied historical manifest; its current `MANIFEST.sha256` is regenerated after repairs.

Replay every required cell:

```bash
python run_benchmarks.py --package repaired --output fresh_replay --check-from baseline --workers 8
```

Run the 23 fast exact/protocol tests and the independent derivative test:

```bash
python -m unittest discover -s tests -p 'test_*.py' -v
python tests/test_h_motion_quadratic.py repaired/code/TripleClassification/hardballs_antigravity/witness.py
```

The deliberate negative control must fail at the independent coefficient assertion:

```bash
python tests/test_h_motion_quadratic.py repaired/code/TripleClassification/hardballs_antigravity/witness.py --legacy-sign
```

Stored test outputs are in `tests/results/`. Input hashes establish provenance; mathematical validity comes from the checked inequalities and the reviewed arguments, not from hashing.
