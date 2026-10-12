import NoFourMUBs.Step2.SOS.MomentData
import NoFourMUBs.Step2.SOS.Data
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Boundary11

namespace NoFourMUBs.Step2.SOS.Semantics
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

/-- Reuse upstream boundarySound303; only coordinates and scaling change. -/
theorem rowSound959 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 959) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row959 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row959 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow303
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row959, OAI.MUB6.Certificate.PairSemantics.boundaryRow303, Integer.Sparse.eval,
      oldMoment0, oldMoment3, oldMoment19, oldMoment20, oldMoment23, oldMoment38, oldMoment94, oldMoment102, oldMoment104, oldMoment105, oldMoment108, oldMoment111, oldMoment124, oldMoment126, oldMoment127, oldMoment137, oldMoment138, oldMoment169, oldMoment238, oldMoment241, oldMoment243, oldMoment247, oldMoment697, oldMoment698, oldMoment700, oldMoment704, oldMoment1050, oldMoment1052, oldMoment1053, oldMoment1054, oldMoment1055, oldMoment1058, oldMoment1059, oldMoment1223, oldMoment1226, oldMoment1250, oldMoment1251] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound303 hH, mul_zero]

/-- Reuse upstream boundarySound304; only coordinates and scaling change. -/
theorem rowSound960 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 960) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row960 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row960 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow304
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row960, OAI.MUB6.Certificate.PairSemantics.boundaryRow304, Integer.Sparse.eval,
      oldMoment0, oldMoment3, oldMoment19, oldMoment20, oldMoment23, oldMoment94, oldMoment102, oldMoment104, oldMoment105, oldMoment108, oldMoment111, oldMoment113, oldMoment127, oldMoment228, oldMoment241, oldMoment243, oldMoment247, oldMoment288, oldMoment294, oldMoment309, oldMoment329, oldMoment697, oldMoment698, oldMoment700, oldMoment704, oldMoment1054, oldMoment1055, oldMoment1059, oldMoment1061, oldMoment1223, oldMoment1226, oldMoment1227, oldMoment1251, oldMoment1278] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound304 hH, mul_zero]

/-- Reuse upstream boundarySound305; only coordinates and scaling change. -/
theorem rowSound961 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 961) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row961 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row961 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow305
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row961, OAI.MUB6.Certificate.PairSemantics.boundaryRow305, Integer.Sparse.eval,
      oldMoment0, oldMoment3, oldMoment19, oldMoment20, oldMoment23, oldMoment38, oldMoment94, oldMoment104, oldMoment105, oldMoment108, oldMoment119, oldMoment137, oldMoment138, oldMoment140, oldMoment143, oldMoment169, oldMoment241, oldMoment243, oldMoment247, oldMoment697, oldMoment698, oldMoment700, oldMoment704, oldMoment1054, oldMoment1061, oldMoment1219, oldMoment1223, oldMoment1226, oldMoment1227, oldMoment1251, oldMoment1278] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound305 hH, mul_zero]

/-- Reuse upstream boundarySound306; only coordinates and scaling change. -/
theorem rowSound962 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 962) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row962 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row962 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow306
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row962, OAI.MUB6.Certificate.PairSemantics.boundaryRow306, Integer.Sparse.eval,
      oldMoment0, oldMoment3, oldMoment19, oldMoment20, oldMoment23, oldMoment94, oldMoment102, oldMoment104, oldMoment105, oldMoment108, oldMoment113, oldMoment241, oldMoment243, oldMoment247, oldMoment294, oldMoment309, oldMoment325, oldMoment329, oldMoment697, oldMoment698, oldMoment704, oldMoment1223, oldMoment1226, oldMoment1227, oldMoment1251, oldMoment1278] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound306 hH, mul_zero]

/-- Reuse upstream boundarySound307; only coordinates and scaling change. -/
theorem rowSound963 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 963) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row963 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row963 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow307
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row963, OAI.MUB6.Certificate.PairSemantics.boundaryRow307, Integer.Sparse.eval,
      oldMoment0, oldMoment3, oldMoment19, oldMoment20, oldMoment23, oldMoment81, oldMoment94, oldMoment104, oldMoment105, oldMoment228, oldMoment241, oldMoment243, oldMoment309, oldMoment455, oldMoment465, oldMoment690, oldMoment698, oldMoment700, oldMoment704, oldMoment1044, oldMoment1050, oldMoment1059, oldMoment1251, oldMoment1278, oldMoment1389] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound307 hH, mul_zero]

/-- Reuse upstream boundarySound308; only coordinates and scaling change. -/
theorem rowSound964 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 964) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row964 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row964 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow308
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row964, OAI.MUB6.Certificate.PairSemantics.boundaryRow308, Integer.Sparse.eval,
      oldMoment0, oldMoment3, oldMoment19, oldMoment20, oldMoment23, oldMoment94, oldMoment102, oldMoment104, oldMoment105, oldMoment108, oldMoment156, oldMoment241, oldMoment243, oldMoment247, oldMoment454, oldMoment478, oldMoment578, oldMoment690, oldMoment698, oldMoment700, oldMoment704, oldMoment1047, oldMoment1050, oldMoment1052, oldMoment1055, oldMoment1059, oldMoment1221, oldMoment1223, oldMoment1226, oldMoment1227, oldMoment1251] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound308 hH, mul_zero]

/-- Reuse upstream boundarySound311; only coordinates and scaling change. -/
theorem rowSound967 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 967) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row967 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row967 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow311
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row967, OAI.MUB6.Certificate.PairSemantics.boundaryRow311, Integer.Sparse.eval,
      oldMoment0, oldMoment3, oldMoment19, oldMoment20, oldMoment23, oldMoment81, oldMoment94, oldMoment102, oldMoment104, oldMoment105, oldMoment108, oldMoment156, oldMoment228, oldMoment241, oldMoment243, oldMoment247, oldMoment455, oldMoment484, oldMoment508, oldMoment691, oldMoment694, oldMoment698, oldMoment700, oldMoment704, oldMoment1050, oldMoment1052, oldMoment1055, oldMoment1058, oldMoment1059, oldMoment1223, oldMoment1226, oldMoment1227, oldMoment1251] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound311 hH, mul_zero]

/-- Reuse upstream boundarySound312; only coordinates and scaling change. -/
theorem rowSound968 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 968) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row968 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row968 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow312
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row968, OAI.MUB6.Certificate.PairSemantics.boundaryRow312, Integer.Sparse.eval,
      oldMoment0, oldMoment3, oldMoment19, oldMoment20, oldMoment23, oldMoment94, oldMoment102, oldMoment104, oldMoment105, oldMoment108, oldMoment156, oldMoment241, oldMoment243, oldMoment247, oldMoment309, oldMoment454, oldMoment505, oldMoment691, oldMoment694, oldMoment697, oldMoment698, oldMoment700, oldMoment704, oldMoment1050, oldMoment1052, oldMoment1059, oldMoment1223, oldMoment1226, oldMoment1227, oldMoment1251, oldMoment1278] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound312 hH, mul_zero]

/-- Reuse upstream boundarySound313; only coordinates and scaling change. -/
theorem rowSound969 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 969) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row969 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row969 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow313
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row969, OAI.MUB6.Certificate.PairSemantics.boundaryRow313, Integer.Sparse.eval,
      oldMoment0, oldMoment3, oldMoment19, oldMoment20, oldMoment23, oldMoment38, oldMoment94, oldMoment104, oldMoment105, oldMoment108, oldMoment138, oldMoment241, oldMoment243, oldMoment247, oldMoment329, oldMoment408, oldMoment479, oldMoment492, oldMoment691, oldMoment694, oldMoment697, oldMoment698, oldMoment700, oldMoment704, oldMoment1050, oldMoment1052, oldMoment1054, oldMoment1059, oldMoment1061, oldMoment1251, oldMoment1278] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound313 hH, mul_zero]

/-- Reuse upstream boundarySound314; only coordinates and scaling change. -/
theorem rowSound970 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 970) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row970 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row970 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow314
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row970, OAI.MUB6.Certificate.PairSemantics.boundaryRow314, Integer.Sparse.eval,
      oldMoment0, oldMoment3, oldMoment19, oldMoment20, oldMoment23, oldMoment38, oldMoment94, oldMoment102, oldMoment104, oldMoment108, oldMoment153, oldMoment238, oldMoment241, oldMoment243, oldMoment247, oldMoment408, oldMoment541, oldMoment690, oldMoment697, oldMoment698, oldMoment700, oldMoment704, oldMoment1050, oldMoment1058, oldMoment1059, oldMoment1223, oldMoment1226, oldMoment1250, oldMoment1251, oldMoment1319] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound314 hH, mul_zero]

/-- Reuse upstream boundarySound315; only coordinates and scaling change. -/
theorem rowSound971 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 971) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row971 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row971 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow315
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row971, OAI.MUB6.Certificate.PairSemantics.boundaryRow315, Integer.Sparse.eval,
      oldMoment0, oldMoment3, oldMoment19, oldMoment20, oldMoment94, oldMoment102, oldMoment104, oldMoment105, oldMoment108, oldMoment124, oldMoment153, oldMoment238, oldMoment241, oldMoment243, oldMoment247, oldMoment418, oldMoment690, oldMoment697, oldMoment698, oldMoment700, oldMoment1044, oldMoment1047, oldMoment1050, oldMoment1052, oldMoment1054, oldMoment1058, oldMoment1059, oldMoment1223, oldMoment1226, oldMoment1250, oldMoment1251, oldMoment1319] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound315 hH, mul_zero]

/-- Reuse upstream boundarySound332; only coordinates and scaling change. -/
theorem rowSound975 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 975) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row975 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row975 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow332
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row975, OAI.MUB6.Certificate.PairSemantics.boundaryRow332, Integer.Sparse.eval,
      oldMoment0, oldMoment3, oldMoment19, oldMoment20, oldMoment72, oldMoment93, oldMoment94, oldMoment104, oldMoment105, oldMoment240, oldMoment241, oldMoment243, oldMoment668, oldMoment690, oldMoment694, oldMoment697, oldMoment698, oldMoment700, oldMoment914, oldMoment1044, oldMoment1047, oldMoment1050, oldMoment1055, oldMoment1058, oldMoment1059, oldMoment1124, oldMoment1221, oldMoment1227, oldMoment1250, oldMoment1251] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound332 hH, mul_zero]

/-- Reuse upstream boundarySound337; only coordinates and scaling change. -/
theorem rowSound980 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 980) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row980 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row980 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow337
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row980, OAI.MUB6.Certificate.PairSemantics.boundaryRow337, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment20, oldMoment94, oldMoment169, oldMoment241, oldMoment243, oldMoment247, oldMoment478, oldMoment549, oldMoment602, oldMoment697, oldMoment698, oldMoment700, oldMoment1059, oldMoment1095, oldMoment1219, oldMoment1223, oldMoment1226, oldMoment1227, oldMoment1251, oldMoment1323, oldMoment1389] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound337 hH, mul_zero]

/-- Reuse upstream boundarySound338; only coordinates and scaling change. -/
theorem rowSound981 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 981) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row981 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row981 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow338
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row981, OAI.MUB6.Certificate.PairSemantics.boundaryRow338, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment20, oldMoment38, oldMoment94, oldMoment126, oldMoment130, oldMoment238, oldMoment241, oldMoment243, oldMoment247, oldMoment307, oldMoment427, oldMoment434, oldMoment698, oldMoment700, oldMoment704, oldMoment738, oldMoment751, oldMoment1053, oldMoment1057, oldMoment1058, oldMoment1059, oldMoment1223, oldMoment1225, oldMoment1226, oldMoment1227, oldMoment1251] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound338 hH, mul_zero]

/-- Reuse upstream boundarySound339; only coordinates and scaling change. -/
theorem rowSound982 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 982) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row982 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row982 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow339
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row982, OAI.MUB6.Certificate.PairSemantics.boundaryRow339, Integer.Sparse.eval,
      oldMoment0, oldMoment3, oldMoment19, oldMoment20, oldMoment81, oldMoment94, oldMoment104, oldMoment105, oldMoment229, oldMoment241, oldMoment243, oldMoment285, oldMoment423, oldMoment434, oldMoment698, oldMoment704, oldMoment716, oldMoment1040, oldMoment1045, oldMoment1052, oldMoment1058, oldMoment1059, oldMoment1060, oldMoment1146, oldMoment1184, oldMoment1207, oldMoment1223, oldMoment1225, oldMoment1226, oldMoment1227, oldMoment1251] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound339 hH, mul_zero]

/-- Reuse upstream boundarySound340; only coordinates and scaling change. -/
theorem rowSound983 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 983) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row983 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row983 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow340
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row983, OAI.MUB6.Certificate.PairSemantics.boundaryRow340, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment79, oldMoment81, oldMoment94, oldMoment197, oldMoment200, oldMoment201, oldMoment238, oldMoment241, oldMoment243, oldMoment247, oldMoment462, oldMoment638, oldMoment695, oldMoment697, oldMoment698, oldMoment700, oldMoment1050, oldMoment1052, oldMoment1055, oldMoment1058, oldMoment1059, oldMoment1221, oldMoment1226, oldMoment1250, oldMoment1251] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound340 hH, mul_zero]

end NoFourMUBs.Step2.SOS.Semantics
