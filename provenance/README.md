# Provenance

These files are earlier status and briefing documents. They are **not part of the proof**. They are kept byte-for-byte because some certificates record their sha256 among their inputs:
- `ActiveShoulderClosure*/INPUTS.json`;
- `SignedCornerPSDPrune/INPUTS.json`;
- `EffectiveConfinement/SOURCE_SHA256.json`;
- `FourierCornerRigidity/SOURCE_SHA256.json`.

Editing these files would break those pin checks.

Their internal links point to the repository layout of the date they were written, so some links are dead.

For the current argument, read [`../PROOF.md`](../PROOF.md).

[RELOCATION.json](RELOCATION.json) records the move into this folder:
- each document's old path, new path and sha256, which is unchanged;
- the manifests whose path strings were updated and then re-pinned.
