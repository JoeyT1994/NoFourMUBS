import NoFourMUBs.Step2.SOS.MomentData
import NoFourMUBs.Step2.SOS.Data
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Boundary6

namespace NoFourMUBs.Step2.SOS.Semantics
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

/-- Reuse upstream boundarySound102; only coordinates and scaling change. -/
theorem rowSound770 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 770) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row770 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row770 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow102
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row770, OAI.MUB6.Certificate.PairSemantics.boundaryRow102, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment20, oldMoment81, oldMoment94, oldMoment228, oldMoment241, oldMoment243, oldMoment247, oldMoment294, oldMoment326, oldMoment433, oldMoment478, oldMoment483, oldMoment484, oldMoment489, oldMoment610, oldMoment698, oldMoment700, oldMoment704, oldMoment1052, oldMoment1055, oldMoment1059, oldMoment1219, oldMoment1221, oldMoment1223, oldMoment1226, oldMoment1227, oldMoment1251, oldMoment1389] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound102 hH, mul_zero]

/-- Reuse upstream boundarySound103; only coordinates and scaling change. -/
theorem rowSound771 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 771) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row771 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row771 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow103
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row771, OAI.MUB6.Certificate.PairSemantics.boundaryRow103, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment20, oldMoment94, oldMoment228, oldMoment241, oldMoment243, oldMoment247, oldMoment294, oldMoment326, oldMoment434, oldMoment549, oldMoment698, oldMoment704, oldMoment1219, oldMoment1223, oldMoment1226, oldMoment1227, oldMoment1251, oldMoment1333, oldMoment1356, oldMoment1388, oldMoment1389] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound103 hH, mul_zero]

/-- Reuse upstream boundarySound104; only coordinates and scaling change. -/
theorem rowSound772 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 772) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row772 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row772 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow104
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row772, OAI.MUB6.Certificate.PairSemantics.boundaryRow104, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment20, oldMoment81, oldMoment94, oldMoment228, oldMoment241, oldMoment243, oldMoment247, oldMoment288, oldMoment294, oldMoment426, oldMoment427, oldMoment430, oldMoment433, oldMoment434, oldMoment508, oldMoment697, oldMoment698, oldMoment700, oldMoment704, oldMoment1052, oldMoment1058, oldMoment1059, oldMoment1221, oldMoment1223, oldMoment1226, oldMoment1227, oldMoment1251] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound104 hH, mul_zero]

/-- Reuse upstream boundarySound105; only coordinates and scaling change. -/
theorem rowSound773 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 773) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row773 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row773 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow105
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row773, OAI.MUB6.Certificate.PairSemantics.boundaryRow105, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment20, oldMoment81, oldMoment94, oldMoment228, oldMoment241, oldMoment243, oldMoment247, oldMoment287, oldMoment294, oldMoment418, oldMoment423, oldMoment426, oldMoment433, oldMoment434, oldMoment484, oldMoment698, oldMoment700, oldMoment704, oldMoment1050, oldMoment1052, oldMoment1058, oldMoment1059, oldMoment1221, oldMoment1223, oldMoment1226, oldMoment1227, oldMoment1251, oldMoment1389] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound105 hH, mul_zero]

/-- Reuse upstream boundarySound106; only coordinates and scaling change. -/
theorem rowSound774 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 774) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row774 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row774 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow106
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row774, OAI.MUB6.Certificate.PairSemantics.boundaryRow106, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment81, oldMoment94, oldMoment241, oldMoment243, oldMoment247, oldMoment484, oldMoment541, oldMoment668, oldMoment697, oldMoment698, oldMoment700, oldMoment1050, oldMoment1052, oldMoment1055, oldMoment1059, oldMoment1221, oldMoment1227, oldMoment1250, oldMoment1251, oldMoment1389] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound106 hH, mul_zero]

/-- Reuse upstream boundarySound107; only coordinates and scaling change. -/
theorem rowSound775 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 775) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row775 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row775 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow107
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row775, OAI.MUB6.Certificate.PairSemantics.boundaryRow107, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment94, oldMoment241, oldMoment243, oldMoment247, oldMoment478, oldMoment546, oldMoment635, oldMoment666, oldMoment697, oldMoment698, oldMoment1050, oldMoment1052, oldMoment1055, oldMoment1059, oldMoment1221, oldMoment1226, oldMoment1227, oldMoment1250, oldMoment1251, oldMoment1389] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound107 hH, mul_zero]

/-- Reuse upstream boundarySound108; only coordinates and scaling change. -/
theorem rowSound776 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 776) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row776 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row776 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow108
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row776, OAI.MUB6.Certificate.PairSemantics.boundaryRow108, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment20, oldMoment38, oldMoment81, oldMoment94, oldMoment127, oldMoment129, oldMoment130, oldMoment238, oldMoment241, oldMoment243, oldMoment247, oldMoment426, oldMoment433, oldMoment434, oldMoment461, oldMoment465, oldMoment492, oldMoment505, oldMoment697, oldMoment698, oldMoment700, oldMoment704, oldMoment1052, oldMoment1058, oldMoment1059, oldMoment1061, oldMoment1226, oldMoment1227, oldMoment1251] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound108 hH, mul_zero]

/-- Reuse upstream boundarySound128; only coordinates and scaling change. -/
theorem rowSound791 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 791) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row791 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row791 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow128
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row791, OAI.MUB6.Certificate.PairSemantics.boundaryRow128, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment20, oldMoment72, oldMoment93, oldMoment94, oldMoment541, oldMoment690, oldMoment1044, oldMoment1050, oldMoment1221, oldMoment1250, oldMoment1251, oldMoment1319, oldMoment1321, oldMoment1388, oldMoment1389] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound128 hH, mul_zero]

/-- Reuse upstream boundarySound129; only coordinates and scaling change. -/
theorem rowSound792 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 792) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row792 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row792 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow129
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row792, OAI.MUB6.Certificate.PairSemantics.boundaryRow129, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment20, oldMoment93, oldMoment94, oldMoment241, oldMoment243, oldMoment247, oldMoment690, oldMoment697, oldMoment698, oldMoment700, oldMoment1044, oldMoment1050, oldMoment1052, oldMoment1059, oldMoment1250, oldMoment1251, oldMoment1319, oldMoment1388] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound129 hH, mul_zero]

/-- Reuse upstream boundarySound130; only coordinates and scaling change. -/
theorem rowSound793 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 793) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row793 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row793 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow130
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row793, OAI.MUB6.Certificate.PairSemantics.boundaryRow130, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment20, oldMoment94, oldMoment241, oldMoment243, oldMoment247, oldMoment465, oldMoment478, oldMoment549, oldMoment697, oldMoment698, oldMoment700, oldMoment704, oldMoment1050, oldMoment1052, oldMoment1055, oldMoment1058, oldMoment1059, oldMoment1219, oldMoment1226, oldMoment1227, oldMoment1250, oldMoment1251, oldMoment1323, oldMoment1388, oldMoment1389] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound130 hH, mul_zero]

/-- Reuse upstream boundarySound131; only coordinates and scaling change. -/
theorem rowSound794 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 794) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row794 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row794 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow131
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row794, OAI.MUB6.Certificate.PairSemantics.boundaryRow131, Integer.Sparse.eval,
      oldMoment0, oldMoment72, oldMoment93, oldMoment94, oldMoment690, oldMoment758, oldMoment864, oldMoment1044, oldMoment1050, oldMoment1221, oldMoment1251, oldMoment1266] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound131 hH, mul_zero]

/-- Reuse upstream boundarySound133; only coordinates and scaling change. -/
theorem rowSound796 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 796) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row796 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row796 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow133
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row796, OAI.MUB6.Certificate.PairSemantics.boundaryRow133, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment72, oldMoment81, oldMoment93, oldMoment94, oldMoment241, oldMoment243, oldMoment690, oldMoment694, oldMoment697, oldMoment698, oldMoment700, oldMoment806, oldMoment865, oldMoment1044, oldMoment1050, oldMoment1052, oldMoment1055, oldMoment1059, oldMoment1128, oldMoment1221, oldMoment1227, oldMoment1250, oldMoment1251] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound133 hH, mul_zero]

/-- Reuse upstream boundarySound134; only coordinates and scaling change. -/
theorem rowSound797 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 797) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row797 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row797 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow134
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row797, OAI.MUB6.Certificate.PairSemantics.boundaryRow134, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment20, oldMoment72, oldMoment93, oldMoment94, oldMoment418, oldMoment553, oldMoment682, oldMoment690, oldMoment869, oldMoment1044, oldMoment1050, oldMoment1114, oldMoment1174, oldMoment1217, oldMoment1221, oldMoment1250, oldMoment1251, oldMoment1319, oldMoment1321, oldMoment1388, oldMoment1389] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound134 hH, mul_zero]

/-- Reuse upstream boundarySound135; only coordinates and scaling change. -/
theorem rowSound798 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 798) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row798 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row798 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow135
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row798, OAI.MUB6.Certificate.PairSemantics.boundaryRow135, Integer.Sparse.eval,
      oldMoment0, oldMoment72, oldMoment94, oldMoment541, oldMoment553, oldMoment682, oldMoment869, oldMoment1050, oldMoment1221, oldMoment1250, oldMoment1251, oldMoment1270, oldMoment1321, oldMoment1388, oldMoment1389] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound135 hH, mul_zero]

/-- Reuse upstream boundarySound138; only coordinates and scaling change. -/
theorem rowSound801 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 801) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row801 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row801 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow138
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row801, OAI.MUB6.Certificate.PairSemantics.boundaryRow138, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment93, oldMoment94, oldMoment241, oldMoment243, oldMoment427, oldMoment690, oldMoment691, oldMoment697, oldMoment698, oldMoment700, oldMoment789, oldMoment791, oldMoment867, oldMoment1044, oldMoment1050, oldMoment1052, oldMoment1058, oldMoment1059, oldMoment1250, oldMoment1251] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound138 hH, mul_zero]

/-- Reuse upstream boundarySound139; only coordinates and scaling change. -/
theorem rowSound802 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 802) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row802 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row802 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow139
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row802, OAI.MUB6.Certificate.PairSemantics.boundaryRow139, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment72, oldMoment81, oldMoment94, oldMoment241, oldMoment243, oldMoment602, oldMoment666, oldMoment697, oldMoment698, oldMoment700, oldMoment803, oldMoment890, oldMoment1050, oldMoment1055, oldMoment1058, oldMoment1059, oldMoment1221, oldMoment1226, oldMoment1227, oldMoment1250, oldMoment1251, oldMoment1389] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound139 hH, mul_zero]

end NoFourMUBs.Step2.SOS.Semantics
