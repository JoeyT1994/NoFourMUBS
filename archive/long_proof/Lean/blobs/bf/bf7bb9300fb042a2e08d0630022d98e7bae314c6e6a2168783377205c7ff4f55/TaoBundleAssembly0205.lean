import TaoBundleAssembly0195
import TaoBundleAssembly0200
import TaoBundleAssembly0204
import TaoBundleChunkBatch0793
import TaoBundleChunkBatch0794
import TaoBundleChunkBatch0795
import TaoBundleChunkBatch0796
import TaoBundleChunkBatch0797
import TaoBundleChunkBatch0798
import TaoBundleChunkBatch0799
import TaoBundleChunkBatch0800
import TaoBundleChunkBatch0801
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205
def root_8488798 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8488798_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8488798_left_fuel : Nat := 21
def small_8488798_left_count : Nat := 335
def small_8488798_left_encoded : String := "1151E9090000000408A91301120701000000000008A912F912073CF80000000108A9130512070104000000020000000A12073D0408A91307120700FC0000000A0000000312073CFC0000000305000108135D45090000000404548A0113867100000000000CFD9BF90000000A0F34D0F80000000A000000011386AD000CFD9BF90F350CF8000000010CFD9C05000000060F350D0400000006000000020F34D0F80CFD9C05000000060F350D040CFD9C070000000600000006000000020000000100000000135D810904548A0113867100000000000CFD9BF90F350CF8000000010CFD9C05000000060F350D0400000006000000020F34D0F80000000A000000011386AD000CFD9BF9000000060F34D0F80000000600000001000000000000000400000002120700F808A9130512070104000000020000000A12073D0408A91307120700FC0000000A0000000312073CFC0000000305000108135D45090000000404548A0113867100000000000000000A1386AD00045489F91386ACF8000000010CFD9C050000000A0F350D040CFD9C070000000A0F350CFC000000030000000600000002138670F80CFD9C05000000090F350D040CFD9C070000000A00000009000000020000000100000000135D810904548A011386710000000000045489F90000000A138670F80000000A000000011386AD00045489F91386ACF8000000010CFD9C05000000060F350D040CFD9C07000000060000000600000002138670F80CFD9C050F34D10400000002000000060F350D040CFD9C070F34D0FC00000009000000030000000900000002000000010000000000000004000000020000000112073D0008A912F912073CF80000000108A9130512070104000000020000000612073D0408A91307120700FC05000108135D4509000000040CFD9C010F34D100000000000000000A0F350D000CFD9BF9000000060F34D0F8000000060000000100000000135D81090CFD9C010F34D100000000000CFD9BF9000000060F34D0F800000006000000010F350D000000000600000000000000040000000312073CFC0000000305000108135D4509000000040CFD9C010F34D100000000000CFD9BF9000000060F34D0F80000000600000001000000060000000600000002120700F808A91305120701040000000208A91307120700FC0000000A000000030000000612073D0408A91307120700FC05000108135D4509000000040CFD9C010F34D100000000000000000A0F350D00045489F91386ACF8000000010CFD9C05000000060F350D0404548A07000000060000000600000002138670F80CFD9C050000000A0F350D0404548A070000000A1386ACFC000000030C9A8700000000060000000A000000020000000100000000135D81090CFD9C010F34D100000000000000000A0F350D00045489F900000006138670F80CFD9C05000000060F350D0404548A07138670FC0C9A8700000000060000000A0000000300000006000000020000000100000000000000040000000312073CFC0000000305000108135D4509000000040CFD9C010F34D10000000000045489F91386ACF8000000010CFD9C05000000060F350D040000000600000002138670F80CFD9C050F34D10400000002000000060F350D040CFD9C070F34D0FC0000000A000000030000000500000002000000010F350D00045489F900000006138670F80CFD9C0500000006000000050000000100000000135D81090CFD9C010F34D10000000000045489F900000006138670F80CFD9C05000000060F350D040CFD9C07000000060000000500000002000000010F350D00000000060000000000000004000000020000000100000000"
theorem small_8488798_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8488798_left_root small_8488798_left_fuel small_8488798_left_count small_8488798_left_encoded = true := by
  decide +kernel
theorem small_8488798_left_covered : CoveredBy scale carrier boxes small_8488798_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8488798_left_root small_8488798_left_fuel small_8488798_left_count small_8488798_left_encoded small_8488798_left_checked

theorem cover_8488798 : CoveredBy scale carrier boxes root_8488798 := by
  apply coveredBy_split_literal root_8488798 small_8488798_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3175.root coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_8488798_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3175.covered
#print axioms cover_8488798

def root_8488793 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8488793_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8488793_right_fuel : Nat := 1
def small_8488793_right_count : Nat := 1
def small_8488793_right_encoded : String := "00000003"
theorem small_8488793_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8488793_right_root small_8488793_right_fuel small_8488793_right_count small_8488793_right_encoded = true := by
  decide +kernel
theorem small_8488793_right_covered : CoveredBy scale carrier boxes small_8488793_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8488793_right_root small_8488793_right_fuel small_8488793_right_count small_8488793_right_encoded small_8488793_right_checked

theorem cover_8488793 : CoveredBy scale carrier boxes root_8488793 := by
  apply coveredBy_split_literal root_8488793 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.root_8488798 small_8488793_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.cover_8488798
  · exact small_8488793_right_covered
#print axioms cover_8488793

def root_8488792 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8488792_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8488792_right_fuel : Nat := 18
def small_8488792_right_count : Nat := 107
def small_8488792_right_encoded : String := "1151E907000000030A0001081151E9090000000408A91301120701000000000008A912F912073CF80000000108A913050000000612073D040000000600000002120700F808A913050000000612073D04050000FC135D810705000108135D45090000000404548A011386710000000000045489F900000006138670F8000000060000000100000006000000060000000300000006000000020000000112073D0008A912F900000006120700F80000000600000001000000001152250908A91301120701000000000008A912F912073CF80000000108A913050000000600000006120700F808A913050000000612073D0408A9130912070108000000040000000600000006000000020000000112073D0008A912F912073CF80000000108A9130512070104000000020000000612073D0408A913091207010800000004000000060000000600000002120700F808A9130512070104000000020000000612073D0408A913091207010800000004050000FC135D81070CFD9C01000000060F350D00000000060000000000000003135D450700000003000000060000000600000002000000010000000000000004"
theorem small_8488792_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8488792_right_root small_8488792_right_fuel small_8488792_right_count small_8488792_right_encoded = true := by
  decide +kernel
theorem small_8488792_right_covered : CoveredBy scale carrier boxes small_8488792_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8488792_right_root small_8488792_right_fuel small_8488792_right_count small_8488792_right_encoded small_8488792_right_checked

theorem cover_8488792 : CoveredBy scale carrier boxes root_8488792 := by
  apply coveredBy_split_literal root_8488792 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.root_8488793 small_8488792_right_root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.cover_8488793
  · exact small_8488792_right_covered
#print axioms cover_8488792

def root_8488787 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8488787_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8488787_right_fuel : Nat := 1
def small_8488787_right_count : Nat := 1
def small_8488787_right_encoded : String := "00000002"
theorem small_8488787_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8488787_right_root small_8488787_right_fuel small_8488787_right_count small_8488787_right_encoded = true := by
  decide +kernel
theorem small_8488787_right_covered : CoveredBy scale carrier boxes small_8488787_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8488787_right_root small_8488787_right_fuel small_8488787_right_count small_8488787_right_encoded small_8488787_right_checked

theorem cover_8488787 : CoveredBy scale carrier boxes root_8488787 := by
  apply coveredBy_split_literal root_8488787 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.root_8488792 small_8488787_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.cover_8488792
  · exact small_8488787_right_covered
#print axioms cover_8488787

def root_8486707 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8486707 : CoveredBy scale carrier boxes root_8486707 := by
  apply coveredBy_split_literal root_8486707 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3174.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.root_8488787 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3174.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.cover_8488787
#print axioms cover_8486707

def root_8486701 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8486701_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8486701_left_fuel : Nat := 1
def small_8486701_left_count : Nat := 1
def small_8486701_left_encoded : String := "00000001"
theorem small_8486701_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8486701_left_root small_8486701_left_fuel small_8486701_left_count small_8486701_left_encoded = true := by
  decide +kernel
theorem small_8486701_left_covered : CoveredBy scale carrier boxes small_8486701_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8486701_left_root small_8486701_left_fuel small_8486701_left_count small_8486701_left_encoded small_8486701_left_checked

theorem cover_8486701 : CoveredBy scale carrier boxes root_8486701 := by
  apply coveredBy_split_literal root_8486701 small_8486701_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.root_8486707 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_8486701_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.cover_8486707
#print axioms cover_8486701

def root_8486700 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8486700_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8486700_right_fuel : Nat := 22
def small_8486700_right_count : Nat := 203
def small_8486700_right_encoded : String := "1151E8F90A0001041151E905000000020A0000FC115225070A0001081151E9090000000408A9130112070100000000000000000712073D0008A91307120700FC000000070000000300000007000000001152250908A9130112070100000000000000000712073D0008A91307120700FC0000000700000003000000070000000000000004000000031151E907000000030A0001081151E909000000040000000600000006115225050A0000FC115225070A0001081151E9090000000408A91301120701000000000008A9130512070104000000020000000912073D0408A91307120700FC050000F80000000A000000090000000312073CFC00000003050000F8135D80F90000000105000108135D45090000000404548A0113867100000000000CFD9C05000000060F350D0400000007000000020000000600000006135D44F905000108135D45090000000404548A0113867100000000000CFD9C0500000009000000070000000900000006000000010000000212073D0008A91305120701040000000208A91307000000060000000912073D0408A91307120700FC050000F800000006135D44F900000006000000010000000312073CFC000000030000000600000002000000001152250908A91301120701000000000008A9130512070104000000020000000912073D0408A91307120700FC08A9130900000009000000070000000312073CFC0000000308A913090000000912073D08050000F80000000600000006000000040000000212073D0008A9130512070104000000020000000612073D0408A91307120700FC08A91309120701080000000400000006000000060000000300000006000000020000000000000004000000031151E907000000030A0001081151E9090000000408A91301120701000000000008A913051207010400000002050000F800000006135D44F9050000FC00000006000000060000000112073D04000000060000000212073D0008A913051207010400000002050000F8000000060000000900000006000000001152250908A9130112070100000000000000000612073D0008A913051207010400000002000000090000000600000000000000040000000200000001"
theorem small_8486700_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8486700_right_root small_8486700_right_fuel small_8486700_right_count small_8486700_right_encoded = true := by
  decide +kernel
theorem small_8486700_right_covered : CoveredBy scale carrier boxes small_8486700_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8486700_right_root small_8486700_right_fuel small_8486700_right_count small_8486700_right_encoded small_8486700_right_checked

theorem cover_8486700 : CoveredBy scale carrier boxes root_8486700 := by
  apply coveredBy_split_literal root_8486700 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.root_8486701 small_8486700_right_root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.cover_8486701
  · exact small_8486700_right_covered
#print axioms cover_8486700

def root_8486695 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8486695_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8486695_right_fuel : Nat := 1
def small_8486695_right_count : Nat := 1
def small_8486695_right_encoded : String := "00000000"
theorem small_8486695_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8486695_right_root small_8486695_right_fuel small_8486695_right_count small_8486695_right_encoded = true := by
  decide +kernel
theorem small_8486695_right_covered : CoveredBy scale carrier boxes small_8486695_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8486695_right_root small_8486695_right_fuel small_8486695_right_count small_8486695_right_encoded small_8486695_right_checked

theorem cover_8486695 : CoveredBy scale carrier boxes root_8486695 := by
  apply coveredBy_split_literal root_8486695 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.root_8486700 small_8486695_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.cover_8486700
  · exact small_8486695_right_covered
#print axioms cover_8486695

def root_8484711 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8484711 : CoveredBy scale carrier boxes root_8484711 := by
  apply coveredBy_split_literal root_8484711 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3173.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.root_8486695 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3173.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.cover_8486695
#print axioms cover_8484711

def root_8482375 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8482375 : CoveredBy scale carrier boxes root_8482375 := by
  apply coveredBy_split_literal root_8482375 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3172.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.root_8484711 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3172.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.cover_8484711
#print axioms cover_8482375

def root_8442517 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8442517 : CoveredBy scale carrier boxes root_8442517 := by
  apply coveredBy_split_literal root_8442517 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.root_8442518 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.root_8482375 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.cover_8442518
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.cover_8482375
#print axioms cover_8442517

def root_8302613 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8302613 : CoveredBy scale carrier boxes root_8302613 := by
  apply coveredBy_split_literal root_8302613 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.root_8302614 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.root_8442517 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0204.cover_8302614
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.cover_8442517
#print axioms cover_8302613

def root_8493601 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8493601_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8493601_left_fuel : Nat := 24
def small_8493601_left_count : Nat := 227
def small_8493601_left_encoded : String := "1151E905000000020A0001061151E8FD0A0000FE115224FF00000004000000071151E8FF000000060000000400000003115224FD000000030A0000FE115224FF0000000408A91301120701000000000008A912F912073CF80000000108A912FD12073D0608A912FF000000060000000700000003120701060000000308A912FF12073CFE0000000405000104135D45050000000204548A0113867100000000000CFD9BF90F350CF800000001000000070000000600000007135D810504548A0113867100000000000CFD9BF90F350CF800000001045489FD00000007000000070F34D0F8045489FD0000000600000005000000011386AD000CFD9BF9000000070F34D0F800000005000000010000000000000002120700FE0000000500000004120700F808A912FD00000006120701060000000308A912FF00000005120700FE00000005000000040000000112073D0008A912F912073CF80000000108A912FD00000007120701060000000308A912FF12073CFE000000040000000700000007120700F808A912FD12073D060000000500000003120701060000000308A912FF12073CFE000000040500010400000005135D810500000005000000020000000700000001000000001151E8FF08A91301120701000000000008A912F912073CF80000000108A912FD00000006120701060000000305000104135D45050000000200000006135D8105050000FE135D80FF0000000404548A0113867100000000000CFD9BF90F350CF800000001045489FD0000000613867106000000030C9A86F8000000060F8750F90000000600000001000000061386AD000CFD9BF90F350CF800000001045489FD0000000613867106000000030C9A86F800000006000000070000000600000000135D44FF04548A0113867100000000000CFD9BF900000006000000060000000600000004000000020000000612073D0008A912F912073CF80000000108A912FD12073D0605000104000000060000000700000003120701060000000305000104135D450500000002050000FE135D80FF000000040CFD9C010000000700000006135D44FF0000000600000004135D8105050000FE135D80FF000000040CFD9C010F34D100000000000000000700000007135D44FF0CFD9C010F34D100000000000CFD9BF900000006000000060F350D0000000007000000000000000400000002120700F808A912FD00000006120701060000000300000006000000010000000000000004"
theorem small_8493601_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8493601_left_root small_8493601_left_fuel small_8493601_left_count small_8493601_left_encoded = true := by
  decide +kernel
theorem small_8493601_left_covered : CoveredBy scale carrier boxes small_8493601_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8493601_left_root small_8493601_left_fuel small_8493601_left_count small_8493601_left_encoded small_8493601_left_checked

theorem cover_8493601 : CoveredBy scale carrier boxes root_8493601 := by
  apply coveredBy_split_literal root_8493601 small_8493601_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3176.root coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_8493601_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3176.covered
#print axioms cover_8493601

def root_8493595 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8493595_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8493595_left_fuel : Nat := 1
def small_8493595_left_count : Nat := 1
def small_8493595_left_encoded : String := "00000001"
theorem small_8493595_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8493595_left_root small_8493595_left_fuel small_8493595_left_count small_8493595_left_encoded = true := by
  decide +kernel
theorem small_8493595_left_covered : CoveredBy scale carrier boxes small_8493595_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8493595_left_root small_8493595_left_fuel small_8493595_left_count small_8493595_left_encoded small_8493595_left_checked

theorem cover_8493595 : CoveredBy scale carrier boxes root_8493595 := by
  apply coveredBy_split_literal root_8493595 small_8493595_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.root_8493601 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_8493595_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.cover_8493601
#print axioms cover_8493595

def root_8493594 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8493594_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8493594_right_fuel : Nat := 24
def small_8493594_right_count : Nat := 299
def small_8493594_right_encoded : String := "1151E8F90A0001041151E905000000020A0001061151E8FD0A0000FE115224FF0000000408A913010000000712073D0008A912FF00000007120700FE0000000500000004000000001151E8FF000000070000000400000003115224FD000000030A0000FE115224FF0000000408A91301120701000000000008A912FD00000007120701060000000308A912FF000000070000000712073D0008A912FD00000007120701060000000300000007000000001151E8FF08A91301120701000000000008A912FD12073D06050000F8135D80F90000000105000104000000060000000700000007000000031207010600000003050000F8135D80F90000000105000104135D450500000002050000FE135D80FF0000000404548A010000000700000006135D44FF04548A011386710000000000000000060000000600000004135D8105050000FE135D80FF0000000404548A010000000700000007135D44FF04548A011386710000000000000000051386AD00045489FD000000061386710600000003078000F8128A7CF9000000010000000700000005000000000000000400000002135D44F905000104135D450500000002050000FE00000007135D44FF04548A01000000070000000700000004135D8105050000FE0000000700000005000000020000000112073D0008A912FD000000071207010600000003050000F8135D80F900000001050001040000000700000007000000070000000000000004115225050A0001061151E8FD0A0000FE115224FF0000000408A91301120701000000000008A913051207010400000002000000070000000712073D0008A91305120701040000000208A912FF12073CFE00000004050000F80000000700000009120700FE050000F8135D80F90000000105000106135D44FD0000000A000000030000000A135D44F90000000A000000010000000412073D0408A912FF00000007120700FE050000F8000000070000000A0000000400000002000000001151E8FF000000070000000400000003115224FD000000030A0000FE115224FF0000000408A91301120701000000000008A91305120701040000000208A912FD00000007120701060000000308A912FF12073CFE00000004000000070000000712073D0408A912FD00000007120701060000000308A912FF12073CFE00000004050000F8135D80F90000000104548A0113867100000000000CFD9C0500000007000000070000000700000007000000070000000212073D0008A91305120701040000000208A912FD12073D0608A912FF12073CFE0000000400000007120700FE050000F800000007135D44F90CFD9C01000000070000000A0000000100000004000000030000000712073D0408A912FD12073D0600000007000000030000000700000002000000001151E8FF08A91301120701000000000008A9130512070104000000020000000512073D0408A912FD12073D0600000007000000031207010600000003050000F8135D80F900000001050000FE135D80FF0000000404548A011386710000000000000000050000000700000005000000050000000212073D0008A913050000000712073D0408A912FD000000071207010600000003000000070000000200000000000000040000000200000001"
theorem small_8493594_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8493594_right_root small_8493594_right_fuel small_8493594_right_count small_8493594_right_encoded = true := by
  decide +kernel
theorem small_8493594_right_covered : CoveredBy scale carrier boxes small_8493594_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8493594_right_root small_8493594_right_fuel small_8493594_right_count small_8493594_right_encoded small_8493594_right_checked

theorem cover_8493594 : CoveredBy scale carrier boxes root_8493594 := by
  apply coveredBy_split_literal root_8493594 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.root_8493595 small_8493594_right_root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.cover_8493595
  · exact small_8493594_right_covered
#print axioms cover_8493594

def root_8493589 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8493589_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8493589_right_fuel : Nat := 1
def small_8493589_right_count : Nat := 1
def small_8493589_right_encoded : String := "00000000"
theorem small_8493589_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8493589_right_root small_8493589_right_fuel small_8493589_right_count small_8493589_right_encoded = true := by
  decide +kernel
theorem small_8493589_right_covered : CoveredBy scale carrier boxes small_8493589_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8493589_right_root small_8493589_right_fuel small_8493589_right_count small_8493589_right_encoded small_8493589_right_checked

theorem cover_8493589 : CoveredBy scale carrier boxes root_8493589 := by
  apply coveredBy_split_literal root_8493589 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.root_8493594 small_8493589_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.cover_8493594
  · exact small_8493589_right_covered
#print axioms cover_8493589

def root_8492895 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8492895_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8492895_left_fuel : Nat := 21
def small_8492895_left_count : Nat := 321
def small_8492895_left_encoded : String := "1151E901000000000A0000F8115224F9000000010A0001041151E905000000020A0001061151E8FD0000000500000003115224FD000000030A0000FE115224FF0000000408A912F900000007120700F808A912FD00000005120701060000000308A912FF0000000500000007000000011151E8FF08A912F900000007120700F8000000050000000100000004115225050A0001061151E8FD0A0000FE115224FF0000000408A912F912073CF80000000108A91305120701040000000208A912FF00000008120700FE000000050000000412073D040000000500000002120700F800000005000000011151E8FF08A912F900000007120700F808A9130512070104000000020000000800000005000000010000000400000003115224FD000000030A0000FE115224FF0000000408A912F912073CF80000000108A91305120701040000000208A912FD12073D0608A912FF00000008120700FE00000005000000040000000312070106000000030000000812073D0408A912FD12073D0608A912FF12073CFE00000004050001000000000500000007120700FE000000050000000400000003120701060000000308A912FF12073CFE000000040500010000000005000000070000000700000002120700F808A91305120701040000000208A912FD12073D06000000050000000312070106000000030000000812073D0408A912FD12073D060000000500000003120701060000000308A912FF12073CFE000000040500010000000005135D81010000000500000000120700FE0500010000000005000000070000000400000002000000011151E8FF08A912F912073CF80000000108A9130512070104000000020000000812073D0408A912FD12073D0600000007000000030000000800000002120700F808A91305120701040000000208A912FD12073D060500010000000008135D8101050000FE00000008135D44FF000000080000000400000000000000030000000812073D0408A912FD12073D060500010000000005135D8101050000FE00000005135D44FF045489F9000000060000000600000004000000000000000312070106000000030500010000000008135D8101050000FE00000008135D44FF045489F900000008000000080000000400000000000000020000000100000004000000021151E8F90A0001041151E905000000020A0001061151E8FD0A0000FE000000051151E8FF000000070000000400000003115224FD000000030A0000FE115224FF0000000408A912FD12073D0608A912FF00000007120700FE000000050000000400000003000000071151E8FF0000000700000004115225050A0001061151E8FD0A0000FE115224FF0000000408A91305120701040000000208A912FF00000008120700FE000000080000000412073D0408A912FF12073CFE0000000405000100135D4501000000000000000800000007120700FE0000000500000004000000021151E8FF000000070000000400000003115224FD000000030A0000FE115224FF0000000408A91305120701040000000208A912FD12073D0608A912FF00000008120700FE0500010000000008135D8101050000F8000000080000000A0000000000000004000000030000000812073D0408A912FD12073D0608A912FF12073CFE0000000405000100135D4501000000000000000700000007120700FE05000100000000050000000A0000000400000003120701060000000300000007000000021151E8FF00000007000000040000000200000001"
theorem small_8492895_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8492895_left_root small_8492895_left_fuel small_8492895_left_count small_8492895_left_encoded = true := by
  decide +kernel
theorem small_8492895_left_covered : CoveredBy scale carrier boxes small_8492895_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8492895_left_root small_8492895_left_fuel small_8492895_left_count small_8492895_left_encoded small_8492895_left_checked

theorem cover_8492895 : CoveredBy scale carrier boxes root_8492895 := by
  apply coveredBy_split_literal root_8492895 small_8492895_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.root_8493589 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_8492895_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.cover_8493589
#print axioms cover_8492895

def root_8497692 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8497692 : CoveredBy scale carrier boxes root_8497692 := by
  apply coveredBy_split_literal root_8497692 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3177.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3178.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3177.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3178.covered
#print axioms cover_8497692

def root_8492894 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8492894 : CoveredBy scale carrier boxes root_8492894 := by
  apply coveredBy_split_literal root_8492894 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.root_8492895 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.root_8497692 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.cover_8492895
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.cover_8497692
#print axioms cover_8492894

def root_8503763 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8503763 : CoveredBy scale carrier boxes root_8503763 := by
  apply coveredBy_split_literal root_8503763 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3180.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3181.root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3180.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3181.covered
#print axioms cover_8503763

def root_8503758 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8503758_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8503758_right_fuel : Nat := 1
def small_8503758_right_count : Nat := 1
def small_8503758_right_encoded : String := "00000000"
theorem small_8503758_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8503758_right_root small_8503758_right_fuel small_8503758_right_count small_8503758_right_encoded = true := by
  decide +kernel
theorem small_8503758_right_covered : CoveredBy scale carrier boxes small_8503758_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8503758_right_root small_8503758_right_fuel small_8503758_right_count small_8503758_right_encoded small_8503758_right_checked

theorem cover_8503758 : CoveredBy scale carrier boxes root_8503758 := by
  apply coveredBy_split_literal root_8503758 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.root_8503763 small_8503758_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.cover_8503763
  · exact small_8503758_right_covered
#print axioms cover_8503758

def root_8502014 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8502014 : CoveredBy scale carrier boxes root_8502014 := by
  apply coveredBy_split_literal root_8502014 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3179.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.root_8503758 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3179.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.cover_8503758
#print axioms cover_8502014

def root_8508062 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8508062 : CoveredBy scale carrier boxes root_8508062 := by
  apply coveredBy_split_literal root_8508062 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3182.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3183.root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3182.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3183.covered
#print axioms cover_8508062

def root_8508056 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8508056_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8508056_left_fuel : Nat := 1
def small_8508056_left_count : Nat := 1
def small_8508056_left_encoded : String := "00000000"
theorem small_8508056_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8508056_left_root small_8508056_left_fuel small_8508056_left_count small_8508056_left_encoded = true := by
  decide +kernel
theorem small_8508056_left_covered : CoveredBy scale carrier boxes small_8508056_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8508056_left_root small_8508056_left_fuel small_8508056_left_count small_8508056_left_encoded small_8508056_left_checked

theorem cover_8508056 : CoveredBy scale carrier boxes root_8508056 := by
  apply coveredBy_split_literal root_8508056 small_8508056_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.root_8508062 coord0 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_8508056_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.cover_8508062
#print axioms cover_8508056

def root_8508055 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8508055 : CoveredBy scale carrier boxes root_8508055 := by
  apply coveredBy_split_literal root_8508055 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.root_8508056 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3184.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.cover_8508056
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3184.covered
#print axioms cover_8508055

def root_8502013 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8502013 : CoveredBy scale carrier boxes root_8502013 := by
  apply coveredBy_split_literal root_8502013 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.root_8502014 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.root_8508055 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.cover_8502014
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.cover_8508055
#print axioms cover_8502013

def root_8492893 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8492893 : CoveredBy scale carrier boxes root_8492893 := by
  apply coveredBy_split_literal root_8492893 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.root_8492894 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.root_8502013 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.cover_8492894
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.cover_8502013
#print axioms cover_8492893

def root_8514635 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8514635 : CoveredBy scale carrier boxes root_8514635 := by
  apply coveredBy_split_literal root_8514635 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3185.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3186.root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3185.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3186.covered
#print axioms cover_8514635

def root_8514630 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8514630_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8514630_right_fuel : Nat := 1
def small_8514630_right_count : Nat := 1
def small_8514630_right_encoded : String := "00000000"
theorem small_8514630_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8514630_right_root small_8514630_right_fuel small_8514630_right_count small_8514630_right_encoded = true := by
  decide +kernel
theorem small_8514630_right_covered : CoveredBy scale carrier boxes small_8514630_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8514630_right_root small_8514630_right_fuel small_8514630_right_count small_8514630_right_encoded small_8514630_right_checked

theorem cover_8514630 : CoveredBy scale carrier boxes root_8514630 := by
  apply coveredBy_split_literal root_8514630 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.root_8514635 small_8514630_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.cover_8514635
  · exact small_8514630_right_covered
#print axioms cover_8514630

def root_8514260 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8514260_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8514260_left_fuel : Nat := 20
def small_8514260_left_count : Nat := 173
def small_8514260_left_encoded : String := "1151E901000000000A0000F8115224F9000000010A0001041151E905000000020A0001061151E907000000030A0000FE000000081151E8FF0000000800000004115225070A0000FE115224FF0000000408A912F912073CF80000000108A9130712070106000000030000000712073D0608A912FF00000008120700FE000000070000000400000003120700F808A91307120701060000000308A912FF12073CFE000000040500010000000005135D8101050001040000000500000008000000000000000712073D0608A912FF000000080000000700000003000000011151E8FF08A912F912073CF80000000108A9130712070106000000030500010000000007135D810105000104135D450500000002050000FE00000005135D44FF0000000800000004000000080000000000000008120700F808A9130712070106000000030500010000000005135D81010500010400000005000000080000000000000008000000010000000400000003115225050A0001061151E9070000000300000008115225070A0000FE115224FF0000000408A912F912073CF80000000108A9130512070104000000020000000812073D0408A91307120701060000000308A912FF00000008000000070000000800000002120700F808A9130512070104000000020000000812073D0408A91307120701060000000308A912FF00000008000000080000000800000002000000011151E8FF000000080000000400000003000000021151E8F90A0001041151E905000000020A0001061151E9070000000300000008115225070A0000FE115224FF0000000408A913070000000712073D0608A912FF00000008120700FE0000000700000004000000031151E8FF000000080000000400000003115225050A00010600000008115225070A0000FE000000081151E8FF0000000800000004000000030000000200000001"
theorem small_8514260_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8514260_left_root small_8514260_left_fuel small_8514260_left_count small_8514260_left_encoded = true := by
  decide +kernel
theorem small_8514260_left_covered : CoveredBy scale carrier boxes small_8514260_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8514260_left_root small_8514260_left_fuel small_8514260_left_count small_8514260_left_encoded small_8514260_left_checked

theorem cover_8514260 : CoveredBy scale carrier boxes root_8514260 := by
  apply coveredBy_split_literal root_8514260 small_8514260_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.root_8514630 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_8514260_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.cover_8514630
#print axioms cover_8514260

def root_8520133 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8520133_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8520133_left_fuel : Nat := 21
def small_8520133_left_count : Nat := 241
def small_8520133_left_encoded : String := "1151E901000000000A0000F8115224F9000000010A0001041151E905000000020A0001061151E907000000030A0000FE1152250908A912F912073CF80000000108A9130900000008000000060000000A000000041151E9090000000400000005115225070A0000FE1152250908A912F912073CF80000000108A9130712070106000000030000000712073D0608A91309120700FE000000070000000412073CFE000000040500010000000006135D810105000104135D4505000000020CFD9BF90000000600000006000000060000000000000003120700F808A913070000000712073D06000000070000000300000001000000041151E9090000000408A912F912073CF80000000108A9130712070106000000030000000900000006120700F808A9130700000007000000050000000100000003115225050A0001061151E907000000030A0000FE1152250908A912F900000008120700F80000000800000001000000041151E9090000000400000006115225070A0000FE1152250908A912F912073CF80000000108A91305120701040000000208A913071207010600000003000000060000000612073D0408A91307000000070000000700000002120700F808A91305120701040000000208A913071207010600000003000000080000000612073D0408A9130700000007000000070000000200000001000000041151E9090000000408A912F912073CF80000000108A91305120701040000000208A91307000000070000000712073D0408A913070000000612073D06000000060000000300000002120700F8000000070000000100000003000000021151E8F90A0001041151E905000000020A0001061151E9070000000300000006115225070A0000FE1152250908A91307120701060000000308A91309000000070000000600000006000000041151E909000000040000000600000003115225050A0001061151E907000000030A0000FE000000081151E9090000000408A9130512070104000000020000000800000006115225070A0000FE1152250908A91305120701040000000208A91307000000060000000812073D0408A913071207010600000003000000060000000600000002000000041151E9090000000408A91305120701040000000208A91307120701060000000305000100000000070000000612073D0605000100135D45010000000000000008135D8101050000F80000000600000006000000000000000312073D0408A913070000000612073D0605000100135D450100000000050000F80000000600000006000000060000000300000002000000030000000200000001"
theorem small_8520133_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8520133_left_root small_8520133_left_fuel small_8520133_left_count small_8520133_left_encoded = true := by
  decide +kernel
theorem small_8520133_left_covered : CoveredBy scale carrier boxes small_8520133_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8520133_left_root small_8520133_left_fuel small_8520133_left_count small_8520133_left_encoded small_8520133_left_checked

theorem cover_8520133 : CoveredBy scale carrier boxes root_8520133 := by
  apply coveredBy_split_literal root_8520133 small_8520133_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3187.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_8520133_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3187.covered
#print axioms cover_8520133

def root_8514259 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8514259 : CoveredBy scale carrier boxes root_8514259 := by
  apply coveredBy_split_literal root_8514259 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.root_8514260 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.root_8520133 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.cover_8514260
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.cover_8520133
#print axioms cover_8514259

def root_8523577 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8523577 : CoveredBy scale carrier boxes root_8523577 := by
  apply coveredBy_split_literal root_8523577 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3188.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3189.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3188.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3189.covered
#print axioms cover_8523577

def root_8523576 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8523576 : CoveredBy scale carrier boxes root_8523576 := by
  apply coveredBy_split_literal root_8523576 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.root_8523577 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3190.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.cover_8523577
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3190.covered
#print axioms cover_8523576

def root_8514258 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8514258 : CoveredBy scale carrier boxes root_8514258 := by
  apply coveredBy_split_literal root_8514258 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.root_8514259 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.root_8523576 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.cover_8514259
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.cover_8523576
#print axioms cover_8514258

def root_8492892 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8492892 : CoveredBy scale carrier boxes root_8492892 := by
  apply coveredBy_split_literal root_8492892 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.root_8492893 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.root_8514258 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.cover_8492893
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.cover_8514258
#print axioms cover_8492892

def root_8302612 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8302612 : CoveredBy scale carrier boxes root_8302612 := by
  apply coveredBy_split_literal root_8302612 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.root_8302613 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.root_8492892 coord3 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.cover_8302613
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.cover_8492892
#print axioms cover_8302612

def root_8087876 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8087876 : CoveredBy scale carrier boxes root_8087876 := by
  apply coveredBy_split_literal root_8087876 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0200.root_8087877 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.root_8302612 coord2 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0200.cover_8087877
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.cover_8302612
#print axioms cover_8087876

def root_7759100 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7759100 : CoveredBy scale carrier boxes root_7759100 := by
  apply coveredBy_split_literal root_7759100 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0195.root_7759101 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.root_8087876 coord2 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0195.cover_7759101
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.cover_8087876
#print axioms cover_7759100

def root_8535164 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8535164_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8535164_left_fuel : Nat := 22
def small_8535164_left_count : Nat := 365
def small_8535164_left_encoded : String := "115224FB000000020A0000FC115224FD000000030A0001081151E9090000000408A91301120701000000000008A912FB000000090000000912073D0008A912FB12073CFA0000000208A912FD00000005120700FC050000F8135D81030500010800000009135D81090CFD9C01000000050F350D0000000007000000000000000400000001135D4503000000010500010800000007135D81090CFD9C0100000005000000070000000400000003120700FA08A912FD12073CFC00000003000000090000000900000002000000001152250908A91301120701000000000008A912FB12073CFA0000000208A912FD12073CFC0000000308A913090000000512073D080000000500000004120700FC08A913090000000512073D08000000050000000400000003120700FA08A912FD12073CFC0000000308A913090000000500000009120700FC08A913090000000500000009000000030000000212073D0008A912FB12073CFA0000000208A912FD12073CFC0000000308A913090000000512073D08050000F800000005135D4503000000010CFD9C01000000050F350D000CFD9BFB000000050F34D0FA00000005000000020000000000000004120700FC08A913090000000512073D08050000F8135D81030CFD9C01000000050F350D000CFD9BFB00000005000000080000000000000001135D4503000000010CFD9C010F34D100000000000CFD9BFB000000050F34D0FA00000005000000020F350D000CFD9BFB0000000500000008000000000000000400000003120700FA08A912FD12073CFC0000000308A913090000000512073D08050000F8135D81030CFD9C01000000050F350D00045489FB00000005138670FA0CFD9BFD000000050F34D0FC0000000500000003000000020000000000000001135D4503000000010CFD9C010F34D10000000000000000090F350D00045489FB00000005138670FA0CFD9BFD0000000500000009000000020000000000000004120700FC08A913090000000812073D08050000F8135D81030CFD9C01000000090F350D00000000080000000000000001135D4503000000010CFD9C01000000090F350D00000000080000000000000004000000030000000200000000000000041151E8FD0A0001081151E9090000000408A9130112070100000000000000000912073D0008A912FB12073CFA00000002050000F80000000500000007120700FA0000000900000002000000001152250908A91301120701000000000008A912FB12073CFA0000000208A913091207010800000004050000F8135D8103050000FC00000005135D44FD000000060000000300000001135D450300000001050000FC00000005135D44FD04548A0100000009000000060000000312073D08050000F800000005135D450300000001050000FC000000050000000900000004120700FA08A9130900000005000000090000000212073D0008A912FB12073CFA0000000208A913091207010800000004050000F800000005135D450300000001050000FC00000005135D44FD0CFD9C010F34D10000000000000000060F350D0000000005000000000000000312073D08050000F8135D8103050000FC00000005135D44FD000000050000000300000001135D450300000001050000FC135D80FD000000030CFD9C01000000050F350D000000000500000000135D44FD0CFD9C010F34D100000000000CFD9BFB0F350CFA000000020CFD9C0900000005000000090F34D0FA00000005000000020F350D000CFD9BFB000000050F34D0FA0000000500000002000000000000000300000004120700FA08A9130912070108000000040000000612073D08050000F8135D8103050000FC00000005135D44FD000000050000000300000001135D450300000001050000FC135D80FD000000030CFD9C01000000050F350D000000000500000000135D44FD0CFD9C01000000090F350D00045489FB000000050000000600000000000000030000000400000002000000000000000400000003"
theorem small_8535164_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8535164_left_root small_8535164_left_fuel small_8535164_left_count small_8535164_left_encoded = true := by
  decide +kernel
theorem small_8535164_left_covered : CoveredBy scale carrier boxes small_8535164_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8535164_left_root small_8535164_left_fuel small_8535164_left_count small_8535164_left_encoded small_8535164_left_checked

theorem cover_8535164 : CoveredBy scale carrier boxes root_8535164 := by
  apply coveredBy_split_literal root_8535164 small_8535164_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3193.root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact small_8535164_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3193.covered
#print axioms cover_8535164

def root_8535158 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8535158_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8535158_left_fuel : Nat := 1
def small_8535158_left_count : Nat := 1
def small_8535158_left_encoded : String := "00000001"
theorem small_8535158_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8535158_left_root small_8535158_left_fuel small_8535158_left_count small_8535158_left_encoded = true := by
  decide +kernel
theorem small_8535158_left_covered : CoveredBy scale carrier boxes small_8535158_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8535158_left_root small_8535158_left_fuel small_8535158_left_count small_8535158_left_encoded small_8535158_left_checked

theorem cover_8535158 : CoveredBy scale carrier boxes root_8535158 := by
  apply coveredBy_split_literal root_8535158 small_8535158_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.root_8535164 coord1 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_8535158_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.cover_8535164
#print axioms cover_8535158

def root_8534306 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8534306_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8534306_left_fuel : Nat := 26
def small_8534306_left_count : Nat := 403
def small_8534306_left_encoded : String := "115225030A0000FA115224FB000000020A0000FC115224FD000000030A0001081151E9090000000408A91301120701000000000008A913030000000512073CF80000000108A912FB00000005120700FA000000090000000212073D0008A91303120700F808A912FB00000005120700FA08A912FD0000000500000009000000020000000112073CF80000000108A912FB12073CFA0000000208A912FD00000005120700FC0500010800000009135D81090CFD9C01000000050F350D000CFD9C03000000050F350CF80000000100000005000000000000000400000003120700FA08A912FD12073CFC000000030500010800000009135D81090CFD9C010000000500000009000000040000000900000002000000001152250908A91301120701000000000008A913030000000512073CF80000000108A912FB00000005120700FA000000050000000212073D0008A91303120700F8000000050000000112073CF80000000108A912FB12073CFA0000000208A912FD00000005120700FC0000000500000003120700FA08A912FD00000005120700FC08A913090000000512073D080CFD9C010F34D10000000000000000090F350D00000000080000000000000004000000030000000200000000000000041151E8FD0A000108000000051152250908A91301120701000000000008A91303120700F808A912FB12073CFA0000000208A913090000000900000005000000050000000112073CF80000000108A912FB12073CFA0000000208A913091207010800000004050000FC00000005135D44FD0000000600000003000000050000000512073D0008A913030000000512073CF80000000108A912FB00000005120700FA00000005000000020000000000000004000000031151E8FB0A0000FC115224FD000000030A000108000000051152250908A91301120701000000000008A91303120700F808A912FD12073CFC0000000308A9130912070108000000040000000800000005000000050000000112073CF80000000108A912FD12073CFC0000000308A913091207010800000004050000FA00000005135D44FB0000000A00000002000000050000000512073D0008A913030000000512073CF80000000108A912FD00000005120700FC000000050000000300000000000000041151E8FD0A0001081151E90900000004000000051152250908A91301120701000000000008A91303120700F808A913091207010800000004050000FA135D80FB00000002050000FC135D80FD000000030000000800000006135D44FB050000FC00000008135D44FD04548A010000000700000006000000030000000212073D08050000FA00000005135D44FB0000000A00000002000000040000000112073CF80000000108A913091207010800000004050000FA135D80FB00000002050000FC135D80FD0000000304548A0113867100000000000CFD9C030000000A0000000500000005135D44FD04548A0113867100000000000CFD9C0300000009000000060000000600000003135D44FB050000FC135D80FD0000000304548A010000000A1386AD000CFD9C03000000080000000A00000000135D44FD04548A01000000071386AD000CFD9C030F34D0F800000006000000010F350CF80000000104548A09000000061386AD080C9A86F8000000060F87510300000001000000060000000400000000000000030000000212073D08050000FA00000005135D44FB050000FC00000005135D44FD04548A0113867100000000000CFD9C03000000090000000A1386AD000CFD9C030F34D0F800000005000000010F350CF8000000010CFD9C090F34D108000000040C9A86F8000000050F8751030000000100000005000000050000000000000003000000020000000412073D0008A91303120700F808A913091207010800000004050000FA00000005135D44FB050000FC000000050000000600000002000000050000000112073CF80000000108A913091207010800000004050000FA00000005135D44FB050000FC00000005135D44FD0CFD9C010F34D100000000000CFD9C030F34D0F800000005000000010F350CF80000000104548A09000000061386AD080C9A86F8000000050F8751030000000100000005000000040F350D000000000500000000000000030000000212073D08050000FA00000005135D44FB0000000500000002000000040000000000000004000000030000000200000001"
theorem small_8534306_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8534306_left_root small_8534306_left_fuel small_8534306_left_count small_8534306_left_encoded = true := by
  decide +kernel
theorem small_8534306_left_covered : CoveredBy scale carrier boxes small_8534306_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8534306_left_root small_8534306_left_fuel small_8534306_left_count small_8534306_left_encoded small_8534306_left_checked

theorem cover_8534306 : CoveredBy scale carrier boxes root_8534306 := by
  apply coveredBy_split_literal root_8534306 small_8534306_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.root_8535158 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact small_8534306_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.cover_8535158
#print axioms cover_8534306

def root_8534301 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8534301_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8534301_right_fuel : Nat := 1
def small_8534301_right_count : Nat := 1
def small_8534301_right_encoded : String := "00000000"
theorem small_8534301_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8534301_right_root small_8534301_right_fuel small_8534301_right_count small_8534301_right_encoded = true := by
  decide +kernel
theorem small_8534301_right_covered : CoveredBy scale carrier boxes small_8534301_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8534301_right_root small_8534301_right_fuel small_8534301_right_count small_8534301_right_encoded small_8534301_right_checked

theorem cover_8534301 : CoveredBy scale carrier boxes root_8534301 := by
  apply coveredBy_split_literal root_8534301 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.root_8534306 small_8534301_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.cover_8534306
  · exact small_8534301_right_covered
#print axioms cover_8534301

def root_8533545 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8533545_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8533545_left_fuel : Nat := 22
def small_8533545_left_count : Nat := 351
def small_8533545_left_encoded : String := "1151E901000000000A0000F8115225030A0000FA115224FB000000020A0000FC115224FD000000030A0001081151E9090000000408A91303120700F808A912FB12073CFA0000000208A912FD12073CFC0000000300000005120700FC05000100135D450100000000000000070000000900000003120700FA08A912FD12073CFC000000030500010000000008135D810105000108000000070000000500000000120700FC0000000700000003000000020000000112073CF80000000108A912FB12073CFA0000000208A912FD12073CFC000000030500010000000007135D81010000000500000000120700FC05000100135D45010000000000000007135D810105000108135D45090000000400000007135D81090CFD9C03000000070F350CF80000000100000007000000040000000000000003120700FA08A912FD12073CFC0000000305000100135D45010000000000000007135D810105000108135D45090000000400000007135D81090CFD9C03000000070F350CF800000001000000070000000400000000120700FC05000100000000080000000900000003000000021152250908A91303120700F808A912FB00000005120700FA08A912FD00000005120700FC0000000800000003000000020000000112073CF80000000108A912FB12073CFA0000000208A912FD00000005120700FC08A913090000000512073D080500010000000008135D81010CFD9C030000000500000008000000000000000400000003120700FA08A912FD12073CFC0000000308A913090000000512073D080500010000000008135D81010CFD9C03000000050F350CF800000001000000050000000000000004120700FC000000080000000300000002000000041151E8FD0A0001081151E9090000000408A913030000000512073CF80000000100000005115225090000000500000004000000031151E8FB0A0000FC115224FD000000030A0001081151E9090000000408A913030000000512073CF800000001000000051152250900000005000000041151E8FD000000050000000300000002000000011151E903000000010A0000FA115224FB000000020A0000FC115224FD000000030A0001081151E9090000000408A912FB12073CFA0000000208A912FD00000007120700FC0000000700000003120700FA08A912FD00000007120700FC0000000700000003000000021152250908A912FB12073CFA0000000208A912FD12073CFC0000000308A913090000000512073D080000000500000004120700FC0000000800000003120700FA08A912FD12073CFC0000000308A913090000000512073D080500010000000008135D8101050000F8135D8103045489FB000000050000000800000001135D450300000001045489FB00000005000000070000000000000004120700FC000000080000000300000002000000041151E8FD0A0001081151E90900000004000000071152250908A912FB12073CFA0000000208A913090000000512073D080500010000000005135D8101000000050000000000000004120700FA08A913090000000512073D080500010000000005135D8101050000F800000005135D450300000001050000FC000000050000000A00000000000000040000000200000004000000031151E8FB0A0000FC115224FD000000030A0001081151E90900000004000000071152250908A912FD12073CFC0000000308A913090000000512073D080500010000000005135D8101000000050000000000000004120700FC08A91309000000050000000800000003000000041151E8FD0A000108000000051152250908A9130912070108000000040500010000000005135D8101050000F800000005000000080000000012073D080500010000000005135D8101050000F800000005000000070000000000000004000000040000000300000002"
theorem small_8533545_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8533545_left_root small_8533545_left_fuel small_8533545_left_count small_8533545_left_encoded = true := by
  decide +kernel
theorem small_8533545_left_covered : CoveredBy scale carrier boxes small_8533545_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8533545_left_root small_8533545_left_fuel small_8533545_left_count small_8533545_left_encoded small_8533545_left_checked

theorem cover_8533545 : CoveredBy scale carrier boxes root_8533545 := by
  apply coveredBy_split_literal root_8533545 small_8533545_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.root_8534301 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_8533545_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.cover_8534301
#print axioms cover_8533545

def root_8532257 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8532257 : CoveredBy scale carrier boxes root_8532257 := by
  apply coveredBy_split_literal root_8532257 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3192.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.root_8533545 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3192.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.cover_8533545
#print axioms cover_8532257

def root_8529361 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8529361 : CoveredBy scale carrier boxes root_8529361 := by
  apply coveredBy_split_literal root_8529361 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3191.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.root_8532257 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3191.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.cover_8532257
#print axioms cover_8529361

def root_8540699 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8540699 : CoveredBy scale carrier boxes root_8540699 := by
  apply coveredBy_split_literal root_8540699 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3195.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3196.root coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3195.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3196.covered
#print axioms cover_8540699

def root_8540693 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8540693_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8540693_left_fuel : Nat := 1
def small_8540693_left_count : Nat := 1
def small_8540693_left_encoded : String := "00000004"
theorem small_8540693_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8540693_left_root small_8540693_left_fuel small_8540693_left_count small_8540693_left_encoded = true := by
  decide +kernel
theorem small_8540693_left_covered : CoveredBy scale carrier boxes small_8540693_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8540693_left_root small_8540693_left_fuel small_8540693_left_count small_8540693_left_encoded small_8540693_left_checked

theorem cover_8540693 : CoveredBy scale carrier boxes root_8540693 := by
  apply coveredBy_split_literal root_8540693 small_8540693_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.root_8540699 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_8540693_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.cover_8540699
#print axioms cover_8540693

def root_8540692 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8540692_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8540692_right_fuel : Nat := 13
def small_8540692_right_count : Nat := 41
def small_8540692_right_encoded : String := "1151E8FF08A912FB12073CFA0000000208A913070000000512073CFC0000000300000005120700FA08A913070000000612073CFC0000000305000100135D450100000000050000F8135D8103050000FE00000007135D44FF000000070000000400000001135D450300000001050000FE135D80FF00000004045489FB000000050000000600000005135D8101050000F80000000600000005000000000000000200000004"
theorem small_8540692_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8540692_right_root small_8540692_right_fuel small_8540692_right_count small_8540692_right_encoded = true := by
  decide +kernel
theorem small_8540692_right_covered : CoveredBy scale carrier boxes small_8540692_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8540692_right_root small_8540692_right_fuel small_8540692_right_count small_8540692_right_encoded small_8540692_right_checked

theorem cover_8540692 : CoveredBy scale carrier boxes root_8540692 := by
  apply coveredBy_split_literal root_8540692 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.root_8540693 small_8540692_right_root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.cover_8540693
  · exact small_8540692_right_covered
#print axioms cover_8540692

def root_8540687 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8540687_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8540687_right_fuel : Nat := 1
def small_8540687_right_count : Nat := 1
def small_8540687_right_encoded : String := "00000003"
theorem small_8540687_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8540687_right_root small_8540687_right_fuel small_8540687_right_count small_8540687_right_encoded = true := by
  decide +kernel
theorem small_8540687_right_covered : CoveredBy scale carrier boxes small_8540687_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8540687_right_root small_8540687_right_fuel small_8540687_right_count small_8540687_right_encoded small_8540687_right_checked

theorem cover_8540687 : CoveredBy scale carrier boxes root_8540687 := by
  apply coveredBy_split_literal root_8540687 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.root_8540692 small_8540687_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.cover_8540692
  · exact small_8540687_right_covered
#print axioms cover_8540687

def root_8540686 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8540686_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8540686_right_fuel : Nat := 26
def small_8540686_right_count : Nat := 327
def small_8540686_right_encoded : String := "1151E907000000030A0000FE115224FF0000000408A912FB12073CFA0000000208A912FF12073CFE0000000405000100135D450100000000050000F8135D8103050000FC135D81070CFD9BFB0F350CFA00000002000000080000000700000003135D4507000000030CFD9BFB000000050000000700000001135D450300000001050000FC135D81070CFD9BFB000000050F34D0FA0CFD9BFF000000050F34D0FE0280010013D7B10100000000028000F80000000713D7B10300000001078000FC000000080000000813D7ED010000000700000000000000040000000200000003135D4507000000030CFD9BFB000000050F34D0FA0000000700000002135D8101050000F8135D8103050000FC000000070000000500000001135D450300000001050000FC135D810700000005000000030000000500000000120700FE05000100135D450100000000050000F800000008135D450300000001050000FC135D81070CFD9BFB000000080F34D0FA045489FF1386ACFE00000004028001000000000800000008138670FE0000000800000004000000020000000300000008135D8101050000F800000008135D450300000001050000FC135D81070CFD9BFB000000080F34D0FA045489FF00000008000000080000000200000003000000080000000000000004120700FA08A912FF12073CFE0000000405000100135D450100000000050000F800000007135D450300000001050000FC135D8107045489FB00000007000000070000000300000007135D8101050000F800000007135D4503000000010000000700000000120700FE05000100135D450100000000050000F8135D8103050000FC135D8107045489FB1386ACFA000000020000000900000009000000030000000900000001135D450300000001050000FC135D8107045489FB1386ACFA00000002045489FF1386ACFE000000040280010013D7B10100000000028000F80000000713D7B10300000001078000FC128A7D07067ECE7B12EA94FA000000020000000900000009000000030000000913D7ED01028000F80000000713D7B10300000001078000FC128A7D07067ECE7B0000000800000007000000030000000700000000138670FE028001000000000913D7ED01028000F80000000813D7B10300000001000000090000000000000004138670FA045489FF1386ACFE0000000400000007000000050000000200000003135D450700000003045489FB1386ACFA00000002045489FF000000070000000900000007135D8101050000F8135D8103050000FC135D8107045489FB1386ACFA00000002045489FF000000070000000800000007000000030000000700000001135D450300000001050000FC135D8107045489FB1386ACFA00000002045489FF1386ACFE0000000407800100128A410100000000028000F80000000713D7B103000000010000000700000007138670FE07800100128A410100000000028000F80000000813D7B10300000001078000FC128A7D07067ECE7B0000000812EA58FA00000009000000020000000300000008128A7D01028000F80000000813D7B10300000001078000FC00000008000000080000000000000004138670FA045489FF00000007138670FE07800100128A41010000000000000005128A7D01028000F80000000713D7B10300000001078000FC128A7D0700000007000000030000000700000000000000040000000200000003135D450700000003045489FB1386ACFA0000000200000007000000070000000000000004000000021151E8FF08A912FB000000050000000700000004"
theorem small_8540686_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8540686_right_root small_8540686_right_fuel small_8540686_right_count small_8540686_right_encoded = true := by
  decide +kernel
theorem small_8540686_right_covered : CoveredBy scale carrier boxes small_8540686_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8540686_right_root small_8540686_right_fuel small_8540686_right_count small_8540686_right_encoded small_8540686_right_checked

theorem cover_8540686 : CoveredBy scale carrier boxes root_8540686 := by
  apply coveredBy_split_literal root_8540686 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.root_8540687 small_8540686_right_root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.cover_8540687
  · exact small_8540686_right_covered
#print axioms cover_8540686

def root_8540680 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8540680_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8540680_left_fuel : Nat := 1
def small_8540680_left_count : Nat := 1
def small_8540680_left_encoded : String := "00000002"
theorem small_8540680_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8540680_left_root small_8540680_left_fuel small_8540680_left_count small_8540680_left_encoded = true := by
  decide +kernel
theorem small_8540680_left_covered : CoveredBy scale carrier boxes small_8540680_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8540680_left_root small_8540680_left_fuel small_8540680_left_count small_8540680_left_encoded small_8540680_left_checked

theorem cover_8540680 : CoveredBy scale carrier boxes root_8540680 := by
  apply coveredBy_split_literal root_8540680 small_8540680_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.root_8540686 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_8540680_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.cover_8540686
#print axioms cover_8540680

def root_8540679 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8540679_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8540679_right_fuel : Nat := 17
def small_8540679_right_count : Nat := 73
def small_8540679_right_encoded : String := "1151E8FB0A0000FC115225070A0000FE115224FF0000000408A91307120700FC08A912FF00000005120700FE05000100135D450100000000050000F8135D8103050000FA135D80FB0000000204548A07000000050000000A00000005000000010000000500000005000000040000000312073CFC0000000308A912FF12073CFE0000000400000005120700FE05000100135D450100000000050000F800000008135D450300000001050000FA135D80FB000000020CFD9C07000000050000000800000005135D8101050000F8000000080000000500000000000000041151E8FF0000000500000004000000031151E907000000030A0000FE115224FF0000000408A912FF00000005120700FE00000008000000041151E8FF000000050000000400000002"
theorem small_8540679_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8540679_right_root small_8540679_right_fuel small_8540679_right_count small_8540679_right_encoded = true := by
  decide +kernel
theorem small_8540679_right_covered : CoveredBy scale carrier boxes small_8540679_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8540679_right_root small_8540679_right_fuel small_8540679_right_count small_8540679_right_encoded small_8540679_right_checked

theorem cover_8540679 : CoveredBy scale carrier boxes root_8540679 := by
  apply coveredBy_split_literal root_8540679 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.root_8540680 small_8540679_right_root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.cover_8540680
  · exact small_8540679_right_covered
#print axioms cover_8540679

def root_8540673 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8540673_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8540673_left_fuel : Nat := 1
def small_8540673_left_count : Nat := 1
def small_8540673_left_encoded : String := "00000001"
theorem small_8540673_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8540673_left_root small_8540673_left_fuel small_8540673_left_count small_8540673_left_encoded = true := by
  decide +kernel
theorem small_8540673_left_covered : CoveredBy scale carrier boxes small_8540673_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8540673_left_root small_8540673_left_fuel small_8540673_left_count small_8540673_left_encoded small_8540673_left_checked

theorem cover_8540673 : CoveredBy scale carrier boxes root_8540673 := by
  apply coveredBy_split_literal root_8540673 small_8540673_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.root_8540679 coord1 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_8540673_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.cover_8540679
#print axioms cover_8540673

def root_8538519 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8538519 : CoveredBy scale carrier boxes root_8538519 := by
  apply coveredBy_split_literal root_8538519 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3194.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.root_8540673 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3194.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.cover_8540673
#print axioms cover_8538519

def root_8538513 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8538513_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8538513_left_fuel : Nat := 1
def small_8538513_left_count : Nat := 1
def small_8538513_left_encoded : String := "00000000"
theorem small_8538513_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8538513_left_root small_8538513_left_fuel small_8538513_left_count small_8538513_left_encoded = true := by
  decide +kernel
theorem small_8538513_left_covered : CoveredBy scale carrier boxes small_8538513_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8538513_left_root small_8538513_left_fuel small_8538513_left_count small_8538513_left_encoded small_8538513_left_checked

theorem cover_8538513 : CoveredBy scale carrier boxes root_8538513 := by
  apply coveredBy_split_literal root_8538513 small_8538513_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.root_8538519 coord0 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_8538513_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.cover_8538519
#print axioms cover_8538513

def root_8538512 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8538512 : CoveredBy scale carrier boxes root_8538512 := by
  apply coveredBy_split_literal root_8538512 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.root_8538513 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3197.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.cover_8538513
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3197.covered
#print axioms cover_8538512

def root_8550288 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8550288 : CoveredBy scale carrier boxes root_8550288 := by
  apply coveredBy_split_literal root_8550288 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3199.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3200.root coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3199.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3200.covered
#print axioms cover_8550288

def root_8550282 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8550282_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8550282_left_fuel : Nat := 1
def small_8550282_left_count : Nat := 1
def small_8550282_left_encoded : String := "00000000"
theorem small_8550282_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8550282_left_root small_8550282_left_fuel small_8550282_left_count small_8550282_left_encoded = true := by
  decide +kernel
theorem small_8550282_left_covered : CoveredBy scale carrier boxes small_8550282_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8550282_left_root small_8550282_left_fuel small_8550282_left_count small_8550282_left_encoded small_8550282_left_checked

theorem cover_8550282 : CoveredBy scale carrier boxes root_8550282 := by
  apply coveredBy_split_literal root_8550282 small_8550282_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.root_8550288 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_8550282_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.cover_8550288
#print axioms cover_8550282

def root_8550281 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8550281 : CoveredBy scale carrier boxes root_8550281 := by
  apply coveredBy_split_literal root_8550281 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.root_8550282 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3201.root coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.cover_8550282
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3201.covered
#print axioms cover_8550281

def root_8550276 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8550276_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8550276_right_fuel : Nat := 1
def small_8550276_right_count : Nat := 1
def small_8550276_right_encoded : String := "00000004"
theorem small_8550276_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8550276_right_root small_8550276_right_fuel small_8550276_right_count small_8550276_right_encoded = true := by
  decide +kernel
theorem small_8550276_right_covered : CoveredBy scale carrier boxes small_8550276_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8550276_right_root small_8550276_right_fuel small_8550276_right_count small_8550276_right_encoded small_8550276_right_checked

theorem cover_8550276 : CoveredBy scale carrier boxes root_8550276 := by
  apply coveredBy_split_literal root_8550276 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.root_8550281 small_8550276_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.cover_8550281
  · exact small_8550276_right_covered
#print axioms cover_8550276

def root_8550275 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8550275_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8550275_right_fuel : Nat := 28
def small_8550275_right_count : Nat := 339
def small_8550275_right_encoded : String := "1151E9090000000408A91301120701000000000008A91303120700F808A912FB12073CFA0000000208A913070000000512073CFC00000003050000FE135D810904548A011386710000000000000000051386AD0004548A03138670F80CFD9BFB000000050000000900000001000000090000000000000004135D45090000000404548A010000000500000009120700FA08A91307120700FC000000090000000312073CFC00000003050000FE135D810904548A01138671000000000004548A03138670F8045489FB1386ACFA000000020CFD9C07000000050F350CFC0000000300000005138670FA0CFD9C070F34D0FC078000FE128A7D09000000090000000400000005000000030F350CFC000000030C9A86FC0F878D07078000FE128A7D09022A45810000000513E20100022A458300000005000000090000000000000004128A41090000000400000006000000030F875107000000030000000600000002000000011386ACF800000001045489FB1386ACFA000000020CFD9C07000000090F350CFC000000030C9A86FC0000000A0F8751070000000300000006138670FA0CFD9C070F34D0FC00000009000000030F350CFC000000030C9A86FC0F878D07078000FE128A7D09000000090000000400000009000000030F87510700000003078000FE128A7D09022A458113E1C50000000000067ECE83000000060000000A13E20100067ECE8300000006000000090000000000000004128A41090000000400000006000000021386AD0004548A03138670F8045489FB1386ACFA000000020CFD9C07000000090F350CFC000000030C9A86FC0000000600000006138670FA0CFD9C070F34D0FC00000009000000030F350CFC000000030C9A86FC0F878D07078000FE128A7D09000000090000000400000007000000030F875107000000030000000600000002000000011386ACF800000001045489FB00000009000000090000000000000004135D45090000000404548A01138671000000000004548A03138670F8045489FB00000005138670FA0CFD9C07000000050F350CFC000000030000000600000002000000011386ACF800000001045489FB00000009000000091386AD0004548A03138670F800000009000000010000000900000000000000020000000112073CF80000000108A912FB12073CFA0000000208A913070000000912073CFC00000003050000FE135D810904548A0113867100000000000CFD9C030F34D0F80000000900000001000000091386AD0000000009000000000000000400000009120700FA08A91307120700FC000000090000000312073CFC00000003050000FE135D810904548A0113867100000000000CFD9C030F34D0F8045489FB00000009138670FA0CFD9C07000000090F350CFC000000030C9A86FC000000090F87510700000003078000FE128A7D09022A458113E1C500000000000AD3578310D100F800000009000000010000000900000009000000040000000900000002000000010F350CF800000001045489FB00000009000000091386AD000CFD9C030F34D0F80000000900000001000000090000000000000004135D45090000000404548A0113867100000000000CFD9C030F34D0F8000000090000000100000009000000090000000212073D0008A91303120700F808A912FB12073CFA0000000200000009120700FA08A913070000000912073CFC00000003050000FE135D81090CFD9C010F34D1000000000004548A03138670F8045489FB00000009000000090000000100000009000000090000000400000009000000020000000112073CF80000000108A912FB12073CFA0000000208A913070000000912073CFC00000003000000090000000900000000"
theorem small_8550275_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8550275_right_root small_8550275_right_fuel small_8550275_right_count small_8550275_right_encoded = true := by
  decide +kernel
theorem small_8550275_right_covered : CoveredBy scale carrier boxes small_8550275_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8550275_right_root small_8550275_right_fuel small_8550275_right_count small_8550275_right_encoded small_8550275_right_checked

theorem cover_8550275 : CoveredBy scale carrier boxes root_8550275 := by
  apply coveredBy_split_literal root_8550275 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.root_8550276 small_8550275_right_root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.cover_8550276
  · exact small_8550275_right_covered
#print axioms cover_8550275

def root_8550270 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8550270_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8550270_right_fuel : Nat := 1
def small_8550270_right_count : Nat := 1
def small_8550270_right_encoded : String := "00000003"
theorem small_8550270_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8550270_right_root small_8550270_right_fuel small_8550270_right_count small_8550270_right_encoded = true := by
  decide +kernel
theorem small_8550270_right_covered : CoveredBy scale carrier boxes small_8550270_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8550270_right_root small_8550270_right_fuel small_8550270_right_count small_8550270_right_encoded small_8550270_right_checked

theorem cover_8550270 : CoveredBy scale carrier boxes root_8550270 := by
  apply coveredBy_split_literal root_8550270 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.root_8550275 small_8550270_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.cover_8550275
  · exact small_8550270_right_covered
#print axioms cover_8550270

def root_8550269 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8550269 : CoveredBy scale carrier boxes root_8550269 := by
  apply coveredBy_split_literal root_8550269 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.root_8550270 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3202.root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.cover_8550270
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3202.covered
#print axioms cover_8550269

def root_8550263 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8550263_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8550263_left_fuel : Nat := 1
def small_8550263_left_count : Nat := 1
def small_8550263_left_encoded : String := "00000002"
theorem small_8550263_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8550263_left_root small_8550263_left_fuel small_8550263_left_count small_8550263_left_encoded = true := by
  decide +kernel
theorem small_8550263_left_covered : CoveredBy scale carrier boxes small_8550263_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8550263_left_root small_8550263_left_fuel small_8550263_left_count small_8550263_left_encoded small_8550263_left_checked

theorem cover_8550263 : CoveredBy scale carrier boxes root_8550263 := by
  apply coveredBy_split_literal root_8550263 small_8550263_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.root_8550269 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_8550263_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205.cover_8550269
#print axioms cover_8550263

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0205
