# Using topology to reveal all mutually unbiased bases in dimension six

The proofs, certificates and Lean formalisation for the paper of the same title by M. Cárdenes Wuttig and
J. Tindall.

**Theorem (classification; computer-assisted).** Up to equivalence, every nonempty set of mutually unbiased bases
(MUBs) in ℂ⁶ is one of the following:
1. a single basis {I};
2. a pair {I, H/√6}, where H is Tao's matrix, F₆, or the matched completion H₊(θ) of a strict seed θ;
3. a triple in the continuous two-parameter family, or the isolated Fourier triple.

Two sets of MUBs are *equivalent* if one is obtained from the other by a common unitary, by rephasing and
permuting the vectors of each basis, and by permuting the bases.

This proves the conjecture of Matolcsi, Matszangosz, Varga and Weiner [MMVW] that the known triples are all of them.

**Corollary (N(6) = 3).** ℂ⁶ does not admit four mutually unbiased bases. Every triple above contains two bases
related by a matrix of the Fourier family, and no such pair extends to four MUBs (Jaming, Matolcsi, Móra, Szöllősi
and Weiner [JMMSW]).

**An independent proof of the corollary, in Lean.** [`QuartetExclusion/`](QuartetExclusion/README.md) excludes
every pair that could extend to four MUBs directly, without classifying triples or Hadamard matrices:
`NoFourMUBs.EdgeXFinal.no_four_mubs_seed (C : SeedAtlas.EdgeX.EdgeAtlasCertificate) : ¬ FourMUBs`
([`lean/NoFourMUBs/SeedAtlas/EdgeXFinal.lean`](lean/NoFourMUBs/SeedAtlas/EdgeXFinal.lean)), using only the standard
axioms (`propext`, `Classical.choice`, `Quot.sound`). Its one input is the finite seed-atlas certificate, whose
inequalities are checked by two independent interval-arithmetic implementations (Arb and Julia). Its Stage C method
follows [OAI] §6, with every inequality reproved and formalised; it uses neither OpenAI's proof nor its certificates
[OAI, OAI-F].

**How both are proved.** Every Hadamard class other than Tao's matrix and F₆ is reconstructed from a 3×3 corner
given by four seed phases ([`MinimalReconstruction/`](MinimalReconstruction/README.md)). The space of these classes
is connected ([`Connectedness/`](Connectedness/README.md)). Finitely many overlapping balls of seeds, and one ball at
F₆, therefore cover it ([`PhaseCover/`](PhaseCover/README.md)). One local check closes each ball: for the
classification, every third basis is excluded or is forced to have an order-three symmetry, which identifies the
triple ([`TripleClassification/`](TripleClassification/README.md)); for the independent proof, the ball contains no
pair that extends to four MUBs.

**Verify:** [`VERIFY.md`](VERIFY.md) gives every check's command, method and trusted components.

**Read:** [`TripleClassification/README.md`](TripleClassification/README.md) (the classification),
[`PROOF.md`](PROOF.md) (the independent proof of the corollary), then [`lean/README.md`](lean/README.md) (the
formalisation).

Letters such as Z, X or ZT label the theorems of [`PROOF.md`](PROOF.md), indexed in
[`proof/theorems/README.md`](proof/theorems/README.md); a *return* is a theorem's package as delivered, kept
byte-for-byte ([`proof/README.md`](proof/README.md)).

**Status (3 Nov 2026).**
- **Classification.** All 2,775 seed balls, the ball at F₆ and Tao's matrix are certified. Each seed ball has one
  certificate (3.3 GB in all; release [`tc-certificates-2026-11-03`](https://github.com/JoeyT1994/NoFourMUBS/releases/tag/tc-certificates-2026-11-03)) that `TripleClassification/certifier/certify.py verify` checks from its files alone, in
  Arb and exact arithmetic; checking the atlas takes about 900 core-hours. Four balls use the minimum-transition
  ordering. The native certifier's recognition argument (1 November), the normal-form witness (2 November) and the
  ordering argument (3 November) have each had one independent, AI-assisted review
  ([native](TripleClassification/proofs/native_review/REVIEW.md),
  [normal form](TripleClassification/proofs/normal_form/review/REVIEW.md),
  [ordering](TripleClassification/proofs/REVIEW_ORDERING.md)); the classification at F₆ awaits one (its 383,829 shell verdicts are published and were replayed in full on
  4 November), and the
  classification is not formalised in Lean.
- **Independent proof of the corollary.** The seed-atlas certificate (2,775 seed balls and the ball at F₆, every
  sphere covered by 117,391 certified caps) passes both independent certifiers: Arb in 33 min on one 128-core node
  and Julia in 1 h 07 min on one 64-core node ([`PROOF.md`](PROOF.md#step-5-the-atlas-covers-x)). The two proofs share
  the cover (Steps 1, 2 and 5); the independent one replaces the triple classification and [JMMSW] by Stage C. At F₆
  the checkers do not run Stage C: they check that the ball lies within phase distance 7/40 of F₆, where Theorem 4.1
  excludes quartets by an exact cover. Stage C's binary64 tests carry a margin of 10⁻⁷, at least 50 times their
  rounding error ([`QuartetExclusion/ROUNDING.md`](QuartetExclusion/ROUNDING.md)).

## The independent proof in five steps

Every non-Tao Hadamard class other than F6 is the reconstruction of a 3×3 corner from four seed phases. The proof
uses those four phases twice: globally, to show the space of classes is connected, and locally, as the coordinates
of a finite atlas. The classification uses the same Steps 1, 2 and 5, with its own local check in place of Steps 3
and 4.

| Step | Statement | How it is checked |
|---|---|---|
| 1 | The positive local maxima of the corner invariant R form one 18-point orbit, max R = 3¹³/2¹² | 651 exact claims; **proved in Lean** |
| 2 | Every non-Tao class other than F6 is a matched completion of a strict corner seed, and the non-Tao quotient is connected | paper proofs with exact certificates; **proved in Lean** |
| 3 | A seed ball (an ellipsoid of seeds) plus Stage C contains no quartet edge | inequalities proved in Lean; one Arb computation per ball (return Z) |
| 4 | No quartet edge lies within distance 7/40 of F6 | exact cover; **proved in Lean, hypothesis-free** |
| 5 | Finitely many seed balls and one ball at F6, whose boundaries transfer into one another, cover the quotient | certified computation, confirmed by two independent checkers |

## Check it

| Command | What it checks | Needs |
|---|---|---|
| `python3 verify.py` | exact replays of Steps 1–4: the Step 1 certificates, matched existence, the converse and exact reach, strict-corner coverage, Tao's record, a Stage C sample | Python 3.10+, `pip install -r requirements.txt`; about 1 min |
| `python3 verify.py --atlas -j N` | also certifies the whole seed atlas in Arb (Step 5) | as above; 33 min on one 128-core node |
| `python3 verify.py --lean` | also builds the Lean formalisation and audits its axioms | elan; about 12 GB of disk |
| `python3 verify.py --lean-full` | also builds the main theorems and audits them | as above; up to about 7 GB of RAM |
| [`proof/independent_seed/`](proof/independent_seed/README.md) | the independent Julia checker of Step 5 | Julia 1.12; about an hour on one 64-core node |
| `python3 TripleClassification/certifier/certify.py verify CERT` | one ball's classification certificate, every node from its files ([`certifier/`](TripleClassification/certifier/README.md); `close BALL OUT` produces one) | python-flint, NumPy, SciPy; seconds for most balls |

Continuous integration ([`.github/workflows/ci.yml`](.github/workflows/ci.yml)) runs `verify.py` and the Lean build
with its axiom audit.

## Layout

Five components, one per idea. The first three build the atlas; each of the other two is a local check on every
piece of it.

| Component | Proves | Steps |
|---|---|---|
| [`MinimalReconstruction/`](MinimalReconstruction/README.md) | Every non-Tao class other than F6 is the matched completion of a strict 3×3 corner: existence, uniqueness, the converse, strict-corner coverage | 2.1–2.2 |
| [`Connectedness/`](Connectedness/README.md) | The positive maxima of R form one orbit, the strict seeds are connected, and so the space X of non-Tao classes is connected | 1, 2.3 |
| [`PhaseCover/`](PhaseCover/README.md) | Finitely many seed balls and one ball at F6, whose boundary spheres transfer into one another, cover X; the edge chart at F6 | 4.2–4.3, 5 |
| [`QuartetExclusion/`](QuartetExclusion/README.md) | No piece of the cover contains a quartet edge: C1 and Stage C on every seed ball, the radius-7/40 theorem at F6, Tao's record | 3, 4.1 |
| [`TripleClassification/`](TripleClassification/README.md) | The classification: every MUB triple with a transition in a piece of the cover is of known type (one checkable certificate per seed ball), and Tao's matrix has no third basis | — |

Shared:

| Path | Role |
|---|---|
| [`PROOF.md`](PROOF.md), [`verify.py`](verify.py) | The proof, and the driver that replays every exact check (`--atlas` adds the whole atlas in Arb) |
| [`proof/`](proof/README.md) | The hash-bound core (Stage C, the atlas and its certifiers, the theorems their receipts bind), kept byte-identical at these paths; each component links into it |
| [`lean/`](lean/README.md) | The Lean formalisation and the generators of its certificate modules |
| [`kernel_atlas/`](kernel_atlas/README.md) | The certificate checked in the Lean kernel (`decide +kernel`): return X at 7/40 (done), the seed balls and the ball at F6 (in progress) |
| [`tests/`](tests/) | Negative tests of the checkers |

## License and citation

MIT ([`LICENSE`](LICENSE)). To cite, see [`CITATION.cff`](CITATION.cff).

## References

- [CT] M. Cárdenes Wuttig, J. Tindall, *A complete classification of complex Hadamard matrices of order six*,
  arXiv:2608.18053; its Lean development:
  [mateocardeneswuttig/all_hadamard_matrices_in_dimension_six](https://github.com/mateocardeneswuttig/all_hadamard_matrices_in_dimension_six).
  Context for the reconstruction; not used by the proof.
- [JMMSW] P. Jaming, M. Matolcsi, P. Móra, F. Szöllősi, M. Weiner, *A generalized Pauli problem and an infinite family
  of MUB-triplets in dimension 6*, J. Phys. A **42**, 245305 (2009).
- [MMVW] M. Matolcsi, Á. K. Matszangosz, D. Varga, M. Weiner, *Triplets of mutually unbiased bases*, J. Algebr. Comb.
  **63**, 26 (2026), [doi:10.1007/s10801-026-01506-x](https://doi.org/10.1007/s10801-026-01506-x).
- [OAI] OpenAI, *The maximum number of mutually unbiased bases in dimension six*, preprint (2026), openai/math.
- [OAI-F] OpenAI, *Exact Fourier certificates for complex Hadamard matrices of order six*, OpenAI Math Release
  preprint, 24 Sep 2026,
  [openai/math](https://github.com/openai/math/blob/main/preprints/Exact-Fourier-certificates-for-complex-Hadamard-matrices-of-order-six-September-24-2026/Exact-Fourier-certificates-for-complex-Hadamard-matrices-of-order-six-September-24-2026.pdf).
