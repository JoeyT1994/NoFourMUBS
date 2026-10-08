import D0FullInterface

/-! Generic simultaneous coordinate-permutation transport. Concrete finite
D0 permutations and chart routes are attached in a separate module. -/
set_option autoImplicit false
namespace Mub6.Numerical.CircleFullD0

open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness

def extendTail (σ : Equiv.Perm (Fin 5)) : Equiv.Perm (Fin 6) where
  toFun := Fin.cases 0 (fun j => (σ j).succ)
  invFun := Fin.cases 0 (fun j => (σ.symm j).succ)
  left_inv := by
    intro i
    refine Fin.cases ?_ (fun j => ?_) i
    · rfl
    · simp
  right_inv := by
    intro i
    refine Fin.cases ?_ (fun j => ?_) i
    · rfl
    · simp

@[simp] theorem extendTail_zero (σ : Equiv.Perm (Fin 5)) : extendTail σ 0 = 0 := rfl
@[simp] theorem extendTail_succ (σ : Equiv.Perm (Fin 5)) (j : Fin 5) :
    extendTail σ j.succ = (σ j).succ := rfl

def permuteRay (σ : Equiv.Perm (Fin 5)) (z : Vector) : Vector :=
  fun r => z (extendTail σ r)

def permuteCarrier (σ : Equiv.Perm (Fin 5)) (H : BasisMatrix) : BasisMatrix :=
  fun r k => H (extendTail σ r) (extendTail σ k)

def permuteSigns (σ : Equiv.Perm (Fin 5)) (signs : SignChart) : SignChart :=
  fun j => signs (σ j)

def permuteParameters (σ : Equiv.Perm (Fin 5)) (t : Parameters) : Parameters :=
  fun j => t (σ j)

theorem chartRay_permute (σ : Equiv.Perm (Fin 5))
    (signs : SignChart) (t : Parameters) :
    chartRay (permuteSigns σ signs) (permuteParameters σ t) =
      permuteRay σ (chartRay signs t) := by
  funext r
  refine Fin.cases ?_ (fun j => ?_) r
  · rfl
  · rfl

theorem raw_unit_permute (σ : Equiv.Perm (Fin 5)) {z : Vector}
    (hz : IsRawUnitRay z) : IsRawUnitRay (permuteRay σ z) := by
  refine ⟨?_, ?_⟩
  · simpa [permuteRay] using hz.1
  · intro r
    exact hz.2 (extendTail σ r)

theorem carrier_amplitude_permute (σ : Equiv.Perm (Fin 5))
    (H : BasisMatrix) (z : Vector) (k : Fin 6) :
    carrierAmplitude (permuteCarrier σ H) (permuteRay σ z) k =
      carrierAmplitude H z (extendTail σ k) := by
  change (∑ r : Fin 6,
    star (H (extendTail σ r) (extendTail σ k)) * z (extendTail σ r)) =
    ∑ r : Fin 6, star (H r (extendTail σ k)) * z r
  exact Equiv.sum_comp (extendTail σ)
    (fun r : Fin 6 => star (H r (extendTail σ k)) * z r)

theorem raw_common_permute (σ : Equiv.Perm (Fin 5))
    {H : BasisMatrix} {z : Vector} (hz : IsRawCommonRay H z) :
    IsRawCommonRay (permuteCarrier σ H) (permuteRay σ z) := by
  refine ⟨raw_unit_permute σ hz.1, ?_⟩
  intro k
  rw [carrier_amplitude_permute]
  exact hz.2 (extendTail σ k)

theorem carrier_box_permute (σ : Equiv.Perm (Fin 5))
    {E : CarrierRegion} {H : BasisMatrix}
    (hE : ∀ r k, E r k = E (extendTail σ r) (extendTail σ k))
    (hH : CarrierBox E H) : CarrierBox E (permuteCarrier σ H) := by
  intro r k
  rw [hE]
  exact hH (extendTail σ r) (extendTail σ k)

theorem state_mem_permute (σ : Equiv.Perm (Fin 5))
    {tab : Tables} {T : ℕ} {t : Parameters}
    (ht : StateMem tab T rootState t) :
    StateMem tab T rootState (permuteParameters σ t) := by
  intro j
  exact ht (σ j)

theorem mem_ray_box_unpermute (σ : Equiv.Perm (Fin 5))
    (τ : Equiv.Perm (Fin 120)) (targets : Fin 120 → ZRayBox)
    (hmap : ∀ v j, targets (τ v) j = targets v (σ j))
    {v : Fin 120} {z : Vector}
    (hz : MemRayBox R (targets v) (permuteRay σ z)) :
    MemRayBox R (targets (τ.symm v)) z := by
  refine ⟨?_, ?_⟩
  · simpa [permuteRay] using hz.1
  · intro j
    have hv := hz.2 (σ.symm j)
    have hm := hmap (τ.symm v) (σ.symm j)
    simp only [Equiv.apply_symm_apply, Equiv.apply_symm_apply] at hm
    simpa [permuteRay, hm] using hv

theorem covered_root_unpermute (σ : Equiv.Perm (Fin 5))
    (τ : Equiv.Perm (Fin 120))
    (hE : ∀ r k, (toCarrier R carrier) r k =
      (toCarrier R carrier) (extendTail σ r) (extendTail σ k))
    (hmap : ∀ v j, targets (τ v) j = targets v (σ j))
    (signs : SignChart)
    (hroot : CoveredState d0Tables (toCarrier R carrier) T R targets
      (permuteSigns σ signs) rootState) :
    CoveredState d0Tables (toCarrier R carrier) T R targets signs rootState := by
  intro H hH t ht hz
  have hH' := carrier_box_permute σ hE hH
  have ht' := state_mem_permute σ ht
  have hz' : IsRawCommonRay (permuteCarrier σ H)
      (chartRay (permuteSigns σ signs) (permuteParameters σ t)) := by
    rw [chartRay_permute]
    exact raw_common_permute σ hz
  obtain ⟨v, hv⟩ := hroot (permuteCarrier σ H) hH'
    (permuteParameters σ t) ht' hz'
  refine ⟨τ.symm v, ?_⟩
  rw [chartRay_permute] at hv
  exact mem_ray_box_unpermute σ τ targets hmap hv

#print axioms chartRay_permute
#print axioms raw_common_permute
#print axioms carrier_box_permute
#print axioms mem_ray_box_unpermute
#print axioms covered_root_unpermute

end Mub6.Numerical.CircleFullD0
