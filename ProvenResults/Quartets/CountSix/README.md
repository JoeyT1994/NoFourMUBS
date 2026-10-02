# Count-six faces in a hypothetical quartet

## Statement

Let I, B_1, B_2, B_3 be four MUBs in C^6. Each of the four faces (triangles)
has a matching count in {1, 2, 6}; see
[TriangleNullities](../../Triples/TriangleNullities.md). Then:

- **Shared alignment.** Two count-six faces that share an edge have the same
  complete character ray set at one endpoint of that edge (Theorem 4).
- **Propagation.** Alignment at u of the shared edge uv makes the face
  opposite u count six, and aligns its two edges at v at their far endpoints
  (Theorem 5).
- **Face patterns.** The number of count-six faces is **0, 1 or 3**. Not all
  four faces have count six, and exactly two is impossible (Theorem 6).
- **Both endpoints.** A shared (6,6) edge is aligned at exactly one
  endpoint. So the archive's "both shared overlaps monomial" branch is empty,
  five-cycles included (Corollary 7).
- **Three faces.** The three count-six faces meet at a vertex c. Every edge
  at c is aligned only at its outer endpoint (Corollary 8).
- **A non-six face.** Every quartet has a face of count 1 or 2 (Corollary 9).

Without the Jaming et al. input, each conclusion holds for four pairwise
unbiased bases of C^6 unless some face has a binary relative matching
direction.

Full statements and proofs are in [CountSixFaces.md](CountSixFaces.md).

## Status

**Proved.** The proof is analytic and was re-derived at import. The
independent exact verifier [verify.py](verify.py) exits nonzero on failure.
The proof is a shortened repair of the archive proof, with two
simplifications (CountSixFaces.md, Section 9):

1. Character no-zero3 ("character duality") is replaced by OneBinaryMatching.
2. The complementary-flat-triple uniqueness is replaced by a pigeonhole step.

**Open.** The following are not settled here:
- the three-face pattern;
- count-one and count-two faces;
- whether a no-zero3 count-six triangle exists;
- the archive's M5 forcing, which additionally needs a count-two exclusion
  and the archive rectangular exclusion; neither is imported here.

## Dependencies

All of these are active ProvenResults.

| Used for | File | Its own inputs |
|---|---|---|
| Distinct matchings are orthogonal; at most six | [EdgeRigidity/MatchingConventions.md](../../EdgeRigidity/MatchingConventions.md) | none |
| A binary relative direction gives a zero3 edge | [EdgeRigidity/OneBinaryMatching.md](../../EdgeRigidity/OneBinaryMatching.md) | unconditional for triangles |
| No quartet edge has a zero3 | [EdgeRigidity/QuartetEdgeCorollary.md](../../EdgeRigidity/QuartetEdgeCorollary.md) | FourierBlocks, and the published Fourier-family exclusion of Jaming et al. ([arXiv:0902.0882](https://arxiv.org/abs/0902.0882)); the Tao input is not needed for its item 1 |
| Counts {1,2,6} (Corollaries 8-9 only) | [Triples/TriangleNullities.md](../../Triples/TriangleNullities.md) | unconditional |

None of the following is used: reconstruction inputs, classification reach,
Szöllősi, Diţă/H_x full21, Karlsson three-ray, Conjecture 3, product-regular
coordinates, the balanced theorem.

## Provenance

- Archive `NoFourMUBSArchive/03_algebraic/core/count_six_attack/quartet_m5_forcing/PROOF.md`:
  Lemmas 1-3 and Section 4 (the four-face exclusion); Section 5 (both-endpoint
  and 0/1/3 consequences).
- Archive `.../count_six_attack/shared_six_alignment/PROOF.md`: Sections 1-4
  (shared alignment, propagation) and Section 7 (three-face orientation).

The archive verifiers `quartet_m5_forcing/verify.py` and
`shared_six_alignment/verify.py` were rerun on a copy on 27 September 2026,
and both pass. They check hashes, finite incidence and dimension-3 controls,
not the analytic steps. Nothing from them is used here.

## Referee verdict

**Verified. It holds up, with the two repairs above.**

Every step was re-read with its orientation conventions:

- H^v_ji = conj(H^v_ij), and alignment is independent of orientation.
- The trace factorisation tr(Q_a*S_b)/6 = U_ab conj(V_ab), which uses the
  actual sixth edge B*C.
- The support-two argument.
- The completeness of the propagated matchings T_a = P_a*R_a = Q_aS_a*.
- The incidence argument.

The archive's citation of "accepted character duality" is stronger than
needed. Only column quotients of character matrices occur, and these are
exactly relative matching directions. The only dimension-six ingredients are
the parity of 5 and "no binary direction".

## Verification

    python3 verify.py      # about 16 s; prints PASS lines, exits 1 on failure

It reads no files and uses only the standard library and numpy. Numpy is
used only to locate candidate matchings; each one is then verified in exact
Q(zeta_N) arithmetic. The checks are:

- **A.** Independent re-derivation of the archive's 729-pattern check:
  122 / 5 / 0. Complete census of the 16 face subsets: feasible exactly for
  0, 1 and 3, with a unique three-face alignment pattern. The 26 involutions.
- **B.** Exhaustive support-pattern lemma: an admissible 5x5 pattern with
  three singleton rows is a permutation.
- **C.** Exact order-six count-six triangles: the zeta triangle and I,
  F2⊗F3, B2⊗B3. On all six orientations the checker verifies:
  - six exact matchings, with Hadamard characters in all three directions;
  - H^v_ji = conj(H^v_ij);
  - the Hadamard-diagonal tensor decomposition (1.3) and commuting G_k;
  - that the character sets are conjugation-closed with binary fixed rays;
  - 48 zero3 per edge, as OneBinaryMatching predicts.
- **D.** Exact prime quartets I, F, DF, D²F (d = 3, 5), on every ordered
  edge: the trace factorisation, disjoint supports, the propagation
  identities and the U/V alignment conventions. In odd prime dimension no
  conjugation-fixed nonidentity ray exists, which is why Lemma 2 is special
  to dimension six.
