import NoFourMUBs.Step2.SOS.MomentData
import NoFourMUBs.Step2.SOS.Data
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Boundary0

namespace NoFourMUBs.Step2.SOS.Semantics
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

/-- Reuse upstream boundarySound0; only coordinates and scaling change. -/
theorem rowSound668 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 668) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row668 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row668 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow0
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row668, OAI.MUB6.Certificate.PairSemantics.boundaryRow0, Integer.Sparse.eval,
      oldMoment0, oldMoment94, oldMoment698, oldMoment1059, oldMoment1227, oldMoment1251] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound0 hH, mul_zero]

/-- Reuse upstream boundarySound1; only coordinates and scaling change. -/
theorem rowSound669 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 669) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row669 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row669 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow1
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row669, OAI.MUB6.Certificate.PairSemantics.boundaryRow1, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment20, oldMoment1250, oldMoment1251] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound1 hH, mul_zero]

/-- Reuse upstream boundarySound2; only coordinates and scaling change. -/
theorem rowSound670 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 670) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row670 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row670 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow2
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row670, OAI.MUB6.Certificate.PairSemantics.boundaryRow2, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment94, oldMoment241, oldMoment247, oldMoment698, oldMoment1050, oldMoment1055, oldMoment1059, oldMoment1227, oldMoment1251] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound2 hH, mul_zero]

/-- Reuse upstream boundarySound3; only coordinates and scaling change. -/
theorem rowSound671 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 671) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row671 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row671 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow3
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row671, OAI.MUB6.Certificate.PairSemantics.boundaryRow3, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment94, oldMoment241, oldMoment247, oldMoment698, oldMoment1055, oldMoment1227, oldMoment1251, oldMoment1388] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound3 hH, mul_zero]

/-- Reuse upstream boundarySound4; only coordinates and scaling change. -/
theorem rowSound672 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 672) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row672 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row672 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow4
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row672, OAI.MUB6.Certificate.PairSemantics.boundaryRow4, Integer.Sparse.eval,
      oldMoment0, oldMoment94, oldMoment698, oldMoment700, oldMoment1059, oldMoment1227, oldMoment1251] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound4 hH, mul_zero]

/-- Reuse upstream boundarySound5; only coordinates and scaling change. -/
theorem rowSound673 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 673) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row673 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row673 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow5
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row673, OAI.MUB6.Certificate.PairSemantics.boundaryRow5, Integer.Sparse.eval,
      oldMoment0, oldMoment94, oldMoment698, oldMoment1059, oldMoment1221, oldMoment1226, oldMoment1227, oldMoment1251] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound5 hH, mul_zero]

/-- Reuse upstream boundarySound6; only coordinates and scaling change. -/
theorem rowSound674 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 674) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row674 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row674 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow6
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row674, OAI.MUB6.Certificate.PairSemantics.boundaryRow6, Integer.Sparse.eval,
      oldMoment0, oldMoment94, oldMoment698, oldMoment1059, oldMoment1226, oldMoment1227, oldMoment1251, oldMoment1389] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound6 hH, mul_zero]

/-- Reuse upstream boundarySound7; only coordinates and scaling change. -/
theorem rowSound675 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 675) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row675 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row675 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow7
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row675, OAI.MUB6.Certificate.PairSemantics.boundaryRow7, Integer.Sparse.eval,
      oldMoment0, oldMoment94, oldMoment864, oldMoment869, oldMoment1050, oldMoment1221, oldMoment1250, oldMoment1251, oldMoment1388, oldMoment1389] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound7 hH, mul_zero]

/-- Reuse upstream boundarySound8; only coordinates and scaling change. -/
theorem rowSound676 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 676) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row676 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row676 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow8
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row676, OAI.MUB6.Certificate.PairSemantics.boundaryRow8, Integer.Sparse.eval,
      oldMoment0, oldMoment94, oldMoment698, oldMoment865, oldMoment957, oldMoment1050, oldMoment1055, oldMoment1059, oldMoment1221, oldMoment1227, oldMoment1250, oldMoment1251, oldMoment1388, oldMoment1389] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound8 hH, mul_zero]

/-- Reuse upstream boundarySound9; only coordinates and scaling change. -/
theorem rowSound677 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 677) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row677 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row677 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow9
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row677, OAI.MUB6.Certificate.PairSemantics.boundaryRow9, Integer.Sparse.eval,
      oldMoment0, oldMoment94, oldMoment698, oldMoment867, oldMoment869, oldMoment1050, oldMoment1059, oldMoment1227, oldMoment1250, oldMoment1251, oldMoment1388] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound9 hH, mul_zero]

/-- Reuse upstream boundarySound10; only coordinates and scaling change. -/
theorem rowSound678 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 678) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row678 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row678 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow10
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row678, OAI.MUB6.Certificate.PairSemantics.boundaryRow10, Integer.Sparse.eval,
      oldMoment0, oldMoment94, oldMoment698, oldMoment890, oldMoment1027, oldMoment1059, oldMoment1227, oldMoment1251] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound10 hH, mul_zero]

/-- Reuse upstream boundarySound11; only coordinates and scaling change. -/
theorem rowSound679 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 679) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row679 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row679 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow11
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row679, OAI.MUB6.Certificate.PairSemantics.boundaryRow11, Integer.Sparse.eval,
      oldMoment0, oldMoment94, oldMoment698, oldMoment865, oldMoment869, oldMoment1050, oldMoment1055, oldMoment1059, oldMoment1221, oldMoment1227, oldMoment1250, oldMoment1251, oldMoment1388, oldMoment1389] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound11 hH, mul_zero]

/-- Reuse upstream boundarySound12; only coordinates and scaling change. -/
theorem rowSound680 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 680) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row680 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row680 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow12
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row680, OAI.MUB6.Certificate.PairSemantics.boundaryRow12, Integer.Sparse.eval,
      oldMoment0, oldMoment94, oldMoment698, oldMoment869, oldMoment956, oldMoment957, oldMoment1027, oldMoment1055, oldMoment1059, oldMoment1227, oldMoment1250, oldMoment1251, oldMoment1388, oldMoment1389] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound12 hH, mul_zero]

/-- Reuse upstream boundarySound13; only coordinates and scaling change. -/
theorem rowSound681 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 681) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row681 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row681 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow13
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row681, OAI.MUB6.Certificate.PairSemantics.boundaryRow13, Integer.Sparse.eval,
      oldMoment0, oldMoment94, oldMoment698, oldMoment1016, oldMoment1027, oldMoment1059, oldMoment1227, oldMoment1251, oldMoment1389] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound13 hH, mul_zero]

/-- Reuse upstream boundarySound14; only coordinates and scaling change. -/
theorem rowSound682 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 682) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row682 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row682 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow14
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row682, OAI.MUB6.Certificate.PairSemantics.boundaryRow14, Integer.Sparse.eval,
      oldMoment0, oldMoment94, oldMoment698, oldMoment890, oldMoment1059, oldMoment1221, oldMoment1227, oldMoment1251, oldMoment1389] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound14 hH, mul_zero]

/-- Reuse upstream boundarySound16; only coordinates and scaling change. -/
theorem rowSound684 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 684) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row684 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row684 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow16
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row684, OAI.MUB6.Certificate.PairSemantics.boundaryRow16, Integer.Sparse.eval,
      oldMoment0, oldMoment94, oldMoment698, oldMoment869, oldMoment1050, oldMoment1059, oldMoment1227, oldMoment1250, oldMoment1251, oldMoment1376, oldMoment1388] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound16 hH, mul_zero]

end NoFourMUBs.Step2.SOS.Semantics
