# No four MUBs in dimension six

**Theorem (computer-assisted).** ℂ⁶ does not admit four mutually unbiased bases.

**In Lean:** `NoFourMUBs.Final.no_four_mubs (C : AtlasCertificate) : ¬ FourMUBs`
([`lean/NoFourMUBs/Final.lean`](lean/NoFourMUBs/Final.lean)), using only the standard axioms (`propext`,
`Classical.choice`, `Quot.sound`). **Its one input is the finite atlas certificate**: Lean proves that if the 12,021
Records satisfy their inequalities there are no four MUBs, and those inequalities are checked by two independent
interval-arithmetic implementations. No classification of order-6 Hadamard matrices is used.

**Read:** [`PROOF.md`](PROOF.md) (the proof), then [`AUDIT.md`](AUDIT.md) (status and where to look hardest), then
[`lean/README.md`](lean/README.md) (the formalisation).

## The proof in four steps

| Step | Statement | How it is checked |
|---|---|---|
| 1 | The positive local maxima of the corner invariant R form one 18-point orbit, max R = 3¹³/2¹² | 651 exact claims; **proved in Lean** |
| 2 | Every non-Tao class other than F6 is a matched completion of a strict corner seed, and the non-Tao quotient is connected | paper proofs with exact certificates; **proved in Lean** (connectedness in the direct form the coverage argument uses) |
| 3 | A ball Record plus Stage C contains no quartet edge | inequalities proved in Lean; evaluated per Record in interval arithmetic |
| 4 | A finite atlas of 12,021 ball Records, whose boundaries transfer into one another, covers the quotient | certified computation, confirmed by two independent checkers |

## Check it

| Command | What it checks | Time (Apple M5 Max) | Needs |
|---|---|---|---|
| `python3 verify.py` | exact replays of Steps 1–3: the Step 1 certificates, matched existence, the converse and exact reach, strict-corner coverage, Tao's Record, a Stage C sample | about 1 min | Python 3.10+, `pip install -r requirements.txt` |
| `python3 verify.py --atlas -j 8` | also certifies every Record of the atlas (Step 4) and F6 | 14 min (about 1.9 CPU-hours) | as above, about 2 GB per worker |
| `python3 verify.py --lean` | also builds the Lean formalisation and audits the axioms of 127 theorems | about 8 min with the Mathlib cache | elan; about 12 GB of disk |
| `python3 verify.py --lean-full` | also builds matched existence and `NoFourMUBs.Final`, and audits them | about 12 min | as above; up to about 11 GB of RAM |
| [`proof/independent/`](proof/independent/README.md) | the independent Julia checker of Steps 3–4 | full replay 24 min on 128 cores | Julia 1.12 |

Continuous integration ([`.github/workflows/ci.yml`](.github/workflows/ci.yml)) runs `verify.py`, the Lean build with
its axiom audit, the Julia checker on a sub-certificate, and **negative tests** ([`tests/`](tests/corruptions.py),
[`proof/independent/tests/`](proof/independent/tests/)): targeted corruptions of the certificates (a moved centre, an
enlarged radius, a dropped transfer target, altered rationals, …) that both checkers must reject, and harmless
changes they must accept.

## Layout

| Path | Role |
|---|---|
| [`PROOF.md`](PROOF.md), [`AUDIT.md`](AUDIT.md), [`verify.py`](verify.py) | The proof, its audit guide, and the replay driver |
| [`proof/coverage/`](proof/coverage/README.md) | Steps 1–2: the returned proofs used by the proof, with their exact verifiers; cross-checks; audits |
| [`proof/atlas/`](proof/atlas/README.md) | Steps 3–4: Records, Stage C, the atlas driver, the checker `certify.py`, the certificate and its receipts |
| [`proof/independent/`](proof/independent/README.md) | An independent implementation of the Step 3–4 checks (Julia, interval arithmetic), written from the specification only |
| [`MinimalConstruction/`](MinimalConstruction/README.md) | The corner reconstruction and the critical-strip proofs behind strict-corner coverage (Theorem 2.5) |
| [`lean/`](lean/README.md) | The Lean formalisation and the generators of its certificate modules |
| [`tests/`](tests/) | Negative tests of the checkers |
| [`proof/LITERATURE.md`](proof/LITERATURE.md) | Literature and credit, including what is taken from openai/math |
| [`ClassificationPaper/`](ClassificationPaper/README.md) | The classification paper [CT]: context for the reconstruction, not used by the proof |
| [`kernel_atlas/`](kernel_atlas/README.md) | Optional: the atlas certificate checked Record by Record in the Lean kernel. Done once (19 Oct 2026): `no_four_mubs_kernel : ¬ FourMUBs`, with no hypotheses and only the standard axioms, about 54,000 core-hours. Not needed to check the proof |
| [`explorations/`](explorations/README.md) | Research beyond the proof: open handoffs, results the proof does not use, the atlas-wide triple census |

## History

Earlier versions are preserved at git tags: the first, corner-chart proof (`archive-2026-10-11`); exploratory material
removed on 17 Oct 2026, including the second-route atlas (`archive-2026-10-17`); and the proof documents before their
consolidation into `PROOF.md`, including the earlier route through the classification [CT] (`proof-docs-2026-10-17`).
The typeset note in [`proof/note/`](proof/note/README.md) is the 11 Oct version of that earlier route.

## License and citation

MIT ([`LICENSE`](LICENSE)). To cite, see [`CITATION.cff`](CITATION.cff).

## References

- [CT] M. Cárdenes Wuttig, J. Tindall, *A complete classification of complex Hadamard matrices of order six*, arXiv:2608.18053.
- [OAI] OpenAI, *The maximum number of mutually unbiased bases in dimension six*, preprint (2026), openai/math.
