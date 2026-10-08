import GoodSideBlocks
import SeedSixGuards
import FourierOrientation

namespace AtlasIndependentPortAudit
open Matrix Mub6.Numerical Mub6.Classification.GoodMinor

theorem expanded_physical_good_side_statement (H : Matrix (Fin 6) (Fin 6) ℂ)
    (hunit : ∀ i j, Complex.normSq (H i j) = 1)
    (hgram : Hᴴ * H = (6 : ℂ) • (1 : Matrix (Fin 6) (Fin 6) ℂ)) :
    ∃ k : Fin 20,
      PhaseHadamard (H.submatrix id (sidePermutation k)) ∧
      (54/5 : ℝ) ≤ Complex.normSq (northeast (H.submatrix id (sidePermutation k))).det ∧
      (54/5 : ℝ) ≤ Complex.normSq (southwest (H.submatrix id (sidePermutation k))).det :=
  phaseHadamard_good_side_blocks ⟨hunit,hgram⟩

#print Mub6.Numerical.PhaseHadamard
#print FourierSeedBinding.seed
#print FourierSeedBinding.gramH
#print FourierSeedBinding.gramV
#print FourierSeedBinding.IsPhase
#print Hadamard6Extensions.FourierSide.actualSide
#print Hadamard6Extensions.FourierSide.radicalSide
#print axioms expanded_physical_good_side_statement
#print axioms Mub6.Classification.GoodMinor.phaseHadamard_good_side_blocks
#print axioms FourierSeedBinding.strict_radicand_g_positive
#print axioms FourierSeedBinding.strict_six_denominators_both_sheets
#print axioms Hadamard6Extensions.FourierSide.arbitrary_invertible_side_has_two_orientation_chart
end AtlasIndependentPortAudit
