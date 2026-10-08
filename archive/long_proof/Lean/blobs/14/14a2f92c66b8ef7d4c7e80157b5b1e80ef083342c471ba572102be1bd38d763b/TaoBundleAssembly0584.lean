import TaoBundleAssembly0581
import TaoBundleAssembly0583
import TaoBundleChunkBatch0793
import TaoBundleChunkBatch0794
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0584
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
  apply coveredBy_split_literal root_8488793 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0584.root_8488798 small_8488793_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0584.cover_8488798
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
  apply coveredBy_split_literal root_8488792 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0584.root_8488793 small_8488792_right_root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0584.cover_8488793
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
  apply coveredBy_split_literal root_8488787 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0584.root_8488792 small_8488787_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0584.cover_8488792
  · exact small_8488787_right_covered
#print axioms cover_8488787

def root_8486707 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8486707 : CoveredBy scale carrier boxes root_8486707 := by
  apply coveredBy_split_literal root_8486707 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3174.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0584.root_8488787 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3174.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0584.cover_8488787
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
  apply coveredBy_split_literal root_8486701 small_8486701_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0584.root_8486707 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_8486701_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0584.cover_8486707
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
  apply coveredBy_split_literal root_8486700 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0584.root_8486701 small_8486700_right_root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0584.cover_8486701
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
  apply coveredBy_split_literal root_8486695 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0584.root_8486700 small_8486695_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0584.cover_8486700
  · exact small_8486695_right_covered
#print axioms cover_8486695

def root_8484711 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8484711 : CoveredBy scale carrier boxes root_8484711 := by
  apply coveredBy_split_literal root_8484711 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3173.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0584.root_8486695 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3173.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0584.cover_8486695
#print axioms cover_8484711

def root_8482375 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8482375 : CoveredBy scale carrier boxes root_8482375 := by
  apply coveredBy_split_literal root_8482375 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3172.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0584.root_8484711 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3172.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0584.cover_8484711
#print axioms cover_8482375

def root_8442517 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8442517 : CoveredBy scale carrier boxes root_8442517 := by
  apply coveredBy_split_literal root_8442517 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0583.root_8442518 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0584.root_8482375 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0583.cover_8442518
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0584.cover_8482375
#print axioms cover_8442517

def root_8302613 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8302613 : CoveredBy scale carrier boxes root_8302613 := by
  apply coveredBy_split_literal root_8302613 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0581.root_8302614 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0584.root_8442517 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0581.cover_8302614
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0584.cover_8442517
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
  apply coveredBy_split_literal root_8493595 small_8493595_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0584.root_8493601 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_8493595_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0584.cover_8493601
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
  apply coveredBy_split_literal root_8493594 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0584.root_8493595 small_8493594_right_root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0584.cover_8493595
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
  apply coveredBy_split_literal root_8493589 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0584.root_8493594 small_8493589_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0584.cover_8493594
  · exact small_8493589_right_covered
#print axioms cover_8493589

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0584
