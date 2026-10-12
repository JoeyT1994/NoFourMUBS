import NoFourMUBs.Step2.SOS.MomentData
import NoFourMUBs.Step2.SOS.Data
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Boundary3

namespace NoFourMUBs.Step2.SOS.Semantics
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

/-- Reuse upstream boundarySound49; only coordinates and scaling change. -/
theorem rowSound717 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 717) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row717 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row717 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow49
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row717, OAI.MUB6.Certificate.PairSemantics.boundaryRow49, Integer.Sparse.eval,
      oldMoment0, oldMoment3, oldMoment19, oldMoment20, oldMoment94, oldMoment104, oldMoment105, oldMoment108, oldMoment241, oldMoment243, oldMoment247, oldMoment694, oldMoment698, oldMoment704, oldMoment1047, oldMoment1055, oldMoment1226, oldMoment1227, oldMoment1251] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound49 hH, mul_zero]

/-- Reuse upstream boundarySound50; only coordinates and scaling change. -/
theorem rowSound718 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 718) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row718 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row718 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow50
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row718, OAI.MUB6.Certificate.PairSemantics.boundaryRow50, Integer.Sparse.eval,
      oldMoment0, oldMoment3, oldMoment19, oldMoment20, oldMoment94, oldMoment104, oldMoment105, oldMoment241, oldMoment243, oldMoment691, oldMoment698, oldMoment700, oldMoment704, oldMoment1044, oldMoment1050, oldMoment1052, oldMoment1059, oldMoment1251] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound50 hH, mul_zero]

/-- Reuse upstream boundarySound51; only coordinates and scaling change. -/
theorem rowSound719 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 719) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row719 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row719 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow51
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row719, OAI.MUB6.Certificate.PairSemantics.boundaryRow51, Integer.Sparse.eval,
      oldMoment0, oldMoment3, oldMoment19, oldMoment20, oldMoment94, oldMoment104, oldMoment108, oldMoment241, oldMoment247, oldMoment690, oldMoment694, oldMoment697, oldMoment698, oldMoment704, oldMoment1055, oldMoment1227, oldMoment1250, oldMoment1251] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound51 hH, mul_zero]

/-- Reuse upstream boundarySound52; only coordinates and scaling change. -/
theorem rowSound720 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 720) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row720 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row720 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow52
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row720, OAI.MUB6.Certificate.PairSemantics.boundaryRow52, Integer.Sparse.eval,
      oldMoment0, oldMoment3, oldMoment19, oldMoment20, oldMoment94, oldMoment104, oldMoment108, oldMoment241, oldMoment247, oldMoment694, oldMoment698, oldMoment704, oldMoment1250, oldMoment1251, oldMoment1319, oldMoment1388] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound52 hH, mul_zero]

/-- Reuse upstream boundarySound53; only coordinates and scaling change. -/
theorem rowSound721 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 721) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row721 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row721 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow53
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row721, OAI.MUB6.Certificate.PairSemantics.boundaryRow53, Integer.Sparse.eval,
      oldMoment0, oldMoment3, oldMoment19, oldMoment20, oldMoment94, oldMoment104, oldMoment105, oldMoment108, oldMoment241, oldMoment243, oldMoment247, oldMoment691, oldMoment698, oldMoment700, oldMoment704, oldMoment1047, oldMoment1055, oldMoment1058, oldMoment1219, oldMoment1226, oldMoment1227, oldMoment1251] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound53 hH, mul_zero]

/-- Reuse upstream boundarySound54; only coordinates and scaling change. -/
theorem rowSound722 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 722) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row722 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row722 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow54
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row722, OAI.MUB6.Certificate.PairSemantics.boundaryRow54, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment20, oldMoment94, oldMoment238, oldMoment241, oldMoment243, oldMoment244, oldMoment247, oldMoment698, oldMoment700, oldMoment1059, oldMoment1251] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound54 hH, mul_zero]

/-- Reuse upstream boundarySound55; only coordinates and scaling change. -/
theorem rowSound723 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 723) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row723 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row723 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow55
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row723, OAI.MUB6.Certificate.PairSemantics.boundaryRow55, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment20, oldMoment94, oldMoment241, oldMoment243, oldMoment247, oldMoment698, oldMoment704, oldMoment1223, oldMoment1225, oldMoment1226, oldMoment1227, oldMoment1251] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound55 hH, mul_zero]

/-- Reuse upstream boundarySound56; only coordinates and scaling change. -/
theorem rowSound724 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 724) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row724 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row724 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow56
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row724, OAI.MUB6.Certificate.PairSemantics.boundaryRow56, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment20, oldMoment94, oldMoment241, oldMoment243, oldMoment244, oldMoment247, oldMoment698, oldMoment700, oldMoment701, oldMoment704, oldMoment1053, oldMoment1059, oldMoment1061, oldMoment1251] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound56 hH, mul_zero]

/-- Reuse upstream boundarySound57; only coordinates and scaling change. -/
theorem rowSound725 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 725) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row725 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row725 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow57
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row725, OAI.MUB6.Certificate.PairSemantics.boundaryRow57, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment94, oldMoment238, oldMoment241, oldMoment243, oldMoment244, oldMoment695, oldMoment698, oldMoment700, oldMoment701, oldMoment1059, oldMoment1251] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound57 hH, mul_zero]

/-- Reuse upstream boundarySound58; only coordinates and scaling change. -/
theorem rowSound726 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 726) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row726 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row726 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow58
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row726, OAI.MUB6.Certificate.PairSemantics.boundaryRow58, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment20, oldMoment94, oldMoment241, oldMoment243, oldMoment698, oldMoment700, oldMoment704, oldMoment1052, oldMoment1059, oldMoment1217, oldMoment1219, oldMoment1221, oldMoment1223, oldMoment1225, oldMoment1226, oldMoment1227, oldMoment1251] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound58 hH, mul_zero]

/-- Reuse upstream boundarySound59; only coordinates and scaling change. -/
theorem rowSound727 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 727) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row727 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row727 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow59
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row727, OAI.MUB6.Certificate.PairSemantics.boundaryRow59, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment20, oldMoment94, oldMoment243, oldMoment698, oldMoment704, oldMoment1058, oldMoment1223, oldMoment1225, oldMoment1226, oldMoment1227, oldMoment1250, oldMoment1251, oldMoment1321, oldMoment1323, oldMoment1389] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound59 hH, mul_zero]

/-- Reuse upstream boundarySound60; only coordinates and scaling change. -/
theorem rowSound728 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 728) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row728 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row728 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow60
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row728, OAI.MUB6.Certificate.PairSemantics.boundaryRow60, Integer.Sparse.eval,
      oldMoment19, oldMoment20, oldMoment94, oldMoment241, oldMoment243, oldMoment244, oldMoment698, oldMoment700, oldMoment701, oldMoment704, oldMoment1052, oldMoment1053, oldMoment1059, oldMoment1061, oldMoment1219, oldMoment1226, oldMoment1227, oldMoment1251] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound60 hH, mul_zero]

/-- Reuse upstream boundarySound64; only coordinates and scaling change. -/
theorem rowSound732 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 732) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row732 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row732 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow64
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row732, OAI.MUB6.Certificate.PairSemantics.boundaryRow64, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment20, oldMoment38, oldMoment42, oldMoment94, oldMoment241, oldMoment243, oldMoment247, oldMoment698, oldMoment700, oldMoment701, oldMoment704, oldMoment1059, oldMoment1251] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound64 hH, mul_zero]

/-- Reuse upstream boundarySound65; only coordinates and scaling change. -/
theorem rowSound733 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 733) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row733 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row733 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow65
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row733, OAI.MUB6.Certificate.PairSemantics.boundaryRow65, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment20, oldMoment88, oldMoment94, oldMoment228, oldMoment241, oldMoment243, oldMoment247, oldMoment698, oldMoment704, oldMoment1226, oldMoment1227, oldMoment1251] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound65 hH, mul_zero]

/-- Reuse upstream boundarySound66; only coordinates and scaling change. -/
theorem rowSound734 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 734) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row734 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row734 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow66
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row734, OAI.MUB6.Certificate.PairSemantics.boundaryRow66, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment20, oldMoment42, oldMoment56, oldMoment60, oldMoment81, oldMoment90, oldMoment94, oldMoment243, oldMoment698, oldMoment700, oldMoment1058, oldMoment1059, oldMoment1226, oldMoment1251] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound66 hH, mul_zero]

/-- Reuse upstream boundarySound67; only coordinates and scaling change. -/
theorem rowSound735 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 735) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row735 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row735 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow67
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row735, OAI.MUB6.Certificate.PairSemantics.boundaryRow67, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment20, oldMoment72, oldMoment76, oldMoment81, oldMoment90, oldMoment94, oldMoment243, oldMoment698, oldMoment700, oldMoment704, oldMoment1058, oldMoment1059, oldMoment1221, oldMoment1226, oldMoment1251] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound67 hH, mul_zero]

end NoFourMUBs.Step2.SOS.Semantics
