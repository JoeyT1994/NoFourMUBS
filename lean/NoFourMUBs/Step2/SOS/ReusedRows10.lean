import NoFourMUBs.Step2.SOS.MomentData
import NoFourMUBs.Step2.SOS.Data
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Boundary10

namespace NoFourMUBs.Step2.SOS.Semantics
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

/-- Reuse upstream boundarySound269; only coordinates and scaling change. -/
theorem rowSound927 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 927) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row927 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row927 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow269
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row927, OAI.MUB6.Certificate.PairSemantics.boundaryRow269, Integer.Sparse.eval,
      oldMoment0, oldMoment3, oldMoment19, oldMoment20, oldMoment26, oldMoment40, oldMoment42, oldMoment45, oldMoment62, oldMoment76, oldMoment88, oldMoment90, oldMoment94, oldMoment104, oldMoment105, oldMoment108, oldMoment241, oldMoment243, oldMoment247, oldMoment691, oldMoment694, oldMoment698, oldMoment700, oldMoment701, oldMoment703, oldMoment704, oldMoment1047, oldMoment1219, oldMoment1226, oldMoment1227, oldMoment1251] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound269 hH, mul_zero]

/-- Reuse upstream boundarySound270; only coordinates and scaling change. -/
theorem rowSound928 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 928) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row928 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row928 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow270
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row928, OAI.MUB6.Certificate.PairSemantics.boundaryRow270, Integer.Sparse.eval,
      oldMoment0, oldMoment3, oldMoment19, oldMoment20, oldMoment37, oldMoment94, oldMoment104, oldMoment105, oldMoment108, oldMoment241, oldMoment243, oldMoment247, oldMoment682, oldMoment690, oldMoment694, oldMoment697, oldMoment698, oldMoment703, oldMoment704, oldMoment1047, oldMoment1226, oldMoment1227, oldMoment1251, oldMoment1319] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound270 hH, mul_zero]

/-- Reuse upstream boundarySound271; only coordinates and scaling change. -/
theorem rowSound929 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 929) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row929 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row929 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow271
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row929, OAI.MUB6.Certificate.PairSemantics.boundaryRow271, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment20, oldMoment23, oldMoment38, oldMoment40, oldMoment42, oldMoment52, oldMoment56, oldMoment76, oldMoment81, oldMoment90, oldMoment94, oldMoment104, oldMoment108, oldMoment243, oldMoment691, oldMoment698, oldMoment700, oldMoment701, oldMoment703, oldMoment704, oldMoment1047, oldMoment1058, oldMoment1059, oldMoment1226, oldMoment1251] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound271 hH, mul_zero]

/-- Reuse upstream boundarySound273; only coordinates and scaling change. -/
theorem rowSound931 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 931) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row931 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row931 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow273
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row931, OAI.MUB6.Certificate.PairSemantics.boundaryRow273, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment20, oldMoment23, oldMoment26, oldMoment37, oldMoment55, oldMoment76, oldMoment81, oldMoment88, oldMoment90, oldMoment94, oldMoment104, oldMoment105, oldMoment228, oldMoment241, oldMoment243, oldMoment247, oldMoment680, oldMoment682, oldMoment690, oldMoment691, oldMoment697, oldMoment698, oldMoment700, oldMoment703, oldMoment704, oldMoment1050, oldMoment1052, oldMoment1058, oldMoment1059, oldMoment1221, oldMoment1226, oldMoment1227, oldMoment1251] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound273 hH, mul_zero]

/-- Reuse upstream boundarySound275; only coordinates and scaling change. -/
theorem rowSound933 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 933) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row933 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row933 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow275
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row933, OAI.MUB6.Certificate.PairSemantics.boundaryRow275, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment20, oldMoment81, oldMoment82, oldMoment88, oldMoment90, oldMoment91, oldMoment94, oldMoment228, oldMoment229, oldMoment231, oldMoment238, oldMoment241, oldMoment243, oldMoment244, oldMoment247, oldMoment698, oldMoment700, oldMoment704, oldMoment1058, oldMoment1059, oldMoment1223, oldMoment1225, oldMoment1226, oldMoment1227, oldMoment1251] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound275 hH, mul_zero]

/-- Reuse upstream boundarySound276; only coordinates and scaling change. -/
theorem rowSound934 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 934) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row934 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row934 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow276
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row934, OAI.MUB6.Certificate.PairSemantics.boundaryRow276, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment20, oldMoment38, oldMoment42, oldMoment77, oldMoment81, oldMoment90, oldMoment91, oldMoment94, oldMoment241, oldMoment243, oldMoment244, oldMoment247, oldMoment686, oldMoment698, oldMoment700, oldMoment701, oldMoment704, oldMoment1040, oldMoment1052, oldMoment1053, oldMoment1059, oldMoment1061, oldMoment1223, oldMoment1225, oldMoment1226, oldMoment1227, oldMoment1251] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound276 hH, mul_zero]

/-- Reuse upstream boundarySound277; only coordinates and scaling change. -/
theorem rowSound935 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 935) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row935 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row935 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow277
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row935, OAI.MUB6.Certificate.PairSemantics.boundaryRow277, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment20, oldMoment42, oldMoment82, oldMoment88, oldMoment90, oldMoment91, oldMoment94, oldMoment228, oldMoment241, oldMoment243, oldMoment247, oldMoment698, oldMoment700, oldMoment704, oldMoment1223, oldMoment1225, oldMoment1226, oldMoment1227, oldMoment1251] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound277 hH, mul_zero]

/-- Reuse upstream boundarySound278; only coordinates and scaling change. -/
theorem rowSound936 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 936) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row936 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row936 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow278
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row936, OAI.MUB6.Certificate.PairSemantics.boundaryRow278, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment20, oldMoment38, oldMoment42, oldMoment77, oldMoment81, oldMoment88, oldMoment89, oldMoment90, oldMoment91, oldMoment94, oldMoment228, oldMoment241, oldMoment243, oldMoment247, oldMoment686, oldMoment698, oldMoment700, oldMoment701, oldMoment704, oldMoment1040, oldMoment1052, oldMoment1059, oldMoment1219, oldMoment1223, oldMoment1225, oldMoment1226, oldMoment1227, oldMoment1251] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound278 hH, mul_zero]

/-- Reuse upstream boundarySound285; only coordinates and scaling change. -/
theorem rowSound943 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 943) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row943 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row943 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow285
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row943, OAI.MUB6.Certificate.PairSemantics.boundaryRow285, Integer.Sparse.eval,
      oldMoment0, oldMoment42, oldMoment56, oldMoment60, oldMoment81, oldMoment90, oldMoment94, oldMoment683, oldMoment695, oldMoment697, oldMoment698, oldMoment700, oldMoment701, oldMoment704, oldMoment1059, oldMoment1226, oldMoment1227, oldMoment1251] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound285 hH, mul_zero]

/-- Reuse upstream boundarySound286; only coordinates and scaling change. -/
theorem rowSound944 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 944) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row944 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row944 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow286
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row944, OAI.MUB6.Certificate.PairSemantics.boundaryRow286, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment20, oldMoment42, oldMoment81, oldMoment90, oldMoment94, oldMoment229, oldMoment243, oldMoment244, oldMoment682, oldMoment683, oldMoment698, oldMoment700, oldMoment701, oldMoment704, oldMoment1059, oldMoment1226, oldMoment1251, oldMoment1321] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound286 hH, mul_zero]

/-- Reuse upstream boundarySound287; only coordinates and scaling change. -/
theorem rowSound945 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 945) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row945 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row945 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow287
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row945, OAI.MUB6.Certificate.PairSemantics.boundaryRow287, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment20, oldMoment72, oldMoment81, oldMoment94, oldMoment229, oldMoment243, oldMoment244, oldMoment682, oldMoment698, oldMoment700, oldMoment701, oldMoment704, oldMoment1040, oldMoment1058, oldMoment1059, oldMoment1225, oldMoment1226, oldMoment1251, oldMoment1321] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound287 hH, mul_zero]

/-- Reuse upstream boundarySound297; only coordinates and scaling change. -/
theorem rowSound953 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 953) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row953 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row953 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow297
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row953, OAI.MUB6.Certificate.PairSemantics.boundaryRow297, Integer.Sparse.eval,
      oldMoment0, oldMoment3, oldMoment19, oldMoment20, oldMoment23, oldMoment94, oldMoment102, oldMoment104, oldMoment105, oldMoment108, oldMoment111, oldMoment113, oldMoment119, oldMoment241, oldMoment243, oldMoment247, oldMoment698, oldMoment704, oldMoment1054, oldMoment1251, oldMoment1278] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound297 hH, mul_zero]

/-- Reuse upstream boundarySound298; only coordinates and scaling change. -/
theorem rowSound954 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 954) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row954 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row954 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow298
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row954, OAI.MUB6.Certificate.PairSemantics.boundaryRow298, Integer.Sparse.eval,
      oldMoment0, oldMoment3, oldMoment19, oldMoment20, oldMoment94, oldMoment102, oldMoment104, oldMoment105, oldMoment108, oldMoment153, oldMoment156, oldMoment169, oldMoment201, oldMoment238, oldMoment241, oldMoment243, oldMoment247, oldMoment697, oldMoment698, oldMoment700, oldMoment1050, oldMoment1052, oldMoment1055, oldMoment1058, oldMoment1059, oldMoment1223, oldMoment1226, oldMoment1250, oldMoment1251] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound298 hH, mul_zero]

/-- Reuse upstream boundarySound300; only coordinates and scaling change. -/
theorem rowSound956 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 956) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row956 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row956 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow300
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row956, OAI.MUB6.Certificate.PairSemantics.boundaryRow300, Integer.Sparse.eval,
      oldMoment0, oldMoment3, oldMoment19, oldMoment20, oldMoment23, oldMoment38, oldMoment94, oldMoment102, oldMoment104, oldMoment105, oldMoment108, oldMoment111, oldMoment113, oldMoment126, oldMoment127, oldMoment129, oldMoment238, oldMoment241, oldMoment243, oldMoment247, oldMoment697, oldMoment698, oldMoment700, oldMoment704, oldMoment1050, oldMoment1052, oldMoment1053, oldMoment1054, oldMoment1055, oldMoment1059, oldMoment1250, oldMoment1251] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound300 hH, mul_zero]

/-- Reuse upstream boundarySound301; only coordinates and scaling change. -/
theorem rowSound957 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 957) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row957 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row957 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow301
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row957, OAI.MUB6.Certificate.PairSemantics.boundaryRow301, Integer.Sparse.eval,
      oldMoment0, oldMoment3, oldMoment19, oldMoment20, oldMoment23, oldMoment38, oldMoment94, oldMoment102, oldMoment104, oldMoment105, oldMoment108, oldMoment113, oldMoment124, oldMoment129, oldMoment130, oldMoment140, oldMoment141, oldMoment174, oldMoment238, oldMoment241, oldMoment243, oldMoment247, oldMoment697, oldMoment698, oldMoment700, oldMoment704, oldMoment1052, oldMoment1054, oldMoment1055, oldMoment1058, oldMoment1059, oldMoment1061, oldMoment1219, oldMoment1223, oldMoment1226, oldMoment1227, oldMoment1250, oldMoment1251, oldMoment1278, oldMoment1388] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound301 hH, mul_zero]

/-- Reuse upstream boundarySound302; only coordinates and scaling change. -/
theorem rowSound958 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 958) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row958 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row958 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow302
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row958, OAI.MUB6.Certificate.PairSemantics.boundaryRow302, Integer.Sparse.eval,
      oldMoment0, oldMoment3, oldMoment19, oldMoment20, oldMoment23, oldMoment94, oldMoment104, oldMoment105, oldMoment108, oldMoment119, oldMoment228, oldMoment241, oldMoment243, oldMoment247, oldMoment309, oldMoment325, oldMoment326, oldMoment329, oldMoment697, oldMoment698, oldMoment704, oldMoment1227, oldMoment1251, oldMoment1278] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound302 hH, mul_zero]

end NoFourMUBs.Step2.SOS.Semantics
