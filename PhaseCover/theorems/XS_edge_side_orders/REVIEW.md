# Review of return XS (26 Oct 2026)

**Replayed on rusty** (`python -I`, under a minute):
- `verify_transfer_theorem.py`: the exact constants, the 72-of-14,400 corner census and ρ* = 0.1514489;
- `verify_coarse.py`: all 4,528 supplied T3 boxes below distance 0.128601, and the stored edge ellipsoid inside W's radius 1/5;
- `verify_side_bound.py`: the chart's sides within 0.2462 of φ⁰ for t ≤ 0.20 (margin 0.2774 to π/6).

All pass.

**Accepted result (relative to W and U).** If K is Hadamard, its corner parameter p′(K) lies in a target inside E_{1/5},
and d_ph([K], [F6]) ≤ 3/20, then K ≅ H(p′(K)). No side orders, side windings, orientation signs or target-side
tubes are needed, and the fold y = 0 is included. The three corner phases pin the Fourier frame (§3.2), and W's framed
continuation recovers the whole completion (§3.1).

**Use.** T3 becomes:
- a distance bound per source region (an affine vertex bound plus n, below 3/20);
- p′ ∈ int E_e per box.

It removes `hcols`, `vrows`, `wind_h`, `wind_v` and the two 7-unknown Krawczyk tubes per T3 box from the format, both
certifiers and Lean. That is the machinery behind last night's T3 failures. Our X-ball (t = 0.13) is inside its range
(t ≤ 0.20).

**To do, after the current certificate's verdicts:**
- format v3 for T3;
- `edgecert.check_T3` and the Julia T3 check rewritten as the distance and membership gates;
- the Lean lemma (EdgeX's T3 through XS1, replacing (G));
- recertify.

**Not used:** t = 0.30, which is not established.
