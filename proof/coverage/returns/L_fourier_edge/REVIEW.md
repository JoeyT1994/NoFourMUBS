# Review of return L (17 Oct 2026)

**Input:** handoff package `L_fourier_edge_368fbe04.zip`, from `proof/coverage/handoffs/L_fourier_edge/BRIEF.md`.
**Return:** `L_fourier_edge_return.zip`, kept here unchanged (SHA-256 `4a76d64a…d5fc`, also in `../SOURCE_ZIPS.sha256`).
It unpacks to 306 files / 85 MB, but 51 of them are byte-identical copies of one 1.6 MB orthogonality table, so only
~8 MB is distinct; to keep the checkout small we store the zip and readable copies of `REPORT.md` and its README
(`RETURN_README.md`). To replay: unzip into an empty folder and run `python3 -S verify.py` there.

## What the return claims (its own labels)
- **Global F and F′: NOT ESTABLISHED.** The four-dimensional atlas cannot be retired on the basis of this return.
- **PROVED + CERTIFIED, local F:** every exact MUB triple whose 55 dephased phases lie within 1/40000 rad of the supplied
  Diţă triple has exactly two Fourier-type transitions (K and H*K/√6). Proof by a two-parameter bicirculant family, a
  quantitative existence argument and a 55×55 exact (dyadic) inverse certificate for uniqueness.
- **PROVED + CERTIFIED:** a Fourier predicate matching the brief's definition; a complete minor/block census on N(z, w)
  including all twelve exceptional parameter points; reduction of the Fourier torus to a closed triangle.
- **CERTIFIED, Fourier-family exclusion E:** no quartet has an edge in N ∪ Nᵀ — a re-run of Jaming, Matolcsi, Móra,
  Szöllősi and Weiner (2009, Thm 1.4) with repaired code, validated binary64 arithmetic with exact-certified trig tables,
  297 closed parameter rectangles covering 270 parent cells.
- **A finding about the literature (claimed, not yet confirmed by us):** the published supplementary `fab_ubv.cpp` of
  Jaming et al. accumulates an imaginary contribution into the real accumulator inside `ubv_with_matrix`; with only
  that typo fixed, an approximate survivor remains in cell (A, B) = (10, 0), which the return removes with additional
  sound filters (a same-box test against both bases, and a reverse test). If confirmed, the published computer proof of
  that theorem was not sound as distributed, although the theorem itself is re-certified here.

## What we checked
- **Integrity:** all 305 files listed in `SHA256SUMS` match.
- **Code:** read before running. The short verification runs only the return's own checker scripts; network access
  occurs only in `fetch_original_sources.py`, which is used only by the optional `--full-fourier` replay.
- **Short replay** (`python3 -S verify.py`, ~34 s): integrity; exact algebra and domain checks; the Diţă Jacobian minor
  certificate (mod 241); the exact augmented-inverse certificate; regenerated exact trig tables matching the delivered
  ones; subdivision and quarter-grid table checks; saved-run evidence with full recorded parameter coverage and exact
  counter bounds — all PASS. **The large C++ search was not rerun** (it needs the original sources downloaded from the
  authors' site and a long run).
- **Independent check** (`review/check_L_return.py`): from the exact entries, H (Diţă), K and L = H*K/√6 are all
  Hadamard; H has no singular 3×3 minor (min |minor| = 2) while K and L each have 24 exactly singular minors — the
  triple has two Fourier-type edges, consistent with F.

## Status and consequences
- **Accepted as evidence for F, not as a replacement for the atlas.** The local theorem is a verified patch; F′ (and
  hence deleting the atlas) remains open, as the return itself states. Its §7 records the precise missing step
  (all regular components reached by proved patches, plus control of singular strata).
- **E is not needed by the current proof** (the atlas already excludes every quartet edge, the Fourier family included);
  it becomes the second half of the atlas-free route only if F′ is proved.
- **For the paper:** the draft cites Jaming et al. 2009 among earlier rigorous exclusions. If the code finding is
  confirmed, that citation should say the result was re-certified (here) with corrected code. Confirming needs the
  published `fab_ubv.cpp`; not done yet.
- Full `--full-fourier` replay: optional; not done.
