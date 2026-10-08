# Agent B, round 3: close the (2,4,4,2) patch (2 October 2026)

Thank you for `ExactPSDRegionCertificates_v2_PARTIAL`. We have read it and run its verifier: 14 of 14 controls
pass, and the hashes match. We have **not** installed it as a certificate, which matches your own scoping. Two
things from it matter to us:
- the denominator-cleared test (3.2);
- the nonapproach argument from S1 and S2.

As you note, neither covers the ring where the open boxes are: 0.041 to 0.047 rad from the seed.

**Where the proof stands.** Every other piece is closed or running unattended this weekend:
- the work cells;
- all 90 production cubes;
- the shoulder (v2 and its frontier extension);
- the (4,5,0,3) side cover.

The (2,4,4,2) patch is now the **only** obligation without a route. In the pilot it is 497 level-13 parent
boxes. Stage F, a production cover with the frozen code, plus stage G (SignedCornerPSDPrune) reduce these to
4,174 level-14 leaves. Every one of those leaves failed both the production cover and the bounded PSD profile.
The full run will hold roughly 100 times as many boxes in the same ring. Their exact list will exist on Sunday
4 October.

## What we need: a verifier that accepts whole boxes from a list

1. A command of the form `python verify.py --boxes LIST.jsonl.gz --output RESULTS.jsonl.gz [--jobs N]`.
2. Input is the format of the two files in this zip: one box per line, with exact rational strings for `centers`
   and `radii` (radians, guarded half-width already included).
3. Output is one record per input line, `{"id": ..., "ok": true|false, "reason": ..., "statement": ...}`.
   - `ok: true` only when the **whole closed box** is accepted by exact or outward-rounded arithmetic.
   - An exception or budget exit is `ok: false`.
4. The statement for an accepted box must be one of:
   - (a) no physical completion has this leading corner in strict D0, meaning the corner is maximal among all 400
     positional corners and R > 0;
   - (b) H+ is not a quartet edge on the box.

   State which, and on which hypotheses it rests: A1–A4/MC1–MC5, S1, S2, or the SignedCornerPSDPrune identities.
5. Give a per-box CPU cap and report CPU per box. We will run it on rusty, Rocky 9 with Python 3.11 and
   python-flint 0.9.0, on about 10^5 to 10^6 boxes, so the cost per box must be bounded.
6. Include a controls test showing that it **rejects** boxes known to hold physical strict-D0 points, if you can
   build one, and boxes that touch R = 0.

## Suggested routes, in our order of preference

**A. Test (3.2) as a region certificate on the 4,174 leaves.**
- Use coefficient enclosures that keep dependencies: Taylor models, or the exact Laurent forms with common factors
  cancelled. Subdivide adaptively down to a fixed depth.
- Report coverage and CPU on all 4,174 leaves and all 497 parents, not on a sample.
- If most leaves fail, tell us what blocks them:
  - D crossing 0?
  - C close to 0?
  - is the ring a genuine near-equality region?

**B. Make the nonapproach argument quantitative.**
- An explicit **seed-coordinate** radius r* would close every box lying entirely within r* of the seed: no
  strict-D0 seed lies there. Its proof must not convert a matrix or projector radius into a seed radius.
- A radius r* > 0.0475 + 2·(π/8192) would clear the ring. Any explicit r* still lets us drop the inner part of the
  full-run patch.
- Please name the exact repository files and theorem numbers behind S1 and S2. We will replay them.

**C. The stage-F failures.** In the pilot, the production cover fails in the ring because it reaches a singular
point of D0 (an H+ branch point).
- If the boxes near that branch point contain no physical strict-D0 point, a local argument there could close them.
- If they do contain physical points, the patch needs statement (b) rather than (a), and the method must handle
  the branch point.

## Rules (unchanged)
- Acceptance is exact or outward-interval only. No sampling, and no extrapolation from a sample to a list.
- Keep matrix radii and seed radii distinct throughout.
- Put everything under a new `ProvenResults/<Name>/` directory, with `MANIFEST.sha256` and `verify.py`. Write
  nothing elsewhere.
- Partial results are welcome if each accepted box is genuinely certified and the receipt states the scope.

## Files in this zip

| File | Contents |
|---|---|
| `parents_497.jsonl.gz` | The 497 open level-13 parents. `id` is the pilot inventory index, and `seed_distance_rad` is the centre's sup-distance to the seed. |
| `leaves_4174.jsonl.gz` | The 4,174 open level-14 leaves after F/G. `F_cell` is the stage-F cell they came from. |
| `patch2442_README.md` | The README of the earlier patch data. You already have that zip. |

In both files, radii are rational outward bounds: pi/2^level + 2^-40, at most 2^-80 above the exact value.
Centres are the exact binary64 dyadics. The same boxes, with their history, are in the earlier
`NoFourMUBS_patch2442_2026-10-02.zip`.
