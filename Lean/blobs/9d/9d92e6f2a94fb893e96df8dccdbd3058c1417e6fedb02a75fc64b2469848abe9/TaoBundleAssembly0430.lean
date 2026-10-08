import TaoBundleAssembly0429
import TaoBundleChunkBatch0584
import TaoBundleChunkBatch0586
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0430
def root_6215621 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6215621_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6215621_right_fuel : Nat := 27
def small_6215621_right_count : Nat := 319
def small_6215621_right_encoded : String := "120701000000000008A91303120700F808A912FB12073D0408A912FD12073D06050000FE135D8109045489F71386AD0004548A030000000600000008000000000000000800000004135D450900000004045489F70000000A13867100000000000000000A000000030000000600000002120701040000000208A912FD12073D06050000FE135D8109045489F70000000700000007000000040000000700000003000000060000000112073CF80000000108A912FB12073D0408A912FD12073D06050000FE135D8109045489F71386AD000CFD9C030F34D0F800000008000000010F350CF8000000010CFD9BFB000000080F34D104000000020CFD9BFD0F350D060C9A86F8000000080F875103000000010000000800000003000000080000000013867100000000000000000800000004135D450900000004045489F71386AD000CFD9C03000000060F350CF8000000010CFD9BFB000000060F34D10400000002000000060000000013867100000000000CFD9C030F34D0F800000008000000010F350CF8000000010CFD9BFB000000060F34D10400000002000000060000000312070106000000030000000600000002120701040000000208A912FD12073D06050000FE135D8109045489F71386AD000CFD9C030F34D0F8045489FB1386AD040CFD9BFD0000000A0000000600000002138671040000000200000007000000010F350CF800000001045489FB1386AD040CFD9BFD0F350D060C9A86F80F878D030000000A000000010F875103000000010C9A87060F8750FD0000000A000000030F878CFD00000003078000FE0000000800000008000000030F34D10600000003000000080000000213867104000000020CFD9BFD0F350D060C9A86F80F878D030C9A8706000000070F878CFD0000000300000007000000010F875103000000010C9A87060F8750FD078000FE128A7D09067ECE770000000A12EA590000000000000000070000000400000007000000030F878CFD00000003078000FE128A7D09067ECE7712EA9500022A457B00000008000000070000000012EA590000000000000000070000000400000005000000030F34D106000000030C9A86F80F878D030000000700000001000000050000000013867100000000000CFD9C030F34D0F8045489FB0000000800000007000000010F350CF800000001045489FB1386AD040CFD9BFD0F350D060C9A86F8000000080F875103000000010C9A87060F8750FD078000FE0000000800000008000000030000000800000003000000080000000213867104000000020CFD9BFD0F350D060C9A86F80F878D0300000007000000010F875103000000010C9A87060F8750FD078000FE128A7D090000000700000004000000050000000300000005000000030F34D106000000030000000500000004135D450900000004045489F71386AD000CFD9C030F34D0F800000007000000010F350CF800000001045489FB1386AD040CFD9BFD0F350D060C9A86F80000000A0F875103000000010C9A8706000000070000000500000003000000060000000213867104000000020CFD9BFD0F350D060000000700000003000000070000000013867100000000000CFD9C03000000070F350CF800000001045489FB1386AD040CFD9BFD0F350D060C9A86F8000000060000000500000003000000060000000200000007000000031207010600000003050000FE135D8109045489F71386AD000CFD9C03000000060000000800000000000000080000000400000005"
theorem small_6215621_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6215621_right_root small_6215621_right_fuel small_6215621_right_count small_6215621_right_encoded = true := by
  decide +kernel
theorem small_6215621_right_covered : CoveredBy scale carrier boxes small_6215621_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6215621_right_root small_6215621_right_fuel small_6215621_right_count small_6215621_right_encoded small_6215621_right_checked

theorem cover_6215621 : CoveredBy scale carrier boxes root_6215621 := by
  apply coveredBy_split_literal root_6215621 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0429.root_6215622 small_6215621_right_root coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0429.cover_6215622
  · exact small_6215621_right_covered
#print axioms cover_6215621

def root_6215615 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6215615_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6215615_left_fuel : Nat := 1
def small_6215615_left_count : Nat := 1
def small_6215615_left_encoded : String := "00000004"
theorem small_6215615_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6215615_left_root small_6215615_left_fuel small_6215615_left_count small_6215615_left_encoded = true := by
  decide +kernel
theorem small_6215615_left_covered : CoveredBy scale carrier boxes small_6215615_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6215615_left_root small_6215615_left_fuel small_6215615_left_count small_6215615_left_encoded small_6215615_left_checked

theorem cover_6215615 : CoveredBy scale carrier boxes root_6215615 := by
  apply coveredBy_split_literal root_6215615 small_6215615_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0430.root_6215621 coord4 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_6215615_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0430.cover_6215621
#print axioms cover_6215615

def root_6203693 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6203693 : CoveredBy scale carrier boxes root_6203693 := by
  apply coveredBy_split_literal root_6203693 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0429.root_6203694 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0430.root_6215615 coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0429.cover_6203694
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0430.cover_6215615
#print axioms cover_6203693

def root_6203687 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6203687_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6203687_left_fuel : Nat := 1
def small_6203687_left_count : Nat := 1
def small_6203687_left_encoded : String := "00000003"
theorem small_6203687_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6203687_left_root small_6203687_left_fuel small_6203687_left_count small_6203687_left_encoded = true := by
  decide +kernel
theorem small_6203687_left_covered : CoveredBy scale carrier boxes small_6203687_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6203687_left_root small_6203687_left_fuel small_6203687_left_count small_6203687_left_encoded small_6203687_left_checked

theorem cover_6203687 : CoveredBy scale carrier boxes root_6203687 := by
  apply coveredBy_split_literal root_6203687 small_6203687_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0430.root_6203693 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6203687_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0430.cover_6203693
#print axioms cover_6203687

def root_6201707 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6201707 : CoveredBy scale carrier boxes root_6201707 := by
  apply coveredBy_split_literal root_6201707 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2335.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0430.root_6203687 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2335.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0430.cover_6203687
#print axioms cover_6201707

def root_6201701 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6201701_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6201701_left_fuel : Nat := 1
def small_6201701_left_count : Nat := 1
def small_6201701_left_encoded : String := "00000002"
theorem small_6201701_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6201701_left_root small_6201701_left_fuel small_6201701_left_count small_6201701_left_encoded = true := by
  decide +kernel
theorem small_6201701_left_covered : CoveredBy scale carrier boxes small_6201701_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6201701_left_root small_6201701_left_fuel small_6201701_left_count small_6201701_left_encoded small_6201701_left_checked

theorem cover_6201701 : CoveredBy scale carrier boxes root_6201701 := by
  apply coveredBy_split_literal root_6201701 small_6201701_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0430.root_6201707 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6201701_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0430.cover_6201707
#print axioms cover_6201701

def root_6200511 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6200511 : CoveredBy scale carrier boxes root_6200511 := by
  apply coveredBy_split_literal root_6200511 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2334.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0430.root_6201701 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2334.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0430.cover_6201701
#print axioms cover_6200511

def root_6200506 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6200506_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6200506_right_fuel : Nat := 1
def small_6200506_right_count : Nat := 1
def small_6200506_right_encoded : String := "00000001"
theorem small_6200506_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6200506_right_root small_6200506_right_fuel small_6200506_right_count small_6200506_right_encoded = true := by
  decide +kernel
theorem small_6200506_right_covered : CoveredBy scale carrier boxes small_6200506_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6200506_right_root small_6200506_right_fuel small_6200506_right_count small_6200506_right_encoded small_6200506_right_checked

theorem cover_6200506 : CoveredBy scale carrier boxes root_6200506 := by
  apply coveredBy_split_literal root_6200506 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0430.root_6200511 small_6200506_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0430.cover_6200511
  · exact small_6200506_right_covered
#print axioms cover_6200506

def root_6224177 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6224177_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6224177_right_fuel : Nat := 34
def small_6224177_right_count : Nat := 319
def small_6224177_right_encoded : String := "0F34D10000000000045489FB1386AD040CFD9BFD0F350D060CFD9C09000000090F350CFE000000040C9A8706000000090F878CFD000000030C9A86FE0000000900000009000000030F34D106000000030CFD9C09000000090F350CFE000000040C9A86FE0F878D0900000009000000040F87510900000004078000F800000008000000090000000213867104000000020CFD9BFD0F350D060CFD9C090F34D0FE00000009000000040F350CFE000000040C9A87060F8750FD0C9A86FE0F878D09078000F8128A7D030AD3577700000009000000090000000100000009000000040F87510900000004078000F8128A7D030AD3577710D13D00022A457B0000000913E1C504000000020B4D4406108010FD0B4D43FE00000009108011090000000408C000F80000000A000000090000000310804CFD000000030B4D43FE10804D090000000900000004108011090000000408C000F811FC25030BE879B71011AD000115233B0000000913F85904000000020BF3E58600000006100928FD0000000300000009000000000000000900000001000000090000000010D10100000000000000000900000001128A41030000000100000009000000030F878CFD000000030C9A86FE0F878D09078000F8128A7D030AD3577710D13D00022A457B0000000913E1C504000000020DE7CA06000000090E6014FD000000030000000900000000000000090000000100000009000000040F87510900000004078000F8128A7D030AD3577710D13D00022A457B13E201040DE7CA06000000090E6014FD00000003000000090000000213E1C504000000020DE7CA060E5FD8FD0B4D43FE10804D090000000900000004108011090000000408C000F811FC25030BE879B71011AD000115233B0000000913F85904000000020D412886000000090EFA4CFD000000030AA6A27E0000000900000009000000001011710000000000000000090000000100000009000000030E6014FD000000030B4D43FE10804D0908C000F811FC25030BE879B70000000900000009000000010000000900000004108011090000000408C000F811FC25030BE879B71011AD000115233B0000000913F85904000000020DAED87D0E9661060AA6A27E0000000910ED710900000004096000F811AABD03000000090000000100000005000000030E962506000000030AA6A27E10EDAD090000000900000004000000050000000010117100000000000000000900000001000000050000000010D1010000000000022A457B0000000913E1C504000000020DE7CA06000000090E6014FD000000030000000900000001128A4103000000010AD357770000000900000009000000030F34D106000000030CFD9C090F34D0FE00000009000000040F350CFE000000040C9A86FE0F878D09078000F8128A7D030AD3577710D13D00022A457B0000000913E1C504000000020AD3577D0000000A0000000A0000000010D10100000000000000000900000001128A41030000000100000009000000040F87510900000004078000F8128A7D030AD3577710D13D00022A457B13E201040AD3577D10D13D060B4D43FE000000080000000900000003000000080000000213E1C504000000020AD3577D10D13D060B4D43FE10804D0908C000F811FC25030BE879B71011AD000115233B000000080000000A0000000000000009000000010000000500000004000000050000000310D1010600000003000000050000000010D1010000000000000000050000000100000005"
theorem small_6224177_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6224177_right_root small_6224177_right_fuel small_6224177_right_count small_6224177_right_encoded = true := by
  decide +kernel
theorem small_6224177_right_covered : CoveredBy scale carrier boxes small_6224177_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6224177_right_root small_6224177_right_fuel small_6224177_right_count small_6224177_right_encoded small_6224177_right_checked

theorem cover_6224177 : CoveredBy scale carrier boxes root_6224177 := by
  apply coveredBy_split_literal root_6224177 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2343.root small_6224177_right_root coord0 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2343.covered
  · exact small_6224177_right_covered
#print axioms cover_6224177

def root_6224172 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6224172_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6224172_right_fuel : Nat := 1
def small_6224172_right_count : Nat := 1
def small_6224172_right_encoded : String := "00000001"
theorem small_6224172_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6224172_right_root small_6224172_right_fuel small_6224172_right_count small_6224172_right_encoded = true := by
  decide +kernel
theorem small_6224172_right_covered : CoveredBy scale carrier boxes small_6224172_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6224172_right_root small_6224172_right_fuel small_6224172_right_count small_6224172_right_encoded small_6224172_right_checked

theorem cover_6224172 : CoveredBy scale carrier boxes root_6224172 := by
  apply coveredBy_split_literal root_6224172 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0430.root_6224177 small_6224172_right_root coord1 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0430.cover_6224177
  · exact small_6224172_right_covered
#print axioms cover_6224172

def root_6224171 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6224171_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6224171_right_fuel : Nat := 21
def small_6224171_right_count : Nat := 101
def small_6224171_right_encoded : String := "135D4503000000010CFD9BF70F350D00045489FB1386AD040CFD9BFD0F350D060CFD9C09000000090F350CFE000000040C9A87000F8750F7000000070000000000000009000000030F34D106000000030CFD9C09000000070F350CFE000000040C9A870000000007000000090000000213867104000000020CFD9BFD0F350D060CFD9C090F34D0FE00000007000000040F350CFE000000040C9A87000F8750F70C9A87060F8750FD000000070000000300000007000000000F878CF7000000000C9A87060F8750FD0C9A86FE0000000700000009000000030F878CFD000000030C9A86FE000000070F87510900000004028000F813D7ED03022A457B0000000913E1C504000000020DE7CA000000000A000000090000000100000005000000030F34D106000000030CFD9C09000000070F350CFE000000040C9A8700000000070F878CF7000000000000000A000000000F34D10000000000045489FB0000000913867104000000020CFD9BFD0F350D060CFD9C09000000090F350CFE0000000400000009000000030F34D106000000030000000A"
theorem small_6224171_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6224171_right_root small_6224171_right_fuel small_6224171_right_count small_6224171_right_encoded = true := by
  decide +kernel
theorem small_6224171_right_covered : CoveredBy scale carrier boxes small_6224171_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6224171_right_root small_6224171_right_fuel small_6224171_right_count small_6224171_right_encoded small_6224171_right_checked

theorem cover_6224171 : CoveredBy scale carrier boxes root_6224171 := by
  apply coveredBy_split_literal root_6224171 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0430.root_6224172 small_6224171_right_root coord1 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0430.cover_6224172
  · exact small_6224171_right_covered
#print axioms cover_6224171

def root_6224165 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6224165_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6224165_left_fuel : Nat := 1
def small_6224165_left_count : Nat := 1
def small_6224165_left_encoded : String := "00000004"
theorem small_6224165_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6224165_left_root small_6224165_left_fuel small_6224165_left_count small_6224165_left_encoded = true := by
  decide +kernel
theorem small_6224165_left_covered : CoveredBy scale carrier boxes small_6224165_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6224165_left_root small_6224165_left_fuel small_6224165_left_count small_6224165_left_encoded small_6224165_left_checked

theorem cover_6224165 : CoveredBy scale carrier boxes root_6224165 := by
  apply coveredBy_split_literal root_6224165 small_6224165_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0430.root_6224171 coord4 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_6224165_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0430.cover_6224171
#print axioms cover_6224165

def root_6224129 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6224129_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6224129_left_fuel : Nat := 6
def small_6224129_left_count : Nat := 15
def small_6224129_left_encoded : String := "120700FE050000F8135D81030CFD9BF70F350D0000000007000000000F34D100000000000000000900000001135D4503000000010000000900000004"
theorem small_6224129_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6224129_left_root small_6224129_left_fuel small_6224129_left_count small_6224129_left_encoded = true := by
  decide +kernel
theorem small_6224129_left_covered : CoveredBy scale carrier boxes small_6224129_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6224129_left_root small_6224129_left_fuel small_6224129_left_count small_6224129_left_encoded small_6224129_left_checked

theorem cover_6224129 : CoveredBy scale carrier boxes root_6224129 := by
  apply coveredBy_split_literal root_6224129 small_6224129_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0430.root_6224165 coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_6224129_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0430.cover_6224165
#print axioms cover_6224129

def root_6224124 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6224124_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6224124_right_fuel : Nat := 1
def small_6224124_right_count : Nat := 1
def small_6224124_right_encoded : String := "00000003"
theorem small_6224124_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6224124_right_root small_6224124_right_fuel small_6224124_right_count small_6224124_right_encoded = true := by
  decide +kernel
theorem small_6224124_right_covered : CoveredBy scale carrier boxes small_6224124_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6224124_right_root small_6224124_right_fuel small_6224124_right_count small_6224124_right_encoded small_6224124_right_checked

theorem cover_6224124 : CoveredBy scale carrier boxes root_6224124 := by
  apply coveredBy_split_literal root_6224124 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0430.root_6224129 small_6224124_right_root coord3 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0430.cover_6224129
  · exact small_6224124_right_covered
#print axioms cover_6224124

def root_6224123 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6224123_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6224123_right_fuel : Nat := 23
def small_6224123_right_count : Nat := 191
def small_6224123_right_encoded : String := "120701060000000308A91309120700FE050000F8135D81030CFD9BF7000000070000000A000000010000000A0000000412073CFE00000004050000F8135D81030CFD9BF70F350D00045489FB1386AD04045489FD1386AD060CFD9C090F34D0FE00000007000000040F350CFE000000040C9A87000F8750F700000007000000000F878CF7000000000C9A86FE000000080F87510900000004078000F800000008000000080000000313867106000000030CFD9C090F34D0FE00000007000000040F350CFE000000040C9A87000F8750F70C9A86FE000000070F87510900000004078000F800000006000000060000000000000008000000021386710400000002045489FD1386AD060CFD9C090000000A0F350CFE000000040C9A87000F8750F70C9A86FE000000070F87510900000004078000F8128A7D03022A457B000000070000000A000000010000000A000000000F878CF7000000000C9A86FE0F878D090000000A000000040F87510900000004078000F8128A7D03022A457B13E20104067ECE7D0000000800000008000000020000000A00000001000000050000000313867106000000030CFD9C090000000A0F350CFE000000040C9A87000F8750F70C9A86FE000000070F87510900000004078000F8128A7D030000000A0000000100000005000000000F878CF7000000000000000A000000000F34D10000000000045489FB1386AD04045489FD1386AD060CFD9C0900000009000000080000000300000008000000021386710400000002045489FD1386AD060CFD9C090000000A0F350CFE000000040C9A86FE0F878D090000000A00000004000000050000000313867106000000030000000A00000001135D4503000000010CFD9BF70F350D00045489FB1386AD04045489FD1386AD060CFD9C09000000070F350CFE000000040C9A870000000007000000090000000313867106000000030CFD9C09000000070F350CFE000000040C9A870000000007000000050000000213867104000000020000000A000000000F34D10000000000045489FB000000090000000A"
theorem small_6224123_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6224123_right_root small_6224123_right_fuel small_6224123_right_count small_6224123_right_encoded = true := by
  decide +kernel
theorem small_6224123_right_covered : CoveredBy scale carrier boxes small_6224123_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6224123_right_root small_6224123_right_fuel small_6224123_right_count small_6224123_right_encoded small_6224123_right_checked

theorem cover_6224123 : CoveredBy scale carrier boxes root_6224123 := by
  apply coveredBy_split_literal root_6224123 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0430.root_6224124 small_6224123_right_root coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0430.cover_6224124
  · exact small_6224123_right_covered
#print axioms cover_6224123

def root_6224117 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6224117_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6224117_left_fuel : Nat := 1
def small_6224117_left_count : Nat := 1
def small_6224117_left_encoded : String := "00000002"
theorem small_6224117_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6224117_left_root small_6224117_left_fuel small_6224117_left_count small_6224117_left_encoded = true := by
  decide +kernel
theorem small_6224117_left_covered : CoveredBy scale carrier boxes small_6224117_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6224117_left_root small_6224117_left_fuel small_6224117_left_count small_6224117_left_encoded small_6224117_left_checked

theorem cover_6224117 : CoveredBy scale carrier boxes root_6224117 := by
  apply coveredBy_split_literal root_6224117 small_6224117_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0430.root_6224123 coord2 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_6224117_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0430.cover_6224123
#print axioms cover_6224117

def root_6223717 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6223717_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6223717_left_fuel : Nat := 20
def small_6223717_left_count : Nat := 183
def small_6223717_left_encoded : String := "12073D0408A912FD12073D0608A91309120700FE050000F800000009000000090000000412073CFE00000004050000F8135D81030CFD9BF70F350D000CFD9BFB0F350D040CFD9BFD0F350D060CFD9C09000000090F350CFE000000040C9A87000F8750F7000000090000000000000009000000030F34D106000000030CFD9C09000000090F350CFE000000040C9A87000F8750F7000000080000000000000008000000020F34D104000000020CFD9BFD0F350D060CFD9C090F34D0FE00000007000000040F350CFE000000040C9A87000F8750F70C9A87060F8750FD000000070000000300000007000000000F878CF7000000000C9A8706000000090F878CFD0000000300000009000000030F34D106000000030CFD9C090F34D0FE00000007000000040F350CFE000000040C9A87000F8750F700000007000000000F878CF7000000000C9A86FE0000000800000009000000000F34D100000000000CFD9BFB000000090F34D104000000020CFD9BFD0F350D0600000009000000030000000900000001135D4503000000010CFD9BF70F350D000CFD9BFB000000090F34D104000000020CFD9BFD0F350D06000000090000000300000009000000000F34D100000000000000000900000003120701060000000308A91309120700FE050000F8135D81030CFD9BF70F350D0000000007000000000000000800000001135D4503000000010CFD9BF700000007000000090000000412073CFE00000004050000F8135D81030CFD9BF70F350D000CFD9BFB000000080F34D10400000002045489FD1386AD060CFD9C090F34D0FE00000007000000040F350CFE000000040C9A87000F8750F700000007000000000000000800000003138671060000000300000008000000000F34D100000000000000000800000001135D4503000000010CFD9BF70F350D000CFD9BFB0F350D04045489FD0000000900000008000000020F34D1040000000200000009000000000F34D100000000000000000800000002"
theorem small_6223717_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6223717_left_root small_6223717_left_fuel small_6223717_left_count small_6223717_left_encoded = true := by
  decide +kernel
theorem small_6223717_left_covered : CoveredBy scale carrier boxes small_6223717_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6223717_left_root small_6223717_left_fuel small_6223717_left_count small_6223717_left_encoded small_6223717_left_checked

theorem cover_6223717 : CoveredBy scale carrier boxes root_6223717 := by
  apply coveredBy_split_literal root_6223717 small_6223717_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0430.root_6224117 coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_6223717_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0430.cover_6224117
#print axioms cover_6223717

def root_6223712 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6223712_right_root : ZRayBox := fun j => (#[⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6223712_right_fuel : Nat := 1
def small_6223712_right_count : Nat := 1
def small_6223712_right_encoded : String := "00000000"
theorem small_6223712_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6223712_right_root small_6223712_right_fuel small_6223712_right_count small_6223712_right_encoded = true := by
  decide +kernel
theorem small_6223712_right_covered : CoveredBy scale carrier boxes small_6223712_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6223712_right_root small_6223712_right_fuel small_6223712_right_count small_6223712_right_encoded small_6223712_right_checked

theorem cover_6223712 : CoveredBy scale carrier boxes root_6223712 := by
  apply coveredBy_split_literal root_6223712 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0430.root_6223717 small_6223712_right_root coord0 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0430.cover_6223717
  · exact small_6223712_right_covered
#print axioms cover_6223712

def root_6223711 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6223711_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6223711_right_fuel : Nat := 21
def small_6223711_right_count : Nat := 113
def small_6223711_right_encoded : String := "120701000000000008A912FB12073D0408A912FD12073D0608A913090000000912073CFE00000004050000F8135D8103045489F70000000900000009000000010000000900000003120701060000000308A91309000000090000000800000002120701040000000208A912FD12073D0608A913090000000912073CFE00000004050000F8135D8103045489F71386AD00045489FB1386AD040CFD9BFD0F350D060000000900000003000000090000000213867104000000020CFD9BFD0F350D060CFD9C09000000090F350CFE000000040C9A8706000000090F878CFD000000030C9A86FE0000000900000009000000030F34D106000000030CFD9C09000000090F350CFE000000040C9A86FE0000000900000005000000001386710000000000045489FB0000000913867104000000020CFD9BFD0F350D060CFD9C09000000090F350CFE0000000400000009000000030000000900000001135D450300000001045489F7000000090000000900000003120701060000000308A913090000000912073CFE00000004050000F8135D8103045489F71386AD00045489FB000000081386710400000002045489FD0000000A0000000800000000000000080000000100000005"
theorem small_6223711_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6223711_right_root small_6223711_right_fuel small_6223711_right_count small_6223711_right_encoded = true := by
  decide +kernel
theorem small_6223711_right_covered : CoveredBy scale carrier boxes small_6223711_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6223711_right_root small_6223711_right_fuel small_6223711_right_count small_6223711_right_encoded small_6223711_right_checked

theorem cover_6223711 : CoveredBy scale carrier boxes root_6223711 := by
  apply coveredBy_split_literal root_6223711 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0430.root_6223712 small_6223711_right_root coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0430.cover_6223712
  · exact small_6223711_right_covered
#print axioms cover_6223711

def root_6223706 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6223706_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6223706_right_fuel : Nat := 1
def small_6223706_right_count : Nat := 1
def small_6223706_right_encoded : String := "00000004"
theorem small_6223706_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6223706_right_root small_6223706_right_fuel small_6223706_right_count small_6223706_right_encoded = true := by
  decide +kernel
theorem small_6223706_right_covered : CoveredBy scale carrier boxes small_6223706_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6223706_right_root small_6223706_right_fuel small_6223706_right_count small_6223706_right_encoded small_6223706_right_checked

theorem cover_6223706 : CoveredBy scale carrier boxes root_6223706 := by
  apply coveredBy_split_literal root_6223706 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0430.root_6223711 small_6223706_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0430.cover_6223711
  · exact small_6223706_right_covered
#print axioms cover_6223706

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0430
