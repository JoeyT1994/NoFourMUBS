# Shoulder brief, addendum 1 (1 October 2026)

The 1,000-survivor pilot of stages A-E has finished. Its coverage audit passes. Use
`shoulder_boxes_pilot_full.txt.gz` (80,613 boxes) in place of the partial list. It has the same format, plus a
class column.

- After stage E the pilot leaves 0.123% of survivor volume open: P 0.098%, S 0.025%.
- **All open boxes come from only 72 of the 20,540 level-11 leaves**, so the open set is very localized.
- Every box is level 13, with half-width pi/8192 + 2^-40 rad.

| Code | F6 class | Nearest seed (pi/3 units) | Boxes | Sup distance (rad), min / median / max |
|---|---|---|---:|---|
| P | active (1,2,2,4) | (1,5,5,1) | 43,169 | 0.058 / 0.129 / 0.251 (all P) |
| P | active (1,2,2,4) | (5,1,1,5) | 20,877 | (included above) |
| S | active (1,2,2,4) | (5,1,1,5) | 12,871 | 0.058 / 0.067 / 0.128 (all active S) |
| S | active (1,2,2,4) | (1,5,5,1) | 220 | (included above) |
| S | stationary (2,4,4,2) | (2,4,4,2) | 2,354 | 0.041 / 0.044 / 0.047 |
| S | old (4,5,0,3) | (4,5,0,3) | 1,122 | 0.033 / 0.038 / 0.045 |

**Corrected scale.** The full run is about 623 times the pilot, so expect about 5 x 10^7 level-13 boxes, not
10^7. A region-level certificate is therefore essential. Note that:

- S boxes are not shown to have inf R > 1. Their outward R interval may reach R <= 0, so a strict-D0 or
  physical-D0 argument must handle that part as well.
- The (2,4,4,2) and (4,5,0,3) neighbourhoods are small (about 0.03-0.05 rad). They may close with the
  existing regional-tube machinery. Please include them in S.
