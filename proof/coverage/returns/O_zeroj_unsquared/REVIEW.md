# Review of return O (18 Oct 2026)

**Return:** `O_zeroj_unsquared_return_2026-10-18.zip` (SHA-256 `26fc34b6…9545`, in `../SOURCE_ZIPS.sha256`), from
handoff O (`explorations/handoffs/O_zeroj_without_square_sum/BRIEF.md`).

**Claims.** PROVED / CERTIFIED: zero-J critical strips satisfy K = (1 − z)(z + 3)³ via two *unsquared* weighted sums
over the nine mixed corners (T_x, T_{x|y}), with no square sum, no nonzero-J classification and no [CT]; then the
geometric step (rows (1; x; x̄)) from λ₀ = 1 and Σ x_j y_j = 3. Certificates: 43 KB (17 integer-DAG identities),
against 216 KB for the square sum.

**Checks.** All 28 files match `SHA256SUMS`; code scanned (no network, eval or pickle); `verify.py --self-test` passes
in 1.2 s. Independent: identity (12) evaluated on genuine unimodular critical zero-J halves built from the
λ-identities, at 50 digits (ratio 1 to 1e-49 at six points); (27a) at four points; the scalar steps, the Bézout
identity (28) = 746496 and the factorisation (29) exactly in sympy. Every cancellation is by a nonzero quantity; z = −3
and z = −2 remain the existing p = 0 and p = 5 branches.

**Lean.** The supplied `CoverageStripGeom.candidate.lean` keeps both statements and drops three unused lemmas, but
needs one `simp only [Fin...]` before `linarith` to compile. The new `ZeroJProduct` module, binding the 32 KB mixed
certificates to the signatures as in return K, is the remaining work. Note: the return's Ψ has the opposite sign to
Lean's `TS`.

**Status.** Accepted and integrated on 22 Oct 2026 (`INTEGRATED.md`).
