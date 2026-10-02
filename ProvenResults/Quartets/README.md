# Quartet face structure

Matching counts of the four faces of a hypothetical quartet of MUBs in C^6.
Counts are as in [TriangleNullities](../Triples/TriangleNullities.md).

| Result | What is established | Scope |
|---|---|---|
| [CountTwo](CountTwo/README.md) | A triangle with exactly two matchings has a zero 3×3 minor on some edge. So no quartet face has count 2 | Unconditional. The quartet corollary uses Jaming et al. through QuartetEdgeCorollary |
| [CountSix](CountSix/README.md) | A quartet has 0, 1 or 3 count-six faces. The three-face pattern meets at one vertex, and the alignment rules between faces are fixed | Uses QuartetEdgeCorollary |

**Combined consequence.** Every quartet face has count 1 or 6, and every
quartet has at least one count-one face. So to prove there are no four MUBs,
it suffices to prove **N1**: no MUB triple whose edges have no zero 3×3 minor
has exactly one matching. N1 is open. The direct attack is archived at
`../NoFourMUBSArchive/N1-attack-2026-09-27/`. The current route is
[NumericalCampaign](../../NumericalCampaign/README.md), which certifies
quartet exclusion directly and does not need N1.
