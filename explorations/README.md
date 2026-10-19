# Explorations: research beyond the proof

**Nothing here is part of the proof** or is run by `verify.py`. It is the research around it: results we received
or computed that the proof does not use, open problems, and numerical studies.

| Folder | What it is |
|---|---|
| [`handoffs/`](handoffs/README.md) | Open handoffs: statements whose proof would simplify the proof further (P, R2) |
| [`returns/H_fourier_vanishing`](returns/H_fourier_vanishing/REPORT.md) | Every non-Tao order-6 Hadamard has all forty Fourier moments zero (Lean: `NoFourMUBs.FourierVanishing`); an input to an earlier draft of the paper |
| [`returns/I_moment_reduction`](returns/I_moment_reduction/REPORT.md) | The moment identity (R); shows the draft's Eq. (sos) is unnecessary |
| [`returns/L_fourier_edge`](returns/L_fourier_edge/REVIEW.md) | Toward "every MUB triple has a Fourier edge": a local theorem near the Diţă triple, a re-certified Fourier-family exclusion, and (in `global_progress/`) a component theorem — the bicirculant family is a whole component of triple space |
| [`returns/N_stagec_second_order`](returns/N_stagec_second_order/REVIEW.md) | A proved second-order Stage C test (fewer bins; larger Records); filed, not integrated |
| [`returns/P_atlas_free`](returns/P_atlas_free/REVIEW.md) | Toward the atlas-free route: the isolated product triple is rigid (rank 55), so both known triple classes are whole components; a local Fourier-pair classification; dimension bounds; sharper quartet inequalities |
| [`triple_test/`](triple_test/README.md) | The atlas-wide MUB-triple search: 379,944 triples from all 12,021 Record centres, every one of a known form |
| [`atlas_survey/`](atlas_survey/README.md) | Per-Record workload survey of the atlas (used by `kernel_atlas/`) |
| [`hard_records/`](hard_records/README.md) | Why 673 Records were hard for the first kernel checker (superseded by the kernel's v2 tests) |

The optional kernel-checked atlas, which would make the Lean theorem unconditional, is in
[`../kernel_atlas/`](../kernel_atlas/README.md).
