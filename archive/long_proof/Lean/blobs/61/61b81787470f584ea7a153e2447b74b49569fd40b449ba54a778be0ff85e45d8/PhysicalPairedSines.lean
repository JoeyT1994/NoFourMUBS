import OrderedOrientationPairs
import PhaseCisBridge
import PhysicalFourierLocation

/-! The actual ordered midpoint data feed four witnesses on ORIGINAL H.
The same midpoint and permutation witnesses are retained in the conclusion.
-/
set_option autoImplicit false
set_option maxHeartbeats 1800000
namespace Seed0024.Orientation
open Seed0024.UnitTriple Seed0024Mathematical20261007 Centiradian20261006
noncomputable section

theorem ordered_midpoint_sines {H : Mat6} (hH : Physical H) (hd : Dephased H)
    (hm : Maximal H)
    (hsmall : Complex.normSq (H 1 1-1)+Complex.normSq (H 1 2-1) ≤
      5*((77:ℝ)/100000)^2)
    (p : Equiv.Perm (Fin 4)) (kappa : Bool) (mu nu : ℂ) (e : Fin 4 → ℝ)
    (hmu : ‖mu‖=1) (hnu : ‖nu‖=1) (he : ∀i,|e i|<(4:ℝ)/625)
    (hlifts : ∀i,ModelPhaseLifts H (remainingRow (p i))
      (if i.val<2 then false else true) (if i.val<2 then kappa else !kappa))
    (h0 : H (remainingRow (p 0)) 3=mu*phase (e 0))
    (h1 : H (remainingRow (p 1)) 3= -mu*phase (e 1))
    (h2 : H (remainingRow (p 2)) 3=nu*phase (e 2))
    (h3 : H (remainingRow (p 3)) 3= -nu*phase (e 3)) :
    |Real.sin (2*mu.arg-nu.arg)|+|Real.sin (2*nu.arg-mu.arg)|+
      |Real.sin (mu.arg+nu.arg)|<(1:ℝ)/6 := by
  let plusRows : Bool → Fin 6 := fun j => remainingRow (p (if j then 1 else 0))
  let minusRows : Bool → Fin 6 := fun j => remainingRow (p (if j then 3 else 2))
  have hp : ∀j,0<plusRows j := by
    intro j
    change 0<(remainingRow _).val
    dsimp [remainingRow]
    omega
  have hn : ∀j,0<minusRows j := by
    intro j
    change 0<(remainingRow _).val
    dsimp [remainingRow]
    omega
  have hcross : ∀j k,plusRows j≠minusRows k := by
    intro j k h
    have hij := p.injective (remainingRow_injective h)
    cases j <;> cases k <;> norm_num at hij
  have hleft (i : Fin 4) :
      ‖H (remainingRow (p i)) 1-orientationRoot (if i.val<2 then false else true)‖≤(2:ℝ)/625 := by
    have h := model_phase_lifts_approximate hH _ _ _ (hlifts i) 1 (by decide) (by decide)
    rw [norm_sub_rev]
    simpa [modelRow] using h.le
  have hpr0 : ‖H (remainingRow (p 0)) 3-cis mu.arg‖≤2*((2:ℝ)/625) := by
    have h := unit_phase_entry_error mu _ _ hmu h0
    rw [← unit_eq_cis_arg mu hmu,norm_sub_rev]
    linarith [he 0]
  have hpr1 : ‖H (remainingRow (p 1)) 3-(-cis mu.arg)‖≤2*((2:ℝ)/625) := by
    have h := unit_phase_entry_error (-mu) _ _ (by simpa using hmu) h1
    rw [← unit_eq_cis_arg mu hmu,norm_sub_rev]
    linarith [he 1]
  have hmr0 : ‖H (remainingRow (p 2)) 3-cis nu.arg‖≤2*((2:ℝ)/625) := by
    have h := unit_phase_entry_error nu _ _ hnu h2
    rw [← unit_eq_cis_arg nu hnu,norm_sub_rev]
    linarith [he 2]
  have hmr1 : ‖H (remainingRow (p 3)) 3-(-cis nu.arg)‖≤2*((2:ℝ)/625) := by
    have h := unit_phase_entry_error (-nu) _ _ (by simpa using hnu) h3
    rw [← unit_eq_cis_arg nu hnu,norm_sub_rev]
    linarith [he 3]
  apply physical_four_model_sines hH hd hm hsmall plusRows minusRows hp hn hcross mu.arg nu.arg
  · intro j
    cases j
    · simpa [plusRows] using hleft 0
    · simpa [plusRows] using hleft 1
  · intro j
    cases j
    · simpa [minusRows] using hleft 2
    · simpa [minusRows] using hleft 3
  · intro j
    cases j
    · exact hpr0
    · exact hpr1
  · intro j
    cases j
    · exact hmr0
    · exact hmr1

/-- Same explicit pairing data as the physical construction, now with the
actual midpoint arguments quantitatively located near the Fourier lattice. -/
theorem physical_ordered_pairs_and_sines {H : Mat6} (hH : Physical H) (hd : Dephased H)
    (hm : Maximal H)
    (hsmall : Complex.normSq (H 1 1-1)+Complex.normSq (H 1 2-1) ≤
      5*((77:ℝ)/100000)^2)
    (hl1 : ‖H 1 1-1‖+‖H 1 2-1‖ ≤3*((77:ℝ)/100000)) :
    ∃p : Equiv.Perm (Fin 4),∃kappa : Bool,∃mu nu : ℂ,∃e : Fin 4 → ℝ,
      ‖mu‖=1 ∧ ‖nu‖=1 ∧ (∀i,|e i|<(4:ℝ)/625) ∧
      (∀i,ModelPhaseLifts H (remainingRow (p i))
        (if i.val<2 then false else true) (if i.val<2 then kappa else !kappa)) ∧
      H (remainingRow (p 0)) 3=mu*phase (e 0) ∧
      H (remainingRow (p 1)) 3= -mu*phase (e 1) ∧
      H (remainingRow (p 2)) 3=nu*phase (e 2) ∧
      H (remainingRow (p 3)) 3= -nu*phase (e 3) ∧
      |Real.sin (2*mu.arg-nu.arg)|+|Real.sin (2*nu.arg-mu.arg)|+
        |Real.sin (mu.arg+nu.arg)|<(1:ℝ)/6 := by
  obtain ⟨p,kappa,mu,nu,e,hmu,hnu,he,hlifts,h0,h1,h2,h3⟩ :=
    physical_ordered_midpoint_pairs hH hd hsmall hl1
  exact ⟨p,kappa,mu,nu,e,hmu,hnu,he,hlifts,h0,h1,h2,h3,
    ordered_midpoint_sines hH hd hm hsmall p kappa mu nu e hmu hnu he hlifts h0 h1 h2 h3⟩

#print axioms ordered_midpoint_sines
#print axioms physical_ordered_pairs_and_sines
end
end Seed0024.Orientation
