# Review of the Lean simplification handoff (22 Oct 2026)

**Package:** `LeanSimplificationHandoff_2026-10-22.zip` (SHA-256 `145d22e1…`, in
`proof/coverage/returns/SOURCE_ZIPS.sha256`). A specification for a Lean agent; nothing in it is Lean-checked, and
it says so. All 10 files match `SHA256SUMS`, and `checks/verify_exact_cases.py` (standard library only) passes.

## Assessment against the current proof

| § | Topic | Verdict |
|---|---|---|
| 6 | **Weaker classification chain.** If W is clopen in the full quotient, nonextendable and contains F₆, then it is enough that: the Fourier-family images (each connected, containing F₆) are in W; the matched image (connected, meeting the Fourier family) is in W; all-critical ⇒ Fourier family; strict nonmatched ⇒ Fourier family or Tao; strict matched ⇒ matched image | **Adopt.** Our W (`RecordClopen`) is already clopen on all classes. The matched image meets the Fourier family at the curve H(t) of handoff Q. This removes the 400-corner Fourier matching check (`PRM/FourierMatch`, 25 KB, 200 kernel identities) and the all-critical Fourier census (`PRM/CoverageFourierLocus`, 18 KB). Tao is still excluded by its own certificate |
| 5.1 | **81 cube-root cases → 4** by character normalization | **Adopt if it shortens `PRM/FourierBlock`** (the three near-identical `cubicCensus_p_*` proofs) |
| 5.2 | **A singular 3×3 minor forces a 3×3 Hadamard subblock** | **Consider:** with §6, a subblock leads (via the Fourier normal form) to Tao or a Fourier family, which may shorten the singular-minor routing (`PRM/CoverageSingular`, 21 KB) |
| 4.1 | Matched images equal (A₊ = A₋) by block swap | Not needed once §6 is used (W is conjugation invariant) |
| 1 | Side uniqueness by one elementary fiber and a covering argument | Not adopted: our uniqueness proof (Vieta) already exists and is shorter than covering-space machinery |
| 2 | Sharper normal bound, exact shell, transfer inequalities | Not adopted: they change certificate semantics, so the whole atlas and kernel atlas would need re-running for a modest gain |
| 3 | Quartet completion with fewer rays (five-frames complete; eight-ray criterion) | Research toward an algebraic route; filed, not part of the proof |
| 4.2 | Matched flatness by analytic continuation | Not adopted: needs an external local-manifold theorem and replaces a proof we already have |

None of these needs new mathematics beyond what the package states; §6 is topology plus results already in the proof.
