# A topological proof that only three complementary measurements exist in six dimensions

The proof, its certificates and its Lean formalisation, for the paper of the same title by M. Cárdenes Wuttig and
J. Tindall.

**Theorem (computer-assisted).** ℂ⁶ does not admit four mutually unbiased bases.

**In Lean:** `NoFourMUBs.EdgeXFinal.no_four_mubs_seed (C : SeedAtlas.EdgeX.EdgeAtlasCertificate) : ¬ FourMUBs`
([`lean/NoFourMUBs/SeedAtlas/EdgeXFinal.lean`](lean/NoFourMUBs/SeedAtlas/EdgeXFinal.lean)), using only the standard
axioms (`propext`, `Classical.choice`, `Quot.sound`). **Its one input is the finite seed-atlas certificate**, whose
inequalities are checked by two independent interval-arithmetic implementations (Arb and Julia). No classification of
order-6 Hadamard matrices is used.

**Read:** [`PROOF.md`](PROOF.md) (the proof), then [`AUDIT.md`](AUDIT.md) (status and where to look hardest), then
[`lean/README.md`](lean/README.md) (the formalisation).

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

| Path | Role |
|---|---|
| [`PROOF.md`](PROOF.md), [`AUDIT.md`](AUDIT.md), [`verify.py`](verify.py) | The proof, its audit guide, and the replay driver |
| [`proof/coverage/`](proof/coverage/README.md) | Steps 1–2: the returned proofs used by the proof, with their exact verifiers; cross-checks; audits |
| [`proof/seed_atlas/`](proof/seed_atlas/README.md) | Steps 3 and 5: the seed-atlas format, the driver that builds it, the Arb certifier, the certificate |
| [`proof/independent_seed/`](proof/independent_seed/README.md) | An independent implementation of the Step 3–5 checks (Julia, interval arithmetic), written from the specification only |
| [`proof/theorems/`](proof/theorems/README.md) | The theorems behind Steps 3–5 (C1, the transfers, F6 and the edge chart), each with its proof and exact or interval verifiers |
| [`proof/atlas/`](proof/atlas/README.md) | Stage C (Lemma 3.2) and Tao's record: the shared code and its proofs (`STAGEC.md`, `RIGOUR.md`) |
| [`proof/independent/`](proof/independent/README.md) | The independent Julia Stage C and normal bound, loaded by `proof/independent_seed` |
| [`MinimalConstruction/`](MinimalConstruction/README.md) | The corner reconstruction and the critical-strip proofs behind strict-corner coverage (Theorem 2.5) |
| [`lean/`](lean/README.md) | The Lean formalisation and the generators of its certificate modules |
| [`tests/`](tests/) | Negative tests of the checkers |
| [`proof/LITERATURE.md`](proof/LITERATURE.md) | Literature and credit, including what is taken from openai/math |
| [`ClassificationPaper/`](ClassificationPaper/README.md) | The classification paper [CT]: context for the reconstruction, not used by the proof |
| [`kernel_atlas/`](kernel_atlas/README.md) | The certificate checked in the Lean kernel (`decide +kernel`), so that the main theorem holds with no hypotheses: return X at 7/40 (done), the seed balls and the ball at F6 (in progress) |

## License and citation

MIT ([`LICENSE`](LICENSE)). To cite, see [`CITATION.cff`](CITATION.cff).

## References

- [CT] M. Cárdenes Wuttig, J. Tindall, *A complete classification of complex Hadamard matrices of order six*, arXiv:2608.18053.
- [OAI] OpenAI, *The maximum number of mutually unbiased bases in dimension six*, preprint (2026), openai/math.
