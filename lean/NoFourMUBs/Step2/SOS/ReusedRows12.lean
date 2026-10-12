import NoFourMUBs.Step2.SOS.MomentData
import NoFourMUBs.Step2.SOS.Data
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Boundary12

namespace NoFourMUBs.Step2.SOS.Semantics
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

/-- Reuse upstream boundarySound343; only coordinates and scaling change. -/
theorem rowSound986 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 986) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row986 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row986 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow343
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row986, OAI.MUB6.Certificate.PairSemantics.boundaryRow343, Integer.Sparse.eval,
      oldMoment0, oldMoment3, oldMoment19, oldMoment20, oldMoment93, oldMoment94, oldMoment104, oldMoment105, oldMoment156, oldMoment201, oldMoment238, oldMoment240, oldMoment241, oldMoment243, oldMoment247, oldMoment578, oldMoment666, oldMoment690, oldMoment691, oldMoment694, oldMoment697, oldMoment698, oldMoment700, oldMoment704, oldMoment794, oldMoment911, oldMoment1047, oldMoment1050, oldMoment1055, oldMoment1057, oldMoment1058, oldMoment1059, oldMoment1124, oldMoment1226, oldMoment1227, oldMoment1250, oldMoment1251] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound343 hH, mul_zero]

/-- Reuse upstream boundarySound345; only coordinates and scaling change. -/
theorem rowSound988 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 988) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row988 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row988 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow345
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row988, OAI.MUB6.Certificate.PairSemantics.boundaryRow345, Integer.Sparse.eval,
      oldMoment0, oldMoment3, oldMoment19, oldMoment20, oldMoment81, oldMoment93, oldMoment94, oldMoment104, oldMoment108, oldMoment153, oldMoment197, oldMoment229, oldMoment240, oldMoment241, oldMoment247, oldMoment541, oldMoment546, oldMoment669, oldMoment690, oldMoment694, oldMoment697, oldMoment698, oldMoment704, oldMoment1047, oldMoment1050, oldMoment1055, oldMoment1058, oldMoment1059, oldMoment1060, oldMoment1124, oldMoment1227, oldMoment1249, oldMoment1250, oldMoment1251, oldMoment1252, oldMoment1319, oldMoment1321, oldMoment1388, oldMoment1389] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound345 hH, mul_zero]

/-- Reuse upstream boundarySound346; only coordinates and scaling change. -/
theorem rowSound989 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 989) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row989 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row989 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow346
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row989, OAI.MUB6.Certificate.PairSemantics.boundaryRow346, Integer.Sparse.eval,
      oldMoment0, oldMoment3, oldMoment19, oldMoment20, oldMoment45, oldMoment94, oldMoment104, oldMoment105, oldMoment108, oldMoment137, oldMoment169, oldMoment241, oldMoment242, oldMoment243, oldMoment247, oldMoment329, oldMoment478, oldMoment549, oldMoment635, oldMoment697, oldMoment698, oldMoment704, oldMoment1086, oldMoment1089, oldMoment1214, oldMoment1219, oldMoment1223, oldMoment1226, oldMoment1227, oldMoment1251, oldMoment1323, oldMoment1389] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound346 hH, mul_zero]

/-- Reuse upstream boundarySound347; only coordinates and scaling change. -/
theorem rowSound990 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 990) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row990 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row990 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow347
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row990, OAI.MUB6.Certificate.PairSemantics.boundaryRow347, Integer.Sparse.eval,
      oldMoment0, oldMoment3, oldMoment19, oldMoment20, oldMoment37, oldMoment81, oldMoment94, oldMoment104, oldMoment108, oldMoment124, oldMoment160, oldMoment240, oldMoment241, oldMoment247, oldMoment325, oldMoment617, oldMoment697, oldMoment698, oldMoment704, oldMoment1040, oldMoment1045, oldMoment1050, oldMoment1052, oldMoment1059, oldMoment1103, oldMoment1105, oldMoment1227, oldMoment1250, oldMoment1251, oldMoment1388] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound347 hH, mul_zero]

/-- Reuse upstream boundarySound349; only coordinates and scaling change. -/
theorem rowSound992 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 992) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row992 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row992 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow349
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row992, OAI.MUB6.Certificate.PairSemantics.boundaryRow349, Integer.Sparse.eval,
      oldMoment0, oldMoment3, oldMoment19, oldMoment20, oldMoment76, oldMoment81, oldMoment93, oldMoment94, oldMoment104, oldMoment105, oldMoment156, oldMoment200, oldMoment231, oldMoment241, oldMoment242, oldMoment243, oldMoment247, oldMoment478, oldMoment484, oldMoment508, oldMoment668, oldMoment690, oldMoment691, oldMoment694, oldMoment697, oldMoment698, oldMoment700, oldMoment704, oldMoment794, oldMoment800, oldMoment914, oldMoment1047, oldMoment1050, oldMoment1052, oldMoment1055, oldMoment1057, oldMoment1058, oldMoment1059, oldMoment1219, oldMoment1221, oldMoment1226, oldMoment1227, oldMoment1250, oldMoment1251, oldMoment1323, oldMoment1389] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound349 hH, mul_zero]

/-- Reuse upstream boundarySound350; only coordinates and scaling change. -/
theorem rowSound993 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 993) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row993 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row993 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow350
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row993, OAI.MUB6.Certificate.PairSemantics.boundaryRow350, Integer.Sparse.eval,
      oldMoment0, oldMoment3, oldMoment19, oldMoment20, oldMoment93, oldMoment94, oldMoment104, oldMoment108, oldMoment153, oldMoment238, oldMoment241, oldMoment242, oldMoment243, oldMoment244, oldMoment247, oldMoment465, oldMoment549, oldMoment669, oldMoment690, oldMoment694, oldMoment697, oldMoment698, oldMoment700, oldMoment704, oldMoment794, oldMoment1047, oldMoment1055, oldMoment1058, oldMoment1059, oldMoment1060, oldMoment1226, oldMoment1227, oldMoment1248, oldMoment1249, oldMoment1250, oldMoment1251, oldMoment1319, oldMoment1323, oldMoment1388, oldMoment1389] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound350 hH, mul_zero]

/-- Reuse upstream boundarySound351; only coordinates and scaling change. -/
theorem rowSound994 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 994) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row994 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row994 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow351
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row994, OAI.MUB6.Certificate.PairSemantics.boundaryRow351, Integer.Sparse.eval,
      oldMoment0, oldMoment3, oldMoment19, oldMoment20, oldMoment45, oldMoment94, oldMoment104, oldMoment105, oldMoment108, oldMoment137, oldMoment241, oldMoment242, oldMoment243, oldMoment247, oldMoment329, oldMoment492, oldMoment505, oldMoment617, oldMoment697, oldMoment698, oldMoment700, oldMoment704, oldMoment1052, oldMoment1059, oldMoment1105, oldMoment1214, oldMoment1219, oldMoment1223, oldMoment1225, oldMoment1226, oldMoment1227, oldMoment1251, oldMoment1352] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound351 hH, mul_zero]

/-- Reuse upstream boundarySound353; only coordinates and scaling change. -/
theorem rowSound996 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 996) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row996 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row996 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow353
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row996, OAI.MUB6.Certificate.PairSemantics.boundaryRow353, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment20, oldMoment94, oldMoment169, oldMoment241, oldMoment243, oldMoment247, oldMoment492, oldMoment505, oldMoment602, oldMoment617, oldMoment697, oldMoment698, oldMoment700, oldMoment704, oldMoment809, oldMoment1052, oldMoment1058, oldMoment1059, oldMoment1095, oldMoment1105, oldMoment1219, oldMoment1223, oldMoment1225, oldMoment1226, oldMoment1227, oldMoment1251, oldMoment1352] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound353 hH, mul_zero]

/-- Reuse upstream boundarySound354; only coordinates and scaling change. -/
theorem rowSound997 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 997) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row997 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row997 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow354
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row997, OAI.MUB6.Certificate.PairSemantics.boundaryRow354, Integer.Sparse.eval,
      oldMoment0, oldMoment3, oldMoment19, oldMoment20, oldMoment38, oldMoment81, oldMoment94, oldMoment104, oldMoment105, oldMoment126, oldMoment130, oldMoment229, oldMoment238, oldMoment241, oldMoment243, oldMoment244, oldMoment247, oldMoment289, oldMoment427, oldMoment698, oldMoment700, oldMoment701, oldMoment704, oldMoment716, oldMoment738, oldMoment796, oldMoment1040, oldMoment1045, oldMoment1052, oldMoment1053, oldMoment1059, oldMoment1061, oldMoment1146, oldMoment1251] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound354 hH, mul_zero]

/-- Reuse upstream boundarySound355; only coordinates and scaling change. -/
theorem rowSound998 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 998) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row998 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row998 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow355
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row998, OAI.MUB6.Certificate.PairSemantics.boundaryRow355, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment72, oldMoment81, oldMoment93, oldMoment94, oldMoment153, oldMoment197, oldMoment229, oldMoment241, oldMoment243, oldMoment690, oldMoment694, oldMoment698, oldMoment700, oldMoment1044, oldMoment1047, oldMoment1050, oldMoment1055, oldMoment1058, oldMoment1059, oldMoment1060, oldMoment1221, oldMoment1227, oldMoment1250, oldMoment1251] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound355 hH, mul_zero]

/-- Reuse upstream boundarySound356; only coordinates and scaling change. -/
theorem rowSound999 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 999) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row999 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row999 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow356
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row999, OAI.MUB6.Certificate.PairSemantics.boundaryRow356, Integer.Sparse.eval,
      oldMoment0, oldMoment3, oldMoment19, oldMoment20, oldMoment37, oldMoment72, oldMoment81, oldMoment93, oldMoment94, oldMoment104, oldMoment105, oldMoment124, oldMoment160, oldMoment240, oldMoment241, oldMoment243, oldMoment690, oldMoment697, oldMoment698, oldMoment700, oldMoment1040, oldMoment1044, oldMoment1045, oldMoment1050, oldMoment1052, oldMoment1059, oldMoment1221, oldMoment1227, oldMoment1250, oldMoment1251] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound356 hH, mul_zero]

/-- Reuse upstream boundarySound362; only coordinates and scaling change. -/
theorem rowSound1005 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1005) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1005 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row1005 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow362
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row1005, OAI.MUB6.Certificate.PairSemantics.boundaryRow362, Integer.Sparse.eval,
      oldMoment3, oldMoment19, oldMoment20, oldMoment45, oldMoment93, oldMoment94, oldMoment104, oldMoment105, oldMoment108, oldMoment240, oldMoment241, oldMoment242, oldMoment243, oldMoment247, oldMoment309, oldMoment329, oldMoment465, oldMoment546, oldMoment549, oldMoment635, oldMoment694, oldMoment697, oldMoment698, oldMoment700, oldMoment704, oldMoment1047, oldMoment1055, oldMoment1058, oldMoment1059, oldMoment1086, oldMoment1089, oldMoment1103, oldMoment1219, oldMoment1226, oldMoment1227, oldMoment1250, oldMoment1251, oldMoment1319, oldMoment1321, oldMoment1323, oldMoment1388, oldMoment1389] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound362 hH, mul_zero]

/-- Reuse upstream boundarySound363; only coordinates and scaling change. -/
theorem rowSound1006 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1006) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1006 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row1006 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow363
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row1006, OAI.MUB6.Certificate.PairSemantics.boundaryRow363, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment20, oldMoment38, oldMoment42, oldMoment81, oldMoment94, oldMoment228, oldMoment238, oldMoment241, oldMoment243, oldMoment244, oldMoment247, oldMoment283, oldMoment288, oldMoment294, oldMoment307, oldMoment311, oldMoment332, oldMoment333, oldMoment427, oldMoment433, oldMoment686, oldMoment692, oldMoment697, oldMoment698, oldMoment700, oldMoment701, oldMoment704, oldMoment1052, oldMoment1058, oldMoment1059, oldMoment1221, oldMoment1223, oldMoment1226, oldMoment1227, oldMoment1251, oldMoment1389] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound363 hH, mul_zero]

/-- Reuse upstream boundarySound364; only coordinates and scaling change. -/
theorem rowSound1007 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1007) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1007 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row1007 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow364
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row1007, OAI.MUB6.Certificate.PairSemantics.boundaryRow364, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment20, oldMoment94, oldMoment228, oldMoment238, oldMoment241, oldMoment243, oldMoment244, oldMoment247, oldMoment287, oldMoment294, oldMoment426, oldMoment434, oldMoment698, oldMoment700, oldMoment704, oldMoment729, oldMoment751, oldMoment1058, oldMoment1059, oldMoment1186, oldMoment1207, oldMoment1214, oldMoment1219, oldMoment1223, oldMoment1225, oldMoment1226, oldMoment1227, oldMoment1251] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound364 hH, mul_zero]

/-- Reuse upstream boundarySound365; only coordinates and scaling change. -/
theorem rowSound1008 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1008) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1008 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row1008 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow365
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row1008, OAI.MUB6.Certificate.PairSemantics.boundaryRow365, Integer.Sparse.eval,
      oldMoment3, oldMoment19, oldMoment20, oldMoment37, oldMoment81, oldMoment93, oldMoment94, oldMoment104, oldMoment105, oldMoment124, oldMoment229, oldMoment240, oldMoment241, oldMoment243, oldMoment285, oldMoment293, oldMoment418, oldMoment423, oldMoment433, oldMoment682, oldMoment690, oldMoment697, oldMoment698, oldMoment704, oldMoment716, oldMoment750, oldMoment1040, oldMoment1044, oldMoment1045, oldMoment1050, oldMoment1052, oldMoment1058, oldMoment1059, oldMoment1060, oldMoment1154, oldMoment1184, oldMoment1217, oldMoment1221, oldMoment1223, oldMoment1225, oldMoment1226, oldMoment1227, oldMoment1250, oldMoment1251, oldMoment1321, oldMoment1389] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound365 hH, mul_zero]

/-- Reuse upstream boundarySound368; only coordinates and scaling change. -/
theorem rowSound1011 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1011) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1011 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row1011 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow368
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row1011, OAI.MUB6.Certificate.PairSemantics.boundaryRow368, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment20, oldMoment88, oldMoment94, oldMoment228, oldMoment241, oldMoment243, oldMoment247, oldMoment287, oldMoment288, oldMoment294, oldMoment609, oldMoment698, oldMoment704, oldMoment1003, oldMoment1014, oldMoment1015, oldMoment1223, oldMoment1225, oldMoment1226, oldMoment1227, oldMoment1251] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound368 hH, mul_zero]

end NoFourMUBs.Step2.SOS.Semantics
