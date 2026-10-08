# Inputs and dependency audit

The research task was supplied as `PROMPT.md` with `ConfinementHandoff.zip`.
The two prompt copies have the same mathematical content; the original
archive and its source files were treated as input data. The requested
unrestricted theorem is **not** established by this output.

## Use of the numbered supplied facts

| Fact | Use in the delivered results |
|---|---|
| F1: qualitative MC1 | Not needed for the principal partial theorems; no effective global radius is inferred from it. |
| F2: physical square identity | Used to identify sqrt(M) with the maximum absolute signed corner invariant in the tubular theorem and in global moment inequalities. The Fourier-sector verifier also checks the identity directly from the original definition for all 400 corners in that sector. |
| F3: original gauge conversion | Replaced by a sharper argument. The old formula's claimed decimal implication at 0.09138 is not used. |
| F4: certified local lemma | Accepted as supplied for the compact minimum reduction and for improving an already proved nu < 0.55 conclusion to nu <= 0.451. It is not needed for the 0.042-tube conclusion nu < 0.55 itself. Its external certificate is not in the handoff and was not independently replayed. |
| F5: local Fourier theory | Not used to infer generic global coverage. The provided local reference is preserved as context only. |
| F6: numerical facts and sampling | Not used to decide any theorem. The supplied self-test was run successfully as an exploratory consistency check. The extremal phase and projector formulas require a local branch restriction. |
| F7: corner formulas and coverage | The displayed side formulas are used and their denominator identities are proved. No complete maximal-corner cover is asserted, and no coverage theorem is inferred from numerical reconstruction. |
| F8: Cauchy–Binet | Used in the exact determinant/permanent sum rules. |

All additional inputs are elementary linear algebra, compactness, exact
Laurent-polynomial identities, the convex-hull property of Bernstein
polynomials, and the stated elementary sine/arcsine inequalities. The
verifiers regenerate the coefficient tables used in the proofs. External
web literature was not used as a proof input.

## Corrections to numerical or global interpretations of the handoff

1. Direct outward-rounded evaluation of the displayed F3 formula gives
   rho(0.09138) > 0.55 and rho(0.0914) > 0.55. The sharper gauge theorem in
   `GEOMETRY_AND_GAUGE.md` proves d_F <= 0.0914 implies nu < 0.55 by an
   entirely rational certificate. Thus 0.0914 can be retained as a valid
   sufficient projector cutoff, but it needs the refined argument.

2. The statement nu = a sqrt(6) on the extremal curve is not a global
   formula for all a. At a=pi/3 the matrix is explicitly Fourier-equivalent,
   and nu=d_F=0. The toolkit's d_F=sin(a/2) description likewise cannot
   apply globally. All full-family proofs here perform the required phase
   lattice reduction before estimating a distance. The small-angle values
   tested by the supplied self-test are consistent.

3. The side denominator bounds do not justify ignoring square-root or
   cube-root branches, nor do they establish a global manifold structure.
   Both sheets and local branch choices remain part of any full cover.

4. A low stationary value of the selected corner R is not the same as a
   low local minimum of the maximum M. The exact golden-ratio example in
   `descent/CHART_DENOMINATORS.md` demonstrates the distinction. No seed
   exclusion discards the maximality requirement.

## Original file hashes

SHA-256 hashes of the supplied source files (before any output was written):

```text
1db5901dd610c3351b2e22c7a1444c8aa19337df220f8cabafb6e479f2197ac3  PROMPT.md
9349fed013d7f897e5d7929c191be6fb217f17ee079d14b88dadac65639a060a  reference/PRACTICAL_LOCAL.tex
b0bf39fde5c5947543fa9e658e83d0ccb071507a4c8d43f2ebb4d8b9f8711a1e  toolkit/chart_model.py
2140e32bc2c96138795f5ec99fa591360ccba726d3187aabae66bbeb3d0d2503  toolkit/common.py
d139d802926b6ef488af95af6597d0e67a0d4923b5a09466f0de69a46a532ad5  toolkit/hadamard_tools.py
3d68b905d54a0e65234f3482421a0efa7adc9e7ad10fff8dffb8838848590cf1  toolkit/selftest.py
```

Unchanged copies are under `input_data/` to make the numerical exploration
reproducible from the output archive. They remain explicitly noncertifying
code. `VERIFICATION_LOG.txt` records the replay performed before delivery.
