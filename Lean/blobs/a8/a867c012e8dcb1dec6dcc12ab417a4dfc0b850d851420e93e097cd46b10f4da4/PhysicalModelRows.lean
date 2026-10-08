import ModelOrientationBounds
import PhysicalTripleSmall

/-! Actual physical rows supply all orientation premises. Original real phase
witnesses are retained for the later Frobenius and Fourier-witness estimates.
-/
set_option autoImplicit false
set_option maxHeartbeats 1600000
namespace Seed0024.Orientation
open scoped BigOperators ComplexConjugate
open Seed0024.UnitTriple Seed0024Mathematical20261007 Centiradian20261006
noncomputable section

def remainingRow (i : Fin 4) : Fin 6 := ⟨i.val+2,by omega⟩

theorem remainingRow_ne_zero (i : Fin 4) : remainingRow i≠0 := by
  intro h
  have hv:=congrArg Fin.val h
  change i.val+2=0 at hv
  omega

theorem remainingRow_ne_one (i : Fin 4) : remainingRow i≠1 := by
  intro h
  have hv:=congrArg Fin.val h
  change i.val+2=1 at hv
  omega

theorem remainingRow_injective : Function.Injective remainingRow := by
  intro i j hij
  apply Fin.ext
  have h:=congrArg Fin.val hij
  change i.val+2=j.val+2 at h
  omega

def ModelPhaseLifts (H : Mat6) (i : Fin 6) (s t : Bool) : Prop :=
  ∃ e1 e2 e3 e4 : ℝ,
    |e1|<(2:ℝ)/625 ∧ |e2|<(2:ℝ)/625 ∧
    |e3|<(2:ℝ)/625 ∧ |e4|<(2:ℝ)/625 ∧
    H i 1=orientationRoot s*phase e1 ∧ H i 2=orientationRoot (!s)*phase e2 ∧
    H i 4=(H i 3*orientationRoot t)*phase e3 ∧
    H i 5=(H i 3*orientationRoot (!t))*phase e4

def ModelApproximates (H : Mat6) (i : Fin 6) (s t : Bool) : Prop :=
  ∀k : Fin 6,k≠0→k≠3→‖modelRow s t (H i 3) k-H i k‖<(2:ℝ)/625

theorem sign_orientation_root (sigma : ℝ) (hs : sigma=1 ∨ sigma= -1) :
    ∃s : Bool, phase (sigma*turn)=orientationRoot s ∧
      phase (-sigma*turn)=orientationRoot (!s) := by
  rcases hs with h | h
  · subst sigma
    exact ⟨false,by simp [orientationRoot],by simp [orientationRoot]⟩
  · subst sigma
    exact ⟨true,by simp [orientationRoot],by simp [orientationRoot]⟩

theorem physical_model_phase_lifts {H : Mat6} (hH : Physical H) (hd : Dephased H)
    (i : Fin 6) (hi0 : i≠0) (hi1 : i≠1)
    (hsmall : Complex.normSq (H 1 1-1)+Complex.normSq (H 1 2-1) ≤
      5*((77:ℝ)/100000)^2)
    (hl1 : ‖H 1 1-1‖+‖H 1 2-1‖ ≤3*((77:ℝ)/100000)) :
    ∃s t : Bool,ModelPhaseLifts H i s t := by
  obtain ⟨sigma,e1,e2,hs,he1,he2,h1,h2⟩ :=
    physical_left_phase_lift hH hd i hi0 hi1 hsmall hl1
  obtain ⟨tau,e3,e4,ht,he3,he4,h3,h4⟩ :=
    physical_right_phase_lift hH hd i hi0 hi1 hsmall hl1
  obtain ⟨s,hs1,hs2⟩ := sign_orientation_root sigma hs
  obtain ⟨t,ht1,ht2⟩ := sign_orientation_root tau ht
  refine ⟨s,t,e1,e2,e3,e4,he1,he2,he3,he4,?_,?_,?_,?_⟩
  · change H i 1=phase (sigma*turn+e1) at h1
    simpa only [phase_add,hs1] using h1
  · change H i 2=phase (-sigma*turn+e2) at h2
    simpa only [phase_add,hs2] using h2
  · change H i 4=H i 3*phase (tau*turn+e3) at h3
    simpa only [phase_add,ht1,mul_assoc] using h3
  · change H i 5=H i 3*phase (-tau*turn+e4) at h4
    simpa only [phase_add,ht2,mul_assoc] using h4

theorem unit_phase_entry_error (p z : ℂ) (e : ℝ) (hp : ‖p‖=1)
    (hz : z=p*phase e) : ‖p-z‖≤|e| := by
  have hs : ‖phase e-1‖≤|e| := by
    simpa only [zero_add,phase_zero] using phase_chord_le 0 e
  rw [hz,show p-p*phase e = p*(1-phase e) by ring,norm_mul,hp,one_mul,norm_sub_rev]
  exact hs

theorem model_phase_lifts_approximate {H : Mat6} (hH : Physical H)
    (i : Fin 6) (s t : Bool) (hlift : ModelPhaseLifts H i s t) :
    ModelApproximates H i s t := by
  obtain ⟨e1,e2,e3,e4,he1,he2,he3,he4,h1,h2,h3,h4⟩ := hlift
  have hu3 := physical_unit_norm hH i 3
  have hp3 : ‖H i 3*orientationRoot t‖=1 := by rw [norm_mul,hu3,orientationRoot_unit,one_mul]
  have hp4 : ‖H i 3*orientationRoot (!t)‖=1 := by rw [norm_mul,hu3,orientationRoot_unit,one_mul]
  have hh1 := (unit_phase_entry_error _ _ _ (orientationRoot_unit s) h1).trans_lt he1
  have hh2 := (unit_phase_entry_error _ _ _ (orientationRoot_unit (!s)) h2).trans_lt he2
  have hh3 := (unit_phase_entry_error _ _ _ hp3 h3).trans_lt he3
  have hh4 := (unit_phase_entry_error _ _ _ hp4 h4).trans_lt he4
  intro k hk0 hk3
  fin_cases k
  · exact (hk0 rfl).elim
  · simpa only [modelRow,Matrix.cons_val_zero,Matrix.cons_val_succ] using hh1
  · simpa only [modelRow,Matrix.cons_val_zero,Matrix.cons_val_succ] using hh2
  · exact (hk3 rfl).elim
  · simpa only [modelRow,Matrix.cons_val_zero,Matrix.cons_val_succ] using hh3
  · simpa only [modelRow,Matrix.cons_val_zero,Matrix.cons_val_succ,Matrix.cons_val_fin_one] using hh4

theorem physical_model_inner_small {H : Mat6} (hH : Physical H) (hd : Dephased H)
    (i j : Fin 6) (hij : i≠j) (s t u v : Bool)
    (hi : ModelPhaseLifts H i s t) (hj : ModelPhaseLifts H j u v) :
    ‖rowInner (modelRow s t (H i 3)) (modelRow u v (H j 3))‖<(16:ℝ)/625 := by
  apply modelRow_inner_small s t u v (H i 3) (H j 3) (H i) (H j)
    (physical_unit_norm hH j 3) (physical_unit_norm hH i)
  · simpa only [rowInner,if_neg hij] using hH.2 i j
  · simpa [modelRow] using (hd.2 i).symm
  · rfl
  · simpa [modelRow] using (hd.2 j).symm
  · rfl
  · exact model_phase_lifts_approximate hH i s t hi
  · exact model_phase_lifts_approximate hH j u v hj

/-- Complete physical orientation data: phase witnesses, common orientation,
actual pair sums, and exactly two rows in each complementary type. -/
theorem physical_four_orientation_data {H : Mat6} (hH : Physical H) (hd : Dephased H)
    (hsmall : Complex.normSq (H 1 1-1)+Complex.normSq (H 1 2-1) ≤
      5*((77:ℝ)/100000)^2)
    (hl1 : ‖H 1 1-1‖+‖H 1 2-1‖ ≤3*((77:ℝ)/100000)) :
    ∃s t : Fin 4 → Bool,
      (∀i,ModelPhaseLifts H (remainingRow i) (s i) (t i)) ∧ Compatible s t ∧
      (∀i j,i≠j→SameType s t i j→
        ‖H (remainingRow i) 3+H (remainingRow j) 3‖<(16:ℝ)/1875) ∧
      ∃κ : Bool,(∀i,(s i,t i)=(false,κ) ∨ (s i,t i)=(true,!κ)) ∧
        (Finset.univ.filter (fun i : Fin 4 => (s i,t i)=(false,κ))).card=2 ∧
        (Finset.univ.filter (fun i : Fin 4 => (s i,t i)=(true,!κ))).card=2 := by
  have hlifts : ∀i : Fin 4,∃s t : Bool,ModelPhaseLifts H (remainingRow i) s t := by
    intro i
    exact physical_model_phase_lifts hH hd (remainingRow i)
      (remainingRow_ne_zero i) (remainingRow_ne_one i) hsmall hl1
  choose s t hst using hlifts
  let lam : Fin 4 → ℂ := fun i => H (remainingRow i) 3
  have hunit : ∀i,‖lam i‖=1 := fun i => physical_unit_norm hH (remainingRow i) 3
  have hinner : ∀i j,i≠j→‖rowInner (modelRow (s i) (t i) (lam i))
      (modelRow (s j) (t j) (lam j))‖<(16:ℝ)/625 := by
    intro i j hij
    exact physical_model_inner_small hH hd _ _ (fun he => hij (remainingRow_injective he))
      _ _ _ _ (hst i) (hst j)
  exact ⟨s,t,hst,compatible_from_model_inners s t lam hunit hinner,
    pair_bounds_from_model_inners s t lam hunit hinner,
    four_types_from_model_inners s t lam hunit hinner⟩

#print axioms physical_model_phase_lifts
#print axioms model_phase_lifts_approximate
#print axioms physical_model_inner_small
#print axioms physical_four_orientation_data
end
end Seed0024.Orientation
