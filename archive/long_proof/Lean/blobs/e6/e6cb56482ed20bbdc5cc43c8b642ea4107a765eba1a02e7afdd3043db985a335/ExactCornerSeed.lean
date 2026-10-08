import RegularCarrierData
import RationalCircleCharts
/-! Four exact corner phases only. This module does not assert that a 6x6 Hadamard matrix exists in the carrier. -/
namespace Mub6.Numerical.RegularNonempty
open CircleCharts
set_option maxRecDepth 4000

noncomputable def seed0 : ℂ := signedCircle true ((-449422098913 : ℝ) / 1099511627776)
theorem seed0_unit : Complex.normSq seed0 = 1 := signedCircle_normSq _ _
theorem seed0_inside : MemRectangle (ClassificationCover.RegularBenchmark.carrier 1 1) seed0 := by
  change MemRectangle ⟨(-5986843/8388608 : ℚ), (-11973683/16777216 : ℚ), (11751843/16777216 : ℚ), (5875923/8388608 : ℚ)⟩ seed0
  norm_num [MemRectangle, seed0, signedCircle, signValue, circlePoint]

noncomputable def seed1 : ℂ := signedCircle true ((386660000861 : ℝ) / 1099511627776)
theorem seed1_unit : Complex.normSq seed1 = 1 := signedCircle_normSq _ _
theorem seed1_inside : MemRectangle (ClassificationCover.RegularBenchmark.carrier 1 2) seed1 := by
  change MemRectangle ⟨(-3271073/4194304 : ℚ), (-13084289/16777216 : ℚ), (-10501255/16777216 : ℚ), (-2625313/4194304 : ℚ)⟩ seed1
  norm_num [MemRectangle, seed1, signedCircle, signValue, circlePoint]

noncomputable def seed2 : ℂ := signedCircle true ((732194386213 : ℝ) / 1099511627776)
theorem seed2_unit : Complex.normSq seed2 = 1 := signedCircle_normSq _ _
theorem seed2_inside : MemRectangle (ClassificationCover.RegularBenchmark.carrier 2 1) seed2 := by
  change MemRectangle ⟨(-6468641/16777216 : ℚ), (-3234319/8388608 : ℚ), (-15480043/16777216 : ℚ), (-1935005/2097152 : ℚ)⟩ seed2
  norm_num [MemRectangle, seed2, signedCircle, signValue, circlePoint]

noncomputable def seed3 : ℂ := signedCircle false ((141394538488 : ℝ) / 1099511627776)
theorem seed3_unit : Complex.normSq seed3 = 1 := signedCircle_normSq _ _
theorem seed3_inside : MemRectangle (ClassificationCover.RegularBenchmark.carrier 2 2) seed3 := by
  change MemRectangle ⟨(16231341/16777216 : ℚ), (1014459/1048576 : ℚ), (4244819/16777216 : ℚ), (2122411/8388608 : ℚ)⟩ seed3
  norm_num [MemRectangle, seed3, signedCircle, signValue, circlePoint]

theorem exact_corner_seed_exists :
    ∃ a b c d : ℂ,
      Complex.normSq a = 1 ∧ Complex.normSq b = 1 ∧
      Complex.normSq c = 1 ∧ Complex.normSq d = 1 ∧
      MemRectangle (ClassificationCover.RegularBenchmark.carrier 1 1) a ∧
      MemRectangle (ClassificationCover.RegularBenchmark.carrier 1 2) b ∧
      MemRectangle (ClassificationCover.RegularBenchmark.carrier 2 1) c ∧
      MemRectangle (ClassificationCover.RegularBenchmark.carrier 2 2) d := by
  exact ⟨seed0, seed1, seed2, seed3, seed0_unit, seed1_unit, seed2_unit,
    seed3_unit, seed0_inside, seed1_inside, seed2_inside, seed3_inside⟩

#print axioms seed0_unit
#print axioms seed0_inside
#print axioms seed1_unit
#print axioms seed1_inside
#print axioms seed2_unit
#print axioms seed2_inside
#print axioms seed3_unit
#print axioms seed3_inside
#print axioms exact_corner_seed_exists
end Mub6.Numerical.RegularNonempty
