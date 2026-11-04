# Independent review of the repaired witness and certificate driver

## Scope and verdict

Compared the repaired `witness.py`, `moving.py`, and `run_cell.py` with the
supplied originals. This is an independent review of whether the changes
introduce an acceptance error or alter the represented cell/pattern scope.

**No new unsound acceptance path was found.** The mathematical sign repairs
are correct, the new endpoint handling is conservative, and the validation
changes either preserve the mathematical checks or reject additional malformed
inputs. The frozen native-cover assumptions remain outside this patch review.

## Mathematical changes

1. `M_comb` now adds the symmetric `Cj Lambda` coefficient. This agrees with
   `zeta=z+Lambda*u` and the independently differentiated residual. No change
   to `Ku`, the split linear bounds, or other numerical remainder bounds is
   needed for this sign repair.
2. `raw_s_j=-sin(phi)*du/3` now equals the actual cosine coefficient of the
   H derivative. The corresponding second-order Gram bounds and amplitudes
   were already insensitive to its previous global sign; the correction
   restores the exact ridge identity without changing their mathematical size.
3. Exposing `M_comb` in the returned expansion is diagnostic only and does not
   influence acceptance.

## Exact phase windings

The new `winding` chooses an integer by exact rational rounding of an Arb
midpoint. Its correctness does not depend on choosing the nearest integer.
For every original closed fine bin, subtracting any fixed integer multiple of
`2*pi` from each coordinate gives an equivalent lift of the entire bin. The
phase perturbation inside that bin and the mean-zero bin radius remain
unchanged. Thus replacing the old binary64 nearest-integer proposal is sound,
including midpoint ties and intervals containing a rounding boundary.

The same helper is used in both `colour_product` and the peel reach
construction. For a given bin and reference, they therefore use the same
deterministic lift; no inconsistent colour-domain change is introduced.

## Endpoint and cap handling

- `zeta_s_min` now takes the lower endpoint before taking its positive part.
  This is an explicit lower bound on the reverse-triangle expression. Squaring
  this nonnegative lower bound is safe in the outside-ball rejection.
- The strong cap now uses the maximum of outward upper endpoints of zero and
  `R^2-wl^2` before taking its square root. This fixes the possible loss of a
  small positive upper cap when an interval straddles zero.
- `fmax` and `fmin` continue to compare exact outward endpoints; rejection of
  empty or nonfinite candidate lists cannot create a false certificate.

## Stored reference and proposal data

The newly stored `q` is an arbitrary exact binary64 dyadic reference point,
just as the former reference derived from the cell midpoint was an arbitrary
dyadic point. The expansion still includes

\[
 \widetilde e_H=\|Q_0-q\|+\|X\|\tau.
\]

Thus accepting a stored `q` does not replace the cell by the reference point
or assume that the reference solves any equations. It may make the bounds
worse, but the represented H branch remains the input record's branch.
The serialized `q` roundtrip is exact because every `q` constructed by
`prepare` has exact binary64 entries.

Similarly, arbitrary finite `y`, `B`, `T`, and `Lambda` remain proposals:

- nonzero residual and linear defects are recomputed;
- `T.inv()` must succeed;
- `Lambda_w=0` is still checked exactly;
- the cell-wide radius and error terms are still used.

The new finite-array/shape validation does not substitute a numerical check
for any of these mathematical checks.

## Symmetry and replay validation

Native actions now require a legal anchor, balanced integer labels, and
permutations. The subsequent exact `group` checks still verify the two
3-cycle structures, identity anchor permutation, group/gauge identities,
and moving projector. No group check has been removed.

Stored windings must be 72 integers. This is essential because arbitrary
noninteger phase shifts would not preserve the physical phases. Stored
pseudoinverses are finite arrays of the correct dimensions, but remain
untrusted: the Arb inverse-defect and contraction inequalities are still
recomputed.

Replay no longer falls back to finding a missing native tube proposal.
The direct/peel plans are syntactically validated. Peel thresholds need not
be increasing: each threshold simply chooses a subset of bins, and the
core/first-outer partition remains exhaustive for any such subset. The exact
equality between replayed and stored leaf-name sets additionally prevents
ignored or unexplained stored leaves. Every visited leaf must still pass the
current localisation/native test or disappear through arc consistency.

## Driver scope and verdicts

The driver now checks the input record hash and every requested pattern.
The original silent filtering to patterns present in the certificate is
removed. Invalid column permutations are rejected before reordering the
colour domains. A claim that native fine bins exclude a pattern is accepted
only when the freshly rerun refinement actually excludes it.

Stored setup roots are merely reference proposals for the unchanged complete
native cover. That cover is rebuilt and must certify its domain coverage.
The current colour/bin assignment and current pattern enumeration are used
for every check. This does not import a completeness assumption from the
certificate's roots.

The driver's `passed` flag requires every requested pattern to be processed,
no OPEN verdict, and no discrepancy with the claimed per-pattern verdict.
`complete_cell` additionally requires that the requested pattern list is the
entire rebuilt list. Consequently an explicitly partial or empty request
does not masquerade as proof of a nonempty whole cell.

## Limited format/documentation observations

These do not produce incorrect mathematical acceptance:

1. **RESOLVED after this review.** The driver now requires all three fields
   `pattern_count`, `pattern_sha256`, and `setup_roots` whenever
   `format_version=2`. Root reports the added missing-field regression and
   all ten driver regressions passing. The former optional-field concern
   does not apply to the final driver.
2. Legacy certificates may still trigger native numerical root proposals and
   the legacy midpoint choice of `q`. The patched documentation correctly
   stops claiming that the entire replay has no floating-point decisions.
   The new witness acceptance tests remain exact/Arb, and the native layer
   retains its separately reviewed binary64 enclosures.
3. Legacy list-style direct plans are not supported by the stricter
   `validate_plan`, even though an unreachable compatibility branch remains
   in `pattern`. All attached certificates use dictionary plans; backward
   compatibility was checked for those supplied certificates. Rejecting a
   list-style proposal cannot validate an incorrect one.

No code edits were made during this independent patch review.
