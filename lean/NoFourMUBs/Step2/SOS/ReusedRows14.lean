import NoFourMUBs.Step2.SOS.MomentData
import NoFourMUBs.Step2.SOS.Data
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Boundary14

namespace NoFourMUBs.Step2.SOS.Semantics
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

/-- Reuse upstream boundarySound390; only coordinates and scaling change. -/
theorem rowSound1033 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1033) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1033 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row1033 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow390
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row1033, OAI.MUB6.Certificate.PairSemantics.boundaryRow390, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment20, oldMoment38, oldMoment42, oldMoment60, oldMoment61, oldMoment94, oldMoment126, oldMoment127, oldMoment130, oldMoment132, oldMoment228, oldMoment229, oldMoment238, oldMoment241, oldMoment243, oldMoment244, oldMoment247, oldMoment498, oldMoment698, oldMoment700, oldMoment701, oldMoment704, oldMoment717, oldMoment730, oldMoment1053, oldMoment1059, oldMoment1061, oldMoment1146, oldMoment1251] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound390 hH, mul_zero]

/-- Reuse upstream boundarySound393; only coordinates and scaling change. -/
theorem rowSound1036 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1036) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1036 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row1036 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow393
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row1036, OAI.MUB6.Certificate.PairSemantics.boundaryRow393, Integer.Sparse.eval,
      oldMoment0, oldMoment3, oldMoment19, oldMoment20, oldMoment37, oldMoment38, oldMoment93, oldMoment94, oldMoment104, oldMoment105, oldMoment124, oldMoment126, oldMoment129, oldMoment238, oldMoment240, oldMoment241, oldMoment243, oldMoment244, oldMoment247, oldMoment307, oldMoment427, oldMoment690, oldMoment697, oldMoment698, oldMoment700, oldMoment738, oldMoment1044, oldMoment1045, oldMoment1050, oldMoment1052, oldMoment1053, oldMoment1057, oldMoment1058, oldMoment1059, oldMoment1250, oldMoment1251] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound393 hH, mul_zero]

/-- Reuse upstream boundarySound394; only coordinates and scaling change. -/
theorem rowSound1037 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1037) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1037 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row1037 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow394
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row1037, OAI.MUB6.Certificate.PairSemantics.boundaryRow394, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment20, oldMoment38, oldMoment42, oldMoment82, oldMoment88, oldMoment90, oldMoment94, oldMoment127, oldMoment228, oldMoment238, oldMoment241, oldMoment243, oldMoment247, oldMoment283, oldMoment287, oldMoment288, oldMoment298, oldMoment426, oldMoment697, oldMoment698, oldMoment700, oldMoment704, oldMoment1055, oldMoment1058, oldMoment1059, oldMoment1223, oldMoment1226, oldMoment1227, oldMoment1250, oldMoment1251] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound394 hH, mul_zero]

/-- Reuse upstream boundarySound395; only coordinates and scaling change. -/
theorem rowSound1038 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1038) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1038 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row1038 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow395
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row1038, OAI.MUB6.Certificate.PairSemantics.boundaryRow395, Integer.Sparse.eval,
      oldMoment0, oldMoment3, oldMoment19, oldMoment20, oldMoment37, oldMoment38, oldMoment88, oldMoment93, oldMoment94, oldMoment104, oldMoment105, oldMoment127, oldMoment228, oldMoment238, oldMoment240, oldMoment241, oldMoment243, oldMoment247, oldMoment288, oldMoment307, oldMoment309, oldMoment426, oldMoment690, oldMoment694, oldMoment697, oldMoment698, oldMoment700, oldMoment704, oldMoment729, oldMoment732, oldMoment1047, oldMoment1055, oldMoment1057, oldMoment1058, oldMoment1059, oldMoment1223, oldMoment1226, oldMoment1227, oldMoment1250, oldMoment1251] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound395 hH, mul_zero]

/-- Reuse upstream boundarySound396; only coordinates and scaling change. -/
theorem rowSound1039 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1039) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1039 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row1039 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow396
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row1039, OAI.MUB6.Certificate.PairSemantics.boundaryRow396, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment20, oldMoment38, oldMoment81, oldMoment82, oldMoment88, oldMoment90, oldMoment94, oldMoment127, oldMoment228, oldMoment238, oldMoment241, oldMoment243, oldMoment247, oldMoment283, oldMoment287, oldMoment288, oldMoment291, oldMoment294, oldMoment298, oldMoment426, oldMoment686, oldMoment697, oldMoment698, oldMoment700, oldMoment704, oldMoment1055, oldMoment1058, oldMoment1059, oldMoment1223, oldMoment1225, oldMoment1226, oldMoment1227, oldMoment1250, oldMoment1251, oldMoment1389] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound396 hH, mul_zero]

/-- Reuse upstream boundarySound397; only coordinates and scaling change. -/
theorem rowSound1040 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1040) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1040 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row1040 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow397
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row1040, OAI.MUB6.Certificate.PairSemantics.boundaryRow397, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment20, oldMoment88, oldMoment94, oldMoment228, oldMoment241, oldMoment243, oldMoment247, oldMoment287, oldMoment288, oldMoment294, oldMoment698, oldMoment704, oldMoment1003, oldMoment1014, oldMoment1015, oldMoment1223, oldMoment1225, oldMoment1226, oldMoment1227, oldMoment1251] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound397 hH, mul_zero]

/-- Reuse upstream boundarySound398; only coordinates and scaling change. -/
theorem rowSound1041 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1041) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1041 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row1041 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow398
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row1041, OAI.MUB6.Certificate.PairSemantics.boundaryRow398, Integer.Sparse.eval,
      oldMoment0, oldMoment3, oldMoment19, oldMoment20, oldMoment40, oldMoment76, oldMoment77, oldMoment88, oldMoment93, oldMoment94, oldMoment104, oldMoment105, oldMoment126, oldMoment138, oldMoment238, oldMoment240, oldMoment241, oldMoment243, oldMoment247, oldMoment287, oldMoment297, oldMoment423, oldMoment543, oldMoment691, oldMoment692, oldMoment694, oldMoment698, oldMoment704, oldMoment716, oldMoment729, oldMoment1050, oldMoment1052, oldMoment1053, oldMoment1057, oldMoment1058, oldMoment1221, oldMoment1223, oldMoment1226, oldMoment1250, oldMoment1251] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound398 hH, mul_zero]

/-- Reuse upstream boundarySound399; only coordinates and scaling change. -/
theorem rowSound1042 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1042) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1042 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row1042 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow399
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row1042, OAI.MUB6.Certificate.PairSemantics.boundaryRow399, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment20, oldMoment38, oldMoment42, oldMoment88, oldMoment89, oldMoment90, oldMoment94, oldMoment127, oldMoment228, oldMoment241, oldMoment243, oldMoment247, oldMoment287, oldMoment288, oldMoment298, oldMoment426, oldMoment548, oldMoment609, oldMoment698, oldMoment700, oldMoment701, oldMoment704, oldMoment757, oldMoment1014, oldMoment1059, oldMoment1061, oldMoment1219, oldMoment1223, oldMoment1225, oldMoment1226, oldMoment1227, oldMoment1251] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound399 hH, mul_zero]

/-- Reuse upstream boundarySound400; only coordinates and scaling change. -/
theorem rowSound1043 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1043) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1043 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row1043 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow400
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row1043, OAI.MUB6.Certificate.PairSemantics.boundaryRow400, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment20, oldMoment38, oldMoment42, oldMoment77, oldMoment81, oldMoment90, oldMoment94, oldMoment126, oldMoment127, oldMoment129, oldMoment130, oldMoment228, oldMoment231, oldMoment238, oldMoment241, oldMoment243, oldMoment244, oldMoment247, oldMoment288, oldMoment299, oldMoment427, oldMoment545, oldMoment548, oldMoment698, oldMoment700, oldMoment701, oldMoment704, oldMoment717, oldMoment1052, oldMoment1053, oldMoment1059, oldMoment1061, oldMoment1223, oldMoment1226, oldMoment1227, oldMoment1251] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound400 hH, mul_zero]

/-- Reuse upstream boundarySound401; only coordinates and scaling change. -/
theorem rowSound1044 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1044) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1044 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row1044 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow401
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row1044, OAI.MUB6.Certificate.PairSemantics.boundaryRow401, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment20, oldMoment38, oldMoment42, oldMoment81, oldMoment94, oldMoment228, oldMoment238, oldMoment241, oldMoment243, oldMoment244, oldMoment247, oldMoment283, oldMoment326, oldMoment327, oldMoment330, oldMoment489, oldMoment686, oldMoment697, oldMoment698, oldMoment700, oldMoment701, oldMoment704, oldMoment1059, oldMoment1227, oldMoment1251, oldMoment1389] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound401 hH, mul_zero]

/-- Reuse upstream boundarySound402; only coordinates and scaling change. -/
theorem rowSound1045 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1045) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1045 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row1045 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow402
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row1045, OAI.MUB6.Certificate.PairSemantics.boundaryRow402, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment20, oldMoment88, oldMoment94, oldMoment228, oldMoment241, oldMoment243, oldMoment247, oldMoment326, oldMoment609, oldMoment698, oldMoment704, oldMoment1223, oldMoment1225, oldMoment1226, oldMoment1227, oldMoment1251, oldMoment1331, oldMoment1356] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound402 hH, mul_zero]

/-- Reuse upstream boundarySound403; only coordinates and scaling change. -/
theorem rowSound1046 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1046) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1046 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row1046 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow403
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row1046, OAI.MUB6.Certificate.PairSemantics.boundaryRow403, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment20, oldMoment38, oldMoment81, oldMoment88, oldMoment94, oldMoment143, oldMoment228, oldMoment231, oldMoment241, oldMoment243, oldMoment247, oldMoment326, oldMoment327, oldMoment478, oldMoment489, oldMoment543, oldMoment548, oldMoment549, oldMoment697, oldMoment698, oldMoment700, oldMoment704, oldMoment741, oldMoment1059, oldMoment1061, oldMoment1219, oldMoment1226, oldMoment1227, oldMoment1251, oldMoment1323, oldMoment1389] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound403 hH, mul_zero]

/-- Reuse upstream boundarySound404; only coordinates and scaling change. -/
theorem rowSound1047 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1047) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1047 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row1047 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow404
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row1047, OAI.MUB6.Certificate.PairSemantics.boundaryRow404, Integer.Sparse.eval,
      oldMoment0, oldMoment3, oldMoment19, oldMoment20, oldMoment81, oldMoment94, oldMoment104, oldMoment108, oldMoment229, oldMoment241, oldMoment243, oldMoment247, oldMoment293, oldMoment418, oldMoment433, oldMoment682, oldMoment698, oldMoment704, oldMoment716, oldMoment750, oldMoment1040, oldMoment1045, oldMoment1052, oldMoment1059, oldMoment1146, oldMoment1154, oldMoment1217, oldMoment1221, oldMoment1223, oldMoment1225, oldMoment1226, oldMoment1227, oldMoment1251, oldMoment1321, oldMoment1333, oldMoment1389] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound404 hH, mul_zero]

/-- Reuse upstream boundarySound405; only coordinates and scaling change. -/
theorem rowSound1048 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1048) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1048 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row1048 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow405
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row1048, OAI.MUB6.Certificate.PairSemantics.boundaryRow405, Integer.Sparse.eval,
      oldMoment0, oldMoment3, oldMoment19, oldMoment20, oldMoment38, oldMoment40, oldMoment42, oldMoment45, oldMoment94, oldMoment104, oldMoment108, oldMoment141, oldMoment241, oldMoment242, oldMoment243, oldMoment244, oldMoment247, oldMoment326, oldMoment329, oldMoment330, oldMoment480, oldMoment692, oldMoment697, oldMoment698, oldMoment700, oldMoment701, oldMoment704, oldMoment1052, oldMoment1053, oldMoment1059, oldMoment1061, oldMoment1251] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound405 hH, mul_zero]

/-- Reuse upstream boundarySound406; only coordinates and scaling change. -/
theorem rowSound1049 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1049) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1049 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row1049 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow406
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row1049, OAI.MUB6.Certificate.PairSemantics.boundaryRow406, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment20, oldMoment38, oldMoment42, oldMoment94, oldMoment143, oldMoment241, oldMoment243, oldMoment244, oldMoment247, oldMoment326, oldMoment330, oldMoment480, oldMoment489, oldMoment492, oldMoment498, oldMoment505, oldMoment697, oldMoment698, oldMoment700, oldMoment701, oldMoment704, oldMoment741, oldMoment1059, oldMoment1061, oldMoment1219, oldMoment1226, oldMoment1227, oldMoment1231, oldMoment1251] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound406 hH, mul_zero]

/-- Reuse upstream boundarySound407; only coordinates and scaling change. -/
theorem rowSound1050 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1050) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1050 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row1050 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow407
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row1050, OAI.MUB6.Certificate.PairSemantics.boundaryRow407, Integer.Sparse.eval,
      oldMoment0, oldMoment3, oldMoment19, oldMoment20, oldMoment38, oldMoment94, oldMoment104, oldMoment108, oldMoment129, oldMoment241, oldMoment243, oldMoment244, oldMoment247, oldMoment293, oldMoment430, oldMoment433, oldMoment682, oldMoment697, oldMoment698, oldMoment700, oldMoment701, oldMoment704, oldMoment750, oldMoment796, oldMoment1040, oldMoment1045, oldMoment1052, oldMoment1053, oldMoment1059, oldMoment1061, oldMoment1154, oldMoment1217, oldMoment1219, oldMoment1221, oldMoment1223, oldMoment1225, oldMoment1226, oldMoment1227, oldMoment1251] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound407 hH, mul_zero]

end NoFourMUBs.Step2.SOS.Semantics
