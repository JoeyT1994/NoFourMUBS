# ZC2b return: T3 caps and complete mixed-sphere coverage

## Result

**CERTIFIED, relative to the inherited chart inputs. All 82 supplied source
spheres have full cap covers.** Every selected cap passed a fresh Arb
transfer replay, and each identical combined T0/T1/T3 cap list passed its
exact polar-facet coverage replay. There are **zero source spheres and zero
boundary boxes left to the box method** within this 82-source extract.

| Quantity | Certified count |
|---|---:|
| Source spheres | 82 / 82 |
| Original boxes replaced | 569,854 |
| Original T3 boxes replaced | 159,836 |
| T0 caps | 159 |
| T1 caps | 2,139 |
| T3 caps | 282 |
| All caps | 2,580 |
| Exact coverage facets | 10,976 |
| Caps plus facets | 13,556 |
| 5 by 5 norm witnesses | 2,862 |
| Remaining boxes in this extract | 0 |

**CERTIFIED counts; rounded derived comparison.** There are approximately
220.87 times fewer caps than original boxes. Counting each cap
and each coverage facet separately gives a reduction of about
42.04 times (97.62% fewer listed objects).
These are object-count comparisons, not measurements of Lean execution
time or trusted-kernel cost. Coverage also performs 644,522 exact
facet-versus-cap support checks. Each T3 cap needs two norm matrices;
each T0/T1 cap needs one, with separate T1 orientation checks where required.

**CERTIFIED.** The minimum, median and maximum cap counts per source are
5, 21 and 140.
The complete per-source inventory is sphere_counts.csv, with an individual
receipt for every source in receipts/.

| Source | Original boxes | Caps | T3 caps | Exact facets |
|---|---:|---:|---:|---:|
| 2517 | 7,383 | 140 | 2 | 698 |
| 2649 | 5,664 | 124 | 6 | 630 |
| 2688 | 7,527 | 106 | 3 | 513 |
| 2571 | 6,185 | 91 | 1 | 440 |
| 2685 | 13,391 | 87 | 3 | 432 |
| 2346 | 6,915 | 58 | 7 | 275 |
| 2747 | 15,231 | 6 | 5 | 8 |

## The new cap theorem

**PROVED.** Two independent five-by-five quadratic witnesses suffice for
the T3 cap test. Their sizes depend on the four source coordinates plus one
constant coordinate. The four-dimensional parameter output and
36-dimensional phase-distance output therefore have the same witness size.
T3_THEOREM.md contains the complete derivation and hypotheses.

For \(v\cdot x\ge h\), \(\|x\|=1\), \(w=rx\), put \(e=v/\|v\|\),
\(t=h/\|v\|\). An interior anchor uses \(c=rte\) and
\(\Delta^2=r^2(1-t^2)\). A true sphere anchor uses \(c=re\) and
\(\Delta^2=2r^2(1-t)\). Write

\[
Q(w)=\overline Q+\overline D(w-c)+\xi(w).
\]

For any fixed phase output \(B\), the complete errors are

\[
E_B^{\rm poly}=\tfrac12\|BH_2\|\Delta^2+T_0(BX),\qquad
E_B^{\rm local}=\tfrac12(\|BH_2\|+T_2(BX))\Delta^2.
\]

Here \(T_0(C)\), \(T_2(C)\) are proved bounds for \(Cz\), \(CD^2z\)
on the original source ball. Ordinary norm bounds or the replayed
output-weighted bounds supply them.

**PROVED.** Let \(L\) extract the first three ordered corner phases,
\(S\) select the side block, \(R=(P_3\otimes P_3)S\), and
\(g=D\psi(S\overline Q)\), with \(\psi=\operatorname{Im}\Psi\). Set

\[
A=M_e^{-1}\begin{pmatrix}L\\-2gR\end{pmatrix},\qquad
D_R=\|R\overline D\|\Delta+E_R.
\]

The full inverse-parameter remainder is

\[
\boxed{\varepsilon_p=E_A+72\|M_e^{-1}e_4\|D_R^2}.
\]

This retains the composite map \(A\) before taking norms, includes the
quadratic and normal parts of the phase displacement, and includes the
factor two from the signed coordinate \(-2\operatorname{Im}\Psi\).
For a fixed full row/column alignment and integer winding, put
\(B_F=h_{36}\Pi G\). The complete Fourier-distance remainder is
simply \(\varepsilon_F=E_{B_F}\).

**PROVED and implemented.** The sharper signature remainder is

\[
|\rho_\psi|\le\min\left\{36D_R^2,\;
\tfrac12\|D^2\psi(S\overline Q)\|D_R^2+
12\sqrt{18}D_R^3\right\}.
\]

Its contribution is \(2\|M_e^{-1}e_4\||\rho_\psi|\).
The exact 24-frequency identity proves
\(\|D^2\psi\|\le72\), \(\|D^3\psi\|\le72\sqrt{18}\).
verify_signature_identity.py checks the finite identity using integers.
The final collection has 2,359 weighted caps; T3 Psi-mode counts
are {'local_hessian': 282}.

### Matrix and strict-margin tests

**PROVED.** For either normalized affine output \(d+Fx\), choose
\(s\ge0\), \(\lambda\in\mathbb R\), \(\mu\ge\|a\|\). Reconstruct

\[
\mathcal S=\begin{pmatrix}
\lambda I-F^TF-\operatorname{sym}(ea^T)&-F^Td-(\mu e-ta)/2\\
*&s-\|d\|^2+\mu t-\lambda
\end{pmatrix}.
\]

Positive interval LDL pivots certify \(\mathcal S\succ0\). The identity
in the theorem proves \(\|d+Fx\|\le\sqrt s\) on the entire cap.
The strict tests are \(r_e(1-\sqrt{s_p})>\varepsilon_p\) and
\((3/20)(1-\sqrt{s_F})>\varepsilon_F\).
The X-ball parameter ellipsoid is separately certified inside W's
\(E_{1/5}\).

**CERTIFIED.** Minimum physical margins from the fresh replay are strictly
positive. The following decimal approximations summarize the certified
binary lower bounds; the unrounded binary values are retained in the receipts.

| Inequality | Recorded lower bound, rounded for display |
|---|---:|
| T3 parameter | 5.546099788772674e-07 |
| T3 phase distance | 0.01780506910319215 |
| T0/T1 target | 5.783895639596104e-08 |
| T1 orientation | 0.4118653749413334 |

The minimum retained LDL pivot lower bound is approximately 1.455182697978178e-11.
Every exact polar vertex has squared norm at most one. The largest
occurs in source 2649; its exact rational value is retained in
SUMMARY.json and that source's receipt.

## Mixed coverage and format

**PROVED and CERTIFIED for every retained source.** One polar hull covers
the combined T0/T1/T3 caps. For \(a_i=v_i/h_i\), the family covers the
sphere exactly when the unit ball lies in
\(\operatorname{conv}\{a_i\}\). Every facet is checked for exact
incidence, strict support against every other cap, complete ridge
incidence and exact dual-vertex norm. Appendix B proves completeness.

**PROVED interface; CERTIFIED concrete records.** Existing descriptors
and cap fields retain their meanings. New T3 fields are t3_parameter,
t3_distance, t3_alignment, t3_group_sha256 and optional psi_remainder.
The first two contain independent norm witnesses. The alignment fixes
full permutations and 36 integer windings with convention \(+2\pi N\);
the corner winding keeps its existing meaning. See CAP_FORMAT.md.

## Regressions and prerequisites

**CERTIFIED.** All 7 deliberately invalid
changes were rejected from a passing actual full-sphere baseline:

| Test | Result | Failed obligation |
|---|---|---|
| enlarged_cap_same_witnesses | REJECTED | T3 parameter PSD witness |
| dropped_cap_adjusted_indices_and_count | REJECTED | incomplete facet enumeration: each triangular ridge must occur twice |
| wrong_parameter_winding_binding_refreshed | REJECTED | T3 parameter PSD witness |
| wrong_distance_winding | REJECTED | T3 phase distance PSD witness |
| wrong_existing_group_index | REJECTED | ValueError: certificate scalar must be an integer or finite float.hex string |
| tampered_t3_parameter_witness | REJECTED | T3 parameter PSD witness |
| tampered_t3_distance_witness | REJECTED | T3 phase distance PSD witness |

The deleted-cap test updates the count and indices and removes incident
facets. It proves that the retained facet certificate is invalid after
deletion, not that every alternate cover by the remaining caps is
impossible. The corner-winding test refreshes its binding hash, so
arithmetic must reject it. Conflicting normal/threshold aliases are
ignored consistently; both checks use the authoritative v,h fields.

**CERTIFIED.** All 12 actual-cap combinations of three anchor modes,
two Psi modes and two weighting choices passed. Target containment in W
passed. Production dispatch rejected a T3 transfer with no accepted
target C1e object. Receipts are mode_verification_receipt.json and
negative_tests_receipt.json.

## Execution and trust boundary

**NUMERICAL proposal methods.** Floating optimization proposes geometry,
alignments and multipliers; SciPy proposes facets. Every retained cap
then passes Arb, and coverage passes exact integer replay. Floating
success, stored margins and constructor status do not decide acceptance.
Weighted refinement and deletion of redundant caps closed all spheres;
no source remains at a construction budget or requires its old boxes.

**NUMERICAL timings, measured wall time.** The final weighted construction
invocation took 471.63 seconds with six workers.
Fresh full replay took 119.37 seconds with
4 workers, including input loading and accounting.
Summed per-source replay time was 452.62
seconds; concurrent workers overlap. These times exclude earlier stopped
exploration, documented in initial_runs_receipt.json, and do not measure
Lean performance.

**CERTIFIED binding.** Input SHA-256:
0bf5def3a4166cbbb39e656dffc7d1c9e8d5e771e8a3166374c1e3d246dba25d.
The fresh receipt hashes the exact input and proposal bytes read, records
checker hashes, and confirms the bound code/input/proposals stayed
unchanged. Environment: Python 3.12.14, python-flint 0.9.0,
NumPy 2.2.6, SciPy 1.17.0, SymPy 1.14.0 and mpmath 1.3.0;
Arb precision 224 bits. Commands are in README.md.

**NOT ESTABLISHED by this return.** The finite geometric replay retains
the matched-completion germ, seed target validity, W/U chart and XS
identification theorem as dependencies. Production integration preserves
accepted target C1e. This return does not recertify Stage C, the complete
atlas, the X-ball outgoing boundary or a global no-four-MUB theorem.
Lean implementation and kernel replay remain separate work.
DEPENDENCIES.md gives the complete interface.
