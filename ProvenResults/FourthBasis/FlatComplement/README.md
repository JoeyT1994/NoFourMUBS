# Flat complements of strict three-ray rectangles

Let `A` be a raw 6×3 phase matrix with `A†A=6I`, and call it **strict** when

    0 < |det A[S,:]|² < 27     for all twenty three-row sets S.

The lower bound excludes a zero three-minor. The upper bound excludes a 3×3
Hadamard block. Put `X=A/sqrt(6)` and `Q=I−XX†`.

## Statement

1. **Rank-five row-projector lemma.** The six supported projectors
   `F_i(P)=Pe_ie_i†P−P/6`, with `P=XX†`, span a real space of dimension five.
   Consequently `W(A)={T=T†: QTQ=T, diag T=0}` has real dimension three
   ([COMPLETION.md](COMPLETION.md) §§2–3).
2. **Unique completion** (Theorem 1). `X⊥` has at most one standard-flat
   orthonormal basis, up to column order and phases. This does not depend on
   any carrier `H`. Flat completions correspond one-to-one with commuting
   two-planes in `W(A)` (§§4–5).
3. **Exact extension criterion** (Theorem 2). The Gram `Γ` of three
   commutators has rank 2 or 3, and rank 2 holds exactly when the completion
   exists. The extension is also flat in `H/sqrt(6)` exactly when `det Γ=0`
   and `κ(g_j)=0` for all six columns `j`. A rank test (Theorem 3) is
   necessary as well (§§6, 8).
4. **Flat-complement census.** `X⊥` contains **at most four** flat rays, and
   the bound is sharp. This counts every flat ray, not only orthonormal
   bases. The orthogonality graph is either an independent set of at most
   four rays, `K_3`, or `K_3` plus one isolated ray. If a completion `Y`
   exists, a fourth flat ray exists exactly when `s12,s23,s31≠0` and
   `Δ=s12 s23 s31` is real. The ray is then given by an explicit root-free
   formula. Any such extra ray is non-orthogonal to all three completion
   rays ([CENSUS.md](CENSUS.md)).

**Corollary: three strict columns of a fourth basis determine the others.**
Suppose `L` is a fourth basis in the frame of [../README.md](../README.md),
and three of its columns form a strict rectangle `A`. The other three columns
are flat and orthonormal and span `X⊥`, so by item 2 they are the unique flat
completion of `A`. They can be computed from `A` alone, via the commuting
plane of `W(A)`, and flatness relative to `H` and `K` is then a check, not a
choice. By item 4, any flat ray orthogonal to those three columns is one of
at most four candidates.

## Status

**Proved** analytically in COMPLETION.md and CENSUS.md. The exact controls in
`verify.py` check formulas and sharpness only. None of this excludes a fourth
MUB. Fourth-basis rays are unbiased to a third-basis rectangle, not orthogonal
to it. The rank-five strict-H incompatibility remains open.

## Dependencies

None. The arguments are elementary linear algebra on the stated strict
hypotheses. The corollary needs the hypothesis that the chosen three columns
are strict, and this is not proved to hold in a quartet. On quartet
transitions `H` itself, no-zero3 follows from the published Fourier and Tao
exclusions. See [../../EdgeRigidity/](../../EdgeRigidity/) and
[../../FourierBlocks/](../../FourierBlocks/FourierBlockClassification.md).
That statement concerns `H`, not the rectangle `A`.

## Provenance

The sources are three archive documents: `04_algebraiccoreV2/flat_complement_census/PROOF.md`,
`completion_substitution/supplied/COMPLETION_PROOF.md` (Theorems 1–3) and
`completion_substitution/PROOF.md` §1, dated 16 September 2026. The
alignment-specific rank-four exclusion and the rank-five substitution in
`completion_substitution/PROOF.md` §§2–5 were not imported. They rely on
archived alignment coordinates. `certificate.json` is the archived census
certificate, compared by value.

## Files and verification

| File | Role |
|---|---|
| [COMPLETION.md](COMPLETION.md) | Rank-five lemma, `dim W=3`, uniqueness, commutator criterion and rank test |
| [CENSUS.md](CENSUS.md) | Four-ray bound, graph classification and extra-ray formula |
| `exact_field.py` | Exact arithmetic in `Q(i,√2,√3,√7,√221)` and the `W(A)` / commutator construction |
| `verify.py` | Exact controls: strict rectangles with feature rank 5, the rank-6 diagonal system, commutator rank 2, a four-ray sharpness control with an unextendible four-row rectangle, and a three-ray control with nonreal `Δ` |
| `certificate.json` | Expected control values |

    python3 verify.py      # about 1 s
