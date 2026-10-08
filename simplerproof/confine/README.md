# Step 3 of the short proof: global confinement

**Target.** For every order-6 complex Hadamard matrix H,

  M(H) < 26 ⟹ ν(H) ≤ 0.55,

where:
- M(H) is the largest corner invariant R over the 400 corners;
- ν(H) is the smallest ‖u‖_F over horizontal u with H ≅ F6 ∘ e^{iu}.

**What this step needs.** Combined with the certified local lemma ([`../widetube`](../widetube/PROOF.md)), this is the only missing step of the short proof.

**Reformulation.** The local lemma puts the annulus 0.451 < ν ≤ 0.55 inside {M ≥ 26.28}. So confinement is equivalent to:

> M has no local minimum on the Hadamard set with M < 26 and ν > 0.55.

The argument goes through components of {M < 26}; it is written out in the handoff prompt.

## Numerical picture (8 Oct 2026; float, not rigorous)

**Local minima of M** (`minima.py`). This is a tangent-space min-max descent with an LP direction and Gauss–Newton retraction, run from 2,000 random Hadamard matrices.

| Final M | Starts | What it is |
|---|---:|---|
| 0 | 1,008 | F6 orbit |
| 205.42 | 459 | ν = 1.385, 24 active corners |
| 243.0 | 346 | Tao S6 |
| 250.7, 256.0, 260.6 | 99, 82, 6 | Other critical points |

No local minimum other than F6 lies below M = 205. The threshold is 26, so the margin is about 8×.

**The chart region** (`survey_omega.py`, 9·10⁶ uniform seeds θ ∈ T⁴).
- Ω = {0 < R(θ) < 26} occupies 9.4% of T⁴.
- Seeds whose corner is maximal in H±(θ) occupy only about 4·10⁻⁷ of T⁴.
- All of those have R between 19.8 and 24.2 and ν ≤ 0.26: they are shoulder seeds of the (1,2,2,4) class near F6.

So a cover must do two things: show that almost all of Ω is not maximal, and place the small remainder in the ν ≤ 0.55 ball, which has a wide margin.

**Degenerate points** (the 95 dephased F6 corner seeds θ*).

| g(θ*) | Classes | Behaviour of H₊ nearby |
|---|---|---|
| 3 | (1,2,2,4) and images | Continuous. R grows linearly in \|θ − θ*\|, ν ≈ c·√R, always maximal; ν ≤ 0.26 while R < 26 |
| 12 | Most classes | Depends on the direction of approach (M from 0 to 243 at the same distance); never maximal |
| 27 | (2,4,4,2) | M ≥ 69; never maximal |
| 0 | F3-block seeds | Barely any R > 0 nearby; any completion found has M ≈ 150 |

## Certified classifier

- **`confine.jl`** (first pilot) classifies each cell by its exits:
  - F_out, Rneg_out, Rhigh_out, BC_out;
  - D0_out: a corner of H₊ beats E;
  - Ball: the column-projector distance of H₊ to one explicit F6 member is ≤ RT.

  With RT = 0.0914, a Ball exit gives ν ≤ 0.55 by the gauge lemma. The open leaves of this pilot sit near R = 0, where the corner margin is huge (R(E) ≈ 2.5 against another corner at ≈ 297). The Taylor model of H₊ fails there only because it computes √R.
- **`confine2.jl`** keeps those tests and adds an s = √R split. The interval [√inf R, √sup R] is fed into the H₊ model as an interval constant and split into pieces. This loses the correlation between s and θ, but it removes the 1/√R blow-up.
- **`chart_np.py`** is a numpy port of the chart, used for exploration.
