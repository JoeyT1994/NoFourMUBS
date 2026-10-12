import NoFourMUBs.Step2.SOS.MomentData
import NoFourMUBs.Step2.SOS.Data
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Boundary5

namespace NoFourMUBs.Step2.SOS.Semantics
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

/-- Reuse upstream boundarySound85; only coordinates and scaling change. -/
theorem rowSound753 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 753) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row753 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row753 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow85
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row753, OAI.MUB6.Certificate.PairSemantics.boundaryRow85, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment20, oldMoment81, oldMoment94, oldMoment241, oldMoment243, oldMoment508, oldMoment578, oldMoment602, oldMoment674, oldMoment698, oldMoment700, oldMoment704, oldMoment1050, oldMoment1058, oldMoment1059, oldMoment1221, oldMoment1226, oldMoment1227, oldMoment1251] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound85 hH, mul_zero]

/-- Reuse upstream boundarySound87; only coordinates and scaling change. -/
theorem rowSound755 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 755) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row755 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row755 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow87
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row755, OAI.MUB6.Certificate.PairSemantics.boundaryRow87, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment20, oldMoment94, oldMoment169, oldMoment228, oldMoment241, oldMoment247, oldMoment546, oldMoment549, oldMoment602, oldMoment635, oldMoment638, oldMoment697, oldMoment698, oldMoment704, oldMoment1050, oldMoment1055, oldMoment1059, oldMoment1219, oldMoment1223, oldMoment1226, oldMoment1227, oldMoment1250, oldMoment1251, oldMoment1389] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound87 hH, mul_zero]

/-- Reuse upstream boundarySound88; only coordinates and scaling change. -/
theorem rowSound756 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 756) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row756 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row756 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow88
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row756, OAI.MUB6.Certificate.PairSemantics.boundaryRow88, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment20, oldMoment81, oldMoment94, oldMoment228, oldMoment241, oldMoment243, oldMoment247, oldMoment465, oldMoment508, oldMoment578, oldMoment602, oldMoment635, oldMoment638, oldMoment674, oldMoment697, oldMoment698, oldMoment700, oldMoment704, oldMoment1050, oldMoment1055, oldMoment1058, oldMoment1059, oldMoment1221, oldMoment1226, oldMoment1227, oldMoment1251, oldMoment1389] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound88 hH, mul_zero]

/-- Reuse upstream boundarySound89; only coordinates and scaling change. -/
theorem rowSound757 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 757) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row757 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row757 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow89
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row757, OAI.MUB6.Certificate.PairSemantics.boundaryRow89, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment20, oldMoment38, oldMoment94, oldMoment126, oldMoment130, oldMoment238, oldMoment241, oldMoment243, oldMoment247, oldMoment427, oldMoment434, oldMoment462, oldMoment465, oldMoment492, oldMoment697, oldMoment698, oldMoment700, oldMoment704, oldMoment1053, oldMoment1055, oldMoment1058, oldMoment1059, oldMoment1226, oldMoment1227, oldMoment1251] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound89 hH, mul_zero]

/-- Reuse upstream boundarySound90; only coordinates and scaling change. -/
theorem rowSound758 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 758) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row758 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row758 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow90
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row758, OAI.MUB6.Certificate.PairSemantics.boundaryRow90, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment20, oldMoment94, oldMoment241, oldMoment243, oldMoment247, oldMoment465, oldMoment578, oldMoment602, oldMoment610, oldMoment698, oldMoment704, oldMoment1055, oldMoment1058, oldMoment1059, oldMoment1221, oldMoment1226, oldMoment1227, oldMoment1251, oldMoment1389] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound90 hH, mul_zero]

/-- Reuse upstream boundarySound91; only coordinates and scaling change. -/
theorem rowSound759 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 759) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row759 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row759 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow91
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row759, OAI.MUB6.Certificate.PairSemantics.boundaryRow91, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment20, oldMoment94, oldMoment201, oldMoment238, oldMoment241, oldMoment243, oldMoment247, oldMoment465, oldMoment578, oldMoment602, oldMoment698, oldMoment700, oldMoment704, oldMoment1050, oldMoment1055, oldMoment1058, oldMoment1059, oldMoment1221, oldMoment1226, oldMoment1227, oldMoment1250, oldMoment1251, oldMoment1389] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound91 hH, mul_zero]

/-- Reuse upstream boundarySound92; only coordinates and scaling change. -/
theorem rowSound760 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 760) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row760 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row760 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow92
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row760, OAI.MUB6.Certificate.PairSemantics.boundaryRow92, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment20, oldMoment94, oldMoment169, oldMoment241, oldMoment243, oldMoment247, oldMoment541, oldMoment549, oldMoment602, oldMoment617, oldMoment697, oldMoment698, oldMoment1050, oldMoment1055, oldMoment1058, oldMoment1059, oldMoment1219, oldMoment1223, oldMoment1226, oldMoment1227, oldMoment1250, oldMoment1251, oldMoment1389] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound92 hH, mul_zero]

/-- Reuse upstream boundarySound93; only coordinates and scaling change. -/
theorem rowSound761 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 761) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row761 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row761 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow93
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row761, OAI.MUB6.Certificate.PairSemantics.boundaryRow93, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment20, oldMoment38, oldMoment81, oldMoment94, oldMoment126, oldMoment130, oldMoment238, oldMoment241, oldMoment243, oldMoment247, oldMoment423, oldMoment427, oldMoment434, oldMoment698, oldMoment700, oldMoment704, oldMoment1050, oldMoment1052, oldMoment1053, oldMoment1058, oldMoment1059, oldMoment1226, oldMoment1227, oldMoment1251] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound93 hH, mul_zero]

/-- Reuse upstream boundarySound94; only coordinates and scaling change. -/
theorem rowSound762 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 762) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row762 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row762 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow94
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row762, OAI.MUB6.Certificate.PairSemantics.boundaryRow94, Integer.Sparse.eval,
      oldMoment0, oldMoment38, oldMoment81, oldMoment94, oldMoment201, oldMoment205, oldMoment238, oldMoment462, oldMoment486, oldMoment674, oldMoment698, oldMoment700, oldMoment1050, oldMoment1055, oldMoment1058, oldMoment1059, oldMoment1221, oldMoment1227, oldMoment1250, oldMoment1251] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound94 hH, mul_zero]

/-- Reuse upstream boundarySound95; only coordinates and scaling change. -/
theorem rowSound763 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 763) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row763 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row763 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow95
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row763, OAI.MUB6.Certificate.PairSemantics.boundaryRow95, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment20, oldMoment38, oldMoment81, oldMoment94, oldMoment127, oldMoment130, oldMoment241, oldMoment243, oldMoment461, oldMoment462, oldMoment486, oldMoment698, oldMoment700, oldMoment704, oldMoment1059, oldMoment1061, oldMoment1221, oldMoment1226, oldMoment1227, oldMoment1251] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound95 hH, mul_zero]

/-- Reuse upstream boundarySound96; only coordinates and scaling change. -/
theorem rowSound764 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 764) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row764 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row764 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow96
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row764, OAI.MUB6.Certificate.PairSemantics.boundaryRow96, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment38, oldMoment81, oldMoment94, oldMoment126, oldMoment129, oldMoment238, oldMoment241, oldMoment243, oldMoment247, oldMoment427, oldMoment462, oldMoment486, oldMoment697, oldMoment698, oldMoment700, oldMoment1050, oldMoment1052, oldMoment1053, oldMoment1058, oldMoment1059, oldMoment1221, oldMoment1227, oldMoment1250, oldMoment1251] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound96 hH, mul_zero]

/-- Reuse upstream boundarySound97; only coordinates and scaling change. -/
theorem rowSound765 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 765) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row765 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row765 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow97
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row765, OAI.MUB6.Certificate.PairSemantics.boundaryRow97, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment20, oldMoment94, oldMoment241, oldMoment243, oldMoment247, oldMoment288, oldMoment427, oldMoment461, oldMoment478, oldMoment479, oldMoment602, oldMoment698, oldMoment700, oldMoment704, oldMoment1050, oldMoment1052, oldMoment1059, oldMoment1221, oldMoment1223, oldMoment1226, oldMoment1227, oldMoment1251] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound97 hH, mul_zero]

/-- Reuse upstream boundarySound98; only coordinates and scaling change. -/
theorem rowSound766 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 766) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row766 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row766 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow98
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row766, OAI.MUB6.Certificate.PairSemantics.boundaryRow98, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment20, oldMoment81, oldMoment94, oldMoment228, oldMoment241, oldMoment243, oldMoment247, oldMoment465, oldMoment483, oldMoment484, oldMoment610, oldMoment697, oldMoment698, oldMoment700, oldMoment704, oldMoment1050, oldMoment1052, oldMoment1059, oldMoment1226, oldMoment1227, oldMoment1251, oldMoment1389] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound98 hH, mul_zero]

/-- Reuse upstream boundarySound99; only coordinates and scaling change. -/
theorem rowSound767 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 767) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row767 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row767 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow99
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row767, OAI.MUB6.Certificate.PairSemantics.boundaryRow99, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment20, oldMoment81, oldMoment94, oldMoment228, oldMoment241, oldMoment243, oldMoment247, oldMoment288, oldMoment294, oldMoment427, oldMoment433, oldMoment461, oldMoment465, oldMoment505, oldMoment635, oldMoment697, oldMoment698, oldMoment700, oldMoment704, oldMoment1052, oldMoment1059, oldMoment1221, oldMoment1223, oldMoment1226, oldMoment1227, oldMoment1251, oldMoment1389] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound99 hH, mul_zero]

/-- Reuse upstream boundarySound100; only coordinates and scaling change. -/
theorem rowSound768 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 768) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row768 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row768 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow100
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row768, OAI.MUB6.Certificate.PairSemantics.boundaryRow100, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment20, oldMoment94, oldMoment228, oldMoment241, oldMoment243, oldMoment247, oldMoment287, oldMoment294, oldMoment426, oldMoment434, oldMoment483, oldMoment549, oldMoment698, oldMoment700, oldMoment704, oldMoment1055, oldMoment1059, oldMoment1219, oldMoment1223, oldMoment1226, oldMoment1227, oldMoment1251, oldMoment1389] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound100 hH, mul_zero]

/-- Reuse upstream boundarySound101; only coordinates and scaling change. -/
theorem rowSound769 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 769) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row769 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row769 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow101
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row769, OAI.MUB6.Certificate.PairSemantics.boundaryRow101, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment20, oldMoment38, oldMoment81, oldMoment94, oldMoment127, oldMoment228, oldMoment241, oldMoment243, oldMoment247, oldMoment461, oldMoment462, oldMoment465, oldMoment505, oldMoment508, oldMoment602, oldMoment697, oldMoment698, oldMoment700, oldMoment704, oldMoment1050, oldMoment1052, oldMoment1055, oldMoment1059, oldMoment1061, oldMoment1221, oldMoment1226, oldMoment1227, oldMoment1251, oldMoment1389] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound101 hH, mul_zero]

end NoFourMUBs.Step2.SOS.Semantics
