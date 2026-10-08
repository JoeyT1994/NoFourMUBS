import Mathlib.Data.Complex.Basic
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Data.Fintype.Basic
import Mathlib.Algebra.BigOperators.Ring.Finset
import Mathlib.Tactic.Ring

/-! Concrete physical target, using normalized complex basis columns.
The no-four-MUB proposition is defined here, not asserted as a theorem. -/
namespace Mub6

abbrev Vector := Fin 6 → ℂ
abbrev BasisMatrix := Fin 6 → Fin 6 → ℂ

def overlap (B C : BasisMatrix) (i j : Fin 6) : ℂ :=
  ∑ k : Fin 6, star (B k i) * C k j

def IsOrthonormalBasis (B : BasisMatrix) : Prop :=
  ∀ i j : Fin 6, overlap B B i j = if i = j then 1 else 0

def IsUnbiased (B C : BasisMatrix) : Prop :=
  ∀ i j : Fin 6, Complex.normSq (overlap B C i j) = (1 : ℝ) / 6

def IsMUBQuartet (B : Fin 4 → BasisMatrix) : Prop :=
  (∀ a, IsOrthonormalBasis (B a)) ∧
    ∀ a b, a ≠ b → IsUnbiased (B a) (B b)

def NoFourMUB6 : Prop := ¬ ∃ B : Fin 4 → BasisMatrix, IsMUBQuartet B

theorem overlap_swap (B C : BasisMatrix) (i j : Fin 6) :
    overlap C B j i = star (overlap B C i j) := by
  simp [overlap, mul_comm]

theorem unbiased_symm {B C : BasisMatrix} (h : IsUnbiased B C) :
    IsUnbiased C B := by
  intro i j
  rw [overlap_swap]
  simpa using h j i

def rephase (d e : Fin 6 → ℂ) (B : BasisMatrix) : BasisMatrix :=
  fun r i => d r * B r i * e i

/-- A common ambient phase frame cancels in overlaps; independent ray phases
remain explicitly on the two sides. -/
theorem overlap_rephase (B C : BasisMatrix) (d e f : Fin 6 → ℂ)
    (hd : ∀ r, Complex.normSq (d r) = 1) (i j : Fin 6) :
    overlap (rephase d e B) (rephase d f C) i j =
      star (e i) * overlap B C i j * f j := by
  have hd' (r : Fin 6) : star (d r) * d r = 1 := by
    change (starRingEnd ℂ) (d r) * d r = 1
    rw [← Complex.normSq_eq_conj_mul_self, hd r]
    rfl
  simp only [overlap, rephase, star_mul]
  rw [Finset.mul_sum, Finset.sum_mul]
  apply Finset.sum_congr rfl
  intro r _
  calc
    _ = (star (d r) * d r) * (star (e i) * (star (B r i) * C r j) * f j) := by ring
    _ = _ := by rw [hd']; ring

theorem unbiased_rephase {B C : BasisMatrix} (h : IsUnbiased B C)
    (d e f : Fin 6 → ℂ) (hd : ∀ r, Complex.normSq (d r) = 1)
    (he : ∀ i, Complex.normSq (e i) = 1)
    (hf : ∀ j, Complex.normSq (f j) = 1) :
    IsUnbiased (rephase d e B) (rephase d f C) := by
  intro i j
  rw [overlap_rephase B C d e f hd i j]
  change Complex.normSq ((starRingEnd ℂ) (e i) * overlap B C i j * f j) = 1 / 6
  simpa only [Complex.normSq_mul, Complex.normSq_conj, he i, hf j, one_mul,
    mul_one] using h i j

theorem orthonormal_rephase {B : BasisMatrix} (h : IsOrthonormalBasis B)
    (d e : Fin 6 → ℂ) (hd : ∀ r, Complex.normSq (d r) = 1)
    (he : ∀ i, Complex.normSq (e i) = 1) :
    IsOrthonormalBasis (rephase d e B) := by
  intro i j
  rw [overlap_rephase B B d e e hd i j, h i j]
  by_cases hij : i = j
  · subst j
    have hp : star (e i) * e i = 1 := by
      change (starRingEnd ℂ) (e i) * e i = 1
      rw [← Complex.normSq_eq_conj_mul_self, he i]
      rfl
    simpa using hp
  · simp [hij]

/-- The concrete quartet property survives one common ambient phase frame
and independent phase choices for each basis ray. -/
theorem quartet_rephase {B : Fin 4 → BasisMatrix} (h : IsMUBQuartet B)
    (d : Fin 6 → ℂ) (e : Fin 4 → Fin 6 → ℂ)
    (hd : ∀ r, Complex.normSq (d r) = 1)
    (he : ∀ a i, Complex.normSq (e a i) = 1) :
    IsMUBQuartet (fun a => rephase d (e a) (B a)) := by
  constructor
  · intro a
    exact orthonormal_rephase (h.1 a) d (e a) hd (he a)
  · intro a b hab
    exact unbiased_rephase (h.2 a b hab) d (e a) (e b) hd (he a) (he b)

#print axioms overlap_swap
#print axioms unbiased_symm
#print axioms overlap_rephase
#print axioms unbiased_rephase
#print axioms orthonormal_rephase
#print axioms quartet_rephase
end Mub6
