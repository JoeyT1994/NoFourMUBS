# Radius 0.05 verification, radius 0.25 non-result, and Lean progress

Reviewed on October 6, 2026 (EDT). These records preserve the distinction between
computer-assisted exclusion, Lean foundations, and the unfinished full theorem.

## Radius 0.05: fresh independent replay passed

The supplied radius-1/20 argument passed independent mathematical review. A fresh
replay verified all **38,421 global terminals** and **104 local inequalities**, with
zero unresolved terminals. All **2,354 original pilot boxes** and eight positive
examples passed whole-box membership checks against that verified ball.

The precise exclusion concerns physical order-six complex Hadamards with a
selected corner having positive R and maximal R among all 400 positional corners,
including ties. Its circular sup-distance from either stationary seed 2442 or 4224
must lie in **(0, 1/20] radians**. At the seed itself R is zero. This does not exclude
arbitrary nonmaximal corners or prove the global no-four-MUBs theorem.

We found and reproduced a defect in the original arithmetic environment check:
on ARM it could accept flush-to-zero mode. The original archive is preserved.
The freshly verified derivative changes **only the startup guard and its manifest**;
the interval operations, mathematical model, predicates and cover are unchanged.
The replacement checks raw result bits and rejects the bad arithmetic mode.
Read `radius050/REVIEW.md`, `MATHEMATICAL_REVIEW.md`, `PUBLIC_SUMMARY.json` and
`SOURCE_PINS.json` for exact scope, evidence digests and the independent controls.

Reconstruct the exact repaired package, then replay it with Python 3.11+ and a
C++17 compiler supporting its stated IEEE-754 model:

```sh
python3 verify_inventory.py
python3 radius050/prepare_replay.py /tmp/radius050-replay
python3 -B /tmp/radius050-replay/verify.py --workers 2 --output /tmp/radius050-fresh.json
```

The preparation destination must not exist. Set `CXX` to an available compiler if
needed. Our fresh replay used GCC 15.1.0 and took about 17 minutes with two workers.
Do not use Python `-O`, fast-math flags or altered arithmetic settings. Preparation
only checks source identity; the final command performs the mathematical replay.

The repaired package preserves historical result files unchanged; they are not
the new replay. The new receipt digest is
`bdfd436a00302dd965700fbc592289edb57c3a5497c241b6b4e1dff97fed02ec`.
This handoff publishes mathematical sources, results and evidence identifiers;
host-specific execution records remain local.

This establishes a reviewed computer-assisted result under the documented
arithmetic model. **Its complete Lean soundness and physical binding remain open.**
Applying it to additional campaign IDs requires exact whole-box membership and
provenance matching. No aggregate count here is an arbitrary closed ID set.

## Radius 0.25: no proof was supplied

Despite the filename ending in `verified.zip`, that archive contains only three
files. `OUTCOME.json` explicitly says `NOT_CERTIFIED`, with a missing diagnostic;
`PROOF.md` says the adaptive whole-box cover remains incomplete. Both manifest
hashes match. There is no verifier, cover or exclusion certificate. This neither
proves nor disproves the radius-1/4 statement. See `radius0250/REVIEW.json`.

## Lean: reusable checking foundations and actual input bounds

The new work contains **95 kernel-checked theorem declarations**, nine successful
module checks (including two reused dependencies), and an independent semantic
review. Sources, exact input data, successful receipts and axiom transcripts are
in `lean/`. Its interval arithmetic, rational Taylor phase evaluator, signed-mean
decision rules and whole-box phase enclosures are checked. The example is the
actual saved one-terminal certificate 66902, with both orientations retained.

Only the standard axioms `propext`, `Classical.choice` and `Quot.sound` occur.
There are no admitted proof holes. The inherited Mathlib source/cache authenticity
caveat remains: this work did not independently rebuild and authenticate the
entire library cache. See `lean/FORMALIZATION_RECORD.json` and
`lean/INDEPENDENT_REVIEW.md` for the pinned toolchain and precise statements.

**No physical box is newly excluded in Lean by this packet.** Remaining work is
to prove the native coefficient and remainder enclosures, bind those coefficients
and denominators to the physical matrix inequalities, supply the required coupled
orientation and exceptional-case cover, and instantiate the remaining leaves.
The stored interval endpoints are data until their semantic enclosures are proved.
The radius proof and the global no-four-MUBs proof are still unfinished in Lean.
