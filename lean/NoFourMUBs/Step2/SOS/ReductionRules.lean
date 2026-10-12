import NoFourMUBs.Step2.SOS.Normalization

/-!
The two reduction rules required by the new SOS data. These reuse the exact
OAI contraction and seven-row boundary theorems; no rank computation or
projected relation is an input.
-/

namespace NoFourMUBs.Step2.SOS.Normalization

open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate

theorem degree_one_reduction {p q : ℕ} (hp : p < 6)
    {H : CMatrix} (hH : IsHadamard H)
    (A : Matrix (Fin (p + 1)) (Fin q) ℤ) (v w : Fin q) (hvw : v ≠ w)
    (hA : A 0 = Pi.single v 1 - Pi.single w 1) :
    injectiveMoment H A =
      -(∑ j, injectiveMoment H (mergeFirst A j)) / ((6 - p : ℕ) : ℝ) := by
  have h := injectiveMoment_first_row_contraction hp hH A v w hvw hA
  have hn : ((6 - p : ℕ) : ℝ) ≠ 0 := by
    exact_mod_cast (Nat.sub_pos_of_lt hp).ne'
  apply (eq_div_iff hn).2
  linarith

/-- Split the first row as u + (A₀-u), retaining the other five rows. -/
def splitFirst {q : ℕ} (A : Matrix (Fin 6) (Fin q) ℤ) (u : Fin q → ℤ) :
    Matrix (Fin 7) (Fin q) ℤ :=
  Fin.cons u (Fin.cons (A 0 - u) (Fin.tail A))

theorem merge_split_first {q : ℕ} (A : Matrix (Fin 6) (Fin q) ℤ)
    (u : Fin q → ℤ) : mergeFirst (splitFirst A u) 0 = A := by
  ext i j
  refine Fin.cases ?_ (fun k => ?_) i
  · change (A 0 j - u j) + u j = A 0 j
    ring
  · change A k.succ j + (if k.succ = 0 then u j else 0) = A k.succ j
    simp

/-- The six-row split has coefficient -1 because the seventh label cannot
be sampled injectively from six labels. -/
theorem six_row_reduction {q : ℕ} {H : CMatrix} (hH : IsHadamard H)
    (A : Matrix (Fin 6) (Fin q) ℤ) (v w : Fin q) (hvw : v ≠ w) :
    injectiveMoment H A = -∑ j : Fin 5,
      injectiveMoment H (mergeFirst (splitFirst A (Pi.single v 1 - Pi.single w 1))
        j.succ) := by
  have h := injectiveMoment_seven_row_boundary hH
    (splitFirst A (Pi.single v 1 - Pi.single w 1)) v w hvw rfl
  rw [Fin.sum_univ_succ, merge_split_first] at h
  linarith

end NoFourMUBs.Step2.SOS.Normalization
