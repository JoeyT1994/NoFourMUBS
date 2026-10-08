import Hadamard6.GramInvariant

/-! A lightweight entrywise complement identity, independent of side reconstruction. -/
set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace StrictReconstruction20261007
open scoped ComplexConjugate
noncomputable section

theorem hermitian_three_complement (G : Hadamard6.Mat3)
    (hG : G.IsHermitian) (hdiag : ∀ i, G i i = 3) :
    (!![3, conj (-conj (G 0 1)), conj (-G 2 0);
        -conj (G 0 1), 3, conj (-conj (G 1 2));
        -G 2 0, -conj (G 1 2), 3] : Hadamard6.Mat3) =
      Hadamard6.sixI3 - G := by
  have h10 : conj (G 0 1) = G 1 0 := by
    simpa only [Complex.star_def] using hG.apply (1 : Fin 3) 0
  have h21 : conj (G 1 2) = G 2 1 := by
    simpa only [Complex.star_def] using hG.apply (2 : Fin 3) 1
  have h02 : conj (G 2 0) = G 0 2 := by
    simpa only [Complex.star_def] using hG.apply (0 : Fin 3) 2
  ext i j
  fin_cases i <;> fin_cases j <;>
    simp [Hadamard6.sixI3, Matrix.sub_apply, Matrix.smul_apply,
      hdiag, h10, h21, h02]

#print axioms hermitian_three_complement

theorem unit_seed_explicit_complement (E : Hadamard6.Mat3)
    (hE : Hadamard6.EntrywiseUnit E) :
    (!![3, conj (-conj ((E * Matrix.conjTranspose E) 0 1)),
          conj (-(E * Matrix.conjTranspose E) 2 0);
        -conj ((E * Matrix.conjTranspose E) 0 1), 3,
          conj (-conj ((E * Matrix.conjTranspose E) 1 2));
        -(E * Matrix.conjTranspose E) 2 0,
          -conj ((E * Matrix.conjTranspose E) 1 2), 3] : Hadamard6.Mat3) =
      Hadamard6.sixI3 - E * Matrix.conjTranspose E :=
  hermitian_three_complement (E * Matrix.conjTranspose E)
    (Matrix.isHermitian_mul_conjTranspose_self E) (Hadamard6.rowGram_diagonal_three hE)

#print axioms unit_seed_explicit_complement

end
end StrictReconstruction20261007

