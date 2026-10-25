import KernelAtlas.Edge.BoxRoots

/-! A finite check that the nonzero-label part of an edge box is dense. -/

open Set NoFourMUBs.SeedAtlas

noncomputable section

namespace NoFourMUBs.KernelAtlas.Edge

open Seed

def labelOK (B : EBallD) (D : EBoxD) : Bool :=
  decide (∃ j : Fin 4, 0 < gn D.hb j ∧ gi B.Mth (12 + j) ≠ 0)

def labelLinear (B : EBallD) : (Fin 4 → ℝ) →ₗ[ℝ] ℝ where
  toFun := yR B
  map_add' := by intro x y; simp [yR, mul_add, Finset.sum_add_distrib]
  map_smul' := by
    intro r x
    simp only [yR, Pi.smul_apply, smul_eq_mul, RingHom.id_apply, Finset.mul_sum]
    congr 1
    funext l
    ring

lemma label_affine (B : EBallD) (D : EBoxD) (u : Fin 4 → ℝ) :
    yR B (ewOf D u) = labelLinear B u + yR B (ewOf D 0) := by
  change yR B (ewOf D u) = yR B u + yR B (ewOf D 0)
  simp only [yR, ewOf, Pi.zero_apply, add_zero, mul_add, Finset.sum_add_distrib]
  ring

theorem labelOK_witness {B : EBallD} {D : EBoxD} (hok : labelOK B D = true) :
    ∃ u, InBox D.hb u ∧ yR B (ewOf D u) ≠ 0 := by
  obtain ⟨j, hj, hM⟩ : ∃ j : Fin 4, 0 < gn D.hb j ∧ gi B.Mth (12 + j) ≠ 0 := of_decide_eq_true hok
  have hr : 0 < rn (gn D.hb j) := div_pos (Nat.cast_pos.mpr hj) (two_pow_pos pp)
  have hMr : MR B 3 j ≠ 0 := by
    change rq (gi B.Mth (12 + j)) ≠ 0
    exact div_ne_zero (Int.cast_ne_zero.mpr hM) (ne_of_gt (two_pow_pos pp))
  by_cases hy : yR B (ewOf D 0) = 0
  · let u : Fin 4 → ℝ := Pi.single j (rn (gn D.hb j))
    refine ⟨u, ?_, ?_⟩
    · intro k
      by_cases hk : k = j
      · subst k
        change |u j| ≤ rn (gn D.hb j)
        simp only [u, Pi.single_eq_same, abs_of_nonneg hr.le, le_refl]
      · simpa [u, gn, Pi.single_apply, hk] using rn_nonneg (gn D.hb k)
    · rw [label_affine, hy, add_zero]
      change (∑ k, MR B 3 k * u k) ≠ 0
      simpa [u, Pi.single_apply, mul_ite] using mul_ne_zero hMr (ne_of_gt hr)
  · exact ⟨0, fun k => by simpa [gn] using rn_nonneg (gn D.hb k), hy⟩

/-- A passing label check proves density in the actual closed box subtype. -/
theorem labelOK_dense {B : EBallD} {D : EBoxD} (hok : labelOK B D = true) :
    Dense {u : BoxSpace D | yR B (ewOf D u.1) ≠ 0} := by
  have hw := labelOK_witness hok
  have hd := affine_regular_dense (convex_inBox D.hb) (labelLinear B) (yR B (ewOf D 0))
    (by simpa only [Set.mem_setOf_eq, ← label_affine] using hw)
  intro u
  rw [closure_subtype]
  have he : ((Subtype.val : BoxSpace D → (Fin 4 → ℝ)) ''
      {u : BoxSpace D | yR B (ewOf D u.1) ≠ 0}) =
      {v : Fin 4 → ℝ | InBox D.hb v ∧ labelLinear B v + yR B (ewOf D 0) ≠ 0} := by
    ext v
    simp only [Set.mem_image, Set.mem_setOf_eq, ← label_affine]
    constructor
    · rintro ⟨w, hw, rfl⟩; exact ⟨w.2, hw⟩
    · rintro ⟨hv, hy⟩; exact ⟨⟨v, hv⟩, hy, rfl⟩
  rw [he]
  exact hd u.2

end NoFourMUBs.KernelAtlas.Edge
