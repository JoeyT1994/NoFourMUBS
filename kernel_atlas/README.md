# The kernel-checked exclusion near F6

Theorem 4.1 of [`PROOF.md`](../PROOF.md) states that no complex Hadamard matrix within horizontal phase distance 7/40
of F6 is a quartet edge. Its Lean proof, `NoFourMUBs.X.no_quartet_near_F6_r0175`
([`lean/NoFourMUBs/X/`](../lean/NoFourMUBs/X/README.md)), runs the local tests of Stage C
([`proof/atlas/STAGEC.md`](../proof/atlas/STAGEC.md)) at F6 as an exact certificate, and the Lean kernel checks every
step of that certificate with `decide +kernel`. This folder holds the certificate, the kernel checkers it uses and
the script that generates it. The theorem has no hypotheses and uses only the standard axioms.

## Contents

| Path | Contents |
|---|---|
| `lean/KernelAtlas/X/StageC.lean` | The bridge from the kernel checks to the theorem: a rational centre within 10⁻¹⁸ of F6's phases, the exact frame, the radii and the scalar conditions |
| `lean/KernelAtlas/X/SC175/` | The generated certificate at ρ = 7/40, used by `X.Radius0175` |
| `lean/KernelAtlas/X/SC/` | The generated certificate at ρ = 3/20, used by `X.Radius015` |
| `lean/KernelAtlas/Bins`, `Tables`, `Tangent`, `Tangent2*`, `Labels` | The vector-bin cover with its direct and linearised tests, and label membership |
| `lean/KernelAtlas/Edges`, `Joint2*`, `Clique`, `CliqueB` | The direct and joint edge tests, and the two-clique search |
| `lean/KernelAtlas/StageCK`, `StageCK2B` | The assembly of a Stage C certificate from these checks |
| `lean/KernelAtlas/FrameK`, `Trig`, `TrigK`, `SigmaK`, `E0K`, `NormalK` | The frame, the phase products, the bound σ on the normal space, the centre residual and the normal bound |
| `lean/KernelAtlas/Pack` | Packed data literals for the generated modules |
| `generators/x_stagec.py` | Generates `X/SC/` or `X/SC175/`, after replaying every check in an exact Python mirror. The other scripts in `generators/` are its helpers |
| `generators/run_x_rusty.sh` | A Slurm script that generates and compiles the certificate and audits the theorem's axioms on one cluster node |

The Lean sources are built as the Lake library `KernelAtlas`, declared in [`lean/lakefile.toml`](../lean/lakefile.toml).

## Building it

The generated modules need one large node (128 cores, up to 8 hours), so they are not a default target and
continuous integration does not build them. [`lean/NoFourMUBs/X/README.md`](../lean/NoFourMUBs/X/README.md) gives the
parameters of both certificates and the commands that generate them.
