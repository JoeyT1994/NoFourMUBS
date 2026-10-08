import TaoBundleAssembly0229
import TaoBundleAssembly0230
import TaoBundleChunkBatch0903
import TaoBundleChunkBatch0904
import TaoBundleChunkBatch0907
import TaoBundleChunkBatch0908
import TaoBundleChunkBatch0909
import TaoBundleChunkBatch0910
import TaoBundleChunkBatch0911
import TaoBundleChunkBatch0912
import TaoBundleChunkBatch0913
import TaoBundleChunkBatch0914
import TaoBundleChunkBatch0915
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231
def root_9690884 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9690884_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9690884_right_fuel : Nat := 22
def small_9690884_right_count : Nat := 175
def small_9690884_right_encoded : String := "135D450700000003050000FE135D810904548A0113867100000000000CFD9BF90F350D020CFD9BFB0F350D040C9A87020F8750F90C9A87040F8750FB028000FC13D7ED07078000FE128A7D09022A458113E1C500000000000B4D44020000000610804CF900000001000000060000000600000004128A410900000004022A458113E1C500000000000B4D44020000000610804CF90000000100000006000000060000000313D7B10700000003078000FE128A7D09000000060000000400000005000000020F878CFB00000002028000FC13D7ED07078000FE128A7D09022A458113E1C500000000000B4D4402108010F9000000080000000110804CF900000001000000050000000800000004000000050000000300000005000000010F878CF9000000010C9A87040F8750FB028000FC13D7ED07078000FE128A7D09022A458113E1C500000000000DE7CA020E5FD8F90000000A000000010000000A0000000A000000040000000500000003000000050000000200000005000000020F34D1040000000200000005000000010F34D10200000001000000051386AD000CFD9BF90F350D020CFD9BFB0F350D040C9A87020F8750F90C9A87040F8750FB028000FC13D7ED07078000FE00000006000000060000000300000006000000020F878CFB00000002028000FC13D7ED07078000FE00000008128A41090000000400000005000000030000000A000000010F878CF9000000010C9A87040000000A0F878CFB0000000200000005000000020F34D1040000000200000005000000010F34D10200000001000000050000000000000004135D45090000000404548A011386710000000000000000051386AD000CFD9BF90F350D020CFD9BFB0F350D040C9A87020F8750F90C9A87040F8750FB028000FC0000000600000005000000020000000500000001000000050000000200000005000000010000000500000000"
theorem small_9690884_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9690884_right_root small_9690884_right_fuel small_9690884_right_count small_9690884_right_encoded = true := by
  decide +kernel
theorem small_9690884_right_covered : CoveredBy scale carrier boxes small_9690884_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9690884_right_root small_9690884_right_fuel small_9690884_right_count small_9690884_right_encoded small_9690884_right_checked

theorem cover_9690884 : CoveredBy scale carrier boxes root_9690884 := by
  apply coveredBy_split_literal root_9690884 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0230.root_9690885 small_9690884_right_root coord3 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0230.cover_9690885
  · exact small_9690884_right_covered
#print axioms cover_9690884

def root_9690879 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9690879_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9690879_right_fuel : Nat := 1
def small_9690879_right_count : Nat := 1
def small_9690879_right_encoded : String := "00000002"
theorem small_9690879_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9690879_right_root small_9690879_right_fuel small_9690879_right_count small_9690879_right_encoded = true := by
  decide +kernel
theorem small_9690879_right_covered : CoveredBy scale carrier boxes small_9690879_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9690879_right_root small_9690879_right_fuel small_9690879_right_count small_9690879_right_encoded small_9690879_right_checked

theorem cover_9690879 : CoveredBy scale carrier boxes root_9690879 := by
  apply coveredBy_split_literal root_9690879 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.root_9690884 small_9690879_right_root coord2 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.cover_9690884
  · exact small_9690879_right_covered
#print axioms cover_9690879

def root_9690878 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9690878_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9690878_right_fuel : Nat := 18
def small_9690878_right_count : Nat := 47
def small_9690878_right_encoded : String := "1207010400000002050000FC135D8107050000FE135D810904548A0113867100000000000CFD9BF90F350D02045489FB1386AD040C9A87020F8750F9078000FC128A7D07078000FE128A7D0900000009000000040000000500000003000000050000000100000005000000020000000500000001000000051386AD000CFD9BF90F350D02045489FB1386AD040C9A87020000000900000005000000020000000500000001000000050000000000000004000000050000000300000005"
theorem small_9690878_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9690878_right_root small_9690878_right_fuel small_9690878_right_count small_9690878_right_encoded = true := by
  decide +kernel
theorem small_9690878_right_covered : CoveredBy scale carrier boxes small_9690878_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9690878_right_root small_9690878_right_fuel small_9690878_right_count small_9690878_right_encoded small_9690878_right_checked

theorem cover_9690878 : CoveredBy scale carrier boxes root_9690878 := by
  apply coveredBy_split_literal root_9690878 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.root_9690879 small_9690878_right_root coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.cover_9690879
  · exact small_9690878_right_covered
#print axioms cover_9690878

def root_9690873 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9690873_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9690873_right_fuel : Nat := 1
def small_9690873_right_count : Nat := 1
def small_9690873_right_encoded : String := "00000001"
theorem small_9690873_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9690873_right_root small_9690873_right_fuel small_9690873_right_count small_9690873_right_encoded = true := by
  decide +kernel
theorem small_9690873_right_covered : CoveredBy scale carrier boxes small_9690873_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9690873_right_root small_9690873_right_fuel small_9690873_right_count small_9690873_right_encoded small_9690873_right_checked

theorem cover_9690873 : CoveredBy scale carrier boxes root_9690873 := by
  apply coveredBy_split_literal root_9690873 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.root_9690878 small_9690873_right_root coord1 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.cover_9690878
  · exact small_9690873_right_covered
#print axioms cover_9690873

def root_9690872 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9690872_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9690872_right_fuel : Nat := 20
def small_9690872_right_count : Nat := 51
def small_9690872_right_encoded : String := "120701020000000108A912FB12073D04050000FC135D8107050000FE135D810904548A011386710000000000045489F91386AD020CFD9BFB0F350D040C9A87040F8750FB078000FC128A7D07078000FE128A7D090000000A000000040000000500000003000000050000000200000005000000020000000500000001000000051386AD00045489F91386AD020CFD9BFB0F350D040C9A87040000000A000000050000000200000005000000010000000500000000000000040000000500000003000000050000000200000005"
theorem small_9690872_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9690872_right_root small_9690872_right_fuel small_9690872_right_count small_9690872_right_encoded = true := by
  decide +kernel
theorem small_9690872_right_covered : CoveredBy scale carrier boxes small_9690872_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9690872_right_root small_9690872_right_fuel small_9690872_right_count small_9690872_right_encoded small_9690872_right_checked

theorem cover_9690872 : CoveredBy scale carrier boxes root_9690872 := by
  apply coveredBy_split_literal root_9690872 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.root_9690873 small_9690872_right_root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.cover_9690873
  · exact small_9690872_right_covered
#print axioms cover_9690872

def root_9690866 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9690866_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9690866_left_fuel : Nat := 1
def small_9690866_left_count : Nat := 1
def small_9690866_left_encoded : String := "00000000"
theorem small_9690866_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9690866_left_root small_9690866_left_fuel small_9690866_left_count small_9690866_left_encoded = true := by
  decide +kernel
theorem small_9690866_left_covered : CoveredBy scale carrier boxes small_9690866_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9690866_left_root small_9690866_left_fuel small_9690866_left_count small_9690866_left_encoded small_9690866_left_checked

theorem cover_9690866 : CoveredBy scale carrier boxes root_9690866 := by
  apply coveredBy_split_literal root_9690866 small_9690866_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.root_9690872 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_9690866_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.cover_9690872
#print axioms cover_9690866

def root_9690865 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9690865_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9690865_right_fuel : Nat := 22
def small_9690865_right_count : Nat := 241
def small_9690865_right_encoded : String := "12073D0008A912F912073D0208A912FB12073D04050000FC135D8107050000FE135D81090CFD9C010F34D100000000000CFD9BF90F350D020CFD9BFB0F350D040C9A87020F8750F90C9A87040F8750FB078000FC0000000600000006000000020F878CFB00000002078000FC00000009128A41070000000300000008000000010F878CF9000000010C9A87040F8750FB078000FC000000070000000A000000020F878CFB00000002078000FC128A7D0700000009000000030000000A000000020F34D1040000000200000009000000010F34D102000000010CFD9BFB0F350D040000000A000000020000000A0F350D000CFD9BF90F350D020CFD9BFB0F350D040C9A8700000000090F878D010C9A8702000000090000000A00000000000000020F34D1040000000200000009000000010F34D102000000010000000A0000000000000004135D4509000000040CFD9C010F34D100000000000CFD9BF90F350D020CFD9BFB0F350D040C9A870200000009000000090000000200000009000000010F34D102000000010CFD9BFB0F350D040C9A87040F8750FB00000007000000020000000500000002000000050F350D000CFD9BF900000009000000090000000000000003135D450700000003050000FE135D81090CFD9C010F34D100000000000CFD9BF90F350D020CFD9BFB0F350D040C9A87020F8750F90000000A000000010000000A000000020F34D104000000020C9A87020F8750F9000000080000000100000005000000010F34D102000000010000000A0F350D000CFD9BF90F350D020CFD9BFB0000000A0000000A000000010000000A0000000000000004135D4509000000040CFD9C010F34D100000000000CFD9BF90F350D020CFD9BFB0F350D040C9A87020F8750F90C9A87040000000A000000050000000100000005000000020F34D1040000000200000005000000010F34D10200000001000000050F350D000CFD9BF90000000A0000000900000000000000021207010400000002050000FC135D8107050000FE135D81090CFD9C010F34D100000000000CFD9BF90F350D0200000009000000010000000900000009000000040000000900000003135D450700000003050000FE135D81090CFD9C010F34D100000000000000000500000005000000040000000500000001120701020000000108A912FB12073D04050000FC135D8107050000FE135D81090CFD9C010F34D10000000000045489F90000000A0000000A0000000A00000004135D4509000000040CFD9C010F34D100000000000000000500000005000000030000000A0000000212070104000000020000000500000000"
theorem small_9690865_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9690865_right_root small_9690865_right_fuel small_9690865_right_count small_9690865_right_encoded = true := by
  decide +kernel
theorem small_9690865_right_covered : CoveredBy scale carrier boxes small_9690865_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9690865_right_root small_9690865_right_fuel small_9690865_right_count small_9690865_right_encoded small_9690865_right_checked

theorem cover_9690865 : CoveredBy scale carrier boxes root_9690865 := by
  apply coveredBy_split_literal root_9690865 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.root_9690866 small_9690865_right_root coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.cover_9690866
  · exact small_9690865_right_covered
#print axioms cover_9690865

def root_9690859 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9690859_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9690859_left_fuel : Nat := 1
def small_9690859_left_count : Nat := 1
def small_9690859_left_encoded : String := "00000004"
theorem small_9690859_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9690859_left_root small_9690859_left_fuel small_9690859_left_count small_9690859_left_encoded = true := by
  decide +kernel
theorem small_9690859_left_covered : CoveredBy scale carrier boxes small_9690859_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9690859_left_root small_9690859_left_fuel small_9690859_left_count small_9690859_left_encoded small_9690859_left_checked

theorem cover_9690859 : CoveredBy scale carrier boxes root_9690859 := by
  apply coveredBy_split_literal root_9690859 small_9690859_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.root_9690865 coord4 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_9690859_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.cover_9690865
#print axioms cover_9690859

def root_9685609 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9685609 : CoveredBy scale carrier boxes root_9685609 := by
  apply coveredBy_split_literal root_9685609 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0230.root_9685610 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.root_9690859 coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0230.cover_9685610
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.cover_9690859
#print axioms cover_9685609

def root_9685603 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9685603_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9685603_left_fuel : Nat := 1
def small_9685603_left_count : Nat := 1
def small_9685603_left_encoded : String := "00000003"
theorem small_9685603_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9685603_left_root small_9685603_left_fuel small_9685603_left_count small_9685603_left_encoded = true := by
  decide +kernel
theorem small_9685603_left_covered : CoveredBy scale carrier boxes small_9685603_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9685603_left_root small_9685603_left_fuel small_9685603_left_count small_9685603_left_encoded small_9685603_left_checked

theorem cover_9685603 : CoveredBy scale carrier boxes root_9685603 := by
  apply coveredBy_split_literal root_9685603 small_9685603_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.root_9685609 coord3 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_9685603_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.cover_9685609
#print axioms cover_9685603

def root_9659207 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9659207 : CoveredBy scale carrier boxes root_9659207 := by
  apply coveredBy_split_literal root_9659207 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0230.root_9659208 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.root_9685603 coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0230.cover_9659208
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.cover_9685603
#print axioms cover_9659207

def root_9659201 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9659201_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9659201_left_fuel : Nat := 1
def small_9659201_left_count : Nat := 1
def small_9659201_left_encoded : String := "00000002"
theorem small_9659201_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9659201_left_root small_9659201_left_fuel small_9659201_left_count small_9659201_left_encoded = true := by
  decide +kernel
theorem small_9659201_left_covered : CoveredBy scale carrier boxes small_9659201_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9659201_left_root small_9659201_left_fuel small_9659201_left_count small_9659201_left_encoded small_9659201_left_checked

theorem cover_9659201 : CoveredBy scale carrier boxes root_9659201 := by
  apply coveredBy_split_literal root_9659201 small_9659201_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.root_9659207 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_9659201_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.cover_9659207
#print axioms cover_9659201

def root_9656323 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9656323 : CoveredBy scale carrier boxes root_9656323 := by
  apply coveredBy_split_literal root_9656323 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3614.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.root_9659201 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3614.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.cover_9659201
#print axioms cover_9656323

def root_9656317 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9656317_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9656317_left_fuel : Nat := 1
def small_9656317_left_count : Nat := 1
def small_9656317_left_encoded : String := "00000001"
theorem small_9656317_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9656317_left_root small_9656317_left_fuel small_9656317_left_count small_9656317_left_encoded = true := by
  decide +kernel
theorem small_9656317_left_covered : CoveredBy scale carrier boxes small_9656317_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9656317_left_root small_9656317_left_fuel small_9656317_left_count small_9656317_left_encoded small_9656317_left_checked

theorem cover_9656317 : CoveredBy scale carrier boxes root_9656317 := by
  apply coveredBy_split_literal root_9656317 small_9656317_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.root_9656323 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_9656317_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.cover_9656323
#print axioms cover_9656317

def root_9652879 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9652879 : CoveredBy scale carrier boxes root_9652879 := by
  apply coveredBy_split_literal root_9652879 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0229.root_9652880 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.root_9656317 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0229.cover_9652880
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.cover_9656317
#print axioms cover_9652879

def root_9652874 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9652874_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9652874_right_fuel : Nat := 1
def small_9652874_right_count : Nat := 1
def small_9652874_right_encoded : String := "00000000"
theorem small_9652874_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9652874_right_root small_9652874_right_fuel small_9652874_right_count small_9652874_right_encoded = true := by
  decide +kernel
theorem small_9652874_right_covered : CoveredBy scale carrier boxes small_9652874_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9652874_right_root small_9652874_right_fuel small_9652874_right_count small_9652874_right_encoded small_9652874_right_checked

theorem cover_9652874 : CoveredBy scale carrier boxes root_9652874 := by
  apply coveredBy_split_literal root_9652874 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.root_9652879 small_9652874_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.cover_9652879
  · exact small_9652874_right_covered
#print axioms cover_9652874

def root_9652214 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9652214_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9652214_left_fuel : Nat := 25
def small_9652214_left_count : Nat := 311
def small_9652214_left_encoded : String := "1151E901000000000A0001021151E8F90A0001041151E8FB0A0000FC000000051151E907000000030A0000FE000000051151E9090000000405000100135D450100000000050001020000000500000007135D810105000102135D44F905000104000000050000000800000001135D80F9000000010500010400000007135D80FB00000002000000090000000000000002115224FB000000020A0000FC115225070A0000FE1152250908A912FB12073D040000000500000002120701040000000200000008000000041151E9090000000400000009000000031151E907000000030A0000FE000000081151E9090000000408A912FB12073D040500010000000008000000080000000212070104000000020000000800000001115224F9000000010A0001041151E8FB0A0000FC115225070A0000FE1152250908A912F912073D020000000500000001120701020000000100000007000000041151E9090000000400000007000000031151E907000000030A0000FE0000000A1151E9090000000408A912F912073D020500010000000007000000070000000112070102000000010000000700000002115224FB000000020A0000FC115225070A0000FE1152250908A912F912073D0208A912FB12073D0408A91307120700FC000000050000000312073CFC0000000308A91309120700FE000000050000000412073CFE0000000405000100135D4501000000000CFD9BF9000000080F34D1020000000100000007135D81010CFD9BF90F350D020CFD9BFB0F350D040CFD9C070000000500000008000000020F34D1040000000200000008000000010F34D102000000010CFD9BFB000000070F34D104000000020CFD9C0700000007000000080000000000000002120701040000000208A91307120700FC08A913090000000800000009000000030000000800000001120701020000000108A912FB12073D0408A913070000000712073CFC0000000308A913090000000A0000000700000002120701040000000208A91307120700FC08A91309120700FE0500010000000005135D8101045489F9000000051386710200000001000000070000000000000004000000070000000312073CFC0000000308A913090000000A12073CFE000000040500010000000009135D8101045489F91386AD02045489FB1386AD040CFD9C07000000090000000A0000000200000009000000010000000A00000000000000041151E9090000000408A912F912073D0208A912FB12073D0408A913070000000712073CFC000000030500010000000009135D8101050000FE135D81090CFD9BF90000000900000009000000040000000900000000000000020000000900000001120701020000000108A912FB00000007120701040000000200000009000000031151E907000000030A0000FE1152250908A912F912073D0208A912FB12073D0408A913090000000812073CFE00000004050001000000000A135D8101050000FC135D81070CFD9BF9000000080000000A000000030000000A00000000000000021207010400000002000000080000000112070102000000010000000A000000041151E9090000000408A912F912073D0208A912FB12073D040500010000000009135D8101050000FC135D8107050000FE0000000900000009000000030000000A00000000000000021207010400000002000000090000000112070102000000010000000A"
theorem small_9652214_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9652214_left_root small_9652214_left_fuel small_9652214_left_count small_9652214_left_encoded = true := by
  decide +kernel
theorem small_9652214_left_covered : CoveredBy scale carrier boxes small_9652214_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9652214_left_root small_9652214_left_fuel small_9652214_left_count small_9652214_left_encoded small_9652214_left_checked

theorem cover_9652214 : CoveredBy scale carrier boxes root_9652214 := by
  apply coveredBy_split_literal root_9652214 small_9652214_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.root_9652874 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_9652214_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.cover_9652874
#print axioms cover_9652214

def root_9649720 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9649720 : CoveredBy scale carrier boxes root_9649720 := by
  apply coveredBy_split_literal root_9649720 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3612.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.root_9652214 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3612.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.cover_9652214
#print axioms cover_9649720

def root_9697998 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9697998 : CoveredBy scale carrier boxes root_9697998 := by
  apply coveredBy_split_literal root_9697998 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3627.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3628.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3627.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3628.covered
#print axioms cover_9697998

def root_9703210 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9703210 : CoveredBy scale carrier boxes root_9703210 := by
  apply coveredBy_split_literal root_9703210 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3630.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3631.root coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3630.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3631.covered
#print axioms cover_9703210

def root_9703205 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9703205_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9703205_right_fuel : Nat := 1
def small_9703205_right_count : Nat := 1
def small_9703205_right_encoded : String := "00000000"
theorem small_9703205_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9703205_right_root small_9703205_right_fuel small_9703205_right_count small_9703205_right_encoded = true := by
  decide +kernel
theorem small_9703205_right_covered : CoveredBy scale carrier boxes small_9703205_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9703205_right_root small_9703205_right_fuel small_9703205_right_count small_9703205_right_encoded small_9703205_right_checked

theorem cover_9703205 : CoveredBy scale carrier boxes root_9703205 := by
  apply coveredBy_split_literal root_9703205 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.root_9703210 small_9703205_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.cover_9703210
  · exact small_9703205_right_covered
#print axioms cover_9703205

def root_9701363 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9701363 : CoveredBy scale carrier boxes root_9701363 := by
  apply coveredBy_split_literal root_9701363 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3629.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.root_9703205 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3629.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.cover_9703205
#print axioms cover_9701363

def root_9697997 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9697997 : CoveredBy scale carrier boxes root_9697997 := by
  apply coveredBy_split_literal root_9697997 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.root_9697998 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.root_9701363 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.cover_9697998
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.cover_9701363
#print axioms cover_9697997

def root_9649719 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9649719 : CoveredBy scale carrier boxes root_9649719 := by
  apply coveredBy_split_literal root_9649719 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.root_9649720 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.root_9697997 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.cover_9649720
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.cover_9697997
#print axioms cover_9649719

def root_9584501 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9584501 : CoveredBy scale carrier boxes root_9584501 := by
  apply coveredBy_split_literal root_9584501 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0229.root_9584502 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.root_9649719 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0229.cover_9584502
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.cover_9649719
#print axioms cover_9584501

def root_9707347 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9707347 : CoveredBy scale carrier boxes root_9707347 := by
  apply coveredBy_split_literal root_9707347 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3632.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3633.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3632.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3633.covered
#print axioms cover_9707347

def root_9711640 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9711640 : CoveredBy scale carrier boxes root_9711640 := by
  apply coveredBy_split_literal root_9711640 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3634.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3635.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3634.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3635.covered
#print axioms cover_9711640

def root_9707346 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9707346 : CoveredBy scale carrier boxes root_9707346 := by
  apply coveredBy_split_literal root_9707346 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.root_9707347 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.root_9711640 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.cover_9707347
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.cover_9711640
#print axioms cover_9707346

def root_9707345 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9707345 : CoveredBy scale carrier boxes root_9707345 := by
  apply coveredBy_split_literal root_9707345 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.root_9707346 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3636.root coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.cover_9707346
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3636.covered
#print axioms cover_9707345

def root_9719952 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9719952 : CoveredBy scale carrier boxes root_9719952 := by
  apply coveredBy_split_literal root_9719952 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3639.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3640.root coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3639.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3640.covered
#print axioms cover_9719952

def root_9719947 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9719947_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9719947_right_fuel : Nat := 1
def small_9719947_right_count : Nat := 1
def small_9719947_right_encoded : String := "00000000"
theorem small_9719947_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9719947_right_root small_9719947_right_fuel small_9719947_right_count small_9719947_right_encoded = true := by
  decide +kernel
theorem small_9719947_right_covered : CoveredBy scale carrier boxes small_9719947_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9719947_right_root small_9719947_right_fuel small_9719947_right_count small_9719947_right_encoded small_9719947_right_checked

theorem cover_9719947 : CoveredBy scale carrier boxes root_9719947 := by
  apply coveredBy_split_literal root_9719947 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.root_9719952 small_9719947_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.cover_9719952
  · exact small_9719947_right_covered
#print axioms cover_9719947

def root_9718133 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9718133 : CoveredBy scale carrier boxes root_9718133 := by
  apply coveredBy_split_literal root_9718133 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3638.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.root_9719947 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3638.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.cover_9719947
#print axioms cover_9718133

def root_9716329 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9716329 : CoveredBy scale carrier boxes root_9716329 := by
  apply coveredBy_split_literal root_9716329 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3637.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.root_9718133 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3637.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.cover_9718133
#print axioms cover_9716329

def root_9716328 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9716328 : CoveredBy scale carrier boxes root_9716328 := by
  apply coveredBy_split_literal root_9716328 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.root_9716329 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3641.root coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.cover_9716329
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3641.covered
#print axioms cover_9716328

def root_9707344 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9707344 : CoveredBy scale carrier boxes root_9707344 := by
  apply coveredBy_split_literal root_9707344 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.root_9707345 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.root_9716328 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.cover_9707345
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.cover_9716328
#print axioms cover_9707344

def root_9584500 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9584500 : CoveredBy scale carrier boxes root_9584500 := by
  apply coveredBy_split_literal root_9584500 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.root_9584501 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.root_9707344 coord3 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.cover_9584501
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.cover_9707344
#print axioms cover_9584500

def root_9728128 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9728128_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9728128_left_fuel : Nat := 19
def small_9728128_left_count : Nat := 191
def small_9728128_left_encoded : String := "1151E905000000020A0000FC115224FD000000030A0000FE115224FF0000000408A91301120701000000000008A912F912073D0208A912FD12073CFC0000000308A912FF00000006120700FE0000000500000004120700FC000000050000000300000001120701020000000108A912FD00000006120700FC000000060000000312073D0008A912F912073D0208A912FD12073CFC0000000308A912FF12073CFE00000004050001040000000500000009120700FE0000000500000004120700FC000000050000000300000001120701020000000108A912FD12073CFC0000000308A912FF12073CFE0000000405000104000000050000000900000009120700FC08A912FF12073CFE000000040500010400000005135D81050000000500000002120700FE0500010400000005000000060000000400000003000000001151E8FF08A91301120701000000000008A912F912073D0208A912FD00000006120700FC0500010400000006135D8105050000FE00000006135D44FF00000006000000040000000200000003000000010000000612073D0008A912F912073D0208A912FD12073CFC0000000300000009120700FC0500010400000005135D8105050000FE00000005135D44FF0CFD9C01000000080000000800000004000000020000000300000001120701020000000108A912FD00000006120700FC0500010400000006135D8105050000FE00000006135D44FF0CFD9C01000000060F350D00045489F900000005000000060000000000000004000000020000000300000000000000041151E8FD0A0000FE115224FF0000000408A91301120701000000000008A912F912073D0208A912FF00000006120700FE0500010400000006135D8105050000FC000000060000000A0000000200000004000000010000000612073D0008A912F912073D0208A912FF12073CFE0000000405000104135D4505000000020000000900000009120700FE05000104000000050000000A0000000400000001120701020000000100000009000000001151E8FF000000090000000400000003"
theorem small_9728128_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9728128_left_root small_9728128_left_fuel small_9728128_left_count small_9728128_left_encoded = true := by
  decide +kernel
theorem small_9728128_left_covered : CoveredBy scale carrier boxes small_9728128_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9728128_left_root small_9728128_left_fuel small_9728128_left_count small_9728128_left_encoded small_9728128_left_checked

theorem cover_9728128 : CoveredBy scale carrier boxes root_9728128 := by
  apply coveredBy_split_literal root_9728128 small_9728128_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3642.root coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_9728128_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3642.covered
#print axioms cover_9728128

def root_9728122 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9728122_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9728122_left_fuel : Nat := 1
def small_9728122_left_count : Nat := 1
def small_9728122_left_encoded : String := "00000001"
theorem small_9728122_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9728122_left_root small_9728122_left_fuel small_9728122_left_count small_9728122_left_encoded = true := by
  decide +kernel
theorem small_9728122_left_covered : CoveredBy scale carrier boxes small_9728122_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9728122_left_root small_9728122_left_fuel small_9728122_left_count small_9728122_left_encoded small_9728122_left_checked

theorem cover_9728122 : CoveredBy scale carrier boxes root_9728122 := by
  apply coveredBy_split_literal root_9728122 small_9728122_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.root_9728128 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_9728122_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.cover_9728128
#print axioms cover_9728122

def root_9727604 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9727604_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9727604_left_fuel : Nat := 22
def small_9727604_left_count : Nat := 241
def small_9727604_left_encoded : String := "1151E8F90A0001041151E905000000020A0000FC115224FD000000030A0000FE115224FF0000000408A91301120701000000000008A912FD12073CFC0000000308A912FF00000006120700FE0000000500000004120700FC000000050000000312073D0000000005000000001151E8FF08A91301120701000000000008A912FD00000006120700FC000000060000000300000009000000041151E8FD0A0000FE115224FF0000000408A91301120701000000000008A912FF00000006120700FE000000060000000412073D0008A912FF12073CFE0000000405000102135D44F905000104000000060000000900000001135D80F90000000105000104135D4505000000020000000600000009120700FE0000000500000004000000001151E8FF000000090000000400000003115225050A0000FC115224FD000000030A0000FE115224FF0000000408A91301120701000000000008A91305120701040000000208A912FD00000009120700FC08A912FF00000008000000090000000312073D0408A912FD12073CFC0000000308A912FF12073CFE0000000400000009120700FE05000102135D44F904548A0113867100000000000CFD9C0500000009000000050000000500000001135D80F90000000104548A0113867100000000000CFD9C0500000009000000090000000900000004120700FC08A912FF12073CFE000000040500010200000009135D80F90000000104548A0113867100000000000CFD9C050F34D10400000002000000070000000900000009120700FE0000000500000004000000030000000212073D0008A91305120701040000000208A912FD000000090000000812073D0408A912FD00000009120700FC000000050000000300000002000000001151E8FF08A91301120701000000000008A91305120701040000000208A912FD000000070000000712073D0408A912FD00000009120700FC050001020000000800000008000000030000000212073D0008A9130512070104000000020000000812073D04000000090000000200000000000000041151E8FD0A0000FE115224FF0000000408A91301120701000000000008A9130512070104000000020000000912073D0408A912FF12073CFE00000004050001020000000700000009120700FE05000102135D44F90000000A00000001135D80F900000001050000FC000000090000000A000000040000000212073D0008A913050000000912073D0408A912FF00000009120700FE05000102135D44F90000000900000001000000090000000400000002000000001151E8FF0000000900000004000000030000000200000001"
theorem small_9727604_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9727604_left_root small_9727604_left_fuel small_9727604_left_count small_9727604_left_encoded = true := by
  decide +kernel
theorem small_9727604_left_covered : CoveredBy scale carrier boxes small_9727604_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9727604_left_root small_9727604_left_fuel small_9727604_left_count small_9727604_left_encoded small_9727604_left_checked

theorem cover_9727604 : CoveredBy scale carrier boxes root_9727604 := by
  apply coveredBy_split_literal root_9727604 small_9727604_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.root_9728122 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_9727604_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.cover_9728122
#print axioms cover_9727604

def root_9727599 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9727599_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9727599_right_fuel : Nat := 1
def small_9727599_right_count : Nat := 1
def small_9727599_right_encoded : String := "00000000"
theorem small_9727599_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9727599_right_root small_9727599_right_fuel small_9727599_right_count small_9727599_right_encoded = true := by
  decide +kernel
theorem small_9727599_right_covered : CoveredBy scale carrier boxes small_9727599_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9727599_right_root small_9727599_right_fuel small_9727599_right_count small_9727599_right_encoded small_9727599_right_checked

theorem cover_9727599 : CoveredBy scale carrier boxes root_9727599 := by
  apply coveredBy_split_literal root_9727599 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.root_9727604 small_9727599_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.cover_9727604
  · exact small_9727599_right_covered
#print axioms cover_9727599

def root_9726653 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9726653_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9726653_left_fuel : Nat := 28
def small_9726653_left_count : Nat := 441
def small_9726653_left_encoded : String := "1151E901000000000A0001021151E8F90A0001041151E905000000020A0000FC000000051151E8FD0A0000FE000000051151E8FF000000090000000400000003115225050A0000FC115224FD000000030A0000FE115224FF00000004000000091151E8FF00000008000000041151E8FD0A0000FE115224FF0000000408A913050000000912073D0408A912FF00000009120700FE0000000500000004000000021151E8FF0000000900000004000000030000000200000001115224F9000000010A0001041151E905000000020A0000FC115224FD000000030A0000FE115224FF0000000408A912F912073D0208A912FD00000005120700FC000000050000000300000001120701020000000108A912FD00000009120700FC08A912FF0000000500000009000000031151E8FF08A912F900000009120701020000000108A912FD00000009120700FC0000000500000003000000041151E8FD0A0000FE115224FF0000000408A912F912073D0208A912FF00000009120700FE000000050000000400000001000000091151E8FF000000090000000400000003115225050A0000FC115224FD000000030A0000FE115224FF0000000408A912F912073D0208A91305120701040000000208A912FD12073CFC0000000308A912FF00000008000000090000000812073D0408A912FD00000009120700FC00000005000000030000000200000001120701020000000108A91305120701040000000208A912FD12073CFC0000000308A912FF12073CFE0000000405000100135D450100000000045489F900000009138671020000000104548A0513867104000000020CFD9BFD0F350CFC00000003000000090000000500000005135D8101045489F91386AD0204548A0513867104000000020CFD9BFD00000009000000080000000900000001138671020000000104548A0513867104000000020CFD9BFD0F350CFC00000003000000090F34D0FC00000005000000031386AD04000000090000000200000000120700FE0000000500000004120700FC08A912FF00000005120700FE00000005000000040000000312073D0408A912FD12073CFC0000000308A912FF12073CFE000000040000000900000009120700FC08A912FF12073CFE000000040500010000000005135D810100000005000000000000000900000003000000021151E8FF08A912F912073D0208A9130512070104000000020000000812073D0408A912FD12073CFC00000003050001000000000800000009000000080000000200000001120701020000000108A91305120701040000000208A912FD12073CFC0000000305000100135D45010000000000000008135D8101050000FE135D80FF00000004045489F900000008138671020000000104548A0513867104000000020CFD9BFD0F350CFC000000030C9A86FC000000080F8750FD0000000800000003000000081386AD040CFD9BFD0F350CFC000000030C9A86FC00000008000000090000000800000002135D44FF045489F900000008138671020000000104548A050000000A0000000800000004000000000000000812073D0408A912FD12073CFC0000000305000100135D450100000000050000FE135D80FF00000004045489F900000008138671020000000100000009135D44FF0000000800000004135D8101050000FE135D80FF00000004045489F900000009138671020000000100000009135D44FF045489F90000000913867102000000010CFD9C050F34D10400000002000000080F350D0400000009000000020000000400000000120700FC000000080000000300000002000000041151E8FD0A0000FE115224FF0000000408A912F912073D0208A913050000000912073D04000000090000000200000001120701020000000108A91305120701040000000208A912FF0000000900000009000000091151E8FF08A912F912073D0208A9130512070104000000020500010000000009000000090000000900000001120701020000000108A91305120701040000000205000100135D450100000000050000FC135D80FD00000003050000FE135D80FF00000004045489F900000008138671020000000100000009135D44FF045489F90000000813867102000000010000000800000004135D44FD050000FE00000009135D44FF045489F900000008138671020000000104548A0500000005000000090000000400000003135D8101050000FC135D80FD00000003050000FE135D80FF00000004045489F900000009138671020000000100000009135D44FF045489F91386AD020000000900000001138671020000000104548A05000000051386AD040780010000000009000000050000000200000004135D44FD050000FE0000000900000005000000030000000012073D0405000100000000090000000900000002000000040000000300000002"
theorem small_9726653_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9726653_left_root small_9726653_left_fuel small_9726653_left_count small_9726653_left_encoded = true := by
  decide +kernel
theorem small_9726653_left_covered : CoveredBy scale carrier boxes small_9726653_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9726653_left_root small_9726653_left_fuel small_9726653_left_count small_9726653_left_encoded small_9726653_left_checked

theorem cover_9726653 : CoveredBy scale carrier boxes root_9726653 := by
  apply coveredBy_split_literal root_9726653 small_9726653_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.root_9727599 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_9726653_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.cover_9727599
#print axioms cover_9726653

def root_9731732 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9731732_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9731732_left_fuel : Nat := 24
def small_9731732_left_count : Nat := 491
def small_9731732_left_encoded : String := "1151E901000000000A0001021151E8F90A0001041151E905000000020A0000FC115224FD000000030A0000FE1152250908A912FD00000005120700FC0000000500000003000000041151E9090000000408A912FD12073CFC000000030500010000000005135D810105000102000000050000000700000000120700FC050001000000000700000007000000031151E8FD0A0000FE000000051151E909000000040500010000000006135D810105000102135D44F90000000600000001000000060000000000000003115225050A0000FC115224FD000000030A0000FE1152250908A91305120701040000000208A912FD000000050000000912073D0408A912FD00000005120700FC000000050000000300000002000000041151E9090000000408A91305120701040000000208A912FD000000060000000612073D0408A912FD12073CFC0000000305000100135D45010000000000000006135D810105000102135D44F90000000600000001135D80F900000001050000FE135D81090CFD9C05000000060F350D040CFD9BFD000000050000000600000002000000040000000600000000120700FC05000100135D450100000000050001020000000600000006135D810105000102135D44F90000000600000001000000090000000000000003000000021151E8FD0A0000FE1152250908A91305120701040000000208A91309120700FE00000005000000040000000612073D0408A91309120700FE000000050000000412073CFE000000040500010000000005135D81010500010200000005135D80F900000001050000FC000000050000000A0000000000000002000000041151E9090000000400000006000000030000000200000001115224F9000000010A0001041151E905000000020A0000FC115224FD000000030A0000FE1152250908A912F912073D0208A912FD12073CFC0000000308A91309120700FE000000050000000412073CFE0000000405000100135D4501000000000500010400000005135D81050CFD9BF9000000050F34D102000000010000000700000002135D810105000104135D4505000000020CFD9BF90000000500000009135D81050CFD9BF900000009000000090000000200000000120700FC08A9130900000009000000090000000300000001120701020000000100000009000000041151E9090000000408A912F912073D0208A912FD12073CFC00000003050001000000000700000007120700FC000000070000000300000001120701020000000108A912FD00000007000000091151E8FD0A0000FE1152250908A912F912073D0208A91309120700FE000000050000000412073CFE0000000405000100135D45010000000000000007135D810105000104135D450500000002050000FC000000050000000A135D8105050000FC135D80FD000000030CFD9BF9000000070F34D10200000001000000070000000A000000020000000000000001120701020000000108A913090000000900000007000000041151E9090000000408A912F912073D020500010000000007000000070000000112070102000000010000000700000003115225050A0000FC115224FD000000030A0000FE1152250908A912F912073D0208A913050000000912073D0408A912FD12073CFC0000000308A913090000000912073CFE0000000405000100135D4501000000000CFD9BF90F350D020CFD9C05000000050F350D040000000500000002000000010F34D1020000000100000007135D81010CFD9BF9000000090000000900000000120700FC00000009000000030000000200000001120701020000000108A91305120701040000000208A912FD12073CFC00000003000000090000000900000009000000041151E9090000000408A912F912073D0208A91305120701040000000208A912FD000000070000000912073D0408A912FD12073CFC0000000305000100135D450100000000050000FE0000000700000007135D8101050000FE135D81090CFD9BF90F350D020CFD9C05000000070F350D040000000700000002000000010F34D102000000010000000700000004135D4509000000040CFD9BF9000000070F34D102000000010000000700000000120700FC05000100135D4501000000000000000900000009000000030000000200000001120701020000000108A913050000000712073D0408A912FD0000000700000009000000021151E8FD0A0000FE1152250908A912F912073D0208A91305120701040000000208A91309000000090000000712073D0408A91309120700FE0500010000000005000000090000000412073CFE0000000405000100135D450100000000050000FC00000007135D44FD0000000700000003135D8101050000FC135D80FD000000030CFD9BF90F350D020CFD9C05000000070000000A000000010F34D1020000000100000007135D44FD0CFD9BF90000000A0F34D102000000010000000700000003000000000000000200000001120701020000000108A913050000000712073D0408A91309000000090000000700000002000000041151E9090000000408A912F912073D0208A913050000000612073D0405000100135D45010000000000000007135D8101050000FC135D80FD00000003050000FE0000000700000007135D44FD00000006000000030000000000000002000000011207010200000001000000070000000300000002"
theorem small_9731732_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9731732_left_root small_9731732_left_fuel small_9731732_left_count small_9731732_left_encoded = true := by
  decide +kernel
theorem small_9731732_left_covered : CoveredBy scale carrier boxes small_9731732_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9731732_left_root small_9731732_left_fuel small_9731732_left_count small_9731732_left_encoded small_9731732_left_checked

theorem cover_9731732 : CoveredBy scale carrier boxes root_9731732 := by
  apply coveredBy_split_literal root_9731732 small_9731732_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3643.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_9731732_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3643.covered
#print axioms cover_9731732

def root_9726652 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9726652 : CoveredBy scale carrier boxes root_9726652 := by
  apply coveredBy_split_literal root_9726652 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.root_9726653 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.root_9731732 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.cover_9726653
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.cover_9731732
#print axioms cover_9726652

def root_9735840 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9735840 : CoveredBy scale carrier boxes root_9735840 := by
  apply coveredBy_split_literal root_9735840 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3644.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3645.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3644.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3645.covered
#print axioms cover_9735840

def root_9743910 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9743910 : CoveredBy scale carrier boxes root_9743910 := by
  apply coveredBy_split_literal root_9743910 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3647.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3648.root coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3647.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3648.covered
#print axioms cover_9743910

def root_9743905 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9743905_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9743905_right_fuel : Nat := 1
def small_9743905_right_count : Nat := 1
def small_9743905_right_encoded : String := "00000000"
theorem small_9743905_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9743905_right_root small_9743905_right_fuel small_9743905_right_count small_9743905_right_encoded = true := by
  decide +kernel
theorem small_9743905_right_covered : CoveredBy scale carrier boxes small_9743905_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9743905_right_root small_9743905_right_fuel small_9743905_right_count small_9743905_right_encoded small_9743905_right_checked

theorem cover_9743905 : CoveredBy scale carrier boxes root_9743905 := by
  apply coveredBy_split_literal root_9743905 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.root_9743910 small_9743905_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.cover_9743910
  · exact small_9743905_right_covered
#print axioms cover_9743905

def root_9741875 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9741875 : CoveredBy scale carrier boxes root_9741875 := by
  apply coveredBy_split_literal root_9741875 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3646.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.root_9743905 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3646.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.cover_9743905
#print axioms cover_9741875

def root_9735839 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9735839 : CoveredBy scale carrier boxes root_9735839 := by
  apply coveredBy_split_literal root_9735839 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.root_9735840 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.root_9741875 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.cover_9735840
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.cover_9741875
#print axioms cover_9735839

def root_9726651 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9726651 : CoveredBy scale carrier boxes root_9726651 := by
  apply coveredBy_split_literal root_9726651 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.root_9726652 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.root_9735839 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.cover_9726652
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.cover_9735839
#print axioms cover_9726651

def root_9749013 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9749013 : CoveredBy scale carrier boxes root_9749013 := by
  apply coveredBy_split_literal root_9749013 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3649.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3650.root coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3649.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3650.covered
#print axioms cover_9749013

def root_9749007 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9749007_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9749007_left_fuel : Nat := 1
def small_9749007_left_count : Nat := 1
def small_9749007_left_encoded : String := "00000001"
theorem small_9749007_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9749007_left_root small_9749007_left_fuel small_9749007_left_count small_9749007_left_encoded = true := by
  decide +kernel
theorem small_9749007_left_covered : CoveredBy scale carrier boxes small_9749007_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9749007_left_root small_9749007_left_fuel small_9749007_left_count small_9749007_left_encoded small_9749007_left_checked

theorem cover_9749007 : CoveredBy scale carrier boxes root_9749007 := by
  apply coveredBy_split_literal root_9749007 small_9749007_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.root_9749013 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_9749007_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.cover_9749013
#print axioms cover_9749007

def root_9748679 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9748679_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9748679_left_fuel : Nat := 18
def small_9748679_left_count : Nat := 151
def small_9748679_left_encoded : String := "1151E8F90A0001041151E905000000020A0000FC115225070A0000FE115224FF0000000408A91301120701000000000008A913070000000512073CFC0000000308A912FF00000005120700FE000000050000000412073D0008A913070000000512073CFC0000000308A912FF00000005120700FE0000000500000004000000001151E8FF08A91301120701000000000008A91307120700FC00000005000000030000000A12073D0008A91307120700FC0000000500000003000000080000000000000004000000031151E907000000030A0000FE115224FF0000000408A91301120701000000000008A912FF12073CFE000000040500010200000008135D80F90000000105000104135D450500000002050000FC00000005135D4507000000030000000800000008120700FE0500010200000005135D80F9000000010500010400000005000000080000000412073D0008A912FF00000008120700FE0000000800000004000000001151E8FF0000000800000004115225050A0000FC115225070A0000FE115224FF0000000408A91301120701000000000008A91305120701040000000208A91307120700FC00000008000000030000000812073D0408A91307120700FC08A912FF00000008000000050000000312073CFC0000000308A912FF00000008120700FE00000005000000040000000212073D0008A9130512070104000000020000000812073D0408A91307120700FC00000005000000030000000800000002000000001151E8FF0000000800000004000000031151E907000000030A0000FE000000081151E8FF00000008000000040000000200000001"
theorem small_9748679_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9748679_left_root small_9748679_left_fuel small_9748679_left_count small_9748679_left_encoded = true := by
  decide +kernel
theorem small_9748679_left_covered : CoveredBy scale carrier boxes small_9748679_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9748679_left_root small_9748679_left_fuel small_9748679_left_count small_9748679_left_encoded small_9748679_left_checked

theorem cover_9748679 : CoveredBy scale carrier boxes root_9748679 := by
  apply coveredBy_split_literal root_9748679 small_9748679_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.root_9749007 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_9748679_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.cover_9749007
#print axioms cover_9748679

def root_9748674 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9748674_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9748674_right_fuel : Nat := 1
def small_9748674_right_count : Nat := 1
def small_9748674_right_encoded : String := "00000000"
theorem small_9748674_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9748674_right_root small_9748674_right_fuel small_9748674_right_count small_9748674_right_encoded = true := by
  decide +kernel
theorem small_9748674_right_covered : CoveredBy scale carrier boxes small_9748674_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9748674_right_root small_9748674_right_fuel small_9748674_right_count small_9748674_right_encoded small_9748674_right_checked

theorem cover_9748674 : CoveredBy scale carrier boxes root_9748674 := by
  apply coveredBy_split_literal root_9748674 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.root_9748679 small_9748674_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.cover_9748679
  · exact small_9748674_right_covered
#print axioms cover_9748674

def root_9748046 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9748046_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9748046_left_fuel : Nat := 26
def small_9748046_left_count : Nat := 291
def small_9748046_left_encoded : String := "1151E901000000000A0001021151E8F90A0001041151E905000000020A0000FC115225070A0000FE000000081151E8FF0000000500000004000000031151E90700000003000000080000000800000001115224F9000000010A0001041151E905000000020A0000FC115225070A0000FE115224FF0000000408A912F912073D0208A91307120700FC08A912FF00000005120700FE00000005000000040000000312073CFC0000000308A912FF00000008120700FE000000080000000400000001120701020000000108A91307120700FC08A912FF12073CFE000000040500010000000005135D81010500010400000005135D8105045489F9000000051386710200000001000000080000000200000000120700FE00000009000000040000000312073CFC0000000308A912FF12073CFE0000000405000100135D45010000000000000008135D810105000104135D450500000002045489F90000000813867102000000010CFD9C070F34D0FC0000000800000003000000080000000800000000120700FE05000100135D45010000000005000104135D450500000002045489F9000000080000000900000008135D810105000104135D450500000002045489F91386AD020CFD9C070F34D0FC0000000900000003000000080000000113867102000000010CFD9C07000000090F350CFC00000003045489FF0000000800000009135D8105045489F90000000813867102000000010CFD9C0700000009000000080000000200000000000000041151E8FF08A912F912073D020000000800000001120701020000000108A91307120700FC00000008000000030000000800000004000000031151E907000000030A0000FE115224FF0000000408A912F912073D0208A912FF00000008120700FE000000080000000400000001120701020000000108A912FF12073CFE000000040500010000000008135D810105000104135D450500000002050000FC00000008000000070000000700000000120700FE05000100135D45010000000005000104135D450500000002050000FC00000008135D4507000000030000000700000008135D810105000104135D450500000002050000FC135D8107045489F9000000081386710200000001045489FF00000007138670FE07800100128A41010000000000000008128A7D0100000007000000000000000400000003135D450700000003000000070000000800000000000000041151E8FF0000000800000004115225050A0000FC115225070A0000FE115224FF0000000408A912F912073D0208A9130512070104000000020000000812073D0408A91307120700FC0000000800000003000000080000000200000001120701020000000108A91305120701040000000208A91307120700FC00000008000000030000000812073D0408A91307120700FC08A912FF00000008120700FE0500010000000008135D8101045489F9000000080000000900000000000000040000000312073CFC0000000308A912FF00000008120700FE0000000800000004000000021151E8FF0000000800000004000000031151E907000000030A0000FE000000081151E8FF000000080000000400000002"
theorem small_9748046_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9748046_left_root small_9748046_left_fuel small_9748046_left_count small_9748046_left_encoded = true := by
  decide +kernel
theorem small_9748046_left_covered : CoveredBy scale carrier boxes small_9748046_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9748046_left_root small_9748046_left_fuel small_9748046_left_count small_9748046_left_encoded small_9748046_left_checked

theorem cover_9748046 : CoveredBy scale carrier boxes root_9748046 := by
  apply coveredBy_split_literal root_9748046 small_9748046_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.root_9748674 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_9748046_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.cover_9748674
#print axioms cover_9748046

def root_9755903 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9755903 : CoveredBy scale carrier boxes root_9755903 := by
  apply coveredBy_split_literal root_9755903 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3652.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3653.root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3652.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3653.covered
#print axioms cover_9755903

def root_9755897 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9755897_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9755897_left_fuel : Nat := 1
def small_9755897_left_count : Nat := 1
def small_9755897_left_encoded : String := "00000002"
theorem small_9755897_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9755897_left_root small_9755897_left_fuel small_9755897_left_count small_9755897_left_encoded = true := by
  decide +kernel
theorem small_9755897_left_covered : CoveredBy scale carrier boxes small_9755897_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9755897_left_root small_9755897_left_fuel small_9755897_left_count small_9755897_left_encoded small_9755897_left_checked

theorem cover_9755897 : CoveredBy scale carrier boxes root_9755897 := by
  apply coveredBy_split_literal root_9755897 small_9755897_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.root_9755903 coord2 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_9755897_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.cover_9755903
#print axioms cover_9755897

def root_9767725 : ZRayBox := fun j => (#[⟨⟨(16678144), (16777216)⟩, ⟨(0), (1816224)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9767725 : CoveredBy scale carrier boxes root_9767725 := by
  apply coveredBy_split_literal root_9767725 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3656.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3657.root coord2 false (11664704)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3656.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3657.covered
#print axioms cover_9767725

def root_9767719 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (1816224)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9767719_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16678144)⟩, ⟨(0), (1816224)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9767719_left_fuel : Nat := 1
def small_9767719_left_count : Nat := 1
def small_9767719_left_encoded : String := "00000000"
theorem small_9767719_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9767719_left_root small_9767719_left_fuel small_9767719_left_count small_9767719_left_encoded = true := by
  decide +kernel
theorem small_9767719_left_covered : CoveredBy scale carrier boxes small_9767719_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9767719_left_root small_9767719_left_fuel small_9767719_left_count small_9767719_left_encoded small_9767719_left_checked

theorem cover_9767719 : CoveredBy scale carrier boxes root_9767719 := by
  apply coveredBy_split_literal root_9767719 small_9767719_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.root_9767725 coord0 false (16678144)
  · decide +kernel
  · decide +kernel
  · exact small_9767719_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.cover_9767725
#print axioms cover_9767719

def root_9767718 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9767718_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(1816224), (3632448)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9767718_right_fuel : Nat := 24
def small_9767718_right_count : Nat := 443
def small_9767718_right_encoded : String := "13E201000DE7CA040E5FD905000000020B4D43FC10804D070B4D43FE10804D090640010212FF70F9033F67C113BBF500000000000D4128840EFA1105000000020BF3E57C000000051008ED07000000030BF3E57E000000051008ED09000000040000000700000008000000080000000112FFACF900000001033F67C113BBF500000000000D4128840EFA1105000000020BF3E57C100929070BF3E57E10092909000000050000000400000007000000031008ED07000000030BF3E57E1009290906E0010212C7E4F9000000080000000112C820F90000000102B4D6A10000000600000008000000041008ED0900000004000000070EFA4D050BF3E57C100929070BF3E57E10092909000000080000000400000009000000031008ED07000000030BF3E57E1009290900000008000000041008ED090000000406E0010200000009000000090000000213BC31000D4128840EFA1105000000020BF3E57C000000071008ED07000000030BF3E57E00000008000000070EFA4D050000000800000002000000000000000410801109000000040640010212FF70F9033F67C113BBF500000000000D412884000000070EFA4D050000000900000002000000070000000112FFACF900000001033F67C113BBF500000000000D412884000000070EFA4D050000000900000002000000070000000310801107000000030B4D43FE10804D090640010212FF70F9033F67C113BBF500000000000D4128840EFA1105000000020AA6A27C10EDAD070BF3E57E000000081008ED090000000405A0010200000008133170F900000001000000080000000310ED7107000000030000000800000008000000080000000112FFACF900000001033F67C113BBF500000000000D4128840EFA1105000000020AA6A27C10EDAD070BF3E57E1009290906E00102000000080000000A000000041008ED090000000406E0010212C7E4F902B4D6A10000000A00000007000000010000000A0000000310ED7107000000030000000A0EFA4D050AA6A27C10EDAD070BF3E57E1009290900000008000000041008ED090000000406E0010212C7E4F9000000080000000112C820F90000000102B4D6A113D0D100000000000D9479440000000A0EAEE9050000000900000002000000080000000310ED7107000000030BF3E57E000000081008ED090000000406E00102000000080000000A0000000213BC31000D4128840EFA1105000000020AA6A27C10EDAD070BF3E57E000000081008ED0900000004000000070000000310ED7107000000030000000800000008000000000000000410801109000000040640010212FF70F9033F67C113BBF500000000000D4128840EFA1105000000020AA6A27C0000000710ED710700000003000000070EFA4D050AA6A27C10EDAD070AA6A27E10EDAD0905A0010200000008133170F90000000102B4D6A113D0D100000000000D94794400000007000000080000000700000004000000070000000310ED7107000000030AA6A27E10EDAD09000000080000000410ED710900000004000000070000000213BC31000D412884000000070EFA4D050AA6A27C000000070000000800000002000000000000000112FFACF900000001033F67C113BBF500000000000D4128840EFA1105000000020AA6A27C0000000710ED7107000000030000000A0EFA4D050AA6A27C10EDAD070AA6A27E10EDAD0906E001020000000912C820F9000000010000000900000004000000070000000310ED7107000000030AA6A27E10EDAD0906E0010212C7E4F902B4D6A10000000A00000008000000010000000A0000000410ED710900000004000000050000000213BC31000D4128840EFA110500000002000000070EFA4D050AA6A27C0000000910ED7107000000030000000500000002000000000E6015050B4D43FC10804D070B4D43FE10804D09064001020000000812FFACF900000001033F67C113BBF500000000000DAED885000000090E9661040BF3E57C000000091008ED07000000030000000800000002000000080000000410801109000000040640010200000009000000090000000310801107000000030B4D43FE10804D09064001020000000812FFACF900000001033F67C113BBF500000000000DAED885000000080E9661040AA6A27C000000080000000800000002000000080000000410801109000000040640010212FF70F9033F67C113BBF500000000000DAED8850E96250400000002000000080E9661040AA6A27C10EDAD07000000090000000310ED7107000000030000000800000002000000080000000112FFACF900000001033F67C113BBF500000000000DAED8850E96250400000002000000090E9661040AA6A27C10EDAD07000000090000000310ED7107000000030AA6A27E10EDAD0906E001020000000800000005000000040000000500000002000000090000000200000000"
theorem small_9767718_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9767718_right_root small_9767718_right_fuel small_9767718_right_count small_9767718_right_encoded = true := by
  decide +kernel
theorem small_9767718_right_covered : CoveredBy scale carrier boxes small_9767718_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9767718_right_root small_9767718_right_fuel small_9767718_right_count small_9767718_right_encoded small_9767718_right_checked

theorem cover_9767718 : CoveredBy scale carrier boxes root_9767718 := by
  apply coveredBy_split_literal root_9767718 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.root_9767719 small_9767718_right_root coord0 true (1816224)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.cover_9767719
  · exact small_9767718_right_covered
#print axioms cover_9767718

def root_9767713 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9767713_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-15552512), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9767713_right_fuel : Nat := 1
def small_9767713_right_count : Nat := 1
def small_9767713_right_encoded : String := "00000001"
theorem small_9767713_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9767713_right_root small_9767713_right_fuel small_9767713_right_count small_9767713_right_encoded = true := by
  decide +kernel
theorem small_9767713_right_covered : CoveredBy scale carrier boxes small_9767713_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9767713_right_root small_9767713_right_fuel small_9767713_right_count small_9767713_right_encoded small_9767713_right_checked

theorem cover_9767713 : CoveredBy scale carrier boxes root_9767713 := by
  apply coveredBy_split_literal root_9767713 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.root_9767718 small_9767713_right_root coord1 true (-15552512)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.cover_9767718
  · exact small_9767713_right_covered
#print axioms cover_9767713

def root_9767712 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9767712 : CoveredBy scale carrier boxes root_9767712 := by
  apply coveredBy_split_literal root_9767712 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.root_9767713 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3658.root coord1 false (6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.cover_9767713
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3658.covered
#print axioms cover_9767712

def root_9767706 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9767706_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(10897344), (13026304)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9767706_left_fuel : Nat := 1
def small_9767706_left_count : Nat := 1
def small_9767706_left_encoded : String := "00000004"
theorem small_9767706_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9767706_left_root small_9767706_left_fuel small_9767706_left_count small_9767706_left_encoded = true := by
  decide +kernel
theorem small_9767706_left_covered : CoveredBy scale carrier boxes small_9767706_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9767706_left_root small_9767706_left_fuel small_9767706_left_count small_9767706_left_encoded small_9767706_left_checked

theorem cover_9767706 : CoveredBy scale carrier boxes root_9767706 := by
  apply coveredBy_split_literal root_9767706 small_9767706_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.root_9767712 coord4 true (13026304)
  · decide +kernel
  · decide +kernel
  · exact small_9767706_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.cover_9767712
#print axioms cover_9767706

def root_9767052 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9767052_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-12756736), (-10572672)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9767052_left_fuel : Nat := 23
def small_9767052_left_count : Nat := 309
def small_9767052_left_encoded : String := "0F878D0907800102128A40F9022A458113E1C500000000000DE7CA040E5FD905000000020B4D43FC10804D07000000050000000310801107000000030DE7C9FE0E60150900000005000000040E5FD909000000040640010212FF70F90115234100000005000000080000000112FFACF9000000010115234113F85900000000000D4128840EFA110500000002000000060000000613F895000D4128840EFA1105000000020AA6A27C10EDAD070D41287E000000050EFA11090000000406E0010200000005000000060000000310ED7107000000030000000A0EFA4D050AA6A27C0000000810ED7107000000030000000800000002000000000E6015050B4D43FC10804D070DE7C9FE000000050E5FD90900000004064001020000000512FFACF9000000010115234100000005000000080000000310801107000000030DE7C9FE000000080E5FD90900000004064001020000000812FFACF9000000010115234100000007000000080000000213E201000DE7CA040E5FD905000000020B4D43FC10804D070DE7C9FE000000080E5FD90900000004064001020000000812FFACF900000001033F67C113BBF500000000000D41288400000005000000080000000800000003108011070000000300000008000000080000000000000001128A7CF900000001022A458113E1C500000000000DE7CA040E5FD905000000020B4D43FC10804D070DE7C9FE000000060E5FD90900000004000000060000000310801107000000030DE7C9FE000000060E5FD9090000000408C0010211FBE8F9011523410000000613F895000D4128840000000A000000060000000000000001000000060E6015050B4D43FC10804D07000000060000000310801107000000030DE7C9FE000000060E5FD9090000000408C0010211FBE8F9011523410000000613F895000DAED8850E9625040000000200000006000000060000000000000001000000060000000213E201000DE7CA040E5FD905000000020B4D43FC10804D070DE7C9FE0E60150908C0010211FBE8F9000000080000000100000006000000040E5FD9090000000408C0010211FBE8F9033F67C113BBF500000000000D4128840EFA110500000002000000060000000613BC31000D4128840EFA1105000000020BF3E57C000000081008ED07000000030000000800000008000000000000000111FC24F900000001033F67C10000000613BC31000D4128840EFA1105000000020000000600000006000000000000000310801107000000030DE7C9FE0E60150908C001020000000811FC24F900000001033F67C10000000600000008000000040E5FD9090000000408C0010211FBE8F9033F67C113BBF500000000000D4128840000000A0EFA4D050AA6A27C10EDAD070D41287E000000060000000A000000030000000A0000000213BC31000D4128840000000A00000008000000000000000111FC24F900000001033F67C1000000060000000A0E6015050B4D43FC10804D070DE7C9FE0E60150900000008000000040E5FD9090000000408C0010211FBE8F9000000080000000111FC24F900000001033F67C10000000613BC310000000009000000000000000310801107000000030DE7C9FE0E60150900000008000000040E5FD9090000000408C0010211FBE8F9000000080000000111FC24F900000001033F67C10000000600000008000000020000000000000004"
theorem small_9767052_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9767052_left_root small_9767052_left_fuel small_9767052_left_count small_9767052_left_encoded = true := by
  decide +kernel
theorem small_9767052_left_covered : CoveredBy scale carrier boxes small_9767052_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9767052_left_root small_9767052_left_fuel small_9767052_left_count small_9767052_left_encoded small_9767052_left_checked

theorem cover_9767052 : CoveredBy scale carrier boxes root_9767052 := by
  apply coveredBy_split_literal root_9767052 small_9767052_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.root_9767706 coord4 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact small_9767052_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.cover_9767706
#print axioms cover_9767052

def root_9767046 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9767046_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(10897344), (13026304)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9767046_left_fuel : Nat := 1
def small_9767046_left_count : Nat := 1
def small_9767046_left_encoded : String := "00000003"
theorem small_9767046_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9767046_left_root small_9767046_left_fuel small_9767046_left_count small_9767046_left_encoded = true := by
  decide +kernel
theorem small_9767046_left_covered : CoveredBy scale carrier boxes small_9767046_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9767046_left_root small_9767046_left_fuel small_9767046_left_count small_9767046_left_encoded small_9767046_left_checked

theorem cover_9767046 : CoveredBy scale carrier boxes root_9767046 := by
  apply coveredBy_split_literal root_9767046 small_9767046_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.root_9767052 coord3 true (13026304)
  · decide +kernel
  · decide +kernel
  · exact small_9767046_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.cover_9767052
#print axioms cover_9767046

def root_9766460 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9766460_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-12756736), (-10572672)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9766460_left_fuel : Nat := 20
def small_9766460_left_count : Nat := 273
def small_9766460_left_encoded : String := "0F878D070C9A86FE0F878D0907800102128A40F9022A45810000000513E201000DE7CA04000000050E60150500000005000000020000000000000001128A7CF900000001022A458113E1C500000000000DE7CA040E5FD90500000002000000060000000613E201000DE7CA040E5FD905000000020DE7C9FC0E6015070DE7C9FE000000050E5FD9090000000408C001020000000500000006000000030E5FD907000000030DE7C9FE0E60150908C001020000000500000006000000040E5FD9090000000408C0010211FBE8F9033F67C10000000613BC3100000000090000000000000001000000060E6015050DE7C9FC0E6015070DE7C9FE0000000500000009000000030E5FD907000000030DE7C9FE0E60150900000006000000040E5FD9090000000408C0010200000009000000060000000200000000000000040F8751090000000407800102128A40F9022A458113E1C500000000000DE7CA040E5FD905000000020DE7C9FC0E60150700000005000000030E5FD907000000030B4D43FE10804D09000000050000000410801109000000040640010212FF70F90115234100000005000000070000000112FFACF9000000010115234113F85900000000000D4128840EFA110500000002000000060000000613F895000D4128840000000700000009000000000E6015050DE7C9FC0E60150700000005000000030E5FD907000000030B4D43FE10804D09064001020000000512FFACF900000001011523410000000500000009000000041080110900000004064001020000000912FFACF900000001000000090000000213E201000DE7CA040E5FD905000000020DE7C9FC0E60150700000009000000030E5FD907000000030B4D43FE10804D090640010212FF70F9000000050000000112FFACF900000001033F67C113BBF500000000000D412884000000050000000900000009000000041080110900000004000000070E6015050DE7C9FC000000090E5FD907000000030B4D43FE10804D09000000090000000400000009000000020000000000000001128A7CF900000001022A458113E1C500000000000DE7CA040E5FD905000000020DE7C9FC0E6015070B4D43FE00000006108011090000000400000006000000030E5FD907000000030B4D43FE00000006108011090000000408C0010211FBE8F9011523410000000613F895000D41288400000007000000060000000000000001000000060E6015050DE7C9FC0E60150700000006000000030E5FD907000000030B4D43FE00000006108011090000000408C0010200000009000000060000000213E201000DE7CA040E5FD905000000020DE7C9FC0E60150700000009000000030E5FD907000000030B4D43FE10804D0908C0010211FBE8F9033F67C113BBF500000000000D4128840EFA1105000000020000000600000006000000090000000111FC24F90000000100000009000000041080110900000004000000090E60150500000009000000020000000000000003"
theorem small_9766460_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9766460_left_root small_9766460_left_fuel small_9766460_left_count small_9766460_left_encoded = true := by
  decide +kernel
theorem small_9766460_left_covered : CoveredBy scale carrier boxes small_9766460_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9766460_left_root small_9766460_left_fuel small_9766460_left_count small_9766460_left_encoded small_9766460_left_checked

theorem cover_9766460 : CoveredBy scale carrier boxes root_9766460 := by
  apply coveredBy_split_literal root_9766460 small_9766460_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.root_9767046 coord3 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact small_9766460_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.cover_9767046
#print axioms cover_9766460

def root_9766455 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9766455_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(13027072), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9766455_right_fuel : Nat := 1
def small_9766455_right_count : Nat := 1
def small_9766455_right_encoded : String := "00000002"
theorem small_9766455_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9766455_right_root small_9766455_right_fuel small_9766455_right_count small_9766455_right_encoded = true := by
  decide +kernel
theorem small_9766455_right_covered : CoveredBy scale carrier boxes small_9766455_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9766455_right_root small_9766455_right_fuel small_9766455_right_count small_9766455_right_encoded small_9766455_right_checked

theorem cover_9766455 : CoveredBy scale carrier boxes root_9766455 := by
  apply coveredBy_split_literal root_9766455 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.root_9766460 small_9766455_right_root coord2 true (13027072)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.cover_9766460
  · exact small_9766455_right_covered
#print axioms cover_9766455

def root_9764399 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9764399 : CoveredBy scale carrier boxes root_9764399 := by
  apply coveredBy_split_literal root_9764399 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3655.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.root_9766455 coord2 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3655.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.cover_9766455
#print axioms cover_9764399

def root_9764393 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9764393_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9764393_left_fuel : Nat := 1
def small_9764393_left_count : Nat := 1
def small_9764393_left_encoded : String := "00000004"
theorem small_9764393_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9764393_left_root small_9764393_left_fuel small_9764393_left_count small_9764393_left_encoded = true := by
  decide +kernel
theorem small_9764393_left_covered : CoveredBy scale carrier boxes small_9764393_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9764393_left_root small_9764393_left_fuel small_9764393_left_count small_9764393_left_encoded small_9764393_left_checked

theorem cover_9764393 : CoveredBy scale carrier boxes root_9764393 := by
  apply coveredBy_split_literal root_9764393 small_9764393_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.root_9764399 coord4 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_9764393_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.cover_9764399
#print axioms cover_9764393

def root_9764215 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9764215_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9764215_left_fuel : Nat := 17
def small_9764215_left_count : Nat := 81
def small_9764215_left_encoded : String := "0F34D0FE0C9A87040F875105000000020C9A86FC0F878D0700000005000000030F8751070000000307800102128A40F90000000500000001128A7CF900000001022A458113E1C500000000000AD357890000000510D13CFE000000040B4D4404000000050000000613E201000AD3578910D100FE000000050000000410D13CFE000000040B4D440410801105000000020B4D43FC10804D0700000005000000030000000A10804D050B4D43FC10804D070000000500000003108011070000000308C00102000000080000000A00000002000000000F878D050C9A86FC0F878D0700000005000000030F8751070000000307800102128A40F90000000800000001128A7CF900000001022A458113E1C500000000000AD357890000000710D13CFE000000040DE7CA040E5FD905000000020000000600000006000000080000000200000004"
theorem small_9764215_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9764215_left_root small_9764215_left_fuel small_9764215_left_count small_9764215_left_encoded = true := by
  decide +kernel
theorem small_9764215_left_covered : CoveredBy scale carrier boxes small_9764215_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9764215_left_root small_9764215_left_fuel small_9764215_left_count small_9764215_left_encoded small_9764215_left_checked

theorem cover_9764215 : CoveredBy scale carrier boxes root_9764215 := by
  apply coveredBy_split_literal root_9764215 small_9764215_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.root_9764393 coord4 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_9764215_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.cover_9764393
#print axioms cover_9764215

def root_9764209 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9764209_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9764209_left_fuel : Nat := 1
def small_9764209_left_count : Nat := 1
def small_9764209_left_encoded : String := "00000003"
theorem small_9764209_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9764209_left_root small_9764209_left_fuel small_9764209_left_count small_9764209_left_encoded = true := by
  decide +kernel
theorem small_9764209_left_covered : CoveredBy scale carrier boxes small_9764209_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9764209_left_root small_9764209_left_fuel small_9764209_left_count small_9764209_left_encoded small_9764209_left_checked

theorem cover_9764209 : CoveredBy scale carrier boxes root_9764209 := by
  apply coveredBy_split_literal root_9764209 small_9764209_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.root_9764215 coord3 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_9764209_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.cover_9764215
#print axioms cover_9764209

def root_9764065 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9764065_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9764065_left_fuel : Nat := 16
def small_9764065_left_count : Nat := 67
def small_9764065_left_encoded : String := "0F34D0FC0CFD9C090F34D0FE00000005000000040F350CFE000000040C9A87040F875105000000020C9A86FE0F878D0900000005000000040F8751090000000407800102128A40F90000000500000001128A7CF900000001022A458113E1C500000000000AD357870000000510D13CFC000000030B4D4404000000050000000613E201000AD357870000000900000007000000000F878D050C9A86FE0F878D0900000005000000040F8751090000000407800102128A40F9022A4581000000050000000900000001128A7CF900000001022A458113E1C500000000000AD357870000000910D13CFC000000030DE7CA040E5FD905000000020000000600000006000000090000000200000003"
theorem small_9764065_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9764065_left_root small_9764065_left_fuel small_9764065_left_count small_9764065_left_encoded = true := by
  decide +kernel
theorem small_9764065_left_covered : CoveredBy scale carrier boxes small_9764065_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9764065_left_root small_9764065_left_fuel small_9764065_left_count small_9764065_left_encoded small_9764065_left_checked

theorem cover_9764065 : CoveredBy scale carrier boxes root_9764065 := by
  apply coveredBy_split_literal root_9764065 small_9764065_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.root_9764209 coord3 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_9764065_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.cover_9764209
#print axioms cover_9764065

def root_9764060 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9764060_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9764060_right_fuel : Nat := 1
def small_9764060_right_count : Nat := 1
def small_9764060_right_encoded : String := "00000002"
theorem small_9764060_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9764060_right_root small_9764060_right_fuel small_9764060_right_count small_9764060_right_encoded = true := by
  decide +kernel
theorem small_9764060_right_covered : CoveredBy scale carrier boxes small_9764060_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9764060_right_root small_9764060_right_fuel small_9764060_right_count small_9764060_right_encoded small_9764060_right_checked

theorem cover_9764060 : CoveredBy scale carrier boxes root_9764060 := by
  apply coveredBy_split_literal root_9764060 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.root_9764065 small_9764060_right_root coord2 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231.cover_9764065
  · exact small_9764060_right_covered
#print axioms cover_9764060

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0231
