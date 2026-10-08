import TaoBundleAssembly0549
import TaoBundleChunkBatch0748
import TaoBundleChunkBatch0749
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0550
def root_7974805 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7974805_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7974805_right_fuel : Nat := 18
def small_7974805_right_count : Nat := 215
def small_7974805_right_encoded : String := "120700FA08A91307120701060000000308A9130912070108000000040000000612073D0804548A0113867100000000000CFD9BF90F350CF800000001045489FB1386ACFA0000000204548A070000000A0000000A0000000A0F34D0F8045489FB00000005138670FA0000000500000002000000011386AD000CFD9BF90000000A0F34D0F8045489FB000000060000000A00000001000000000000000412073D0608A91309120701080000000404548A0113867100000000000CFD9BF90F350CF800000001045489FB1386ACFA000000020CFD9C07000000080F350D060000000500000003000000080F34D0F8045489FB00000005138670FA0000000500000002000000011386AD000CFD9BF90F350CF800000001045489FB1386ACFA000000020CFD9C07000000060F350D060000000700000003138670FA00000007000000020F34D0F8045489FB00000006138670FA0000000600000002000000010000000012073D0804548A0113867100000000000CFD9BF90F350CF800000001045489FB1386ACFA000000020CFD9C070F34D106000000030CFD9C090F34D108000000040C9A86F8000000050F8750F900000007000000010F350D0800000005000000040F350D060CFD9C09000000050000000700000003138670FA0CFD9C070F34D106000000030000000A0F350D060000000700000003000000020F34D0F8045489FB1386ACFA000000020CFD9C07000000050F350D060000000500000003138670FA0CFD9C07000000050F350D060CFD9C09000000050F350D0800000005000000040000000300000002000000011386AD000CFD9BF90F350CF800000001045489FB1386ACFA000000020CFD9C070F34D106000000030CFD9C090000000A0F350D080000000A000000040F350D060CFD9C090F34D10800000004000000070000000700000003138670FA0CFD9C070F34D106000000030000000A00000007000000020F34D0F8045489FB1386ACFA000000020CFD9C070F34D106000000030CFD9C09000000050F350D0800000005000000040F350D060CFD9C09000000050F350D08000000050000000400000003138670FA0CFD9C070F34D106000000030CFD9C09000000050F350D0800000005000000040F350D060CFD9C09000000050000000700000003000000020000000100000000000000040000000300000002"
theorem small_7974805_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7974805_right_root small_7974805_right_fuel small_7974805_right_count small_7974805_right_encoded = true := by
  decide +kernel
theorem small_7974805_right_covered : CoveredBy scale carrier boxes small_7974805_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7974805_right_root small_7974805_right_fuel small_7974805_right_count small_7974805_right_encoded small_7974805_right_checked

theorem cover_7974805 : CoveredBy scale carrier boxes root_7974805 := by
  apply coveredBy_split_literal root_7974805 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0549.root_7974806 small_7974805_right_root coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0549.cover_7974806
  · exact small_7974805_right_covered
#print axioms cover_7974805

def root_7974799 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7974799_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7974799_left_fuel : Nat := 1
def small_7974799_left_count : Nat := 1
def small_7974799_left_encoded : String := "00000001"
theorem small_7974799_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7974799_left_root small_7974799_left_fuel small_7974799_left_count small_7974799_left_encoded = true := by
  decide +kernel
theorem small_7974799_left_covered : CoveredBy scale carrier boxes small_7974799_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7974799_left_root small_7974799_left_fuel small_7974799_left_count small_7974799_left_encoded small_7974799_left_checked

theorem cover_7974799 : CoveredBy scale carrier boxes root_7974799 := by
  apply coveredBy_split_literal root_7974799 small_7974799_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0550.root_7974805 coord1 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_7974799_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0550.cover_7974805
#print axioms cover_7974799

def root_7974798 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7974798 : CoveredBy scale carrier boxes root_7974798 := by
  apply coveredBy_split_literal root_7974798 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0550.root_7974799 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2993.root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0550.cover_7974799
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2993.covered
#print axioms cover_7974798

def root_7974792 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7974792_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7974792_left_fuel : Nat := 1
def small_7974792_left_count : Nat := 1
def small_7974792_left_encoded : String := "00000000"
theorem small_7974792_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7974792_left_root small_7974792_left_fuel small_7974792_left_count small_7974792_left_encoded = true := by
  decide +kernel
theorem small_7974792_left_covered : CoveredBy scale carrier boxes small_7974792_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7974792_left_root small_7974792_left_fuel small_7974792_left_count small_7974792_left_encoded small_7974792_left_checked

theorem cover_7974792 : CoveredBy scale carrier boxes root_7974792 := by
  apply coveredBy_split_literal root_7974792 small_7974792_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0550.root_7974798 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_7974792_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0550.cover_7974798
#print axioms cover_7974792

def root_7974791 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7974791 : CoveredBy scale carrier boxes root_7974791 := by
  apply coveredBy_split_literal root_7974791 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0550.root_7974792 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2994.root coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0550.cover_7974792
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2994.covered
#print axioms cover_7974791

def root_7974786 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7974786_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7974786_right_fuel : Nat := 1
def small_7974786_right_count : Nat := 1
def small_7974786_right_encoded : String := "00000004"
theorem small_7974786_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7974786_right_root small_7974786_right_fuel small_7974786_right_count small_7974786_right_encoded = true := by
  decide +kernel
theorem small_7974786_right_covered : CoveredBy scale carrier boxes small_7974786_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7974786_right_root small_7974786_right_fuel small_7974786_right_count small_7974786_right_encoded small_7974786_right_checked

theorem cover_7974786 : CoveredBy scale carrier boxes root_7974786 := by
  apply coveredBy_split_literal root_7974786 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0550.root_7974791 small_7974786_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0550.cover_7974791
  · exact small_7974786_right_covered
#print axioms cover_7974786

def root_7973212 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7973212 : CoveredBy scale carrier boxes root_7973212 := by
  apply coveredBy_split_literal root_7973212 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2990.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0550.root_7974786 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2990.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0550.cover_7974786
#print axioms cover_7973212

def root_7973207 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7973207_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7973207_right_fuel : Nat := 1
def small_7973207_right_count : Nat := 1
def small_7973207_right_encoded : String := "00000003"
theorem small_7973207_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7973207_right_root small_7973207_right_fuel small_7973207_right_count small_7973207_right_encoded = true := by
  decide +kernel
theorem small_7973207_right_covered : CoveredBy scale carrier boxes small_7973207_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7973207_right_root small_7973207_right_fuel small_7973207_right_count small_7973207_right_encoded small_7973207_right_checked

theorem cover_7973207 : CoveredBy scale carrier boxes root_7973207 := by
  apply coveredBy_split_literal root_7973207 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0550.root_7973212 small_7973207_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0550.cover_7973212
  · exact small_7973207_right_covered
#print axioms cover_7973207

def root_7970413 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7970413 : CoveredBy scale carrier boxes root_7970413 := by
  apply coveredBy_split_literal root_7970413 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2989.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0550.root_7973207 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2989.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0550.cover_7973207
#print axioms cover_7970413

def root_7970407 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7970407_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7970407_left_fuel : Nat := 1
def small_7970407_left_count : Nat := 1
def small_7970407_left_encoded : String := "00000002"
theorem small_7970407_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7970407_left_root small_7970407_left_fuel small_7970407_left_count small_7970407_left_encoded = true := by
  decide +kernel
theorem small_7970407_left_covered : CoveredBy scale carrier boxes small_7970407_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7970407_left_root small_7970407_left_fuel small_7970407_left_count small_7970407_left_encoded small_7970407_left_checked

theorem cover_7970407 : CoveredBy scale carrier boxes root_7970407 := by
  apply coveredBy_split_literal root_7970407 small_7970407_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0550.root_7970413 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_7970407_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0550.cover_7970413
#print axioms cover_7970407

def root_7987433 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7987433_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7987433_right_fuel : Nat := 21
def small_7987433_right_count : Nat := 129
def small_7987433_right_encoded : String := "135D44FB04548A0113867100000000000CFD9BF90F350CF8000000010CFD9C070F34D106000000030CFD9C090F34D10800000004000000050F350D080C9A86F8000000080F8750F90C9A8708000000070000000500000001000000040F350D060CFD9C090F34D10800000004000000090F350D080C9A86F80F878CF9000000010C9A87060F8751070000000300000008000000080F8750F90C9A87060F875107000000030C9A8708000000080F878D0900000009000000040F878D070C9A8708000000080F878D09028000FA13D7ECFB00000002022A458113E1C500000000000B4D43F80000000900000009000000090000000500000004000000030000000100000004000000030F34D0F80CFD9C070F34D10600000003000000070F350D060CFD9C09000000090F350D08000000080000000400000003000000011386AD000CFD9BF90F350CF8000000010CFD9C070F34D106000000030CFD9C090F34D10800000004000000090F350D080C9A86F8000000080F8750F90C9A8708000000080000000900000001000000040F350D060CFD9C090F34D10800000004000000090F350D080C9A86F80F878CF900000001000000080F8750F90C9A8706000000090F878D070C9A87080000000800000009000000030000000100000004000000030F34D0F80CFD9C07000000090F350D060000000900000003000000010000000000000002"
theorem small_7987433_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7987433_right_root small_7987433_right_fuel small_7987433_right_count small_7987433_right_encoded = true := by
  decide +kernel
theorem small_7987433_right_covered : CoveredBy scale carrier boxes small_7987433_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7987433_right_root small_7987433_right_fuel small_7987433_right_count small_7987433_right_encoded small_7987433_right_checked

theorem cover_7987433 : CoveredBy scale carrier boxes root_7987433 := by
  apply coveredBy_split_literal root_7987433 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2995.root small_7987433_right_root coord2 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2995.covered
  · exact small_7987433_right_covered
#print axioms cover_7987433

def root_7987428 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7987428_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7987428_right_fuel : Nat := 1
def small_7987428_right_count : Nat := 1
def small_7987428_right_encoded : String := "00000004"
theorem small_7987428_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7987428_right_root small_7987428_right_fuel small_7987428_right_count small_7987428_right_encoded = true := by
  decide +kernel
theorem small_7987428_right_covered : CoveredBy scale carrier boxes small_7987428_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7987428_right_root small_7987428_right_fuel small_7987428_right_count small_7987428_right_encoded small_7987428_right_checked

theorem cover_7987428 : CoveredBy scale carrier boxes root_7987428 := by
  apply coveredBy_split_literal root_7987428 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0550.root_7987433 small_7987428_right_root coord4 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0550.cover_7987433
  · exact small_7987428_right_covered
#print axioms cover_7987428

def root_7987286 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7987286_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7987286_left_fuel : Nat := 16
def small_7987286_left_count : Nat := 65
def small_7987286_left_encoded : String := "1207010800000004050000FA135D80FB0000000204548A0113867100000000000CFD9BF90F350CF8000000010CFD9C070F34D1060000000304548A09000000091386AD080C9A86F80000000900000005000000040F350D0604548A091386710800000004000000091386AD080C9A86F80F878CF900000001000000090F8750F90C9A8706000000090F878D0700000009000000030000000100000004000000030F34D0F800000009000000011386AD000CFD9BF90F350CF8000000010CFD9C07000000090F350D0600000009000000030000000900000000135D44FB04548A0113867100000000000CFD9BF90F350CF80000000100000009000000090000000900000002"
theorem small_7987286_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7987286_left_root small_7987286_left_fuel small_7987286_left_count small_7987286_left_encoded = true := by
  decide +kernel
theorem small_7987286_left_covered : CoveredBy scale carrier boxes small_7987286_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7987286_left_root small_7987286_left_fuel small_7987286_left_count small_7987286_left_encoded small_7987286_left_checked

theorem cover_7987286 : CoveredBy scale carrier boxes root_7987286 := by
  apply coveredBy_split_literal root_7987286 small_7987286_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0550.root_7987428 coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_7987286_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0550.cover_7987428
#print axioms cover_7987286

def root_7987281 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7987281_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7987281_right_fuel : Nat := 1
def small_7987281_right_count : Nat := 1
def small_7987281_right_encoded : String := "00000003"
theorem small_7987281_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7987281_right_root small_7987281_right_fuel small_7987281_right_count small_7987281_right_encoded = true := by
  decide +kernel
theorem small_7987281_right_covered : CoveredBy scale carrier boxes small_7987281_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7987281_right_root small_7987281_right_fuel small_7987281_right_count small_7987281_right_encoded small_7987281_right_checked

theorem cover_7987281 : CoveredBy scale carrier boxes root_7987281 := by
  apply coveredBy_split_literal root_7987281 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0550.root_7987286 small_7987281_right_root coord3 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0550.cover_7987286
  · exact small_7987281_right_covered
#print axioms cover_7987281

def root_7986845 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7986845_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7986845_left_fuel : Nat := 23
def small_7986845_left_count : Nat := 207
def small_7986845_left_encoded : String := "120701060000000308A913091207010800000004050000FA135D80FB0000000204548A0113867100000000000CFD9BF90000000600000007000000060000000512073D08050000FA135D80FB0000000204548A0113867100000000000CFD9BF90F350CF80000000104548A0713867106000000030CFD9C090F34D10800000004000000050F350D080C9A86F80F878CF900000001000000070F8750F90C9A87080F87510900000004078000FA128A7CFB0000000200000007000000050000000500000001000000041386AD060CFD9C090F34D108000000040C9A86F80F878CF90000000100000007000000050F350D080C9A86F80F878CF9000000010C9A8708000000070F878D0900000007000000040F8750F90C9A87080F87510900000004078000FA128A7CFB00000002022A45810000000700000008000000070F878D09078000FA128A7CFB00000002022A45810000000713E20100067ECE8700000006000000060000000000000005000000040000000100000004000000030F34D0F804548A070000000700000007000000011386AD000CFD9BF90F350CF80000000104548A0713867106000000030CFD9C09000000060F350D080C9A86F8000000060F8750F90C9A87080F87510900000004078000FA00000006000000060000000600000001000000041386AD060CFD9C090F34D10800000004000000060F350D080C9A86F80F878CF900000001000000080F8750F90C9A87080F87510900000004000000080F878D09078000FA0000000600000006000000040000000100000004000000030F34D0F804548A071386710600000003000000061386AD060CFD9C090000000700000008000000030000000100000000135D44FB04548A0113867100000000000CFD9BF90F350CF80000000104548A071386710600000003000000051386AD060CFD9C09000000070F350D08000000070000000400000003000000071386AD000CFD9BF90F350CF80000000104548A0713867106000000030CFD9C09000000070F350D080C9A86F80000000700000005000000041386AD060CFD9C09000000090F350D080C9A86F8000000080F8750F90C9A8708000000070000000500000001000000040000000300000009000000000000000200000004"
theorem small_7986845_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7986845_left_root small_7986845_left_fuel small_7986845_left_count small_7986845_left_encoded = true := by
  decide +kernel
theorem small_7986845_left_covered : CoveredBy scale carrier boxes small_7986845_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7986845_left_root small_7986845_left_fuel small_7986845_left_count small_7986845_left_encoded small_7986845_left_checked

theorem cover_7986845 : CoveredBy scale carrier boxes root_7986845 := by
  apply coveredBy_split_literal root_7986845 small_7986845_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0550.root_7987281 coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_7986845_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0550.cover_7987281
#print axioms cover_7986845

def root_7986839 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7986839_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7986839_left_fuel : Nat := 1
def small_7986839_left_count : Nat := 1
def small_7986839_left_encoded : String := "00000001"
theorem small_7986839_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7986839_left_root small_7986839_left_fuel small_7986839_left_count small_7986839_left_encoded = true := by
  decide +kernel
theorem small_7986839_left_covered : CoveredBy scale carrier boxes small_7986839_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7986839_left_root small_7986839_left_fuel small_7986839_left_count small_7986839_left_encoded small_7986839_left_checked

theorem cover_7986839 : CoveredBy scale carrier boxes root_7986839 := by
  apply coveredBy_split_literal root_7986839 small_7986839_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0550.root_7986845 coord1 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_7986839_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0550.cover_7986845
#print axioms cover_7986839

def root_7986838 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7986838_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7986838_right_fuel : Nat := 14
def small_7986838_right_count : Nat := 51
def small_7986838_right_encoded : String := "120700F808A91307120701060000000308A913090000000712073D08050000FA135D80FB0000000204548A010000000700000008000000070000000412073D0608A9130912070108000000040000000912073D08050000FA135D80FB0000000204548A011386710000000000045489F91386ACF8000000010CFD9C070F34D106000000030000000700000008000000081386AD00045489F91386ACF8000000010CFD9C0700000009000000080000000800000000135D44FB0000000900000002000000040000000300000001"
theorem small_7986838_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7986838_right_root small_7986838_right_fuel small_7986838_right_count small_7986838_right_encoded = true := by
  decide +kernel
theorem small_7986838_right_covered : CoveredBy scale carrier boxes small_7986838_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7986838_right_root small_7986838_right_fuel small_7986838_right_count small_7986838_right_encoded small_7986838_right_checked

theorem cover_7986838 : CoveredBy scale carrier boxes root_7986838 := by
  apply coveredBy_split_literal root_7986838 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0550.root_7986839 small_7986838_right_root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0550.cover_7986839
  · exact small_7986838_right_covered
#print axioms cover_7986838

def root_7986832 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7986832_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7986832_left_fuel : Nat := 1
def small_7986832_left_count : Nat := 1
def small_7986832_left_encoded : String := "00000000"
theorem small_7986832_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7986832_left_root small_7986832_left_fuel small_7986832_left_count small_7986832_left_encoded = true := by
  decide +kernel
theorem small_7986832_left_covered : CoveredBy scale carrier boxes small_7986832_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7986832_left_root small_7986832_left_fuel small_7986832_left_count small_7986832_left_encoded small_7986832_left_checked

theorem cover_7986832 : CoveredBy scale carrier boxes root_7986832 := by
  apply coveredBy_split_literal root_7986832 small_7986832_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0550.root_7986838 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_7986832_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0550.cover_7986838
#print axioms cover_7986832

def root_7986831 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7986831_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7986831_right_fuel : Nat := 24
def small_7986831_right_count : Nat := 217
def small_7986831_right_encoded : String := "12073D0008A912F912073CF80000000108A91307120701060000000308A9130912070108000000040000000612073D08050000FA135D80FB000000020CFD9C010F34D100000000000CFD9BF90F350CF80000000104548A07000000061386AD060CFD9C09000000060F350D080C9A86F8000000060F8750F9000000060000000100000004000000030F34D0F8000000060000000100000006135D44FB0CFD9C010F34D100000000000CFD9BF90F350CF80000000100000009000000090F350D000CFD9BF9000000060000000900000000000000020000000412073D0608A913091207010800000004050000FA135D80FB000000020CFD9C010F34D1000000000000000009000000060000000912073D08050000FA135D80FB000000020CFD9C010F34D100000000000CFD9BF90F350CF8000000010CFD9C070F34D106000000030CFD9C090F34D10800000004000000060F350D080C9A86F80F878CF9000000010C9A870800000008000000090F8750F90C9A87080F87510900000004000000080F878D09000000060000000400000001000000040F350D060CFD9C090F34D10800000004000000090F350D080C9A86F80F878CF9000000010C9A870600000009000000080F8750F90C9A87060F875107000000030C9A87080F8751090000000400000008000000090F878D070C9A87080F875109000000040000000800000009000000030000000100000004000000030F34D0F80CFD9C07000000090F350D060000000900000003000000010F350D000CFD9BF90F350CF8000000010CFD9C070F34D106000000030CFD9C09000000060F350D080C9A87000000000600000009000000040F350D060CFD9C09000000090F350D080C9A8700000000090000000900000004000000030F34D0F8000000090000000100000000135D44FB0CFD9C010F34D100000000000CFD9BF90F350CF8000000010CFD9C07000000090F350D060000000900000003000000090F350D000000000900000000000000020000000400000003120700F808A91307120701060000000308A913090000000912073D08050000FA135D80FB000000020CFD9C010F34D100000000000000000800000006135D44FB0CFD9C010000000700000006000000020000000412073D0608A913090000000912073D08050000FA000000090000000900000004000000030000000100000000"
theorem small_7986831_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7986831_right_root small_7986831_right_fuel small_7986831_right_count small_7986831_right_encoded = true := by
  decide +kernel
theorem small_7986831_right_covered : CoveredBy scale carrier boxes small_7986831_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7986831_right_root small_7986831_right_fuel small_7986831_right_count small_7986831_right_encoded small_7986831_right_checked

theorem cover_7986831 : CoveredBy scale carrier boxes root_7986831 := by
  apply coveredBy_split_literal root_7986831 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0550.root_7986832 small_7986831_right_root coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0550.cover_7986832
  · exact small_7986831_right_covered
#print axioms cover_7986831

def root_7986826 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7986826_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7986826_right_fuel : Nat := 1
def small_7986826_right_count : Nat := 1
def small_7986826_right_encoded : String := "00000004"
theorem small_7986826_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7986826_right_root small_7986826_right_fuel small_7986826_right_count small_7986826_right_encoded = true := by
  decide +kernel
theorem small_7986826_right_covered : CoveredBy scale carrier boxes small_7986826_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7986826_right_root small_7986826_right_fuel small_7986826_right_count small_7986826_right_encoded small_7986826_right_checked

theorem cover_7986826 : CoveredBy scale carrier boxes root_7986826 := by
  apply coveredBy_split_literal root_7986826 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0550.root_7986831 small_7986826_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0550.cover_7986831
  · exact small_7986826_right_covered
#print axioms cover_7986826

def root_7986442 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7986442_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7986442_left_fuel : Nat := 18
def small_7986442_left_count : Nat := 175
def small_7986442_left_encoded : String := "1151E9090000000408A91301120701000000000008A912F912073CF80000000108A913071207010600000003050000FA135D80FB000000020500010800000008135D810904548A011386710000000000000000080000000800000004135D44FB000000080000000212073D06050000FA135D80FB000000020500010800000008135D810904548A0113867100000000000CFD9BF90F350CF8000000010CFD9C070F34D106000000030000000800000008000000081386AD000CFD9BF90F350CF8000000010CFD9C070F34D106000000030000000800000008000000080000000000000004135D44FB0500010800000008135D810904548A0113867100000000000000000800000008000000040000000200000003120700F8000000080000000112073D0008A912F912073CF80000000108A913071207010600000003050000FA135D80FB000000020500010800000008135D81090CFD9C010F34D10000000000000000080F350D000CFD9BF90F350CF8000000010000000A000000080000000000000004135D44FB0500010800000008135D81090CFD9C010F34D100000000000000000800000008000000040000000212073D06050000FA135D80FB0000000205000108135D4509000000040CFD9C010F34D100000000000000000800000008135D81090CFD9C010F34D100000000000CFD9BF90F350CF8000000010CFD9C070F34D106000000030000000800000008000000080F350D000CFD9BF90F350CF8000000010CFD9C070F34D10600000003000000080F350D0600000008000000030F34D0F800000008000000010000000000000004135D44FB0500010800000008135D81090CFD9C010F34D10000000000000000080F350D000CFD9BF90F350CF8000000010CFD9C070F34D1060000000300000008000000080000000800000000000000040000000200000003120700F8000000080000000100000000"
theorem small_7986442_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7986442_left_root small_7986442_left_fuel small_7986442_left_count small_7986442_left_encoded = true := by
  decide +kernel
theorem small_7986442_left_covered : CoveredBy scale carrier boxes small_7986442_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7986442_left_root small_7986442_left_fuel small_7986442_left_count small_7986442_left_encoded small_7986442_left_checked

theorem cover_7986442 : CoveredBy scale carrier boxes root_7986442 := by
  apply coveredBy_split_literal root_7986442 small_7986442_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0550.root_7986826 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_7986442_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0550.cover_7986826
#print axioms cover_7986442

def root_7986437 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7986437_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7986437_right_fuel : Nat := 1
def small_7986437_right_count : Nat := 1
def small_7986437_right_encoded : String := "00000003"
theorem small_7986437_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7986437_right_root small_7986437_right_fuel small_7986437_right_count small_7986437_right_encoded = true := by
  decide +kernel
theorem small_7986437_right_covered : CoveredBy scale carrier boxes small_7986437_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7986437_right_root small_7986437_right_fuel small_7986437_right_count small_7986437_right_encoded small_7986437_right_checked

theorem cover_7986437 : CoveredBy scale carrier boxes root_7986437 := by
  apply coveredBy_split_literal root_7986437 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0550.root_7986442 small_7986437_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0550.cover_7986442
  · exact small_7986437_right_covered
#print axioms cover_7986437

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0550
