# Review of return H (15 October 2026)

This file is ours; it was not part of the returned zip and is not in `SHA256SUMS`.

- **Provenance.** `PROVENANCE.json` matches the handoff we sent: the zip hash `01a6767a…` and the four copied inputs
  are byte-identical. `shasum -a 256 -c SHA256SUMS` passes for all twelve returned files.
- **Replay.** `python3 -I verify.py` passes (standard library only, under 1 s, exit 0).
- **Inputs, located in Lean.** D2 (strict nonmatched corner ⇒ Tao) is `PRM.nonmatched_tao`
  (`lean/NoFourMUBs/PRM/Converse.lean`). D3 (exact reach / strict-corner coverage) is `PRM.strictCornerCoverage`
  (`lean/NoFourMUBs/Final.lean`). The conclusion of §2, conjugate signatures at every positional corner, is the Lean
  predicate `PRM.AllCornersMatched` (`lean/NoFourMUBs/PRM/Defs.lean`). Matching means Θ(V) = conj Θ(B)
  (`E_matched_flatness/FLATNESS.md`, Theorem 1), and R is defined from the corner data, so the §2 case split
  (g = 0, R = 0, R > 0) is consistent with D1 and D2.
- **Proof read.** §§3–6 check out: (3.1) is the even/odd permutation-product identity; (4.1) is Jacobi with
  H⁻¹ = H†/6; §5 is the Hodge-star fact that complementary Plücker coordinates force AC^T = 0; the readout (5.4) gives
  the eighteen mixed moments, and the single exchange (6.1) gives M_I and M_{Iᶜ}.
- **Independent numerical check** (not part of the proof). On 1,500 random atlas centres the largest
  |Ψ(H[I,J]) − conj Ψ(H[Iᶜ,Jᶜ])| over all 400 splits was 3e-12. The largest row or column moment was 4e-14, and
  rank H^[2] was 6. For Tao, (0.2) fails by 15.6 and max |M_I| = 1/2. For F6, (0.2) holds to 1e-13 and rank F6^[2] = 3.
- **Lean.** Proved in Lean as `NoFourMUBs.FourierVanishing.fourierVanishing` (`lean/NoFourMUBs/FourierVanishing/`),
  for rows and columns, from `PRM.nonmatched_tao` and `PRM.strictCornerCoverage`, using only the standard axioms
  (`check_axioms.py --full`). §5 is proved by normalisation instead of the 180-identity certificate. The lemma map
  is in that folder's `README.md`.
