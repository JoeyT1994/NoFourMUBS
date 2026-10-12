import NoFourMUBs.Step2.SOS.MomentData
import NoFourMUBs.Step2.SOS.Data
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Boundary2

namespace NoFourMUBs.Step2.SOS.Semantics
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

/-- Reuse upstream boundarySound33; only coordinates and scaling change. -/
theorem rowSound701 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 701) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row701 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row701 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow33
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row701, OAI.MUB6.Certificate.PairSemantics.boundaryRow33, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment94, oldMoment241, oldMoment247, oldMoment617, oldMoment635, oldMoment697, oldMoment698, oldMoment1055, oldMoment1059, oldMoment1219, oldMoment1226, oldMoment1227, oldMoment1250, oldMoment1251, oldMoment1388, oldMoment1389] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound33 hH, mul_zero]

/-- Reuse upstream boundarySound34; only coordinates and scaling change. -/
theorem rowSound702 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 702) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row702 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row702 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow34
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row702, OAI.MUB6.Certificate.PairSemantics.boundaryRow34, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment81, oldMoment94, oldMoment241, oldMoment247, oldMoment427, oldMoment433, oldMoment698, oldMoment700, oldMoment1052, oldMoment1059, oldMoment1221, oldMoment1226, oldMoment1227, oldMoment1251, oldMoment1389] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound34 hH, mul_zero]

/-- Reuse upstream boundarySound35; only coordinates and scaling change. -/
theorem rowSound703 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 703) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row703 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row703 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow35
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row703, OAI.MUB6.Certificate.PairSemantics.boundaryRow35, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment81, oldMoment94, oldMoment241, oldMoment247, oldMoment423, oldMoment433, oldMoment434, oldMoment697, oldMoment698, oldMoment1050, oldMoment1052, oldMoment1058, oldMoment1059, oldMoment1221, oldMoment1226, oldMoment1227, oldMoment1250, oldMoment1251, oldMoment1388, oldMoment1389] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound35 hH, mul_zero]

/-- Reuse upstream boundarySound36; only coordinates and scaling change. -/
theorem rowSound704 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 704) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row704 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row704 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow36
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row704, OAI.MUB6.Certificate.PairSemantics.boundaryRow36, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment94, oldMoment241, oldMoment247, oldMoment426, oldMoment434, oldMoment698, oldMoment700, oldMoment1059, oldMoment1219, oldMoment1226, oldMoment1227, oldMoment1251, oldMoment1356] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound36 hH, mul_zero]

/-- Reuse upstream boundarySound37; only coordinates and scaling change. -/
theorem rowSound705 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 705) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row705 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row705 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow37
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row705, OAI.MUB6.Certificate.PairSemantics.boundaryRow37, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment94, oldMoment241, oldMoment247, oldMoment427, oldMoment434, oldMoment697, oldMoment698, oldMoment700, oldMoment1050, oldMoment1052, oldMoment1058, oldMoment1059, oldMoment1226, oldMoment1227, oldMoment1250, oldMoment1251, oldMoment1388] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound37 hH, mul_zero]

/-- Reuse upstream boundarySound38; only coordinates and scaling change. -/
theorem rowSound706 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 706) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row706 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row706 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow38
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row706, OAI.MUB6.Certificate.PairSemantics.boundaryRow38, Integer.Sparse.eval,
      oldMoment0, oldMoment81, oldMoment94, oldMoment461, oldMoment489, oldMoment698, oldMoment700, oldMoment1059, oldMoment1226, oldMoment1227, oldMoment1251, oldMoment1389] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound38 hH, mul_zero]

/-- Reuse upstream boundarySound39; only coordinates and scaling change. -/
theorem rowSound707 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 707) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row707 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row707 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow39
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row707, OAI.MUB6.Certificate.PairSemantics.boundaryRow39, Integer.Sparse.eval,
      oldMoment0, oldMoment94, oldMoment698, oldMoment1015, oldMoment1226, oldMoment1227, oldMoment1251, oldMoment1356] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound39 hH, mul_zero]

/-- Reuse upstream boundarySound40; only coordinates and scaling change. -/
theorem rowSound708 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 708) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row708 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row708 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow40
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row708, OAI.MUB6.Certificate.PairSemantics.boundaryRow40, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment81, oldMoment94, oldMoment241, oldMoment247, oldMoment426, oldMoment433, oldMoment434, oldMoment489, oldMoment697, oldMoment698, oldMoment700, oldMoment1055, oldMoment1058, oldMoment1059, oldMoment1219, oldMoment1226, oldMoment1227, oldMoment1250, oldMoment1251, oldMoment1388, oldMoment1389] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound40 hH, mul_zero]

/-- Reuse upstream boundarySound41; only coordinates and scaling change. -/
theorem rowSound709 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 709) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row709 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row709 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow41
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row709, OAI.MUB6.Certificate.PairSemantics.boundaryRow41, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment81, oldMoment94, oldMoment241, oldMoment423, oldMoment668, oldMoment697, oldMoment698, oldMoment864, oldMoment865, oldMoment1050, oldMoment1052, oldMoment1055, oldMoment1058, oldMoment1059, oldMoment1221, oldMoment1227, oldMoment1250, oldMoment1251] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound41 hH, mul_zero]

/-- Reuse upstream boundarySound42; only coordinates and scaling change. -/
theorem rowSound710 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 710) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row710 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row710 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow42
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row710, OAI.MUB6.Certificate.PairSemantics.boundaryRow42, Integer.Sparse.eval,
      oldMoment0, oldMoment94, oldMoment427, oldMoment674, oldMoment698, oldMoment700, oldMoment865, oldMoment867, oldMoment890, oldMoment1050, oldMoment1055, oldMoment1058, oldMoment1059, oldMoment1221, oldMoment1227, oldMoment1250, oldMoment1251] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound42 hH, mul_zero]

/-- Reuse upstream boundarySound43; only coordinates and scaling change. -/
theorem rowSound711 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 711) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row711 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row711 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow43
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row711, OAI.MUB6.Certificate.PairSemantics.boundaryRow43, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment94, oldMoment241, oldMoment247, oldMoment426, oldMoment666, oldMoment668, oldMoment697, oldMoment698, oldMoment865, oldMoment890, oldMoment956, oldMoment1016, oldMoment1050, oldMoment1055, oldMoment1059, oldMoment1219, oldMoment1221, oldMoment1226, oldMoment1227, oldMoment1250, oldMoment1251, oldMoment1389] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound43 hH, mul_zero]

/-- Reuse upstream boundarySound44; only coordinates and scaling change. -/
theorem rowSound712 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 712) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row712 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row712 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow44
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row712, OAI.MUB6.Certificate.PairSemantics.boundaryRow44, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment94, oldMoment241, oldMoment247, oldMoment610, oldMoment617, oldMoment668, oldMoment697, oldMoment698, oldMoment869, oldMoment957, oldMoment1050, oldMoment1055, oldMoment1059, oldMoment1221, oldMoment1226, oldMoment1227, oldMoment1250, oldMoment1251, oldMoment1388, oldMoment1389] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound44 hH, mul_zero]

/-- Reuse upstream boundarySound45; only coordinates and scaling change. -/
theorem rowSound713 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 713) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row713 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row713 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow45
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row713, OAI.MUB6.Certificate.PairSemantics.boundaryRow45, Integer.Sparse.eval,
      oldMoment0, oldMoment3, oldMoment4, oldMoment94, oldMoment1251] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound45 hH, mul_zero]

/-- Reuse upstream boundarySound46; only coordinates and scaling change. -/
theorem rowSound714 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 714) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row714 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row714 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow46
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row714, OAI.MUB6.Certificate.PairSemantics.boundaryRow46, Integer.Sparse.eval,
      oldMoment0, oldMoment3, oldMoment19, oldMoment20, oldMoment93, oldMoment94, oldMoment1250, oldMoment1251] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound46 hH, mul_zero]

/-- Reuse upstream boundarySound47; only coordinates and scaling change. -/
theorem rowSound715 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 715) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row715 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row715 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow47
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row715, OAI.MUB6.Certificate.PairSemantics.boundaryRow47, Integer.Sparse.eval,
      oldMoment0, oldMoment3, oldMoment19, oldMoment20, oldMoment94, oldMoment104, oldMoment105, oldMoment108, oldMoment241, oldMoment243, oldMoment247, oldMoment698, oldMoment1251] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound47 hH, mul_zero]

/-- Reuse upstream boundarySound48; only coordinates and scaling change. -/
theorem rowSound716 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 716) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row716 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row716 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow48
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row716, OAI.MUB6.Certificate.PairSemantics.boundaryRow48, Integer.Sparse.eval,
      oldMoment0, oldMoment3, oldMoment19, oldMoment94, oldMoment104, oldMoment105, oldMoment241, oldMoment243, oldMoment690, oldMoment691, oldMoment698, oldMoment700, oldMoment1050, oldMoment1059, oldMoment1251] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound48 hH, mul_zero]

end NoFourMUBs.Step2.SOS.Semantics
