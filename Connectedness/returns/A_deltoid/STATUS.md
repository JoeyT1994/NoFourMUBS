# Status of the coverage handoff return

Date: 2026-10-08.

## Main outcome

**Claim A is proved globally.** The positive local maxima of the stated
four-variable seed invariant are exactly the 18-point orbit of

\[
\theta_*=(\alpha,2\alpha,-\alpha,-2\alpha),\qquad
\alpha=\arccos(1/4).
\]

Their common value is exactly

\[
R_*=\frac{1594323}{4096}=\frac{3^{13}}{2^{12}}.
\]

The proof uses a global reduction to two deltoid boundaries, exact elimination
of the remaining stationary equations, and explicit increasing directions
at all spurious positive stationary candidates. It does not depend on a
four-dimensional branch-and-bound computation. All acceptance decisions are
exact polynomial calculations, Sturm root counts, or rational interval signs.

Claims B and C are proved relative to the reconstruction facts MC1–MC5
permitted by the prompt. There is a stronger consequence:

\[
(\mathcal H/\cong)\setminus\{[\mathrm{Tao}]\}
\quad\text{is connected.}
\]

Therefore **any nonempty finite Record union satisfying the complete
certified boundary condition covers every non-Tao Hadamard class**.
A separate maximum-centered Record and symmetry closure of the Record union
are not required in this strengthened formulation.

## What is proved, and what its proof uses

| Item | Status | Proof / exact replay |
|---|---|---|
| Compact permanent/determinant formula for R | Exact identity on the entire seed torus | DELTOID_REDUCTION.md; verify_deltoid_reduction.py |
| No positive maximum with either trace in the deltoid interior | Proved globally, including the other trace's folds and cusps | DELTOID_REDUCTION.md; verify_deltoid_reduction.py |
| Exhaustive classification on both deltoid boundaries | Proved, with every edge and degenerate stationary branch handled | TWO_BOUNDARY.md; verify_two_boundary.py |
| Exact seed, value, Hessian, 144 symmetries, 18-point orbit | Proved with rational and algebraic-number calculations | EXACT_MAXIMA.md; exact_maxima.py |
| Explicit neighborhoods with unique critical points | Radius 1/200 at the stated frame; mapped parallelepipeds; radius 1/800 at every orbit point | EXACT_MAXIMA.md; exact_maxima.py |
| Sharp upper bound R≤R* everywhere, equality only at the 18 points | Consequence of the global census and compactness | COVERAGE.md |
| At most 18 connected components of R>0 | Consequence of the component-maximum lemma and census | COVERAGE.md |
| Exact sheet parity of all seed maps | Proved relative to strict side-fiber uniqueness and sheet labels | SHEETS_TOPOLOGY.md; verify_sheet_branches.py |
| All positive-sheet maximum completions are equivalent to K* | Proved, stronger than the four-class alternative | SHEETS_TOPOLOGY.md; verify_sheet_branches.py |
| Positive quotient-sheet continuity on all R>0 | Proved, including artificial root cuts | SHEETS_TOPOLOGY.md; verify_sheet_branches.py |
| Open-and-closed Record criterion in the quotient | Proved sufficient, with finite certificate requirements stated | SHEETS_TOPOLOGY.md |
| Requested coverage assembly | Proved under the stated Record hypotheses | SHEETS_TOPOLOGY.md |
| Connectedness of the full non-Tao quotient | Proved relative to MC1–MC5 and the stated Tao isolation | CONNECTEDNESS.md; exact Fourier degeneration in verify_sheet_branches.py |
| Optional D on the entire affine Fourier family | Exact spectrum 0[4], 3[4], 9[12], 12[5] for JᵀJ | CONDITIONING.md; verify_conditioning.py |
| Optional D at Tao | Exact spectrum (9/2)[16], 12[9] | CONDITIONING.md; verify_conditioning.py |

Numbers in square brackets in the last two rows are multiplicities.

## What remains an input or an outstanding calculation

1. **MC1–MC5 are accepted relative hypotheses.** This return does not
   re-prove the published classification or replace the reconstruction
   theorems supplied as permitted inputs. Claim A itself does not use them.
2. **No actual finite Record family is supplied in this handoff.** The
   boundary-containment criterion is a theorem specifying what that family
   must certify; this return does not claim to have run those absent
   certificates.
3. Each Record still needs a local quartet-exclusion certificate covering
   every actual Hadamard in its region. Every boundary enclosure must be
   complete; both tangent and normal boundary faces must be covered or
   certified empty.
4. The separate Tao quartet exclusion remains the stipulated external input.
5. **The universal assertion in optional Task D is not proved.** The exact
   affine Fourier and Tao results do not imply rank 21 or the same lower
   singular-value bound at every other Hadamard. No counterexample to the
   universal claim is asserted.

Thus the coverage argument requested in Tasks A–C is completed. A finished
no-four-MUBs proof still requires the actual finite atlas, its boundary and
local-exclusion certificates, and the stated exceptional-class exclusion.

## Corrections and delicate cases

- The draft's general claim that a sheet swap is automatically harmless by
  MC5 is circular. The exact sheet-parity table, together with two explicit
  symmetries of the maximum seed, repairs it.
- The reversed raw auxiliary-square-root formula can be undefined at s=0.
  The prescribed formula remains regular; genuine sign-switch points have
  positive denominators and are related by complementary permutations.
  The continuity proof handles these cases separately.
- The double-boundary reduction has an additional positive stationary value
  25(25−11√5)/2. It really is a local maximum on that two-dimensional
  surface. Its exact transverse curvature 330(23√5−51)>0 excludes it from
  being a maximum of the original four-variable invariant.
- A projected normal fixed point need not solve all Hadamard equations.
  The finite Record criterion requires enclosure of every full solution
  on the boundary; it does not assume that every tangent parameter has a
  Hadamard completion.

## Numerical evidence: reproduced, not used for acceptance

The two exploratory commands requested by PROMPT.md were run first:

~~~sh
python3 toolkit/selftest.py
python3 toolkit/maxima.py
~~~

The self-test printed SELFTEST PASS. With the supplied default 3,000 starts,
933 ascents began at positive seeds; all returned the same maximum value
to the printed precision, and the code found 18 distinct points in one
144-map orbit. The printed maximum was 389.2390136718759; the approximate
Hessian eigenvalues were −5770.29, −1154.06, −284.53, −56.91.
The sorted completion-signature spread was 1.85×10⁻⁵.

None of those floating-point observations is an input to a proof acceptance
decision. The exact scripts independently regenerate the defining polynomial,
prove the global census, and verify the value, orbit and Hessian.

## Replay

Run the complete exact acceptance suite from this directory:

~~~sh
python3 verify_all.py
~~~

It exits nonzero on failure. The pinned dependency is in requirements.txt;
the run was performed with Python 3.12.14 and SymPy 1.14.0.
VERIFICATION.log records the executed acceptance output.
INPUT_SHA256.json records the supplied source-file hashes.
