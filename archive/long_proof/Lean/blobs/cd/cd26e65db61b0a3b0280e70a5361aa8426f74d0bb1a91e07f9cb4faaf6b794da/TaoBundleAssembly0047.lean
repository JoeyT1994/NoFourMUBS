import TaoBundleAssembly0043
import TaoBundleAssembly0046
import TaoBundleChunkBatch0193
import TaoBundleChunkBatch0194
import TaoBundleChunkBatch0195
import TaoBundleChunkBatch0196
import TaoBundleChunkBatch0197
import TaoBundleChunkBatch0198
import TaoBundleChunkBatch0199
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0047
def root_1973327 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1973327_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1973327_right_fuel : Nat := 20
def small_1973327_right_count : Nat := 115
def small_1973327_right_encoded : String := "12073D0208A91305120700FA050000F6135D80F70000000005000106135D44FD050000FE000000060000000900000003135D80FD00000003050000FE135D80FF000000040CFD9C030F34D1020000000104548A05138670FA078000F6128A7CF70000000007800106128A40FD0000000900000003128A7CFD00000003078000FE128A7CFF000000040000000500000009128A40F70780010600000006128A7CFD00000003078000FE00000006128A40FF000000060000000400000000000000021386ACFA00000002078000F600000005000000060F350D020000000500000001135D44FF0CFD9C030F34D1020000000104548A05000000091386ACFA00000002000000090000000900000004135D44F70500010600000006135D80FD00000003050000FE00000006135D44FF0000000600000004000000000000000212073CFA00000002050000F6135D80F70000000005000106135D44FD0000000600000003135D80FD00000003050000FE135D80FF000000040CFD9C030F34D102000000010CFD9C050F34D0FA00000005000000020000000500000005135D44FF0CFD9C030F34D102000000010CFD9C050F34D0FA00000006000000020000000600000006000000040000000600000001"
theorem small_1973327_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1973327_right_root small_1973327_right_fuel small_1973327_right_count small_1973327_right_encoded = true := by
  decide +kernel
theorem small_1973327_right_covered : CoveredBy scale carrier boxes small_1973327_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1973327_right_root small_1973327_right_fuel small_1973327_right_count small_1973327_right_encoded small_1973327_right_checked

theorem cover_1973327 : CoveredBy scale carrier boxes root_1973327 := by
  apply coveredBy_split_literal root_1973327 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0046.root_1973328 small_1973327_right_root coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0046.cover_1973328
  · exact small_1973327_right_covered
#print axioms cover_1973327

def root_1973322 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1973322_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1973322_right_fuel : Nat := 1
def small_1973322_right_count : Nat := 1
def small_1973322_right_encoded : String := "00000004"
theorem small_1973322_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1973322_right_root small_1973322_right_fuel small_1973322_right_count small_1973322_right_encoded = true := by
  decide +kernel
theorem small_1973322_right_covered : CoveredBy scale carrier boxes small_1973322_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1973322_right_root small_1973322_right_fuel small_1973322_right_count small_1973322_right_encoded small_1973322_right_checked

theorem cover_1973322 : CoveredBy scale carrier boxes root_1973322 := by
  apply coveredBy_split_literal root_1973322 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0047.root_1973327 small_1973322_right_root coord4 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0047.cover_1973327
  · exact small_1973322_right_covered
#print axioms cover_1973322

def root_1966676 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1966676 : CoveredBy scale carrier boxes root_1966676 := by
  apply coveredBy_split_literal root_1966676 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0046.root_1966677 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0047.root_1973322 coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0046.cover_1966677
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0047.cover_1973322
#print axioms cover_1966676

def root_1966671 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1966671_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1966671_right_fuel : Nat := 1
def small_1966671_right_count : Nat := 1
def small_1966671_right_encoded : String := "00000003"
theorem small_1966671_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1966671_right_root small_1966671_right_fuel small_1966671_right_count small_1966671_right_encoded = true := by
  decide +kernel
theorem small_1966671_right_covered : CoveredBy scale carrier boxes small_1966671_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1966671_right_root small_1966671_right_fuel small_1966671_right_count small_1966671_right_encoded small_1966671_right_checked

theorem cover_1966671 : CoveredBy scale carrier boxes root_1966671 := by
  apply coveredBy_split_literal root_1966671 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0047.root_1966676 small_1966671_right_root coord3 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0047.cover_1966676
  · exact small_1966671_right_covered
#print axioms cover_1966671

def root_1984872 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1984872 : CoveredBy scale carrier boxes root_1984872 := by
  apply coveredBy_split_literal root_1984872 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0771.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0772.root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0771.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0772.covered
#print axioms cover_1984872

def root_1984866 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1984866_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1984866_left_fuel : Nat := 1
def small_1984866_left_count : Nat := 1
def small_1984866_left_encoded : String := "00000003"
theorem small_1984866_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1984866_left_root small_1984866_left_fuel small_1984866_left_count small_1984866_left_encoded = true := by
  decide +kernel
theorem small_1984866_left_covered : CoveredBy scale carrier boxes small_1984866_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1984866_left_root small_1984866_left_fuel small_1984866_left_count small_1984866_left_encoded small_1984866_left_checked

theorem cover_1984866 : CoveredBy scale carrier boxes root_1984866 := by
  apply coveredBy_split_literal root_1984866 small_1984866_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0047.root_1984872 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_1984866_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0047.cover_1984872
#print axioms cover_1984866

def root_1966670 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1966670 : CoveredBy scale carrier boxes root_1966670 := by
  apply coveredBy_split_literal root_1966670 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0047.root_1966671 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0047.root_1984866 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0047.cover_1966671
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0047.cover_1984866
#print axioms cover_1966670

def root_1966665 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1966665_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1966665_right_fuel : Nat := 1
def small_1966665_right_count : Nat := 1
def small_1966665_right_encoded : String := "00000002"
theorem small_1966665_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1966665_right_root small_1966665_right_fuel small_1966665_right_count small_1966665_right_encoded = true := by
  decide +kernel
theorem small_1966665_right_covered : CoveredBy scale carrier boxes small_1966665_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1966665_right_root small_1966665_right_fuel small_1966665_right_count small_1966665_right_encoded small_1966665_right_checked

theorem cover_1966665 : CoveredBy scale carrier boxes root_1966665 := by
  apply coveredBy_split_literal root_1966665 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0047.root_1966670 small_1966665_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0047.cover_1966670
  · exact small_1966665_right_covered
#print axioms cover_1966665

def root_1990108 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1990108_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1990108_left_fuel : Nat := 30
def small_1990108_left_count : Nat := 447
def small_1990108_left_encoded : String := "115224FF0000000408A91303120701020000000108A912FD12073D0608A912FF12073CFE00000004050000F6135D80F700000000050000FA135D810504548A0313867102000000010CFD9BFD0F350D060CFD9BFF0F350CFE000000040C9A87060F8750FD0C9A86FE000000050F8750FF078000F600000005128A40F7078000FA00000005000000060000000000000004000000030F878CFD000000030C9A86FE000000050F8750FF078000F600000005128A40F7078000FA00000005128A41050000000200000005000000000000000400000005000000030F34D106000000030CFD9BFF0F350CFE000000040C9A86FE000000050F8750FF078000F600000005128A40F7000000090000000000000004000000051386AD020CFD9BFD0F350D060000000500000003000000050000000100000002135D45050000000204548A0313867102000000010CFD9BFD0F350D060CFD9BFF0F350CFE000000040C9A87060F8750FD0C9A86FE0F878CFF00000004000000050F8750FF078000F6128A7CF700000000000000050000000600000004000000030F878CFD000000030C9A86FE0F878CFF00000004000000050F8750FF078000F6128A7CF700000000028000FA0000000513D7B10500000002022A458313E1C502000000010DE7CA06000000050E6014FD000000030000000500000005128A40F7028000FA13D7ED05022A458300000007000000050000000213D7B10500000002022A458313E1C502000000010DE7CA060E5FD8FD00000006000000030E6014FD00000003000000090000000600000000000000040F34D0FE0000000500000004000000030F34D106000000030CFD9BFF0F350CFE000000040C9A86FE0F878CFF00000004000000080F8750FF078000F6128A7CF700000000028000FA0000000513D7B10500000002022A45830000000900000005128A40F7028000FA00000009000000080000000000000004000000091386AD020CFD9BFD0F350D060CFD9BFF0F350CFE000000040C9A8706000000050F878CFD000000030000000500000005000000030F34D106000000030CFD9BFF0F350CFE000000040C9A86FE000000050F8750FF078000F60000000500000008000000040000000500000001135D44F7050000FA135D810504548A0313867102000000010CFD9BFD0F350D060CFD9BFF0F350CFE000000040C9A87060F8750FD0C9A86FE000000060F8750FF0000000600000004000000030F878CFD000000030C9A86FE0F878CFF00000004028000F600000005000000060F8750FF00000007000000040F34D0FE0000000500000004000000030F34D106000000030CFD9BFF0F350CFE000000040C9A86FE000000080F8750FF0000000700000004000000091386AD020CFD9BFD0F350D060CFD9BFF0F350CFE000000040C9A8706000000060F878CFD00000003000000060F34D0FE0000000500000004000000030F34D106000000030CFD9BFF0F350CFE000000040C9A86FE000000080F8750FF028000F60000000800000008000000040F34D0FE00000005000000040000000100000002135D45050000000204548A0313867102000000010CFD9BFD0F350D060CFD9BFF0F350CFE000000040C9A87060F8750FD00000006000000030F878CFD000000030C9A86FE0F878CFF00000004000000060F8750FF028000F613D7ECF700000000028000FA000000060000000600000006000000040F34D0FE0C9A8706000000050000000800000004000000030F34D106000000030CFD9BFF0F350CFE000000040C9A86FE000000080F8750FF0000000800000004000000091386AD020CFD9BFD0F350D060CFD9BFF000000060F34D0FE0000000500000004000000030F34D106000000030CFD9BFF00000008000000080000000100000000120700FE050000F600000005135D44F7050000FA00000005135D45050000000200000005000000000000000400000003120701060000000308A912FF12073CFE00000004050000F6135D80F700000000050000FA00000005135D45050000000204548A030000000800000008135D44F7050000FA135D810504548A030000000800000008000000020000000800000000120700FE000000050000000412073D0208A912FD12073D0608A912FF12073CFE00000004050000F6135D80F700000000050000FA00000005135D45050000000200000005135D44F7050000FA135D81050CFD9C030F34D102000000010CFD9BFD0F350D060000000500000003000000050000000500000002135D4505000000020CFD9C030F34D102000000010CFD9BFD0F350D0600000006000000030F34D106000000030CFD9BFF00000006000000080F350D02000000050000000100000000120700FE000000050000000400000003120701060000000308A912FF12073CFE00000004050000F600000005135D44F7050000FA000000050000000800000000120700FE000000050000000400000001"
theorem small_1990108_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1990108_left_root small_1990108_left_fuel small_1990108_left_count small_1990108_left_encoded = true := by
  decide +kernel
theorem small_1990108_left_covered : CoveredBy scale carrier boxes small_1990108_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1990108_left_root small_1990108_left_fuel small_1990108_left_count small_1990108_left_encoded small_1990108_left_checked

theorem cover_1990108 : CoveredBy scale carrier boxes root_1990108 := by
  apply coveredBy_split_literal root_1990108 small_1990108_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0773.root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact small_1990108_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0773.covered
#print axioms cover_1990108

def root_1990102 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1990102_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1990102_left_fuel : Nat := 1
def small_1990102_left_count : Nat := 1
def small_1990102_left_encoded : String := "00000003"
theorem small_1990102_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1990102_left_root small_1990102_left_fuel small_1990102_left_count small_1990102_left_encoded = true := by
  decide +kernel
theorem small_1990102_left_covered : CoveredBy scale carrier boxes small_1990102_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1990102_left_root small_1990102_left_fuel small_1990102_left_count small_1990102_left_encoded small_1990102_left_checked

theorem cover_1990102 : CoveredBy scale carrier boxes root_1990102 := by
  apply coveredBy_split_literal root_1990102 small_1990102_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0047.root_1990108 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_1990102_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0047.cover_1990108
#print axioms cover_1990102

def root_1989686 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1989686_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1989686_left_fuel : Nat := 23
def small_1989686_left_count : Nat := 203
def small_1989686_left_encoded : String := "1151E8FD0A0000FE115224FF0000000408A91303120701020000000108A912FF12073CFE00000004050000F6135D80F700000000050000FA135D81050500010600000005135D80FD0000000304548A0313867102000000010CFD9BFF0F350CFE000000040C9A86FE000000050F8750FF078000F6000000050000000600000004000000050000000500000002135D4505000000020500010600000005135D80FD0000000304548A0313867102000000010CFD9BFF0F350CFE000000040C9A86FE000000050F8750FF00000006000000040000000500000005135D44F7050000FA135D81050500010600000006135D80FD0000000304548A0313867102000000010CFD9BFF00000006000000060000000600000002135D4505000000020000000600000000120700FE000000050000000412073D0208A912FF12073CFE00000004050000F6000000050000000600000005000000011151E8FF08A913031207010200000001050000F6135D80F700000000050000FA135D810505000106135D44FD050000FE000000060000000800000003135D80FD00000003050000FE135D80FF0000000404548A031386710200000001078000F6128A7CF700000000078000FA128A7D050780010600000005128A7CFD000000030000000700000002128A4105000000020780010600000006128A7CFD00000003078000FE0000000500000007128A40F7078000FA00000006000000060000000000000006135D44FF04548A03000000071386AD02078000F60000000800000006000000010000000400000002135D45050000000205000106135D44FD050000FE000000060000000800000003135D80FD00000003050000FE135D80FF0000000404548A031386710200000001078000F6000000080000000600000006135D44FF04548A03000000070000000800000004135D44F7050000FA135D81050500010600000006135D80FD00000003050000FE000000060000000700000002135D4505000000020500010600000006135D80FD00000003050000FE00000006000000070000000012073D02050000F6135D80F700000000050000FA00000006135D4505000000020000000600000006000000010000000400000003"
theorem small_1989686_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1989686_left_root small_1989686_left_fuel small_1989686_left_count small_1989686_left_encoded = true := by
  decide +kernel
theorem small_1989686_left_covered : CoveredBy scale carrier boxes small_1989686_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1989686_left_root small_1989686_left_fuel small_1989686_left_count small_1989686_left_encoded small_1989686_left_checked

theorem cover_1989686 : CoveredBy scale carrier boxes root_1989686 := by
  apply coveredBy_split_literal root_1989686 small_1989686_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0047.root_1990102 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_1989686_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0047.cover_1990102
#print axioms cover_1989686

def root_1989680 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1989680_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1989680_left_fuel : Nat := 1
def small_1989680_left_count : Nat := 1
def small_1989680_left_encoded : String := "00000002"
theorem small_1989680_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1989680_left_root small_1989680_left_fuel small_1989680_left_count small_1989680_left_encoded = true := by
  decide +kernel
theorem small_1989680_left_covered : CoveredBy scale carrier boxes small_1989680_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1989680_left_root small_1989680_left_fuel small_1989680_left_count small_1989680_left_encoded small_1989680_left_checked

theorem cover_1989680 : CoveredBy scale carrier boxes root_1989680 := by
  apply coveredBy_split_literal root_1989680 small_1989680_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0047.root_1989686 coord2 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_1989680_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0047.cover_1989686
#print axioms cover_1989680

def root_1966664 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1966664 : CoveredBy scale carrier boxes root_1966664 := by
  apply coveredBy_split_literal root_1966664 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0047.root_1966665 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0047.root_1989680 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0047.cover_1966665
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0047.cover_1989680
#print axioms cover_1966664

def root_1966659 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1966659_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1966659_right_fuel : Nat := 1
def small_1966659_right_count : Nat := 1
def small_1966659_right_encoded : String := "00000001"
theorem small_1966659_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1966659_right_root small_1966659_right_fuel small_1966659_right_count small_1966659_right_encoded = true := by
  decide +kernel
theorem small_1966659_right_covered : CoveredBy scale carrier boxes small_1966659_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1966659_right_root small_1966659_right_fuel small_1966659_right_count small_1966659_right_encoded small_1966659_right_checked

theorem cover_1966659 : CoveredBy scale carrier boxes root_1966659 := by
  apply coveredBy_split_literal root_1966659 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0047.root_1966664 small_1966659_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0047.cover_1966664
  · exact small_1966659_right_covered
#print axioms cover_1966659

def root_1966495 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1966495_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1966495_left_fuel : Nat := 18
def small_1966495_left_count : Nat := 79
def small_1966495_left_encoded : String := "1151E903000000010A0000FA115225050A0001061151E8FD0A0000FE115224FF0000000408A91305120700FA08A912FF000000060000000500000002000000051151E8FF000000060000000400000003115224FD000000030A0000FE115224FF00000004000000051151E8FF08A91305120700FA08A912FD12073D06050000F600000005135D44F70500010200000005135D8103050000FE00000005135D44FF0000000600000004000000010000000000000003000000050000000212073CFA0000000208A912FD12073D06050000F60000000500000006000000030000000500000004000000021151E905000000020A00010600000005115224FD000000030A0000FE000000051151E8FF08A912FD12073D06050000F60000000500000006000000031207010600000003050000F6000000050000000800000004"
theorem small_1966495_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1966495_left_root small_1966495_left_fuel small_1966495_left_count small_1966495_left_encoded = true := by
  decide +kernel
theorem small_1966495_left_covered : CoveredBy scale carrier boxes small_1966495_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1966495_left_root small_1966495_left_fuel small_1966495_left_count small_1966495_left_encoded small_1966495_left_checked

theorem cover_1966495 : CoveredBy scale carrier boxes root_1966495 := by
  apply coveredBy_split_literal root_1966495 small_1966495_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0047.root_1966659 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_1966495_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0047.cover_1966659
#print axioms cover_1966495

def root_1966490 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1966490_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1966490_right_fuel : Nat := 1
def small_1966490_right_count : Nat := 1
def small_1966490_right_encoded : String := "00000000"
theorem small_1966490_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1966490_right_root small_1966490_right_fuel small_1966490_right_count small_1966490_right_encoded = true := by
  decide +kernel
theorem small_1966490_right_covered : CoveredBy scale carrier boxes small_1966490_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1966490_right_root small_1966490_right_fuel small_1966490_right_count small_1966490_right_encoded small_1966490_right_checked

theorem cover_1966490 : CoveredBy scale carrier boxes root_1966490 := by
  apply coveredBy_split_literal root_1966490 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0047.root_1966495 small_1966490_right_root coord0 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0047.cover_1966495
  · exact small_1966490_right_covered
#print axioms cover_1966490

def root_1959970 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1959970 : CoveredBy scale carrier boxes root_1959970 := by
  apply coveredBy_split_literal root_1959970 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0046.root_1959971 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0047.root_1966490 coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0046.cover_1959971
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0047.cover_1966490
#print axioms cover_1959970

def root_1959969 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1959969 : CoveredBy scale carrier boxes root_1959969 := by
  apply coveredBy_split_literal root_1959969 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0047.root_1959970 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0774.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0047.cover_1959970
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0774.covered
#print axioms cover_1959969

def root_1996887 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1996887 : CoveredBy scale carrier boxes root_1996887 := by
  apply coveredBy_split_literal root_1996887 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0776.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0777.root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0776.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0777.covered
#print axioms cover_1996887

def root_1996882 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1996882_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1996882_right_fuel : Nat := 1
def small_1996882_right_count : Nat := 1
def small_1996882_right_encoded : String := "00000001"
theorem small_1996882_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1996882_right_root small_1996882_right_fuel small_1996882_right_count small_1996882_right_encoded = true := by
  decide +kernel
theorem small_1996882_right_covered : CoveredBy scale carrier boxes small_1996882_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1996882_right_root small_1996882_right_fuel small_1996882_right_count small_1996882_right_encoded small_1996882_right_checked

theorem cover_1996882 : CoveredBy scale carrier boxes root_1996882 := by
  apply coveredBy_split_literal root_1996882 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0047.root_1996887 small_1996882_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0047.cover_1996887
  · exact small_1996882_right_covered
#print axioms cover_1996882

def root_1995250 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1995250 : CoveredBy scale carrier boxes root_1995250 := by
  apply coveredBy_split_literal root_1995250 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0775.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0047.root_1996882 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0775.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0047.cover_1996882
#print axioms cover_1995250

def root_1995244 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1995244_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1995244_left_fuel : Nat := 1
def small_1995244_left_count : Nat := 1
def small_1995244_left_encoded : String := "00000000"
theorem small_1995244_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1995244_left_root small_1995244_left_fuel small_1995244_left_count small_1995244_left_encoded = true := by
  decide +kernel
theorem small_1995244_left_covered : CoveredBy scale carrier boxes small_1995244_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1995244_left_root small_1995244_left_fuel small_1995244_left_count small_1995244_left_encoded small_1995244_left_checked

theorem cover_1995244 : CoveredBy scale carrier boxes root_1995244 := by
  apply coveredBy_split_literal root_1995244 small_1995244_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0047.root_1995250 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_1995244_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0047.cover_1995250
#print axioms cover_1995244

def root_2002771 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2002771_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2002771_right_fuel : Nat := 27
def small_2002771_right_count : Nat := 481
def small_2002771_right_encoded : String := "120701060000000308A912FF12073D08050000F6135D80F70000000005000102135D450300000001050000FA135D8105045489FD1386AD060CFD9BFF0000000A0F34D108000000040000000A000000030000000A00000002135D450500000002045489FD1386AD060CFD9BFF0F350D080C9A87080F8750FF0000000A000000040F878CFF00000004078000F60000000A128A40F70000000A00000000000000040F34D10800000004078000F60000000A128A40F70280010213D7B103000000010000000A0000000A000000000000000313867106000000030CFD9BFF0000000A0F34D108000000040000000A135D8103050000FA135D8105045489FD1386AD060CFD9BFF0000000A0F34D108000000040000000A000000030000000A00000002135D450500000002045489FD1386AD060CFD9BFF0F350D080C9A87080F8750FF0000000A000000040F878CFF00000004078000F60000000A128A40F70000000A00000000000000040F34D10800000004078000F60000000A128A40F707800102128A4103000000010000000A0000000A000000000000000313867106000000030CFD9BFF0000000A0F34D108000000040000000600000001135D44F705000102135D450300000001050000FA135D8105045489FD1386AD060CFD9BFF0F350D080C9A87080F8750FF0000000A000000040F878CFF00000004028000F60000000A13D7B0F70000000A00000000000000040F34D10800000004028000F60000000A13D7B0F70280010213D7B103000000010000000A00000007000000000000000313867106000000030CFD9BFF0000000A0F34D108000000040000000A00000002135D450500000002045489FD1386AD060CFD9BFF0F350D080C9A87080F8750FF028000F60000000800000006000000040F878CFF00000004028000F613D7ECF7000000000280010213D7B10300000001028000FA0000000A0000000813D7ED03028000FA0000000A13D7B10500000002067ECE7D12EA95060000000A00000003000000080000000113D7B0F7028001020000000813D7ED03028000FA00000009000000090000000100000000000000040F34D10800000004028000F613D7ECF7000000000280010213D7B10300000001028000FA0000000A13D7B10500000002067ECE7D12EA95060AD3577F10D13D0803C000F600000008000000080000000410D101080000000403C000F60000000A13A510F701400102000000080000000500000000000000030000000A13D7ED03028000FA0000000A13D7B10500000002067ECE7D12EA95060AD3577F0000000A10D101080000000400000005000000030000000A0000000113D7B0F70280010213D7B10300000001028000FA13D7ED05067ECE7D12EA95060AD3577F0000000A00000007000000030000000A0000000213D7B10500000002067ECE7D12EA95060AD3577F10D13D08000000080000000410D1010800000004000000050000000312EA5906000000030000000513D7ED03028000FA13D7ED05067ECE7D12EA950600000007000000030000000A000000020000000500000001000000000000000313867106000000030CFD9BFF0F350D0800000008000000040F34D10800000004028000F60000000A13D7B0F702800102000000080000000500000000135D8103050000FA135D8105045489FD1386AD060CFD9BFF0F350D080C9A87080F8750FF00000009000000040F878CFF00000004028000F60000000A00000009000000040F34D10800000004000000070000000313867106000000030CFD9BFF0000000A0F34D108000000040000000A00000002135D450500000002045489FD1386AD060CFD9BFF0F350D080C9A87080F8750FF00000009000000040F878CFF00000004028000F613D7ECF70000000007800102128A410300000001028000FA00000009000000090000000900000009000000040F34D10800000004028000F613D7ECF70000000007800102128A410300000001028000FA0000000A0000000500000005000000050000000313867106000000030CFD9BFF0F350D080C9A87080F8750FF00000009000000040000000A000000040F34D10800000004000000050000000100000000000000041207010800000004050000F6135D80F70000000005000102135D450300000001050000FA135D8105045489FD000000070000000A00000002135D450500000002045489FD1386AD06045489FF1386AD08078000F600000006128A40F70280010213D7B10300000001028000FA0000000700000006000000060000000000000004000000060000000300000006135D8103050000FA000000070000000600000001135D44F705000102135D450300000001050000FA135D8105045489FD0000000713867106000000030000000A00000002135D450500000002045489FD1386AD06045489FF1386AD08028000F613D7ECF7000000000280010213D7B10300000001028000FA0000000713D7B10500000002067ECE7D00000007000000060000000713D7B0F70280010213D7B10300000001028000FA000000070000000500000005000000000000000400000007000000031386710600000003045489FF1386AD08028000F600000006000000050000000400000006135D8103050000FA00000007000000050000000100000000"
theorem small_2002771_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2002771_right_root small_2002771_right_fuel small_2002771_right_count small_2002771_right_encoded = true := by
  decide +kernel
theorem small_2002771_right_covered : CoveredBy scale carrier boxes small_2002771_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2002771_right_root small_2002771_right_fuel small_2002771_right_count small_2002771_right_encoded small_2002771_right_checked

theorem cover_2002771 : CoveredBy scale carrier boxes root_2002771 := by
  apply coveredBy_split_literal root_2002771 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0778.root small_2002771_right_root coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0778.covered
  · exact small_2002771_right_covered
#print axioms cover_2002771

def root_2002765 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2002765_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2002765_left_fuel : Nat := 1
def small_2002765_left_count : Nat := 1
def small_2002765_left_encoded : String := "00000004"
theorem small_2002765_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2002765_left_root small_2002765_left_fuel small_2002765_left_count small_2002765_left_encoded = true := by
  decide +kernel
theorem small_2002765_left_covered : CoveredBy scale carrier boxes small_2002765_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2002765_left_root small_2002765_left_fuel small_2002765_left_count small_2002765_left_encoded small_2002765_left_checked

theorem cover_2002765 : CoveredBy scale carrier boxes root_2002765 := by
  apply coveredBy_split_literal root_2002765 small_2002765_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0047.root_2002771 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_2002765_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0047.cover_2002771
#print axioms cover_2002765

def root_2002483 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2002483_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2002483_left_fuel : Nat := 21
def small_2002483_left_count : Nat := 137
def small_2002483_left_encoded : String := "1151E8FF08A912FD12073D06050000F6135D80F70000000005000102135D450300000001050000FA00000005135D45050000000200000006135D8103050000FA135D81050500010800000005135D80FF000000040CFD9BFD000000060F34D10600000003078000F600000005128A40F70780010200000005000000090000000000000002135D45050000000205000108135D44FF0000000600000004135D80FF000000040CFD9BFD000000060F34D10600000003078000F6128A7CF70000000007800102128A410300000001028000FA0000000513D7B1050000000207800108000000050000000A128A7D03028000FA000000090000000900000001128A40F70780010200000006000000090000000000000001135D44F70500010200000006135D8103050000FA00000006135D450500000002000000060000000100000000000000031207010600000003050000F6135D80F70000000005000102135D450300000001050000FA0000000500000008135D8103050000FA0000000A135D45050000000205000108000000080000000A00000001135D44F705000102135D450300000001050000FA135D81050500010800000005135D80FF00000004045489FD00000006000000080000000200000008135D8103050000FA135D810505000108135D44FF0000000800000004135D80FF00000004045489FD000000090000000A00000002135D450500000002050001080000000800000009000000010000000000000004"
theorem small_2002483_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2002483_left_root small_2002483_left_fuel small_2002483_left_count small_2002483_left_encoded = true := by
  decide +kernel
theorem small_2002483_left_covered : CoveredBy scale carrier boxes small_2002483_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2002483_left_root small_2002483_left_fuel small_2002483_left_count small_2002483_left_encoded small_2002483_left_checked

theorem cover_2002483 : CoveredBy scale carrier boxes root_2002483 := by
  apply coveredBy_split_literal root_2002483 small_2002483_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0047.root_2002765 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_2002483_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0047.cover_2002765
#print axioms cover_2002483

def root_2002477 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2002477_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2002477_left_fuel : Nat := 1
def small_2002477_left_count : Nat := 1
def small_2002477_left_encoded : String := "00000003"
theorem small_2002477_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2002477_left_root small_2002477_left_fuel small_2002477_left_count small_2002477_left_encoded = true := by
  decide +kernel
theorem small_2002477_left_covered : CoveredBy scale carrier boxes small_2002477_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2002477_left_root small_2002477_left_fuel small_2002477_left_count small_2002477_left_encoded small_2002477_left_checked

theorem cover_2002477 : CoveredBy scale carrier boxes root_2002477 := by
  apply coveredBy_split_literal root_2002477 small_2002477_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0047.root_2002483 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_2002477_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0047.cover_2002483
#print axioms cover_2002477

def root_2002371 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2002371_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2002371_left_fuel : Nat := 15
def small_2002371_left_count : Nat := 49
def small_2002371_left_encoded : String := "1151E8FD0A0001081151E8FF0000000600000004115224FF0000000408A912FF12073D08050000F6135D80F70000000005000102135D450300000001050000FA00000005135D45050000000200000006135D8103050000FA00000007135D4505000000020500010600000007135D80FD000000030CFD9BFF000000060000000700000001135D44F70500010200000006135D8103050000FA00000006135D4505000000020000000600000001000000000000000412070108000000040000000700000003"
theorem small_2002371_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2002371_left_root small_2002371_left_fuel small_2002371_left_count small_2002371_left_encoded = true := by
  decide +kernel
theorem small_2002371_left_covered : CoveredBy scale carrier boxes small_2002371_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2002371_left_root small_2002371_left_fuel small_2002371_left_count small_2002371_left_encoded small_2002371_left_checked

theorem cover_2002371 : CoveredBy scale carrier boxes root_2002371 := by
  apply coveredBy_split_literal root_2002371 small_2002371_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0047.root_2002477 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_2002371_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0047.cover_2002477
#print axioms cover_2002371

def root_2002365 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2002365_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2002365_left_fuel : Nat := 1
def small_2002365_left_count : Nat := 1
def small_2002365_left_encoded : String := "00000002"
theorem small_2002365_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2002365_left_root small_2002365_left_fuel small_2002365_left_count small_2002365_left_encoded = true := by
  decide +kernel
theorem small_2002365_left_covered : CoveredBy scale carrier boxes small_2002365_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2002365_left_root small_2002365_left_fuel small_2002365_left_count small_2002365_left_encoded small_2002365_left_checked

theorem cover_2002365 : CoveredBy scale carrier boxes root_2002365 := by
  apply coveredBy_split_literal root_2002365 small_2002365_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0047.root_2002371 coord2 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_2002365_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0047.cover_2002371
#print axioms cover_2002365

def root_2001599 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2001599_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2001599_left_fuel : Nat := 24
def small_2001599_left_count : Nat := 353
def small_2001599_left_encoded : String := "115225050A0001061151E8FD0A0001081151E8FF08A91305000000090000000600000004115224FF0000000408A91305120700FA08A912FF12073D08050000F6135D80F70000000005000102135D450300000001000000050000000900000009000000041207010800000004000000070000000212073CFA0000000208A912FF12073D08050000F6135D80F7000000000500010200000005135D81030500010600000005135D80FD000000030000000700000001000000070000000412070108000000040000000700000003115224FD000000030A0001081151E8FF08A91305120700FA08A912FD12073D06050000F6135D80F70000000005000102135D45030000000100000005135D810305000108135D44FF0000000A000000040000000900000001135D44F705000102135D450300000001050001080000000500000009135D810305000108135D44FF04548A050000000900000006000000040000000900000001000000000000000312070106000000030000000A0000000212073CFA0000000208A912FD12073D06050000F6135D80F7000000000500010200000005135D81030500010800000005135D80FF000000040CFD9C050F34D0FA00000005000000020F350CFA000000020CFD9BFD0F350D0600000005000000030000000500000001135D44F705000102135D45030000000100000006135D810305000108135D44FF0000000600000004135D80FF000000040CFD9C0500000009000000060000000100000000000000031207010600000003050000F6135D80F7000000000000000A135D44F705000102135D45030000000105000108000000050000000A135D810305000108135D44FF0000000A000000040000000A000000010000000000000004115224FF0000000408A91305120700FA08A912FD12073D0608A912FF12073D08050000F6135D80F70000000005000102135D45030000000104548A050000000A00000005135D810304548A05000000091386ACFA000000020CFD9BFD0F350D0600000007000000030000000700000001135D44F700000007000000000000000412070108000000040000000700000003120701060000000308A912FF0000000A000000070000000212073CFA0000000208A912FD12073D0608A912FF12073D08050000F6135D80F70000000005000102135D4503000000010CFD9C050F34D0FA00000005000000020F350CFA000000020CFD9BFD0F350D0600000005000000030F34D106000000030CFD9BFF0000000A00000005135D81030CFD9C050F34D0FA00000007000000020F350CFA000000020CFD9BFD0F350D0600000007000000030F34D106000000030CFD9BFF0000000A0000000700000001135D44F705000102135D4503000000010CFD9C050F34D0FA00000007000000020F350CFA000000020CFD9BFD0F350D060CFD9BFF0000000600000007000000030F34D106000000030CFD9BFF0F350D080C9A86FA0F878D0500000007000000020F87510500000002000000060000000400000007135D81030CFD9C050F34D0FA00000007000000020F350CFA000000020CFD9BFD0F350D0600000007000000030F34D106000000030CFD9BFF0F350D0800000007000000040000000700000001000000000000000412070108000000040000000700000003120701060000000308A912FF12073D08050000F6135D80F70000000005000102135D4503000000010000000A0000000A135D44F705000102135D4503000000010CFD9C050000000A0F350CFA00000002045489FD1386AD060CFD9BFF0000000A0F34D1080000000400000007000000030000000A135D81030CFD9C050F34D0FA00000007000000020F350CFA00000002045489FD1386AD060CFD9BFF0000000A00000007000000030000000A0000000100000000000000041207010800000004050000F6000000070000000700000002"
theorem small_2001599_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2001599_left_root small_2001599_left_fuel small_2001599_left_count small_2001599_left_encoded = true := by
  decide +kernel
theorem small_2001599_left_covered : CoveredBy scale carrier boxes small_2001599_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2001599_left_root small_2001599_left_fuel small_2001599_left_count small_2001599_left_encoded small_2001599_left_checked

theorem cover_2001599 : CoveredBy scale carrier boxes root_2001599 := by
  apply coveredBy_split_literal root_2001599 small_2001599_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0047.root_2002365 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact small_2001599_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0047.cover_2002365
#print axioms cover_2001599

def root_2001593 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2001593_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2001593_left_fuel : Nat := 1
def small_2001593_left_count : Nat := 1
def small_2001593_left_encoded : String := "00000001"
theorem small_2001593_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2001593_left_root small_2001593_left_fuel small_2001593_left_count small_2001593_left_encoded = true := by
  decide +kernel
theorem small_2001593_left_covered : CoveredBy scale carrier boxes small_2001593_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2001593_left_root small_2001593_left_fuel small_2001593_left_count small_2001593_left_encoded small_2001593_left_checked

theorem cover_2001593 : CoveredBy scale carrier boxes root_2001593 := by
  apply coveredBy_split_literal root_2001593 small_2001593_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0047.root_2001599 coord1 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_2001593_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0047.cover_2001599
#print axioms cover_2001593

def root_2006113 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2006113 : CoveredBy scale carrier boxes root_2006113 := by
  apply coveredBy_split_literal root_2006113 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0779.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0780.root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0779.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0780.covered
#print axioms cover_2006113

def root_2006108 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2006108_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2006108_right_fuel : Nat := 1
def small_2006108_right_count : Nat := 1
def small_2006108_right_encoded : String := "00000001"
theorem small_2006108_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2006108_right_root small_2006108_right_fuel small_2006108_right_count small_2006108_right_encoded = true := by
  decide +kernel
theorem small_2006108_right_covered : CoveredBy scale carrier boxes small_2006108_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2006108_right_root small_2006108_right_fuel small_2006108_right_count small_2006108_right_encoded small_2006108_right_checked

theorem cover_2006108 : CoveredBy scale carrier boxes root_2006108 := by
  apply coveredBy_split_literal root_2006108 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0047.root_2006113 small_2006108_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0047.cover_2006113
  · exact small_2006108_right_covered
#print axioms cover_2006108

def root_2001592 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2001592 : CoveredBy scale carrier boxes root_2001592 := by
  apply coveredBy_split_literal root_2001592 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0047.root_2001593 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0047.root_2006108 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0047.cover_2001593
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0047.cover_2006108
#print axioms cover_2001592

def root_2001587 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2001587_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2001587_right_fuel : Nat := 1
def small_2001587_right_count : Nat := 1
def small_2001587_right_encoded : String := "00000000"
theorem small_2001587_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2001587_right_root small_2001587_right_fuel small_2001587_right_count small_2001587_right_encoded = true := by
  decide +kernel
theorem small_2001587_right_covered : CoveredBy scale carrier boxes small_2001587_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2001587_right_root small_2001587_right_fuel small_2001587_right_count small_2001587_right_encoded small_2001587_right_checked

theorem cover_2001587 : CoveredBy scale carrier boxes root_2001587 := by
  apply coveredBy_split_literal root_2001587 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0047.root_2001592 small_2001587_right_root coord0 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0047.cover_2001592
  · exact small_2001587_right_covered
#print axioms cover_2001587

def root_1995243 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1995243 : CoveredBy scale carrier boxes root_1995243 := by
  apply coveredBy_split_literal root_1995243 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0047.root_1995244 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0047.root_2001587 coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0047.cover_1995244
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0047.cover_2001587
#print axioms cover_1995243

def root_2009770 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2009770 : CoveredBy scale carrier boxes root_2009770 := by
  apply coveredBy_split_literal root_2009770 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0781.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0782.root coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0781.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0782.covered
#print axioms cover_2009770

def root_1995242 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1995242 : CoveredBy scale carrier boxes root_1995242 := by
  apply coveredBy_split_literal root_1995242 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0047.root_1995243 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0047.root_2009770 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0047.cover_1995243
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0047.cover_2009770
#print axioms cover_1995242

def root_1959968 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1959968 : CoveredBy scale carrier boxes root_1959968 := by
  apply coveredBy_split_literal root_1959968 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0047.root_1959969 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0047.root_1995242 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0047.cover_1959969
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0047.cover_1995242
#print axioms cover_1959968

def root_2014092 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2014092 : CoveredBy scale carrier boxes root_2014092 := by
  apply coveredBy_split_literal root_2014092 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0783.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0784.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0783.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0784.covered
#print axioms cover_2014092

def root_2020685 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2020685_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2020685_right_fuel : Nat := 24
def small_2020685_right_count : Nat := 409
def small_2020685_right_encoded : String := "1151E8F70A0001021151E903000000010A0000FA115225050A0001061151E907000000030A000108000000070000000A115225070A0001081151E9090000000408A91305120700FA08A91307000000060000000600000002000000071152250908A91305120700FA000000070000000212073CFA0000000208A913070000000712073D0608A9130912070108000000040000000600000007000000030000000400000003000000021151E905000000020A0001061151E907000000030A0001081151E90900000004000000051152250908A9130912070108000000040000000A0000000700000004115225070A0001081151E90900000004000000071152250908A91307120701060000000308A913091207010800000004050000F600000006135D44F7050001020000000600000006000000000000000712073D0608A913091207010800000004050000F60000000A135D44F7050001020000000A000000070000000012073D08050000F6000000070000000700000004000000030000000400000003115225030A0000FA115225050A0001061151E907000000030A0001081151E9090000000408A91303120701020000000108A91305120700FA050000F6135D80F70000000005000106135D45070000000305000108000000050000000A135D81070500010800000007135D8109000000070000000400000003135D44F705000106135D4507000000030500010800000008135D810904548A0300000009000000070000000400000009000000000000000212073CFA00000002050000F6135D80F70000000005000106135D4507000000030500010800000007135D810904548A0313867102000000010CFD9C050000000700000007000000070000000400000007135D44F705000106135D4507000000030500010800000007135D810904548A03000000090000000700000004000000070000000012073D0208A91305120700FA050000F6135D80F700000000050001060000000A00000007135D44F700000007000000000000000212073CFA0000000200000007000000011152250908A91303120701020000000108A91305120700FA08A913090000000612073D08050000F60000000A135D44F70000000A00000000000000040000000212073CFA0000000208A9130912070108000000040000000612073D08050000F6135D80F70000000005000106135D45070000000304548A0313867102000000010CFD9C050F34D0FA0000000A000000020F350CFA00000002000000070000000700000007135D44F705000106135D45070000000304548A0313867102000000010CFD9C050F34D0FA00000006000000020F350CFA00000002000000071386AD02000000070000000100000007000000000000000412073D0208A913050000000A12073CFA0000000208A913090000000712073D0800000007000000040000000100000004115225070A0001081151E9090000000408A91303120701020000000108A91305120700FA08A913070000000612073D06050000F6000000090000000900000003000000020000000912073D0208A91305120700FA08A913070000000612073D0600000007000000030000000212073CFA0000000208A9130712070106000000030000000900000007000000011152250908A91303120701020000000108A91305120700FA08A913070000000612073D0608A913090000000612073D08050000F6135D80F70000000004548A0300000006000000060000000600000004000000030000000212073CFA0000000208A9130712070106000000030000000612073D0608A913090000000612073D08050000F60000000700000007000000040000000312073D0208A91305120700FA08A9130700000006000000060000000212073CFA0000000200000007000000010000000400000003000000021151E905000000020A0001061151E907000000030A0001081151E90900000004000000071152250908A91303120701020000000108A913091207010800000004050000F600000007135D44F7050000FA00000007000000070000000012073D08000000070000000412073D0208A913091207010800000004050000F600000007135D44F70000000700000000000000070000000100000004115225070A0001081151E90900000004000000071152250908A9130312070102000000010000000712073D0208A913070000000712073D0600000007000000030000000100000004000000030000000100000000"
theorem small_2020685_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2020685_right_root small_2020685_right_fuel small_2020685_right_count small_2020685_right_encoded = true := by
  decide +kernel
theorem small_2020685_right_covered : CoveredBy scale carrier boxes small_2020685_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2020685_right_root small_2020685_right_fuel small_2020685_right_count small_2020685_right_encoded small_2020685_right_checked

theorem cover_2020685 : CoveredBy scale carrier boxes root_2020685 := by
  apply coveredBy_split_literal root_2020685 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0786.root small_2020685_right_root coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0786.covered
  · exact small_2020685_right_covered
#print axioms cover_2020685

def root_2018641 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2018641 : CoveredBy scale carrier boxes root_2018641 := by
  apply coveredBy_split_literal root_2018641 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0785.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0047.root_2020685 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0785.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0047.cover_2020685
#print axioms cover_2018641

def root_2014091 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2014091 : CoveredBy scale carrier boxes root_2014091 := by
  apply coveredBy_split_literal root_2014091 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0047.root_2014092 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0047.root_2018641 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0047.cover_2014092
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0047.cover_2018641
#print axioms cover_2014091

def root_1959967 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1959967 : CoveredBy scale carrier boxes root_1959967 := by
  apply coveredBy_split_literal root_1959967 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0047.root_1959968 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0047.root_2014091 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0047.cover_1959968
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0047.cover_2014091
#print axioms cover_1959967

def root_1824265 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1824265 : CoveredBy scale carrier boxes root_1824265 := by
  apply coveredBy_split_literal root_1824265 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0046.root_1824266 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0047.root_1959967 coord3 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0046.cover_1824266
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0047.cover_1959967
#print axioms cover_1824265

def root_1740105 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1740105 : CoveredBy scale carrier boxes root_1740105 := by
  apply coveredBy_split_literal root_1740105 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0043.root_1740106 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0047.root_1824265 coord2 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0043.cover_1740106
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0047.cover_1824265
#print axioms cover_1740105

def root_2024853 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2024853 : CoveredBy scale carrier boxes root_2024853 := by
  apply coveredBy_split_literal root_2024853 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0787.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0788.root coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0787.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0788.covered
#print axioms cover_2024853

def root_2024848 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2024848_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2024848_right_fuel : Nat := 1
def small_2024848_right_count : Nat := 1
def small_2024848_right_encoded : String := "00000001"
theorem small_2024848_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2024848_right_root small_2024848_right_fuel small_2024848_right_count small_2024848_right_encoded = true := by
  decide +kernel
theorem small_2024848_right_covered : CoveredBy scale carrier boxes small_2024848_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2024848_right_root small_2024848_right_fuel small_2024848_right_count small_2024848_right_encoded small_2024848_right_checked

theorem cover_2024848 : CoveredBy scale carrier boxes root_2024848 := by
  apply coveredBy_split_literal root_2024848 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0047.root_2024853 small_2024848_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0047.cover_2024853
  · exact small_2024848_right_covered
#print axioms cover_2024848

def root_2023946 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2023946_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2023946_left_fuel : Nat := 24
def small_2023946_left_count : Nat := 425
def small_2023946_left_encoded : String := "1151E903000000010A0001041151E8FB0A0000FC115224FD000000030A0000FE115224FF0000000408A912F712073CF60000000008A912FD12073CFC0000000308A912FF0000000900000008120700FC08A912FF12073CFE0000000405000102135D450300000001050001040000000900000009135D810305000104135D44FB0CFD9BF7000000080F34D0F6000000070000000000000002135D80FB000000020CFD9BF70000000900000005000000010000000900000003120700F608A912FD00000007120700FC08A912FF12073CFE000000040500010200000009000000070000000700000003000000001151E8FF08A912F712073CF60000000008A912FD12073CFC0000000305000102135D45030000000105000104135D44FB0000000800000002135D80FB00000002050000FE00000007135D44FF0CFD9BF7000000080F34D0F6000000070000000000000004135D810305000104135D44FB0000000900000002135D80FB00000002050000FE00000007135D44FF0CFD9BF7000000090F34D0F600000007000000000000000400000001120700FC05000102135D450300000001050001040000000A135D80FB00000002050000FE000000090000000A135D810305000104135D44FB050000FE135D80FF000000040CFD9BF7000000080F34D0F600000007000000000000000A00000002135D80FB00000002050000FE135D80FF000000040CFD9BF700000009000000050000000A0000000100000003120700F608A912FD12073CFC0000000305000102135D45030000000105000104000000070000000700000007120700FC05000102135D45030000000100000005000000050000000300000000000000041151E8FD0A0000FE115224FF00000004000000071151E8FF08A912F70000000700000007000000040000000300000002115224FB000000020A0000FC115224FD000000030A0000FE115224FF0000000408A912F712073CF60000000008A912FB12073D0408A912FD12073CFC0000000308A912FF12073CFE0000000405000102135D4503000000010CFD9BF70000000700000007135D81030CFD9BF7000000070000000700000001120700FE0000000700000004120700FC08A912FF12073CFE0000000405000102135D4503000000010000000500000005000000050000000300000002120701040000000200000005120700F608A912FB12073D0408A912FD12073CFC0000000308A912FF0000000700000005000000050000000200000005000000001151E8FF08A912F712073CF60000000008A912FB12073D0408A912FD12073CFC0000000305000102135D450300000001050000FE135D80FF000000040CFD9BF7000000070F34D0F60000000700000000135D44FF0CFD9BF70F350CF6000000000CFD9BFB0F350D040CFD9BFD000000070F34D0FC0000000700000003000000020F34D10400000002000000070F34D0F6000000070000000000000004135D8103050000FE135D80FF000000040CFD9BF70F350CF6000000000CFD9BFB00000007000000090F34D0F60000000700000000135D44FF0CFD9BF70F350CF6000000000CFD9BFB0F350D040CFD9BFD0000000700000009000000020F34D10400000002000000070F34D0F60CFD9BFB000000070F34D1040000000200000007000000000000000400000001120700FC05000102135D45030000000100000005135D8103050000FE00000005135D44FF0CFD9BF70F350CF6000000000CFD9BFB0F350D040000000900000002000000050000000500000004000000010000000300000002120701040000000208A912FD12073CFC0000000305000102135D450300000001050000FE00000005135D44FF0CFD9BF70F350CF600000000045489FB00000007000000050000000500000004135D8103050000FE135D80FF000000040CFD9BF70000000700000005135D44FF0CFD9BF70F350CF600000000045489FB1386AD040CFD9BFD00000007000000090000000213867104000000020CFD9BFD00000007000000050F34D0F60000000500000000000000040000000100000005120700F608A912FB12073D0408A912FD12073CFC0000000305000102135D45030000000100000005135D8103050000FE00000005135D44FF045489F70000000700000005000000040000000100000005000000020000000500000000000000041151E8FD0A0000FE115224FF0000000408A912F712073CF60000000008A912FB00000007120701040000000200000007120700F600000007000000001151E8FF08A912F712073CF60000000008A912FB00000007120701040000000200000007120700F600000007000000000000000400000003"
theorem small_2023946_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2023946_left_root small_2023946_left_fuel small_2023946_left_count small_2023946_left_encoded = true := by
  decide +kernel
theorem small_2023946_left_covered : CoveredBy scale carrier boxes small_2023946_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2023946_left_root small_2023946_left_fuel small_2023946_left_count small_2023946_left_encoded small_2023946_left_checked

theorem cover_2023946 : CoveredBy scale carrier boxes root_2023946 := by
  apply coveredBy_split_literal root_2023946 small_2023946_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0047.root_2024848 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_2023946_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0047.cover_2024848
#print axioms cover_2023946

def root_2023940 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2023940_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2023940_left_fuel : Nat := 1
def small_2023940_left_count : Nat := 1
def small_2023940_left_encoded : String := "00000000"
theorem small_2023940_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2023940_left_root small_2023940_left_fuel small_2023940_left_count small_2023940_left_encoded = true := by
  decide +kernel
theorem small_2023940_left_covered : CoveredBy scale carrier boxes small_2023940_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2023940_left_root small_2023940_left_fuel small_2023940_left_count small_2023940_left_encoded small_2023940_left_checked

theorem cover_2023940 : CoveredBy scale carrier boxes root_2023940 := by
  apply coveredBy_split_literal root_2023940 small_2023940_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0047.root_2023946 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_2023940_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0047.cover_2023946
#print axioms cover_2023940

def root_2028841 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2028841 : CoveredBy scale carrier boxes root_2028841 := by
  apply coveredBy_split_literal root_2028841 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0789.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0790.root coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0789.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0790.covered
#print axioms cover_2028841

def root_2028836 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2028836_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2028836_right_fuel : Nat := 1
def small_2028836_right_count : Nat := 1
def small_2028836_right_encoded : String := "00000001"
theorem small_2028836_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2028836_right_root small_2028836_right_fuel small_2028836_right_count small_2028836_right_encoded = true := by
  decide +kernel
theorem small_2028836_right_covered : CoveredBy scale carrier boxes small_2028836_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2028836_right_root small_2028836_right_fuel small_2028836_right_count small_2028836_right_encoded small_2028836_right_checked

theorem cover_2028836 : CoveredBy scale carrier boxes root_2028836 := by
  apply coveredBy_split_literal root_2028836 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0047.root_2028841 small_2028836_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0047.cover_2028841
  · exact small_2028836_right_covered
#print axioms cover_2028836

def root_2028438 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2028438_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2028438_left_fuel : Nat := 20
def small_2028438_left_count : Nat := 189
def small_2028438_left_encoded : String := "1151E903000000010A0001041151E8FB0A0000FC115224FD000000030A0000FE115224FF0000000408A912FD00000008120700FC00000008000000031151E8FF08A912FD00000008120700FC050000F60000000A0000000800000003000000041151E8FD000000080000000300000002115224FB000000020A0000FC115224FD000000030A0000FE115224FF0000000408A912FB12073D0408A912FD12073CFC0000000308A912FF0000000900000008120700FC08A912FF12073CFE00000004050000F6135D80F70000000000000005135D44F705000102000000050000000600000000000000050000000300000002120701040000000208A912FD12073CFC0000000300000009000000051151E8FF08A912FB12073D0408A912FD12073CFC00000003050000F6135D80F70000000005000102135D450300000001050000FE00000009135D44FF0CFD9BFB000000080000000900000004135D8103050000FE00000009135D44FF0CFD9BFB00000009000000090000000400000001135D44F70500010200000008135D8103000000090000000100000000120700FC050000F6135D80F7000000000500010200000009135D8103050000FE135D80FF0000000400000009135D44FF0CFD9BFB0F350D040000000900000002000000090000000400000001135D44F705000102135D450300000001050000FE0000000800000008135D8103050000FE135D80FF000000040CFD9BFB0000000800000006135D44FF0CFD9BFB00000008000000090000000400000001000000000000000300000002120701040000000208A912FD12073CFC00000003050000F6135D80F70000000005000102135D450300000001050000FE00000006135D44FF045489FB000000090000000600000004135D81030000000900000001135D44F705000102000000090000000900000000120700FC050000F6000000050000000600000003000000041151E8FD0A0000FE115224FF00000004000000081151E8FF08A912FB000000081207010400000002000000070000000400000003"
theorem small_2028438_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2028438_left_root small_2028438_left_fuel small_2028438_left_count small_2028438_left_encoded = true := by
  decide +kernel
theorem small_2028438_left_covered : CoveredBy scale carrier boxes small_2028438_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2028438_left_root small_2028438_left_fuel small_2028438_left_count small_2028438_left_encoded small_2028438_left_checked

theorem cover_2028438 : CoveredBy scale carrier boxes root_2028438 := by
  apply coveredBy_split_literal root_2028438 small_2028438_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0047.root_2028836 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_2028438_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0047.cover_2028836
#print axioms cover_2028438

def root_2028433 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2028433_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2028433_right_fuel : Nat := 1
def small_2028433_right_count : Nat := 1
def small_2028433_right_encoded : String := "00000000"
theorem small_2028433_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2028433_right_root small_2028433_right_fuel small_2028433_right_count small_2028433_right_encoded = true := by
  decide +kernel
theorem small_2028433_right_covered : CoveredBy scale carrier boxes small_2028433_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2028433_right_root small_2028433_right_fuel small_2028433_right_count small_2028433_right_encoded small_2028433_right_checked

theorem cover_2028433 : CoveredBy scale carrier boxes root_2028433 := by
  apply coveredBy_split_literal root_2028433 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0047.root_2028438 small_2028433_right_root coord0 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0047.cover_2028438
  · exact small_2028433_right_covered
#print axioms cover_2028433

def root_2023939 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2023939 : CoveredBy scale carrier boxes root_2023939 := by
  apply coveredBy_split_literal root_2023939 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0047.root_2023940 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0047.root_2028433 coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0047.cover_2023940
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0047.cover_2028433
#print axioms cover_2023939

def root_2023938 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2023938_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2023938_right_fuel : Nat := 22
def small_2023938_right_count : Nat := 493
def small_2023938_right_encoded : String := "0A0000F6115224F7000000000A0001021151E903000000010A0001041151E8FB0A0000FC115224FD000000030A0000FE1152250908A912F712073CF60000000000000009120700F608A912FD00000007000000050000000000000004000000051151E8FD0A0000FE000000071151E90900000004000000050000000300000002115224FB000000020A0000FC115224FD000000030A0000FE1152250900000005000000041151E9090000000408A912F700000005120700F600000005000000001151E8FD0A0000FE000000051151E909000000040000000500000003115225030A0001041151E8FB0A0000FC115224FD000000030A0000FE1152250908A912F712073CF60000000008A91303120701020000000108A912FD00000007120700FC000000070000000312073D0208A912FD000000070000000500000001120700F60000000700000000000000041151E90900000004000000051151E8FD0A0000FE000000071151E90900000004000000070000000300000002115224FB000000020A0000FC115224FD000000030A0000FE1152250908A912F712073CF60000000008A91303120701020000000108A912FB12073D0408A912FD00000009120700FC000000050000000300000002120701040000000208A912FD12073CFC0000000308A9130900000009000000050000000512073D0208A912FB12073D0408A912FD12073CFC0000000308A91309000000090000000500000005000000020000000500000001120700F60000000500000000000000041151E9090000000408A912F712073CF60000000008A91303120701020000000108A912FB12073D0408A912FD0000000700000005000000020000000512073D020000000500000001120700F608A913030000000512073D020000000500000001000000001151E8FD0A0000FE1152250908A912F712073CF60000000008A91303120701020000000108A912FB000000070000000A12073D0208A912FB00000007120701040000000208A91309000000070000000500000001120700F608A913031207010200000001000000070000000700000000000000041151E9090000000408A912F712073CF60000000008A9130312070102000000010000000712073D0208A912FB000000071207010400000002050000FC000000050000000700000001120700F6000000070000000000000003000000011151E8F70A0001021151E903000000010A0001041151E8FB0A0000FC115224FD00000003000000091151E8FD0A0000FE1152250900000009000000041151E90900000004000000050000000300000002115224FB000000020A0000FC115224FD000000030A0000FE000000051151E90900000004000000051151E8FD0A0000FE1152250908A912FB12073D0408A913090000000812073CFE00000004050000F600000005135D44F700000007000000000000000200000008000000041151E9090000000408A912FB12073D04050000F600000005135D44F70500010200000005135D8103050000FC000000050000000700000001000000000000000212070104000000020000000800000003115225030A0001041151E8FB0A0000FC115224FD000000030A0000FE1152250908A91303120701020000000108A912FD12073CFC00000003000000080000000812073D0208A912FD12073CFC0000000308A9130900000008000000050000000500000001000000041151E9090000000408A91303120701020000000100000007000000091151E8FD0A0000FE1152250908A9130312070102000000010000000700000007000000041151E90900000004000000070000000300000002115224FB000000020A0000FC115224FD000000030A0000FE1152250908A91303120701020000000108A912FB12073D0408A912FD12073CFC0000000308A913090000000900000008120700FC00000006000000030000000212070104000000020000000612073D0208A912FB12073D0408A912FD00000009120700FC00000005000000030000000212070104000000020000000600000001000000041151E9090000000408A91303120701020000000108A912FB0000000912070104000000020000000612073D0208A912FB12073D040000000900000002120701040000000200000006000000011151E8FD0A0000FE1152250908A91303120701020000000108A912FB12073D0408A91309000000080000000700000002120701040000000208A91309000000090000000812073D0208A912FB12073D0408A91309000000080000000700000002120701040000000208A91309000000080000000800000001000000041151E9090000000408A91303120701020000000108A912FB000000071207010400000002050000F6135D80F700000000050000FC0000000700000007135D44F7050000FC00000006000000080000000012073D0208A912FB12073D04050000F600000007135D44F7050000FC00000009135D44FD000000070000000300000000000000021207010400000002050000F6135D80F700000000050000FC135D80FD00000003050000FE00000005135D4509000000040CFD9C030000000800000007135D44FD0000000700000003135D44F7050000FC135D80FD00000003050000FE00000006135D45090000000400000008135D44FD050000FE00000007135D45090000000400000008000000030000000000000001000000030000000100000000"
theorem small_2023938_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2023938_right_root small_2023938_right_fuel small_2023938_right_count small_2023938_right_encoded = true := by
  decide +kernel
theorem small_2023938_right_covered : CoveredBy scale carrier boxes small_2023938_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2023938_right_root small_2023938_right_fuel small_2023938_right_count small_2023938_right_encoded small_2023938_right_checked

theorem cover_2023938 : CoveredBy scale carrier boxes root_2023938 := by
  apply coveredBy_split_literal root_2023938 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0047.root_2023939 small_2023938_right_root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0047.cover_2023939
  · exact small_2023938_right_covered
#print axioms cover_2023938

def root_2045172 : ZRayBox := fun j => (#[⟨⟨(-9480640), (-8388608)⟩, ⟨(-14529792), (-13841408)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(15552512), (16244736)⟩⟩, ⟨⟨(16678144), (16777216)⟩, ⟨(-1816224), (0)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2045172_left_root : ZRayBox := fun j => (#[⟨⟨(-9480640), (-8388608)⟩, ⟨(-14529792), (-13841408)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(15552512), (16244736)⟩⟩, ⟨⟨(16678144), (16777216)⟩, ⟨(-1816224), (0)⟩⟩, ⟨⟨(-10572672), (-9480640)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2045172_left_fuel : Nat := 24
def small_2045172_left_count : Nat := 437
def small_2045172_left_encoded : String := "10804CFD000000030DE7CA080E5FD8FF0640010212FF7103000000010115233B13F895040AA6A27610EDACF7000000000BF3E57C100928FD000000030D412888000000050000000A1008ECFD0D4128880EFA10FF05A001020000000513317103019FB45B13EF35040AF9F3360000000710B7ECF70BA094BC104604FD000000030000000500000007000000000000000213EEF904000000020AF9F3360000000510B7ECF70BA094BC00000005000000090000000000000001000000040EFA4CFF0000000405A001020000000A13317103019FB45B0000000A13EEF904000000020AF9F3360000000510B7ECF70BA094BC000000051045C8FD0D947948000000050000000A0000000300000000000000010000000310ED70F70BF3E57C100928FD000000030D4128880EFA10FF05A0010200000005133171030000000900000001000000040000000A1008ECFD0D4128880EFA10FF05A001021331350300000001019FB45B0000000A13EEF904000000020A5351B6000000051120C4F7000000090000000013317103019FB45B000000090000000900000001000000040EFA4CFF0000000405A001020000000A13317103019FB45B0000000A13EEF904000000020A5351B6112100F7000000000BA094BC0000000A1045C8FD0D947948000000090000000A000000031120C4F70000000A000000000000000100000003000000000000000213F85904000000020AA6A27610EDACF7000000000BF3E57C00000005000000A210ED70F70BF3E57C100928FD000000030D412888000000050EFA4CFF0000000400000005000000A20000000012FFAD030115233B13F895040AA6A27610EDACF7000000000BF3E57C100928FD000000030D4128880EFA10FF06E0010212C7E50300000001019FB45B000000090000000500000008000000040EFA4CFF0000000406E0010212C7E50300000001019FB45B0000000A00000008000000081008ECFD0D4128880EFA10FF06E0010212C7E50300000001019FB45B000000090000000900000009000000040EFA4CFF0000000406E0010212C7E50300000001019FB45B13EF35040AF9F33610B828F7000000000BA094BC0000000A1045C8FD0D9479480EAEACFF0000000900000004000000060000000310B7ECF70BA094BC0000000A1045C8FD0D947948000000090000000A00000003000000000000000213EEF904000000020AF9F3360000000810B7ECF70BA094BC000000081045C8FD00000008000000030000000012C82103019FB45B13EF35040AF9F33600000008000000090000000200000008000000010000000310ED70F70BF3E57C100928FD000000030D412888000000090EFA4CFF0000000406E0010212C7E503000000010000000A000000091008ECFD0D412888000000090EFA4CFF0000000406E0010212C7E50300000001019FB45B00000009000000090000000900000003000000000000000213F85904000000020AA6A27610EDACF7000000000BF3E57C000000081008ECFD0D4128880EFA10FF0000000800000004000000080000000310ED70F70BF3E57C100928FD000000030D41288800000009000000081008ECFD0D412888000000090EFA4CFF0000000406E0010212C7E50300000001008A921B13FE35040A5351B60000000800000009000000020000000800000008000000030000000000000001000000040E6014FF000000040640010212FF7103000000010115233B0000000A13F85904000000020DAED87F0E9661080AA6A27610EDACF7000000000BF3E57C00000005000000A210ED70F70BF3E57C100928FD0000000300000007000000A200000000000000040E962508000000040AA6A2760000000A0000000712FFAD030115233B13F895040DAED87F0E9661080AA6A27610EDACF7000000000BF3E57C100928FD000000030000000A1008ECFD06E0010212C7E50300000001019FB45B0000000A13EEF904000000020E0776BF000000080E40FD08000000040000000812C82103019FB45B13EF35040E0776BF00000006000000060000000200000008000000010000000310ED70F70BF3E57C100928FD000000030000000A1008ECFD06E0010212C7E50300000001019FB45B0000000A13EEF904000000020E0776BF0E4139080A5351B60000000800000009000000040000000A12C82103019FB45B13EF35040E0776BF0E41390800000009000000040E40FD08000000040000000A0000000200000008000000010000000300000000000000040E962508000000040AA6A2760000000A10ED70F70000000A000000000000000213F85904000000020DAED87F0E9661080AA6A2760000000810ED70F70BF3E57C000000081008ECFD06E0010200000008000000080000000300000000000000040E962508000000040AA6A276000000080000000700000001"
theorem small_2045172_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2045172_left_root small_2045172_left_fuel small_2045172_left_count small_2045172_left_encoded = true := by
  decide +kernel
theorem small_2045172_left_covered : CoveredBy scale carrier boxes small_2045172_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2045172_left_root small_2045172_left_fuel small_2045172_left_count small_2045172_left_encoded small_2045172_left_checked

theorem cover_2045172 : CoveredBy scale carrier boxes root_2045172 := by
  apply coveredBy_split_literal root_2045172 small_2045172_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0795.root coord3 false (-9480640)
  · decide +kernel
  · decide +kernel
  · exact small_2045172_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0795.covered
#print axioms cover_2045172

def root_2045167 : ZRayBox := fun j => (#[⟨⟨(-9480640), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(15552512), (16244736)⟩⟩, ⟨⟨(16678144), (16777216)⟩, ⟨(-1816224), (0)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2045167_right_root : ZRayBox := fun j => (#[⟨⟨(-9480640), (-8388608)⟩, ⟨(-13841408), (-13026304)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(15552512), (16244736)⟩⟩, ⟨⟨(16678144), (16777216)⟩, ⟨(-1816224), (0)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2045167_right_fuel : Nat := 1
def small_2045167_right_count : Nat := 1
def small_2045167_right_encoded : String := "00000000"
theorem small_2045167_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2045167_right_root small_2045167_right_fuel small_2045167_right_count small_2045167_right_encoded = true := by
  decide +kernel
theorem small_2045167_right_covered : CoveredBy scale carrier boxes small_2045167_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2045167_right_root small_2045167_right_fuel small_2045167_right_count small_2045167_right_encoded small_2045167_right_checked

theorem cover_2045167 : CoveredBy scale carrier boxes root_2045167 := by
  apply coveredBy_split_literal root_2045167 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0047.root_2045172 small_2045167_right_root coord0 true (-13841408)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0047.cover_2045172
  · exact small_2045167_right_covered
#print axioms cover_2045167

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0047
