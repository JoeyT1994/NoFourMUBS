import NoFourMUBs.Step2.SOS.MomentData
import NoFourMUBs.Step2.SOS.Data
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Boundary8

namespace NoFourMUBs.Step2.SOS.Semantics
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

/-- Reuse upstream boundarySound167; only coordinates and scaling change. -/
theorem rowSound830 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 830) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row830 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row830 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow167
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row830, OAI.MUB6.Certificate.PairSemantics.boundaryRow167, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment81, oldMoment94, oldMoment241, oldMoment243, oldMoment578, oldMoment586, oldMoment602, oldMoment610, oldMoment666, oldMoment668, oldMoment697, oldMoment698, oldMoment1005, oldMoment1016, oldMoment1050, oldMoment1055, oldMoment1058, oldMoment1059, oldMoment1221, oldMoment1226, oldMoment1227, oldMoment1250, oldMoment1251, oldMoment1389] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound167 hH, mul_zero]

/-- Reuse upstream boundarySound168; only coordinates and scaling change. -/
theorem rowSound831 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 831) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row831 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row831 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow168
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row831, OAI.MUB6.Certificate.PairSemantics.boundaryRow168, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment20, oldMoment76, oldMoment81, oldMoment94, oldMoment241, oldMoment243, oldMoment247, oldMoment427, oldMoment433, oldMoment478, oldMoment489, oldMoment559, oldMoment666, oldMoment697, oldMoment698, oldMoment700, oldMoment704, oldMoment801, oldMoment803, oldMoment890, oldMoment1050, oldMoment1052, oldMoment1055, oldMoment1058, oldMoment1059, oldMoment1219, oldMoment1221, oldMoment1226, oldMoment1227, oldMoment1250, oldMoment1251, oldMoment1323, oldMoment1389] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound168 hH, mul_zero]

/-- Reuse upstream boundarySound169; only coordinates and scaling change. -/
theorem rowSound832 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 832) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row832 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row832 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow169
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row832, OAI.MUB6.Certificate.PairSemantics.boundaryRow169, Integer.Sparse.eval,
      oldMoment0, oldMoment81, oldMoment90, oldMoment94, oldMoment586, oldMoment590, oldMoment610, oldMoment617, oldMoment623, oldMoment635, oldMoment698, oldMoment700, oldMoment1059, oldMoment1221, oldMoment1226, oldMoment1227, oldMoment1251, oldMoment1389] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound169 hH, mul_zero]

/-- Reuse upstream boundarySound171; only coordinates and scaling change. -/
theorem rowSound834 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 834) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row834 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row834 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow171
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row834, OAI.MUB6.Certificate.PairSemantics.boundaryRow171, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment20, oldMoment81, oldMoment94, oldMoment241, oldMoment243, oldMoment247, oldMoment423, oldMoment433, oldMoment478, oldMoment489, oldMoment697, oldMoment698, oldMoment700, oldMoment704, oldMoment1027, oldMoment1050, oldMoment1052, oldMoment1055, oldMoment1058, oldMoment1059, oldMoment1117, oldMoment1175, oldMoment1219, oldMoment1221, oldMoment1226, oldMoment1227, oldMoment1250, oldMoment1251, oldMoment1323, oldMoment1389] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound171 hH, mul_zero]

/-- Reuse upstream boundarySound173; only coordinates and scaling change. -/
theorem rowSound836 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 836) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row836 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row836 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow173
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row836, OAI.MUB6.Certificate.PairSemantics.boundaryRow173, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment20, oldMoment81, oldMoment93, oldMoment94, oldMoment241, oldMoment243, oldMoment247, oldMoment433, oldMoment478, oldMoment483, oldMoment489, oldMoment682, oldMoment690, oldMoment694, oldMoment697, oldMoment698, oldMoment700, oldMoment704, oldMoment775, oldMoment808, oldMoment869, oldMoment1027, oldMoment1047, oldMoment1050, oldMoment1052, oldMoment1055, oldMoment1058, oldMoment1059, oldMoment1117, oldMoment1174, oldMoment1175, oldMoment1219, oldMoment1221, oldMoment1226, oldMoment1227, oldMoment1250, oldMoment1251, oldMoment1321, oldMoment1323, oldMoment1389] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound173 hH, mul_zero]

/-- Reuse upstream boundarySound175; only coordinates and scaling change. -/
theorem rowSound838 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 838) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row838 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row838 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow175
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row838, OAI.MUB6.Certificate.PairSemantics.boundaryRow175, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment76, oldMoment81, oldMoment93, oldMoment94, oldMoment241, oldMoment247, oldMoment484, oldMoment610, oldMoment668, oldMoment691, oldMoment694, oldMoment697, oldMoment698, oldMoment775, oldMoment807, oldMoment865, oldMoment1050, oldMoment1052, oldMoment1055, oldMoment1058, oldMoment1059, oldMoment1140, oldMoment1221, oldMoment1226, oldMoment1227, oldMoment1250, oldMoment1251, oldMoment1323, oldMoment1389] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound175 hH, mul_zero]

/-- Reuse upstream boundarySound176; only coordinates and scaling change. -/
theorem rowSound839 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 839) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row839 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row839 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow176
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row839, OAI.MUB6.Certificate.PairSemantics.boundaryRow176, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment20, oldMoment76, oldMoment81, oldMoment94, oldMoment241, oldMoment243, oldMoment247, oldMoment484, oldMoment508, oldMoment602, oldMoment610, oldMoment666, oldMoment668, oldMoment674, oldMoment697, oldMoment698, oldMoment700, oldMoment704, oldMoment801, oldMoment890, oldMoment919, oldMoment1050, oldMoment1052, oldMoment1055, oldMoment1058, oldMoment1059, oldMoment1142, oldMoment1219, oldMoment1221, oldMoment1226, oldMoment1227, oldMoment1250, oldMoment1251, oldMoment1323, oldMoment1389] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound176 hH, mul_zero]

/-- Reuse upstream boundarySound183; only coordinates and scaling change. -/
theorem rowSound846 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 846) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row846 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row846 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow183
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row846, OAI.MUB6.Certificate.PairSemantics.boundaryRow183, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment20, oldMoment76, oldMoment81, oldMoment90, oldMoment93, oldMoment94, oldMoment241, oldMoment243, oldMoment247, oldMoment426, oldMoment549, oldMoment565, oldMoment691, oldMoment694, oldMoment697, oldMoment698, oldMoment700, oldMoment704, oldMoment775, oldMoment781, oldMoment807, oldMoment808, oldMoment865, oldMoment1047, oldMoment1050, oldMoment1055, oldMoment1058, oldMoment1059, oldMoment1221, oldMoment1226, oldMoment1227, oldMoment1250, oldMoment1251, oldMoment1319, oldMoment1323, oldMoment1389] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound183 hH, mul_zero]

/-- Reuse upstream boundarySound184; only coordinates and scaling change. -/
theorem rowSound847 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 847) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row847 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row847 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow184
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row847, OAI.MUB6.Certificate.PairSemantics.boundaryRow184, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment20, oldMoment81, oldMoment90, oldMoment94, oldMoment243, oldMoment618, oldMoment698, oldMoment700, oldMoment704, oldMoment782, oldMoment890, oldMoment919, oldMoment1015, oldMoment1058, oldMoment1059, oldMoment1226, oldMoment1227, oldMoment1251, oldMoment1356, oldMoment1389] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound184 hH, mul_zero]

/-- Reuse upstream boundarySound187; only coordinates and scaling change. -/
theorem rowSound850 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 850) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row850 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row850 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow187
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row850, OAI.MUB6.Certificate.PairSemantics.boundaryRow187, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment20, oldMoment81, oldMoment90, oldMoment94, oldMoment241, oldMoment243, oldMoment247, oldMoment426, oldMoment434, oldMoment618, oldMoment697, oldMoment698, oldMoment700, oldMoment704, oldMoment1004, oldMoment1015, oldMoment1016, oldMoment1058, oldMoment1059, oldMoment1117, oldMoment1219, oldMoment1226, oldMoment1227, oldMoment1251, oldMoment1356, oldMoment1389] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound187 hH, mul_zero]

/-- Reuse upstream boundarySound240; only coordinates and scaling change. -/
theorem rowSound900 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 900) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row900 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row900 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow240
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row900, OAI.MUB6.Certificate.PairSemantics.boundaryRow240, Integer.Sparse.eval,
      oldMoment0, oldMoment3, oldMoment4, oldMoment19, oldMoment20, oldMoment94, oldMoment104, oldMoment105, oldMoment106, oldMoment108, oldMoment241, oldMoment243, oldMoment246, oldMoment247, oldMoment698, oldMoment703, oldMoment704, oldMoment1054, oldMoment1251, oldMoment1278] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound240 hH, mul_zero]

/-- Reuse upstream boundarySound241; only coordinates and scaling change. -/
theorem rowSound901 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 901) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row901 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row901 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow241
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row901, OAI.MUB6.Certificate.PairSemantics.boundaryRow241, Integer.Sparse.eval,
      oldMoment0, oldMoment3, oldMoment4, oldMoment19, oldMoment20, oldMoment94, oldMoment102, oldMoment104, oldMoment105, oldMoment106, oldMoment108, oldMoment241, oldMoment243, oldMoment247, oldMoment698, oldMoment1251] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound241 hH, mul_zero]

/-- Reuse upstream boundarySound242; only coordinates and scaling change. -/
theorem rowSound902 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 902) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row902 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row902 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow242
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row902, OAI.MUB6.Certificate.PairSemantics.boundaryRow242, Integer.Sparse.eval,
      oldMoment3, oldMoment4, oldMoment19, oldMoment20, oldMoment94, oldMoment104, oldMoment105, oldMoment106, oldMoment241, oldMoment243, oldMoment246, oldMoment698, oldMoment703, oldMoment704, oldMoment1054, oldMoment1223, oldMoment1225, oldMoment1226, oldMoment1227, oldMoment1251] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound242 hH, mul_zero]

/-- Reuse upstream boundarySound243; only coordinates and scaling change. -/
theorem rowSound903 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 903) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row903 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row903 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow243
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row903, OAI.MUB6.Certificate.PairSemantics.boundaryRow243, Integer.Sparse.eval,
      oldMoment0, oldMoment3, oldMoment4, oldMoment19, oldMoment20, oldMoment94, oldMoment106, oldMoment243, oldMoment698, oldMoment704, oldMoment1057, oldMoment1058, oldMoment1060, oldMoment1223, oldMoment1225, oldMoment1226, oldMoment1227, oldMoment1251] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound243 hH, mul_zero]

/-- Reuse upstream boundarySound244; only coordinates and scaling change. -/
theorem rowSound904 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 904) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row904 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row904 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow244
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row904, OAI.MUB6.Certificate.PairSemantics.boundaryRow244, Integer.Sparse.eval,
      oldMoment0, oldMoment3, oldMoment4, oldMoment19, oldMoment20, oldMoment94, oldMoment104, oldMoment105, oldMoment106, oldMoment241, oldMoment243, oldMoment244, oldMoment246, oldMoment692, oldMoment698, oldMoment700, oldMoment701, oldMoment703, oldMoment704, oldMoment1045, oldMoment1052, oldMoment1053, oldMoment1054, oldMoment1059, oldMoment1061, oldMoment1251] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound244 hH, mul_zero]

/-- Reuse upstream boundarySound245; only coordinates and scaling change. -/
theorem rowSound905 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 905) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row905 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row905 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow245
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row905, OAI.MUB6.Certificate.PairSemantics.boundaryRow245, Integer.Sparse.eval,
      oldMoment0, oldMoment3, oldMoment4, oldMoment19, oldMoment20, oldMoment94, oldMoment104, oldMoment105, oldMoment108, oldMoment240, oldMoment241, oldMoment242, oldMoment243, oldMoment246, oldMoment247, oldMoment697, oldMoment698, oldMoment704, oldMoment1227, oldMoment1251] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound245 hH, mul_zero]

end NoFourMUBs.Step2.SOS.Semantics
