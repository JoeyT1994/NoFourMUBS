import NoFourMUBs.Step2.SOS.MomentData
import NoFourMUBs.Step2.SOS.Data
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Boundary1

namespace NoFourMUBs.Step2.SOS.Semantics
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 800000

/-- Reuse upstream boundarySound17; only coordinates and scaling change. -/
theorem rowSound685 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 685) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row685 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row685 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow17
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row685, OAI.MUB6.Certificate.PairSemantics.boundaryRow17, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment20, oldMoment94, oldMoment241, oldMoment243, oldMoment247, oldMoment697, oldMoment698, oldMoment700, oldMoment704, oldMoment1059, oldMoment1227, oldMoment1251] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound17 hH, mul_zero]

/-- Reuse upstream boundarySound18; only coordinates and scaling change. -/
theorem rowSound686 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 686) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row686 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row686 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow18
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row686, OAI.MUB6.Certificate.PairSemantics.boundaryRow18, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment20, oldMoment94, oldMoment243, oldMoment698, oldMoment700, oldMoment1058, oldMoment1059, oldMoment1226, oldMoment1227, oldMoment1251] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound18 hH, mul_zero]

/-- Reuse upstream boundarySound19; only coordinates and scaling change. -/
theorem rowSound687 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 687) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row687 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row687 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow19
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row687, OAI.MUB6.Certificate.PairSemantics.boundaryRow19, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment20, oldMoment94, oldMoment241, oldMoment243, oldMoment247, oldMoment698, oldMoment704, oldMoment1226, oldMoment1227, oldMoment1251] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound19 hH, mul_zero]

/-- Reuse upstream boundarySound20; only coordinates and scaling change. -/
theorem rowSound688 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 688) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row688 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row688 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow20
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row688, OAI.MUB6.Certificate.PairSemantics.boundaryRow20, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment20, oldMoment94, oldMoment241, oldMoment243, oldMoment247, oldMoment698, oldMoment700, oldMoment704, oldMoment1052, oldMoment1059, oldMoment1219, oldMoment1226, oldMoment1227, oldMoment1251] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound20 hH, mul_zero]

/-- Reuse upstream boundarySound21; only coordinates and scaling change. -/
theorem rowSound689 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 689) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row689 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row689 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow21
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row689, OAI.MUB6.Certificate.PairSemantics.boundaryRow21, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment20, oldMoment94, oldMoment241, oldMoment243, oldMoment247, oldMoment698, oldMoment1226, oldMoment1227, oldMoment1251] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound21 hH, mul_zero]

/-- Reuse upstream boundarySound22; only coordinates and scaling change. -/
theorem rowSound690 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 690) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row690 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row690 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow22
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row690, OAI.MUB6.Certificate.PairSemantics.boundaryRow22, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment241, oldMoment243, oldMoment698, oldMoment700, oldMoment1050, oldMoment1052, oldMoment1059, oldMoment1221, oldMoment1251] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound22 hH, mul_zero]

/-- Reuse upstream boundarySound23; only coordinates and scaling change. -/
theorem rowSound691 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 691) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row691 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row691 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow23
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row691, OAI.MUB6.Certificate.PairSemantics.boundaryRow23, Integer.Sparse.eval,
      oldMoment0, oldMoment60, oldMoment94, oldMoment698, oldMoment700, oldMoment1059, oldMoment1251] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound23 hH, mul_zero]

/-- Reuse upstream boundarySound24; only coordinates and scaling change. -/
theorem rowSound692 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 692) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row692 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row692 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow24
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row692, OAI.MUB6.Certificate.PairSemantics.boundaryRow24, Integer.Sparse.eval,
      oldMoment0, oldMoment81, oldMoment90, oldMoment94, oldMoment698, oldMoment700, oldMoment1059, oldMoment1226, oldMoment1227, oldMoment1251] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound24 hH, mul_zero]

/-- Reuse upstream boundarySound25; only coordinates and scaling change. -/
theorem rowSound693 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 693) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row693 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row693 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow25
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row693, OAI.MUB6.Certificate.PairSemantics.boundaryRow25, Integer.Sparse.eval,
      oldMoment0, oldMoment81, oldMoment94, oldMoment698, oldMoment1059, oldMoment1221, oldMoment1226, oldMoment1227, oldMoment1251, oldMoment1389] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound25 hH, mul_zero]

/-- Reuse upstream boundarySound26; only coordinates and scaling change. -/
theorem rowSound694 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 694) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row694 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row694 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow26
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row694, OAI.MUB6.Certificate.PairSemantics.boundaryRow26, Integer.Sparse.eval,
      oldMoment0, oldMoment81, oldMoment94, oldMoment674, oldMoment698, oldMoment700, oldMoment1059, oldMoment1221, oldMoment1227, oldMoment1251, oldMoment1389] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound26 hH, mul_zero]

/-- Reuse upstream boundarySound27; only coordinates and scaling change. -/
theorem rowSound695 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 695) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row695 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row695 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow27
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row695, OAI.MUB6.Certificate.PairSemantics.boundaryRow27, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment81, oldMoment94, oldMoment241, oldMoment247, oldMoment617, oldMoment697, oldMoment698, oldMoment1050, oldMoment1052, oldMoment1059, oldMoment1221, oldMoment1227, oldMoment1250, oldMoment1251, oldMoment1388, oldMoment1389] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound27 hH, mul_zero]

/-- Reuse upstream boundarySound28; only coordinates and scaling change. -/
theorem rowSound696 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 696) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row696 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row696 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow28
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row696, OAI.MUB6.Certificate.PairSemantics.boundaryRow28, Integer.Sparse.eval,
      oldMoment0, oldMoment81, oldMoment94, oldMoment602, oldMoment617, oldMoment698, oldMoment700, oldMoment1059, oldMoment1221, oldMoment1226, oldMoment1227, oldMoment1251, oldMoment1389] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound28 hH, mul_zero]

/-- Reuse upstream boundarySound29; only coordinates and scaling change. -/
theorem rowSound697 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 697) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row697 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row697 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow29
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row697, OAI.MUB6.Certificate.PairSemantics.boundaryRow29, Integer.Sparse.eval,
      oldMoment0, oldMoment94, oldMoment602, oldMoment610, oldMoment617, oldMoment635, oldMoment698, oldMoment1059, oldMoment1221, oldMoment1226, oldMoment1227, oldMoment1251, oldMoment1389] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound29 hH, mul_zero]

/-- Reuse upstream boundarySound30; only coordinates and scaling change. -/
theorem rowSound698 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 698) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row698 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row698 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow30
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row698, OAI.MUB6.Certificate.PairSemantics.boundaryRow30, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment81, oldMoment94, oldMoment241, oldMoment247, oldMoment668, oldMoment669, oldMoment697, oldMoment698, oldMoment1050, oldMoment1055, oldMoment1058, oldMoment1059, oldMoment1221, oldMoment1227, oldMoment1250, oldMoment1251, oldMoment1388, oldMoment1389] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound30 hH, mul_zero]

/-- Reuse upstream boundarySound31; only coordinates and scaling change. -/
theorem rowSound699 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 699) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row699 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row699 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow31
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row699, OAI.MUB6.Certificate.PairSemantics.boundaryRow31, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment94, oldMoment241, oldMoment247, oldMoment666, oldMoment669, oldMoment697, oldMoment698, oldMoment700, oldMoment1050, oldMoment1055, oldMoment1058, oldMoment1059, oldMoment1227, oldMoment1250, oldMoment1251, oldMoment1388, oldMoment1389] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound31 hH, mul_zero]

/-- Reuse upstream boundarySound32; only coordinates and scaling change. -/
theorem rowSound700 {H : CMatrix} (hH : IsHadamard H) :
    Integer.Sparse.eval (Arithmetic.rows 700) (momentVector H) = 0 := by
  change Integer.Sparse.eval Arithmetic.row700 (momentVector H) = 0
  have heq : Integer.Sparse.eval Arithmetic.row700 (momentVector H) =
      ((1 : ℝ) / 1) * Integer.Sparse.eval OAI.MUB6.Certificate.PairSemantics.boundaryRow32
        (OAI.MUB6.Certificate.PairSemantics.momentVector H) := by
    norm_num [Arithmetic.row700, OAI.MUB6.Certificate.PairSemantics.boundaryRow32, Integer.Sparse.eval,
      oldMoment0, oldMoment19, oldMoment94, oldMoment241, oldMoment247, oldMoment602, oldMoment698, oldMoment1050, oldMoment1055, oldMoment1058, oldMoment1059, oldMoment1226, oldMoment1227, oldMoment1250, oldMoment1251, oldMoment1388, oldMoment1389] <;> ring
  rw [heq, OAI.MUB6.Certificate.PairSemantics.boundarySound32 hH, mul_zero]

end NoFourMUBs.Step2.SOS.Semantics
