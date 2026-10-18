# Response to the audit of 17 Oct 2026

**Audit:** `NoFourMUBS_Audit_2026-10-17.zip` (SHA-256 `c5ad270a…fad6e`, in `../../returns/SOURCE_ZIPS.sha256`), of
commit `e4babf83`. Filed here: the report, the algebraic proofs, the implementation plan, the verification ledger, the
Fourier orbit replay (`fourier_orbits.py`) and the auxiliary Lean lemmas. Its evidence logs and scripts that reproduce
the verifier defects are kept with the zip, outside git.

It found no failed mathematical check: the full Lean build and axiom audit, and a fresh Python replay of all
12,021 Records, F6, H₀ and Tao, passed.

| Finding | Verdict | Action |
|---|---|---|
| Julia resume cache not bound to its inputs: old receipts certified a changed, invalid certificate | Confirmed in the source | **Fixed.** `check.jl` writes `BINDING.txt` (digests of the certificate, checker sources and Julia environment, the Julia version and the options) and resumes only on an exact match; repeated record indices in receipts are an error |
| `check.jl` exits 0 on a failed certificate; `--limit` could not be told apart from a full run | Confirmed | **Fixed.** Exit 1 unless complete; `--partial` for sub-certificates (used by the tests); a `--limit` run never gets the complete verdict. `tests/run_tests.sh` checks all three |
| The docs said connectedness is proved in Lean; Lean proves coverage from it as a hypothesis, and `Final` uses the direct route `coverage_of_matched_density` | Confirmed | **Fixed** in `README.md`, `PROOF.md` (Corollary and table) and `AUDIT.md` |
| The Julia checker does not check the `tao` and `anchor` fields | Confirmed | **Documented**: a field-to-checker table in `AUDIT.md` |
| Default CI does not build `Final` | Confirmed | Kept. `Final` needs about 11 GB of RAM, more than the GitHub runner for a private repository has; `verify.py --lean-full` is the release check (about 12 min, run locally) |
| A shorter `RecordCert.excludes` via `RecordCert.decomp` | Correct | **Applied** (−23 lines; same statement) |
| Matched flatness from one weighted defect (the permutation covariance W′ = Q*WP*) | This is the statement of handoff M, with a proof | **Integrated** (handoff M): `L1.FlatCircuits.W_zero`; three `FlatCheckF*` modules removed; the L1 route builds in 366 s instead of 1,173 s |
| Fourier matching by four symmetry orbits instead of 200 identities | Replayed (`fourier_orbits.py`: orbits 16 + 24 + 144 + 216 = 400; signatures −81, 0, conjugate-equivalent, −24) | Not ported: `FourierMatch` is 25 KB and cheap to check, so the port would add symmetry infrastructure for little gain |
| Discharging the `fourier` field by the F6 limit argument (PROOF 2.3, step 3) | Sound on paper | Not done yet: it removes one certificate field (checked cheaply by `nonempty.py` and Julia) at the cost of a new assembly module |
| Integer count without enumeration; root-free normal barrier; sharper outer shell | Correct | Not applied: `decide` is already safe, and the barrier and shell change the certificate format without a measured gain |
| Schema checks at the certificate loader; import narrowing at `Basic`; one representation of positional 3-subsets | Reasonable | Not now |
