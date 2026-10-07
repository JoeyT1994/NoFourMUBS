import PhysicalModelRows

/-! An exhibited ordering of the four ORIGINAL row indices into the two
orientation pairs, with actual unit midpoint phases and real error witnesses.
No maximality assertion is made for a reindexed matrix.
-/
set_option autoImplicit false
set_option synthInstance.maxSize 10000
set_option maxRecDepth 20000
set_option maxHeartbeats 2400000
namespace Seed0024.Orientation
open Seed0024.UnitTriple Centiradian20261006
noncomputable section

def OrderedLabels (s t : Fin 4 → Bool) (kappa : Bool) (p : Fin 4 → Fin 4) : Prop :=
  (s (p 0),t (p 0))=(false,kappa) ∧
  (s (p 1),t (p 1))=(false,kappa) ∧
  (s (p 2),t (p 2))=(true,!kappa) ∧
  (s (p 3),t (p 3))=(true,!kappa)

/-- Finite selection is evaluated by the ordinary Lean kernel. -/
theorem finite_ordered_labels : ∀s t : Fin 4 → Bool,∀kappa : Bool,
    (Finset.univ.filter (fun i : Fin 4 => (s i,t i)=(false,kappa))).card=2 →
    (Finset.univ.filter (fun i : Fin 4 => (s i,t i)=(true,!kappa))).card=2 →
    ∃p : Fin 4 → Fin 4,Function.Bijective p ∧ OrderedLabels s t kappa p := by
  unfold OrderedLabels
  decide

theorem ordered_labels_perm (s t : Fin 4 → Bool) (kappa : Bool)
    (hf : (Finset.univ.filter (fun i : Fin 4 => (s i,t i)=(false,kappa))).card=2)
    (ht : (Finset.univ.filter (fun i : Fin 4 => (s i,t i)=(true,!kappa))).card=2) :
    ∃p : Equiv.Perm (Fin 4),OrderedLabels s t kappa p := by
  obtain ⟨p,hp,hl⟩ := finite_ordered_labels s t kappa hf ht
  exact ⟨Equiv.ofBijective p hp,hl⟩

/-- Explicit pair order on original row indices, retaining all four original
entry phase errors and exposing both midpoint phases. -/
theorem physical_ordered_midpoint_pairs {H : Mat6} (hH : Physical H) (hd : Dephased H)
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
      H (remainingRow (p 3)) 3= -nu*phase (e 3) := by
  obtain ⟨s,t,hlifts,hcompatible,hpair,kappa,hcover,hfalse,htrue⟩ :=
    physical_four_orientation_data hH hd hsmall hl1
  obtain ⟨p,hlabels⟩ := ordered_labels_perm s t kappa hfalse htrue
  obtain ⟨h0,h1,h2,h3⟩ := hlabels
  have hs0 : s (p 0)=false := congrArg Prod.fst h0
  have hs1 : s (p 1)=false := congrArg Prod.fst h1
  have hs2 : s (p 2)=true := congrArg Prod.fst h2
  have hs3 : s (p 3)=true := congrArg Prod.fst h3
  have ht0 : t (p 0)=kappa := congrArg Prod.snd h0
  have ht1 : t (p 1)=kappa := congrArg Prod.snd h1
  have ht2 : t (p 2)= !kappa := congrArg Prod.snd h2
  have ht3 : t (p 3)= !kappa := congrArg Prod.snd h3
  have hn01 : p 0≠p 1 := fun he => (by decide : (0:Fin 4)≠1) (p.injective he)
  have hn23 : p 2≠p 3 := fun he => (by decide : (2:Fin 4)≠3) (p.injective he)
  have htype01 : SameType s t (p 0) (p 1) := ⟨hs0.trans hs1.symm,ht0.trans ht1.symm⟩
  have htype23 : SameType s t (p 2) (p 3) := ⟨hs2.trans hs3.symm,ht2.trans ht3.symm⟩
  have hunit : ∀i : Fin 4,‖H (remainingRow i) 3‖=1 :=
    fun i => Seed0024Mathematical20261007.physical_unit_norm hH (remainingRow i) 3
  obtain ⟨mu,e0,e1,hmu,he0,he1,hmu0,hmu1⟩ :=
    orientation_pair_midpoint s t (fun i => H (remainingRow i) 3) hunit hpair
      (p 0) (p 1) hn01 htype01
  obtain ⟨nu,e2,e3,hnu,he2,he3,hnu2,hnu3⟩ :=
    orientation_pair_midpoint s t (fun i => H (remainingRow i) 3) hunit hpair
      (p 2) (p 3) hn23 htype23
  refine ⟨p,kappa,mu,nu,![e0,e1,e2,e3],hmu,hnu,?_,?_,hmu0,hmu1,hnu2,hnu3⟩
  · intro i
    fin_cases i
    · simpa using he0
    · simpa using he1
    · simpa using he2
    · simpa using he3
  · intro i
    fin_cases i
    · simpa [hs0,ht0] using hlifts (p 0)
    · simpa [hs1,ht1] using hlifts (p 1)
    · simpa [hs2,ht2] using hlifts (p 2)
    · simpa [hs3,ht3] using hlifts (p 3)

#print axioms finite_ordered_labels
#print axioms ordered_labels_perm
#print axioms physical_ordered_midpoint_pairs
end
end Seed0024.Orientation
