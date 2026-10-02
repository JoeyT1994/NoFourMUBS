# Exact maximum corner R of the Fourier family

Proof: [FOURIER_MAX_R.md](../../ProvenResults/FourierNeighbourhood/SeedLifting/FOURIER_MAX_R.md).

The verifier checks all 400 corners in two independent exact Laurent
calculations, establishes the multiplicities 256+4*36, and verifies the
sum-of-squares formula. It supplies explicit F6 row/column permutations
at all twelve zero-maximum parameter points. It also audits the balanced
phase gauge and outward radius-policy controls at 96 and 160 bits.

The final quantitative bound is d_F6 <= pi*sqrt(M)/144 for M<=36,
in both orientations. Its proof is analytic; it is not inferred from
the numerical controls. The transferred reference radius is
1/30-pi*sqrt(M)/144, with the uniform family radius as a fallback.

`root/` is the isolated replay of the final registered check
`fourier_max_corner_R`. `certificate.json` and `replay.txt` retain the
standalone census and earlier controls; the root run also includes the
final exact gauge and transpose controls. No off-family seed lift or
universal T1-prime cutoff is asserted by this calculation.
