import GraphKernel

/-! Source-only candidate. Side-column labels may repeat. Distinct positions
are represented by distinct slot/label pairs, while an edge between equal
labels still requires the original self-loop. No label-cover or interval
soundness is asserted by this finite combinatorial adapter. -/
set_option autoImplicit false
namespace ShoulderSideTriple20261008
open Mub6.Numerical.GraphKernel

variable {V : Type} [Fintype V] [DecidableEq V]

def slotGraph (O : Graph V) : Graph (Fin 3 × V) :=
  fun a b => decide (a.1 ≠ b.1) && O a.2 b.2

def slotSet (labels : Fin 3 → V) : Finset (Fin 3 × V) :=
  Finset.univ.image (fun i => (i, labels i))

theorem slotMap_injective (labels : Fin 3 → V) :
    Function.Injective (fun i => (i, labels i)) := by
  intro i j h
  exact congrArg Prod.fst h

theorem slotSet_card (labels : Fin 3 → V) : (slotSet labels).card = 3 := by
  have hi : Set.InjOn (fun i => (i, labels i)) (↑(Finset.univ : Finset (Fin 3))) := by
    intro i _ j _ h
    exact slotMap_injective labels h
  unfold slotSet
  rw [Finset.card_image_iff.mpr hi]
  simp

theorem slotSet_isClique (O : Graph V) (labels : Fin 3 → V)
    (hpairs : ∀ i j, i ≠ j → O (labels i) (labels j) = true) :
    IsClique (slotGraph O) (slotSet labels) := by
  intro a ha b hb hab
  change a ∈ Finset.univ.image (fun i => (i, labels i)) at ha
  change b ∈ Finset.univ.image (fun i => (i, labels i)) at hb
  obtain ⟨i, _, rfl⟩ := Finset.mem_image.mp ha
  obtain ⟨j, _, rfl⟩ := Finset.mem_image.mp hb
  have hij : i ≠ j := by
    intro h
    subst j
    exact hab rfl
  simp only [slotGraph, Bool.and_eq_true, decide_eq_true_eq]
  exact ⟨hij, hpairs i j hij⟩

theorem indexedTriple_has_slotClique (O : Graph V) (labels : Fin 3 → V)
    (hpairs : ∀ i j, i ≠ j → O (labels i) (labels j) = true) :
    HasClique (slotGraph O) Finset.univ 3 := by
  refine ⟨slotSet labels, Finset.subset_univ _, ?_, slotSet_isClique O labels hpairs⟩
  simpa only [slotSet_card] using (Nat.le_refl 3)

theorem checkedSlotClique_excludes_indexedTriple (O : Graph V)
    (certificate : CliqueCertificate (Fin 3 × V))
    (hcheck : checkClique (slotGraph O) Finset.univ 3 certificate = true) :
    ¬ ∃ labels : Fin 3 → V, ∀ i j, i ≠ j → O (labels i) (labels j) = true := by
  rintro ⟨labels, hpairs⟩
  exact checkClique_sound (slotGraph O) Finset.univ 3 certificate hcheck
    (indexedTriple_has_slotClique O labels hpairs)

/- A repeated label is permitted only when its original self-loop is kept. -/
theorem repeated_label_edge (O : Graph V) (v : V) :
    slotGraph O ((0 : Fin 3), v) ((1 : Fin 3), v) = O v v := by
  simp [slotGraph]

/- One label with a loop already admits three independent positions. -/
theorem one_label_with_loop_has_slotTriple :
    HasClique (slotGraph (fun (_ _ : Fin 1) => true)) Finset.univ 3 := by
  apply indexedTriple_has_slotClique _ (fun _ => 0)
  intro i j hij
  rfl

#print axioms slotMap_injective
#print axioms slotSet_card
#print axioms slotSet_isClique
#print axioms indexedTriple_has_slotClique
#print axioms checkedSlotClique_excludes_indexedTriple
#print axioms repeated_label_edge
#print axioms one_label_with_loop_has_slotTriple
end ShoulderSideTriple20261008
