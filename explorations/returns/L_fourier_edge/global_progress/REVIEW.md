# Review of the global-F progress bundle (17 Oct 2026)

**Return:** `L_global_F_progress.zip` (SHA-256 `4069a04b…4ac4`, in `proof/coverage/returns/SOURCE_ZIPS.sha256`; the zip itself is kept with the owner, not in git), a follow-up to return L.
Kept as the original zip plus its README (`RETURN_README.md`).

## Claims
- **Component theorem (main result).** In the full dephased triple space V ⊂ T⁵⁵ (96 real equations), the equivalence
  orbit GM of Szöllősi's compact bicirculant companion surface M (genus 10) is open and closed, every triple in it has at
  least two Fourier edges (exactly two off the trace-zero fibre, three on it), and its image in V/G is a whole connected
  component — the one containing the exact Diţă triple. Ingredients: exact domain of the trace map (two opposite
  deltoids); Jacobian rank 53 for r ≠ 0 and 51 at r = 0 on the whole surface, via a cyclic-mode decomposition and an
  exact Laurent factorisation det(P†P) = 46656 s(9−s)²(9−5s)((9−s)³ + 16 (Im r³)²); at each of the 36 trace-zero
  centres, a complete local analysis (the quadratic obstruction ideal is (u, s) ∩ (v, t), both branches are realised by
  actual analytic surfaces, and an explicit factorisation controls all higher orders); exact witnesses that all 36
  centres are equivalent; H Fourier-type ⇔ r = 0.
- **Not established:** global F or F′. The complement V ∖ GM is not classified; a quartet would need all four faces
  there. Section 6 adds necessary conditions on quartets (a symmetry criterion forcing Fourier edges; a spectral gap
  λ_min(Q^Γ) < −1/120; a triangle-sum identity), none decisive. That section imports a single-Hadamard dichotomy from
  OpenAI's math repository (bundled, Apache-2.0, replayed); the component theorem does not use it.

## What we checked
- All 89 files match `SHA256SUMS`; code read before running (no network; `verify_all.py` runs its gates in a temporary
  copy; `replay_single_h.py` executes a prefix of the bundled third-party verifier).
- `python3 -S verify_all.py`: all nine exact gates pass (10 s).
- **Independent numerical check** (`../review/check_global_component.py`, our code): sampling the trace r in the domain
  and taking x, y, (xy)⁻¹ and u, v, (uv)⁻¹ as the unit roots of t³ ∓ r t² ± r̄ t − 1, the constructed {I, H, K} are MUB
  triples; H has no singular 3×3 minor while K and L each have 24 (two Fourier edges); the 96×55 Jacobian has rank
  exactly 53 at all 30 random points (singular-value gap ~0.2 against ~3·10⁻¹⁰), and rank 51 at r = 0, where H becomes
  Fourier type (24 singular minors; L has 48) — three Fourier edges, as claimed.
- Not checked by us: the written analytic arguments (implicit-function step, the local factorisation at the centres,
  the genus count, interlacing). These are the parts to review mathematically.

## Assessment
- **Substantial as mathematics**: a complete, rigorous description of one whole component of MUB-triple space — the
  continuous Zauner–Szöllősi family is a full component and cannot be deformed into a Fourier-free triple. It proves
  part of the triple-classification conjecture (the paper's Conjecture 1): the continuous construction is a whole
  component; what remains is that there are no other components besides it and the isolated Fourier triple.
- **Not a simplification of the no-four proof yet**: the atlas stays until F′ is proved on the complement.
- **For the paper:** relevant to Section III (triples): it upgrades "the known continuous construction" to "a full
  component of the triple space", consistent with the atlas-wide triple census (every triple found is of a known form).
