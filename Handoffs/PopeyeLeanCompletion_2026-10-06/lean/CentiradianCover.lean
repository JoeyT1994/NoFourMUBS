import Mathlib.Data.Real.Basic
import Mathlib.Data.Finset.Basic
import Mathlib.Tactic.Linarith

/-! Sound composition rules for exact finite bisection covers. Every boundary
is retained. The actual 114019-leaf archive has not been instantiated here. -/
set_option autoImplicit false

namespace Centiradian20261006
noncomputable section

structure PhaseBox (n : ℕ) where
  lower : Fin n → ℝ
  upper : Fin n → ℝ

def PhaseBox.Contains {n : ℕ} (B : PhaseBox n) (x : Fin n → ℝ) : Prop :=
  ∀ j, B.lower j ≤ x j ∧ x j ≤ B.upper j

def PhaseBox.midpoint {n : ℕ} (B : PhaseBox n) (k : Fin n) : ℝ :=
  (B.lower k+B.upper k)/2

def PhaseBox.left {n : ℕ} (B : PhaseBox n) (k : Fin n) : PhaseBox n :=
  ⟨B.lower, Function.update B.upper k (B.midpoint k)⟩

def PhaseBox.right {n : ℕ} (B : PhaseBox n) (k : Fin n) : PhaseBox n :=
  ⟨Function.update B.lower k (B.midpoint k), B.upper⟩

theorem PhaseBox.bisection_covers {n : ℕ} (B : PhaseBox n) (k : Fin n)
    (x : Fin n → ℝ) (hx : B.Contains x) : (B.left k).Contains x ∨ (B.right k).Contains x := by
  by_cases hm : x k ≤ B.midpoint k
  · left
    intro j
    by_cases hj : j=k
    · subst j
      exact ⟨(hx k).1, by simpa only [PhaseBox.left, Function.update_self] using hm⟩
    · simpa only [PhaseBox.left, Function.update_of_ne hj] using hx j
  · right
    intro j
    by_cases hj : j=k
    · subst j
      exact ⟨by simpa only [PhaseBox.right, Function.update_self] using (le_of_not_ge hm), (hx k).2⟩
    · simpa only [PhaseBox.right, Function.update_of_ne hj] using hx j

/-- A certificate must supply an actual checked rejection at every leaf.
Branch assembly itself is independent of numerical arithmetic or path strings. -/
inductive CertifiedCover {n : ℕ} (P : (Fin n → ℝ) → Prop) : PhaseBox n → Prop
  | leaf {B : PhaseBox n} (reject : ∀ x, B.Contains x → P x → False) : CertifiedCover P B
  | split {B : PhaseBox n} (k : Fin n)
      (left : CertifiedCover P (B.left k)) (right : CertifiedCover P (B.right k)) : CertifiedCover P B

theorem CertifiedCover.sound {n : ℕ} {P : (Fin n → ℝ) → Prop} {B : PhaseBox n}
    (cert : CertifiedCover P B) : ∀ x, B.Contains x → P x → False := by
  induction cert with
  | leaf reject => exact reject
  | @split B k left right ihLeft ihRight =>
    intro x hx hp
    rcases B.bisection_covers k x hx with hl | hr
    · exact ihLeft x hl hp
    · exact ihRight x hr hp

/-- A finite root cover and checked terminal certificates imply rejection on
the entire phase domain. The root-cover premise cannot be inferred from a
count, numerical agreement, or a list of reference points. -/
theorem finite_root_cover_sound {n : ℕ} {ι : Type*} (roots : Finset ι)
    (B : ι → PhaseBox n) (P Domain : (Fin n → ℝ) → Prop)
    (cover : ∀ x, Domain x → ∃ i ∈ roots, (B i).Contains x)
    (checked : ∀ i ∈ roots, CertifiedCover P (B i)) : ∀ x, Domain x → P x → False := by
  intro x hx hp
  obtain ⟨i, hi, hb⟩ := cover x hx
  exact (checked i hi).sound x hb hp

end
end Centiradian20261006

#print axioms Centiradian20261006.PhaseBox.bisection_covers
#print axioms Centiradian20261006.CertifiedCover.sound
#print axioms Centiradian20261006.finite_root_cover_sound
