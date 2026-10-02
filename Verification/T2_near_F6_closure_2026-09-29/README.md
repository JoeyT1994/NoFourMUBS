# All six F6 corner classes have certified neighbourhoods

Proof: [NEAR_F6_CLOSURE.md](../../ProvenResults/FourierNeighbourhood/SeedLifting/NEAR_F6_CLOSURE.md).
Application: [near_f6.py](../../ProvenResults/FourierNeighbourhood/SeedLifting/near_f6.py).

The new classes have phase half-widths 1/65536, 2⁻⁴² and 2⁻⁴⁶.
Together with the older cubes, they give uniform radius 2⁻⁴⁸ around
every F6 corner seed, for physical maximal completions, including R=0.
Radius 2⁻⁴⁹ also works around every corner seed of a Fourier reference
in either orientation with maximum corner R at most 2⁻⁹².

`complete_replay.json` retains the full new 96/160-bit certificates.
`isolated_final/` is the isolated root replay of the final registered
check `fourier_near_F6_closure`. `isolated/` also independently replays
the existing Fourier-block classification and the exact Fourier maximum.
Its near-F6 run preceded the final additional exact frame-image audit;
the final source is replayed in `isolated_final/`.

The verification covers:

- Exact Laurent identities for the two factor products, three
  autocorrelations and all nine reconstructed block entries.
- All 81 exact grid completions, coefficient separation, and the Tao
  maximum R=243.
- Rational perturbation constants, all 400 F6 corners in six classes,
  and the closed uniform radius in every frame of each representative.
- Taylor caps on the two analytic cubes and the complete residual
  lift of the nonsingular cube: 372 labels and 856 retained triples
  on each side, with carrier distance below 0.031810<1/30.
- Resource-failure controls, 216 outward frame-image tests at each
  precision, oversized-box failures, and a genuinely non-F6 reference
  with 0<M<2⁻⁹².

The universal stability estimates are proved analytically, not inferred
from samples. Inherited F6 matrix-tube and older seed-cube certificates
retain their earlier verification receipts. `source_hashes.json` records
the local sources and those dependencies without claiming that every
inherited certificate was rerun here.

The exploratory two-phase recovery cut did not resolve the two continuous
side families and is not used in any accepted certificate. The final
nonsingular cube uses the unchanged residual-lift engine; the two other
classes use the new analytic argument. No production driver was changed.
No production-scale saving, universal arbitrary-seed small-R cutoff, or
coverage of every interval between the old trimmed arcs and these tiny
new cubes is claimed.
