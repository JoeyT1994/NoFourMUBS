import OAI.Analysis.MutuallyUnbiased.Certificate.Canonical
import OAI.Analysis.MutuallyUnbiased.Certificate.ExponentCode
import OAI.Analysis.MutuallyUnbiased.Moments.MomentContraction

/-!
Shared proof objects for the additional moment normalization. Every semantic
step below is an application of an existing OAI lemma. The generated data
need only specify finite permutations and exponent matrices; the kernel
checks their equalities. No canonicalization algorithm is trusted.
-/

namespace NoFourMUBs.Step2.SOS.Normalization

open OAI.MUB6 OAI.MUB6.Certificate

deriving instance DecidableEq for ExponentCode

/-- A finite certificate that two exponent arrays have the same moment. -/
inductive Trace : ExponentCode → ExponentCode → Type
  | refl (A : ExponentCode) : Trace A A
  | transpose (A : ExponentCode) :
      Trace A ⟨A.columns, A.rows, A.entries.transpose⟩
  | negate (A : ExponentCode) : Trace A ⟨A.rows, A.columns, -A.entries⟩
  | permute (A : ExponentCode)
      (σ : Equiv.Perm (Fin A.rows)) (τ : Equiv.Perm (Fin A.columns)) :
      Trace A ⟨A.rows, A.columns, fun i j => A.entries (σ i) (τ j)⟩
  | deleteRow {p q : ℕ} (hp : p < 6)
      (A : Matrix (Fin (p + 1)) (Fin q) ℤ)
      (σ : Equiv.Perm (Fin (p + 1))) (hz : ∀ j, A (σ 0) j = 0) :
      Trace ⟨p + 1, q, A⟩ ⟨p, q, fun i j => A (σ i.succ) j⟩
  | deleteColumn {p q : ℕ} (hq : q < 6)
      (A : Matrix (Fin p) (Fin (q + 1)) ℤ)
      (σ : Equiv.Perm (Fin (q + 1))) (hz : ∀ i, A i (σ 0) = 0) :
      Trace ⟨p, q + 1, A⟩ ⟨p, q, fun i j => A i (σ j.succ)⟩
  | trans {A B C : ExponentCode} : Trace A B → Trace B C → Trace A C
  | equal {A B : ExponentCode} : A = B → Trace A B

/-- Soundness is proved once; individual certificates contain only finite data. -/
theorem Trace.sound {A B : ExponentCode} (t : Trace A B)
    {H : CMatrix} (hH : IsHadamard H) : A.moment H = B.moment H := by
  induction t with
  | refl => rfl
  | transpose A => exact (injectiveMoment_transpose H A.entries).symm
  | negate A => exact (injectiveMoment_neg hH A.entries).symm
  | permute A σ τ => exact moment_permute H A.entries σ τ
  | deleteRow hp A σ hz => exact moment_delete_zero_row hp H A σ hz
  | deleteColumn hq A σ hz => exact moment_delete_zero_column hq H A σ hz
  | trans _ _ h₁ h₂ => exact h₁.trans h₂
  | equal h => exact congrArg (fun A => A.moment H) h

end NoFourMUBs.Step2.SOS.Normalization
