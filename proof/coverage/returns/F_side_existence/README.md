# Side existence by explicit radicals (superseded; kept as provenance)

This return (`SideExistenceResult.zip`, SHA-256 in `../SOURCE_ZIPS.sha256`; file hashes in `FILE_HASHES.json`)
proves side existence at every strict seed by an explicit radical construction with polynomial certificates
(`SIDE_EXISTENCE.md`, `STATUS.md`, `CERTIFICATE_GUIDE.md`).

**Superseded in the proof (17 Oct 2026).** Side existence is now proved by handoff J
([`../../handoffs/J_side_existence_jacobian/RESULT.md`](../../handoffs/J_side_existence_jacobian/RESULT.md)): in angle
coordinates the Gram map of a side has Jacobian determinant ¼ Im Ψ (identity (J)), so by Lemma 1.1 and the inverse
function theorem the Gram data realised with a given sign of Im Ψ form an open set over R > 0; a clopen/maximum
argument with the anchors from H₀ and Step 1's census of maxima gives every strict seed. In Lean this is
`L1/SideJacobian` and `L1/SideCover` (`L1.exists_side_h`, `L1.exists_side_v`). The Lean modules that formalised this
return (`L1/SideBridge`, `SideCheck*`, `SideCircuits`, `SideConstruction*`, `SideExistence`, `SideIdentities`,
`SideInput`) were deleted; they are in git history up to commit `8481bda5`.

`verify.py` still replays this return's certificates (`l1_side_existence`, `python3 verify_all.py`, about 16 s).
