# No four MUBs in dimension six

**Theorem (computer-assisted).** C⁶ does not admit four mutually unbiased bases.

**→ Read the proof: [`PROOF.md`](PROOF.md)** (about three pages), or the typeset note [`proof/note/no_four_mubs.pdf`](proof/note/no_four_mubs.pdf). To audit it, see [`AUDIT.md`](AUDIT.md).

## The proof in four steps

| Step | Statement | Kind | Where |
|---|---|---|---|
| 1 | The positive local maxima of the corner invariant R form one 18-point orbit, with max R = 3¹³/2¹² at α(1, 2, −1, −2), α = arccos(1/4) | exact algebra | [`proof/coverage/`](proof/coverage/README.md) |
| 2 | The non-Tao Hadamard quotient (𝓗/≅) ∖ {S₆} is connected, relative to the classification | topology | [`proof/coverage/`](proof/coverage/README.md) |
| 3 | A ball Record (centre, tangent frame, certified normal bound) plus the openai/math Stage C excludes every quartet edge in the ball | local lemma + certificate | [`proof/atlas/`](proof/atlas/README.md) |
| 4 | A finite atlas of ball Records whose boundaries transfer into each other covers the connected quotient: 12,020 Records, all certified | certified computation | [`proof/atlas/results/`](proof/atlas/results/RECEIPT.md) |

## Folders

| Folder | Role |
|---|---|
| [`proof/`](proof/README.md) | **The minimal proof**: coverage (Steps 1–2) and the atlas (Steps 3–4) |
| [`MinimalConstruction/`](MinimalConstruction/README.md) | The corner reconstruction H±(θ) and MC1–MC5, proved relative to the classification (used in Step 2); `Sheets/` holds the MC3/MC5 sheet lemmas |
| [`ClassificationPaper/`](ClassificationPaper/README.md) | The classification of order-6 complex Hadamard matrices [CT] |
| [`openai/`](openai/README.md) | Summary of the openai/math proof, and what we take from it (Stage C and Records) |
| [`archive/`](archive/README.md) | Everything superseded: the first, corner-chart proof (about 10⁵ core-hours) with its write-up draft, and the earlier shortening attempts (wide tube, confinement, averaging lemma). Still replayable |

## Verifying

```bash
pip install -r requirements.txt
python3 verify.py            # exact replays (Steps 1–2), MC1–MC5, S₆ as a 0-dim Record, Stage C Arb sample
python3 verify.py --atlas    # Step 4: certify all 12,020 Records (about 50 min on 9 cores)
```

## References

- [CT] M. Cárdenes Wuttig, J. Tindall, *A complete classification of complex Hadamard matrices of order six*, arXiv:2608.18053.
- [OAI] OpenAI, *The maximum number of mutually unbiased bases in dimension six*, preprint, 24 Sep 2026 (openai/math).
