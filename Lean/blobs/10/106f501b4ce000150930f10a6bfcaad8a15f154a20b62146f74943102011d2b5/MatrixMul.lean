import Mathlib.Data.Complex.Basic
import Mathlib.LinearAlgebra.Matrix.Determinant.Basic
import Mathlib.LinearAlgebra.Matrix.ConjTranspose
import Mathlib.LinearAlgebra.Matrix.Notation

open Matrix

def probeSeed (a b c d : ℂ) : Matrix (Fin 3) (Fin 3) ℂ :=
  ![![1,1,1], ![1,a,b], ![1,c,d]]

example (a b c d : ℂ) (i j : Fin 3) :
    ((probeSeed a b c d) * (probeSeed a b c d)ᴴ) i j =
      ∑ k : Fin 3, (probeSeed a b c d) i k * (probeSeed a b c d)ᴴ k j := by
  rfl

example (a b c d : ℂ) (i j : Fin 3) :
    (((6 : ℂ) • (1 : Matrix (Fin 3) (Fin 3) ℂ)) -
      (probeSeed a b c d) * (probeSeed a b c d)ᴴ) i j =
      (6 : ℂ) * (if i = j then 1 else 0) -
        ∑ k : Fin 3, (probeSeed a b c d) i k * (probeSeed a b c d)ᴴ k j := by
  simp [Matrix.sub_apply, Matrix.smul_apply, Matrix.one_apply, Matrix.mul_apply]
