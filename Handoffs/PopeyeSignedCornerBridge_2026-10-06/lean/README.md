# Signed corner bridge: 48 checked Lean theorems

This derivative packet proves a physical necessary condition used by the corrected centiradian exclusion. For every complex six-by-six matrix whose entries have squared norm one and whose row Gram matrix is `6 I`, and for every increasing row and column triple,

`cornerSigned(H, rows, cols)^2 = cornerR(H, rows, complement(cols))`.

Consequently, if the leading corner is maximal among all positional corners and its invariant is positive,

`|cornerSigned(H, rows, cols)| <= sqrt(leadingR(H))`.

The comparison permits maximality ties. The theorem covers all 400 positional corners. It has no seed-neighborhood, classification, H9, quartet-occurrence, or extra polynomial-witness hypothesis. `cornerNormalize_eq_source_dephasing` proves equality to the exact four-factor dephasing used by the native `signedf` expression.

This does **not** prove the radius-0.01 exclusion, any larger-radius exclusion, or the no-four-MUBs theorem. The source's finite computations are not Lean proofs. The actual seed chart, analytic bounds, interval enclosure semantics, local contraction data, and complete global/local coverage still need formal bindings and proofs. The final radius theorem remains open.

The central unit-torus identity uses the **negative** `J` complementary invariant. The signed residual squared equals the complementary corner's invariant. The 48-term expression is checked against the fast expression, including arbitrary last entry `d` when `a,b,c` are unit. No formal claim that the named raw expression equals a `Matrix.det` object is needed or made.

The proof clears the nonzero common denominator `a*b*c*d` in small lemmas. Its degree-eight polynomial identity is checked coefficient by coefficient in nine separate Lean modules, then assembled. Every generated polynomial identity is kernel checked by `ring`; the Python generator and native source algebra supply no axioms. Splitting the work avoids the fixed memory cap encountered by the earlier monolithic attempts.

`SignedCornerAudit.lean` imports the final physical theorem and audits all 48 new declarations. Every axiom list is exactly `propext`, `Classical.choice`, and `Quot.sound`. The largest successful check used 2,151,317,504 bytes of monitored process-tree RSS, below the unchanged guard. The aggregate transcript and successful receipts are in `receipts/`. Failed experiments remain in the local check directories and are listed in the formalization record.

The pinned environment is Lean `4.33.0-rc2` commit `d8b18978322de05a8f3dba51ef03cf5461676c17`, with Mathlib commit `51e6992efd06126df61a496bebf8f49482a4e129`. Replay requires the pinned Lean executable and an already-built Mathlib checkout:

```sh
python3 replay_lean.py \
  --lean /absolute/path/to/lean \
  --mathlib /absolute/path/to/mathlib4 \
  --first-wave /absolute/path/to/first-wave-lean \
  --out /absolute/path/to/new-output-directory
```

The first-wave directory supplies only the pinned `CentiradianPhysical.lean` and `CentiradianNormalization.lean` sources. The runner builds those and the 17 phase-two modules in dependency order, serializes with the first-wave replay lock, and retains one thread, a 2304 MiB heap, a 2816 MiB RSS limit, at least 8 GiB free disk, and bounded module time. It verifies source pins and the 48-declaration axiom audit. The portable runner's syntax and CLI were checked; all mathematical verification in this packet used the workspace's original serialized `lean_guard.py`, not a second portable replay.

See `FORMALIZATION_PUBLIC.json` for exact declarations, source hashes, runtime pins, proof scope, and remaining obligations. The first-wave published files are unchanged. Root review of the physical meaning has been recorded separately; a further independent review of the complete packet and native off-unit use remains pending. No factory registry or proof-admission status was changed by this worker.
