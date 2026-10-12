import NoFourMUBs.Step2.SOS.MomentData
import NoFourMUBs.Step2.SOS.Data
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Boundary9

namespace NoFourMUBs.Step2.SOS.Semantics
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

/-- Reuse upstream boundarySound246; only coordinates and scaling change. -/
theorem rowSound906 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 906) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row906 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row906 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow246
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row906, OAI.MUB6.Certificate.PairSemantics.boundaryRow246, Integer.Sparse.eval,
      oldMoment0, oldMoment3, oldMoment4, oldMoment19, oldMoment20, oldMoment94, oldMoment104, oldMoment106, oldMoment108, oldMoment243, oldMoment244, oldMoment246, oldMoment247, oldMoment692, oldMoment698, oldMoment700, oldMoment701, oldMoment703, oldMoment704, oldMoment1061, oldMoment1214, oldMoment1219, oldMoment1223, oldMoment1225, oldMoment1226, oldMoment1227, oldMoment1251, oldMoment1278] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound246 hH, mul_zero]

/-- Reuse upstream boundarySound247; only coordinates and scaling change. -/
theorem rowSound907 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 907) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row907 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row907 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow247
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row907, OAI.MUB6.Certificate.PairSemantics.boundaryRow247, Integer.Sparse.eval,
      oldMoment0, oldMoment3, oldMoment4, oldMoment19, oldMoment20, oldMoment93, oldMoment94, oldMoment104, oldMoment108, oldMoment240, oldMoment241, oldMoment243, oldMoment246, oldMoment247, oldMoment690, oldMoment694, oldMoment696, oldMoment697, oldMoment698, oldMoment703, oldMoment704, oldMoment1226, oldMoment1227, oldMoment1250, oldMoment1251] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound247 hH, mul_zero]

/-- Reuse upstream boundarySound248; only coordinates and scaling change. -/
theorem rowSound908 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 908) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row908 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row908 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow248
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row908, OAI.MUB6.Certificate.PairSemantics.boundaryRow248, Integer.Sparse.eval,
      oldMoment0, oldMoment3, oldMoment4, oldMoment19, oldMoment20, oldMoment93, oldMoment94, oldMoment106, oldMoment243, oldMoment696, oldMoment698, oldMoment703, oldMoment704, oldMoment1057, oldMoment1058, oldMoment1225, oldMoment1226, oldMoment1227, oldMoment1250, oldMoment1251, oldMoment1323] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound248 hH, mul_zero]

/-- Reuse upstream boundarySound249; only coordinates and scaling change. -/
theorem rowSound909 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 909) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row909 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row909 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow249
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row909, OAI.MUB6.Certificate.PairSemantics.boundaryRow249, Integer.Sparse.eval,
      oldMoment0, oldMoment3, oldMoment4, oldMoment19, oldMoment20, oldMoment93, oldMoment94, oldMoment104, oldMoment105, oldMoment106, oldMoment108, oldMoment241, oldMoment242, oldMoment243, oldMoment244, oldMoment246, oldMoment247, oldMoment691, oldMoment692, oldMoment694, oldMoment697, oldMoment698, oldMoment699, oldMoment700, oldMoment701, oldMoment703, oldMoment704, oldMoment1052, oldMoment1059, oldMoment1251] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound249 hH, mul_zero]

/-- Reuse upstream boundarySound250; only coordinates and scaling change. -/
theorem rowSound910 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 910) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row910 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row910 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow250
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row910, OAI.MUB6.Certificate.PairSemantics.boundaryRow250, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment20, oldMoment94, oldMoment243, oldMoment695, oldMoment696, oldMoment697, oldMoment698, oldMoment699, oldMoment700, oldMoment701, oldMoment703, oldMoment704, oldMoment1058, oldMoment1059, oldMoment1226, oldMoment1227, oldMoment1250, oldMoment1251] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound250 hH, mul_zero]

/-- Reuse upstream boundarySound251; only coordinates and scaling change. -/
theorem rowSound911 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 911) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row911 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row911 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow251
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row911, OAI.MUB6.Certificate.PairSemantics.boundaryRow251, Integer.Sparse.eval,
      oldMoment0, oldMoment3, oldMoment4, oldMoment19, oldMoment20, oldMoment93, oldMoment94, oldMoment104, oldMoment108, oldMoment240, oldMoment241, oldMoment246, oldMoment247, oldMoment694, oldMoment698, oldMoment704, oldMoment1250, oldMoment1251, oldMoment1319, oldMoment1321] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound251 hH, mul_zero]

/-- Reuse upstream boundarySound252; only coordinates and scaling change. -/
theorem rowSound912 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 912) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row912 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row912 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow252
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row912, OAI.MUB6.Certificate.PairSemantics.boundaryRow252, Integer.Sparse.eval,
      oldMoment0, oldMoment3, oldMoment4, oldMoment19, oldMoment20, oldMoment93, oldMoment94, oldMoment106, oldMoment243, oldMoment244, oldMoment698, oldMoment699, oldMoment700, oldMoment701, oldMoment703, oldMoment704, oldMoment1058, oldMoment1059, oldMoment1060, oldMoment1225, oldMoment1226, oldMoment1251, oldMoment1321] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound252 hH, mul_zero]

/-- Reuse upstream boundarySound253; only coordinates and scaling change. -/
theorem rowSound913 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 913) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row913 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row913 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow253
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row913, OAI.MUB6.Certificate.PairSemantics.boundaryRow253, Integer.Sparse.eval,
      oldMoment0, oldMoment3, oldMoment4, oldMoment19, oldMoment20, oldMoment93, oldMoment94, oldMoment105, oldMoment106, oldMoment108, oldMoment241, oldMoment242, oldMoment243, oldMoment244, oldMoment246, oldMoment247, oldMoment698, oldMoment700, oldMoment704, oldMoment1047, oldMoment1214, oldMoment1219, oldMoment1225, oldMoment1226, oldMoment1227, oldMoment1251, oldMoment1319, oldMoment1323] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound253 hH, mul_zero]

/-- Reuse upstream boundarySound261; only coordinates and scaling change. -/
theorem rowSound919 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 919) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row919 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row919 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow261
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row919, OAI.MUB6.Certificate.PairSemantics.boundaryRow261, Integer.Sparse.eval,
      oldMoment0, oldMoment3, oldMoment19, oldMoment20, oldMoment23, oldMoment26, oldMoment94, oldMoment104, oldMoment105, oldMoment108, oldMoment241, oldMoment243, oldMoment247, oldMoment698, oldMoment703, oldMoment704, oldMoment1251] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound261 hH, mul_zero]

/-- Reuse upstream boundarySound262; only coordinates and scaling change. -/
theorem rowSound920 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 920) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row920 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row920 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow262
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row920, OAI.MUB6.Certificate.PairSemantics.boundaryRow262, Integer.Sparse.eval,
      oldMoment0, oldMoment3, oldMoment19, oldMoment20, oldMoment26, oldMoment37, oldMoment40, oldMoment42, oldMoment94, oldMoment104, oldMoment105, oldMoment108, oldMoment241, oldMoment243, oldMoment698, oldMoment700, oldMoment703, oldMoment704, oldMoment1052, oldMoment1226, oldMoment1251] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound262 hH, mul_zero]

/-- Reuse upstream boundarySound263; only coordinates and scaling change. -/
theorem rowSound921 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 921) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row921 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row921 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow263
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row921, OAI.MUB6.Certificate.PairSemantics.boundaryRow263, Integer.Sparse.eval,
      oldMoment0, oldMoment3, oldMoment19, oldMoment20, oldMoment23, oldMoment37, oldMoment38, oldMoment45, oldMoment94, oldMoment104, oldMoment105, oldMoment108, oldMoment241, oldMoment243, oldMoment247, oldMoment697, oldMoment698, oldMoment700, oldMoment701, oldMoment703, oldMoment704, oldMoment1219, oldMoment1226, oldMoment1227, oldMoment1251] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound263 hH, mul_zero]

/-- Reuse upstream boundarySound264; only coordinates and scaling change. -/
theorem rowSound922 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 922) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row922 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row922 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow264
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row922, OAI.MUB6.Certificate.PairSemantics.boundaryRow264, Integer.Sparse.eval,
      oldMoment0, oldMoment3, oldMoment19, oldMoment20, oldMoment23, oldMoment26, oldMoment88, oldMoment94, oldMoment104, oldMoment105, oldMoment108, oldMoment228, oldMoment241, oldMoment243, oldMoment247, oldMoment698, oldMoment703, oldMoment704, oldMoment1226, oldMoment1227, oldMoment1251] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound264 hH, mul_zero]

/-- Reuse upstream boundarySound265; only coordinates and scaling change. -/
theorem rowSound923 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 923) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row923 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row923 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow265
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row923, OAI.MUB6.Certificate.PairSemantics.boundaryRow265, Integer.Sparse.eval,
      oldMoment3, oldMoment20, oldMoment26, oldMoment42, oldMoment53, oldMoment60, oldMoment72, oldMoment94, oldMoment105, oldMoment243, oldMoment700, oldMoment1044, oldMoment1251] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound265 hH, mul_zero]

/-- Reuse upstream boundarySound266; only coordinates and scaling change. -/
theorem rowSound924 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 924) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row924 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row924 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow266
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row924, OAI.MUB6.Certificate.PairSemantics.boundaryRow266, Integer.Sparse.eval,
      oldMoment0, oldMoment3, oldMoment19, oldMoment20, oldMoment26, oldMoment42, oldMoment62, oldMoment88, oldMoment90, oldMoment94, oldMoment105, oldMoment108, oldMoment241, oldMoment243, oldMoment698, oldMoment700, oldMoment1047, oldMoment1058, oldMoment1059, oldMoment1226, oldMoment1251] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound266 hH, mul_zero]

/-- Reuse upstream boundarySound267; only coordinates and scaling change. -/
theorem rowSound925 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 925) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row925 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row925 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow267
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row925, OAI.MUB6.Certificate.PairSemantics.boundaryRow267, Integer.Sparse.eval,
      oldMoment0, oldMoment3, oldMoment19, oldMoment20, oldMoment26, oldMoment55, oldMoment76, oldMoment88, oldMoment90, oldMoment94, oldMoment104, oldMoment105, oldMoment241, oldMoment243, oldMoment691, oldMoment698, oldMoment700, oldMoment704, oldMoment1058, oldMoment1226, oldMoment1227, oldMoment1251] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound267 hH, mul_zero]

/-- Reuse upstream boundarySound268; only coordinates and scaling change. -/
theorem rowSound926 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 926) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row926 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row926 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow268
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row926, OAI.MUB6.Certificate.PairSemantics.boundaryRow268, Integer.Sparse.eval,
      oldMoment0, oldMoment3, oldMoment19, oldMoment20, oldMoment26, oldMoment37, oldMoment55, oldMoment88, oldMoment90, oldMoment94, oldMoment104, oldMoment105, oldMoment108, oldMoment241, oldMoment243, oldMoment690, oldMoment698, oldMoment700, oldMoment703, oldMoment1044, oldMoment1047, oldMoment1052, oldMoment1226, oldMoment1251] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound268 hH, mul_zero]

end NoFourMUBs.Step2.SOS.Semantics
