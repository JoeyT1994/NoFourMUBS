# Review of return I (15 October 2026)

This file is ours; it was not part of the returned zip and is not in `SHA256SUMS`.

- **Provenance.** `PROVENANCE.json` names the handoff zip `b3c36cef…ae32ab`, which is the zip we sent
  (`MomentReduction_handoff_2026-10-15.zip`). `shasum -a 256 -c SHA256SUMS` passes for every returned file.
- **Replay.** `python3 -I verify.py` passes (standard library only, 0.3 s). `python3 -I audit.py` passes its
  four tamper tests: a flipped cofactor sign or a changed anchor value makes `verify.py` exit 1.
- **What it proves.**
  - CERTIFIED from the primary inputs only (Hadamard orthogonality and Fourier vanishing): the identity (R), which
    writes Re S through 400-block averages of Re Ψ and |det|², with rational Laurent cofactors. Two further
    orthogonality identities are certified, including (V) ⇒ ‖H^[2](H^[2])†‖²_F ≥ 336.
  - PROVED only with the upstream results: the full Eq. (sos). It uses return H's all-corner conjugacy and
    strict-corner coverage, which already imply the Fourier conclusion directly.
  - NOT ESTABLISHED: an independent certificate of Eq. (sos) from orthogonality, Fourier vanishing and
    Eq. (complement) alone.
- **Our reading.** The paper does not need Eq. (sos). All-corner conjugacy (return H §2, now in Lean as part of
  `NoFourMUBs.FourierVanishing`) together with Eq. (complement) makes every Ψ real, so the matrix is all-critical
  and then Fourier by `PRM.strictCornerCoverage`. `PAPER_REPLACEMENT.tex` gives that passage. Adopting it removes the
  draft's citation of SM Proposition S.7 and of Fourier vanishing at this step.
- **Not used by the main proof** (`Final.no_four_mubs`).
