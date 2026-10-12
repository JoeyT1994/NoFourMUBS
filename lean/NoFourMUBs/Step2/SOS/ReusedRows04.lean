import NoFourMUBs.Step2.SOS.MomentData
import NoFourMUBs.Step2.SOS.Data
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Boundary4

namespace NoFourMUBs.Step2.SOS.Semantics
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

/-- Reuse upstream boundarySound68; only coordinates and scaling change. -/
theorem rowSound736 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 736) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row736 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row736 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow68
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row736, OAI.MUB6.Certificate.PairSemantics.boundaryRow68, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment20, oldMoment72, oldMoment79, oldMoment81, oldMoment88, oldMoment90, oldMoment94, oldMoment241, oldMoment243, oldMoment698, oldMoment700, oldMoment1050, oldMoment1052, oldMoment1058, oldMoment1059, oldMoment1226, oldMoment1251] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound68 hH, mul_zero]

/-- Reuse upstream boundarySound69; only coordinates and scaling change. -/
theorem rowSound737 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 737) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row737 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row737 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow69
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row737, OAI.MUB6.Certificate.PairSemantics.boundaryRow69, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment20, oldMoment76, oldMoment81, oldMoment87, oldMoment88, oldMoment90, oldMoment94, oldMoment241, oldMoment243, oldMoment247, oldMoment698, oldMoment700, oldMoment704, oldMoment1055, oldMoment1058, oldMoment1059, oldMoment1219, oldMoment1226, oldMoment1227, oldMoment1251] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound69 hH, mul_zero]

/-- Reuse upstream boundarySound70; only coordinates and scaling change. -/
theorem rowSound738 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 738) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row738 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row738 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow70
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row738, OAI.MUB6.Certificate.PairSemantics.boundaryRow70, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment20, oldMoment38, oldMoment42, oldMoment56, oldMoment60, oldMoment90, oldMoment94, oldMoment243, oldMoment698, oldMoment700, oldMoment701, oldMoment704, oldMoment1059, oldMoment1226, oldMoment1251] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound70 hH, mul_zero]

/-- Reuse upstream boundarySound71; only coordinates and scaling change. -/
theorem rowSound739 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 739) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row739 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row739 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow71
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row739, OAI.MUB6.Certificate.PairSemantics.boundaryRow71, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment20, oldMoment42, oldMoment58, oldMoment60, oldMoment81, oldMoment94, oldMoment241, oldMoment243, oldMoment698, oldMoment700, oldMoment704, oldMoment1052, oldMoment1059, oldMoment1226] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound71 hH, mul_zero]

/-- Reuse upstream boundarySound72; only coordinates and scaling change. -/
theorem rowSound740 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 740) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row740 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row740 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow72
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row740, OAI.MUB6.Certificate.PairSemantics.boundaryRow72, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment20, oldMoment76, oldMoment81, oldMoment88, oldMoment90, oldMoment94, oldMoment228, oldMoment241, oldMoment243, oldMoment247, oldMoment682, oldMoment697, oldMoment698, oldMoment700, oldMoment704, oldMoment1059, oldMoment1221, oldMoment1226, oldMoment1227, oldMoment1251, oldMoment1389] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound72 hH, mul_zero]

/-- Reuse upstream boundarySound73; only coordinates and scaling change. -/
theorem rowSound741 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 741) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row741 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row741 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow73
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row741, OAI.MUB6.Certificate.PairSemantics.boundaryRow73, Integer.Sparse.eval,
      oldMoment19, oldMoment20, oldMoment76, oldMoment88, oldMoment90, oldMoment94, oldMoment241, oldMoment243, oldMoment247, oldMoment697, oldMoment698, oldMoment700, oldMoment704, oldMoment1052, oldMoment1059, oldMoment1226, oldMoment1227, oldMoment1251] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound73 hH, mul_zero]

/-- Reuse upstream boundarySound74; only coordinates and scaling change. -/
theorem rowSound742 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 742) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row742 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row742 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow74
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row742, OAI.MUB6.Certificate.PairSemantics.boundaryRow74, Integer.Sparse.eval,
      oldMoment0, oldMoment79, oldMoment81, oldMoment88, oldMoment90, oldMoment94, oldMoment228, oldMoment241, oldMoment243, oldMoment698, oldMoment700, oldMoment1034, oldMoment1050, oldMoment1052, oldMoment1059, oldMoment1221, oldMoment1226, oldMoment1227, oldMoment1251, oldMoment1389] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound74 hH, mul_zero]

/-- Reuse upstream boundarySound75; only coordinates and scaling change. -/
theorem rowSound743 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 743) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row743 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row743 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow75
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row743, OAI.MUB6.Certificate.PairSemantics.boundaryRow75, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment38, oldMoment42, oldMoment56, oldMoment81, oldMoment90, oldMoment94, oldMoment243, oldMoment697, oldMoment698, oldMoment700, oldMoment701, oldMoment704, oldMoment1032, oldMoment1058, oldMoment1059, oldMoment1221, oldMoment1226, oldMoment1227, oldMoment1250, oldMoment1251, oldMoment1389] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound75 hH, mul_zero]

/-- Reuse upstream boundarySound77; only coordinates and scaling change. -/
theorem rowSound745 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 745) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row745 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row745 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow77
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row745, OAI.MUB6.Certificate.PairSemantics.boundaryRow77, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment94, oldMoment201, oldMoment205, oldMoment238, oldMoment241, oldMoment247, oldMoment698, oldMoment700, oldMoment1050, oldMoment1055, oldMoment1058, oldMoment1059, oldMoment1227, oldMoment1250, oldMoment1251, oldMoment1388] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound77 hH, mul_zero]

/-- Reuse upstream boundarySound78; only coordinates and scaling change. -/
theorem rowSound746 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 746) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row746 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row746 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow78
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row746, OAI.MUB6.Certificate.PairSemantics.boundaryRow78, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment20, oldMoment94, oldMoment169, oldMoment174, oldMoment241, oldMoment243, oldMoment247, oldMoment697, oldMoment698, oldMoment1050, oldMoment1052, oldMoment1055, oldMoment1058, oldMoment1059, oldMoment1219, oldMoment1223, oldMoment1226, oldMoment1227, oldMoment1250, oldMoment1251, oldMoment1388] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound78 hH, mul_zero]

/-- Reuse upstream boundarySound79; only coordinates and scaling change. -/
theorem rowSound747 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 747) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row747 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row747 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow79
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row747, OAI.MUB6.Certificate.PairSemantics.boundaryRow79, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment20, oldMoment38, oldMoment94, oldMoment126, oldMoment129, oldMoment130, oldMoment238, oldMoment241, oldMoment243, oldMoment247, oldMoment697, oldMoment698, oldMoment700, oldMoment704, oldMoment1050, oldMoment1052, oldMoment1053, oldMoment1059, oldMoment1250, oldMoment1251, oldMoment1388] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound79 hH, mul_zero]

/-- Reuse upstream boundarySound80; only coordinates and scaling change. -/
theorem rowSound748 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 748) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row748 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row748 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow80
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row748, OAI.MUB6.Certificate.PairSemantics.boundaryRow80, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment20, oldMoment94, oldMoment228, oldMoment241, oldMoment243, oldMoment247, oldMoment288, oldMoment294, oldMoment326, oldMoment698, oldMoment704, oldMoment1223, oldMoment1226, oldMoment1227, oldMoment1251] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound80 hH, mul_zero]

/-- Reuse upstream boundarySound81; only coordinates and scaling change. -/
theorem rowSound749 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 749) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row749 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row749 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow81
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row749, OAI.MUB6.Certificate.PairSemantics.boundaryRow81, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment20, oldMoment38, oldMoment94, oldMoment127, oldMoment129, oldMoment130, oldMoment143, oldMoment238, oldMoment241, oldMoment243, oldMoment247, oldMoment697, oldMoment698, oldMoment700, oldMoment704, oldMoment1055, oldMoment1059, oldMoment1061, oldMoment1219, oldMoment1227, oldMoment1250, oldMoment1251, oldMoment1388] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound81 hH, mul_zero]

/-- Reuse upstream boundarySound82; only coordinates and scaling change. -/
theorem rowSound750 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 750) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row750 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row750 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow82
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row750, OAI.MUB6.Certificate.PairSemantics.boundaryRow82, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment20, oldMoment94, oldMoment127, oldMoment130, oldMoment228, oldMoment241, oldMoment243, oldMoment247, oldMoment326, oldMoment698, oldMoment700, oldMoment704, oldMoment1059, oldMoment1061, oldMoment1251] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound82 hH, mul_zero]

/-- Reuse upstream boundarySound83; only coordinates and scaling change. -/
theorem rowSound751 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 751) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row751 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row751 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow83
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row751, OAI.MUB6.Certificate.PairSemantics.boundaryRow83, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment20, oldMoment94, oldMoment228, oldMoment241, oldMoment243, oldMoment247, oldMoment287, oldMoment294, oldMoment326, oldMoment698, oldMoment704, oldMoment1223, oldMoment1226, oldMoment1227, oldMoment1251] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound83 hH, mul_zero]

/-- Reuse upstream boundarySound84; only coordinates and scaling change. -/
theorem rowSound752 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 752) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row752 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row752 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow84
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row752, OAI.MUB6.Certificate.PairSemantics.boundaryRow84, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment38, oldMoment94, oldMoment201, oldMoment238, oldMoment241, oldMoment247, oldMoment462, oldMoment666, oldMoment668, oldMoment674, oldMoment697, oldMoment698, oldMoment700, oldMoment1050, oldMoment1055, oldMoment1058, oldMoment1059, oldMoment1221, oldMoment1227, oldMoment1250, oldMoment1251] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound84 hH, mul_zero]

end NoFourMUBs.Step2.SOS.Semantics
