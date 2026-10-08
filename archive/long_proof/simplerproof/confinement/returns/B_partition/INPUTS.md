# Inputs and provenance

## Supplied material

The following files are copied byte for byte from the handoff. They are source data and assumed theorem statements, not newly established proof certificates.

| Bundled file | SHA-256 |
|---|---|
| `inputs/PROMPT.md` | `1db5901dd610c3351b2e22c7a1444c8aa19337df220f8cabafb6e479f2197ac3` |
| `inputs/toolkit/chart_model.py` | `b0bf39fde5c5947543fa9e658e83d0ccb071507a4c8d43f2ebb4d8b9f8711a1e` |
| `inputs/toolkit/common.py` | `2140e32bc2c96138795f5ec99fa591360ccba726d3187aabae66bbeb3d0d2503` |
| `inputs/toolkit/hadamard_tools.py` | `d139d802926b6ef488af95af6597d0e67a0d4923b5a09466f0de69a46a532ad5` |
| `inputs/toolkit/selftest.py` | `3d68b905d54a0e65234f3482421a0efa7adc9e7ad10fff8dffb8838848590cf1` |
| `inputs/reference/PRACTICAL_LOCAL.tex` | `9349fed013d7f897e5d7929c191be6fb217f17ee079d14b88dadac65639a060a` |

The original supplied archive, before extraction, has SHA-256:

`37f20c357c67bbb35e680b9c0a47e48983915b2f17dd0ffb2c34dd42f65cd56a`.

The archive itself is not duplicated inside this return. Its prompt, toolkit and reference source are included above.

## Proof inputs

The complete mathematical input ledger is Section 7 of `CONFINEMENT.md`. The confinement theorem remains unproved. F4 is assumed as supplied; its original external certificate is not reconstructed. F7 is used only in the explicitly stipulated target-region scope, together with the local formula-validity assertion. The original F3 numerical implication is audited and repaired by a new elementary gauge.

No external paper, classification, web source, or numerical pilot is used as an input to a new proof. All proof code was written for this return.

## Recorded software environment

The exact suite was replayed under Python 3.12.14. Exact verifiers need SymPy 1.14.0 and its mpmath 1.3.0 dependency; several use only the standard library. The numerical pilot used NumPy 2.3.5 and SciPy 1.17.0.

All proof decisions use integer/rational arithmetic, exact polynomial algebra, Sturm counts or rational interval evaluation. Runtime timings and explanatory decimal approximations are descriptive only.

The generated `verification.log` records the versions and the complete successful fourteen-certificate replay. The supplied self-test log and all numerical experiments are kept in `exploration_fourier_agent/`, clearly separated from the exact suite.

## Integrity

`SHA256SUMS` lists each archived file except that inventory itself. It describes the delivered snapshot. Rerunning scripts that write logs or numerical data changes the corresponding hashes.
