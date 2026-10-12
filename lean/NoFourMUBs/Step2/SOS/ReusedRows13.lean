import NoFourMUBs.Step2.SOS.MomentData
import NoFourMUBs.Step2.SOS.Data
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Boundary13

namespace NoFourMUBs.Step2.SOS.Semantics
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

/-- Reuse upstream boundarySound369; only coordinates and scaling change. -/
theorem rowSound1012 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1012) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1012 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row1012 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow369
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row1012, OAI.MUB6.Certificate.PairSemantics.boundaryRow369, Integer.Sparse.eval,
      oldMoment0, oldMoment3, oldMoment19, oldMoment20, oldMoment37, oldMoment81, oldMoment93, oldMoment94, oldMoment104, oldMoment105, oldMoment228, oldMoment229, oldMoment240, oldMoment241, oldMoment243, oldMoment247, oldMoment285, oldMoment287, oldMoment293, oldMoment294, oldMoment309, oldMoment426, oldMoment483, oldMoment682, oldMoment690, oldMoment694, oldMoment697, oldMoment698, oldMoment704, oldMoment757, oldMoment798, oldMoment1040, oldMoment1047, oldMoment1055, oldMoment1058, oldMoment1060, oldMoment1186, oldMoment1223, oldMoment1225, oldMoment1226, oldMoment1227, oldMoment1250, oldMoment1251, oldMoment1321, oldMoment1389] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound369 hH, mul_zero]

/-- Reuse upstream boundarySound372; only coordinates and scaling change. -/
theorem rowSound1015 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1015) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1015 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row1015 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow372
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row1015, OAI.MUB6.Certificate.PairSemantics.boundaryRow372, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment20, oldMoment38, oldMoment81, oldMoment88, oldMoment94, oldMoment127, oldMoment129, oldMoment130, oldMoment228, oldMoment231, oldMoment238, oldMoment241, oldMoment243, oldMoment247, oldMoment288, oldMoment294, oldMoment307, oldMoment333, oldMoment426, oldMoment433, oldMoment434, oldMoment543, oldMoment548, oldMoment698, oldMoment700, oldMoment704, oldMoment729, oldMoment732, oldMoment750, oldMoment751, oldMoment1052, oldMoment1057, oldMoment1058, oldMoment1059, oldMoment1061, oldMoment1219, oldMoment1221, oldMoment1223, oldMoment1225, oldMoment1226, oldMoment1227, oldMoment1251] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound372 hH, mul_zero]

/-- Reuse upstream boundarySound373; only coordinates and scaling change. -/
theorem rowSound1016 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1016) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1016 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row1016 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow373
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row1016, OAI.MUB6.Certificate.PairSemantics.boundaryRow373, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment20, oldMoment81, oldMoment94, oldMoment228, oldMoment229, oldMoment241, oldMoment243, oldMoment244, oldMoment247, oldMoment285, oldMoment287, oldMoment294, oldMoment332, oldMoment426, oldMoment433, oldMoment434, oldMoment698, oldMoment700, oldMoment701, oldMoment704, oldMoment720, oldMoment757, oldMoment798, oldMoment1040, oldMoment1052, oldMoment1053, oldMoment1058, oldMoment1059, oldMoment1060, oldMoment1061, oldMoment1146, oldMoment1154, oldMoment1186, oldMoment1207, oldMoment1219, oldMoment1223, oldMoment1225, oldMoment1226, oldMoment1227, oldMoment1251] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound373 hH, mul_zero]

/-- Reuse upstream boundarySound374; only coordinates and scaling change. -/
theorem rowSound1017 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1017) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1017 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row1017 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow374
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row1017, OAI.MUB6.Certificate.PairSemantics.boundaryRow374, Integer.Sparse.eval,
      oldMoment0, oldMoment3, oldMoment19, oldMoment20, oldMoment93, oldMoment94, oldMoment104, oldMoment105, oldMoment108, oldMoment240, oldMoment241, oldMoment243, oldMoment247, oldMoment546, oldMoment666, oldMoment691, oldMoment694, oldMoment697, oldMoment698, oldMoment704, oldMoment794, oldMoment911, oldMoment1047, oldMoment1050, oldMoment1055, oldMoment1058, oldMoment1059, oldMoment1226, oldMoment1227, oldMoment1250, oldMoment1251, oldMoment1252, oldMoment1319, oldMoment1321, oldMoment1388, oldMoment1389] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound374 hH, mul_zero]

/-- Reuse upstream boundarySound377; only coordinates and scaling change. -/
theorem rowSound1020 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1020) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1020 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row1020 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow377
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row1020, OAI.MUB6.Certificate.PairSemantics.boundaryRow377, Integer.Sparse.eval,
      oldMoment0, oldMoment3, oldMoment19, oldMoment20, oldMoment38, oldMoment40, oldMoment42, oldMoment93, oldMoment94, oldMoment104, oldMoment105, oldMoment138, oldMoment228, oldMoment229, oldMoment240, oldMoment241, oldMoment243, oldMoment244, oldMoment247, oldMoment288, oldMoment311, oldMoment427, oldMoment479, oldMoment480, oldMoment691, oldMoment692, oldMoment694, oldMoment698, oldMoment700, oldMoment701, oldMoment704, oldMoment717, oldMoment796, oldMoment798, oldMoment1050, oldMoment1052, oldMoment1058, oldMoment1059, oldMoment1060, oldMoment1061, oldMoment1223, oldMoment1226, oldMoment1227, oldMoment1250, oldMoment1251, oldMoment1321] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound377 hH, mul_zero]

/-- Reuse upstream boundarySound378; only coordinates and scaling change. -/
theorem rowSound1021 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1021) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1021 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row1021 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow378
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row1021, OAI.MUB6.Certificate.PairSemantics.boundaryRow378, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment20, oldMoment38, oldMoment42, oldMoment81, oldMoment94, oldMoment127, oldMoment129, oldMoment130, oldMoment228, oldMoment229, oldMoment238, oldMoment241, oldMoment243, oldMoment244, oldMoment247, oldMoment288, oldMoment289, oldMoment312, oldMoment461, oldMoment480, oldMoment498, oldMoment698, oldMoment700, oldMoment701, oldMoment704, oldMoment720, oldMoment730, oldMoment757, oldMoment804, oldMoment1040, oldMoment1052, oldMoment1053, oldMoment1059, oldMoment1061, oldMoment1146, oldMoment1223, oldMoment1225, oldMoment1226, oldMoment1227, oldMoment1251] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound378 hH, mul_zero]

/-- Reuse upstream boundarySound379; only coordinates and scaling change. -/
theorem rowSound1022 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1022) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1022 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row1022 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow379
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row1022, OAI.MUB6.Certificate.PairSemantics.boundaryRow379, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment20, oldMoment38, oldMoment42, oldMoment81, oldMoment82, oldMoment90, oldMoment94, oldMoment126, oldMoment127, oldMoment129, oldMoment130, oldMoment238, oldMoment241, oldMoment243, oldMoment244, oldMoment247, oldMoment283, oldMoment288, oldMoment289, oldMoment299, oldMoment427, oldMoment697, oldMoment698, oldMoment700, oldMoment701, oldMoment704, oldMoment1050, oldMoment1052, oldMoment1053, oldMoment1058, oldMoment1059, oldMoment1061, oldMoment1223, oldMoment1226, oldMoment1227, oldMoment1250, oldMoment1251] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound379 hH, mul_zero]

/-- Reuse upstream boundarySound381; only coordinates and scaling change. -/
theorem rowSound1024 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1024) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1024 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row1024 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow381
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row1024, OAI.MUB6.Certificate.PairSemantics.boundaryRow381, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment20, oldMoment38, oldMoment81, oldMoment82, oldMoment90, oldMoment94, oldMoment126, oldMoment129, oldMoment228, oldMoment238, oldMoment241, oldMoment243, oldMoment247, oldMoment283, oldMoment285, oldMoment287, oldMoment291, oldMoment294, oldMoment297, oldMoment307, oldMoment332, oldMoment333, oldMoment423, oldMoment433, oldMoment686, oldMoment692, oldMoment697, oldMoment698, oldMoment700, oldMoment704, oldMoment1050, oldMoment1052, oldMoment1053, oldMoment1058, oldMoment1059, oldMoment1221, oldMoment1223, oldMoment1226, oldMoment1227, oldMoment1250, oldMoment1251, oldMoment1389] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound381 hH, mul_zero]

/-- Reuse upstream boundarySound382; only coordinates and scaling change. -/
theorem rowSound1025 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1025) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1025 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row1025 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow382
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row1025, OAI.MUB6.Certificate.PairSemantics.boundaryRow382, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment20, oldMoment88, oldMoment94, oldMoment127, oldMoment130, oldMoment228, oldMoment241, oldMoment243, oldMoment247, oldMoment288, oldMoment294, oldMoment426, oldMoment434, oldMoment698, oldMoment700, oldMoment704, oldMoment729, oldMoment732, oldMoment751, oldMoment798, oldMoment1058, oldMoment1059, oldMoment1061, oldMoment1207, oldMoment1214, oldMoment1219, oldMoment1223, oldMoment1225, oldMoment1226, oldMoment1227, oldMoment1251] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound382 hH, mul_zero]

/-- Reuse upstream boundarySound383; only coordinates and scaling change. -/
theorem rowSound1026 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1026) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1026 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row1026 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow383
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row1026, OAI.MUB6.Certificate.PairSemantics.boundaryRow383, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment20, oldMoment38, oldMoment81, oldMoment94, oldMoment126, oldMoment129, oldMoment229, oldMoment238, oldMoment241, oldMoment243, oldMoment244, oldMoment247, oldMoment289, oldMoment293, oldMoment418, oldMoment427, oldMoment430, oldMoment433, oldMoment682, oldMoment697, oldMoment698, oldMoment700, oldMoment701, oldMoment704, oldMoment716, oldMoment738, oldMoment750, oldMoment796, oldMoment1040, oldMoment1045, oldMoment1050, oldMoment1052, oldMoment1053, oldMoment1059, oldMoment1061, oldMoment1154, oldMoment1217, oldMoment1219, oldMoment1221, oldMoment1223, oldMoment1225, oldMoment1226, oldMoment1227, oldMoment1250, oldMoment1251, oldMoment1321, oldMoment1389] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound383 hH, mul_zero]

/-- Reuse upstream boundarySound384; only coordinates and scaling change. -/
theorem rowSound1027 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1027) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1027 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row1027 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow384
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row1027, OAI.MUB6.Certificate.PairSemantics.boundaryRow384, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment20, oldMoment38, oldMoment76, oldMoment77, oldMoment88, oldMoment94, oldMoment126, oldMoment127, oldMoment228, oldMoment238, oldMoment241, oldMoment243, oldMoment247, oldMoment288, oldMoment299, oldMoment427, oldMoment508, oldMoment543, oldMoment697, oldMoment698, oldMoment700, oldMoment704, oldMoment717, oldMoment1050, oldMoment1052, oldMoment1053, oldMoment1055, oldMoment1058, oldMoment1059, oldMoment1221, oldMoment1223, oldMoment1226, oldMoment1227, oldMoment1250, oldMoment1251] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound384 hH, mul_zero]

/-- Reuse upstream boundarySound385; only coordinates and scaling change. -/
theorem rowSound1028 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1028) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1028 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row1028 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow385
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row1028, OAI.MUB6.Certificate.PairSemantics.boundaryRow385, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment20, oldMoment81, oldMoment88, oldMoment89, oldMoment90, oldMoment94, oldMoment127, oldMoment228, oldMoment241, oldMoment243, oldMoment247, oldMoment287, oldMoment288, oldMoment294, oldMoment298, oldMoment426, oldMoment548, oldMoment609, oldMoment698, oldMoment700, oldMoment704, oldMoment757, oldMoment1014, oldMoment1059, oldMoment1061, oldMoment1219, oldMoment1223, oldMoment1225, oldMoment1226, oldMoment1227, oldMoment1251] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound385 hH, mul_zero]

/-- Reuse upstream boundarySound386; only coordinates and scaling change. -/
theorem rowSound1029 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1029) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1029 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row1029 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow386
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row1029, OAI.MUB6.Certificate.PairSemantics.boundaryRow386, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment20, oldMoment38, oldMoment42, oldMoment81, oldMoment94, oldMoment127, oldMoment228, oldMoment229, oldMoment238, oldMoment241, oldMoment243, oldMoment244, oldMoment247, oldMoment288, oldMoment289, oldMoment293, oldMoment294, oldMoment312, oldMoment461, oldMoment483, oldMoment505, oldMoment682, oldMoment697, oldMoment698, oldMoment700, oldMoment701, oldMoment704, oldMoment730, oldMoment757, oldMoment804, oldMoment1040, oldMoment1055, oldMoment1059, oldMoment1061, oldMoment1219, oldMoment1223, oldMoment1225, oldMoment1226, oldMoment1227, oldMoment1250, oldMoment1251, oldMoment1321, oldMoment1389] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound386 hH, mul_zero]

/-- Reuse upstream boundarySound387; only coordinates and scaling change. -/
theorem rowSound1030 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1030) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1030 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row1030 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow387
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row1030, OAI.MUB6.Certificate.PairSemantics.boundaryRow387, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment20, oldMoment38, oldMoment77, oldMoment81, oldMoment90, oldMoment94, oldMoment126, oldMoment130, oldMoment228, oldMoment231, oldMoment238, oldMoment241, oldMoment243, oldMoment247, oldMoment287, oldMoment294, oldMoment297, oldMoment333, oldMoment423, oldMoment434, oldMoment545, oldMoment548, oldMoment698, oldMoment700, oldMoment704, oldMoment716, oldMoment729, oldMoment751, oldMoment1052, oldMoment1053, oldMoment1057, oldMoment1058, oldMoment1059, oldMoment1219, oldMoment1223, oldMoment1226, oldMoment1227, oldMoment1251] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound387 hH, mul_zero]

/-- Reuse upstream boundarySound388; only coordinates and scaling change. -/
theorem rowSound1031 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1031) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1031 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row1031 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow388
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row1031, OAI.MUB6.Certificate.PairSemantics.boundaryRow388, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment20, oldMoment38, oldMoment42, oldMoment94, oldMoment228, oldMoment229, oldMoment241, oldMoment243, oldMoment244, oldMoment247, oldMoment288, oldMoment294, oldMoment311, oldMoment332, oldMoment427, oldMoment434, oldMoment698, oldMoment700, oldMoment701, oldMoment704, oldMoment717, oldMoment796, oldMoment798, oldMoment1052, oldMoment1053, oldMoment1058, oldMoment1059, oldMoment1060, oldMoment1061, oldMoment1146, oldMoment1207, oldMoment1219, oldMoment1223, oldMoment1226, oldMoment1227, oldMoment1251] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound388 hH, mul_zero]

/-- Reuse upstream boundarySound389; only coordinates and scaling change. -/
theorem rowSound1032 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 1032) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row1032 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row1032 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow389
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row1032, OAI.MUB6.Certificate.PairSemantics.boundaryRow389, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment20, oldMoment38, oldMoment42, oldMoment58, oldMoment61, oldMoment94, oldMoment126, oldMoment127, oldMoment132, oldMoment228, oldMoment229, oldMoment238, oldMoment241, oldMoment243, oldMoment244, oldMoment247, oldMoment479, oldMoment480, oldMoment697, oldMoment698, oldMoment700, oldMoment701, oldMoment704, oldMoment717, oldMoment730, oldMoment1050, oldMoment1052, oldMoment1053, oldMoment1059, oldMoment1061, oldMoment1250, oldMoment1251, oldMoment1321] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound389 hH, mul_zero]

end NoFourMUBs.Step2.SOS.Semantics
