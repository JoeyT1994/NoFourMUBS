# Step 2 audit and blueprint

This return (`Step2LeanResult.zip`, SHA-256 in `../SOURCE_ZIPS.sha256`) audits Step 2 against the upstream Lean classification. It proposes the direct-coverage route that the Lean formalisation now follows. Its conditional Lean route has been absorbed and extended in `lean/NoFourMUBs/Step2/`.

| File | Contents |
|---|---|
| `STATUS.md` | The return's proof boundary at delivery |
| `GAP_MAP.md` | Every MC statement and paper import against exact upstream declarations; §3.1 found the PR-M gap |
| `MINIMAL_ROUTE.md` | Why the retained atlas does not give connectedness; the weaker direct-coverage route |
| `STEP2_BLUEPRINT.md` | Definitions (§2), topology (§§3–6), matched uniqueness L2 (§7), and the L1 and D obligations (§§8–9) |
| `work/geometry_obligations.md` | L1 reduced to the fourth-moment identity (L-id), and why D needs a global real-locus argument |
| `work/topology_audit.md` | The phase-metric and quotient-topology audit |
| `certificates/` | Exact verifiers for the L2 Laurent and Fourier identities of §7 |

**What happened next.**
- **L2** is proved in Lean (`Step2.matchedUniqueness`), by a shorter Vieta–Vandermonde argument in place of §7.3.
- **The topology** is proved in Lean.
- **L1 and D** are open inputs of the Lean main theorem. The bounded attempts at (L-id) and the original Lean overlay are preserved at the git tag `archive-2026-10-11`.
