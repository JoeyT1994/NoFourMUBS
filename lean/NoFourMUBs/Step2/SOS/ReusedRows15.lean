import NoFourMUBs.Step2.SOS.MomentData
import NoFourMUBs.Step2.SOS.Data
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Boundary15

namespace NoFourMUBs.Step2.SOS.Semantics
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

/-- Reuse upstream boundarySound408; only coordinates and scaling change. -/
theorem rowSound1051 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1051) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1051 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row1051 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow408
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row1051, OAI.MUB6.Certificate.PairSemantics.boundaryRow408, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment20, oldMoment38, oldMoment42, oldMoment81, oldMoment82, oldMoment90, oldMoment94, oldMoment129, oldMoment143, oldMoment228, oldMoment238, oldMoment241, oldMoment243, oldMoment247, oldMoment283, oldMoment291, oldMoment293, oldMoment294, oldMoment302, oldMoment326, oldMoment327, oldMoment330, oldMoment433, oldMoment489, oldMoment686, oldMoment697, oldMoment698, oldMoment700, oldMoment701, oldMoment704, oldMoment1055, oldMoment1058, oldMoment1059, oldMoment1061, oldMoment1219, oldMoment1223, oldMoment1226, oldMoment1227, oldMoment1250, oldMoment1251, oldMoment1389] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound408 hH, mul_zero]

/-- Reuse upstream boundarySound409; only coordinates and scaling change. -/
theorem rowSound1052 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1052) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1052 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row1052 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow409
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row1052, OAI.MUB6.Certificate.PairSemantics.boundaryRow409, Integer.Sparse.eval,
      oldMoment0, oldMoment3, oldMoment19, oldMoment20, oldMoment37, oldMoment45, oldMoment81, oldMoment93, oldMoment94, oldMoment104, oldMoment108, oldMoment137, oldMoment140, oldMoment229, oldMoment240, oldMoment241, oldMoment242, oldMoment243, oldMoment244, oldMoment247, oldMoment285, oldMoment293, oldMoment330, oldMoment332, oldMoment433, oldMoment483, oldMoment489, oldMoment682, oldMoment690, oldMoment694, oldMoment697, oldMoment698, oldMoment700, oldMoment701, oldMoment704, oldMoment720, oldMoment741, oldMoment1040, oldMoment1047, oldMoment1052, oldMoment1053, oldMoment1055, oldMoment1058, oldMoment1059, oldMoment1060, oldMoment1061, oldMoment1154, oldMoment1214, oldMoment1219, oldMoment1226, oldMoment1227, oldMoment1231, oldMoment1250, oldMoment1251, oldMoment1321, oldMoment1389] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound409 hH, mul_zero]

/-- Reuse upstream boundarySound410; only coordinates and scaling change. -/
theorem rowSound1053 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1053) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1053 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row1053 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow410
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row1053, OAI.MUB6.Certificate.PairSemantics.boundaryRow410, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment20, oldMoment38, oldMoment76, oldMoment77, oldMoment81, oldMoment88, oldMoment90, oldMoment94, oldMoment129, oldMoment228, oldMoment231, oldMoment241, oldMoment243, oldMoment247, oldMoment294, oldMoment302, oldMoment326, oldMoment327, oldMoment433, oldMoment484, oldMoment543, oldMoment545, oldMoment548, oldMoment549, oldMoment697, oldMoment698, oldMoment700, oldMoment704, oldMoment720, oldMoment1052, oldMoment1053, oldMoment1059, oldMoment1221, oldMoment1223, oldMoment1226, oldMoment1227, oldMoment1251, oldMoment1323, oldMoment1389] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound410 hH, mul_zero]

/-- Reuse upstream boundarySound412; only coordinates and scaling change. -/
theorem rowSound1055 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1055) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1055 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row1055 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow412
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row1055, OAI.MUB6.Certificate.PairSemantics.boundaryRow412, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment20, oldMoment38, oldMoment81, oldMoment88, oldMoment94, oldMoment130, oldMoment228, oldMoment241, oldMoment243, oldMoment247, oldMoment294, oldMoment326, oldMoment548, oldMoment698, oldMoment700, oldMoment701, oldMoment704, oldMoment757, oldMoment1059, oldMoment1061, oldMoment1146, oldMoment1223, oldMoment1225, oldMoment1226, oldMoment1227, oldMoment1251, oldMoment1331] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound412 hH, mul_zero]

/-- Reuse upstream boundarySound419; only coordinates and scaling change. -/
theorem rowSound1062 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1062) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1062 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row1062 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow419
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row1062, OAI.MUB6.Certificate.PairSemantics.boundaryRow419, Integer.Sparse.eval,
      oldMoment0, oldMoment3, oldMoment19, oldMoment20, oldMoment45, oldMoment93, oldMoment94, oldMoment104, oldMoment108, oldMoment240, oldMoment241, oldMoment242, oldMoment247, oldMoment666, oldMoment690, oldMoment694, oldMoment697, oldMoment698, oldMoment704, oldMoment794, oldMoment1050, oldMoment1055, oldMoment1059, oldMoment1124, oldMoment1126, oldMoment1128, oldMoment1140, oldMoment1142, oldMoment1219, oldMoment1226, oldMoment1227, oldMoment1250, oldMoment1251, oldMoment1323, oldMoment1389] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound419 hH, mul_zero]

/-- Reuse upstream boundarySound422; only coordinates and scaling change. -/
theorem rowSound1065 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1065) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1065 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row1065 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow422
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row1065, OAI.MUB6.Certificate.PairSemantics.boundaryRow422, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment20, oldMoment81, oldMoment88, oldMoment90, oldMoment94, oldMoment228, oldMoment241, oldMoment243, oldMoment247, oldMoment465, oldMoment483, oldMoment596, oldMoment609, oldMoment610, oldMoment618, oldMoment698, oldMoment700, oldMoment704, oldMoment1055, oldMoment1059, oldMoment1226, oldMoment1227, oldMoment1251, oldMoment1389] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound422 hH, mul_zero]

/-- Reuse upstream boundarySound423; only coordinates and scaling change. -/
theorem rowSound1066 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1066) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1066 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row1066 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow423
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row1066, OAI.MUB6.Certificate.PairSemantics.boundaryRow423, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment20, oldMoment38, oldMoment76, oldMoment81, oldMoment88, oldMoment90, oldMoment94, oldMoment228, oldMoment231, oldMoment241, oldMoment243, oldMoment247, oldMoment465, oldMoment505, oldMoment508, oldMoment543, oldMoment548, oldMoment559, oldMoment565, oldMoment602, oldMoment642, oldMoment697, oldMoment698, oldMoment700, oldMoment704, oldMoment1059, oldMoment1061, oldMoment1221, oldMoment1226, oldMoment1227, oldMoment1251, oldMoment1389] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound423 hH, mul_zero]

/-- Reuse upstream boundarySound425; only coordinates and scaling change. -/
theorem rowSound1068 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1068) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1068 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row1068 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow425
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row1068, OAI.MUB6.Certificate.PairSemantics.boundaryRow425, Integer.Sparse.eval,
      oldMoment0, oldMoment3, oldMoment19, oldMoment20, oldMoment40, oldMoment76, oldMoment81, oldMoment93, oldMoment94, oldMoment104, oldMoment105, oldMoment241, oldMoment242, oldMoment243, oldMoment247, oldMoment458, oldMoment690, oldMoment691, oldMoment694, oldMoment697, oldMoment698, oldMoment700, oldMoment704, oldMoment789, oldMoment794, oldMoment801, oldMoment807, oldMoment1050, oldMoment1052, oldMoment1058, oldMoment1059, oldMoment1221, oldMoment1226, oldMoment1227, oldMoment1250, oldMoment1251, oldMoment1323, oldMoment1389] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound425 hH, mul_zero]

/-- Reuse upstream boundarySound430; only coordinates and scaling change. -/
theorem rowSound1073 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1073) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1073 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row1073 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow430
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row1073, OAI.MUB6.Certificate.PairSemantics.boundaryRow430, Integer.Sparse.eval,
      oldMoment0, oldMoment3, oldMoment19, oldMoment20, oldMoment72, oldMoment81, oldMoment93, oldMoment94, oldMoment104, oldMoment105, oldMoment229, oldMoment241, oldMoment243, oldMoment682, oldMoment690, oldMoment691, oldMoment694, oldMoment698, oldMoment700, oldMoment704, oldMoment716, oldMoment758, oldMoment806, oldMoment1040, oldMoment1044, oldMoment1045, oldMoment1050, oldMoment1052, oldMoment1059, oldMoment1146, oldMoment1221, oldMoment1250, oldMoment1251, oldMoment1270, oldMoment1321, oldMoment1389] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound430 hH, mul_zero]

/-- Reuse upstream boundarySound433; only coordinates and scaling change. -/
theorem rowSound1076 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1076) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1076 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row1076 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow433
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row1076, OAI.MUB6.Certificate.PairSemantics.boundaryRow433, Integer.Sparse.eval,
      oldMoment0, oldMoment3, oldMoment19, oldMoment20, oldMoment37, oldMoment38, oldMoment93, oldMoment94, oldMoment104, oldMoment238, oldMoment240, oldMoment241, oldMoment243, oldMoment247, oldMoment307, oldMoment427, oldMoment666, oldMoment690, oldMoment691, oldMoment694, oldMoment697, oldMoment698, oldMoment700, oldMoment704, oldMoment789, oldMoment794, oldMoment795, oldMoment1050, oldMoment1052, oldMoment1055, oldMoment1057, oldMoment1058, oldMoment1059, oldMoment1128, oldMoment1227, oldMoment1250, oldMoment1251] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound433 hH, mul_zero]

/-- Reuse upstream boundarySound434; only coordinates and scaling change. -/
theorem rowSound1077 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1077) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1077 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row1077 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow434
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row1077, OAI.MUB6.Certificate.PairSemantics.boundaryRow434, Integer.Sparse.eval,
      oldMoment0, oldMoment3, oldMoment19, oldMoment20, oldMoment40, oldMoment76, oldMoment81, oldMoment94, oldMoment104, oldMoment241, oldMoment243, oldMoment247, oldMoment307, oldMoment427, oldMoment458, oldMoment478, oldMoment690, oldMoment692, oldMoment697, oldMoment698, oldMoment700, oldMoment704, oldMoment1050, oldMoment1052, oldMoment1059, oldMoment1221, oldMoment1223, oldMoment1226, oldMoment1227, oldMoment1251] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound434 hH, mul_zero]

/-- Reuse upstream boundarySound436; only coordinates and scaling change. -/
theorem rowSound1079 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1079) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1079 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row1079 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow436
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row1079, OAI.MUB6.Certificate.PairSemantics.boundaryRow436, Integer.Sparse.eval,
      oldMoment0, oldMoment3, oldMoment19, oldMoment20, oldMoment45, oldMoment94, oldMoment104, oldMoment108, oldMoment228, oldMoment241, oldMoment243, oldMoment247, oldMoment426, oldMoment549, oldMoment635, oldMoment690, oldMoment694, oldMoment697, oldMoment698, oldMoment704, oldMoment729, oldMoment1055, oldMoment1086, oldMoment1115, oldMoment1126, oldMoment1214, oldMoment1219, oldMoment1223, oldMoment1226, oldMoment1227, oldMoment1250, oldMoment1251, oldMoment1389] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound436 hH, mul_zero]

/-- Reuse upstream boundarySound444; only coordinates and scaling change. -/
theorem rowSound1087 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1087) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1087 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row1087 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow444
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row1087, OAI.MUB6.Certificate.PairSemantics.boundaryRow444, Integer.Sparse.eval,
      oldMoment0, oldMoment3, oldMoment19, oldMoment20, oldMoment93, oldMoment94, oldMoment104, oldMoment108, oldMoment238, oldMoment240, oldMoment241, oldMoment243, oldMoment247, oldMoment434, oldMoment465, oldMoment602, oldMoment691, oldMoment694, oldMoment697, oldMoment698, oldMoment700, oldMoment704, oldMoment751, oldMoment794, oldMoment808, oldMoment809, oldMoment1050, oldMoment1055, oldMoment1057, oldMoment1058, oldMoment1059, oldMoment1103, oldMoment1141, oldMoment1225, oldMoment1226, oldMoment1227, oldMoment1250, oldMoment1251, oldMoment1319, oldMoment1321, oldMoment1323, oldMoment1388, oldMoment1389] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound444 hH, mul_zero]

/-- Reuse upstream boundarySound445; only coordinates and scaling change. -/
theorem rowSound1088 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1088) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1088 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row1088 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow445
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row1088, OAI.MUB6.Certificate.PairSemantics.boundaryRow445, Integer.Sparse.eval,
      oldMoment0, oldMoment3, oldMoment19, oldMoment20, oldMoment40, oldMoment42, oldMoment76, oldMoment90, oldMoment94, oldMoment104, oldMoment108, oldMoment241, oldMoment243, oldMoment244, oldMoment247, oldMoment332, oldMoment433, oldMoment480, oldMoment483, oldMoment502, oldMoment505, oldMoment603, oldMoment692, oldMoment694, oldMoment698, oldMoment700, oldMoment701, oldMoment704, oldMoment1052, oldMoment1059, oldMoment1221, oldMoment1223, oldMoment1226, oldMoment1227, oldMoment1251] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound445 hH, mul_zero]

/-- Reuse upstream boundarySound446; only coordinates and scaling change. -/
theorem rowSound1089 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1089) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1089 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row1089 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow446
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row1089, OAI.MUB6.Certificate.PairSemantics.boundaryRow446, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment20, oldMoment94, oldMoment228, oldMoment241, oldMoment243, oldMoment247, oldMoment549, oldMoment602, oldMoment617, oldMoment697, oldMoment698, oldMoment700, oldMoment704, oldMoment809, oldMoment1059, oldMoment1115, oldMoment1117, oldMoment1219, oldMoment1223, oldMoment1225, oldMoment1226, oldMoment1227, oldMoment1250, oldMoment1251, oldMoment1321, oldMoment1323, oldMoment1331, oldMoment1352, oldMoment1356, oldMoment1389] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound446 hH, mul_zero]

/-- Reuse upstream boundarySound447; only coordinates and scaling change. -/
theorem rowSound1090 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1090) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1090 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row1090 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow447
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row1090, OAI.MUB6.Certificate.PairSemantics.boundaryRow447, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment20, oldMoment38, oldMoment42, oldMoment81, oldMoment90, oldMoment94, oldMoment241, oldMoment243, oldMoment244, oldMoment247, oldMoment330, oldMoment479, oldMoment480, oldMoment483, oldMoment489, oldMoment492, oldMoment493, oldMoment498, oldMoment505, oldMoment603, oldMoment623, oldMoment697, oldMoment698, oldMoment700, oldMoment701, oldMoment704, oldMoment1059, oldMoment1061, oldMoment1226, oldMoment1227, oldMoment1251, oldMoment1321] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound447 hH, mul_zero]

end NoFourMUBs.Step2.SOS.Semantics
