import NoFourMUBs.Reuse.Archive.SideModeCoefficientAlgebra
import NoFourMUBs.Reuse.Archive.SideMatrixGram
import NoFourMUBs.Reuse.Archive.SideFourierMatrixAlgebra

/-! Literal matrix factorization from the recovered four Fourier coefficients. -/
set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace StrictReconstruction20261007.SideIntrinsic
open scoped ComplexConjugate
noncomputable section

theorem mode_core_phase_factor (mu nu A B C D : ℂ) (hA : A ≠ 0) :
    sideMatrixCore mu nu (A^2/conj A) ((B/conj A)*conj (A^2/conj A))
      ((C/A)*(A^2/conj A)) ((D/conj A)*conj (A^2/conj A)) *
      phaseDiagonal (A/conj A) = sideMatrixCore mu nu A B C D := by
  obtain ⟨h1,h2,h3,h4⟩ := mode_phase_entries A B C D hA
  simp only [map_div₀,map_pow,show conj (conj A)=A from by simp] at h1 h2 h3 h4
  ext i j
  fin_cases i <;> fin_cases j <;>
    simp [sideMatrixCore,phaseDiagonal,Matrix.mul_apply,Matrix.diagonal_apply,
      Fin.sum_univ_three,h1,h2,h3,h4]

#print axioms mode_core_phase_factor
end
end StrictReconstruction20261007.SideIntrinsic
