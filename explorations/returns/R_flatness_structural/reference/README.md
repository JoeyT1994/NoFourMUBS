# Included source material

`HANDOFF_R.md` is the unmodified brief from the uploaded
`R_flatness_structural_brief.zip`.

`FLATNESS.md` is the recovered source report, *Matched flatness without the
classification theorem*. It supplies the definitions, strict-domain
guards, actual-side formulas, and the existing exact computation used
as background for this investigation. Its own references to other files
belong to that source package; this return does not reproduce the full
repository.

`rational_helper.py` is copied unchanged from
`M_flatness_one_defect/inputs/proof/coverage/returns/E_matched_flatness/direct/`.
It implements generic exact rational-function arithmetic and imports no
flatness theorem or certificate. `check_existing_W11.py` is a new compact
replay of the W11 calculation described in that source, using the same
formulas. It performs the rational seed expansion which Handoff R seeks
to replace.

Input and source hashes are recorded in `../PROVENANCE.json`. No current
Lean build or certificate was regenerated as part of this return.
