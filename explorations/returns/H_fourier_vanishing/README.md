# Fourier vanishing: completed handoff

**PROVED:** The requested row and column Fourier-vanishing theorem follows from the handoff's allowed actual-side identities, strict nonmatched converse and exact reach. See `REPORT.md` for the complete proof and precise dependency boundary.

**CERTIFIED:** All new finite algebra is replayed with Python integer arithmetic. No third-party package is needed.

```sh
python3 verify.py
sha256sum -c SHA256SUMS
```

`certificates/hodge_integer_cofactors.json` contains 180 symbolic identities and 2,160 explicit integer cofactors. `CERTIFICATE_FORMAT.md` documents the checker format and kernel-port route. `VERIFY_TRANSCRIPT.txt` is the successful replay transcript. `PROVENANCE.json` pins the original archive and four copied input texts.

**NOT ESTABLISHED here:** A newly compiled Lean proof, a fresh replay of the upstream proof corpus, or the full no-four-MUB theorem. The exact verifier's scope is the new algebra and finite bookkeeping, not those larger obligations.
