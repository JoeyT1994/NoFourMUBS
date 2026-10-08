import MatchedFrobenius
import OrderedOrientationPairs
import PhaseCisBridge

/-! An actual repeated-row Fourier reference, obtained from the physical
orientation and midpoint data. Reindexing is explicit, and maximality is never
asserted for a reindexed carrier. -/
set_option autoImplicit false
set_option maxHeartbeats 2400000
namespace Seed0024Mathematical20261007
open scoped BigOperators ComplexConjugate
open Centiradian20261006 Seed0024.Orientation Seed0024.UnitTriple
noncomputable section

def tailRowMap (p : Fin 4 → Fin 4) (i : Fin 6) : Fin 6 :=
  if hi : i.val<2 then i else finalRow (p ⟨i.val-2,by omega⟩)

theorem tailRowMap_finalRow (p : Fin 4 → Fin 4) (i : Fin 4) :
    tailRowMap p (finalRow i)=finalRow (p i) := by
  simp [tailRowMap,finalRow]

theorem tailRowMap_inverse (p q : Fin 4 → Fin 4) (hpq : ∀i,p (q i)=i)
    (i : Fin 6) : tailRowMap p (tailRowMap q i)=i := by
  by_cases hi : i.val<2
  · simp [tailRowMap,hi]
  · let j : Fin 4 := ⟨i.val-2,by omega⟩
    have he : finalRow j=i := by apply Fin.ext; simp [finalRow,j]; omega
    rw [←he,tailRowMap_finalRow,tailRowMap_finalRow,hpq]

def tailRowPerm (p : Equiv.Perm (Fin 4)) : Equiv.Perm (Fin 6) where
  toFun := tailRowMap p
  invFun := tailRowMap p.symm
  left_inv := tailRowMap_inverse p.symm p p.symm_apply_apply
  right_inv := tailRowMap_inverse p p.symm p.apply_symm_apply

theorem tailRowPerm_zero (p : Equiv.Perm (Fin 4)) : tailRowPerm p 0=0 := by
  simp [tailRowPerm,tailRowMap]
theorem tailRowPerm_one (p : Equiv.Perm (Fin 4)) : tailRowPerm p 1=1 := by
  simp [tailRowPerm,tailRowMap]
theorem tailRowPerm_finalRow (p : Equiv.Perm (Fin 4)) (i : Fin 4) :
    tailRowPerm p (finalRow i)=remainingRow (p i) := tailRowMap_finalRow p i

def orientationColumns (kappa : Bool) : Equiv.Perm (Fin 6) :=
  if kappa then Equiv.swap 4 5 else Equiv.refl (Fin 6)

theorem orientationColumns_first (kappa : Bool) (j : Fin 6) (hj : j.val<4) :
    orientationColumns kappa j=j := by
  have h4 : j≠4 := by intro h; subst j; norm_num at hj
  have h5 : j≠5 := by intro h; subst j; norm_num at hj
  cases kappa <;> simp [orientationColumns,Equiv.swap_apply_def,h4,h5]

def binaryRow : Fin 6 → ℂ := fun j => if j.val<3 then 1 else -1

def repeatedFourierModel (mu nu : ℂ) : Mat6 :=
  ![fun _ => 1,binaryRow,modelRow false false mu,modelRow false false (-mu),
    modelRow true true nu,modelRow true true (-nu)]

def pairMidpoints (mu nu : ℂ) : Fin 4 → ℂ := ![mu,-mu,nu,-nu]
def pairOrientation (i : Fin 4) : Bool := if i.val<2 then false else true

theorem repeatedFourierModel_first (mu nu : ℂ) (j : Fin 6) :
    repeatedFourierModel mu nu 0 j=1 := by simp [repeatedFourierModel]

theorem repeatedFourierModel_binary (mu nu : ℂ) (j : Fin 6) :
    repeatedFourierModel mu nu 1 j=if j.val<3 then 1 else -1 := by
  simp [repeatedFourierModel,binaryRow]

theorem repeatedFourierModel_final (mu nu : ℂ) (i : Fin 4) :
    repeatedFourierModel mu nu (finalRow i)=
      modelRow (pairOrientation i) (pairOrientation i) (pairMidpoints mu nu i) := by
  fin_cases i <;> simp [repeatedFourierModel,finalRow,pairOrientation,pairMidpoints]

theorem pairMidpoints_unit {mu nu : ℂ} (hmu : ‖mu‖=1) (hnu : ‖nu‖=1)
    (i : Fin 4) : ‖pairMidpoints mu nu i‖=1 := by
  fin_cases i <;> simp [pairMidpoints,hmu,hnu]

theorem repeatedFourierModel_entry_unit {mu nu : ℂ} (hmu : ‖mu‖=1)
    (hnu : ‖nu‖=1) (i j : Fin 6) : ‖repeatedFourierModel mu nu i j‖=1 := by
  fin_cases i
  · simp [repeatedFourierModel]
  · change ‖(if j.val<3 then (1:ℂ) else -1)‖=1
    split <;> simp
  · exact modelRow_unit false false mu hmu j
  · exact modelRow_unit false false (-mu) (by simpa using hmu) j
  · exact modelRow_unit true true nu hnu j
  · exact modelRow_unit true true (-nu) (by simpa using hnu) j

theorem orientation_columns_phase_lifts {H : Mat6} (rows : Equiv.Perm (Fin 6))
    (kappa : Bool) (i : Fin 6) (s : Bool)
    (hlift : ModelPhaseLifts H (rows i) s (if kappa then !s else s)) :
    ModelPhaseLifts (reindexCarrier H rows (orientationColumns kappa)) i s s := by
  obtain ⟨e1,e2,e3,e4,he1,he2,he3,he4,h1,h2,h3,h4⟩ := hlift
  cases kappa
  · exact ⟨e1,e2,e3,e4,he1,he2,he3,he4,h1,h2,h3,h4⟩
  · refine ⟨e1,e2,e4,e3,he1,he2,he4,he3,?_,?_,?_,?_⟩
    · simpa [reindexCarrier,orientationColumns,Equiv.swap_apply_def] using h1
    · simpa [reindexCarrier,orientationColumns,Equiv.swap_apply_def] using h2
    · simpa [reindexCarrier,orientationColumns,Equiv.swap_apply_def] using h4
    · simpa [reindexCarrier,orientationColumns,Equiv.swap_apply_def] using h3

theorem ordered_phase_lifts_reindex {H : Mat6} (p : Equiv.Perm (Fin 4))
    (kappa : Bool)
    (hlifts : ∀i,ModelPhaseLifts H (remainingRow (p i))
      (if i.val<2 then false else true) (if i.val<2 then kappa else !kappa)) :
    ∀i,ModelPhaseLifts (reindexCarrier H (tailRowPerm p) (orientationColumns kappa))
      (finalRow i) (pairOrientation i) (pairOrientation i) := by
  intro i
  apply orientation_columns_phase_lifts
  rw [tailRowPerm_finalRow]
  have ht : (if kappa then !(pairOrientation i) else pairOrientation i)=
      (if i.val<2 then kappa else !kappa) := by
    cases kappa <;> simp [pairOrientation]
  rw [ht]
  exact hlifts i

theorem phase_lifts_rowMatching {H : Mat6} (hH : Physical H) (hd : Dephased H)
    (mu nu : ℂ) (hmu : ‖mu‖=1) (hnu : ‖nu‖=1) (i : Fin 4) (e : ℝ)
    (he : |e|≤2*localPhaseError)
    (ha : H (finalRow i) 3=pairMidpoints mu nu i*cis e)
    (hlift : ModelPhaseLifts H (finalRow i) (pairOrientation i) (pairOrientation i)) :
    RowMatching H (repeatedFourierModel mu nu) (finalRow i) := by
  have hm := model_phase_lifts_approximate hH _ _ _ hlift
  have h1 := hm 1 (by decide) (by decide)
  have h2 := hm 2 (by decide) (by decide)
  have h4 := hm 4 (by decide) (by decide)
  have h5 := hm 5 (by decide) (by decide)
  unfold RowMatching
  rw [repeatedFourierModel_final]
  refine ⟨orientationRoot (pairOrientation i),orientationRoot (!(pairOrientation i)),e,
    orientationRoot_unit _,orientationRoot_unit _,?_,?_,?_,?_,he,?_,?_,?_,?_,?_⟩
  · simpa [modelRow] using pairMidpoints_unit hmu hnu i
  · simpa [modelRow] using hd.2 (finalRow i)
  · simpa [modelRow,localPhaseError,norm_sub_rev] using h1.le
  · simpa [modelRow,localPhaseError,norm_sub_rev] using h2.le
  · simpa [modelRow] using ha
  · simp [modelRow]
  · simp [modelRow]
  · simpa [modelRow,localPhaseError,norm_sub_rev] using h4.le
  · simpa [modelRow,localPhaseError,norm_sub_rev] using h5.le

/-- All data refer to original row indices. The supplied phase witnesses
construct the literal entry matching; no matching or matrix error premise
is assumed. -/
theorem paired_data_fourier_match {H : Mat6} (hH : Physical H) (hd : Dephased H)
    (hsmall : Complex.normSq (H 1 1-1)+Complex.normSq (H 1 2-1)≤5*localDelta^2)
    (p : Equiv.Perm (Fin 4)) (kappa : Bool) (mu nu : ℂ) (e : Fin 4 → ℝ)
    (hmu : ‖mu‖=1) (hnu : ‖nu‖=1) (he : ∀i,|e i|<(4:ℝ)/625)
    (hlifts : ∀i,ModelPhaseLifts H (remainingRow (p i))
      (if i.val<2 then false else true) (if i.val<2 then kappa else !kappa))
    (ha0 : H (remainingRow (p 0)) 3=mu*phase (e 0))
    (ha1 : H (remainingRow (p 1)) 3= -mu*phase (e 1))
    (ha2 : H (remainingRow (p 2)) 3=nu*phase (e 2))
    (ha3 : H (remainingRow (p 3)) 3= -nu*phase (e 3)) :
    (∀i,RowMatching (reindexCarrier H (tailRowPerm p) (orientationColumns kappa))
      (repeatedFourierModel mu nu) (finalRow i)) ∧
    normalizedSquaredFrobenius
      (reindexCarrier H (tailRowPerm p) (orientationColumns kappa))
      (repeatedFourierModel mu nu)<(1/75:ℝ)^2 := by
  let H' := reindexCarrier H (tailRowPerm p) (orientationColumns kappa)
  have hH' : Physical H' := physical_reindexCarrier hH _ _
  have hd' : Dephased H' := dephased_reindexCarrier hd _ _
    (tailRowPerm_zero p) (orientationColumns_first kappa 0 (by decide))
  have hsmall' : Complex.normSq (H' 1 1-1)+Complex.normSq (H' 1 2-1)≤
      5*localDelta^2 := by
    simpa only [H',reindexCarrier,tailRowPerm_one,
      orientationColumns_first kappa 1 (by decide),
      orientationColumns_first kappa 2 (by decide)] using hsmall
  have hanchors : ∀i,H' (finalRow i) 3=pairMidpoints mu nu i*cis (e i) := by
    intro i
    simp only [H',reindexCarrier,tailRowPerm_finalRow,
      orientationColumns_first kappa 3 (by decide)]
    fin_cases i
    · simpa [pairMidpoints,phase_eq_cis] using ha0
    · simpa [pairMidpoints,phase_eq_cis] using ha1
    · simpa [pairMidpoints,phase_eq_cis] using ha2
    · simpa [pairMidpoints,phase_eq_cis] using ha3
  have hm : ∀i,RowMatching H' (repeatedFourierModel mu nu) (finalRow i) := by
    intro i
    exact phase_lifts_rowMatching hH' hd' mu nu hmu hnu i (e i)
      (by simpa [localPhaseError] using (he i).le) (hanchors i)
      (ordered_phase_lifts_reindex p kappa hlifts i)
  exact ⟨hm,physical_matched_frobenius_lt hH' hd' hsmall'
    (repeatedFourierModel_first mu nu) (repeatedFourierModel_binary mu nu) hm⟩

/-- Physical seed smallness constructs an actual Fourier reference and its
explicit row/column matching. -/
theorem physical_exists_fourier_match {H : Mat6} (hH : Physical H) (hd : Dephased H)
    (hsmall : Complex.normSq (H 1 1-1)+Complex.normSq (H 1 2-1)≤5*localDelta^2)
    (hl1 : ‖H 1 1-1‖+‖H 1 2-1‖≤3*localDelta) :
    ∃p : Equiv.Perm (Fin 4),∃kappa : Bool,∃mu nu : ℂ,
      ‖mu‖=1 ∧ ‖nu‖=1 ∧
      (∀i,RowMatching (reindexCarrier H (tailRowPerm p) (orientationColumns kappa))
        (repeatedFourierModel mu nu) (finalRow i)) ∧
      normalizedSquaredFrobenius
        (reindexCarrier H (tailRowPerm p) (orientationColumns kappa))
        (repeatedFourierModel mu nu)<(1/75:ℝ)^2 := by
  obtain ⟨p,kappa,mu,nu,e,hmu,hnu,he,hlifts,ha0,ha1,ha2,ha3⟩ :=
    physical_ordered_midpoint_pairs hH hd hsmall hl1
  exact ⟨p,kappa,mu,nu,hmu,hnu,
    paired_data_fourier_match hH hd hsmall p kappa mu nu e
      hmu hnu he hlifts ha0 ha1 ha2 ha3⟩

def repeatedFourier (alpha beta : ℝ) : Mat6 :=
  repeatedFourierModel (cis alpha) (cis beta)

theorem repeatedFourierModel_eq_arg {mu nu : ℂ} (hmu : ‖mu‖=1) (hnu : ‖nu‖=1) :
    repeatedFourierModel mu nu=repeatedFourier mu.arg nu.arg := by
  unfold repeatedFourier
  rw [←unit_eq_cis_arg mu hmu,←unit_eq_cis_arg nu hnu]

end
end Seed0024Mathematical20261007

#print axioms Seed0024Mathematical20261007.tailRowPerm
#print axioms Seed0024Mathematical20261007.ordered_phase_lifts_reindex
#print axioms Seed0024Mathematical20261007.phase_lifts_rowMatching
#print axioms Seed0024Mathematical20261007.paired_data_fourier_match
#print axioms Seed0024Mathematical20261007.physical_exists_fourier_match
#print axioms Seed0024Mathematical20261007.repeatedFourierModel_eq_arg
