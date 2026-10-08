# Reproducing the adapter packet

Run `python3 verify_inventory.py` from the packet to check manifest integrity,
the selected source/check/review bindings, standard axiom lists and the complete
custom import graph. This command does not compile Lean or establish new proof
credit.

Use the pinned Lean 4.33.0-rc2 toolchain and Mathlib revision represented by
`lean-toolchain` and `mathlib-lake-manifest.json`. Replay custom modules in the
exact dependency order in `REPLAY_PLAN.json`, placing newly checked objects
before any inherited custom cache. Preserve each source, compiler command,
resolved dependency object hashes, exit result, exported object and axiom log.

The retained local guard is one compiler at a time, 2304 MiB Lean heap,
2816 MiB process-tree RSS stop, 180 seconds per job and a 2 GiB free-disk reserve.
Do not replace a failed or stopped job with a success claim, raise limits as
part of this reproduction plan, or use `sorry`, `native_decide`, unchecked
declaration insertion or new research axioms. Allowed reported axioms are
`propext`, `Classical.choice` and `Quot.sound` only.

A clean dependency rebuild and a relocated replay remain separate validation
steps. The original successful cached-object receipts are preserved as hashes;
the packet contains no compiled binary objects, numerical search records or
cluster operating records.
