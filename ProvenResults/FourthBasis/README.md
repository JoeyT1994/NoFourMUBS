# Fourth-basis structure: 4+1, completions, chirality and ghosts

These results concern what a hypothetical third and fourth basis must look
like over a fixed carrier. **None of them excludes a fourth MUB.**

## The frame and the 4+1 configuration

Take MUBs `I, B_1, B_2, B_3`. Apply `B_i†` to all four for any chosen `i`, so
that one basis is `I` and another is the carrier `U=B_i†B_j=H/sqrt(6)`. The
remaining two bases `K` and `L` are then flat in `I` and `U`, and unbiased to
each other. In particular:

- **4+1.** Any four columns of `K` are an orthonormal quartet flat in `I,U`.
  Any column of `L` is a ray flat in `I,U` and unbiased to all four. So every
  MUB quartet yields a 4+1 over each of its six transitions. This is how
  [FourierNeighbourhood](../FourierNeighbourhood/README.md) (D2) applies.
- **Three-ray rectangles.** Any three columns of `K` or `L` form a 6×3 phase
  rectangle `A` with `A†A=6I`.
- **Balanced planes.** Any two columns of `L` span a rank-two projector `Q`
  with `Tr(QP_α)=1/3` for all 18 rays of `I,U,K`.

**No-zero3 on quartet edges.** A zero ordinary 3×3 minor of a transition
forces a 3×3 Hadamard block. By [FourierBlocks](../FourierBlocks/FourierBlockClassification.md),
such a block forces the Fourier family, its transpose or Tao, and all of these
are excluded as quartet transitions by the published results. So quartet
transitions have no zero3. See [../EdgeRigidity/](../EdgeRigidity/), where the
block/zero3 equivalence is recorded. Only Chirality §4 uses this, and there it
turns out to be unnecessary; see its README.

## Results

| Folder | Statement (one line) | Status |
|---|---|---|
| [FourPlusOne](FourPlusOne/README.md) | Aligned 4+1 has constant five-ray Gram `Γ`, and Gram equality ⇔ `rank(K_E−WΓ⁻¹W†)=1`. The consequences are disk inequalities, an `a=−1` quartic minor identity and a 29-phase/45-equation strict system. Degree-two moment relaxations are always feasible. Standard ghosts have `|F|²≥54` against a physical anchor | Proved; the strict-section count uses the accepted side-formula input |
| [FlatComplement](FlatComplement/README.md) | For a strict 6×3 rectangle: row projectors have rank five, flat completion is unique, `A⊥` has at most four flat rays (sharp), and the extra ray exists iff `Δ=s12s23s31` is real and nonzero. So three strict columns of a fourth basis determine the other three | Proved, unconditional |
| [Chirality](Chirality/README.md) | A balanced rank-two `Q` splits into two common unbiased rays iff all `Im Tr(QP_αQP_βQP_γ)=0`, iff `e_3(G)=2Σc²=0`. The split is unique and recovered by a commutator. A fourth basis exists iff three orthogonal planes all pass | Proved, unconditional (see its README on no-zero3) |
| [GhostFactors](GhostFactors/README.md) | Six pairwise formally orthogonal Laurent ghosts exist over every Hadamard, so equality-only elimination fails. Thirty-six quadratics `D_ij` vanish on ghosts and satisfy `|D_ij/(v_iw_j)|≥18−2√6` physically. Some pair of three rays has `|s_i+s_j|≥1` | Proved, unconditional |

The sheet symmetry used for seed-region exclusions is in
[../Sheets](../Sheets/README.md).

## Verification

Run each script from its own folder:

| Name | Script | Time |
|---|---|---|
| four_plus_one | `FourPlusOne/verify.py` | about 35 s |
| flat_complement | `FlatComplement/verify.py` | about 1 s |
| four_basis_chirality | `Chirality/verify.py` | about 1 s |
| ghost_factors | `GhostFactors/verify.py` | about 2 s |

Every script exits nonzero on failure. They read only files in ProvenResults
and `../../MinimalConstruction`, and they write no files.
