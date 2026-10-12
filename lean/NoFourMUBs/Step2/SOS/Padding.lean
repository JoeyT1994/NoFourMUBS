import NoFourMUBs.Step2.SOS.Normalization

/-!
Zero padding lets the finite normalization checker compare all exponent
arrays in one 6 by 6 type. It does not change an injective moment. The only
sampling fact used is OAI's existing zero-first-row theorem.
-/

namespace NoFourMUBs.Step2.SOS.Normalization

open OAI.MUB6 OAI.MUB6.Certificate

def addZeroRows {p q : ℕ} (A : Matrix (Fin p) (Fin q) ℤ) :
    (n : ℕ) → Matrix (Fin (p + n)) (Fin q) ℤ
  | 0 => A
  | n + 1 => fun i j => Fin.cases 0 (fun i => addZeroRows A n i j) i

theorem addZeroRows_moment {p q : ℕ} (A : Matrix (Fin p) (Fin q) ℤ)
    (n : ℕ) (hn : p + n ≤ 6) (H : CMatrix) :
    injectiveMoment H (addZeroRows A n) = injectiveMoment H A := by
  induction n with
  | zero => rfl
  | succ n ih =>
    have hp : p + n < 6 := by omega
    have hz : ∀ j, addZeroRows A (n + 1) 0 j = 0 := by intro j; rfl
    have hd := injectiveMoment_zero_first_row hp H (addZeroRows A (n + 1)) hz
    exact hd.trans (ih (by omega))

def padEntries (A : ExponentCode) :
    Matrix (Fin (A.rows + (6 - A.rows))) (Fin (A.columns + (6 - A.columns))) ℤ :=
  addZeroRows (addZeroRows A.entries (6 - A.rows)).transpose
    (6 - A.columns) |>.transpose

def padCode (A : ExponentCode) : ExponentCode :=
  ⟨A.rows + (6 - A.rows), A.columns + (6 - A.columns), padEntries A⟩

theorem padCode_moment (A : ExponentCode) (hp : A.rows ≤ 6) (hq : A.columns ≤ 6)
    (H : CMatrix) : (padCode A).moment H = A.moment H := by
  unfold ExponentCode.moment padCode padEntries
  rw [injectiveMoment_transpose,
    addZeroRows_moment _ _ (by omega), injectiveMoment_transpose,
    addZeroRows_moment _ _ (by omega)]

def pad6 (A : ExponentCode) (hp : A.rows ≤ 6) (hq : A.columns ≤ 6) :
    Matrix (Fin 6) (Fin 6) ℤ :=
  (padEntries A).submatrix
    (Fin.cast (Nat.add_sub_of_le hp).symm)
    (Fin.cast (Nat.add_sub_of_le hq).symm)

theorem code_cast {p q r s : ℕ} (hp : p = r) (hq : q = s)
    (A : Matrix (Fin p) (Fin q) ℤ) :
    (⟨r, s, A.submatrix (Fin.cast hp.symm) (Fin.cast hq.symm)⟩ : ExponentCode) =
      ⟨p, q, A⟩ := by
  subst r s
  rfl

theorem pad6_code_eq (A : ExponentCode) (hp : A.rows ≤ 6) (hq : A.columns ≤ 6) :
    (⟨6, 6, pad6 A hp hq⟩ : ExponentCode) = padCode A :=
  code_cast (Nat.add_sub_of_le hp) (Nat.add_sub_of_le hq) (padEntries A)

theorem pad6_moment (A : ExponentCode) (hp : A.rows ≤ 6) (hq : A.columns ≤ 6)
    (H : CMatrix) : injectiveMoment H (pad6 A hp hq) = A.moment H := by
  change (⟨6, 6, pad6 A hp hq⟩ : ExponentCode).moment H = _
  rw [pad6_code_eq, padCode_moment A hp hq]

end NoFourMUBs.Step2.SOS.Normalization
