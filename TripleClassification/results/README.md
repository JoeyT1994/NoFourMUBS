# Results of the triple classification

One row per seed ball in [`balls.tsv`](balls.tsv), for the certificates of release
[`tc-verification-2026-11-04`](https://github.com/JoeyT1994/NoFourMUBS/releases/tag/tc-verification-2026-11-04).
[`summary.json`](summary.json) gives the atlas totals.

| Column | Meaning |
|---|---|
| `ball` | the seed ball's atlas index (0–2774) |
| `verdict` | `CLOSED` when every node of the certificate verifies |
| `scope` | `all`: every triple with H in the ball is classified. `minimum-transition`: the triples whose first transition has the least Γ_F of the three ([`../proofs/ORDERING.md`](../proofs/ORDERING.md)) |
| `native_leaves`, `normal_form_leaves`, `outside` | how many leaves of each kind the certificate's dyadic tree has |
| `deepest_level` | the deepest refinement level (0 is the whole ball) |
| `certificate_bytes` | size of `leaves.tar`. 0 means the ball is closed whole by the whole-ball certifier and has no leaf files |
| `search_core_hours` | the cost of finding the certificate (`certify.py close`) |
| `check_core_hours`, `check_wall_seconds` | the cost of checking it (`certify.py verify`) |
| `certificate_sha256` | the certifier's digest of the certificate (`verify.digest`, over the file names and the bytes of `tree.json` and `leaves.tar`), not a plain `shasum` of one file |

[`fourier_shell_replay_20261104.json`](fourier_shell_replay_20261104.json) is the accounting of the fresh replay of the
383,829 shell leaves of the ball at F₆.
