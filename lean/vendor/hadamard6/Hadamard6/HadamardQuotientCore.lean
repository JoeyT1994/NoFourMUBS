import Hadamard6.TaoOrbit

/-! Shared declarations moved unchanged from HadamardQuotient.lean. -/

noncomputable section
namespace Hadamard6

/-- The type of order-six Hadamard matrices before quotienting. -/
abbrev Had6 := {H : Mat6 // IsHadamard H}

def had6EquivalenceSetoid : Setoid Had6 where
  r H K := Equivalent H.1 K.1
  iseqv := ⟨
    (fun H ↦ equivalent_refl H.1),
    (fun h ↦ equivalent_symm h),
    (fun h₁ h₂ ↦ equivalent_trans h₁ h₂)⟩

/-- Equivalence classes of order-six complex Hadamard matrices. -/
abbrev HadamardClass6 := Quotient had6EquivalenceSetoid

def TaoClass : HadamardClass6 → Prop :=
  Quotient.lift
    (fun H : Had6 ↦ IsTaoOrbit H.1)
    (by
      intro H K hHK
      exact propext (equivalent_isTaoOrbit_iff hHK))

def TaoClasses : Set HadamardClass6 := {q | TaoClass q}

@[simp] theorem taoClass_mk (H : Had6) :
    TaoClass (Quotient.mk had6EquivalenceSetoid H) ↔ IsTaoOrbit H.1 :=
  Iff.rfl


end Hadamard6
