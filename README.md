# Using topology to reveal all mutually unbiased bases in dimension six

This repository holds the proofs, certificates and Lean formalisation behind the paper of the same title by
M. Cárdenes Wuttig and J. Tindall. Everything the paper claims can be checked from here. [`VERIFY.md`](VERIFY.md)
explains how.

## The result

**Theorem (computer-assisted).** Up to equivalence, every nonempty set of mutually unbiased bases (MUBs) in ℂ⁶ is
one of the following:
1. a single basis {I};
2. a pair {I, H/√6}, where H is Tao's matrix, F₆, or the matched completion H₊(θ) of a strict seed θ;
3. a triple in the continuous two-parameter family, or the isolated Fourier triple.

Two sets of MUBs are *equivalent* if one is obtained from the other by a common unitary, by rephasing and permuting
the vectors of each basis, and by permuting the bases. The theorem proves the conjecture of Matolcsi, Matszangosz,
Varga and Weiner [MMVW] that the known triples are the only ones.

**Corollary.** ℂ⁶ admits no four mutually unbiased bases, so N(6) = 3. Every triple above contains two bases related
by a matrix of the Fourier family, and no such pair extends to four MUBs [JMMSW].

The corollary also has a second, more direct proof in this repository. It excludes four MUBs ball by ball, without
classifying triples, and its final step is a Lean theorem (see below).

## How the proof works

Every class of order-six complex Hadamard matrices other than Tao's matrix and F₆ can be rebuilt from a 3×3 corner
fixed by four phases ([`MinimalReconstruction/`](MinimalReconstruction/README.md)). The space of these classes is
connected ([`Connectedness/`](Connectedness/README.md)). Connectedness means that finitely many overlapping balls of
these phases, together with one ball at F₆, cover the whole space, as long as every point on the boundary of one ball
lies inside another ([`PhaseCover/`](PhaseCover/README.md)).

Each proof then runs one local check on every ball. For the classification, every possible third basis is either
excluded or forced to have an order-three symmetry, and that symmetry identifies the triple
([`TripleClassification/`](TripleClassification/README.md)). For the direct proof, the ball is shown to contain no
pair that extends to four MUBs ([`QuartetExclusion/`](QuartetExclusion/README.md)).

## What has been checked

**The classification.** All 2,775 seed balls, the ball at F₆ and Tao's matrix are certified.
- Each seed ball has its own certificate, 3.3 GB in all, published with the release
  [`tc-verification-2026-11-04`](https://github.com/JoeyT1994/NoFourMUBS/releases/tag/tc-verification-2026-11-04).
- The certifier checks each certificate from its files alone, in Arb and exact arithmetic. Checking all of them takes
  about 900 core-hours.
- In four of the balls, the certificates use the freedom to reorder the three bases
  ([`TripleClassification/proofs/ORDERING.md`](TripleClassification/proofs/ORDERING.md)).
- The 383,829 shell verdicts of the ball at F₆ are published, and were all recomputed from scratch on 4 November 2026.
- Each of the three arguments the certifier relies on has had one independent, AI-assisted review: the native
  certifier, the normal-form witness and the ordering argument
  ([`TripleClassification/proofs/`](TripleClassification/proofs/README.md)). The classification near F₆ has not yet
  been reviewed this way, and the classification is not formalised in Lean.

**The direct proof of N(6) = 3.**
- The atlas certificate covers every boundary sphere with 117,391 certified caps. It passes two independent checkers:
  one in Arb (33 minutes on one 128-core node) and one in Julia (67 minutes on one 64-core node).
- Lean then proves that this certificate excludes four MUBs
  (`NoFourMUBs.EdgeXFinal.no_four_mubs_seed` in
  [`lean/NoFourMUBs/SeedAtlas/EdgeXFinal.lean`](lean/NoFourMUBs/SeedAtlas/EdgeXFinal.lean)), using only the standard
  axioms.
- Near F₆, an exact cover proved in Lean excludes quartets within phase distance 7/40.

Both proofs share the reconstruction, the connectedness and the cover. Inside each ball, both use the vector-cover
and graph-search tests introduced in OpenAI's proof [OAI]. We reprove their inequalities and formalise them in Lean,
and use none of OpenAI's certificates [OAI, OAI-F]. The few floating-point comparisons in these tests carry proved
error margins ([`QuartetExclusion/ROUNDING.md`](QuartetExclusion/ROUNDING.md)).

## Checking it yourself

[`VERIFY.md`](VERIFY.md) gives the full recipe from a fresh clone. The main commands are:

| Command | What it checks | Needs |
|---|---|---|
| `python3 verify.py` | the exact parts of the reconstruction and connectedness proofs, Tao's matrix and a sample of the local tests | Python 3.10+, `pip install -r requirements.txt`, about a minute |
| `python3 verify.py --atlas -j N` | the whole atlas, in Arb | 33 minutes on one 128-core node |
| `python3 verify.py --lean-full` | builds the Lean formalisation and audits its axioms | elan, about 12 GB of disk and 7 GB of RAM |
| [`proof/independent_seed/`](proof/independent_seed/README.md) | the independent Julia checker of the atlas | Julia 1.12, about an hour on 64 cores |
| `python3 TripleClassification/certifier/certify.py verify CERT` | one ball's classification certificate | python-flint, NumPy and SciPy, seconds for most balls |

Continuous integration ([`.github/workflows/ci.yml`](.github/workflows/ci.yml)) runs the exact checks, the certifier's
tests, the Julia checker's tests and the Lean build with its axiom audit.

## The direct proof in five steps

The classification uses Steps 1, 2 and 5 below, with its own local check in place of Steps 3 and 4. The steps are set
out in full in [`PROOF.md`](PROOF.md).

| Step | Statement | How it is checked |
|---|---|---|
| 1 | The positive local maxima of the corner invariant R form one orbit of 18 points, with maximum 3¹³/2¹² | 651 exact claims, proved in Lean |
| 2 | Every non-Tao class other than F₆ is a matched completion of a strict corner, and the space of non-Tao classes is connected | exact certificates, proved in Lean |
| 3 | No seed ball contains a pair that extends to four MUBs | inequalities proved in Lean, one Arb computation per ball |
| 4 | No such pair lies within phase distance 7/40 of F₆ | an exact cover, proved in Lean with no hypotheses |
| 5 | The 2,775 seed balls and the ball at F₆, whose boundaries pass into one another, cover the space | certified computation, confirmed by two independent checkers |

## How the repository is organised

The first three folders build the atlas. Each of the other two runs one local check on every piece of it.

| Folder | What it proves |
|---|---|
| [`MinimalReconstruction/`](MinimalReconstruction/README.md) | Every non-Tao class other than F₆ is the matched completion of a strict 3×3 corner |
| [`Connectedness/`](Connectedness/README.md) | The maxima of R form one orbit, so the strict seeds and the space of non-Tao classes are connected |
| [`PhaseCover/`](PhaseCover/README.md) | The seed balls and the ball at F₆ cover the space |
| [`QuartetExclusion/`](QuartetExclusion/README.md) | No piece of the cover contains a pair that extends to four MUBs |
| [`TripleClassification/`](TripleClassification/README.md) | Every triple is of known type, with one checkable certificate per seed ball |

The other folders are shared:
- [`PROOF.md`](PROOF.md) and [`verify.py`](verify.py) hold the direct proof and the script that replays its exact
  checks.
- [`proof/`](proof/README.md) holds the files that the certificates' receipts bind by path, kept unchanged. The
  folders above link into it.
- [`lean/`](lean/README.md) holds the Lean formalisation.
- [`kernel_atlas/`](kernel_atlas/README.md) checks certificates inside the Lean kernel. This is done for the exclusion
  near F₆, and in progress for the seed balls.
- [`tests/`](tests/) holds negative tests of the checkers.

Theorems in [`PROOF.md`](PROOF.md) are labelled by letters such as Z or X, and
[`proof/theorems/README.md`](proof/theorems/README.md) lists them.

## License and citation

MIT ([`LICENSE`](LICENSE)). To cite this work, see [`CITATION.cff`](CITATION.cff).

## References

- [CT] M. Cárdenes Wuttig, J. Tindall, *A complete classification of complex Hadamard matrices of order six*,
  arXiv:2608.18053, with its Lean development at
  [mateocardeneswuttig/all_hadamard_matrices_in_dimension_six](https://github.com/mateocardeneswuttig/all_hadamard_matrices_in_dimension_six).
  It gives context for the reconstruction but is not used by the proof.
- [JMMSW] P. Jaming, M. Matolcsi, P. Móra, F. Szöllősi, M. Weiner, *A generalized Pauli problem and an infinite family
  of MUB-triplets in dimension 6*, J. Phys. A **42**, 245305 (2009).
- [MMVW] M. Matolcsi, Á. K. Matszangosz, D. Varga, M. Weiner, *Triplets of mutually unbiased bases*, J. Algebr. Comb.
  **63**, 26 (2026), [doi:10.1007/s10801-026-01506-x](https://doi.org/10.1007/s10801-026-01506-x).
- [OAI] OpenAI, *The maximum number of mutually unbiased bases in dimension six*, preprint, 24 Sep 2026 (openai/math).
- [OAI-F] OpenAI, *Exact Fourier certificates for complex Hadamard matrices of order six*, OpenAI Math Release
  preprint, 24 Sep 2026,
  [openai/math](https://github.com/openai/math/blob/main/preprints/Exact-Fourier-certificates-for-complex-Hadamard-matrices-of-order-six-September-24-2026/Exact-Fourier-certificates-for-complex-Hadamard-matrices-of-order-six-September-24-2026.pdf).
