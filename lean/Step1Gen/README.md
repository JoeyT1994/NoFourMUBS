# Step 1 certificates in Lean

The source is `../../proof/coverage/returns/C_step1_lean`, the sextic-free proof of (W): every component of {R > 0} contains an orbit point. That return is kept pristine there. This folder is our working copy:
- `certificates/`: the 12 JSON bundles, unchanged. `python3 verify_certificates.py` replays all 651 claims exactly, in 7 s.
- `generation/`: the JSON-to-Lean generator. It is untrusted; the Lean kernel checks its output.
- `lean/Step1/`: the generated modules plus three hand-written ones (`Common`, `InteriorConsequences`, `FiniteOrbit`).

**Status (10 Oct 2026).** `lake build Step1` succeeds. All 216 theorems depend only on `propext`, `Quot.sound` and (for 122 of them) `Classical.choice`. There is no `sorry`, `native_decide` or `polyrith`. The audit is `lake env lean Step1Gen/lean/Step1/Audit.lean`.

**Repairs to the returned generator.** The return's author had no working Lean, so these came from our first build:
1. Identity proofs: `simp only [defs] <;> ring` became `(try simp only [defs]) <;> ring`. Several identities have no definitions to unfold.
2. Derivative proofs: `convert … using 1` left instance-equality goals that `ring` cannot close. They now use `(h.congr_deriv ?_).congr_of_eventuallyEq (Filter.Eventually.of_forall …)`, with `norm_num [Pi.*_apply] <;> ring` for the value and the pointwise function identity.
3. `FiniteOrbit.lean`: two `decide` calls over ℚ do not reduce. They now use `norm_num` (q·q̄ = 1) and `decide +kernel`, kernel evaluation with no compiler trust (the 18 algebraic coordinates are distinct).
4. The generator no longer writes a nested `lakefile.toml`. The library is built from the root `lean/lakefile.toml`.

To regenerate: `cd Step1Gen && python3 generation/generate_lean.py && cd .. && lake build Step1`.

**What this is and is not.** It is every finite algebraic fact of the Step 1 blueprint (`../../proof/coverage/returns/C_step1_lean/STEP1_BLUEPRINT.md`), checked by the kernel. It is not yet (W) in Lean. That still needs the seed and triple spaces, the open finite quotient, the local-maximum calculus on the deltoid strata, and compactness. The blueprint gives the paper arguments.
