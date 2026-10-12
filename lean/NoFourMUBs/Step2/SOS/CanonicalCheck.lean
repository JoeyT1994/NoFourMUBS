import NoFourMUBs.Step2.SOS.Padding

/-!
Canonicalization certificates have one pair of permutations and two bits.
The kernel checks equality of the transformed, zero-padded integer arrays.
Soundness reuses the existing moment symmetries and padding lemma.
-/

namespace NoFourMUBs.Step2.SOS.Normalization

open OAI.MUB6 OAI.MUB6.Certificate

structure CanonicalWitness where
  transpose : Bool
  negate : Bool
  rows : Equiv.Perm (Fin 6)
  columns : Equiv.Perm (Fin 6)

def CanonicalWitness.transform (w : CanonicalWitness)
    (A : Matrix (Fin 6) (Fin 6) ℤ) : Matrix (Fin 6) (Fin 6) ℤ :=
  let B := if w.transpose then A.transpose else A
  let C := if w.negate then -B else B
  C.submatrix w.rows w.columns

theorem CanonicalWitness.moment (w : CanonicalWitness)
    (A : Matrix (Fin 6) (Fin 6) ℤ) {H : CMatrix} (hH : IsHadamard H) :
    injectiveMoment H (w.transform A) = injectiveMoment H A := by
  let B := if w.transpose then A.transpose else A
  let C := if w.negate then -B else B
  calc
    injectiveMoment H (w.transform A) = injectiveMoment H C :=
      (moment_permute H C w.rows w.columns).symm
    _ = injectiveMoment H A := by
      dsimp [C, B]
      cases w.transpose <;> cases w.negate <;>
        simp only [Bool.false_eq_true, ↓reduceIte,
          injectiveMoment_neg hH, injectiveMoment_transpose]

theorem canonical_of_padded (A B : ExponentCode)
    (ha : A.rows ≤ 6 ∧ A.columns ≤ 6) (hb : B.rows ≤ 6 ∧ B.columns ≤ 6)
    (w : CanonicalWitness)
    (hcheck : w.transform (pad6 A ha.1 ha.2) = pad6 B hb.1 hb.2)
    {H : CMatrix} (hH : IsHadamard H) : A.moment H = B.moment H := by
  rw [← pad6_moment A ha.1 ha.2 H, ← pad6_moment B hb.1 hb.2 H, ← hcheck]
  exact (w.moment _ hH).symm

end NoFourMUBs.Step2.SOS.Normalization
