import SideMatrixGram
import SideSeedComplement

/-! Bind the literal Gram matrix to the actual unit seed's complementary row Gram. -/
set_option autoImplicit false
set_option maxHeartbeats 1500000

namespace StrictReconstruction20261007
open Centiradian20261006
open scoped ComplexConjugate
noncomputable section

theorem reconstructionGram_eq_seedComplement (E : Hadamard6.Mat3)
    (hE : Hadamard6.EntrywiseUnit E) :
    reconstructionGram (seedS E) (seedT E) (seedR E) =
      Hadamard6.sixI3 - E * Matrix.conjTranspose E := by
  simpa only [reconstructionGram, seedS, seedT, seedR] using
    unit_seed_explicit_complement E hE

/-- Actual seed theorem: literal side reconstruction has precisely the complement Gram. -/
theorem strict_seed_complement_gram_exists (E : Hadamard6.Mat3) (hE : Hadamard6.EntrywiseUnit E)
    (hR : 0 < gramInvariant (seedS E) (seedT E) (seedR E))
    {epsilon : ℝ} (he : epsilon ^ 2 = 1) :
    ∃ delta : ℂ,
      delta ^ 2 = prescribedDeltaRadicand (seedS E) (seedT E) (seedR E) epsilon ∧
      0 ≤ (prescribedDF (seedS E) (seedT E) (seedR E) epsilon delta).re ∧
      (3 : ℂ) • (prescribedMatrix (seedS E) (seedT E) (seedR E) epsilon delta *
        Matrix.conjTranspose (prescribedMatrix (seedS E) (seedT E) (seedR E) epsilon delta)) =
          Hadamard6.sixI3 - E * Matrix.conjTranspose E := by
  obtain ⟨delta, hd, ho, hgram⟩ := strict_seed_matrix_gram_exists E hE hR he
  refine ⟨delta, hd, ho, ?_⟩
  rw [hgram, reconstructionGram_eq_seedComplement E hE]

end
end StrictReconstruction20261007

#print axioms StrictReconstruction20261007.reconstructionGram_eq_seedComplement
#print axioms StrictReconstruction20261007.strict_seed_complement_gram_exists
