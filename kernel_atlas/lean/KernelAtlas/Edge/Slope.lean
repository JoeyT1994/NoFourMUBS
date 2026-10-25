import KernelAtlas.Edge.RootDerivative
import NoFourMUBs.SeedAtlas.Method.SlopeOpen

/-! A finite row-sum check converts differential models into the slope bound used for openness. -/

open Complex Matrix Metric Set Filter Topology NoFourMUBs.SeedAtlas

noncomputable section

namespace NoFourMUBs.KernelAtlas.Edge

open Seed

/-- Model of entry `(i,j)` of `I - Y J`. -/
def slopeEntry (h : List ℕ) (Y : List ℤ) (J : List CT) (i j : ℕ) : CT :=
  sub (const (if i = j then oneZ else (0, 0)))
    (sumT (l4 fun k => smul h (rz (gi Y (4 * i + k))) (gT J (4 * k + j))))

/-- A common row contraction bound in grid units. -/
def slopeOK (h : List ℕ) (Y : List ℤ) (J : List CT) (q : ℕ) : Bool :=
  decide (q < 2 ^ pp) &&
    (l4 fun i => decide ((l4 fun j => bnd h (slopeEntry h Y J i j)).sum ≤ q)).all id

def slopeMatrix (Y : List ℤ) : Matrix (Fin 4) (Fin 4) ℝ := fun i j => rq (gi Y (4 * i + j))

theorem has_slopeEntry {h : List ℕ} {u : Fin 4 → ℝ} (hu : InBox h u)
    {Y : List ℤ} {J : List CT} {A : Matrix (Fin 4) (Fin 4) ℝ}
    (hJ : ∀ (i j : Fin 4), (gT J (4 * i + j)).Has u (A i j : ℂ)) (i j : Fin 4) :
    (slopeEntry h Y J i j).Has u ((1 - slopeMatrix Y * A) i j : ℂ) := by
  have hs : (sumT (l4 fun k => smul h (rz (gi Y (4 * i + k))) (gT J (4 * k + j)))).Has u
      (∑ k : Fin 4, (slopeMatrix Y i k : ℂ) * A k j) := by
    have h (k : Fin 4) := has_smul hu (rz (gi Y (4 * i + k))) (hJ k j)
    simp only [cz_rz] at h
    have H := has_sumT_cons (h 0) (has_sumT_cons (h 1)
      (has_sumT_cons (h 2) (has_sumT_cons (h 3) (has_sumT_nil u))))
    simpa [l4, Fin.sum_univ_four, slopeMatrix, add_assoc] using H
  have hd : (const (if (i : ℕ) = j then oneZ else (0, 0))).Has u ((1 : Matrix (Fin 4) (Fin 4) ℝ) i j : ℂ) := by
    by_cases hij : i = j
    · subst j; simpa [cz_one] using has_const oneZ u
    · have hij' : (i : ℕ) ≠ j := fun he => hij (Fin.ext he)
      simpa [hij, hij', cz] using has_const (0, 0) u
  have H := has_sub hd hs
  simpa only [slopeEntry, Matrix.sub_apply, Matrix.mul_apply, Complex.ofReal_sub,
    Complex.ofReal_sum, Complex.ofReal_mul] using H

/-- The exact integer check bounds every row of the semantic preconditioned differential. -/
theorem slopeOK_rows {h : List ℕ} {u : Fin 4 → ℝ} (hu : InBox h u)
    {Y : List ℤ} {J : List CT} {q : ℕ} (hok : slopeOK h Y J q = true)
    {A : Matrix (Fin 4) (Fin 4) ℝ} (hJ : ∀ (i j : Fin 4), (gT J (4 * i + j)).Has u (A i j : ℂ)) :
    rn q < 1 ∧ ∀ i, ∑ j, |(1 - slopeMatrix Y * A) i j| ≤ rn q := by
  simp only [slopeOK, Bool.and_eq_true, decide_eq_true_eq] at hok
  refine ⟨?_, fun i => ?_⟩
  · unfold rn
    apply (div_lt_one (two_pow_pos pp)).mpr
    exact_mod_cast hok.1
  · have hi := of_decide_eq_true (all_l4 hok.2 i.2)
    calc ∑ j, |(1 - slopeMatrix Y * A) i j|
        ≤ ∑ j : Fin 4, rn (bnd h (slopeEntry h Y J i j)) := by
          apply Finset.sum_le_sum
          intro j _
          have H := norm_le_bnd hu (has_slopeEntry (Y := Y) hu hJ i j)
          simpa only [Complex.norm_real, Real.norm_eq_abs] using H
      _ = rn ((l4 fun j => bnd h (slopeEntry h Y J i j)).sum) := by
          rw [l4_sum]
          simp only [Fin.sum_univ_four, rn_add]
      _ ≤ rn q := rn_mono hi

/-- Differential model enclosures on a convex box give the required two-point slope inequality. -/
theorem slopeOK_slope {h : List ℕ} {Y : List ℤ} {J : List CT} {q : ℕ}
    (hok : slopeOK h Y J q = true)
    (f : (Fin 4 → ℝ) → (Fin 4 → ℝ)) (A : (Fin 4 → ℝ) → Matrix (Fin 4) (Fin 4) ℝ)
    (hd : ∀ u, InBox h u → ∀ v, HasDerivAt (fun t : ℝ => f (u + t • v)) ((A u).mulVec v) 0)
    (hm : ∀ u, InBox h u → ∀ (i j : Fin 4), (gT J (4 * i + j)).Has u (A u i j : ℂ))
    {u u' : Fin 4 → ℝ} (hu : InBox h u) (hu' : InBox h u') :
    ∀ i, |((u-u') - (slopeMatrix Y).mulVec (f u - f u')) i| ≤ rn q * ‖u-u'‖ :=
  Method.mv_coord f A (slopeMatrix Y) {u | InBox h u} (convex_inBox h) hd
    (fun u hu => (slopeOK_rows hu hok (hm u hu)).2) hu hu'

/-- A passing differential check proves openness on every small sup-norm ball inside its box. -/
theorem slopeOK_open {h : List ℕ} {Y : List ℤ} {J : List CT} {q : ℕ}
    (hok : slopeOK h Y J q = true)
    (f : (Fin 4 → ℝ) → (Fin 4 → ℝ)) (A : (Fin 4 → ℝ) → Matrix (Fin 4) (Fin 4) ℝ)
    (hd : ∀ u, InBox h u → ∀ v, HasDerivAt (fun t : ℝ => f (u + t • v)) ((A u).mulVec v) 0)
    (hm : ∀ u, InBox h u → ∀ (i j : Fin 4), (gT J (4 * i + j)).Has u (A u i j : ℂ))
    {w : Fin 4 → ℝ} {ρ : ℝ} (hρ : 0 < ρ)
    (hball : closedBall w ρ ⊆ {u | InBox h u}) :
    f '' closedBall w ρ ∈ 𝓝 (f w) := by
  have hw := hball (mem_closedBall_self hρ.le)
  have hr := slopeOK_rows hw hok (hm w hw)
  have hY := Method.isUnit_det_of_rowsum (slopeMatrix Y) (A w) hr.1
    (fun _ => le_rfl) hr.2
  apply Method.image_closedBall_mem_nhds_of_slope f w hρ (slopeMatrix Y) hY
    (fun _ => rn q) (fun _ => rn_nonneg q) (fun _ => hr.1)
  intro u hu u' hu'
  exact slopeOK_slope hok f A hd hm (hball hu) (hball hu')

/-- Interior derivatives suffice: the mean-value argument is restricted to a smaller closed ball. -/
theorem slopeOK_open_interior {h : List ℕ} {Y : List ℤ} {J : List CT} {q : ℕ}
    (hok : slopeOK h Y J q = true)
    (f : (Fin 4 → ℝ) → (Fin 4 → ℝ)) (A : (Fin 4 → ℝ) → Matrix (Fin 4) (Fin 4) ℝ)
    (hd : ∀ u ∈ interior {u | InBox h u}, ∀ v,
      HasDerivAt (fun t : ℝ => f (u + t • v)) ((A u).mulVec v) 0)
    (hm : ∀ u ∈ interior {u | InBox h u}, ∀ (i j : Fin 4),
      (gT J (4 * i + j)).Has u (A u i j : ℂ))
    {w : Fin 4 → ℝ} {ρ : ℝ} (hρ : 0 < ρ)
    (hball : closedBall w ρ ⊆ interior {u | InBox h u}) :
    f '' closedBall w ρ ∈ 𝓝 (f w) := by
  have hw := hball (mem_closedBall_self hρ.le)
  have hr := slopeOK_rows (interior_subset hw) hok (hm w hw)
  have hY := Method.isUnit_det_of_rowsum (slopeMatrix Y) (A w) hr.1
    (fun _ => le_rfl) hr.2
  apply Method.image_closedBall_mem_nhds_of_slope f w hρ (slopeMatrix Y) hY
    (fun _ => rn q) (fun _ => rn_nonneg q) (fun _ => hr.1)
  intro u hu u' hu'
  exact Method.mv_coord f A (slopeMatrix Y) (closedBall w ρ) (convex_closedBall w ρ)
    (fun u hu => hd u (hball hu))
    (fun u hu => (slopeOK_rows (interior_subset (hball hu)) hok (hm u (hball hu))).2) hu hu'

end NoFourMUBs.KernelAtlas.Edge
