import FormalCore
import Hadamard6.BlockGram
import LiftedCarrierCover

/-! A source-level bridge in Lean 4.33 between the numerical Fin 6 carrier
and the pinned classification's Fin 3 ⊕ Fin 3 row-Gram convention. -/
namespace ClassificationCover
open Hadamard6
open Mub6.Numerical

def indexEquiv : I6 ≃ Fin 6 := finSumFinEquiv

def toPublic (H : Mub6.BasisMatrix) : Mat6 :=
  Matrix.submatrix H indexEquiv indexEquiv

def toNumerical (H : Mat6) : Mub6.BasisMatrix :=
  H.submatrix indexEquiv.symm indexEquiv.symm

theorem roundtrip_numerical (H : Mub6.BasisMatrix) :
    toNumerical (toPublic H) = H := by
  ext i j
  simp [toPublic, toNumerical, Matrix.submatrix]

theorem roundtrip_public (H : Mat6) : toPublic (toNumerical H) = H := by
  ext i j
  simp [toPublic, toNumerical, Matrix.submatrix]

theorem public_of_numerical {H : Mub6.BasisMatrix} (hH : PhaseHadamard H) :
    IsHadamard (toPublic H) := by
  have hc : (toPublic H).conjTranspose * toPublic H = (6 : ℂ) • (1 : Mat6) := by
    change (Matrix.submatrix (H : Matrix (Fin 6) (Fin 6) ℂ) indexEquiv indexEquiv).conjTranspose *
      Matrix.submatrix (H : Matrix (Fin 6) (Fin 6) ℂ) indexEquiv indexEquiv = _
    rw [Matrix.conjTranspose_submatrix, Matrix.submatrix_mul_equiv,
      hH.2, Matrix.submatrix_smul, Matrix.submatrix_one_equiv]
  have hright : (toPublic H).conjTranspose * ((6 : ℂ)⁻¹ • toPublic H) = 1 := by
    rw [Matrix.mul_smul, hc, smul_smul]
    norm_num
  have hleft := mul_eq_one_comm.mp hright
  have hs := congrArg (fun M : Mat6 => (6 : ℂ) • M) hleft
  refine ⟨fun i j => hH.1 (indexEquiv i) (indexEquiv j), ?_⟩
  simpa [Matrix.smul_mul] using hs

theorem numerical_of_public {H : Mat6} (hH : IsHadamard H) :
    PhaseHadamard (toNumerical H) := by
  refine ⟨fun i j => hH.1 (indexEquiv.symm i) (indexEquiv.symm j), ?_⟩
  simpa [toNumerical, Matrix.conjTranspose_submatrix, Matrix.submatrix_mul_equiv,
    hadamard_column_gram hH, Matrix.submatrix_smul, Matrix.submatrix_one_equiv]

theorem physical_conventions_equivalent (H : Mub6.BasisMatrix) :
    PhaseHadamard H ↔ IsHadamard (toPublic H) := by
  constructor
  · exact public_of_numerical
  · intro h
    simpa [roundtrip_numerical] using numerical_of_public h

/-- No physical branch is removed. All exceptional matrices enter this
finite outer cover through the same verified indexing and dephasing maps. -/
theorem every_numerical_carrier_has_covered_representative
    (depth : ℕ) {H : Mub6.BasisMatrix} (hH : PhaseHadamard H) :
    ∃ (K : Mat6) (cell : Cell depth),
      Equivalent (toPublic H) K ∧ PhaseHadamard (toNumerical K) ∧
      IsDephased K ∧ CellContains depth cell K := by
  rcases every_hadamard_has_dephased_covered_representative depth (public_of_numerical hH)
    with ⟨K, cell, heq, hk, hd, hc⟩
  exact ⟨K, cell, heq, numerical_of_public hk, hd, hc⟩

#print axioms roundtrip_numerical
#print axioms public_of_numerical
#print axioms numerical_of_public
#print axioms physical_conventions_equivalent
#print axioms every_numerical_carrier_has_covered_representative
end ClassificationCover
