# No four MUBs in dimension six

**Theorem (computer-assisted).** ℂ⁶ does not admit four mutually unbiased bases.

**Read the proof:** [`PROOF.md`](PROOF.md) (a few pages), or the typeset note [`proof/note/no_four_mubs.pdf`](proof/note/no_four_mubs.pdf). To audit it, see [`AUDIT.md`](AUDIT.md).

## The proof in four steps

| Step | Statement | Kind |
|---|---|---|
| 1 | The positive local maxima of the corner invariant R form one 18-point orbit, with max R = 3¹³/2¹² | exact algebra; **proved in Lean** |
| 2 | The non-Tao Hadamard quotient (𝓗/≅) ∖ {S₆} is connected | topology, relative to the classification [CT] |
| 3 | A ball Record plus Stage C excludes every quartet edge in the ball | lemmas proved in Lean; certificate per Record |
| 4 | A finite atlas of 12,021 ball Records, whose boundaries transfer into one another, covers the quotient | certified computation, confirmed by two independent checkers |

**Lean.** `lean/NoFourMUBs/MainTheorem.lean` proves the theorem, using only the standard axioms. Its hypotheses are the finite atlas certificate and Step 2. Matched existence (L1) is proved in Lean, so Step 2 enters only as density (D): `no_four_mubs_of_density` in `lean/NoFourMUBs/Complete.lean`.

**Status of Step 2.** It is proved relative to [CT], through five reconstruction facts MC1–MC5. One of them rests on a matching statement (PR-M) whose supplied justification is incomplete; no counterexample is known. Matched existence, the matched half of MC4, is now proved without [CT], also in Lean. See the trust boundary in [`PROOF.md`](PROOF.md).

## Layout

| Path | Role |
|---|---|
| [`PROOF.md`](PROOF.md), [`AUDIT.md`](AUDIT.md) | The proof, and how to audit it |
| [`proof/coverage/`](proof/coverage/README.md) | Steps 1–2: the returned proofs with their exact verifiers, including matched existence |
| [`proof/atlas/`](proof/atlas/README.md) | Steps 3–4: Records, Stage C, the atlas driver, the trusted checker and the certificate |
| [`proof/independent/`](proof/independent/README.md) | A second implementation of the Step 3–4 checks (Julia, interval arithmetic), written from the specification only |
| [`proof/note/`](proof/note/no_four_mubs.pdf), [`proof/LITERATURE.md`](proof/LITERATURE.md) | The typeset note; literature and credit (including what we take from openai/math) |
| [`lean/`](lean/README.md) | The Lean formalisation |
| [`MinimalConstruction/`](MinimalConstruction/README.md) | The corner reconstruction H±(θ) and MC1–MC5, proved relative to [CT] |
| [`ClassificationPaper/`](ClassificationPaper/README.md) | The classification [CT], with its Lean development as a submodule |

Superseded material (the first, corner-chart proof, the development record and side studies) is preserved at the git tag [`archive-2026-10-11`](../../tree/archive-2026-10-11).

## Verifying

```bash
pip install -r requirements.txt
python3 verify.py            # all exact replays: Steps 1-2, matched existence, MC1-MC5, S6, Stage C sample (~3 min)
python3 verify.py --atlas    # also certify all 12,021 Records, F6 and the anchor (about 50 min on 9 cores)
python3 verify.py --lean     # also build the Lean formalisation and audit its axioms
python3 verify.py --lean-full  # also build L1 in Lean (about an hour of kernel checks)
```

## References

- [CT] M. Cárdenes Wuttig, J. Tindall, *A complete classification of complex Hadamard matrices of order six*, arXiv:2608.18053.
- [OAI] OpenAI, *The maximum number of mutually unbiased bases in dimension six*, preprint (2026), openai/math.
