import KernelAtlas.Edge.SideModels
import KernelAtlas.Seed.Shift
import Mathlib.Topology.LocallyFinite

/-!
# Overlap checks for augmented side roots

The second predictor is shifted into the first box's coordinates. Its distance from the first
predictor, plus the first root's certified error, must fit in the second uniqueness tube.
-/

open Complex Metric NoFourMUBs.SeedAtlas

noncomputable section

namespace NoFourMUBs.KernelAtlas.Edge

open Seed

def predNear (h : List ℕ) (ph ph' : List CT) (c : List ℤ) (ec : List ℕ) (ρ : ℕ) : Bool :=
  (l7 fun j => decide (bnd h (sub (re (gT ph j)) (shiftT c h (re (gT ph' j)))) + gn ec j ≤ ρ)).all id

/-- A passing overlap bound places the first root inside the second uniqueness tube. -/
theorem predNear_sound {h : List ℕ} {u : Fin 4 → ℝ} (hu : InBox h u)
    {ph ph' : List CT} {c : List ℤ} {ec : List ℕ} {ρ : ℕ}
    (hok : predNear h ph ph' c ec ρ = true) {ξ : Fin 7 → ℝ}
    (hd : ∀ j : Fin 7, |ξ j - predR ph u j| ≤ rn (gn ec j)) :
    ξ ∈ closedBall (predR ph' (fun l => rq (gi c l) + u l)) (rn ρ) := by
  rw [mem_closedBall, dist_eq_norm]
  apply (pi_norm_le_iff_of_nonneg (rn_nonneg ρ)).2
  intro j
  have hk : bnd h (sub (re (gT ph j)) (shiftT c h (re (gT ph' j)))) + gn ec j ≤ ρ :=
    of_decide_eq_true (all_l7 hok j.2)
  have hm := norm_le_bnd hu (has_sub (has_pred ph u j j.2)
    (has_shift hu (has_pred ph' (fun l => rq (gi c l) + u l) j j.2)))
  rw [← Complex.ofReal_sub, Complex.norm_real, Real.norm_eq_abs] at hm
  rw [Pi.sub_apply, Real.norm_eq_abs]
  calc |ξ j - predR ph' (fun l => rq (gi c l) + u l) j|
      ≤ |ξ j - predR ph u j| + |predR ph u j - predR ph' (fun l => rq (gi c l) + u l) j| :=
        abs_sub_le _ _ _
    _ ≤ rn (gn ec j) + rn (bnd h (sub (re (gT ph j)) (shiftT c h (re (gT ph' j))))) :=
      add_le_add (hd j) hm
    _ ≤ rn ρ := by rw [add_comm, ← rn_add]; exact rn_mono hk

/-- Roots representing the same parameters agree on every passing overlap. -/
theorem roots_agree {h : List ℕ} {u : Fin 4 → ℝ} (hu : InBox h u)
    {ph ph' : List CT} {c : List ℤ} {ec : List ℕ} {ρ : ℕ}
    (hok : predNear h ph ph' c ec ρ = true) {v : Bool} {a : Fin 3 → ℝ} {y : ℝ}
    {ξ ξ' : Fin 7 → ℝ} (hd : ∀ j : Fin 7, |ξ j - predR ph u j| ≤ rn (gn ec j))
    (hm : ξ' ∈ closedBall (predR ph' (fun l => rq (gi c l) + u l)) (rn ρ))
    (hz : edgeF v a y ξ = 0) (hz' : edgeF v a y ξ' = 0)
    (huniq : ∀ x ∈ closedBall (predR ph' (fun l => rq (gi c l) + u l)) (rn ρ),
      ∀ x' ∈ closedBall (predR ph' (fun l => rq (gi c l) + u l)) (rn ρ),
      edgeF v a y x = 0 → edgeF v a y x' = 0 → x = x') : ξ = ξ' :=
  huniq ξ (predNear_sound hu hok hd) ξ' hm hz hz'

/-- Compatible continuous roots on a finite closed cover define one continuous global root. -/
theorem glue_finite {P Z ι : Type*} [TopologicalSpace P] [TopologicalSpace Z] [Finite ι]
    (S : ι → Set P) (hclosed : ∀ i, IsClosed (S i)) (hcover : ∀ p, ∃ i, p ∈ S i)
    (f : ∀ i, S i → Z) (hc : ∀ i, Continuous (f i))
    (ha : ∀ i j p (hi : p ∈ S i) (hj : p ∈ S j), f i ⟨p, hi⟩ = f j ⟨p, hj⟩) :
    ∃ g : P → Z, Continuous g ∧ ∀ i p (hp : p ∈ S i), g p = f i ⟨p, hp⟩ := by
  choose ix hix using hcover
  let g : P → Z := fun p => f (ix p) ⟨p, hix p⟩
  have hg : ∀ i p (hp : p ∈ S i), g p = f i ⟨p, hp⟩ :=
    fun i p hp => ha (ix p) i p (hix p) hp
  refine ⟨g, ?_, hg⟩
  refine (locallyFinite_of_finite S).continuous ?_ hclosed ?_
  · ext p
    simp only [Set.mem_iUnion, Set.mem_univ, iff_true]
    exact ⟨ix p, hix p⟩
  · intro i
    apply continuousOn_iff_continuous_domRestrict.mpr
    exact (hc i).congr (fun p => (hg i p.1 p.2).symm)

end NoFourMUBs.KernelAtlas.Edge
