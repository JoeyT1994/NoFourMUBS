# Proof notes and audit paths

The complete theorem and the interfaces between components are stated in `../REPORT.md`. The notes here supply the analytical derivations and independent reviews behind the finite checks.

Some audit notes preserve the original working paths to identify the exact files reviewed. The delivered files have the same contents and hashes, under this portable layout:

| Original location in an audit | Delivered location |
|---|---|
| `work/x2_cover/rho_045_tr/` | `../cover/` |
| `work/x2_cover/verify_cover.py` and its original `cover_data/` | `../cover_030/` |
| `work/x2_geometry/certificate/` | `../geometry/` |
| `work/x2_geometry/cubic_filter_certificate/` | `../cubic_bridge/` |
| `work/x2_graph/` | `../graph/` for the graph sources and receipts |

The radius-0.40 replay was an intermediate successful result. Its separate witness data are not duplicated here: the delivered radius-0.45 theorem implies the same probability-gap statement at radius 0.40. The radius-0.30 data are retained because they prove the larger deficit `1/1000`.

`BASE_COVER_PROOF.md` supplies the generic lower-order ray inequalities from the previous certificate. Its old radius constants are historical. Use `../cover/COVER_PROOF.md`, the new manifests, and `QUADRATIC_FILTER_PROOF.md` for the enlarged configurations.

The main radius-0.45 replay hashes all proof inputs before execution, checks them again afterward, and binds its successful receipt. The preserved radius-0.30 hash snapshot was captured after its successful replay, with the component owner's confirmation that those files had remained unchanged. This timing is stated explicitly in its manifest. The combined driver checks both sets of identities, and a requested fresh radius-0.30 replay checks its pinned inputs before and after refreshing the receipt.

The independent tensor, LDL, and traversal audits are additional implementation checks. They supplement the full exhaustive inequality replay; none substitutes for it. The analytical proof and exact finite certificates are supplied, while a Lean formalization is not part of this package.
