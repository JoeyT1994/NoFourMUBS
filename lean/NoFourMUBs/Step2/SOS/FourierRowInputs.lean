import NoFourMUBs.Step2.SOS.FourierProducts
import OAI.Analysis.MutuallyUnbiased.PairTargets.PartitionRules

namespace NoFourMUBs.Step2.SOS.Semantics
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def fourierInput0 : Matrix (Fin 6) (Fin 4) ℤ := ![![1, -3, -1, 3], ![1, 0, -1, 0], ![1, 1, -1, -1], ![-1, 0, 1, 0], ![-1, 0, 1, 0], ![-1, 2, 1, -2]]

theorem fourierInputZero0 {H : CMatrix} (hH : IsHadamard H)
    (hF : ∀ π : Equiv.Perm Coord, g H (permuteCharge π alpha) = 0)
    (hFt : ∀ π : Equiv.Perm Coord, g H.transpose (permuteCharge π alpha) = 0) :
    (∑ j : Fin 15, (![((1 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput0 (EqualityPatterns.family4.label 0)), ((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput0 (EqualityPatterns.family4.label 1)), ((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput0 (EqualityPatterns.family4.label 2)), ((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput0 (EqualityPatterns.family4.label 3)), ((5 : ℝ) / 54) * injectiveMoment H (groupedColumns fourierInput0 (EqualityPatterns.family4.label 4)), ((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput0 (EqualityPatterns.family4.label 5)), ((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput0 (EqualityPatterns.family4.label 6)), ((5 : ℝ) / 54) * injectiveMoment H (groupedColumns fourierInput0 (EqualityPatterns.family4.label 7)), ((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput0 (EqualityPatterns.family4.label 8)), ((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput0 (EqualityPatterns.family4.label 9)), ((5 : ℝ) / 54) * injectiveMoment H (groupedColumns fourierInput0 (EqualityPatterns.family4.label 10)), ((5 : ℝ) / 54) * injectiveMoment H (groupedColumns fourierInput0 (EqualityPatterns.family4.label 11)), ((5 : ℝ) / 54) * injectiveMoment H (groupedColumns fourierInput0 (EqualityPatterns.family4.label 12)), ((5 : ℝ) / 54) * injectiveMoment H (groupedColumns fourierInput0 (EqualityPatterns.family4.label 13)), ((5 : ℝ) / 18) * injectiveMoment H (groupedColumns fourierInput0 (EqualityPatterns.family4.label 14))] j)) = 0 := by
  have hshape : (fun i => fourierInput0 i 0) = alpha := by
    exact funext (by decide +kernel)
  have hr := fourier_products_partition_zero hH hF hFt fourierInput0 0 hshape
    EqualityPatterns.family4 EqualityPatterns.covers4
  rw [PairTargetSemantics.sum_fin_fifteen] at hr
  simp only [PairTargetSemantics.partitionWeight4_0, PairTargetSemantics.partitionWeight4_1, PairTargetSemantics.partitionWeight4_2, PairTargetSemantics.partitionWeight4_3, PairTargetSemantics.partitionWeight4_4, PairTargetSemantics.partitionWeight4_5, PairTargetSemantics.partitionWeight4_6, PairTargetSemantics.partitionWeight4_7, PairTargetSemantics.partitionWeight4_8, PairTargetSemantics.partitionWeight4_9, PairTargetSemantics.partitionWeight4_10, PairTargetSemantics.partitionWeight4_11, PairTargetSemantics.partitionWeight4_12, PairTargetSemantics.partitionWeight4_13, PairTargetSemantics.partitionWeight4_14] at hr
  convert hr using 1 <;> norm_num [Fin.sum_univ_succ] <;> ring

def fourierInput1 : Matrix (Fin 6) (Fin 4) ℤ := ![![1, -3, -1, 3], ![1, 0, -1, 0], ![1, 1, -1, -1], ![-1, 0, 1, 0], ![-1, 1, 1, -1], ![-1, 1, 1, -1]]

theorem fourierInputZero1 {H : CMatrix} (hH : IsHadamard H)
    (hF : ∀ π : Equiv.Perm Coord, g H (permuteCharge π alpha) = 0)
    (hFt : ∀ π : Equiv.Perm Coord, g H.transpose (permuteCharge π alpha) = 0) :
    (∑ j : Fin 15, (![((1 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput1 (EqualityPatterns.family4.label 0)), ((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput1 (EqualityPatterns.family4.label 1)), ((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput1 (EqualityPatterns.family4.label 2)), ((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput1 (EqualityPatterns.family4.label 3)), ((5 : ℝ) / 54) * injectiveMoment H (groupedColumns fourierInput1 (EqualityPatterns.family4.label 4)), ((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput1 (EqualityPatterns.family4.label 5)), ((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput1 (EqualityPatterns.family4.label 6)), ((5 : ℝ) / 54) * injectiveMoment H (groupedColumns fourierInput1 (EqualityPatterns.family4.label 7)), ((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput1 (EqualityPatterns.family4.label 8)), ((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput1 (EqualityPatterns.family4.label 9)), ((5 : ℝ) / 54) * injectiveMoment H (groupedColumns fourierInput1 (EqualityPatterns.family4.label 10)), ((5 : ℝ) / 54) * injectiveMoment H (groupedColumns fourierInput1 (EqualityPatterns.family4.label 11)), ((5 : ℝ) / 54) * injectiveMoment H (groupedColumns fourierInput1 (EqualityPatterns.family4.label 12)), ((5 : ℝ) / 54) * injectiveMoment H (groupedColumns fourierInput1 (EqualityPatterns.family4.label 13)), ((5 : ℝ) / 18) * injectiveMoment H (groupedColumns fourierInput1 (EqualityPatterns.family4.label 14))] j)) = 0 := by
  have hshape : (fun i => fourierInput1 i 0) = alpha := by
    exact funext (by decide +kernel)
  have hr := fourier_products_partition_zero hH hF hFt fourierInput1 0 hshape
    EqualityPatterns.family4 EqualityPatterns.covers4
  rw [PairTargetSemantics.sum_fin_fifteen] at hr
  simp only [PairTargetSemantics.partitionWeight4_0, PairTargetSemantics.partitionWeight4_1, PairTargetSemantics.partitionWeight4_2, PairTargetSemantics.partitionWeight4_3, PairTargetSemantics.partitionWeight4_4, PairTargetSemantics.partitionWeight4_5, PairTargetSemantics.partitionWeight4_6, PairTargetSemantics.partitionWeight4_7, PairTargetSemantics.partitionWeight4_8, PairTargetSemantics.partitionWeight4_9, PairTargetSemantics.partitionWeight4_10, PairTargetSemantics.partitionWeight4_11, PairTargetSemantics.partitionWeight4_12, PairTargetSemantics.partitionWeight4_13, PairTargetSemantics.partitionWeight4_14] at hr
  convert hr using 1 <;> norm_num [Fin.sum_univ_succ] <;> ring

def fourierInput2 : Matrix (Fin 6) (Fin 4) ℤ := ![![1, -3, -1, 3], ![1, 0, -1, 0], ![1, 2, -1, -2], ![-1, 0, 1, 0], ![-1, 0, 1, 0], ![-1, 1, 1, -1]]

theorem fourierInputZero2 {H : CMatrix} (hH : IsHadamard H)
    (hF : ∀ π : Equiv.Perm Coord, g H (permuteCharge π alpha) = 0)
    (hFt : ∀ π : Equiv.Perm Coord, g H.transpose (permuteCharge π alpha) = 0) :
    (∑ j : Fin 15, (![((1 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput2 (EqualityPatterns.family4.label 0)), ((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput2 (EqualityPatterns.family4.label 1)), ((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput2 (EqualityPatterns.family4.label 2)), ((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput2 (EqualityPatterns.family4.label 3)), ((5 : ℝ) / 54) * injectiveMoment H (groupedColumns fourierInput2 (EqualityPatterns.family4.label 4)), ((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput2 (EqualityPatterns.family4.label 5)), ((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput2 (EqualityPatterns.family4.label 6)), ((5 : ℝ) / 54) * injectiveMoment H (groupedColumns fourierInput2 (EqualityPatterns.family4.label 7)), ((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput2 (EqualityPatterns.family4.label 8)), ((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput2 (EqualityPatterns.family4.label 9)), ((5 : ℝ) / 54) * injectiveMoment H (groupedColumns fourierInput2 (EqualityPatterns.family4.label 10)), ((5 : ℝ) / 54) * injectiveMoment H (groupedColumns fourierInput2 (EqualityPatterns.family4.label 11)), ((5 : ℝ) / 54) * injectiveMoment H (groupedColumns fourierInput2 (EqualityPatterns.family4.label 12)), ((5 : ℝ) / 54) * injectiveMoment H (groupedColumns fourierInput2 (EqualityPatterns.family4.label 13)), ((5 : ℝ) / 18) * injectiveMoment H (groupedColumns fourierInput2 (EqualityPatterns.family4.label 14))] j)) = 0 := by
  have hshape : (fun i => fourierInput2 i 0) = alpha := by
    exact funext (by decide +kernel)
  have hr := fourier_products_partition_zero hH hF hFt fourierInput2 0 hshape
    EqualityPatterns.family4 EqualityPatterns.covers4
  rw [PairTargetSemantics.sum_fin_fifteen] at hr
  simp only [PairTargetSemantics.partitionWeight4_0, PairTargetSemantics.partitionWeight4_1, PairTargetSemantics.partitionWeight4_2, PairTargetSemantics.partitionWeight4_3, PairTargetSemantics.partitionWeight4_4, PairTargetSemantics.partitionWeight4_5, PairTargetSemantics.partitionWeight4_6, PairTargetSemantics.partitionWeight4_7, PairTargetSemantics.partitionWeight4_8, PairTargetSemantics.partitionWeight4_9, PairTargetSemantics.partitionWeight4_10, PairTargetSemantics.partitionWeight4_11, PairTargetSemantics.partitionWeight4_12, PairTargetSemantics.partitionWeight4_13, PairTargetSemantics.partitionWeight4_14] at hr
  convert hr using 1 <;> norm_num [Fin.sum_univ_succ] <;> ring

def fourierInput3 : Matrix (Fin 6) (Fin 4) ℤ := ![![1, -3, -1, 3], ![1, 0, -1, 0], ![1, 3, -1, -3], ![-1, 0, 1, 0], ![-1, 0, 1, 0], ![-1, 0, 1, 0]]

theorem fourierInputZero3 {H : CMatrix} (hH : IsHadamard H)
    (hF : ∀ π : Equiv.Perm Coord, g H (permuteCharge π alpha) = 0)
    (hFt : ∀ π : Equiv.Perm Coord, g H.transpose (permuteCharge π alpha) = 0) :
    (∑ j : Fin 15, (![((1 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput3 (EqualityPatterns.family4.label 0)), ((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput3 (EqualityPatterns.family4.label 1)), ((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput3 (EqualityPatterns.family4.label 2)), ((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput3 (EqualityPatterns.family4.label 3)), ((5 : ℝ) / 54) * injectiveMoment H (groupedColumns fourierInput3 (EqualityPatterns.family4.label 4)), ((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput3 (EqualityPatterns.family4.label 5)), ((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput3 (EqualityPatterns.family4.label 6)), ((5 : ℝ) / 54) * injectiveMoment H (groupedColumns fourierInput3 (EqualityPatterns.family4.label 7)), ((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput3 (EqualityPatterns.family4.label 8)), ((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput3 (EqualityPatterns.family4.label 9)), ((5 : ℝ) / 54) * injectiveMoment H (groupedColumns fourierInput3 (EqualityPatterns.family4.label 10)), ((5 : ℝ) / 54) * injectiveMoment H (groupedColumns fourierInput3 (EqualityPatterns.family4.label 11)), ((5 : ℝ) / 54) * injectiveMoment H (groupedColumns fourierInput3 (EqualityPatterns.family4.label 12)), ((5 : ℝ) / 54) * injectiveMoment H (groupedColumns fourierInput3 (EqualityPatterns.family4.label 13)), ((5 : ℝ) / 18) * injectiveMoment H (groupedColumns fourierInput3 (EqualityPatterns.family4.label 14))] j)) = 0 := by
  have hshape : (fun i => fourierInput3 i 0) = alpha := by
    exact funext (by decide +kernel)
  have hr := fourier_products_partition_zero hH hF hFt fourierInput3 0 hshape
    EqualityPatterns.family4 EqualityPatterns.covers4
  rw [PairTargetSemantics.sum_fin_fifteen] at hr
  simp only [PairTargetSemantics.partitionWeight4_0, PairTargetSemantics.partitionWeight4_1, PairTargetSemantics.partitionWeight4_2, PairTargetSemantics.partitionWeight4_3, PairTargetSemantics.partitionWeight4_4, PairTargetSemantics.partitionWeight4_5, PairTargetSemantics.partitionWeight4_6, PairTargetSemantics.partitionWeight4_7, PairTargetSemantics.partitionWeight4_8, PairTargetSemantics.partitionWeight4_9, PairTargetSemantics.partitionWeight4_10, PairTargetSemantics.partitionWeight4_11, PairTargetSemantics.partitionWeight4_12, PairTargetSemantics.partitionWeight4_13, PairTargetSemantics.partitionWeight4_14] at hr
  convert hr using 1 <;> norm_num [Fin.sum_univ_succ] <;> ring

def fourierInput4 : Matrix (Fin 6) (Fin 4) ℤ := ![![1, -3, -1, 3], ![1, 1, -1, -1], ![1, 1, -1, -1], ![-1, 0, 1, 0], ![-1, 0, 1, 0], ![-1, 1, 1, -1]]

theorem fourierInputZero4 {H : CMatrix} (hH : IsHadamard H)
    (hF : ∀ π : Equiv.Perm Coord, g H (permuteCharge π alpha) = 0)
    (hFt : ∀ π : Equiv.Perm Coord, g H.transpose (permuteCharge π alpha) = 0) :
    (∑ j : Fin 15, (![((1 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput4 (EqualityPatterns.family4.label 0)), ((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput4 (EqualityPatterns.family4.label 1)), ((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput4 (EqualityPatterns.family4.label 2)), ((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput4 (EqualityPatterns.family4.label 3)), ((5 : ℝ) / 54) * injectiveMoment H (groupedColumns fourierInput4 (EqualityPatterns.family4.label 4)), ((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput4 (EqualityPatterns.family4.label 5)), ((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput4 (EqualityPatterns.family4.label 6)), ((5 : ℝ) / 54) * injectiveMoment H (groupedColumns fourierInput4 (EqualityPatterns.family4.label 7)), ((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput4 (EqualityPatterns.family4.label 8)), ((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput4 (EqualityPatterns.family4.label 9)), ((5 : ℝ) / 54) * injectiveMoment H (groupedColumns fourierInput4 (EqualityPatterns.family4.label 10)), ((5 : ℝ) / 54) * injectiveMoment H (groupedColumns fourierInput4 (EqualityPatterns.family4.label 11)), ((5 : ℝ) / 54) * injectiveMoment H (groupedColumns fourierInput4 (EqualityPatterns.family4.label 12)), ((5 : ℝ) / 54) * injectiveMoment H (groupedColumns fourierInput4 (EqualityPatterns.family4.label 13)), ((5 : ℝ) / 18) * injectiveMoment H (groupedColumns fourierInput4 (EqualityPatterns.family4.label 14))] j)) = 0 := by
  have hshape : (fun i => fourierInput4 i 0) = alpha := by
    exact funext (by decide +kernel)
  have hr := fourier_products_partition_zero hH hF hFt fourierInput4 0 hshape
    EqualityPatterns.family4 EqualityPatterns.covers4
  rw [PairTargetSemantics.sum_fin_fifteen] at hr
  simp only [PairTargetSemantics.partitionWeight4_0, PairTargetSemantics.partitionWeight4_1, PairTargetSemantics.partitionWeight4_2, PairTargetSemantics.partitionWeight4_3, PairTargetSemantics.partitionWeight4_4, PairTargetSemantics.partitionWeight4_5, PairTargetSemantics.partitionWeight4_6, PairTargetSemantics.partitionWeight4_7, PairTargetSemantics.partitionWeight4_8, PairTargetSemantics.partitionWeight4_9, PairTargetSemantics.partitionWeight4_10, PairTargetSemantics.partitionWeight4_11, PairTargetSemantics.partitionWeight4_12, PairTargetSemantics.partitionWeight4_13, PairTargetSemantics.partitionWeight4_14] at hr
  convert hr using 1 <;> norm_num [Fin.sum_univ_succ] <;> ring

def fourierInput5 : Matrix (Fin 6) (Fin 4) ℤ := ![![1, -2, -1, 2], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-1, 0, 1, 0], ![-1, 0, 1, 0], ![-1, 2, 1, -2]]

theorem fourierInputZero5 {H : CMatrix} (hH : IsHadamard H)
    (hF : ∀ π : Equiv.Perm Coord, g H (permuteCharge π alpha) = 0)
    (hFt : ∀ π : Equiv.Perm Coord, g H.transpose (permuteCharge π alpha) = 0) :
    (∑ j : Fin 15, (![((1 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput5 (EqualityPatterns.family4.label 0)), ((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput5 (EqualityPatterns.family4.label 1)), ((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput5 (EqualityPatterns.family4.label 2)), ((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput5 (EqualityPatterns.family4.label 3)), ((5 : ℝ) / 54) * injectiveMoment H (groupedColumns fourierInput5 (EqualityPatterns.family4.label 4)), ((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput5 (EqualityPatterns.family4.label 5)), ((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput5 (EqualityPatterns.family4.label 6)), ((5 : ℝ) / 54) * injectiveMoment H (groupedColumns fourierInput5 (EqualityPatterns.family4.label 7)), ((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput5 (EqualityPatterns.family4.label 8)), ((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput5 (EqualityPatterns.family4.label 9)), ((5 : ℝ) / 54) * injectiveMoment H (groupedColumns fourierInput5 (EqualityPatterns.family4.label 10)), ((5 : ℝ) / 54) * injectiveMoment H (groupedColumns fourierInput5 (EqualityPatterns.family4.label 11)), ((5 : ℝ) / 54) * injectiveMoment H (groupedColumns fourierInput5 (EqualityPatterns.family4.label 12)), ((5 : ℝ) / 54) * injectiveMoment H (groupedColumns fourierInput5 (EqualityPatterns.family4.label 13)), ((5 : ℝ) / 18) * injectiveMoment H (groupedColumns fourierInput5 (EqualityPatterns.family4.label 14))] j)) = 0 := by
  have hshape : (fun i => fourierInput5 i 0) = alpha := by
    exact funext (by decide +kernel)
  have hr := fourier_products_partition_zero hH hF hFt fourierInput5 0 hshape
    EqualityPatterns.family4 EqualityPatterns.covers4
  rw [PairTargetSemantics.sum_fin_fifteen] at hr
  simp only [PairTargetSemantics.partitionWeight4_0, PairTargetSemantics.partitionWeight4_1, PairTargetSemantics.partitionWeight4_2, PairTargetSemantics.partitionWeight4_3, PairTargetSemantics.partitionWeight4_4, PairTargetSemantics.partitionWeight4_5, PairTargetSemantics.partitionWeight4_6, PairTargetSemantics.partitionWeight4_7, PairTargetSemantics.partitionWeight4_8, PairTargetSemantics.partitionWeight4_9, PairTargetSemantics.partitionWeight4_10, PairTargetSemantics.partitionWeight4_11, PairTargetSemantics.partitionWeight4_12, PairTargetSemantics.partitionWeight4_13, PairTargetSemantics.partitionWeight4_14] at hr
  convert hr using 1 <;> norm_num [Fin.sum_univ_succ] <;> ring

def fourierInput6 : Matrix (Fin 6) (Fin 4) ℤ := ![![1, -2, -1, 2], ![1, 0, -1, 0], ![1, 0, -1, 0], ![-1, 0, 1, 0], ![-1, 1, 1, -1], ![-1, 1, 1, -1]]

theorem fourierInputZero6 {H : CMatrix} (hH : IsHadamard H)
    (hF : ∀ π : Equiv.Perm Coord, g H (permuteCharge π alpha) = 0)
    (hFt : ∀ π : Equiv.Perm Coord, g H.transpose (permuteCharge π alpha) = 0) :
    (∑ j : Fin 15, (![((1 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput6 (EqualityPatterns.family4.label 0)), ((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput6 (EqualityPatterns.family4.label 1)), ((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput6 (EqualityPatterns.family4.label 2)), ((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput6 (EqualityPatterns.family4.label 3)), ((5 : ℝ) / 54) * injectiveMoment H (groupedColumns fourierInput6 (EqualityPatterns.family4.label 4)), ((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput6 (EqualityPatterns.family4.label 5)), ((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput6 (EqualityPatterns.family4.label 6)), ((5 : ℝ) / 54) * injectiveMoment H (groupedColumns fourierInput6 (EqualityPatterns.family4.label 7)), ((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput6 (EqualityPatterns.family4.label 8)), ((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput6 (EqualityPatterns.family4.label 9)), ((5 : ℝ) / 54) * injectiveMoment H (groupedColumns fourierInput6 (EqualityPatterns.family4.label 10)), ((5 : ℝ) / 54) * injectiveMoment H (groupedColumns fourierInput6 (EqualityPatterns.family4.label 11)), ((5 : ℝ) / 54) * injectiveMoment H (groupedColumns fourierInput6 (EqualityPatterns.family4.label 12)), ((5 : ℝ) / 54) * injectiveMoment H (groupedColumns fourierInput6 (EqualityPatterns.family4.label 13)), ((5 : ℝ) / 18) * injectiveMoment H (groupedColumns fourierInput6 (EqualityPatterns.family4.label 14))] j)) = 0 := by
  have hshape : (fun i => fourierInput6 i 0) = alpha := by
    exact funext (by decide +kernel)
  have hr := fourier_products_partition_zero hH hF hFt fourierInput6 0 hshape
    EqualityPatterns.family4 EqualityPatterns.covers4
  rw [PairTargetSemantics.sum_fin_fifteen] at hr
  simp only [PairTargetSemantics.partitionWeight4_0, PairTargetSemantics.partitionWeight4_1, PairTargetSemantics.partitionWeight4_2, PairTargetSemantics.partitionWeight4_3, PairTargetSemantics.partitionWeight4_4, PairTargetSemantics.partitionWeight4_5, PairTargetSemantics.partitionWeight4_6, PairTargetSemantics.partitionWeight4_7, PairTargetSemantics.partitionWeight4_8, PairTargetSemantics.partitionWeight4_9, PairTargetSemantics.partitionWeight4_10, PairTargetSemantics.partitionWeight4_11, PairTargetSemantics.partitionWeight4_12, PairTargetSemantics.partitionWeight4_13, PairTargetSemantics.partitionWeight4_14] at hr
  convert hr using 1 <;> norm_num [Fin.sum_univ_succ] <;> ring

def fourierInput7 : Matrix (Fin 6) (Fin 4) ℤ := ![![1, -2, -1, 2], ![1, 0, -1, 0], ![1, 2, -1, -2], ![-1, -1, 1, 1], ![-1, 0, 1, 0], ![-1, 1, 1, -1]]

theorem fourierInputZero7 {H : CMatrix} (hH : IsHadamard H)
    (hF : ∀ π : Equiv.Perm Coord, g H (permuteCharge π alpha) = 0)
    (hFt : ∀ π : Equiv.Perm Coord, g H.transpose (permuteCharge π alpha) = 0) :
    (∑ j : Fin 15, (![((1 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput7 (EqualityPatterns.family4.label 0)), ((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput7 (EqualityPatterns.family4.label 1)), ((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput7 (EqualityPatterns.family4.label 2)), ((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput7 (EqualityPatterns.family4.label 3)), ((5 : ℝ) / 54) * injectiveMoment H (groupedColumns fourierInput7 (EqualityPatterns.family4.label 4)), ((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput7 (EqualityPatterns.family4.label 5)), ((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput7 (EqualityPatterns.family4.label 6)), ((5 : ℝ) / 54) * injectiveMoment H (groupedColumns fourierInput7 (EqualityPatterns.family4.label 7)), ((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput7 (EqualityPatterns.family4.label 8)), ((5 : ℝ) / 216) * injectiveMoment H (groupedColumns fourierInput7 (EqualityPatterns.family4.label 9)), ((5 : ℝ) / 54) * injectiveMoment H (groupedColumns fourierInput7 (EqualityPatterns.family4.label 10)), ((5 : ℝ) / 54) * injectiveMoment H (groupedColumns fourierInput7 (EqualityPatterns.family4.label 11)), ((5 : ℝ) / 54) * injectiveMoment H (groupedColumns fourierInput7 (EqualityPatterns.family4.label 12)), ((5 : ℝ) / 54) * injectiveMoment H (groupedColumns fourierInput7 (EqualityPatterns.family4.label 13)), ((5 : ℝ) / 18) * injectiveMoment H (groupedColumns fourierInput7 (EqualityPatterns.family4.label 14))] j)) = 0 := by
  have hshape : (fun i => fourierInput7 i 0) = alpha := by
    exact funext (by decide +kernel)
  have hr := fourier_products_partition_zero hH hF hFt fourierInput7 0 hshape
    EqualityPatterns.family4 EqualityPatterns.covers4
  rw [PairTargetSemantics.sum_fin_fifteen] at hr
  simp only [PairTargetSemantics.partitionWeight4_0, PairTargetSemantics.partitionWeight4_1, PairTargetSemantics.partitionWeight4_2, PairTargetSemantics.partitionWeight4_3, PairTargetSemantics.partitionWeight4_4, PairTargetSemantics.partitionWeight4_5, PairTargetSemantics.partitionWeight4_6, PairTargetSemantics.partitionWeight4_7, PairTargetSemantics.partitionWeight4_8, PairTargetSemantics.partitionWeight4_9, PairTargetSemantics.partitionWeight4_10, PairTargetSemantics.partitionWeight4_11, PairTargetSemantics.partitionWeight4_12, PairTargetSemantics.partitionWeight4_13, PairTargetSemantics.partitionWeight4_14] at hr
  convert hr using 1 <;> norm_num [Fin.sum_univ_succ] <;> ring

def fourierInput8 : Matrix (Fin 6) (Fin 4) ℤ := ![![1, 0, -2, 1], ![1, 0, 1, -2], ![1, 1, 0, -2], ![-1, -1, 1, 1], ![-1, -1, 1, 1], ![-1, 1, -1, 1]]

theorem fourierInputZero8 {H : CMatrix} (hH : IsHadamard H)
    (hF : ∀ π : Equiv.Perm Coord, g H (permuteCharge π alpha) = 0)
    (hFt : ∀ π : Equiv.Perm Coord, g H.transpose (permuteCharge π alpha) = 0) :
    (∑ j : Fin 4, (![((3 : ℝ) / 1) * injectiveMoment H (fourierInput8), ((1 : ℝ) / 1) * injectiveMoment H (mergeFirst fourierInput8.transpose (0 : Fin 3)), ((1 : ℝ) / 1) * injectiveMoment H (mergeFirst fourierInput8.transpose (1 : Fin 3)), ((1 : ℝ) / 1) * injectiveMoment H (mergeFirst fourierInput8.transpose (2 : Fin 3))] j)) = 0 := by
  have hshape : fourierInput8.transpose 0 = alpha := by
    exact funext (by decide +kernel)
  have hr := fourier_contraction (by decide : 3 < 6) hH hF hFt fourierInput8.transpose hshape
  rw [injectiveMoment_transpose] at hr
  convert hr using 1 <;> norm_num [Fin.sum_univ_succ] <;> rfl

def fourierInput9 : Matrix (Fin 6) (Fin 4) ℤ := ![![1, -1, -1, 1], ![1, 0, 1, -2], ![1, 1, -1, -1], ![-1, -1, 0, 2], ![-1, 0, 2, -1], ![-1, 1, -1, 1]]

theorem fourierInputZero9 {H : CMatrix} (hH : IsHadamard H)
    (hF : ∀ π : Equiv.Perm Coord, g H (permuteCharge π alpha) = 0)
    (hFt : ∀ π : Equiv.Perm Coord, g H.transpose (permuteCharge π alpha) = 0) :
    (∑ j : Fin 4, (![((3 : ℝ) / 1) * injectiveMoment H (fourierInput9), ((1 : ℝ) / 1) * injectiveMoment H (mergeFirst fourierInput9.transpose (0 : Fin 3)), ((1 : ℝ) / 1) * injectiveMoment H (mergeFirst fourierInput9.transpose (1 : Fin 3)), ((1 : ℝ) / 1) * injectiveMoment H (mergeFirst fourierInput9.transpose (2 : Fin 3))] j)) = 0 := by
  have hshape : fourierInput9.transpose 0 = alpha := by
    exact funext (by decide +kernel)
  have hr := fourier_contraction (by decide : 3 < 6) hH hF hFt fourierInput9.transpose hshape
  rw [injectiveMoment_transpose] at hr
  convert hr using 1 <;> norm_num [Fin.sum_univ_succ] <;> rfl

def fourierInput10 : Matrix (Fin 6) (Fin 5) ℤ := ![![1, -2, 0, 0, 1], ![1, 1, -2, 0, 0], ![1, 1, 0, 0, -2], ![-1, 0, 0, -1, 2], ![-1, 0, 0, 2, -1], ![-1, 0, 2, -1, 0]]

theorem fourierInputZero10 {H : CMatrix} (hH : IsHadamard H)
    (hF : ∀ π : Equiv.Perm Coord, g H (permuteCharge π alpha) = 0)
    (hFt : ∀ π : Equiv.Perm Coord, g H.transpose (permuteCharge π alpha) = 0) :
    (∑ j : Fin 5, (![((2 : ℝ) / 1) * injectiveMoment H (fourierInput10), ((1 : ℝ) / 1) * injectiveMoment H (mergeFirst fourierInput10.transpose (0 : Fin 4)), ((1 : ℝ) / 1) * injectiveMoment H (mergeFirst fourierInput10.transpose (1 : Fin 4)), ((1 : ℝ) / 1) * injectiveMoment H (mergeFirst fourierInput10.transpose (2 : Fin 4)), ((1 : ℝ) / 1) * injectiveMoment H (mergeFirst fourierInput10.transpose (3 : Fin 4))] j)) = 0 := by
  have hshape : fourierInput10.transpose 0 = alpha := by
    exact funext (by decide +kernel)
  have hr := fourier_contraction (by decide : 4 < 6) hH hF hFt fourierInput10.transpose hshape
  rw [injectiveMoment_transpose] at hr
  convert hr using 1 <;> norm_num [Fin.sum_univ_succ] <;> rfl

def fourierInput11 : Matrix (Fin 6) (Fin 5) ℤ := ![![1, -1, 0, 1, -1], ![1, 0, 1, 0, -2], ![1, 1, -1, -1, 0], ![-1, -1, 0, 1, 1], ![-1, 0, 1, -1, 1], ![-1, 1, -1, 0, 1]]

theorem fourierInputZero11 {H : CMatrix} (hH : IsHadamard H)
    (hF : ∀ π : Equiv.Perm Coord, g H (permuteCharge π alpha) = 0)
    (hFt : ∀ π : Equiv.Perm Coord, g H.transpose (permuteCharge π alpha) = 0) :
    (∑ j : Fin 5, (![((2 : ℝ) / 1) * injectiveMoment H (fourierInput11), ((1 : ℝ) / 1) * injectiveMoment H (mergeFirst fourierInput11.transpose (0 : Fin 4)), ((1 : ℝ) / 1) * injectiveMoment H (mergeFirst fourierInput11.transpose (1 : Fin 4)), ((1 : ℝ) / 1) * injectiveMoment H (mergeFirst fourierInput11.transpose (2 : Fin 4)), ((1 : ℝ) / 1) * injectiveMoment H (mergeFirst fourierInput11.transpose (3 : Fin 4))] j)) = 0 := by
  have hshape : fourierInput11.transpose 0 = alpha := by
    exact funext (by decide +kernel)
  have hr := fourier_contraction (by decide : 4 < 6) hH hF hFt fourierInput11.transpose hshape
  rw [injectiveMoment_transpose] at hr
  convert hr using 1 <;> norm_num [Fin.sum_univ_succ] <;> rfl

def fourierInput12 : Matrix (Fin 6) (Fin 5) ℤ := ![![1, -1, 0, 1, -1], ![1, 0, 1, -1, -1], ![1, 1, -1, 0, -1], ![-1, -1, 0, 1, 1], ![-1, 0, 1, -1, 1], ![-1, 1, -1, 0, 1]]

theorem fourierInputZero12 {H : CMatrix} (hH : IsHadamard H)
    (hF : ∀ π : Equiv.Perm Coord, g H (permuteCharge π alpha) = 0)
    (hFt : ∀ π : Equiv.Perm Coord, g H.transpose (permuteCharge π alpha) = 0) :
    (∑ j : Fin 5, (![((2 : ℝ) / 1) * injectiveMoment H (fourierInput12), ((1 : ℝ) / 1) * injectiveMoment H (mergeFirst fourierInput12.transpose (0 : Fin 4)), ((1 : ℝ) / 1) * injectiveMoment H (mergeFirst fourierInput12.transpose (1 : Fin 4)), ((1 : ℝ) / 1) * injectiveMoment H (mergeFirst fourierInput12.transpose (2 : Fin 4)), ((1 : ℝ) / 1) * injectiveMoment H (mergeFirst fourierInput12.transpose (3 : Fin 4))] j)) = 0 := by
  have hshape : fourierInput12.transpose 0 = alpha := by
    exact funext (by decide +kernel)
  have hr := fourier_contraction (by decide : 4 < 6) hH hF hFt fourierInput12.transpose hshape
  rw [injectiveMoment_transpose] at hr
  convert hr using 1 <;> norm_num [Fin.sum_univ_succ] <;> rfl

end NoFourMUBs.Step2.SOS.Semantics
