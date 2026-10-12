import NoFourMUBs.Step2.SOS.MomentData
import NoFourMUBs.Step2.SOS.Data
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Boundary16

namespace NoFourMUBs.Step2.SOS.Semantics
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

/-- Reuse upstream boundarySound448; only coordinates and scaling change. -/
theorem rowSound1091 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1091) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1091 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row1091 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow448
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row1091, OAI.MUB6.Certificate.PairSemantics.boundaryRow448, Integer.Sparse.eval,
      oldMoment0, oldMoment3, oldMoment19, oldMoment20, oldMoment37, oldMoment38, oldMoment81, oldMoment94, oldMoment104, oldMoment108, oldMoment241, oldMoment243, oldMoment244, oldMoment247, oldMoment427, oldMoment492, oldMoment694, oldMoment697, oldMoment698, oldMoment700, oldMoment701, oldMoment704, oldMoment795, oldMoment796, oldMoment1040, oldMoment1045, oldMoment1052, oldMoment1053, oldMoment1059, oldMoment1105, oldMoment1251, oldMoment1321] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound448 hH, mul_zero]

/-- Reuse upstream boundarySound454; only coordinates and scaling change. -/
theorem rowSound1097 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1097) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1097 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row1097 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow454
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row1097, OAI.MUB6.Certificate.PairSemantics.boundaryRow454, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment20, oldMoment42, oldMoment90, oldMoment94, oldMoment243, oldMoment244, oldMoment312, oldMoment461, oldMoment493, oldMoment698, oldMoment700, oldMoment701, oldMoment704, oldMoment782, oldMoment1004, oldMoment1058, oldMoment1059, oldMoment1117, oldMoment1219, oldMoment1225, oldMoment1226, oldMoment1227, oldMoment1251, oldMoment1323] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound454 hH, mul_zero]

/-- Reuse upstream boundarySound455; only coordinates and scaling change. -/
theorem rowSound1098 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1098) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1098 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row1098 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow455
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row1098, OAI.MUB6.Certificate.PairSemantics.boundaryRow455, Integer.Sparse.eval,
      oldMoment0, oldMoment3, oldMoment19, oldMoment20, oldMoment40, oldMoment42, oldMoment76, oldMoment90, oldMoment93, oldMoment94, oldMoment105, oldMoment108, oldMoment241, oldMoment242, oldMoment243, oldMoment244, oldMoment247, oldMoment311, oldMoment427, oldMoment502, oldMoment691, oldMoment697, oldMoment698, oldMoment700, oldMoment701, oldMoment704, oldMoment781, oldMoment782, oldMoment808, oldMoment1047, oldMoment1050, oldMoment1052, oldMoment1058, oldMoment1059, oldMoment1060, oldMoment1226, oldMoment1227, oldMoment1248, oldMoment1250, oldMoment1251, oldMoment1319, oldMoment1323] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound455 hH, mul_zero]

/-- Reuse upstream boundarySound460; only coordinates and scaling change. -/
theorem rowSound1103 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1103) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1103 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row1103 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow460
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row1103, OAI.MUB6.Certificate.PairSemantics.boundaryRow460, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment20, oldMoment76, oldMoment88, oldMoment90, oldMoment94, oldMoment241, oldMoment243, oldMoment247, oldMoment549, oldMoment596, oldMoment697, oldMoment698, oldMoment700, oldMoment704, oldMoment782, oldMoment809, oldMoment1003, oldMoment1004, oldMoment1015, oldMoment1058, oldMoment1059, oldMoment1219, oldMoment1223, oldMoment1225, oldMoment1226, oldMoment1227, oldMoment1251, oldMoment1323, oldMoment1352] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound460 hH, mul_zero]

/-- Reuse upstream boundarySound461; only coordinates and scaling change. -/
theorem rowSound1104 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1104) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1104 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row1104 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow461
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row1104, OAI.MUB6.Certificate.PairSemantics.boundaryRow461, Integer.Sparse.eval,
      oldMoment0, oldMoment3, oldMoment19, oldMoment20, oldMoment76, oldMoment81, oldMoment88, oldMoment90, oldMoment93, oldMoment94, oldMoment104, oldMoment105, oldMoment231, oldMoment241, oldMoment242, oldMoment243, oldMoment247, oldMoment426, oldMoment642, oldMoment691, oldMoment694, oldMoment697, oldMoment698, oldMoment700, oldMoment704, oldMoment732, oldMoment781, oldMoment782, oldMoment800, oldMoment808, oldMoment809, oldMoment1047, oldMoment1055, oldMoment1057, oldMoment1058, oldMoment1059, oldMoment1089, oldMoment1117, oldMoment1225, oldMoment1226, oldMoment1227, oldMoment1250, oldMoment1251, oldMoment1321, oldMoment1323, oldMoment1389] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound461 hH, mul_zero]

end NoFourMUBs.Step2.SOS.Semantics
