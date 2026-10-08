import TaoBundleAssembly0063
import TaoBundleChunkBatch0258
import TaoBundleChunkBatch0259
import TaoBundleChunkBatch0260
import TaoBundleChunkBatch0261
import TaoBundleChunkBatch0262
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0064
def root_2683735 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2683735_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2683735_left_fuel : Nat := 20
def small_2683735_left_count : Nat := 301
def small_2683735_left_encoded : String := "1151E8FF08A91301120700F608A912F912073CF80000000108A91305120700FA08A912FD12073CFC0000000305000108135D44FF04548A01138670F60CFD9BF90F350CF80000000104548A05000000090000000700000007000000001386ACF6000000000CFD9BF90F350CF800000001000000090F34D0F804548A0500000007000000070000000100000004135D80FF0000000404548A01138670F60CFD9BF90F350CF80000000104548A05138670FA00000009000000021386ACFA000000020CFD9BFD0F350CFC0000000300000007000000070F34D0F80000000700000001000000001386ACF6000000000CFD9BF90F350CF80000000104548A05000000091386ACFA000000020CFD9BFD0000000A000000090F34D0F804548A05000000091386ACFA000000020000000700000001120700FC050001080000000900000009000000030000000212073CFA0000000208A912FD12073CFC0000000305000108135D44FF04548A01000000071386ACF6000000000CFD9BF90F350CF800000001000000080000000700000004135D80FF0000000404548A01138670F60CFD9BF90000000800000007000000001386ACF6000000000CFD9BF90F350CF800000001000000080F34D0F80000000700000001120700FC05000108000000080000000800000003120700F808A91305120700FA08A912FD12073CFC00000003050001080000000700000007000000070000000212073CFA0000000208A912FD0000000700000007000000010000000012073CF60000000008A912F912073CF80000000108A91305120700FA08A912FD12073CFC0000000305000108135D44FF0CFD9C010F34D0F60CFD9BF90000000900000009000000000000000900000004135D80FF000000040CFD9C010F34D0F60CFD9BF90F350CF800000001000000090F34D0F80000000600000001000000000F350CF6000000000CFD9BF90000000900000006120700FC00000009000000030000000212073CFA0000000208A912FD12073CFC0000000305000108135D44FF0CFD9C010F34D0F60CFD9BF90000000A0F34D0F80000000A00000001000000000F350CF6000000000000000A00000004135D80FF000000040CFD9C010F34D0F60CFD9BF90F350CF8000000010000000A0F34D0F80CFD9C050000000A0000000A00000001000000000F350CF6000000000CFD9BF90000000A0F34D0F80000000A00000001120700FC05000108135D44FF0CFD9C01000000080000000800000004135D80FF000000040CFD9C010F34D0F600000008000000000000000800000003120700F808A91305120700FA08A912FD12073CFC00000003050001080000000600000006120700FC00000009000000030000000212073CFA0000000208A912FD12073CFC0000000305000108135D44FF0CFD9C01000000070000000600000004135D80FF000000040CFD9C010F34D0F600000007000000000F350CF60000000000000006120700FC05000108135D44FF0CFD9C010F34D0F600000007000000000F350CF6000000000000000900000004135D80FF000000040CFD9C010F34D0F6045489F90000000800000007000000000F350CF600000000045489F91386ACF8000000010CFD9C050000000900000006138670F80000000600000001000000030000000100000004"
theorem small_2683735_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2683735_left_root small_2683735_left_fuel small_2683735_left_count small_2683735_left_encoded = true := by
  decide +kernel
theorem small_2683735_left_covered : CoveredBy scale carrier boxes small_2683735_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2683735_left_root small_2683735_left_fuel small_2683735_left_count small_2683735_left_encoded small_2683735_left_checked

theorem cover_2683735 : CoveredBy scale carrier boxes root_2683735 := by
  apply coveredBy_split_literal root_2683735 small_2683735_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0063.root_2684381 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_2683735_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0063.cover_2684381
#print axioms cover_2683735

def root_2683729 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2683729_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2683729_left_fuel : Nat := 1
def small_2683729_left_count : Nat := 1
def small_2683729_left_encoded : String := "00000003"
theorem small_2683729_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2683729_left_root small_2683729_left_fuel small_2683729_left_count small_2683729_left_encoded = true := by
  decide +kernel
theorem small_2683729_left_covered : CoveredBy scale carrier boxes small_2683729_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2683729_left_root small_2683729_left_fuel small_2683729_left_count small_2683729_left_encoded small_2683729_left_checked

theorem cover_2683729 : CoveredBy scale carrier boxes root_2683729 := by
  apply coveredBy_split_literal root_2683729 small_2683729_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0064.root_2683735 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_2683729_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0064.cover_2683735
#print axioms cover_2683729

def root_2683728 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2683728_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2683728_right_fuel : Nat := 23
def small_2683728_right_count : Nat := 295
def small_2683728_right_encoded : String := "1151E8FD0A0001081151E8FF08A91301120700F608A912F912073CF80000000108A91305120700FA050000FC135D80FD0000000305000108135D44FF0000000700000004135D80FF0000000404548A010000000700000006000000070000000212073CFA0000000200000007120700F800000007000000010000000012073CF60000000008A912F912073CF80000000108A91305120700FA000000060000000212073CFA00000002050000FC135D80FD0000000305000108135D44FF0CFD9C010000000A0000000600000004135D80FF000000040000000A135D44FD05000108000000060000000600000003120700F808A9130500000006000000060000000100000004115224FF0000000408A91301120700F608A912F912073CF80000000108A91305120700FA08A912FF12073D08050000FC135D80FD0000000304548A01138670F60CFD9BF90F350CF80000000104548A05138670FA0CFD9BFF000000060F34D1080000000400000006000000021386ACFA000000020CFD9BFF000000070000000A0F34D0F804548A05000000070000000700000001000000001386ACF6000000000CFD9BF90F350CF80000000104548A05138670FA00000006000000020000000A0F34D0F80000000600000001135D44FD04548A01138670F60CFD9BF90F350CF80000000104548A05000000060000000700000007000000000000000600000003000000041207010800000004050000FC135D80FD0000000304548A01138670F60CFD9BF90F350CF80000000104548A05138670FA045489FF1386AD080C9A86F8000000060000000A000000040000000A000000020000000A0F34D0F804548A05138670FA00000006000000020000000500000001000000001386ACF6000000000CFD9BF90F350CF8000000010000000500000005135D44FD04548A01138670F60CFD9BF90F350CF8000000010000000A000000050000000000000005000000030000000212073CFA0000000208A912FF12073D08050000FC135D80FD0000000304548A01138670F60CFD9BF90F350CF8000000010000000A00000007000000001386ACF6000000000CFD9BF90000000A0F34D0F80CFD9C05000000070000000500000001135D44FD04548A01000000071386ACF6000000000CFD9BF90000000A000000050000000300000004120701080000000400000005120700F808A91305120700FA08A912FF12073D08050000FC135D80FD0000000304548A01000000070000000600000006000000041207010800000004050000FC135D80FD0000000300000005000000050000000212073CFA0000000208A912FF0000000700000005000000010000000012073CF60000000008A912F912073CF80000000108A91305120700FA08A912FF12073D08050000FC135D80FD000000030CFD9C010F34D0F60CFD9BF90000000600000006000000000000000600000006000000041207010800000004000000050000000212073CFA0000000208A912FF12073D08050000FC135D80FD000000030CFD9C010F34D0F60CFD9BF90000000A000000050000000000000005000000050000000400000005120700F808A91305120700FA08A912FF000000060000000500000002000000050000000100000003"
theorem small_2683728_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2683728_right_root small_2683728_right_fuel small_2683728_right_count small_2683728_right_encoded = true := by
  decide +kernel
theorem small_2683728_right_covered : CoveredBy scale carrier boxes small_2683728_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2683728_right_root small_2683728_right_fuel small_2683728_right_count small_2683728_right_encoded small_2683728_right_checked

theorem cover_2683728 : CoveredBy scale carrier boxes root_2683728 := by
  apply coveredBy_split_literal root_2683728 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0064.root_2683729 small_2683728_right_root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0064.cover_2683729
  · exact small_2683728_right_covered
#print axioms cover_2683728

def root_2683723 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2683723_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2683723_right_fuel : Nat := 1
def small_2683723_right_count : Nat := 1
def small_2683723_right_encoded : String := "00000002"
theorem small_2683723_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2683723_right_root small_2683723_right_fuel small_2683723_right_count small_2683723_right_encoded = true := by
  decide +kernel
theorem small_2683723_right_covered : CoveredBy scale carrier boxes small_2683723_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2683723_right_root small_2683723_right_fuel small_2683723_right_count small_2683723_right_encoded small_2683723_right_checked

theorem cover_2683723 : CoveredBy scale carrier boxes root_2683723 := by
  apply coveredBy_split_literal root_2683723 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0064.root_2683728 small_2683723_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0064.cover_2683728
  · exact small_2683723_right_covered
#print axioms cover_2683723

def root_2683722 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2683722_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2683722_right_fuel : Nat := 17
def small_2683722_right_count : Nat := 93
def small_2683722_right_encoded : String := "1151E905000000020A0000FC115224FD000000030A0001081151E8FF08A91301120700F608A912F912073CF80000000108A912FD0000000700000007000000070000000012073CF60000000008A912F912073CF80000000108A912FD0000000A120700FC0000000800000003120700F808A912FD00000007120700FC00000007000000030000000100000004115224FF0000000408A91301120700F608A912F912073CF80000000108A912FD12073CFC0000000308A912FF12073D08050000FA135D810504548A0100000008000000050000000200000005000000040000000500000005120700F808A912FD00000005120700FC08A912FF0000000512070108000000040000000500000003000000010000000012073CF60000000008A912F900000005120700F808A912FD00000005120700FC08A912FF0000000512070108000000040000000500000003000000011151E8FD0A0001081151E8FF0000000700000004115224FF000000040000000500000003"
theorem small_2683722_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2683722_right_root small_2683722_right_fuel small_2683722_right_count small_2683722_right_encoded = true := by
  decide +kernel
theorem small_2683722_right_covered : CoveredBy scale carrier boxes small_2683722_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2683722_right_root small_2683722_right_fuel small_2683722_right_count small_2683722_right_encoded small_2683722_right_checked

theorem cover_2683722 : CoveredBy scale carrier boxes root_2683722 := by
  apply coveredBy_split_literal root_2683722 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0064.root_2683723 small_2683722_right_root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0064.cover_2683723
  · exact small_2683722_right_covered
#print axioms cover_2683722

def root_2683716 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2683716_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2683716_left_fuel : Nat := 1
def small_2683716_left_count : Nat := 1
def small_2683716_left_encoded : String := "00000001"
theorem small_2683716_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2683716_left_root small_2683716_left_fuel small_2683716_left_count small_2683716_left_encoded = true := by
  decide +kernel
theorem small_2683716_left_covered : CoveredBy scale carrier boxes small_2683716_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2683716_left_root small_2683716_left_fuel small_2683716_left_count small_2683716_left_encoded small_2683716_left_checked

theorem cover_2683716 : CoveredBy scale carrier boxes root_2683716 := by
  apply coveredBy_split_literal root_2683716 small_2683716_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0064.root_2683722 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_2683716_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0064.cover_2683722
#print axioms cover_2683716

def root_2683715 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2683715 : CoveredBy scale carrier boxes root_2683715 := by
  apply coveredBy_split_literal root_2683715 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0064.root_2683716 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1030.root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0064.cover_2683716
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1030.covered
#print axioms cover_2683715

def root_2683710 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2683710_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2683710_right_fuel : Nat := 1
def small_2683710_right_count : Nat := 1
def small_2683710_right_encoded : String := "00000000"
theorem small_2683710_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2683710_right_root small_2683710_right_fuel small_2683710_right_count small_2683710_right_encoded = true := by
  decide +kernel
theorem small_2683710_right_covered : CoveredBy scale carrier boxes small_2683710_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2683710_right_root small_2683710_right_fuel small_2683710_right_count small_2683710_right_encoded small_2683710_right_checked

theorem cover_2683710 : CoveredBy scale carrier boxes root_2683710 := by
  apply coveredBy_split_literal root_2683710 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0064.root_2683715 small_2683710_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0064.cover_2683715
  · exact small_2683710_right_covered
#print axioms cover_2683710

def root_2683709 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2683709_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2683709_right_fuel : Nat := 21
def small_2683709_right_count : Nat := 155
def small_2683709_right_encoded : String := "1151E901000000000A0000F8115224F9000000010A0000FA115225050A0000FC115224FD000000030A0001081151E8FF08A912F912073CF80000000108A91305120700FA000000090000000212073CFA0000000208A912FD0000000A120700FC0000000900000003120700F808A91305120700FA000000060000000212073CFA0000000208A912FD00000006120700FC00000006000000030000000100000004115224FF0000000408A912F912073CF80000000108A91305120700FA08A912FD12073CFC0000000308A912FF12073D08050000F6135D81010CFD9BF9000000060000000500000000000000050000000400000005000000050000000200000005120700F808A91305120700FA08A912FD00000005120700FC08A912FF00000005120701080000000400000005000000030000000212073CFA0000000208A912FD00000005120700FC08A912FF0000000512070108000000040000000500000003000000011151E8FD0A0001081151E8FF08A912F9000000060000000600000004115224FF000000040000000500000003000000021151E905000000020A0000FC115224FD000000030A0001081151E8FF0000000500000004115224FF0000000408A912F900000005120700F808A912FD00000005120700FC0000000A00000003000000011151E8FD00000005000000031151E8F90A0000FA115225050A0000FC115224FD000000030A0001081151E8FF0000000900000004115224FF00000004000000051151E8FD0A0001081151E8FF08A91305000000090000000500000004115224FF0000000408A913050000000A0000000500000003000000021151E905000000020000000500000001"
theorem small_2683709_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2683709_right_root small_2683709_right_fuel small_2683709_right_count small_2683709_right_encoded = true := by
  decide +kernel
theorem small_2683709_right_covered : CoveredBy scale carrier boxes small_2683709_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2683709_right_root small_2683709_right_fuel small_2683709_right_count small_2683709_right_encoded small_2683709_right_checked

theorem cover_2683709 : CoveredBy scale carrier boxes root_2683709 := by
  apply coveredBy_split_literal root_2683709 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0064.root_2683710 small_2683709_right_root coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0064.cover_2683710
  · exact small_2683709_right_covered
#print axioms cover_2683709

def root_2690969 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2690969 : CoveredBy scale carrier boxes root_2690969 := by
  apply coveredBy_split_literal root_2690969 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1031.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1032.root coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1031.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1032.covered
#print axioms cover_2690969

def root_2690964 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2690964_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2690964_right_fuel : Nat := 1
def small_2690964_right_count : Nat := 1
def small_2690964_right_encoded : String := "00000004"
theorem small_2690964_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2690964_right_root small_2690964_right_fuel small_2690964_right_count small_2690964_right_encoded = true := by
  decide +kernel
theorem small_2690964_right_covered : CoveredBy scale carrier boxes small_2690964_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2690964_right_root small_2690964_right_fuel small_2690964_right_count small_2690964_right_encoded small_2690964_right_checked

theorem cover_2690964 : CoveredBy scale carrier boxes root_2690964 := by
  apply coveredBy_split_literal root_2690964 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0064.root_2690969 small_2690964_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0064.cover_2690969
  · exact small_2690964_right_covered
#print axioms cover_2690964

def root_2690336 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2690336_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2690336_left_fuel : Nat := 19
def small_2690336_left_count : Nat := 295
def small_2690336_left_encoded : String := "1151E9090000000408A91301120700F608A912F912073CF80000000108A91305120700FA08A912FD12073CFC0000000305000108135D45090000000404548A01138670F600000006000000001386ACF6000000000CFD9BF90000000700000008135D810904548A01138670F60CFD9BF90F350CF800000001000000060F34D0F80000000800000001000000001386ACF6000000000CFD9BF90F350CF800000001000000070F34D0F8000000080000000100000004120700FC00000006000000030000000212073CFA0000000208A912FD12073CFC0000000305000108135D45090000000404548A010000000600000009135D810904548A01000000091386ACF6000000000CFD9BF9000000090F34D0F8000000090000000100000004120700FC0000000600000003120700F808A91305120700FA08A912FD00000008000000080000000212073CFA0000000208A912FD12073CFC00000003050001080000000900000009120700FC05000108000000060000000600000003000000010000000012073CF60000000008A912F912073CF80000000108A91305120700FA08A912FD12073CFC0000000305000108135D4509000000040CFD9C010F34D0F6000000070000000000000007135D81090CFD9C010F34D0F60CFD9BF9000000070F34D0F80000000800000001000000000000000700000004120700FC050001080000000700000007000000030000000212073CFA0000000208A912FD12073CFC0000000305000108135D4509000000040CFD9C010F34D0F60CFD9BF90000000A0000000A000000000000000A135D81090CFD9C010F34D0F60CFD9BF90F350CF8000000010000000A0F34D0F80000000900000001000000000F350CF6000000000CFD9BF90000000A0000000A00000004120700FC05000108135D4509000000040CFD9C01000000060F350CF6000000000CFD9BF9000000060F34D0F80CFD9C05000000060000000600000001135D81090CFD9C010F34D0F600000006000000000F350CF6000000000CFD9BF9000000070F34D0F80CFD9C050000000700000007000000010000000400000003120700F808A91305120700FA08A912FD00000008120700FC050001080000000800000008000000030000000212073CFA0000000208A912FD12073CFC0000000305000108135D4509000000040CFD9C01000000080F350CF60000000000000008135D81090CFD9C010F34D0F600000009000000000F350CF600000000045489F91386ACF8000000010CFD9C0500000008000000090000000800000004120700FC05000108135D4509000000040CFD9C010F34D0F6045489F90000000600000006000000000F350CF600000000045489F91386ACF8000000010CFD9C050F34D0FA00000007000000020000000A00000008135D81090CFD9C010F34D0F6045489F91386ACF80000000100000006138670F80CFD9C05000000060F350CFA000000020000000600000001000000000F350CF600000000045489F91386ACF8000000010CFD9C050F34D0FA00000007000000020F350CFA00000002045489FD0000000A00000006138670F80CFD9C05000000080F350CFA00000002045489FD000000080000000800000001000000040000000300000001"
theorem small_2690336_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2690336_left_root small_2690336_left_fuel small_2690336_left_count small_2690336_left_encoded = true := by
  decide +kernel
theorem small_2690336_left_covered : CoveredBy scale carrier boxes small_2690336_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2690336_left_root small_2690336_left_fuel small_2690336_left_count small_2690336_left_encoded small_2690336_left_checked

theorem cover_2690336 : CoveredBy scale carrier boxes root_2690336 := by
  apply coveredBy_split_literal root_2690336 small_2690336_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0064.root_2690964 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_2690336_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0064.cover_2690964
#print axioms cover_2690336

def root_2690330 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2690330_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2690330_left_fuel : Nat := 1
def small_2690330_left_count : Nat := 1
def small_2690330_left_encoded : String := "00000003"
theorem small_2690330_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2690330_left_root small_2690330_left_fuel small_2690330_left_count small_2690330_left_encoded = true := by
  decide +kernel
theorem small_2690330_left_covered : CoveredBy scale carrier boxes small_2690330_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2690330_left_root small_2690330_left_fuel small_2690330_left_count small_2690330_left_encoded small_2690330_left_checked

theorem cover_2690330 : CoveredBy scale carrier boxes root_2690330 := by
  apply coveredBy_split_literal root_2690330 small_2690330_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0064.root_2690336 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_2690330_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0064.cover_2690336
#print axioms cover_2690330

def root_2690329 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2690329_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2690329_right_fuel : Nat := 15
def small_2690329_right_count : Nat := 81
def small_2690329_right_encoded : String := "1151E8FD0A0001081151E9090000000408A91301120700F608A912F912073CF80000000108A91305120700FA000000080000000200000009120700F800000008000000010000000012073CF60000000008A912F912073CF80000000108A91305120700FA00000008000000020000000A120700F800000008000000011152250908A91301120700F608A912F912073CF80000000108A91305120700FA08A91309120701080000000400000005000000050000000200000005120700F808A91305120700FA08A91309120701080000000400000005000000050000000200000005000000010000000012073CF60000000008A912F900000005120700F808A913050000000512073CFA0000000208A913090000000512073D08050000FC135D80FD000000030CFD9C0100000005000000090000000500000004000000010000000400000003"
theorem small_2690329_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2690329_right_root small_2690329_right_fuel small_2690329_right_count small_2690329_right_encoded = true := by
  decide +kernel
theorem small_2690329_right_covered : CoveredBy scale carrier boxes small_2690329_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2690329_right_root small_2690329_right_fuel small_2690329_right_count small_2690329_right_encoded small_2690329_right_checked

theorem cover_2690329 : CoveredBy scale carrier boxes root_2690329 := by
  apply coveredBy_split_literal root_2690329 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0064.root_2690330 small_2690329_right_root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0064.cover_2690330
  · exact small_2690329_right_covered
#print axioms cover_2690329

def root_2690324 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2690324_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2690324_right_fuel : Nat := 1
def small_2690324_right_count : Nat := 1
def small_2690324_right_encoded : String := "00000002"
theorem small_2690324_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2690324_right_root small_2690324_right_fuel small_2690324_right_count small_2690324_right_encoded = true := by
  decide +kernel
theorem small_2690324_right_covered : CoveredBy scale carrier boxes small_2690324_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2690324_right_root small_2690324_right_fuel small_2690324_right_count small_2690324_right_encoded small_2690324_right_checked

theorem cover_2690324 : CoveredBy scale carrier boxes root_2690324 := by
  apply coveredBy_split_literal root_2690324 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0064.root_2690329 small_2690324_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0064.cover_2690329
  · exact small_2690324_right_covered
#print axioms cover_2690324

def root_2690323 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2690323_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2690323_right_fuel : Nat := 25
def small_2690323_right_count : Nat := 289
def small_2690323_right_encoded : String := "1151E905000000020A0000FC115224FD000000030A0001081151E9090000000408A91301120700F608A912F912073CF80000000100000006120700F800000009000000010000000012073CF60000000008A912F912073CF80000000108A912FD12073CFC00000003050000FA135D810505000108135D4509000000040CFD9C010000000900000009135D81090000000A0000000400000002135D450500000002050001080000000900000009120700FC0000000600000003120700F808A912FD12073CFC0000000300000009120700FC050000FA135D810505000108135D45090000000400000006135D81090CFD9C01000000060F350CF600000000045489F9000000060000000600000004000000020000000600000003000000011152250908A91301120700F608A912F912073CF80000000108A912FD00000005120700FC08A91309000000050000000600000003120700F808A912FD12073CFC0000000308A913090000000500000009120700FC08A913091207010800000004050000FA135D810500000005000000020000000512073D08050000FA135D810504548A01000000060000000900000002000000060000000400000003000000010000000012073CF60000000008A912F912073CF80000000108A912FD12073CFC0000000308A913090000000512073D08050000FA135D81050CFD9C01000000050000000A000000020000000500000004120700FC08A9130912070108000000040000000512073D08050000FA135D81050CFD9C010F34D0F60CFD9BF90000000600000006000000000F350CF6000000000CFD9BF90000000A0000000A00000002135D4505000000020CFD9C01000000060F350CF6000000000CFD9BF9000000060000000A0000000400000003120700F808A912FD12073CFC0000000308A9130912070108000000040000000512073D08050000FA135D81050CFD9C010000000900000009000000020000000900000004120700FC08A913091207010800000004050000FA135D81050CFD9C010F34D0F6045489F900000005138670F80000000900000001000000000F350CF600000000045489F90000000A138670F8045489FD00000009138670FC04548A090000000A1386AD080C9A86F6000000090000000A00000004000000030000000100000002135D4505000000020CFD9C01000000050F350CF600000000045489F9000000050000000912073D08050000FA135D81050CFD9C010F34D0F6045489F91386ACF800000001045489FD0000000900000006138670F80000000900000001000000000F350CF600000000045489F91386ACF800000001045489FD0000000A138670FC0CFD9C090000000A0000000600000003138670F8045489FD00000009138670FC0CFD9C090F34D108000000040000000900000009000000030000000100000002135D4505000000020CFD9C010F34D0F600000009000000000F350CF600000000045489F91386ACF800000001045489FD000000090000000600000009000000040000000300000001000000041151E8FD0A0001081151E9090000000408A91301000000090000000911522509000000050000000400000003"
theorem small_2690323_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2690323_right_root small_2690323_right_fuel small_2690323_right_count small_2690323_right_encoded = true := by
  decide +kernel
theorem small_2690323_right_covered : CoveredBy scale carrier boxes small_2690323_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2690323_right_root small_2690323_right_fuel small_2690323_right_count small_2690323_right_encoded small_2690323_right_checked

theorem cover_2690323 : CoveredBy scale carrier boxes root_2690323 := by
  apply coveredBy_split_literal root_2690323 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0064.root_2690324 small_2690323_right_root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0064.cover_2690324
  · exact small_2690323_right_covered
#print axioms cover_2690323

def root_2690317 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2690317_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2690317_left_fuel : Nat := 1
def small_2690317_left_count : Nat := 1
def small_2690317_left_encoded : String := "00000001"
theorem small_2690317_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2690317_left_root small_2690317_left_fuel small_2690317_left_count small_2690317_left_encoded = true := by
  decide +kernel
theorem small_2690317_left_covered : CoveredBy scale carrier boxes small_2690317_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2690317_left_root small_2690317_left_fuel small_2690317_left_count small_2690317_left_encoded small_2690317_left_checked

theorem cover_2690317 : CoveredBy scale carrier boxes root_2690317 := by
  apply coveredBy_split_literal root_2690317 small_2690317_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0064.root_2690323 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_2690317_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0064.cover_2690323
#print axioms cover_2690317

def root_2690316 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2690316_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2690316_right_fuel : Nat := 19
def small_2690316_right_count : Nat := 111
def small_2690316_right_encoded : String := "1151E8F90A0000FA115225050A0000FC115224FD000000030A0001081151E9090000000408A91301120700F608A91305120700FA08A912FD000000060000000600000002000000060000000012073CF60000000008A91305120700FA000000070000000212073CFA0000000208A912FD0000000A0000000A1152250908A91301120700F608A91305120700FA08A912FD12073CFC0000000308A9130912070108000000040000000500000005120700FC08A9130912070108000000040000000500000005000000030000000212073CFA00000002000000050000000012073CF60000000008A913050000000512073CFA0000000208A912FD00000005120700FC08A913090000000512073D08050000F8135D80F9000000010CFD9C010000000500000007000000050000000400000003000000041151E8FD0A0001081151E90900000004000000051152250908A91301120700F608A91305120700FA0000000A000000020000000500000000000000050000000400000003000000021151E905000000020A0000FC115224FD000000030A0001081151E90900000004000000061152250900000005000000041151E8FD000000050000000300000001"
theorem small_2690316_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2690316_right_root small_2690316_right_fuel small_2690316_right_count small_2690316_right_encoded = true := by
  decide +kernel
theorem small_2690316_right_covered : CoveredBy scale carrier boxes small_2690316_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2690316_right_root small_2690316_right_fuel small_2690316_right_count small_2690316_right_encoded small_2690316_right_checked

theorem cover_2690316 : CoveredBy scale carrier boxes root_2690316 := by
  apply coveredBy_split_literal root_2690316 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0064.root_2690317 small_2690316_right_root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0064.cover_2690317
  · exact small_2690316_right_covered
#print axioms cover_2690316

def root_2690311 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2690311_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2690311_right_fuel : Nat := 1
def small_2690311_right_count : Nat := 1
def small_2690311_right_encoded : String := "00000000"
theorem small_2690311_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2690311_right_root small_2690311_right_fuel small_2690311_right_count small_2690311_right_encoded = true := by
  decide +kernel
theorem small_2690311_right_covered : CoveredBy scale carrier boxes small_2690311_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2690311_right_root small_2690311_right_fuel small_2690311_right_count small_2690311_right_encoded small_2690311_right_checked

theorem cover_2690311 : CoveredBy scale carrier boxes root_2690311 := by
  apply coveredBy_split_literal root_2690311 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0064.root_2690316 small_2690311_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0064.cover_2690316
  · exact small_2690311_right_covered
#print axioms cover_2690311

def root_2690310 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2690310 : CoveredBy scale carrier boxes root_2690310 := by
  apply coveredBy_split_literal root_2690310 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0064.root_2690311 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1033.root coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0064.cover_2690311
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1033.covered
#print axioms cover_2690310

def root_2683708 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2683708 : CoveredBy scale carrier boxes root_2683708 := by
  apply coveredBy_split_literal root_2683708 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0064.root_2683709 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0064.root_2690310 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0064.cover_2683709
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0064.cover_2690310
#print axioms cover_2683708

def root_2662556 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2662556 : CoveredBy scale carrier boxes root_2662556 := by
  apply coveredBy_split_literal root_2662556 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0063.root_2662557 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0064.root_2683708 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0063.cover_2662557
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0064.cover_2683708
#print axioms cover_2662556

def root_2696692 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2696692 : CoveredBy scale carrier boxes root_2696692 := by
  apply coveredBy_split_literal root_2696692 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1034.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1035.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1034.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1035.covered
#print axioms cover_2696692

def root_2700501 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2700501 : CoveredBy scale carrier boxes root_2700501 := by
  apply coveredBy_split_literal root_2700501 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1036.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1037.root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1036.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1037.covered
#print axioms cover_2700501

def root_2700496 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2700496_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2700496_right_fuel : Nat := 1
def small_2700496_right_count : Nat := 1
def small_2700496_right_encoded : String := "00000002"
theorem small_2700496_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2700496_right_root small_2700496_right_fuel small_2700496_right_count small_2700496_right_encoded = true := by
  decide +kernel
theorem small_2700496_right_covered : CoveredBy scale carrier boxes small_2700496_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2700496_right_root small_2700496_right_fuel small_2700496_right_count small_2700496_right_encoded small_2700496_right_checked

theorem cover_2700496 : CoveredBy scale carrier boxes root_2700496 := by
  apply coveredBy_split_literal root_2700496 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0064.root_2700501 small_2700496_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0064.cover_2700501
  · exact small_2700496_right_covered
#print axioms cover_2700496

def root_2700495 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2700495 : CoveredBy scale carrier boxes root_2700495 := by
  apply coveredBy_split_literal root_2700495 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0064.root_2700496 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1038.root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0064.cover_2700496
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1038.covered
#print axioms cover_2700495

def root_2700489 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2700489_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2700489_left_fuel : Nat := 1
def small_2700489_left_count : Nat := 1
def small_2700489_left_encoded : String := "00000001"
theorem small_2700489_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2700489_left_root small_2700489_left_fuel small_2700489_left_count small_2700489_left_encoded = true := by
  decide +kernel
theorem small_2700489_left_covered : CoveredBy scale carrier boxes small_2700489_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2700489_left_root small_2700489_left_fuel small_2700489_left_count small_2700489_left_encoded small_2700489_left_checked

theorem cover_2700489 : CoveredBy scale carrier boxes root_2700489 := by
  apply coveredBy_split_literal root_2700489 small_2700489_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0064.root_2700495 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_2700489_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0064.cover_2700495
#print axioms cover_2700489

def root_2700488 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2700488_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2700488_right_fuel : Nat := 16
def small_2700488_right_count : Nat := 109
def small_2700488_right_encoded : String := "1151E8F90A0000FA115225050A0000FC115225070A0001081151E8FF08A91301120700F608A91305120700FA08A91307120700FC0000000800000003000000080000000212073CFA00000002000000080000000012073CF60000000008A91305120700FA08A91307120700FC0000000800000003000000080000000212073CFA0000000208A91307000000080000000800000004115224FF0000000408A91301120700F608A91305120700FA08A91307120700FC08A912FF000000091207010800000004000000050000000312073CFC00000003000000050000000212073CFA00000002000000050000000012073CF60000000008A913050000000512073CFA0000000208A913070000000512073CFC0000000300000005000000031151E907000000030A0001081151E8FF000000050000000400000005000000021151E905000000020A0000FC115225070A0001081151E8FF000000050000000400000005000000031151E907000000030A0001081151E8FF0000000500000004115224FF0000000408A913010000000512073CF60000000008A912FF000000051207010800000004050000F8000000050000000800000001"
theorem small_2700488_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2700488_right_root small_2700488_right_fuel small_2700488_right_count small_2700488_right_encoded = true := by
  decide +kernel
theorem small_2700488_right_covered : CoveredBy scale carrier boxes small_2700488_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2700488_right_root small_2700488_right_fuel small_2700488_right_count small_2700488_right_encoded small_2700488_right_checked

theorem cover_2700488 : CoveredBy scale carrier boxes root_2700488 := by
  apply coveredBy_split_literal root_2700488 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0064.root_2700489 small_2700488_right_root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0064.cover_2700489
  · exact small_2700488_right_covered
#print axioms cover_2700488

def root_2700483 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2700483_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2700483_right_fuel : Nat := 1
def small_2700483_right_count : Nat := 1
def small_2700483_right_encoded : String := "00000000"
theorem small_2700483_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2700483_right_root small_2700483_right_fuel small_2700483_right_count small_2700483_right_encoded = true := by
  decide +kernel
theorem small_2700483_right_covered : CoveredBy scale carrier boxes small_2700483_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2700483_right_root small_2700483_right_fuel small_2700483_right_count small_2700483_right_encoded small_2700483_right_checked

theorem cover_2700483 : CoveredBy scale carrier boxes root_2700483 := by
  apply coveredBy_split_literal root_2700483 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0064.root_2700488 small_2700483_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0064.cover_2700488
  · exact small_2700483_right_covered
#print axioms cover_2700483

def root_2700482 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2700482 : CoveredBy scale carrier boxes root_2700482 := by
  apply coveredBy_split_literal root_2700482 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0064.root_2700483 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1039.root coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0064.cover_2700483
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1039.covered
#print axioms cover_2700482

def root_2710274 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2710274_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2710274_left_fuel : Nat := 19
def small_2710274_left_count : Nat := 341
def small_2710274_left_encoded : String := "120700FA08A91307120700FC08A9130912070108000000040CFD9C010F34D0F6045489F91386ACF80000000104548A050000000A1386ACFA0000000204548A07138670FC04548A09000000051386AD080AD35781000000050000000700000004000000030000000A0000000A000000000F350CF600000000045489F91386ACF80000000104548A05138670FA04548A070000000500000007000000021386ACFA0000000204548A07138670FC000000070000000300000007138670F804548A05138670FA0000000A000000021386ACFA0000000204548A07138670FC04548A0913867108000000040C9A86F60F878D0100000005000000000000000500000007000000031386ACFC0000000304548A091386710800000004000000091386AD080C9A86F60000000A00000007000000040000000112073D080CFD9C010F34D0F6045489F91386ACF80000000104548A05138670FA04548A07138670FC0CFD9C090F34D1080000000400000007000000060000000300000006000000021386ACFA0000000204548A07138670FC0CFD9C090F34D1080000000400000007000000060000000300000006138670F804548A05138670FA04548A070000000800000006000000021386ACFA0000000204548A07138670FC0CFD9C090F34D108000000040000000800000006000000030000000600000001000000000F350CF600000000045489F91386ACF80000000104548A05138670FA04548A070000000700000007000000021386ACFA0000000204548A070000000700000007138670F804548A05138670FA00000008000000021386ACFA0000000204548A07138670FC0CFD9C090F34D108000000040000000700000007000000031386ACFC000000030CFD9C090F34D10800000004000000070000000700000001000000040000000312073CFC0000000308A9130912070108000000040CFD9C010F34D0F60000000A000000000F350CF600000000045489F91386ACF80000000104548A05138670FA0CFD9C070F34D0FC000000090000000300000009000000021386ACFA000000020CFD9C070F34D0FC04548A090000000900000007000000030F350CFC0000000304548A09000000091386AD080C9A86F60F878D010000000A000000000000000700000004138670F804548A050000000A1386ACFA000000020CFD9C070F34D0FC0000000A000000030000000A0000000112073D080CFD9C010F34D0F6045489F91386ACF80000000104548A05138670FA0CFD9C070F34D0FC00000006000000030000000A000000021386ACFA000000020CFD9C070F34D0FC000000060000000300000006138670F804548A050000000A1386ACFA000000020CFD9C070F34D0FC00000006000000030000000600000001000000000F350CF600000000045489F91386ACF80000000104548A05138670FA0CFD9C070F34D0FC0CFD9C090F34D108000000040000000700000007000000030F350CFC000000030CFD9C090F34D108000000040C9A86F60000000A000000070F350D080000000800000004000000021386ACFA000000020CFD9C070F34D0FC0CFD9C090F34D108000000040000000700000006000000030F350CFC000000030CFD9C090F34D108000000040C9A86F60F878D010C9A86FC000000060000000600000000000000070F350D080000000600000004138670F804548A05138670FA0CFD9C07000000080F350CFC000000030CFD9C090F34D108000000040000000800000008000000021386ACFA000000020CFD9C070F34D0FC0CFD9C090F34D108000000040C9A86F60000000A0000000700000006000000030F350CFC000000030CFD9C090F34D108000000040C9A86F60000000A0000000800000006000000010000000400000002"
theorem small_2710274_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2710274_left_root small_2710274_left_fuel small_2710274_left_count small_2710274_left_encoded = true := by
  decide +kernel
theorem small_2710274_left_covered : CoveredBy scale carrier boxes small_2710274_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2710274_left_root small_2710274_left_fuel small_2710274_left_count small_2710274_left_encoded small_2710274_left_checked

theorem cover_2710274 : CoveredBy scale carrier boxes root_2710274 := by
  apply coveredBy_split_literal root_2710274 small_2710274_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1040.root coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_2710274_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1040.covered
#print axioms cover_2710274

def root_2710269 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2710269_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2710269_right_fuel : Nat := 1
def small_2710269_right_count : Nat := 1
def small_2710269_right_encoded : String := "00000001"
theorem small_2710269_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2710269_right_root small_2710269_right_fuel small_2710269_right_count small_2710269_right_encoded = true := by
  decide +kernel
theorem small_2710269_right_covered : CoveredBy scale carrier boxes small_2710269_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2710269_right_root small_2710269_right_fuel small_2710269_right_count small_2710269_right_encoded small_2710269_right_checked

theorem cover_2710269 : CoveredBy scale carrier boxes root_2710269 := by
  apply coveredBy_split_literal root_2710269 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0064.root_2710274 small_2710269_right_root coord1 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0064.cover_2710274
  · exact small_2710269_right_covered
#print axioms cover_2710269

def root_2709301 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2709301_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2709301_left_fuel : Nat := 21
def small_2709301_left_count : Nat := 447
def small_2709301_left_encoded : String := "12073CF80000000108A91305120700FA08A91307120700FC08A9130912070108000000040CFD9C01000000050F350CF6000000000000000712073D080CFD9C010F34D0F60CFD9BF9000000070F34D0F804548A05138670FA04548A070000000700000006000000021386ACFA0000000204548A07000000070000000600000001000000000F350CF60000000000000007000000040000000312073CFC0000000308A9130912070108000000040CFD9C010F34D0F60CFD9BF90F350CF800000001000000050F34D0F804548A05138670FA0000000A000000021386ACFA000000020CFD9C070F34D0FC04548A090000000500000007000000030F350CFC0000000304548A09000000051386AD080C9A86FC000000070F87510700000003000000070000000400000001000000000F350CF6000000000CFD9BF9000000070F34D0F804548A05138670FA0CFD9C070000000500000007000000021386ACFA000000020CFD9C070F34D0FC0000000700000003000000070000000112073D080CFD9C010F34D0F60CFD9BF90F350CF80000000104548A05138670FA0CFD9C070F34D0FC00000007000000030F350CFC000000030CFD9C090F34D108000000040000000500000007000000021386ACFA000000020CFD9C070F34D0FC00000007000000030F350CFC000000030CFD9C090F34D1080000000400000007000000070F34D0F804548A05138670FA0CFD9C070F34D0FC0CFD9C090000000600000006000000030F350CFC000000030CFD9C090F34D108000000040000000A0F350D080C9A86FC000000060F875107000000030C9A8708000000060000000700000004000000021386ACFA000000020CFD9C070F34D0FC00000006000000030F350CFC000000030CFD9C090F34D108000000040C9A86FC000000060F87510700000003000000060F350D08000000060000000400000001000000000F350CF6000000000CFD9BF90F350CF800000001000000070F34D0F804548A05138670FA0CFD9C070F34D0FC00000007000000030F350CFC000000030CFD9C090F34D108000000040000000700000007000000021386ACFA000000020CFD9C070F34D0FC00000007000000030F350CFC000000030CFD9C090F34D10800000004000000070000000700000001000000040000000212073CFA0000000208A91307120700FC08A9130912070108000000040CFD9C010F34D0F60CFD9BF90F350CF800000001000000050F34D0F80CFD9C050F34D0FA04548A07000000051386ACFC0000000304548A090000000500000006000000020F350CFA0000000204548A07000000050000000600000001000000000F350CF6000000000CFD9BF9000000070F34D0F80CFD9C050F34D0FA00000007000000020F350CFA0000000204548A07138670FC0000000700000003000000070000000112073D080CFD9C010F34D0F60CFD9BF90F350CF800000001000000060F34D0F80CFD9C05000000060000000600000001000000000F350CF6000000000CFD9BF90F350CF800000001000000070F34D0F80CFD9C050F34D0FA00000007000000020F350CFA0000000204548A07138670FC0CFD9C090F34D108000000040000000700000006000000030000000600000001000000040000000312073CFC0000000308A9130912070108000000040CFD9C010F34D0F60CFD9BF90F350CF8000000010CFD9C050F34D0FA0CFD9C070000000500000007000000020F350CFA000000020CFD9C0700000005000000060F34D0F80CFD9C050F34D0FA0CFD9C070F34D0FC04548A090000000500000006000000030F350CFC0000000304548A0913867108000000040C9A86FC000000060000000500000006000000020F350CFA000000020CFD9C070F34D0FC00000006000000030000000600000001000000000F350CF6000000000CFD9BF90F350CF8000000010CFD9C050F34D0FA0000000700000002000000070F34D0F80CFD9C050F34D0FA0CFD9C070F34D0FC000000070000000300000007000000020F350CFA000000020CFD9C070F34D0FC00000007000000030F350CFC0000000304548A09138671080000000400000007000000070000000112073D080CFD9C010F34D0F60CFD9BF90F350CF8000000010CFD9C050F34D0FA0CFD9C070F34D0FC00000006000000030F350CFC000000030CFD9C090000000600000006000000020F350CFA00000002000000060F34D0F80CFD9C050F34D0FA0CFD9C070000000600000006000000020000000600000001000000000F350CF6000000000CFD9BF90F350CF8000000010CFD9C050F34D0FA00000007000000020F350CFA000000020CFD9C0700000006000000060F34D0F80CFD9C050F34D0FA0CFD9C070F34D0FC00000007000000030F350CFC000000030CFD9C090F34D108000000040000000600000006000000020F350CFA000000020CFD9C070F34D0FC0000000600000003000000060000000100000004"
theorem small_2709301_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2709301_left_root small_2709301_left_fuel small_2709301_left_count small_2709301_left_encoded = true := by
  decide +kernel
theorem small_2709301_left_covered : CoveredBy scale carrier boxes small_2709301_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2709301_left_root small_2709301_left_fuel small_2709301_left_count small_2709301_left_encoded small_2709301_left_checked

theorem cover_2709301 : CoveredBy scale carrier boxes root_2709301 := by
  apply coveredBy_split_literal root_2709301 small_2709301_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0064.root_2710269 coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_2709301_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0064.cover_2710269
#print axioms cover_2709301

def root_2709295 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2709295_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2709295_left_fuel : Nat := 1
def small_2709295_left_count : Nat := 1
def small_2709295_left_encoded : String := "00000000"
theorem small_2709295_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2709295_left_root small_2709295_left_fuel small_2709295_left_count small_2709295_left_encoded = true := by
  decide +kernel
theorem small_2709295_left_covered : CoveredBy scale carrier boxes small_2709295_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2709295_left_root small_2709295_left_fuel small_2709295_left_count small_2709295_left_encoded small_2709295_left_checked

theorem cover_2709295 : CoveredBy scale carrier boxes root_2709295 := by
  apply coveredBy_split_literal root_2709295 small_2709295_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0064.root_2709301 coord0 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_2709295_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0064.cover_2709301
#print axioms cover_2709295

def root_2708529 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2708529_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2708529_left_fuel : Nat := 22
def small_2708529_left_count : Nat := 357
def small_2708529_left_encoded : String := "120700F608A912F912073CF80000000108A91305120700FA08A91307120700FC08A9130912070108000000040000000512073D0804548A01000000061386ACF6000000000CFD9BF90F350CF80000000104548A05138670FA00000006000000020000000600000006000000040000000312073CFC0000000308A91309120701080000000404548A01000000051386ACF6000000000CFD9BF9000000050F34D0F80000000A0000000112073D0804548A01138670F60CFD9BF90F350CF80000000104548A05138670FA0CFD9C070F34D0FC00000006000000030F350CFC000000030CFD9C09000000050F350D080000000600000004000000021386ACFA000000020CFD9C0700000006000000060F34D0F804548A050000000A0000000600000001000000001386ACF6000000000CFD9BF90F350CF80000000104548A05138670FA0CFD9C070F34D0FC00000007000000030F350CFC000000030CFD9C090F34D10800000004000000050F350D080C9A86F80F878CF900000001000000060000000700000004000000021386ACFA000000020CFD9C070F34D0FC00000006000000030F350CFC000000030CFD9C090F34D10800000004000000050F350D0800000006000000040F34D0F804548A05138670FA0CFD9C070F34D0FC00000006000000030000000A000000021386ACFA000000020CFD9C07000000060000000600000001000000040000000212073CFA0000000208A91307120700FC08A91309120701080000000404548A01000000051386ACF6000000000CFD9BF9000000050F34D0F80CFD9C05000000050F350CFA000000020000000600000001000000060000000312073CFC0000000308A91309120701080000000404548A01138670F60CFD9BF90F350CF8000000010000000500000006000000001386ACF6000000000CFD9BF90F350CF8000000010CFD9C0500000005000000060F34D0F80CFD9C050F34D0FA0CFD9C070F34D0FC00000006000000030000000600000002000000060000000112073D0804548A01138670F60CFD9BF90F350CF8000000010000000600000006000000001386ACF6000000000CFD9BF90F350CF8000000010CFD9C050F34D0FA0CFD9C07000000060000000600000002000000060000000600000004120700F808A91305120700FA08A91307120700FC08A9130912070108000000040000000A12073D0804548A01000000061386ACF600000000045489F91386ACF80000000100000006138670F804548A05000000060000000600000001000000040000000312073CFC0000000308A9130912070108000000040000000A12073D0804548A01000000061386ACF600000000045489F91386ACF80000000104548A050000000A0000000600000006000000040000000212073CFA0000000208A91307120700FC08A91309120701080000000404548A01138670F6045489F91386ACF8000000010CFD9C050000000600000006138670F80000000A00000001000000001386ACF600000000045489F91386ACF8000000010CFD9C050F34D0FA04548A07138670FC04548A0900000005000000060000000300000006000000020F350CFA0000000204548A07138670FC000000060000000300000006138670F80CFD9C050F34D0FA0000000A000000020F350CFA0000000204548A07138670FC04548A0913867108000000040C9A86FA0F878D050000000500000002000000050000000600000003000000060000000112073D0804548A01000000061386ACF600000000045489F90000000600000006000000040000000312073CFC0000000308A91309120701080000000404548A01138670F6045489F90000000600000006000000001386ACF600000000045489F91386ACF8000000010CFD9C050F34D0FA0000000A000000020F350CFA0000000200000006138670F80CFD9C050000000A0F350CFA000000020000000600000001000000060000000100000000"
theorem small_2708529_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2708529_left_root small_2708529_left_fuel small_2708529_left_count small_2708529_left_encoded = true := by
  decide +kernel
theorem small_2708529_left_covered : CoveredBy scale carrier boxes small_2708529_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2708529_left_root small_2708529_left_fuel small_2708529_left_count small_2708529_left_encoded small_2708529_left_checked

theorem cover_2708529 : CoveredBy scale carrier boxes root_2708529 := by
  apply coveredBy_split_literal root_2708529 small_2708529_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0064.root_2709295 coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_2708529_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0064.cover_2709295
#print axioms cover_2708529

def root_2708524 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2708524_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2708524_right_fuel : Nat := 1
def small_2708524_right_count : Nat := 1
def small_2708524_right_encoded : String := "00000004"
theorem small_2708524_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2708524_right_root small_2708524_right_fuel small_2708524_right_count small_2708524_right_encoded = true := by
  decide +kernel
theorem small_2708524_right_covered : CoveredBy scale carrier boxes small_2708524_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2708524_right_root small_2708524_right_fuel small_2708524_right_count small_2708524_right_encoded small_2708524_right_checked

theorem cover_2708524 : CoveredBy scale carrier boxes root_2708524 := by
  apply coveredBy_split_literal root_2708524 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0064.root_2708529 small_2708524_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0064.cover_2708529
  · exact small_2708524_right_covered
#print axioms cover_2708524

def root_2708262 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2708262_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2708262_left_fuel : Nat := 17
def small_2708262_left_count : Nat := 125
def small_2708262_left_encoded : String := "1151E9090000000408A91301120700F608A912F912073CF80000000108A91305120700FA08A913070000000612073CFC000000030500010800000006135D810904548A01000000061386ACF6000000000CFD9BF90F350CF8000000010000000600000006000000040000000200000006120700F808A913050000000600000006000000010000000012073CF60000000008A912F912073CF80000000108A91305120700FA08A91307120700FC0500010800000006000000060000000312073CFC0000000305000108135D4509000000040CFD9C01000000060F350CF60000000000000006135D81090CFD9C010F34D0F60CFD9BF90F350CF80000000104548A05000000070000000600000006000000000F350CF6000000000CFD9BF9000000070F34D0F80000000600000001000000040000000212073CFA0000000208A91307120700FC000000060000000300000006120700F808A91305120700FA08A91307120700FC0500010800000006135D81090CFD9C01000000060F350CF60000000000000008000000040000000312073CFC000000030500010800000006000000060000000212073CFA0000000208A91307120700FC05000108135D45090000000400000006135D81090CFD9C01000000060F350CF600000000045489F9000000060000000600000004000000030000000600000001"
theorem small_2708262_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2708262_left_root small_2708262_left_fuel small_2708262_left_count small_2708262_left_encoded = true := by
  decide +kernel
theorem small_2708262_left_covered : CoveredBy scale carrier boxes small_2708262_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2708262_left_root small_2708262_left_fuel small_2708262_left_count small_2708262_left_encoded small_2708262_left_checked

theorem cover_2708262 : CoveredBy scale carrier boxes root_2708262 := by
  apply coveredBy_split_literal root_2708262 small_2708262_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0064.root_2708524 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_2708262_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0064.cover_2708524
#print axioms cover_2708262

def root_2708257 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2708257_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2708257_right_fuel : Nat := 1
def small_2708257_right_count : Nat := 1
def small_2708257_right_encoded : String := "00000003"
theorem small_2708257_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2708257_right_root small_2708257_right_fuel small_2708257_right_count small_2708257_right_encoded = true := by
  decide +kernel
theorem small_2708257_right_covered : CoveredBy scale carrier boxes small_2708257_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2708257_right_root small_2708257_right_fuel small_2708257_right_count small_2708257_right_encoded small_2708257_right_checked

theorem cover_2708257 : CoveredBy scale carrier boxes root_2708257 := by
  apply coveredBy_split_literal root_2708257 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0064.root_2708262 small_2708257_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0064.cover_2708262
  · exact small_2708257_right_covered
#print axioms cover_2708257

def root_2715143 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2715143 : CoveredBy scale carrier boxes root_2715143 := by
  apply coveredBy_split_literal root_2715143 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1041.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1042.root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1041.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1042.covered
#print axioms cover_2715143

def root_2715137 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2715137_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2715137_left_fuel : Nat := 1
def small_2715137_left_count : Nat := 1
def small_2715137_left_encoded : String := "00000000"
theorem small_2715137_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2715137_left_root small_2715137_left_fuel small_2715137_left_count small_2715137_left_encoded = true := by
  decide +kernel
theorem small_2715137_left_covered : CoveredBy scale carrier boxes small_2715137_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2715137_left_root small_2715137_left_fuel small_2715137_left_count small_2715137_left_encoded small_2715137_left_checked

theorem cover_2715137 : CoveredBy scale carrier boxes root_2715137 := by
  apply coveredBy_split_literal root_2715137 small_2715137_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0064.root_2715143 coord0 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_2715137_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0064.cover_2715143
#print axioms cover_2715137

def root_2714425 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2714425_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2714425_left_fuel : Nat := 21
def small_2714425_left_count : Nat := 331
def small_2714425_left_encoded : String := "120700F608A912F912073CF80000000108A91305120700FA08A9130912070108000000040000000512073D08050000FC135D810704548A01138670F60CFD9BF90F350CF80000000104548A05000000051386ACFA000000020CFD9C09000000050F350D0800000006000000040F34D0F80000000A00000001000000001386ACF6000000000CFD9BF90F350CF80000000104548A05138670FA0CFD9C09000000050F350D080C9A86F80F878CF9000000010C9A870800000008000000050000000500000004000000021386ACFA000000020CFD9C090F34D10800000004000000050F350D080C9A86F80F878CF900000001000000060F8750F90C9A8708000000060000000500000001000000040F34D0F804548A050000000A1386ACFA000000020CFD9C090F34D108000000040000000A0F350D0800000006000000040000000100000003135D45070000000304548A01138670F60CFD9BF90F350CF800000001000000050F34D0F80000000A00000001000000001386ACF6000000000CFD9BF90F350CF80000000104548A05000000051386ACFA000000020CFD9C09000000050F350D0800000009000000040F34D0F804548A050000000A1386ACFA000000020CFD9C090F34D108000000040000000A0000000800000001000000040000000212073CFA0000000208A913091207010800000004050000FC135D810704548A01138670F60CFD9BF9000000050F34D0F80000000600000001000000001386ACF6000000000CFD9BF90F350CF800000001000000050F34D0F80CFD9C050F34D0FA0000000A00000002000000060000000100000003135D45070000000304548A01000000051386ACF6000000000CFD9BF9000000050F34D0F80CFD9C05000000050F350CFA0000000204548A0900000005000000060000000112073D08050000FC135D810704548A01138670F60CFD9BF90F350CF8000000010CFD9C050F34D0FA00000006000000020000000600000006000000001386ACF6000000000CFD9BF90F350CF8000000010CFD9C050F34D0FA0CFD9C090F34D108000000040C9A86F800000006000000050F350D080000000600000004000000020F350CFA00000002000000060F34D0F80CFD9C050F34D0FA0000000600000002000000060000000100000003135D45070000000304548A01138670F60CFD9BF90F350CF8000000010CFD9C050F34D0FA0000000900000002000000090F34D0F80CFD9C050F34D0FA00000009000000020000000600000001000000001386ACF6000000000CFD9BF90F350CF8000000010CFD9C050F34D0FA0CFD9C090F34D108000000040000000500000009000000020F350CFA000000020CFD9C090F34D108000000040C9A86F80000000600000006000000090F34D0F80CFD9C050F34D0FA0CFD9C090F34D10800000004028000FC0000000613D7B10700000003067ECE81000000060000000900000009000000020F350CFA00000002000000060000000100000004120700F808A91305120700FA0000000A0000000212073CFA0000000208A913091207010800000004050000FC135D810704548A01000000061386ACF600000000045489F91386ACF800000001000000060000000600000003135D45070000000304548A010000000A1386ACF600000000045489F91386ACF8000000010CFD9C050000000A0F350CFA00000002000000060000000A12073D08050000FC00000006135D45070000000304548A01000000061386ACF600000000045489F91386ACF8000000010CFD9C050F34D0FA0CFD9C090000000600000006000000020000000600000006000000040000000100000000"
theorem small_2714425_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2714425_left_root small_2714425_left_fuel small_2714425_left_count small_2714425_left_encoded = true := by
  decide +kernel
theorem small_2714425_left_covered : CoveredBy scale carrier boxes small_2714425_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2714425_left_root small_2714425_left_fuel small_2714425_left_count small_2714425_left_encoded small_2714425_left_checked

theorem cover_2714425 : CoveredBy scale carrier boxes root_2714425 := by
  apply coveredBy_split_literal root_2714425 small_2714425_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0064.root_2715137 coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_2714425_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0064.cover_2715137
#print axioms cover_2714425

def root_2714420 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2714420_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2714420_right_fuel : Nat := 1
def small_2714420_right_count : Nat := 1
def small_2714420_right_encoded : String := "00000004"
theorem small_2714420_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2714420_right_root small_2714420_right_fuel small_2714420_right_count small_2714420_right_encoded = true := by
  decide +kernel
theorem small_2714420_right_covered : CoveredBy scale carrier boxes small_2714420_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2714420_right_root small_2714420_right_fuel small_2714420_right_count small_2714420_right_encoded small_2714420_right_checked

theorem cover_2714420 : CoveredBy scale carrier boxes root_2714420 := by
  apply coveredBy_split_literal root_2714420 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0064.root_2714425 small_2714420_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0064.cover_2714425
  · exact small_2714420_right_covered
#print axioms cover_2714420

def root_2713722 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2713722_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2713722_left_fuel : Nat := 23
def small_2713722_left_count : Nat := 329
def small_2713722_left_encoded : String := "1151E9090000000408A91301120700F608A912F912073CF80000000108A91305120700FA050000FC135D81070500010800000006135D810904548A01138670F60CFD9BF90000000900000006000000001386ACF6000000000CFD9BF90F350CF80000000104548A05138670FA000000080000000200000006000000060000000400000003135D4507000000030500010800000009135D810904548A01000000081386ACF6000000000CFD9BF90000000900000008000000040000000212073CFA00000002050000FC0000000600000009120700F808A91305120700FA000000060000000200000006000000010000000012073CF60000000008A912F912073CF80000000108A91305120700FA050000FC135D810705000108135D4509000000040CFD9C010F34D0F60CFD9BF90F350CF8000000010000000600000006000000000F350CF6000000000CFD9BF90F350CF8000000010000000600000006135D81090CFD9C010F34D0F60CFD9BF90F350CF80000000104548A05138670FA0000000700000002000000060F34D0F80000000600000001000000000F350CF6000000000CFD9BF9000000070F34D0F804548A05138670FA000000070000000200000006000000010000000400000003135D45070000000305000108135D4509000000040CFD9C010F34D0F60CFD9BF9000000090F34D0F80000000600000001000000000F350CF6000000000CFD9BF90F350CF80000000104548A05138670FA0C9A86F60000000700000007000000020000000A0F34D0F804548A05138670FA0C9A86F60F878D01000000060000000000000006000000020000000600000001135D81090CFD9C010F34D0F60CFD9BF90F350CF80000000104548A05138670FA0000000800000002000000090F34D0F804548A05138670FA00000008000000020000000800000001000000000F350CF6000000000CFD9BF90F350CF80000000104548A05138670FA0000000700000002000000070F34D0F804548A05138670FA0C9A86F60F878D01028000FC13D7ED07000000080000000300000008000000000F87510100000000028000FC0000000713D7B1070000000300000007000000021386ACFA000000020C9A86F60F878D01028000FC0000000600000008000000000F87510100000000028000FC0000000613D7B1070000000307800108000000060000000700000001000000040000000212073CFA00000002050000FC135D81070500010800000006135D81090CFD9C01000000060F350CF6000000000CFD9BF90F350CF80000000100000006000000060000000400000003135D45070000000305000108135D4509000000040CFD9C01000000060F350CF60000000000000006135D81090CFD9C010F34D0F60CFD9BF90000000900000006000000000F350CF6000000000CFD9BF90F350CF8000000010CFD9C050F34D0FA0C9A86F60F878D0100000006000000000000000600000002000000060F34D0F8000000060000000100000004120700F808A91305120700FA050000FC135D81070500010800000006135D81090CFD9C01000000060F350CF600000000000000060000000400000003135D4507000000030500010800000006135D81090CFD9C010F34D0F6045489F90000000800000006000000000F350CF600000000045489F91386ACF80000000104548A05138670FA0C9A86F60F878D01028000FC0000000600000008000000000F87510100000000028000FC0000000613D7B10700000003078001080000000600000008000000020000000600000006000000040000000212073CFA000000020000000600000001"
theorem small_2713722_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2713722_left_root small_2713722_left_fuel small_2713722_left_count small_2713722_left_encoded = true := by
  decide +kernel
theorem small_2713722_left_covered : CoveredBy scale carrier boxes small_2713722_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2713722_left_root small_2713722_left_fuel small_2713722_left_count small_2713722_left_encoded small_2713722_left_checked

theorem cover_2713722 : CoveredBy scale carrier boxes root_2713722 := by
  apply coveredBy_split_literal root_2713722 small_2713722_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0064.root_2714420 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_2713722_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0064.cover_2714420
#print axioms cover_2713722

def root_2713716 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2713716_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2713716_left_fuel : Nat := 1
def small_2713716_left_count : Nat := 1
def small_2713716_left_encoded : String := "00000003"
theorem small_2713716_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2713716_left_root small_2713716_left_fuel small_2713716_left_count small_2713716_left_encoded = true := by
  decide +kernel
theorem small_2713716_left_covered : CoveredBy scale carrier boxes small_2713716_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2713716_left_root small_2713716_left_fuel small_2713716_left_count small_2713716_left_encoded small_2713716_left_checked

theorem cover_2713716 : CoveredBy scale carrier boxes root_2713716 := by
  apply coveredBy_split_literal root_2713716 small_2713716_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0064.root_2713722 coord3 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_2713716_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0064.cover_2713722
#print axioms cover_2713716

def root_2708256 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2708256 : CoveredBy scale carrier boxes root_2708256 := by
  apply coveredBy_split_literal root_2708256 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0064.root_2708257 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0064.root_2713716 coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0064.cover_2708257
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0064.cover_2713716
#print axioms cover_2708256

def root_2708251 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2708251_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2708251_right_fuel : Nat := 1
def small_2708251_right_count : Nat := 1
def small_2708251_right_encoded : String := "00000002"
theorem small_2708251_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2708251_right_root small_2708251_right_fuel small_2708251_right_count small_2708251_right_encoded = true := by
  decide +kernel
theorem small_2708251_right_covered : CoveredBy scale carrier boxes small_2708251_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2708251_right_root small_2708251_right_fuel small_2708251_right_count small_2708251_right_encoded small_2708251_right_checked

theorem cover_2708251 : CoveredBy scale carrier boxes root_2708251 := by
  apply coveredBy_split_literal root_2708251 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0064.root_2708256 small_2708251_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0064.cover_2708256
  · exact small_2708251_right_covered
#print axioms cover_2708251

def root_2708250 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2708250 : CoveredBy scale carrier boxes root_2708250 := by
  apply coveredBy_split_literal root_2708250 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0064.root_2708251 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1043.root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0064.cover_2708251
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1043.covered
#print axioms cover_2708250

def root_2708244 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2708244_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2708244_left_fuel : Nat := 1
def small_2708244_left_count : Nat := 1
def small_2708244_left_encoded : String := "00000001"
theorem small_2708244_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2708244_left_root small_2708244_left_fuel small_2708244_left_count small_2708244_left_encoded = true := by
  decide +kernel
theorem small_2708244_left_covered : CoveredBy scale carrier boxes small_2708244_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2708244_left_root small_2708244_left_fuel small_2708244_left_count small_2708244_left_encoded small_2708244_left_checked

theorem cover_2708244 : CoveredBy scale carrier boxes root_2708244 := by
  apply coveredBy_split_literal root_2708244 small_2708244_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0064.root_2708250 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_2708244_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0064.cover_2708250
#print axioms cover_2708244

def root_2708243 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2708243 : CoveredBy scale carrier boxes root_2708243 := by
  apply coveredBy_split_literal root_2708243 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0064.root_2708244 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1044.root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0064.cover_2708244
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1044.covered
#print axioms cover_2708243

def root_2708238 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2708238_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2708238_right_fuel : Nat := 1
def small_2708238_right_count : Nat := 1
def small_2708238_right_encoded : String := "00000000"
theorem small_2708238_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2708238_right_root small_2708238_right_fuel small_2708238_right_count small_2708238_right_encoded = true := by
  decide +kernel
theorem small_2708238_right_covered : CoveredBy scale carrier boxes small_2708238_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2708238_right_root small_2708238_right_fuel small_2708238_right_count small_2708238_right_encoded small_2708238_right_checked

theorem cover_2708238 : CoveredBy scale carrier boxes root_2708238 := by
  apply coveredBy_split_literal root_2708238 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0064.root_2708243 small_2708238_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0064.cover_2708243
  · exact small_2708238_right_covered
#print axioms cover_2708238

def root_2721902 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2721902 : CoveredBy scale carrier boxes root_2721902 := by
  apply coveredBy_split_literal root_2721902 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1045.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1046.root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1045.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1046.covered
#print axioms cover_2721902

def root_2721896 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2721896_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2721896_left_fuel : Nat := 1
def small_2721896_left_count : Nat := 1
def small_2721896_left_encoded : String := "00000001"
theorem small_2721896_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2721896_left_root small_2721896_left_fuel small_2721896_left_count small_2721896_left_encoded = true := by
  decide +kernel
theorem small_2721896_left_covered : CoveredBy scale carrier boxes small_2721896_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2721896_left_root small_2721896_left_fuel small_2721896_left_count small_2721896_left_encoded small_2721896_left_checked

theorem cover_2721896 : CoveredBy scale carrier boxes root_2721896 := by
  apply coveredBy_split_literal root_2721896 small_2721896_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0064.root_2721902 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_2721896_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0064.cover_2721902
#print axioms cover_2721896

def root_2721895 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2721895_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2721895_right_fuel : Nat := 12
def small_2721895_right_count : Nat := 73
def small_2721895_right_encoded : String := "1151E8F90A0000FA115225050A0000FC115225070A0001081151E9090000000408A91305120700FA0000000700000002000000071152250908A91305120700FA000000070000000212073CFA0000000208A91307120700FC00000007000000030000000700000004000000031151E907000000030A0001081151E9090000000408A913050000000A0000000A1152250908A91305120700FA000000070000000212073CFA0000000208A913091207010800000004000000070000000700000004000000021151E905000000020A0000FC115225070A0001080000000A1152250908A913070000000A0000000A00000004000000031151E907000000030A0001080000000A1152250908A913091207010800000004000000070000000A0000000400000001"
theorem small_2721895_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2721895_right_root small_2721895_right_fuel small_2721895_right_count small_2721895_right_encoded = true := by
  decide +kernel
theorem small_2721895_right_covered : CoveredBy scale carrier boxes small_2721895_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2721895_right_root small_2721895_right_fuel small_2721895_right_count small_2721895_right_encoded small_2721895_right_checked

theorem cover_2721895 : CoveredBy scale carrier boxes root_2721895 := by
  apply coveredBy_split_literal root_2721895 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0064.root_2721896 small_2721895_right_root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0064.cover_2721896
  · exact small_2721895_right_covered
#print axioms cover_2721895

def root_2721889 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2721889_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2721889_left_fuel : Nat := 1
def small_2721889_left_count : Nat := 1
def small_2721889_left_encoded : String := "00000000"
theorem small_2721889_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2721889_left_root small_2721889_left_fuel small_2721889_left_count small_2721889_left_encoded = true := by
  decide +kernel
theorem small_2721889_left_covered : CoveredBy scale carrier boxes small_2721889_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2721889_left_root small_2721889_left_fuel small_2721889_left_count small_2721889_left_encoded small_2721889_left_checked

theorem cover_2721889 : CoveredBy scale carrier boxes root_2721889 := by
  apply coveredBy_split_literal root_2721889 small_2721889_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0064.root_2721895 coord0 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_2721889_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0064.cover_2721895
#print axioms cover_2721889

def root_2708237 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2708237 : CoveredBy scale carrier boxes root_2708237 := by
  apply coveredBy_split_literal root_2708237 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0064.root_2708238 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0064.root_2721889 coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0064.cover_2708238
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0064.cover_2721889
#print axioms cover_2708237

def root_2700481 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2700481 : CoveredBy scale carrier boxes root_2700481 := by
  apply coveredBy_split_literal root_2700481 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0064.root_2700482 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0064.root_2708237 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0064.cover_2700482
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0064.cover_2708237
#print axioms cover_2700481

def root_2696691 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2696691 : CoveredBy scale carrier boxes root_2696691 := by
  apply coveredBy_split_literal root_2696691 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0064.root_2696692 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0064.root_2700481 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0064.cover_2696692
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0064.cover_2700481
#print axioms cover_2696691

def root_2662555 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2662555 : CoveredBy scale carrier boxes root_2662555 := by
  apply coveredBy_split_literal root_2662555 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0064.root_2662556 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0064.root_2696691 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0064.cover_2662556
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0064.cover_2696691
#print axioms cover_2662555

def root_2725880 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2725880_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2725880_right_fuel : Nat := 18
def small_2725880_right_count : Nat := 183
def small_2725880_right_encoded : String := "1151E905000000020A0001061151E8FD0A0000FE115224FF0000000408A91301120700F608A912F912073CF80000000108A912FF12073CFE00000004050000FA135D810505000106135D44FD04548A01000000070000000700000003135D80FD0000000304548A01000000071386ACF6000000000000000700000002135D45050000000205000106135D44FD04548A01000000070000000700000003135D80FD0000000304548A010000000700000005120700FE0000000900000004120700F808A912FF12073CFE00000004050000FA135D8105050001060000000A135D80FD0000000304548A01000000091386ACF6000000000000000500000002135D450500000002050001060000000A00000005120700FE0000000900000004000000010000000012073CF60000000008A912F912073CF80000000108A912FF12073CFE00000004050000FA135D810505000106135D44FD0CFD9C01000000070F350CF6000000000000000500000003000000050000000200000005120700FE050000FA135D810505000106135D44FD0CFD9C010F34D0F60000000900000000000000050000000300000005000000020000000500000004120700F808A912FF12073CFE00000004050000FA135D810505000106135D44FD0000000600000003000000050000000200000005120700FE050000FA135D810505000106135D44FD0CFD9C010000000A0F350CF600000000000000050000000300000005000000020000000500000004000000011151E8FF08A91301120700F608A912F900000007120700F800000007000000010000000012073CF60000000008A912F900000007000000050000000400000003115224FD000000030A0000FE115224FF0000000408A91301120700F608A912F900000009120700F808A912FD00000005120701060000000300000005000000010000000012073CF60000000008A912F900000005120700F808A912FD000000051207010600000003000000050000000100000005"
theorem small_2725880_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2725880_right_root small_2725880_right_fuel small_2725880_right_count small_2725880_right_encoded = true := by
  decide +kernel
theorem small_2725880_right_covered : CoveredBy scale carrier boxes small_2725880_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2725880_right_root small_2725880_right_fuel small_2725880_right_count small_2725880_right_encoded small_2725880_right_checked

theorem cover_2725880 : CoveredBy scale carrier boxes root_2725880 := by
  apply coveredBy_split_literal root_2725880 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1047.root small_2725880_right_root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1047.covered
  · exact small_2725880_right_covered
#print axioms cover_2725880

def root_2725874 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2725874_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2725874_left_fuel : Nat := 1
def small_2725874_left_count : Nat := 1
def small_2725874_left_encoded : String := "00000001"
theorem small_2725874_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2725874_left_root small_2725874_left_fuel small_2725874_left_count small_2725874_left_encoded = true := by
  decide +kernel
theorem small_2725874_left_covered : CoveredBy scale carrier boxes small_2725874_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2725874_left_root small_2725874_left_fuel small_2725874_left_count small_2725874_left_encoded small_2725874_left_checked

theorem cover_2725874 : CoveredBy scale carrier boxes root_2725874 := by
  apply coveredBy_split_literal root_2725874 small_2725874_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0064.root_2725880 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_2725874_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0064.cover_2725880
#print axioms cover_2725874

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0064
