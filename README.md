# A topological proof that only three complementary measurements exist in six dimensions

The proof, its certificates and its Lean formalisation, for the paper of the same title by M. Cárdenes Wuttig and
J. Tindall.

**Theorem (computer-assisted).** ℂ⁶ does not admit four mutually unbiased bases.

**In Lean:** `NoFourMUBs.EdgeXFinal.no_four_mubs_seed (C : SeedAtlas.EdgeX.EdgeAtlasCertificate) : ¬ FourMUBs`
([`lean/NoFourMUBs/SeedAtlas/EdgeXFinal.lean`](lean/NoFourMUBs/SeedAtlas/EdgeXFinal.lean)), using only the standard
axioms (`propext`, `Classical.choice`, `Quot.sound`). **Its one input is the finite seed-atlas certificate**, whose
inequalities are checked by two independent interval-arithmetic implementations (Arb and Julia). No classification of
order-6 Hadamard matrices is used, and the proof is independent of OpenAI's results and certificates [OAI, OAI-F].

**Read:** [`PROOF.md`](PROOF.md) (the proof), then [`lean/README.md`](lean/README.md) (the formalisation).

**Status (27 Oct 2026).** The seed-atlas certificate (2,775 seed balls and the ball at F6, every sphere covered by 117,391 certified caps) passes both independent certifiers: Arb in 33 min on one 128-core node and Julia in 1 h 07 min on one 64-core node. See [`PROOF.md`](PROOF.md#step-5-the-atlas-covers-x).

## The proof in five steps

Every non-Tao Hadamard class other than F6 is the reconstruction of a 3×3 corner from four seed phases. The proof
uses those four phases twice: globally, to show the space of classes is connected, and locally, as the coordinates
of a finite atlas.

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

Continuous integration ([`.github/workflows/ci.yml`](.github/workflows/ci.yml)) runs `verify.py` and the Lean build
with its axiom audit.

## Layout

The proof has four components, one per idea; a fifth applies the same atlas to the triple classification.

| Component | Proves | Steps |
|---|---|---|
| [`MinimalReconstruction/`](MinimalReconstruction/README.md) | Every non-Tao class other than F6 is the matched completion of a strict 3×3 corner: existence, uniqueness, the converse, strict-corner coverage | 2.1–2.2 |
| [`Connectedness/`](Connectedness/README.md) | The positive maxima of R form one orbit, the strict seeds are connected, and so the space X of non-Tao classes is connected | 1, 2.3 |
| [`PhaseCover/`](PhaseCover/README.md) | Finitely many seed balls and one ball at F6, whose boundary spheres transfer into one another, cover X; the edge chart at F6 | 4.2–4.3, 5 |
| [`QuartetExclusion/`](QuartetExclusion/README.md) | No piece of the cover contains a quartet edge: C1 and Stage C on every seed ball, the radius-7/40 theorem at F6, Tao's record | 3, 4.1 |
| [`TripleClassification/`](TripleClassification/README.md) | Not part of this proof: every MUB triple completing a seed ball is of known type, by the same atlas | — |

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
- [OAI] OpenAI, *The maximum number of mutually unbiased bases in dimension six*, preprint (2026), openai/math.
- [OAI-F] OpenAI, *Exact Fourier certificates for complex Hadamard matrices of order six*, OpenAI Math Release
  preprint, 24 Sep 2026,
  [openai/math](https://github.com/openai/math/blob/main/preprints/Exact-Fourier-certificates-for-complex-Hadamard-matrices-of-order-six-September-24-2026/Exact-Fourier-certificates-for-complex-Hadamard-matrices-of-order-six-September-24-2026.pdf).
