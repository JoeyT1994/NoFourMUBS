# Review: a uniform companion obstruction near the Diţă matrix (17 Oct 2026)

**Bundle:** `L_uniform_companion_obstruction.zip` (185 KB; SHA-256 `dc1968c6…730f`, in
`proof/coverage/returns/SOURCE_ZIPS.sha256`). Kept here without its precompiled Linux executable
(`cover/d0_tube_cover`, never run by us) and the 120-line box listing; the original zip is kept outside git, and its
`verify_all.py` should be run from the unpacked original (its `SHA256SUMS` lists those files).

**Claim.** For every order-6 Hadamard H with max |H_ij − D_ij| ≤ 10⁻⁴ (D the Diţă matrix), every basis completing
{I, H/√6} to a MUB triple admits no further common unbiased ray; quantitatively some squared overlap differs from 1/6
by more than 1/8, and any two completing bases have overlap energy Δ > 3/32. So no such H is a quartet edge. Method:
exact algebra of the common-ray scheme (rigid trace-zero boundary when all 400 minors are nonzero), exact gap and
graph checks, and a validated whole-torus tube cover (C++ with directed integer enclosures; 5,066,657 boxes, run by
the authors).

**What we checked.** All files match `SHA256SUMS`. `python3 verify_all.py` (default mode, which does not execute the
binary): all seven exact gates pass and the retained full search's record is consistent (4 s). Independently (return L
review), D has no singular 3×3 minor (minimum modulus 2), so the region is Fourier-free as claimed. Not done: a fresh
compile-and-run of the tube cover (`--full-cover`), and a review of the written soundness arguments.

**Assessment.** Correct-looking local theorem and a clean method (an algebraic alternative to Stage C on one small
region), but the region (10⁻⁴ entrywise) is far smaller than an atlas Record (radius 0.08), so it does not simplify the
proof. Filed as research.
