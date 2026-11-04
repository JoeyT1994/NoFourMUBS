# Shared certifiers and data

This folder holds the certifiers, certificates and theorems that the five components share. Each component's README
says which parts it uses.

| Folder | What it holds | Used by |
|---|---|---|
| [`atlas/`](atlas/README.md) | The local tests run inside each ball, with their proofs and error analysis, and an independent check that Tao's matrix is isolated and that the pair {I₆, 𝒯/√6} is not extendable | [`QuartetExclusion/`](../QuartetExclusion/README.md), [`TripleClassification/`](../TripleClassification/README.md) |
| [`seed_atlas/`](seed_atlas/README.md) | The atlas: its specification, certificate format, the Arb certifier, the driver that builds the certificate, and the certificate itself | [`PhaseCover/`](../PhaseCover/README.md) |
| [`independent/`](independent/README.md) | An independent Julia implementation of the local tests | [`QuartetExclusion/`](../QuartetExclusion/README.md) |
| [`independent_seed/`](independent_seed/README.md) | The independent Julia checker of the atlas | [`PhaseCover/`](../PhaseCover/README.md) |
| [`theorems/`](theorems/README.md) | The theorems used by [`PROOF.md`](../PROOF.md), including the native certifier and the ball at F₆ of the triple classification | all five |

[`theorems/README.md`](theorems/README.md) lists each supporting theorem, its folder and where it is used.
