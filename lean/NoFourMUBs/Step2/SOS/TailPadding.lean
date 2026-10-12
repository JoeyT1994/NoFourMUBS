import NoFourMUBs.Step2.SOS.Padding
import Mathlib.Data.Fin.Rev

/-! Move the existing zero padding to the end of the array, as in the
original target, using two existing permutation invariances. -/

namespace NoFourMUBs.Step2.SOS.Normalization
open OAI.MUB6 OAI.MUB6.Certificate

def tailPad6 (A : ExponentCode) (hp : A.rows ≤ 6) (hq : A.columns ≤ 6) :
    Matrix (Fin 6) (Fin 6) ℤ :=
  (pad6 ⟨A.rows, A.columns, A.entries.submatrix Fin.rev Fin.rev⟩ hp hq).submatrix
    Fin.rev Fin.rev

theorem tailPad6_moment (A : ExponentCode) (hp : A.rows ≤ 6) (hq : A.columns ≤ 6)
    (H : CMatrix) : injectiveMoment H (tailPad6 A hp hq) = A.moment H := by
  calc
    _ = injectiveMoment H
        (pad6 ⟨A.rows, A.columns, A.entries.submatrix Fin.rev Fin.rev⟩ hp hq) :=
      (moment_permute H _ Fin.revPerm Fin.revPerm).symm
    _ = injectiveMoment H (A.entries.submatrix Fin.rev Fin.rev) :=
      pad6_moment ⟨A.rows, A.columns, A.entries.submatrix Fin.rev Fin.rev⟩ hp hq H
    _ = A.moment H := (moment_permute H A.entries Fin.revPerm Fin.revPerm).symm

end NoFourMUBs.Step2.SOS.Normalization
