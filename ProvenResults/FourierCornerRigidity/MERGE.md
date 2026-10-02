# Suggested integration

Keep the original numerical campaign unchanged until the mathematical
module and predicates have been reviewed.

1. Place this folder under a new proven-result module, for example
   `ProvenResults/FourierCornerRigidity/`. Its verifier is standalone and
   can be added to the root verification registry according to the existing
   registry convention. No change to existing reconstruction inputs is needed.
2. In the branch layer, use `maximal_corner_prune` only for the physical
   maximal-corner problem. It proves emptiness of strict D0 on the entire
   accepted box, not absence of an arbitrary Hadamard completion. Convert
   phase intervals outwardly into **turns** before supplying exact endpoints;
   do not pass radians or binary floating-point approximations as exact data.
3. `quartet_exclusion_prune` accepts a larger box radius and proves the
   desired quartet-extension exclusion directly. Its returned dependency on
   the retained F6 matrix tube must be preserved in the certificate ledger.
4. The four-inactive-class theorem is usable when the full carrier has an
   established dephased F6 phase chart. It is not a replacement for establishing
   that chart from an arbitrary seed. In a quartet-only argument, such a close
   carrier is already inside the retained F6 exclusion tube; this theorem's
   additional value is the stronger D0 structure and quantitative corner gap.

## Changed versus unchanged

The package is additive. No source file, manifest, leaf database, or running
cluster job in the supplied repository has been modified. No full layer pass
has been performed. The radius improvement is analytical, not a measured
throughput or cell-savings claim.

The strict-D0 theorem enlarges the retained rank-one-pair analytic radius
from 2^-43 to 2^-14 and removes restrictions on the other two seeds. The
larger quartet-free theorem reaches 1/2560 radians using the existing F6
radius-1/30 certificate. The exact predicates use slightly conservative
rational-turn radii 2^-17 and 2^-14, respectively.

## Remaining global step

The local coercivity result rules out zero-M and quantitatively controls
small-M inside a known chart. It does not prove that every globally small-M
Hadamard enters such a chart, nor resolve other reconstruction or matching
assumptions. The two active limiting corner classes are not excluded by
local maximality; the known Fourier curve through `(4,5,0,3)` remains.

Keep the archived `T1`/`T2` distinction: a seed-domain exclusion and a
matrix-neighborhood exclusion are different certificates. The two predicate
functions make this distinction explicit.
