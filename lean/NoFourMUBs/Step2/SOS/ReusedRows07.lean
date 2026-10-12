import NoFourMUBs.Step2.SOS.MomentData
import NoFourMUBs.Step2.SOS.Data
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Boundary7

namespace NoFourMUBs.Step2.SOS.Semantics
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

/-- Reuse upstream boundarySound140; only coordinates and scaling change. -/
theorem rowSound803 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 803) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row803 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row803 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow140
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row803, OAI.MUB6.Certificate.PairSemantics.boundaryRow140, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment72, oldMoment94, oldMoment241, oldMoment243, oldMoment553, oldMoment610, oldMoment682, oldMoment698, oldMoment700, oldMoment1050, oldMoment1055, oldMoment1058, oldMoment1059, oldMoment1221, oldMoment1226, oldMoment1227, oldMoment1250, oldMoment1251, oldMoment1389] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound140 hH, mul_zero]

/-- Reuse upstream boundarySound144; only coordinates and scaling change. -/
theorem rowSound807 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 807) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row807 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row807 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow144
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row807, OAI.MUB6.Certificate.PairSemantics.boundaryRow144, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment72, oldMoment94, oldMoment553, oldMoment682, oldMoment690, oldMoment758, oldMoment864, oldMoment869, oldMoment1050, oldMoment1114, oldMoment1221, oldMoment1250, oldMoment1251, oldMoment1266, oldMoment1388, oldMoment1389] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound144 hH, mul_zero]

/-- Reuse upstream boundarySound145; only coordinates and scaling change. -/
theorem rowSound808 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 808) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row808 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row808 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow145
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row808, OAI.MUB6.Certificate.PairSemantics.boundaryRow145, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment94, oldMoment694, oldMoment697, oldMoment698, oldMoment700, oldMoment704, oldMoment806, oldMoment865, oldMoment957, oldMoment1050, oldMoment1055, oldMoment1059, oldMoment1128, oldMoment1141, oldMoment1227, oldMoment1250, oldMoment1251, oldMoment1388] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound145 hH, mul_zero]

/-- Reuse upstream boundarySound146; only coordinates and scaling change. -/
theorem rowSound809 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 809) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row809 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row809 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow146
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row809, OAI.MUB6.Certificate.PairSemantics.boundaryRow146, Integer.Sparse.eval,
      oldMoment0, oldMoment94, oldMoment243, oldMoment427, oldMoment434, oldMoment691, oldMoment697, oldMoment698, oldMoment700, oldMoment704, oldMoment789, oldMoment791, oldMoment808, oldMoment867, oldMoment869, oldMoment1050, oldMoment1058, oldMoment1059, oldMoment1226, oldMoment1227, oldMoment1251] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound146 hH, mul_zero]

/-- Reuse upstream boundarySound147; only coordinates and scaling change. -/
theorem rowSound810 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 810) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row810 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row810 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow147
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row810, OAI.MUB6.Certificate.PairSemantics.boundaryRow147, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment20, oldMoment94, oldMoment869, oldMoment1050, oldMoment1114, oldMoment1174, oldMoment1221, oldMoment1250, oldMoment1251, oldMoment1319, oldMoment1376, oldMoment1388, oldMoment1389, oldMoment1396] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound147 hH, mul_zero]

/-- Reuse upstream boundarySound150; only coordinates and scaling change. -/
theorem rowSound813 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 813) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row813 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row813 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow150
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row813, OAI.MUB6.Certificate.PairSemantics.boundaryRow150, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment81, oldMoment93, oldMoment94, oldMoment241, oldMoment668, oldMoment690, oldMoment694, oldMoment697, oldMoment698, oldMoment775, oldMoment865, oldMoment1047, oldMoment1050, oldMoment1055, oldMoment1058, oldMoment1059, oldMoment1128, oldMoment1221, oldMoment1227, oldMoment1250, oldMoment1251, oldMoment1266] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound150 hH, mul_zero]

/-- Reuse upstream boundarySound151; only coordinates and scaling change. -/
theorem rowSound814 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 814) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row814 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row814 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow151
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row814, OAI.MUB6.Certificate.PairSemantics.boundaryRow151, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment93, oldMoment94, oldMoment241, oldMoment666, oldMoment690, oldMoment691, oldMoment694, oldMoment697, oldMoment698, oldMoment700, oldMoment789, oldMoment867, oldMoment1050, oldMoment1055, oldMoment1058, oldMoment1059, oldMoment1128, oldMoment1227, oldMoment1250, oldMoment1251] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound151 hH, mul_zero]

/-- Reuse upstream boundarySound152; only coordinates and scaling change. -/
theorem rowSound815 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 815) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row815 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row815 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow152
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row815, OAI.MUB6.Certificate.PairSemantics.boundaryRow152, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment76, oldMoment81, oldMoment94, oldMoment241, oldMoment427, oldMoment559, oldMoment602, oldMoment674, oldMoment698, oldMoment700, oldMoment1050, oldMoment1052, oldMoment1059, oldMoment1221, oldMoment1226, oldMoment1227, oldMoment1251] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound152 hH, mul_zero]

/-- Reuse upstream boundarySound153; only coordinates and scaling change. -/
theorem rowSound816 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 816) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row816 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row816 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow153
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row816, OAI.MUB6.Certificate.PairSemantics.boundaryRow153, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment20, oldMoment81, oldMoment94, oldMoment241, oldMoment243, oldMoment247, oldMoment478, oldMoment602, oldMoment666, oldMoment668, oldMoment697, oldMoment698, oldMoment704, oldMoment1005, oldMoment1016, oldMoment1050, oldMoment1052, oldMoment1055, oldMoment1059, oldMoment1142, oldMoment1219, oldMoment1221, oldMoment1226, oldMoment1227, oldMoment1250, oldMoment1251, oldMoment1323, oldMoment1389] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound153 hH, mul_zero]

/-- Reuse upstream boundarySound156; only coordinates and scaling change. -/
theorem rowSound819 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 819) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row819 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row819 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow156
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row819, OAI.MUB6.Certificate.PairSemantics.boundaryRow156, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment81, oldMoment94, oldMoment241, oldMoment243, oldMoment578, oldMoment666, oldMoment668, oldMoment674, oldMoment697, oldMoment698, oldMoment700, oldMoment890, oldMoment919, oldMoment1050, oldMoment1055, oldMoment1058, oldMoment1059, oldMoment1221, oldMoment1226, oldMoment1227, oldMoment1250, oldMoment1251] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound156 hH, mul_zero]

/-- Reuse upstream boundarySound157; only coordinates and scaling change. -/
theorem rowSound820 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 820) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row820 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row820 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow157
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row820, OAI.MUB6.Certificate.PairSemantics.boundaryRow157, Integer.Sparse.eval,
      oldMoment0, oldMoment81, oldMoment90, oldMoment94, oldMoment461, oldMoment586, oldMoment602, oldMoment603, oldMoment674, oldMoment698, oldMoment700, oldMoment1059, oldMoment1221, oldMoment1226, oldMoment1227, oldMoment1251] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound157 hH, mul_zero]

/-- Reuse upstream boundarySound158; only coordinates and scaling change. -/
theorem rowSound821 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 821) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row821 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row821 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow158
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row821, OAI.MUB6.Certificate.PairSemantics.boundaryRow158, Integer.Sparse.eval,
      oldMoment0, oldMoment81, oldMoment90, oldMoment94, oldMoment489, oldMoment590, oldMoment610, oldMoment617, oldMoment618, oldMoment623, oldMoment698, oldMoment700, oldMoment1059, oldMoment1226, oldMoment1227, oldMoment1251, oldMoment1389] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound158 hH, mul_zero]

/-- Reuse upstream boundarySound161; only coordinates and scaling change. -/
theorem rowSound824 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 824) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row824 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row824 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow161
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row824, OAI.MUB6.Certificate.PairSemantics.boundaryRow161, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment94, oldMoment241, oldMoment243, oldMoment247, oldMoment478, oldMoment549, oldMoment602, oldMoment635, oldMoment666, oldMoment669, oldMoment697, oldMoment698, oldMoment700, oldMoment1027, oldMoment1059, oldMoment1117, oldMoment1219, oldMoment1226, oldMoment1227, oldMoment1251, oldMoment1323, oldMoment1389] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound161 hH, mul_zero]

/-- Reuse upstream boundarySound162; only coordinates and scaling change. -/
theorem rowSound825 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 825) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row825 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row825 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow162
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row825, OAI.MUB6.Certificate.PairSemantics.boundaryRow162, Integer.Sparse.eval,
      oldMoment0, oldMoment76, oldMoment81, oldMoment90, oldMoment94, oldMoment427, oldMoment433, oldMoment559, oldMoment565, oldMoment590, oldMoment602, oldMoment603, oldMoment635, oldMoment674, oldMoment698, oldMoment700, oldMoment1052, oldMoment1059, oldMoment1221, oldMoment1226, oldMoment1227, oldMoment1251, oldMoment1389] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound162 hH, mul_zero]

/-- Reuse upstream boundarySound165; only coordinates and scaling change. -/
theorem rowSound828 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 828) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row828 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row828 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow165
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row828, OAI.MUB6.Certificate.PairSemantics.boundaryRow165, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment76, oldMoment81, oldMoment93, oldMoment94, oldMoment241, oldMoment247, oldMoment433, oldMoment478, oldMoment489, oldMoment559, oldMoment690, oldMoment691, oldMoment694, oldMoment697, oldMoment698, oldMoment700, oldMoment789, oldMoment806, oldMoment807, oldMoment865, oldMoment1047, oldMoment1050, oldMoment1055, oldMoment1058, oldMoment1059, oldMoment1219, oldMoment1221, oldMoment1227, oldMoment1250, oldMoment1251, oldMoment1323, oldMoment1389] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound165 hH, mul_zero]

/-- Reuse upstream boundarySound166; only coordinates and scaling change. -/
theorem rowSound829 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 829) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row829 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row829 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow166
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row829, OAI.MUB6.Certificate.PairSemantics.boundaryRow166, Integer.Sparse.eval,
      oldMoment0, oldMoment81, oldMoment90, oldMoment94, oldMoment590, oldMoment602, oldMoment603, oldMoment617, oldMoment635, oldMoment674, oldMoment698, oldMoment700, oldMoment1059, oldMoment1221, oldMoment1226, oldMoment1227, oldMoment1251, oldMoment1389] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound166 hH, mul_zero]

end NoFourMUBs.Step2.SOS.Semantics
