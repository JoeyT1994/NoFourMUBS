import NoFourMUBS.SeedAtlas.Method.Krawczyk

/-!
# Openness from a slope enclosure (the edge ball's (D), `KERNEL_EDGE.md` §2)

If `f : ℝᵐ → ℝᵐ` satisfies, on the sup-norm ball `B̄(w₀, ρ)`, the Krawczyk slope condition
`|((w − w′) − Y (f w − f w′))ᵢ| ≤ qᵢ ‖w − w′‖` with `qᵢ < 1` and `Y` invertible, then `f(B̄(w₀, ρ))` is a
neighbourhood of `f w₀`: for every `η` with `|(Y (f w₀ − η))ᵢ| < (1 − qᵢ) ρ / 2` the Krawczyk test (`krawczyk_mv`)
on `F = f − η` gives a zero in the ball. No derivative of `f` is needed, only the slope bound.
-/

open Metric Set Filter Topology

noncomputable section

namespace NoFourMUBs.SeedAtlas.Method

variable {m : ℕ}

theorem image_closedBall_mem_nhds_of_slope (f : (Fin m → ℝ) → (Fin m → ℝ)) (w₀ : Fin m → ℝ) {ρ : ℝ} (hρ : 0 < ρ)
    (Y : Matrix (Fin m) (Fin m) ℝ) (hY : IsUnit Y.det) (q : Fin m → ℝ) (hq0 : ∀ i, 0 ≤ q i) (hq1 : ∀ i, q i < 1)
    (hmv : ∀ w ∈ closedBall w₀ ρ, ∀ w' ∈ closedBall w₀ ρ, ∀ i,
      |((w - w') - Y.mulVec (f w - f w')) i| ≤ q i * ‖w - w'‖) :
    f '' closedBall w₀ ρ ∈ 𝓝 (f w₀) := by
  set Uη : Set (Fin m → ℝ) := {η | ∀ i, |(Y.mulVec (f w₀ - η)) i| < (1 - q i) * ρ / 2} with hU
  have hopen : IsOpen Uη := by
    rw [hU, setOf_forall]
    refine isOpen_iInter_of_finite fun i => ?_
    have hl : Continuous fun v : Fin m → ℝ => Y.mulVec v :=
      continuous_pi fun i => by simp only [Matrix.mulVec, dotProduct]; exact continuous_finset_sum _ fun j _ => continuous_const.mul (continuous_apply j)
    have hc : Continuous fun η : Fin m → ℝ => |(Y.mulVec (f w₀ - η)) i| :=
      ((continuous_apply i).comp (hl.comp (continuous_const.sub continuous_id))).abs
    exact isOpen_lt hc continuous_const
  have hmem : f w₀ ∈ Uη := by
    intro i
    rw [sub_self, Matrix.mulVec_zero, Pi.zero_apply, abs_zero]
    have := hq1 i; positivity
  refine Filter.mem_of_superset (hopen.mem_nhds hmem) ?_
  intro η hη
  have hb : ∀ i, |(Y.mulVec ((fun w => f w - η) w₀)) i| ≤ (1 - q i) * ρ / 2 := fun i => (hη i).le
  have hmv' : ∀ φ ∈ closedBall w₀ ρ, ∀ ψ ∈ closedBall w₀ ρ, ∀ i,
      |((φ - ψ) - Y.mulVec ((fun w => f w - η) φ - (fun w => f w - η) ψ)) i| ≤ q i * ‖φ - ψ‖ := by
    intro φ hφ ψ hψ i
    have e : (fun w => f w - η) φ - (fun w => f w - η) ψ = f φ - f ψ := by simp only; abel
    rw [e]; exact hmv φ hφ ψ hψ i
  have hc : ∀ i, (1 - q i) * ρ / 2 + q i * ρ < ρ := fun i => by
    have := hq1 i; nlinarith
  obtain ⟨⟨φ, hφ, hF, -⟩, -⟩ := krawczyk_mv (fun w => f w - η) w₀ ρ Y hY (fun i => (1 - q i) * ρ / 2) q hb hq0
    hmv' hc hρ.le
  exact ⟨φ, hφ, sub_eq_zero.1 hF⟩

end NoFourMUBs.SeedAtlas.Method
