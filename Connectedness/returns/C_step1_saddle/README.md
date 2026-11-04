# Step 1: the sextic-free saddle proof (primary)

This return (`Step1LeanReturn.zip`, SHA-256 in `../SOURCE_ZIPS.sha256`) gives the primary proof of Step 1: every positive local maximum of R lies in one 18-point orbit. A direct saddle theorem replaces the double-interior sextic, resultant, Gröbner basis and Sturm census. The remaining finite algebra consists of explicit polynomial, Bernstein, quadratic-isolation and finite-orbit certificates (651 exact claims).

**Where things live now.**
- The certificates, generator, acceptance checker and the repaired, **compiled** Lean source are in [`../../../../lean/Step1Gen/`](../../../../lean/Step1Gen/README.md). The certificates and checker there are byte-identical to the return's.
- `verify.py` replays them (`step1_saddle_census`, about 7 s).
- The analytic assembly of Step 1 is proved in Lean in `lean/NoFourMUBs/Step1/` (`Step1Geo.maximumCensus`).

**Read in this order.**
1. `ROUTE.md`: the route, the new interior sign argument, and the passage from maxima to Step 2's statement.
2. `STEP1_BLUEPRINT.md`: numbered definitions and lemmas, linked to certificates.
3. `INTERIOR_NOTES.md`, `BOUNDARY_NOTES.md`: the local algebra and geometry.
4. `AUDIT.md`, `MATHEMATICAL_AUDIT.md`: the checker and mathematical audits, with rejection tests (`lean/Step1Gen/audit_checks.py`).
5. `CERTIFICATE_FORMAT.md`: the certificate schema.

`STATUS.md` is the return's own status at delivery: its Lean was then uncompiled. That has since been resolved in `lean/`.
