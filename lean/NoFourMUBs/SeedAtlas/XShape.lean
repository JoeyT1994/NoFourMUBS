import NoFourMUBs.Transfer

/-!
# The shape of return X used by the edge ball (`proof/seed_atlas/PROOF_STEPS_3_5_DRAFT.md`, Theorem 4.1)

Return X: no Hadamard matrix within horizontal phase distance `ρ` of `F6` is a quartet edge (`ρ = 9/20`).  The edge
ball (`SeedAtlas.EdgeX`) consumes it in the form `XExclusion ρ`: for every horizontal displacement `δ` of `F6`'s
phases with `‖δ‖_F ≤ ρ`, the Hadamard matrix `e^{i(Φ_F6 + δ)}` is not a quartet edge.  Here
`Φ_F6 a b = π (a b mod 6) / 3` (indices `0..5`: `inl 0, inl 1, inl 2, inr 0, inr 1, inr 2`), i.e.
`F6 a b = e^{iπab/3}`.  Since `d_ph([H], [F6]) ≤ ‖δ‖_F` whenever `H = e^{i(Φ_F6 + δ)}`, X's statement implies it.
-/

open Matrix Hadamard6

namespace NoFourMUBs.SeedAtlas

/-- Index `0..5` of `I6`. -/
def xidx : I6 → ℕ
  | Sum.inl a => a
  | Sum.inr a => 3 + a

/-- `F6`'s phases, `Φ_F6 a b = π (a b mod 6) / 3`. -/
noncomputable def F6phase : RMat6 := Matrix.of fun i j => Real.pi * (((xidx i * xidx j) % 6 : ℕ) : ℝ) / 3

/-- **Return X in the form the edge ball uses.** -/
def XExclusion (ρ : ℝ) : Prop :=
  ∀ δ : RMat6, IsHorizontal δ → frob δ ≤ ρ → Hadamard6.IsHadamard (phaseMat (F6phase + δ)) →
    ¬ QuartetEdge (phaseMat (F6phase + δ))

end NoFourMUBs.SeedAtlas
