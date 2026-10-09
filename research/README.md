# Research beyond the minimal proof

Nothing here is used by the proof of no four MUBs (`../PROOF.md`). These folders hold pristine copies of returned handoffs, extracted unchanged from the zips. Each return replays with `python3 verify_all.py` in its folder.

| Folder | Source zip (sha256) | Outcome |
|---|---|---|
| `conditioning/return/` | `ConditioningResults.zip` (`f5985b11…a67`) | Every non-Tao Hadamard has rank 21, relative to MC1–MC4. Exact Tao spectrum (9/2)¹⁶, 12⁹, so σ = 3/√2. Sharp flat Hessian bound 6/√5. The uniform bound σ ≥ √3 remains open. Replayed: 9/9 exact checks pass |
| `triples/return/` | `TriplesResults.zip` (`c4b173cd…f83`) | **The Fourier-only conjectures T1 and T2 are false**: Zauner's bicirculant circle (Jaming–Matolcsi–Móra–Szöllősi–Weiner 2009, App. B) consists of triple edges outside both Fourier families. Every Fourier member is a triple edge, via Idel–Wolf. The ω-locus is exactly twelve seed tori, with R = 36(Im U³)² on it. Replayed: all exact checks pass |
