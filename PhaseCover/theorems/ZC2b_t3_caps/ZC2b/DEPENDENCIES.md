# ZC2b proof dependencies and replay scope

This return supplies a T3 cap rule and finite mixed-sphere certificates.
Its status labels apply to the obligations below, not automatically to
the global theorem stated in the supplied `PROOF.md`.

## What the new mathematics proves

| Obligation | Status | Where it is established |
|---|---|---|
| Explicit T3 parameter and Fourier-distance error bounds on a whole cap | **PROVED**, conditional on the source model and target theorem inputs below | `T3_THEOREM.md`, Sections 1–8 |
| Two generalized 5 by 5 witnesses suffice; the output dimensions do not enlarge the witness matrix | **PROVED** | `T3_THEOREM.md`, Section 7 |
| Local signature-Hessian improvement with third-derivative constant `72*sqrt(18)` | **PROVED** | `T3_THEOREM.md`, Section 10.1 |
| Exactness of the generalized certificate for strictly positive cap quadratics | **PROVED**; does not imply exactness of the nonlinear remainder model or of a restricted numerical search | `T3_THEOREM.md`, Appendix A |
| One polar-facet certificate may cover a mixture of T0, T1, and T3 caps | **PROVED** | `T3_THEOREM.md`, Section 9 and Appendix B |
| Optional pullback-Hessian and retained-second-order parameter refinements | **PROVED** sufficient tests; use in a particular finite construction is **NOT ESTABLISHED** unless its verifier explicitly implements and checks them | `T3_THEOREM.md`, Sections 10.3–10.4 |

## What finite replay checks

| Finite obligation | Status and limits | Evidence |
|---|---|---|
| 24 signed signature frequencies, exact covariance `72*(P3 tensor P3)`, and squared frequency lengths 10/18 | **CERTIFIED** by integer arithmetic | Run `verify_signature_identity.py` |
| Original source whole-ball inequalities, matched orientation, normal bounds, and agreement with the stored continuous phase lift | **CERTIFIED** when `patches.normal_form` accepts; its analytic interpretation retains the local-germ dependency below | Each fresh source replay recomputes them. `source_model_audit.json` additionally records acceptance for the 82 supplied sources. |
| Every selected T0/T1/T3 transfer cap | **CERTIFIED** only when the actual cap passes Arb replay | Per-source replay receipt; numerical construction status and stored margins are ignored |
| X-ball parameter ellipsoid lies in W's `E_(1/5)` | **CERTIFIED** when the exact-frame Arb positive-definite test accepts | `edgecert.edge_in_W`, invoked by every new T3 transfer object |
| Full coverage of a particular source sphere | **CERTIFIED** only when every selected cap passes and the same `v,h` list passes the complete integer/rational polar-facet replay | `full_sphere: true` in the fresh receipt |
| Removal of the original transfer boxes from a source sphere | Authorized by the geometric proof only for a **CERTIFIED full sphere**; partial cap success leaves that sphere's original boxes in the accounting | `replay_all.py` summary and per-source receipts |
| Listed tampering regressions | **CERTIFIED** only for the modifications actually tested and rejected | `negative_tests.py` receipt; a failed retained facet proof after deletion does not assert that the surviving caps have no alternative cover |

The supplied extract contains 82 distinct source indices, 2,775 seed
headers, one X-ball record, and 569,854 source transfer boxes. These are
input counts, not proof outcomes. The final replay summary states how
many of those sources obtained full cap coverage. Missing, malformed, or
unsuccessful proposals remain **NOT ESTABLISHED** for cap replacement.

The certificate files are proposals until replay. Only exact or Arb
decisions establish acceptance; a floating convex hull, optimizer return
code, cached constructor status, or stored margin does not.

## Inherited theorem and chart inputs

| Input | What this return assumes | What it does not independently establish |
|---|---|---|
| Source matched-completion germ and matched-flatness theorem | The exact matched Hadamard centre extends to the analytic germ required by `Z/THEOREM.md`. The verified normal contraction then continues that germ over the source ball. | A new proof or Lean verification of the germ, matching, reconstruction, or all full residual identities |
| Seed target charts for T0/T1 transfers | The supplied target frame, radius, and orientation refer to the valid matched chart used by the atlas. | Standalone replay does not recertify C1 for all 2,775 seed headers. It verifies inclusion and orientation for the selected transfer; the production atlas retains its separate target C1 obligations. |
| W/U Fourier chart theorem | The normalized genuine Hadamard chart and normal-graph/uniqueness statements hold on W's prescribed domain. | A reconstruction of W's contraction/tensor certificates or U's analytic-germ proof |
| XS identification theorem | Its stated conclusion applies to the prescribed ordered corner and the signed fourth coordinate when parameter containment and phase distance at most `3/20` hold. | A new audit of every W/U dependency or a stronger-radius transfer theorem |
| Certified target X-ball/C1e | Production T3 transfers require an accepted `EdgeBall` together with its C1e result. | The compact standalone cap replay does not regenerate that full target C1e certificate. `seedcert.check_seed_caps` checks that the caller supplies the accepted target object. |

The standalone `cap_t3.replay` is therefore a replay of **geometric
transfer inequalities and sphere coverage**, relative to these theorem
and target-chart inputs. The production integration preserves the
additional accepted-C1e gate and the enclosing atlas's existing checks.

## Global and formal obligations outside this return

The following are **NOT ESTABLISHED by this return**:

- Stage C and the no-quartet exclusions for all seed balls.
- The X-ball's no-quartet exclusion and its entire outgoing boundary
  transfer certificate.
- The other source spheres, the complete atlas input, and any global
  reconstruction, density, connectedness, or topological coverage premise.
- The conclusion that four MUBs do not exist in complex dimension six.
- A Lean implementation, kernel replay of these cap certificates, or a
  hypothesis-free Lean theorem.

Statements in inherited files about those matters remain inherited
claims. A successful cap replay replaces one well-defined portion of
the transfer certificate; it does not upgrade the status of unrelated
obligations.
