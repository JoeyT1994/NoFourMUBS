import TaoBundleAssembly0499
import TaoBundleChunkBatch0689
import TaoBundleChunkBatch0690
import TaoBundleChunkBatch0691
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0500
def root_7317483 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7317483_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7317483_right_fuel : Nat := 18
def small_7317483_right_count : Nat := 107
def small_7317483_right_encoded : String := "1151E905000000020A0000FC115225070A0000FE1152250908A912F712073D0008A9130312070102000000010000000A12073D0208A9130700000006000000060000000100000000120701000000000008A9130312070102000000010000000A00000008000000041151E9090000000408A912F712073D0008A91303120701020000000108A91307120700FC000000060000000312073CFC00000003050000FA135D8105050000FE00000006135D4509000000040CFD9BF70000000600000008000000020000000612073D0208A91307120700FC000000060000000312073CFC00000003050000FA135D8105050000FE00000006135D4509000000040CFD9BF7000000060F34D100000000000000000600000002000000060000000100000000120701000000000008A9130312070102000000010000000A12073D0208A91307120700FC00000006000000030000000800000001000000031151E907000000030A0000FE1152250908A912F700000008120701000000000008A913030000000A00000008000000041151E9090000000408A912F712073D0008A9130300000008000000080000000000000008"
theorem small_7317483_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7317483_right_root small_7317483_right_fuel small_7317483_right_count small_7317483_right_encoded = true := by
  decide +kernel
theorem small_7317483_right_covered : CoveredBy scale carrier boxes small_7317483_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7317483_right_root small_7317483_right_fuel small_7317483_right_count small_7317483_right_encoded small_7317483_right_checked

theorem cover_7317483 : CoveredBy scale carrier boxes root_7317483 := by
  apply coveredBy_split_literal root_7317483 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0499.root_7317484 small_7317483_right_root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0499.cover_7317484
  · exact small_7317483_right_covered
#print axioms cover_7317483

def root_7317478 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7317478_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7317478_right_fuel : Nat := 1
def small_7317478_right_count : Nat := 1
def small_7317478_right_encoded : String := "00000001"
theorem small_7317478_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7317478_right_root small_7317478_right_fuel small_7317478_right_count small_7317478_right_encoded = true := by
  decide +kernel
theorem small_7317478_right_covered : CoveredBy scale carrier boxes small_7317478_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7317478_right_root small_7317478_right_fuel small_7317478_right_count small_7317478_right_encoded small_7317478_right_checked

theorem cover_7317478 : CoveredBy scale carrier boxes root_7317478 := by
  apply coveredBy_split_literal root_7317478 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0500.root_7317483 small_7317478_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0500.cover_7317483
  · exact small_7317478_right_covered
#print axioms cover_7317478

def root_7313446 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7313446 : CoveredBy scale carrier boxes root_7313446 := by
  apply coveredBy_split_literal root_7313446 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0499.root_7313447 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0500.root_7317478 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0499.cover_7313447
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0500.cover_7317478
#print axioms cover_7313446

def root_7313440 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7313440_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7313440_left_fuel : Nat := 1
def small_7313440_left_count : Nat := 1
def small_7313440_left_encoded : String := "00000000"
theorem small_7313440_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7313440_left_root small_7313440_left_fuel small_7313440_left_count small_7313440_left_encoded = true := by
  decide +kernel
theorem small_7313440_left_covered : CoveredBy scale carrier boxes small_7313440_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7313440_left_root small_7313440_left_fuel small_7313440_left_count small_7313440_left_encoded small_7313440_left_checked

theorem cover_7313440 : CoveredBy scale carrier boxes root_7313440 := by
  apply coveredBy_split_literal root_7313440 small_7313440_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0500.root_7313446 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_7313440_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0500.cover_7313446
#print axioms cover_7313440

def root_7312130 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7312130 : CoveredBy scale carrier boxes root_7312130 := by
  apply coveredBy_split_literal root_7312130 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2754.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0500.root_7313440 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2754.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0500.cover_7313440
#print axioms cover_7312130

def root_7311062 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7311062 : CoveredBy scale carrier boxes root_7311062 := by
  apply coveredBy_split_literal root_7311062 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2753.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0500.root_7312130 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2753.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0500.cover_7312130
#print axioms cover_7311062

def root_7321495 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7321495 : CoveredBy scale carrier boxes root_7321495 := by
  apply coveredBy_split_literal root_7321495 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2759.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2760.root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2759.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2760.covered
#print axioms cover_7321495

def root_7321490 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7321490_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7321490_right_fuel : Nat := 1
def small_7321490_right_count : Nat := 1
def small_7321490_right_encoded : String := "00000001"
theorem small_7321490_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7321490_right_root small_7321490_right_fuel small_7321490_right_count small_7321490_right_encoded = true := by
  decide +kernel
theorem small_7321490_right_covered : CoveredBy scale carrier boxes small_7321490_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7321490_right_root small_7321490_right_fuel small_7321490_right_count small_7321490_right_encoded small_7321490_right_checked

theorem cover_7321490 : CoveredBy scale carrier boxes root_7321490 := by
  apply coveredBy_split_literal root_7321490 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0500.root_7321495 small_7321490_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0500.cover_7321495
  · exact small_7321490_right_covered
#print axioms cover_7321490

def root_7321336 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7321336_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7321336_left_fuel : Nat := 13
def small_7321336_left_count : Nat := 73
def small_7321336_left_encoded : String := "1151E903000000010A0000FA115225050A0000FC115225070A00010800000005115224FF0000000408A913050000000A12073CFA0000000208A91307120700FC00000005000000030000000A000000031151E907000000030A0001081151E8FF00000005000000040000000A000000021151E905000000020A0000FC115225070A0001081151E8FF000000050000000400000009000000031151E907000000030A0001081151E8FF05000100135D44F70500010200000005135D8103050000FA00000005000000090000000100000000135D80F7000000000500010200000008135D8103050000FA00000006000000060000000100000004115224FF0000000408A912FF12073D0805000100000000090000000900000004120701080000000400000009"
theorem small_7321336_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7321336_left_root small_7321336_left_fuel small_7321336_left_count small_7321336_left_encoded = true := by
  decide +kernel
theorem small_7321336_left_covered : CoveredBy scale carrier boxes small_7321336_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7321336_left_root small_7321336_left_fuel small_7321336_left_count small_7321336_left_encoded small_7321336_left_checked

theorem cover_7321336 : CoveredBy scale carrier boxes root_7321336 := by
  apply coveredBy_split_literal root_7321336 small_7321336_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0500.root_7321490 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_7321336_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0500.cover_7321490
#print axioms cover_7321336

def root_7321331 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7321331_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7321331_right_fuel : Nat := 1
def small_7321331_right_count : Nat := 1
def small_7321331_right_encoded : String := "00000000"
theorem small_7321331_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7321331_right_root small_7321331_right_fuel small_7321331_right_count small_7321331_right_encoded = true := by
  decide +kernel
theorem small_7321331_right_covered : CoveredBy scale carrier boxes small_7321331_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7321331_right_root small_7321331_right_fuel small_7321331_right_count small_7321331_right_encoded small_7321331_right_checked

theorem cover_7321331 : CoveredBy scale carrier boxes root_7321331 := by
  apply coveredBy_split_literal root_7321331 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0500.root_7321336 small_7321331_right_root coord0 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0500.cover_7321336
  · exact small_7321331_right_covered
#print axioms cover_7321331

def root_7327084 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16678144), (16777216)⟩, ⟨(0), (1816224)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7327084_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (11664704)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16678144), (16777216)⟩, ⟨(0), (1816224)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7327084_left_fuel : Nat := 22
def small_7327084_left_count : Nat := 109
def small_7327084_left_encoded : String := "0E5FD8F70B4D43FA0000000510801105000000020B4D43FC0000000510801107000000030DE7CA08000000050E6014FF000000040115234313F85902000000010DAED87F0E9661080D412880000000050EFA4CF7000000000AA6A27A0000000510ED7105000000020AA6A27C00000005000000BA000000040E962508000000040D4128800EFA10F70AA6A27A0000000510ED7105000000020AA6A27C00000005000000BA000000000EFA4CF7000000000AA6A27A10EDAD050AA6A27C0000000510ED710700000003008A922313FDF902000000010D563A3F000000050EE75108000000040000000A0000000A0000000210ED7105000000020AA6A27C10EDAD07008A9223000000080000000900000003000000BA13F895020DAED87F0E9661080D412880000000050EFA4CF7000000000AA6A27A0000000510ED7105000000020AA6A27C0000000510ED7107000000030000000A000000040E962508000000040D4128800EFA10F70000000A000000000EFA4CF7000000000AA6A27A10EDAD050000000A0000000210ED7105000000020AA6A27C10EDAD07000000090000000310ED7107000000030000000A0000000100000000"
theorem small_7327084_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7327084_left_root small_7327084_left_fuel small_7327084_left_count small_7327084_left_encoded = true := by
  decide +kernel
theorem small_7327084_left_covered : CoveredBy scale carrier boxes small_7327084_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7327084_left_root small_7327084_left_fuel small_7327084_left_count small_7327084_left_encoded small_7327084_left_checked

theorem cover_7327084 : CoveredBy scale carrier boxes root_7327084 := by
  apply coveredBy_split_literal root_7327084 small_7327084_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2761.root coord0 false (11664704)
  · decide +kernel
  · decide +kernel
  · exact small_7327084_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2761.covered
#print axioms cover_7327084

def root_7327078 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (1816224)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7327078_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16378880), (16678144)⟩, ⟨(0), (1816224)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7327078_left_fuel : Nat := 1
def small_7327078_left_count : Nat := 1
def small_7327078_left_encoded : String := "00000001"
theorem small_7327078_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7327078_left_root small_7327078_left_fuel small_7327078_left_count small_7327078_left_encoded = true := by
  decide +kernel
theorem small_7327078_left_covered : CoveredBy scale carrier boxes small_7327078_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7327078_left_root small_7327078_left_fuel small_7327078_left_count small_7327078_left_encoded small_7327078_left_checked

theorem cover_7327078 : CoveredBy scale carrier boxes root_7327078 := by
  apply coveredBy_split_literal root_7327078 small_7327078_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0500.root_7327084 coord1 false (16678144)
  · decide +kernel
  · decide +kernel
  · exact small_7327078_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0500.cover_7327084
#print axioms cover_7327078

def root_7327077 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7327077_right_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(1816224), (3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7327077_right_fuel : Nat := 20
def small_7327077_right_count : Nat := 177
def small_7327077_right_encoded : String := "13E201020DE7CA000E5FD8F70B4D43FA10804D05000000050000000210801105000000020B4D43FC10804D07000000050000000310801107000000030DE7CA080E5FD8FF00000005000000040E6014FF00000004033F67C313BBF502000000010DAED87F0000000A0E962508000000040000000A0000000A000000000E6014F7000000000B4D43FA10804D050B4D43FC10804D070DE7CA08000000050E6014FF00000004033F67C30000000513BC310200000005000000010000000310801107000000030DE7CA080E5FD8FF00000005000000040E6014FF00000004033F67C313BBF502000000010DAED8770E9661000000000A000000000E96250000000000000000080000000A0000000210801105000000020B4D43FC10804D070DE7CA08000000060E6014FF00000004033F67C313BBF502000000010DAED8770E9661000DAED87F000000060E9625080000000400000009000000000E962500000000000DAED87F0000000600000006000000060000000310801107000000030DE7CA080E5FD8FF033F67C313BBF502000000010DAED877000000060E962500000000000000000600000006000000040E6014FF00000004033F67C313BBF502000000010DAED8770E9661000DAED87F0E9661080AA6A27A10EDAD050000000A0000000210ED7105000000020AA6A27C0000000610ED71070000000300000006000000040E962508000000040AA6A27A10EDAD050000000A0000000200000009000000000E962500000000000DAED87F0E9661080AA6A27A10EDAD05000000080000000210ED71050000000200000006000000040E962508000000040AA6A27A10EDAD050AA6A27C10EDAD07000000080000000300000008000000020000000913BC31020DAED8770E9661000DAED87F0000000A0E9625080000000400000009000000000E962500000000000DAED87F0E9661080000000600000004000000080000000100000001"
theorem small_7327077_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7327077_right_root small_7327077_right_fuel small_7327077_right_count small_7327077_right_encoded = true := by
  decide +kernel
theorem small_7327077_right_covered : CoveredBy scale carrier boxes small_7327077_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7327077_right_root small_7327077_right_fuel small_7327077_right_count small_7327077_right_encoded small_7327077_right_checked

theorem cover_7327077 : CoveredBy scale carrier boxes root_7327077 := by
  apply coveredBy_split_literal root_7327077 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0500.root_7327078 small_7327077_right_root coord1 true (1816224)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0500.cover_7327078
  · exact small_7327077_right_covered
#print axioms cover_7327077

def root_7327071 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7327071_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-13027072)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7327071_left_fuel : Nat := 1
def small_7327071_left_count : Nat := 1
def small_7327071_left_encoded : String := "00000004"
theorem small_7327071_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7327071_left_root small_7327071_left_fuel small_7327071_left_count small_7327071_left_encoded = true := by
  decide +kernel
theorem small_7327071_left_covered : CoveredBy scale carrier boxes small_7327071_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7327071_left_root small_7327071_left_fuel small_7327071_left_count small_7327071_left_encoded small_7327071_left_checked

theorem cover_7327071 : CoveredBy scale carrier boxes root_7327071 := by
  apply coveredBy_split_literal root_7327071 small_7327071_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0500.root_7327077 coord4 true (-13027072)
  · decide +kernel
  · decide +kernel
  · exact small_7327071_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0500.cover_7327077
#print axioms cover_7327071

def root_7327063 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7327063_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(8388608), (10572672)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7327063_left_fuel : Nat := 2
def small_7327063_left_count : Nat := 3
def small_7327063_left_encoded : String := "0F8750FF0000000500000004"
theorem small_7327063_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7327063_left_root small_7327063_left_fuel small_7327063_left_count small_7327063_left_encoded = true := by
  decide +kernel
theorem small_7327063_left_covered : CoveredBy scale carrier boxes small_7327063_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7327063_left_root small_7327063_left_fuel small_7327063_left_count small_7327063_left_encoded small_7327063_left_checked

theorem cover_7327063 : CoveredBy scale carrier boxes root_7327063 := by
  apply coveredBy_split_literal root_7327063 small_7327063_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0500.root_7327071 coord4 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_7327063_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0500.cover_7327071
#print axioms cover_7327063

def root_7327057 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7327057_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(10897344), (13026304)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7327057_left_fuel : Nat := 1
def small_7327057_left_count : Nat := 1
def small_7327057_left_encoded : String := "00000003"
theorem small_7327057_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7327057_left_root small_7327057_left_fuel small_7327057_left_count small_7327057_left_encoded = true := by
  decide +kernel
theorem small_7327057_left_covered : CoveredBy scale carrier boxes small_7327057_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7327057_left_root small_7327057_left_fuel small_7327057_left_count small_7327057_left_encoded small_7327057_left_checked

theorem cover_7327057 : CoveredBy scale carrier boxes root_7327057 := by
  apply coveredBy_split_literal root_7327057 small_7327057_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0500.root_7327063 coord3 true (13026304)
  · decide +kernel
  · decide +kernel
  · exact small_7327057_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0500.cover_7327063
#print axioms cover_7327057

def root_7327017 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7327017_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-12756736), (-10572672)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7327017_left_fuel : Nat := 10
def small_7327017_left_count : Nat := 19
def small_7327017_left_encoded : String := "0F878D070C9A8708000000050F878CFF00000004022A45830000000513E201020DE7CA00000000050E6014F7000000000B4D43FA000000051080110500000002000000060000000100000003"
theorem small_7327017_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7327017_left_root small_7327017_left_fuel small_7327017_left_count small_7327017_left_encoded = true := by
  decide +kernel
theorem small_7327017_left_covered : CoveredBy scale carrier boxes small_7327017_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7327017_left_root small_7327017_left_fuel small_7327017_left_count small_7327017_left_encoded small_7327017_left_checked

theorem cover_7327017 : CoveredBy scale carrier boxes root_7327017 := by
  apply coveredBy_split_literal root_7327017 small_7327017_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0500.root_7327057 coord3 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact small_7327017_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0500.cover_7327057
#print axioms cover_7327017

def root_7327011 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7327011_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(10897344), (13026304)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7327011_left_fuel : Nat := 1
def small_7327011_left_count : Nat := 1
def small_7327011_left_encoded : String := "00000002"
theorem small_7327011_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7327011_left_root small_7327011_left_fuel small_7327011_left_count small_7327011_left_encoded = true := by
  decide +kernel
theorem small_7327011_left_covered : CoveredBy scale carrier boxes small_7327011_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7327011_left_root small_7327011_left_fuel small_7327011_left_count small_7327011_left_encoded small_7327011_left_checked

theorem cover_7327011 : CoveredBy scale carrier boxes root_7327011 := by
  apply coveredBy_split_literal root_7327011 small_7327011_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0500.root_7327017 coord2 true (13026304)
  · decide +kernel
  · decide +kernel
  · exact small_7327011_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0500.cover_7327017
#print axioms cover_7327011

def root_7326953 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7326953_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-12756736), (-10572672)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7326953_left_fuel : Nat := 15
def small_7326953_left_count : Nat := 29
def small_7326953_left_encoded : String := "0F878D050C9A86FC000000050F875107000000030C9A8708000000050F878CFF00000004022A45830000000513E201020DE7CA00000000050E6014F7000000000DE7C9FA000000050E5FD905000000020B4D43FC0000000510801107000000030DE7CA08000000050000000A0000000100000002"
theorem small_7326953_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7326953_left_root small_7326953_left_fuel small_7326953_left_count small_7326953_left_encoded = true := by
  decide +kernel
theorem small_7326953_left_covered : CoveredBy scale carrier boxes small_7326953_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7326953_left_root small_7326953_left_fuel small_7326953_left_count small_7326953_left_encoded small_7326953_left_checked

theorem cover_7326953 : CoveredBy scale carrier boxes root_7326953 := by
  apply coveredBy_split_literal root_7326953 small_7326953_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0500.root_7327011 coord2 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact small_7326953_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0500.cover_7327011
#print axioms cover_7326953

def root_7326947 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7326947_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-13027072)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7326947_left_fuel : Nat := 1
def small_7326947_left_count : Nat := 1
def small_7326947_left_encoded : String := "00000000"
theorem small_7326947_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7326947_left_root small_7326947_left_fuel small_7326947_left_count small_7326947_left_encoded = true := by
  decide +kernel
theorem small_7326947_left_covered : CoveredBy scale carrier boxes small_7326947_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7326947_left_root small_7326947_left_fuel small_7326947_left_count small_7326947_left_encoded small_7326947_left_checked

theorem cover_7326947 : CoveredBy scale carrier boxes root_7326947 := by
  apply coveredBy_split_literal root_7326947 small_7326947_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0500.root_7326953 coord0 true (-13027072)
  · decide +kernel
  · decide +kernel
  · exact small_7326947_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0500.cover_7326953
#print axioms cover_7326947

def root_7326939 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7326939_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (10572672)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7326939_left_fuel : Nat := 2
def small_7326939_left_count : Nat := 3
def small_7326939_left_encoded : String := "0F8750F70000000500000000"
theorem small_7326939_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7326939_left_root small_7326939_left_fuel small_7326939_left_count small_7326939_left_encoded = true := by
  decide +kernel
theorem small_7326939_left_covered : CoveredBy scale carrier boxes small_7326939_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7326939_left_root small_7326939_left_fuel small_7326939_left_count small_7326939_left_encoded small_7326939_left_checked

theorem cover_7326939 : CoveredBy scale carrier boxes root_7326939 := by
  apply coveredBy_split_literal root_7326939 small_7326939_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0500.root_7326947 coord0 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_7326939_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0500.cover_7326947
#print axioms cover_7326939

def root_7326934 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7326934_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7326934_right_fuel : Nat := 1
def small_7326934_right_count : Nat := 1
def small_7326934_right_encoded : String := "00000004"
theorem small_7326934_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7326934_right_root small_7326934_right_fuel small_7326934_right_count small_7326934_right_encoded = true := by
  decide +kernel
theorem small_7326934_right_covered : CoveredBy scale carrier boxes small_7326934_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7326934_right_root small_7326934_right_fuel small_7326934_right_count small_7326934_right_encoded small_7326934_right_checked

theorem cover_7326934 : CoveredBy scale carrier boxes root_7326934 := by
  apply coveredBy_split_literal root_7326934 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0500.root_7326939 small_7326934_right_root coord4 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0500.cover_7326939
  · exact small_7326934_right_covered
#print axioms cover_7326934

def root_7326933 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7326933 : CoveredBy scale carrier boxes root_7326933 := by
  apply coveredBy_split_literal root_7326933 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0500.root_7326934 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2762.root coord4 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0500.cover_7326934
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2762.covered
#print axioms cover_7326933

def root_7326927 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7326927_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7326927_left_fuel : Nat := 1
def small_7326927_left_count : Nat := 1
def small_7326927_left_encoded : String := "00000003"
theorem small_7326927_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7326927_left_root small_7326927_left_fuel small_7326927_left_count small_7326927_left_encoded = true := by
  decide +kernel
theorem small_7326927_left_covered : CoveredBy scale carrier boxes small_7326927_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7326927_left_root small_7326927_left_fuel small_7326927_left_count small_7326927_left_encoded small_7326927_left_checked

theorem cover_7326927 : CoveredBy scale carrier boxes root_7326927 := by
  apply coveredBy_split_literal root_7326927 small_7326927_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0500.root_7326933 coord3 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_7326927_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0500.cover_7326933
#print axioms cover_7326927

def root_7326889 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7326889_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7326889_left_fuel : Nat := 8
def small_7326889_left_count : Nat := 17
def small_7326889_left_encoded : String := "0F34D0FC0CFD9BFF0F350D0800000005000000040F34D108000000040C9A8700000000050F878CF7000000000C9A86FA000000050F875105000000020000000900000003"
theorem small_7326889_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7326889_left_root small_7326889_left_fuel small_7326889_left_count small_7326889_left_encoded = true := by
  decide +kernel
theorem small_7326889_left_covered : CoveredBy scale carrier boxes small_7326889_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7326889_left_root small_7326889_left_fuel small_7326889_left_count small_7326889_left_encoded small_7326889_left_checked

theorem cover_7326889 : CoveredBy scale carrier boxes root_7326889 := by
  apply coveredBy_split_literal root_7326889 small_7326889_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0500.root_7326927 coord3 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_7326889_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0500.cover_7326927
#print axioms cover_7326889

def root_7326883 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7326883_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7326883_left_fuel : Nat := 1
def small_7326883_left_count : Nat := 1
def small_7326883_left_encoded : String := "00000002"
theorem small_7326883_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7326883_left_root small_7326883_left_fuel small_7326883_left_count small_7326883_left_encoded = true := by
  decide +kernel
theorem small_7326883_left_covered : CoveredBy scale carrier boxes small_7326883_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7326883_left_root small_7326883_left_fuel small_7326883_left_count small_7326883_left_encoded small_7326883_left_checked

theorem cover_7326883 : CoveredBy scale carrier boxes root_7326883 := by
  apply coveredBy_split_literal root_7326883 small_7326883_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0500.root_7326889 coord2 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_7326883_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0500.cover_7326889
#print axioms cover_7326883

def root_7326807 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7326807_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7326807_left_fuel : Nat := 16
def small_7326807_left_count : Nat := 35
def small_7326807_left_encoded : String := "0F34D0FA0CFD9C070F34D0FC00000005000000030F350CFC000000030CFD9BFF0F350D0800000005000000040F34D108000000040C9A8700000000050F878CF7000000000C9A86FC000000050F87510700000003022A458313E1C502000000010AD357850000000510D13CFA000000020AD3577F0000000510D10108000000040000000A0000000A00000002"
theorem small_7326807_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7326807_left_root small_7326807_left_fuel small_7326807_left_count small_7326807_left_encoded = true := by
  decide +kernel
theorem small_7326807_left_covered : CoveredBy scale carrier boxes small_7326807_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7326807_left_root small_7326807_left_fuel small_7326807_left_count small_7326807_left_encoded small_7326807_left_checked

theorem cover_7326807 : CoveredBy scale carrier boxes root_7326807 := by
  apply coveredBy_split_literal root_7326807 small_7326807_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0500.root_7326883 coord2 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_7326807_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0500.cover_7326883
#print axioms cover_7326807

def root_7326801 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7326801_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7326801_left_fuel : Nat := 1
def small_7326801_left_count : Nat := 1
def small_7326801_left_encoded : String := "00000001"
theorem small_7326801_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7326801_left_root small_7326801_left_fuel small_7326801_left_count small_7326801_left_encoded = true := by
  decide +kernel
theorem small_7326801_left_covered : CoveredBy scale carrier boxes small_7326801_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7326801_left_root small_7326801_left_fuel small_7326801_left_count small_7326801_left_encoded small_7326801_left_checked

theorem cover_7326801 : CoveredBy scale carrier boxes root_7326801 := by
  apply coveredBy_split_literal root_7326801 small_7326801_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0500.root_7326807 coord1 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_7326801_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0500.cover_7326807
#print axioms cover_7326801

def root_7326800 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7326800_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7326800_right_fuel : Nat := 29
def small_7326800_right_count : Nat := 273
def small_7326800_right_encoded : String := "1386AD020CFD9C050F34D0FA0CFD9C070F34D0FC00000005000000030F350CFC000000030CFD9BFF0F350D0800000005000000040F34D108000000040C9A8700000000050F878CF7000000000C9A86FC000000050000000A000000020F350CFA000000020CFD9C070F34D0FC0CFD9BFF0F350D0800000005000000040F34D108000000040C9A8700000000050F878CF7000000000C9A86FA0000000500000009000000030F350CFC000000030CFD9BFF0F350D080C9A87000F8750F70C9A86FA000000050F875105000000020C9A86FC000000050F875107000000030C9A8708000000050F878CFF00000004067ECE830000000500000007000000000F878CF7000000000C9A86FA0F878D050C9A86FC000000050F875107000000030C9A8708000000050F878CFF00000004067ECE8312EA5902000000010DE7CA00000000050E6014F7000000000DE7C9FA000000050E5FD905000000020000000A0000000A000000020F875105000000020C9A86FC0F878D070C9A8708000000050F878CFF00000004067ECE8312EA5902000000010DE7CA00000000050000000600000006000000030F875107000000030C9A87080F8750FF067ECE830000000500000006000000040F878CFF00000004067ECE8312EA5902000000010DE7CA000E5FD8F70B4D43FA10804D050000000A0000000210801105000000020B4D43FC10804D07000000060000000310801107000000030000000A000000000E6014F7000000000B4D43FA10804D050B4D43FC10804D070DE7CA08000000050000000A0000000310801107000000030000000A0000000210801105000000020B4D43FC0000000610801107000000030DE7CA08000000060E6014FF000000040569AC431340D502000000010DAED87700000006000000080000000612EA95020DE7CA000E5FD8F70000000A000000000E6014F7000000000B4D43FA000000060000000600000001000000040F34D108000000040C9A87000F8750F70C9A86FA0F878D050C9A86FC000000050000000A000000020F875105000000020C9A86FC0F878D0700000009000000030F875107000000030000000A000000000F878CF7000000000C9A86FA0F878D050C9A86FC0F878D07067ECE8312EA5902000000010AD3577F10D13D08000000050000000410D10108000000040DE7CA00000000050E6014F7000000000000000912EA95020AD3577F0000000A10D10108000000040000000900000001000000030F87510700000003067ECE8312EA5902000000010AD3577F0000000A10D10108000000040000000A0000000A000000020F875105000000020C9A86FC0F878D0700000009000000030F87510700000003067ECE8312EA5902000000010AD3577F10D13D080DE7CA000E5FD8F70B4D43FA0000000A00000009000000000E6014F7000000000B4D43FA10804D050B4D43FC0000000A0000000A00000002000000090000000410D10108000000040000000912EA9502000000090000000100000001"
theorem small_7326800_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7326800_right_root small_7326800_right_fuel small_7326800_right_count small_7326800_right_encoded = true := by
  decide +kernel
theorem small_7326800_right_covered : CoveredBy scale carrier boxes small_7326800_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7326800_right_root small_7326800_right_fuel small_7326800_right_count small_7326800_right_encoded small_7326800_right_checked

theorem cover_7326800 : CoveredBy scale carrier boxes root_7326800 := by
  apply coveredBy_split_literal root_7326800 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0500.root_7326801 small_7326800_right_root coord1 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0500.cover_7326801
  · exact small_7326800_right_covered
#print axioms cover_7326800

def root_7326795 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7326795_right_root : ZRayBox := fun j => (#[⟨⟨(12756736), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7326795_right_fuel : Nat := 1
def small_7326795_right_count : Nat := 1
def small_7326795_right_encoded : String := "00000000"
theorem small_7326795_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7326795_right_root small_7326795_right_fuel small_7326795_right_count small_7326795_right_encoded = true := by
  decide +kernel
theorem small_7326795_right_covered : CoveredBy scale carrier boxes small_7326795_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7326795_right_root small_7326795_right_fuel small_7326795_right_count small_7326795_right_encoded small_7326795_right_checked

theorem cover_7326795 : CoveredBy scale carrier boxes root_7326795 := by
  apply coveredBy_split_literal root_7326795 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0500.root_7326800 small_7326795_right_root coord0 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0500.cover_7326800
  · exact small_7326795_right_covered
#print axioms cover_7326795

def root_7334683 : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7334683 : CoveredBy scale carrier boxes root_7334683 := by
  apply coveredBy_split_literal root_7334683 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2763.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2764.root coord4 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2763.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2764.covered
#print axioms cover_7334683

def root_7334677 : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7334677_left_root : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7334677_left_fuel : Nat := 1
def small_7334677_left_count : Nat := 1
def small_7334677_left_encoded : String := "00000003"
theorem small_7334677_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7334677_left_root small_7334677_left_fuel small_7334677_left_count small_7334677_left_encoded = true := by
  decide +kernel
theorem small_7334677_left_covered : CoveredBy scale carrier boxes small_7334677_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7334677_left_root small_7334677_left_fuel small_7334677_left_count small_7334677_left_encoded small_7334677_left_checked

theorem cover_7334677 : CoveredBy scale carrier boxes root_7334677 := by
  apply coveredBy_split_literal root_7334677 small_7334677_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0500.root_7334683 coord3 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_7334677_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0500.cover_7334683
#print axioms cover_7334677

def root_7334477 : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7334477_left_root : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7334477_left_fuel : Nat := 15
def small_7334477_left_count : Nat := 91
def small_7334477_left_encoded : String := "0F34D0FC0CFD9BFF0F350D080C9A86FA000000050F875105000000020C9A8708000000050F878CFF000000040AD3577710D13D00000000050000000010D101000000000000000006000000040F34D108000000040C9A86FA0F878D050AD3577710D13D00000000050000000010D1010000000000022A458313E1C502000000010AD3578710D100FC00000005000000030000000713E201020AD3578710D100FC000000050000000310D13CFC000000030AD3577F10D13D08000000050000000410D10108000000040000000700000001000000020F875105000000020AD3577710D13D00022A458313E1C502000000010AD357870000000910D13CFC0000000300000009000000090000000010D1010000000000022A458313E1C502000000010AD357870000000910D13CFC000000030AD3577F10D13D080B4D43FA0000000700000009000000040000000713E201020AD357870000000910D13CFC00000003000000090000000100000003"
theorem small_7334477_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7334477_left_root small_7334477_left_fuel small_7334477_left_count small_7334477_left_encoded = true := by
  decide +kernel
theorem small_7334477_left_covered : CoveredBy scale carrier boxes small_7334477_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7334477_left_root small_7334477_left_fuel small_7334477_left_count small_7334477_left_encoded small_7334477_left_checked

theorem cover_7334477 : CoveredBy scale carrier boxes root_7334477 := by
  apply coveredBy_split_literal root_7334477 small_7334477_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0500.root_7334677 coord3 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_7334477_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0500.cover_7334677
#print axioms cover_7334477

def root_7334471 : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7334471_left_root : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7334471_left_fuel : Nat := 1
def small_7334471_left_count : Nat := 1
def small_7334471_left_encoded : String := "00000002"
theorem small_7334471_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7334471_left_root small_7334471_left_fuel small_7334471_left_count small_7334471_left_encoded = true := by
  decide +kernel
theorem small_7334471_left_covered : CoveredBy scale carrier boxes small_7334471_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7334471_left_root small_7334471_left_fuel small_7334471_left_count small_7334471_left_encoded small_7334471_left_checked

theorem cover_7334471 : CoveredBy scale carrier boxes root_7334471 := by
  apply coveredBy_split_literal root_7334471 small_7334471_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0500.root_7334477 coord2 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_7334471_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0500.cover_7334477
#print axioms cover_7334471

def root_7334279 : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7334279_left_root : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7334279_left_fuel : Nat := 17
def small_7334279_left_count : Nat := 87
def small_7334279_left_encoded : String := "0F34D0FA0CFD9C070F34D0FC00000005000000030F350CFC000000030CFD9BFF0F350D080C9A86FC000000050F875107000000030C9A8708000000050F878CFF0000000400000008000000040F34D108000000040C9A86FC0F878D070AD3577710D13D00000000050000000010D1010000000000022A458313E1C502000000010AD3578510D100FA00000005000000020000000713E201020AD357850000000810D13CFA000000020AD3577F10D13D08000000050000000410D10108000000040000000700000001000000030F875107000000030AD3577710D13D00022A458313E1C502000000010AD357850000000810D13CFA000000020AD3577F10D13D08000000080000000410D10108000000040B4D43FC000000070000000613E201020AD357850000000810D13CFA000000020AD3577F10D13D08000000080000000400000008000000010000000010D10100000000000000000800000002"
theorem small_7334279_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7334279_left_root small_7334279_left_fuel small_7334279_left_count small_7334279_left_encoded = true := by
  decide +kernel
theorem small_7334279_left_covered : CoveredBy scale carrier boxes small_7334279_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7334279_left_root small_7334279_left_fuel small_7334279_left_count small_7334279_left_encoded small_7334279_left_checked

theorem cover_7334279 : CoveredBy scale carrier boxes root_7334279 := by
  apply coveredBy_split_literal root_7334279 small_7334279_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0500.root_7334471 coord2 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_7334279_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0500.cover_7334471
#print axioms cover_7334279

def root_7334273 : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7334273_left_root : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7334273_left_fuel : Nat := 1
def small_7334273_left_count : Nat := 1
def small_7334273_left_encoded : String := "00000001"
theorem small_7334273_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7334273_left_root small_7334273_left_fuel small_7334273_left_count small_7334273_left_encoded = true := by
  decide +kernel
theorem small_7334273_left_covered : CoveredBy scale carrier boxes small_7334273_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7334273_left_root small_7334273_left_fuel small_7334273_left_count small_7334273_left_encoded small_7334273_left_checked

theorem cover_7334273 : CoveredBy scale carrier boxes root_7334273 := by
  apply coveredBy_split_literal root_7334273 small_7334273_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0500.root_7334279 coord1 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_7334273_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0500.cover_7334279
#print axioms cover_7334273

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0500
