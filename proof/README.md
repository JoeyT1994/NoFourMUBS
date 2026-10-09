# The minimal proof

| Folder | Steps | Contents |
|---|---|---|
| [`coverage/`](coverage/README.md) | 1, 2 | Two independent exact proofs that the maxima of R are one orbit (R* = 3¹³/2¹²), sheet parity, continuity, and connectedness of the non-Tao quotient. Each replays in under 10 s |
| [`atlas/`](atlas/README.md) | 3, 4 | Ball Records (`ballrecord.py`), Stage C (`stagec.py`), the atlas driver (`atlas.py`), the independent certifier (`certify.py`), the F6 nonemptiness check (`nonempty.py`), the Arb replay (`arb_replay.py`), the coverage lemma (`COVERAGE.md`), the rigour notes (`RIGOUR.md`) and the run results (`results/`) |

| [`independent/`](independent/README.md) | 3, 4 | An **independent re-implementation** of the certifier, in Julia with IntervalArithmetic, written from the specifications alone (PROOF.md, STAGEC.md, COVERAGE.md) without reading our checker code. Every acceptance is decided in interval arithmetic |
| [`LITERATURE.md`](LITERATURE.md) | — | Literature check: what is new and what is credited |

The statement and the proof are in [`../PROOF.md`](../PROOF.md). [`note/`](note/no_four_mubs.pdf) holds the same argument as a typeset note.
