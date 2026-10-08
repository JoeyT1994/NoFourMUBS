import RadianSeedBounds

set_option autoImplicit false
namespace ShoulderPhaseCube20261003
open Mub6.Numerical.IntervalKernel
noncomputable section

def Cube (c r : Fin 4 → ℚ) (θ : Fin 4 → ℝ) : Prop :=
  ∀ k, |θ k-(c k:ℝ)|≤(r k:ℝ)

def halfCenter (c r : Fin 4 → ℚ) (k : Fin 4) (b : Bool) : ℚ :=
  c k + if b then r k/2 else -(r k/2)

def HalfCube (c r : Fin 4 → ℚ) (b : Fin 4 → Bool) (θ : Fin 4 → ℝ) : Prop :=
  ∀ k, |θ k-(halfCenter c r k (b k):ℝ)|≤((r k/2:ℚ):ℝ)

/-- All midpoint faces are retained in the two closed halves. -/
theorem half_cubes_cover {c r : Fin 4 → ℚ} {θ : Fin 4 → ℝ}
    (h : Cube c r θ) : ∃ b, HalfCube c r b θ := by
  classical
  refine ⟨fun k => decide ((c k:ℝ)≤θ k),?_⟩
  intro k
  have hk := abs_le.mp (h k)
  by_cases hx : (c k:ℝ)≤θ k
  · simp only [halfCenter,decide_eq_true hx,↓reduceIte,
      Rat.cast_add,Rat.cast_div,Rat.cast_ofNat]
    apply abs_le.mpr
    constructor <;> linarith
  · simp only [halfCenter,decide_eq_false hx,Bool.false_eq_true,↓reduceIte,
      Rat.cast_add,Rat.cast_neg,Rat.cast_div,Rat.cast_ofNat]
    have hn : θ k<(c k:ℝ) := lt_of_not_ge hx
    apply abs_le.mpr
    constructor <;> linarith

theorem cube_nonempty (c r : Fin 4 → ℚ) (hr : ∀ k, 0≤r k) :
    ∃ θ, Cube c r θ := by
  refine ⟨fun k => (c k:ℝ),?_⟩
  intro k
  have hk : (0:ℝ)≤(r k:ℝ) := by exact_mod_cast hr k
  simpa using hk

/-- Reuse any coordinatewise enclosure from a previously checked full cube. -/
theorem cube_update (c r : Fin 4 → ℚ) (hr : ∀ k, 0≤r k)
    (i : Fin 4) {x : ℝ} (hx : |x-(c i:ℝ)|≤(r i:ℝ)) :
    Cube c r (Function.update (fun k => (c k:ℝ)) i x) := by
  intro k
  by_cases hk : k=i
  · subst k
    simpa using hx
  · have hpos : (0:ℝ)≤(r k:ℝ) := by exact_mod_cast hr k
    simpa [Function.update,hk] using hpos

#print axioms half_cubes_cover
#print axioms cube_nonempty
#print axioms cube_update
end
end ShoulderPhaseCube20261003
