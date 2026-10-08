import TaoBundleAssembly0191
import TaoBundleChunkBatch0746
import TaoBundleChunkBatch0747
import TaoBundleChunkBatch0748
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0192
def root_7943696 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7943696_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7943696_right_fuel : Nat := 30
def small_7943696_right_count : Nat := 367
def small_7943696_right_encoded : String := "115225070A0001081151E8FF08A91301120701000000000008A912F912073CF80000000108A913070000000712073D06050000FA135D80FB000000020500010800000007135D80FF0000000404548A0113867100000000000CFD9BF90F350CF8000000010CFD9C07000000070F350D060000000700000003000000071386AD000CFD9BF90F350CF800000001000000070000000700000000135D44FB0500010800000007135D80FF0000000404548A0100000007000000070000000200000003120700F808A913070000000712073D06050000FA135D80FB000000020500010800000007135D80FF000000040000000700000007000000030000000112073D0008A912F912073CF80000000108A913070000000712073D06050000FA135D80FB000000020500010800000007135D80FF000000040CFD9C0100000007000000060000000700000003000000070000000000000004115224FF0000000408A91301120701000000000008A912F912073CF80000000108A91307120701060000000308A912FF12073D08050000FA0000000600000007000000041207010800000004050000FA000000060000000512073D0608A912FF12073D08050000FA135D80FB0000000204548A0113867100000000000CFD9BF90F350CF8000000010CFD9C070F34D106000000030CFD9BFF000000060F34D10800000004000000050F350D060CFD9BFF0F350D080C9A86F80F878CF9000000010C9A87060F875107000000030C9A87080F8750FF00000007000000040F878CFF00000004078000FA00000006000000090F878D070C9A87080000000700000006000000030F8750F90C9A87060F875107000000030C9A87080F8750FF00000007000000040F878CFF00000004078000FA00000006128A40FB00000005000000020F878D070000000A0000000300000001000000040F34D108000000040C9A86F80F878CF900000001000000090F8750F90C9A87060F87510700000003078000FA00000006000000090000000600000001000000030F34D0F80CFD9C070F34D10600000003000000060F350D060CFD9BFF0F350D080C9A87060F875107000000030C9A87080F8750FF0000000700000004000000090F878D070000000900000003000000040F34D108000000040000000900000003000000011386AD000CFD9BF90F350CF8000000010CFD9C070F34D10600000003000000060F350D060CFD9BFF0F350D080C9A86F8000000060F8750F90000000A00000001000000040F34D1080000000400000006000000030F34D0F80CFD9C07000000060F350D0600000009000000030000000100000000135D44FB04548A0113867100000000000CFD9BF90F350CF8000000010CFD9C070F34D10600000003000000050F350D060CFD9BFF0F350D080C9A86F80F878CF900000001000000090F8750F90000000500000001000000040F34D1080000000400000009000000030F34D0F800000009000000011386AD000CFD9BF90F350CF8000000010CFD9C07000000090F350D060CFD9BFF000000090000000900000003000000090000000000000002000000041207010800000004050000FA135D80FB0000000204548A0113867100000000000CFD9BF90F350CF8000000010CFD9C070F34D10600000003000000050F350D06045489FF00000009138671080000000400000009000000030F34D0F800000009000000011386AD000CFD9BF90F350CF800000001000000090000000900000000135D44FB000000090000000200000003120700F808A913070000000912073D0608A912FF00000009120701080000000400000009000000030000000112073D0008A912F912073CF80000000108A9130712070106000000030000000612073D0608A912FF12073D08050000FA135D80FB000000020CFD9C010F34D100000000000CFD9BF9000000060F34D0F8000000060000000100000006135D44FB00000009000000020000000412070108000000040000000900000003120700F800000009000000010000000000000003"
theorem small_7943696_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7943696_right_root small_7943696_right_fuel small_7943696_right_count small_7943696_right_encoded = true := by
  decide +kernel
theorem small_7943696_right_covered : CoveredBy scale carrier boxes small_7943696_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7943696_right_root small_7943696_right_fuel small_7943696_right_count small_7943696_right_encoded small_7943696_right_checked

theorem cover_7943696 : CoveredBy scale carrier boxes root_7943696 := by
  apply coveredBy_split_literal root_7943696 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0191.root_7943697 small_7943696_right_root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0191.cover_7943697
  · exact small_7943696_right_covered
#print axioms cover_7943696

def root_7943691 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7943691_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7943691_right_fuel : Nat := 1
def small_7943691_right_count : Nat := 1
def small_7943691_right_encoded : String := "00000002"
theorem small_7943691_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7943691_right_root small_7943691_right_fuel small_7943691_right_count small_7943691_right_encoded = true := by
  decide +kernel
theorem small_7943691_right_covered : CoveredBy scale carrier boxes small_7943691_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7943691_right_root small_7943691_right_fuel small_7943691_right_count small_7943691_right_encoded small_7943691_right_checked

theorem cover_7943691 : CoveredBy scale carrier boxes root_7943691 := by
  apply coveredBy_split_literal root_7943691 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0192.root_7943696 small_7943691_right_root coord2 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0192.cover_7943696
  · exact small_7943691_right_covered
#print axioms cover_7943691

def root_7938407 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7938407 : CoveredBy scale carrier boxes root_7938407 := by
  apply coveredBy_split_literal root_7938407 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0191.root_7938408 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0192.root_7943691 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0191.cover_7938408
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0192.cover_7943691
#print axioms cover_7938407

def root_7938401 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7938401_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7938401_left_fuel : Nat := 1
def small_7938401_left_count : Nat := 1
def small_7938401_left_encoded : String := "00000001"
theorem small_7938401_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7938401_left_root small_7938401_left_fuel small_7938401_left_count small_7938401_left_encoded = true := by
  decide +kernel
theorem small_7938401_left_covered : CoveredBy scale carrier boxes small_7938401_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7938401_left_root small_7938401_left_fuel small_7938401_left_count small_7938401_left_encoded small_7938401_left_checked

theorem cover_7938401 : CoveredBy scale carrier boxes root_7938401 := by
  apply coveredBy_split_literal root_7938401 small_7938401_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0192.root_7938407 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_7938401_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0192.cover_7938407
#print axioms cover_7938401

def root_7948462 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7948462 : CoveredBy scale carrier boxes root_7948462 := by
  apply coveredBy_split_literal root_7948462 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2982.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2983.root coord3 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2982.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2983.covered
#print axioms cover_7948462

def root_7948456 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7948456_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7948456_left_fuel : Nat := 1
def small_7948456_left_count : Nat := 1
def small_7948456_left_encoded : String := "00000001"
theorem small_7948456_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7948456_left_root small_7948456_left_fuel small_7948456_left_count small_7948456_left_encoded = true := by
  decide +kernel
theorem small_7948456_left_covered : CoveredBy scale carrier boxes small_7948456_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7948456_left_root small_7948456_left_fuel small_7948456_left_count small_7948456_left_encoded small_7948456_left_checked

theorem cover_7948456 : CoveredBy scale carrier boxes root_7948456 := by
  apply coveredBy_split_literal root_7948456 small_7948456_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0192.root_7948462 coord1 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_7948456_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0192.cover_7948462
#print axioms cover_7948456

def root_7948455 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7948455_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7948455_right_fuel : Nat := 19
def small_7948455_right_count : Nat := 187
def small_7948455_right_encoded : String := "135D44F905000106135D45070000000304548A0113867100000000000CFD9BFB0F350CFA000000020CFD9BFF0F350D080C9A86FA000000090F8750FB0000000900000002000000040F34D108000000040C9A86FA000000070F8750FB028000F813D7ECF900000001028001060000000713D7ED07022A458113E1C500000000000AD3577F0000000800000007000000070000000313D7B0F9028001060000000713D7ED07022A458100000008000000070000000300000001000000020F34D0FA0CFD9BFF0F350D08000000090000000400000007000000021386AD000CFD9BFB0F350CFA000000020CFD9BFF0F350D080C9A86FA0F878CFB000000020C9A87080000000A0F878CFF00000004028000F80000000A0000000A0F8750FB0000000A00000002000000040F34D10800000004000000070F34D0FA000000070000000200000000135D810704548A0113867100000000000CFD9BFB0F350CFA000000020CFD9BFF0F350D080C9A86FA0F878CFB000000020C9A8708000000090F878CFF00000004028000F80000000A000000090F8750FB0000000A00000002000000040F34D108000000040C9A86FA0F878CFB00000002028000F813D7ECF900000001078001060000000800000008000000080F8750FB028000F813D7ECF90000000107800106128A410700000003022A458113E1C500000000000AD3577F00000008000000080000000A0000000A13D7B0F90000000500000001000000020F34D0FA0CFD9BFF0F350D080C9A8708000000090F878CFF0000000400000008000000040F34D1080000000400000007000000021386AD000CFD9BFB0F350CFA000000020CFD9BFF0F350D080C9A86FA0F878CFB000000020000000A0000000A000000040F34D108000000040C9A86FA0F878CFB00000002028000F80000000A0000000A0000000A0F34D0FA0CFD9BFF0F350D080C9A87080000000A0F878CFF00000004028000F80000000A0000000A000000040F34D108000000040000000700000002000000000000000300000001"
theorem small_7948455_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7948455_right_root small_7948455_right_fuel small_7948455_right_count small_7948455_right_encoded = true := by
  decide +kernel
theorem small_7948455_right_covered : CoveredBy scale carrier boxes small_7948455_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7948455_right_root small_7948455_right_fuel small_7948455_right_count small_7948455_right_encoded small_7948455_right_checked

theorem cover_7948455 : CoveredBy scale carrier boxes root_7948455 := by
  apply coveredBy_split_literal root_7948455 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0192.root_7948456 small_7948455_right_root coord1 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0192.cover_7948456
  · exact small_7948455_right_covered
#print axioms cover_7948455

def root_7948450 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7948450_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7948450_right_fuel : Nat := 1
def small_7948450_right_count : Nat := 1
def small_7948450_right_encoded : String := "00000004"
theorem small_7948450_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7948450_right_root small_7948450_right_fuel small_7948450_right_count small_7948450_right_encoded = true := by
  decide +kernel
theorem small_7948450_right_covered : CoveredBy scale carrier boxes small_7948450_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7948450_right_root small_7948450_right_fuel small_7948450_right_count small_7948450_right_encoded small_7948450_right_checked

theorem cover_7948450 : CoveredBy scale carrier boxes root_7948450 := by
  apply coveredBy_split_literal root_7948450 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0192.root_7948455 small_7948450_right_root coord4 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0192.cover_7948455
  · exact small_7948450_right_covered
#print axioms cover_7948450

def root_7948449 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7948449_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7948449_right_fuel : Nat := 21
def small_7948449_right_count : Nat := 163
def small_7948449_right_encoded : String := "1207010800000004050000F8135D80F90000000105000106135D45070000000300000007135D810704548A0113867100000000000CFD9BFB0F350CFA00000002045489FF1386AD080C9A86FA0F878CFB00000002078000F8128A7CF9000000010780010600000007128A7D070000000800000003000000080F8750FB078000F8128A7CF90000000107800106128A410700000003022A458113E1C50000000000067ECE7F000000070000000700000007128A7D07022A458113E1C50000000000067ECE7F000000080000000813E20100067ECE7F00000006000000090000000000000003128A40F907800106128A41070000000300000007128A7D07022A45810000000813E20100067ECE7F0000000800000008000000000000000300000001000000020000000413867108000000040C9A86FA000000070F8750FB078000F8128A7CF9000000010780010600000007128A7D07022A458100000007000000070000000300000008000000020F34D0FA00000007000000021386AD000CFD9BFB0F350CFA00000002045489FF1386AD080C9A86FA0F878CFB00000002000000070F8750FB078000F8128A7CF90000000100000009128A40F90780010600000007128A7D0700000006000000030000000100000002000000041386710800000004000000070F34D0FA00000007000000020000000000000003135D44F90500010600000007135D810704548A0113867100000000000CFD9BFB0F350CFA00000002045489FF0000000800000007000000071386AD000CFD9BFB0F350CFA00000002045489FF1386AD080C9A86FA000000070F8750FB028000F813D7ECF90000000107800106000000070000000A0000000A00000002000000040000000700000007000000000000000300000001"
theorem small_7948449_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7948449_right_root small_7948449_right_fuel small_7948449_right_count small_7948449_right_encoded = true := by
  decide +kernel
theorem small_7948449_right_covered : CoveredBy scale carrier boxes small_7948449_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7948449_right_root small_7948449_right_fuel small_7948449_right_count small_7948449_right_encoded small_7948449_right_checked

theorem cover_7948449 : CoveredBy scale carrier boxes root_7948449 := by
  apply coveredBy_split_literal root_7948449 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0192.root_7948450 small_7948449_right_root coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0192.cover_7948450
  · exact small_7948449_right_covered
#print axioms cover_7948449

def root_7948443 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7948443_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7948443_left_fuel : Nat := 1
def small_7948443_left_count : Nat := 1
def small_7948443_left_encoded : String := "00000002"
theorem small_7948443_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7948443_left_root small_7948443_left_fuel small_7948443_left_count small_7948443_left_encoded = true := by
  decide +kernel
theorem small_7948443_left_covered : CoveredBy scale carrier boxes small_7948443_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7948443_left_root small_7948443_left_fuel small_7948443_left_count small_7948443_left_encoded small_7948443_left_checked

theorem cover_7948443 : CoveredBy scale carrier boxes root_7948443 := by
  apply coveredBy_split_literal root_7948443 small_7948443_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0192.root_7948449 coord2 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_7948443_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0192.cover_7948449
#print axioms cover_7948443

def root_7948442 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7948442_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7948442_right_fuel : Nat := 16
def small_7948442_right_count : Nat := 69
def small_7948442_right_encoded : String := "120700FA08A912FF12073D08050000F8135D80F9000000010500010600000005135D810704548A011386710000000000045489FB1386ACFA000000020CFD9BFF0F350D080C9A8708000000050F878CFF0000000400000007000000040F34D1080000000400000007138670FA00000007000000021386AD00045489FB1386ACFA000000020CFD9BFF0F350D08000000050000000400000005000000050000000000000003135D44F90500010600000007135D810704548A011386710000000000000000081386AD00045489FB1386ACFA000000020CFD9BFF0F350D080C9A87080000000A000000070000000400000007000000070000000000000003000000010000000412070108000000040000000700000002"
theorem small_7948442_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7948442_right_root small_7948442_right_fuel small_7948442_right_count small_7948442_right_encoded = true := by
  decide +kernel
theorem small_7948442_right_covered : CoveredBy scale carrier boxes small_7948442_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7948442_right_root small_7948442_right_fuel small_7948442_right_count small_7948442_right_encoded small_7948442_right_checked

theorem cover_7948442 : CoveredBy scale carrier boxes root_7948442 := by
  apply coveredBy_split_literal root_7948442 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0192.root_7948443 small_7948442_right_root coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0192.cover_7948443
  · exact small_7948442_right_covered
#print axioms cover_7948442

def root_7948436 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7948436_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7948436_left_fuel : Nat := 1
def small_7948436_left_count : Nat := 1
def small_7948436_left_encoded : String := "00000000"
theorem small_7948436_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7948436_left_root small_7948436_left_fuel small_7948436_left_count small_7948436_left_encoded = true := by
  decide +kernel
theorem small_7948436_left_covered : CoveredBy scale carrier boxes small_7948436_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7948436_left_root small_7948436_left_fuel small_7948436_left_count small_7948436_left_encoded small_7948436_left_checked

theorem cover_7948436 : CoveredBy scale carrier boxes root_7948436 := by
  apply coveredBy_split_literal root_7948436 small_7948436_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0192.root_7948442 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_7948436_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0192.cover_7948442
#print axioms cover_7948436

def root_7948435 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7948435_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7948435_right_fuel : Nat := 22
def small_7948435_right_count : Nat := 347
def small_7948435_right_encoded : String := "12073D0008A912FB12073CFA0000000208A912FF12073D08050000F8135D80F90000000105000106135D4507000000030CFD9C010F34D100000000000CFD9BFB0F350CFA000000020CFD9BFF0F350D080C9A86FA000000050F8750FB0C9A8708000000050F878CFF00000004078000F800000005128A40F90000000A0000000100000002000000040F34D108000000040C9A86FA000000050F8750FB078000F800000005128A40F9028001060000000513D7ED070000000A0000000300000001000000020F34D0FA00000005000000020F350D000000000500000000135D81070CFD9C010F34D100000000000CFD9BFB0F350CFA000000020CFD9BFF0F350D080C9A86FA0F878CFB000000020C9A87080000000A000000060F8750FB0C9A87080000000A0000000600000002000000040F34D108000000040C9A86FA000000060F8750FB00000006000000020F34D0FA0CFD9BFF0F350D080C9A87080000000500000006000000040F34D1080000000400000006000000020F350D000CFD9BFB0F350CFA000000020CFD9BFF000000060F34D10800000004000000060F34D0FA00000005000000020000000000000003135D44F905000106135D4507000000030CFD9C010F34D100000000000CFD9BFB0F350CFA000000020CFD9BFF0F350D080C9A86FA0F878CFB000000020C9A87080000000A0F878CFF000000040000000A0000000A000000040F34D108000000040C9A86FA000000070F8750FB028000F80000000A0000000A000000020F34D0FA0CFD9BFF0F350D08000000050000000400000007000000020F350D000CFD9BFB0F350CFA000000020CFD9BFF0F350D080C9A8700000000050F878D010C9A86FA000000050000000A00000000000000040F34D108000000040C9A87000F87510100000000000000050F878D010C9A86FA000000070000000A000000000F34D0FA000000050000000200000000135D81070CFD9C010F34D100000000000CFD9BFB0F350CFA000000020CFD9BFF0F350D080C9A86FA0F878CFB000000020000000A0000000A000000040F34D108000000040C9A86FA0F878CFB00000002028000F8000000060000000A0000000A0F34D0FA0CFD9BFF0F350D080C9A87080000000A0F878CFF00000004028000F8000000060000000A000000040F34D1080000000400000007000000020F350D000CFD9BFB0F350CFA000000020CFD9BFF0F350D080C9A87000F87510100000000000000060F878D010C9A86FA000000060000000A00000000000000040F34D10800000004000000060F34D0FA0CFD9BFF000000060F34D108000000040000000600000002000000000000000300000001000000041207010800000004050000F8135D80F90000000105000106135D4507000000030CFD9C010F34D100000000000000000700000007135D81070CFD9C010F34D100000000000CFD9BFB0F350CFA00000002045489FF000000061386710800000004000000070F34D0FA00000006000000020000000600000003135D44F905000106135D4507000000030CFD9C010F34D100000000000000000700000007135D81070CFD9C010F34D100000000000CFD9BFB0F350CFA00000002045489FF1386AD080C9A86FA000000070000000A0000000400000007000000070F350D000CFD9BFB0F350CFA00000002045489FF000000061386710800000004000000060F34D0FA0000000600000002000000000000000300000001120700FA08A912FF12073D08050000F800000005135D44F90500010600000005135D81070CFD9C010F34D10000000000045489FB1386ACFA000000020CFD9BFF0F350D080C9A870800000005000000070000000400000007000000070F350D0000000005000000000000000300000001000000041207010800000004000000070000000200000000"
theorem small_7948435_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7948435_right_root small_7948435_right_fuel small_7948435_right_count small_7948435_right_encoded = true := by
  decide +kernel
theorem small_7948435_right_covered : CoveredBy scale carrier boxes small_7948435_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7948435_right_root small_7948435_right_fuel small_7948435_right_count small_7948435_right_encoded small_7948435_right_checked

theorem cover_7948435 : CoveredBy scale carrier boxes root_7948435 := by
  apply coveredBy_split_literal root_7948435 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0192.root_7948436 small_7948435_right_root coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0192.cover_7948436
  · exact small_7948435_right_covered
#print axioms cover_7948435

def root_7948429 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7948429_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7948429_left_fuel : Nat := 1
def small_7948429_left_count : Nat := 1
def small_7948429_left_encoded : String := "00000004"
theorem small_7948429_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7948429_left_root small_7948429_left_fuel small_7948429_left_count small_7948429_left_encoded = true := by
  decide +kernel
theorem small_7948429_left_covered : CoveredBy scale carrier boxes small_7948429_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7948429_left_root small_7948429_left_fuel small_7948429_left_count small_7948429_left_encoded small_7948429_left_checked

theorem cover_7948429 : CoveredBy scale carrier boxes root_7948429 := by
  apply coveredBy_split_literal root_7948429 small_7948429_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0192.root_7948435 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_7948429_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0192.cover_7948435
#print axioms cover_7948429

def root_7948011 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7948011_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7948011_left_fuel : Nat := 18
def small_7948011_left_count : Nat := 193
def small_7948011_left_encoded : String := "1151E8FF08A91301120701000000000008A912FB12073CFA00000002050000F8135D80F90000000105000106135D45070000000305000108135D44FF04548A01000000090000000500000004135D80FF0000000404548A0113867100000000000CFD9BFB000000090F34D0FA00000005000000021386AD000CFD9BFB0F350CFA000000020C9A86FA0F878CFB00000002000000050000000A0000000500000000135D810705000108135D44FF04548A01000000090000000A00000004135D80FF0000000404548A0113867100000000000CFD9BFB0F350CFA000000020C9A86FA000000090000000A0F34D0FA00000009000000021386AD000CFD9BFB0F350CFA000000020000000A0000000A0000000000000003135D44F905000106135D4507000000030500010800000009135D80FF0000000404548A01000000091386AD000CFD9BFB000000090000000A00000000135D81070500010800000009135D80FF0000000404548A01000000091386AD000CFD9BFB000000090000000A000000000000000300000001120700FA050000F800000005135D44F900000009000000010000000212073D0008A912FB12073CFA00000002050000F8135D80F9000000010500010600000005135D81070500010800000005135D80FF000000040CFD9C010F34D100000000000CFD9BFB0F350CFA000000020000000A0F34D0FA00000005000000020F350D00000000050000000000000003135D44F905000106135D4507000000030500010800000005135D80FF000000040CFD9C010F34D100000000000CFD9BFB0F350CFA000000020000000A0000000A0F350D000000000500000000135D810705000108135D44FF0CFD9C010F34D100000000000000000A0F350D00000000050000000000000004135D80FF000000040CFD9C010F34D100000000000CFD9BFB0F350CFA000000020000000A0000000A0F350D000CFD9BFB0F350CFA000000020C9A87000F87510100000000000000050000000A0F34D0FA0000000500000002000000000000000300000001120700FA00000005000000020000000000000004"
theorem small_7948011_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7948011_left_root small_7948011_left_fuel small_7948011_left_count small_7948011_left_encoded = true := by
  decide +kernel
theorem small_7948011_left_covered : CoveredBy scale carrier boxes small_7948011_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7948011_left_root small_7948011_left_fuel small_7948011_left_count small_7948011_left_encoded small_7948011_left_checked

theorem cover_7948011 : CoveredBy scale carrier boxes root_7948011 := by
  apply coveredBy_split_literal root_7948011 small_7948011_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0192.root_7948429 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_7948011_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0192.cover_7948429
#print axioms cover_7948011

def root_7948005 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7948005_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7948005_left_fuel : Nat := 1
def small_7948005_left_count : Nat := 1
def small_7948005_left_encoded : String := "00000003"
theorem small_7948005_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7948005_left_root small_7948005_left_fuel small_7948005_left_count small_7948005_left_encoded = true := by
  decide +kernel
theorem small_7948005_left_covered : CoveredBy scale carrier boxes small_7948005_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7948005_left_root small_7948005_left_fuel small_7948005_left_count small_7948005_left_encoded small_7948005_left_checked

theorem cover_7948005 : CoveredBy scale carrier boxes root_7948005 := by
  apply coveredBy_split_literal root_7948005 small_7948005_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0192.root_7948011 coord3 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_7948005_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0192.cover_7948011
#print axioms cover_7948005

def root_7948004 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7948004 : CoveredBy scale carrier boxes root_7948004 := by
  apply coveredBy_split_literal root_7948004 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0192.root_7948005 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2984.root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0192.cover_7948005
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2984.covered
#print axioms cover_7948004

def root_7947998 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7947998_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7947998_left_fuel : Nat := 1
def small_7947998_left_count : Nat := 1
def small_7947998_left_encoded : String := "00000002"
theorem small_7947998_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7947998_left_root small_7947998_left_fuel small_7947998_left_count small_7947998_left_encoded = true := by
  decide +kernel
theorem small_7947998_left_covered : CoveredBy scale carrier boxes small_7947998_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7947998_left_root small_7947998_left_fuel small_7947998_left_count small_7947998_left_encoded small_7947998_left_checked

theorem cover_7947998 : CoveredBy scale carrier boxes root_7947998 := by
  apply coveredBy_split_literal root_7947998 small_7947998_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0192.root_7948004 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_7947998_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0192.cover_7948004
#print axioms cover_7947998

def root_7956886 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(-15553280), (-14529024)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(-15553280), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7956886_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(-15553280), (-14529024)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(-15553280), (-14529024)⟩⟩, ⟨⟨(0), (2097152)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7956886_left_fuel : Nat := 19
def small_7956886_left_count : Nat := 287
def small_7956886_left_encoded : String := "13D7B10700000003022A458113E1C500000000000DE7CA080E5FD8FF08C000F811FC24F90000000108C000FA11FC24FB000000020140010613F5D9070000000301152341000000060000000513F615070115234113F85900000000000D412888000000060EFA4CFF000000040000000613F895000D412888000000050EFA4CFF00000004096000F80000000511AA80F90000000800000001000000000000000311FBE8FB014001060000000613F61507011523410000000600000008000000030000000211FBE8F908C000FA11FC24FB00000002014001060000000613F61507011523410000000613F895000D412888000000060EFA4CFF000000040000000600000000000000030000000600000001000000040E6014FF0000000408C000F811FC24F90000000108C000FA11FC24FB000000020140010613F5D9070000000301152341000000060000000513F615070115234113F85900000000000DAED87F0E966108096000F811AABCF9000000010000000600000006000000040E96250800000004096000F811AABCF900000001000000060000000613F895000DAED87F0E966108096000F80000000511AA80F9096000FA000000050000000600000001000000040E96250800000004096000F80000000511AA80F90000000700000001000000000000000311FBE8FB014001060000000613F61507011523410000000613F895000DAED87F0E96610800000008000000040E96250800000004096000F8000000090000000600000000000000030000000211FBE8F908C000FA11FC24FB00000002014001060000000613F61507011523410000000613F895000DAED87F0E966108082000F8124698F900000001096000FA000000070000000600000006000000040E96250800000004000000070000000000000003000000060000000113E201000DE7CA080E5FD8FF08C000F811FC24F9000000010000000811FBE8F908C000FA11FC24FB000000020140010613F5D907000000030000000813F61507033F67C113BBF500000000000D412888000000080EFA4CFF000000040000000800000008000000030000000800000001000000040E6014FF0000000408C000F811FC24F90000000108C000FA11FC24FB00000002014001060000000513F61507033F67C113BBF500000000000DAED87F0E966108000000050000000400000005000000050000000311FBE8FB0140010600000008000000080000000211FBE8F908C000FA11FC24FB000000020140010613F5D907000000030000000713F61507033F67C113BBF500000000000DAED87F0E966108082000F8124698F900000001096000FA000000050000000812465CF9096000FA000000070000000A00000001000000040E962508000000040000000713BC31000DAED87F0E96610800000008000000040E9625080000000400000007000000000000000311FBE8FB0140010613F5D90700000003033F67C1000000060000000813F61507033F67C113BBF500000000000DAED87F0E96610800000008000000040E96250800000004082000F800000008000000060000000800000003000000020000000100000000"
theorem small_7956886_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7956886_left_root small_7956886_left_fuel small_7956886_left_count small_7956886_left_encoded = true := by
  decide +kernel
theorem small_7956886_left_covered : CoveredBy scale carrier boxes small_7956886_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7956886_left_root small_7956886_left_fuel small_7956886_left_count small_7956886_left_encoded small_7956886_left_checked

theorem cover_7956886 : CoveredBy scale carrier boxes root_7956886 := by
  apply coveredBy_split_literal root_7956886 small_7956886_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2985.root coord3 false (2097152)
  · decide +kernel
  · decide +kernel
  · exact small_7956886_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2985.covered
#print axioms cover_7956886

def root_7956880 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(-15553280), (-14529024)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7956880_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(-15553280), (-14529024)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(-16244736), (-15553280)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7956880_left_fuel : Nat := 1
def small_7956880_left_count : Nat := 1
def small_7956880_left_encoded : String := "00000002"
theorem small_7956880_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7956880_left_root small_7956880_left_fuel small_7956880_left_count small_7956880_left_encoded = true := by
  decide +kernel
theorem small_7956880_left_covered : CoveredBy scale carrier boxes small_7956880_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7956880_left_root small_7956880_left_fuel small_7956880_left_count small_7956880_left_encoded small_7956880_left_checked

theorem cover_7956880 : CoveredBy scale carrier boxes root_7956880 := by
  apply coveredBy_split_literal root_7956880 small_7956880_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0192.root_7956886 coord2 true (-15553280)
  · decide +kernel
  · decide +kernel
  · exact small_7956880_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0192.cover_7956886
#print axioms cover_7956880

def root_7956879 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(-15553280), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7956879_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(-15553280), (-14529024)⟩⟩, ⟨⟨(-6291456), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7956879_right_fuel : Nat := 16
def small_7956879_right_count : Nat := 101
def small_7956879_right_encoded : String := "128A40FB0280010613D7B10700000003022A458113E1C500000000000DE7CA08000000060E6014FF0000000408C000F811FC24F900000001000000060000000613E201000DE7CA08000000080E6014FF0000000408C000F80000000811FBE8F900000008000000010000000013D7ED07022A458113E1C500000000000DE7CA080E5FD8FF08C000F80000000811FBE8F9064000FA12FFACFB0000000203C0010600000006000000050000000500000001000000040E6014FF0000000408C000F811FC24F900000001064000FA12FFACFB0000000203C0010613A511070000000301152341000000060000000813A54D070115234113F859000000000000000005000000080000000312FF70FB03C0010600000008000000050000000211FBE8F9064000FA12FFACFB0000000203C0010613A51107000000030000000600000005000000050000000113E201000DE7CA08000000080E6014FF0000000408C000F80000000811FBE8F9064000FA12FFACFB0000000203C0010600000008000000080000000800000001000000000000000300000002"
theorem small_7956879_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7956879_right_root small_7956879_right_fuel small_7956879_right_count small_7956879_right_encoded = true := by
  decide +kernel
theorem small_7956879_right_covered : CoveredBy scale carrier boxes small_7956879_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7956879_right_root small_7956879_right_fuel small_7956879_right_count small_7956879_right_encoded small_7956879_right_checked

theorem cover_7956879 : CoveredBy scale carrier boxes root_7956879 := by
  apply coveredBy_split_literal root_7956879 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0192.root_7956880 small_7956879_right_root coord2 false (-6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0192.cover_7956880
  · exact small_7956879_right_covered
#print axioms cover_7956879

def root_7956873 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7956873_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(-16244736), (-15553280)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7956873_left_fuel : Nat := 1
def small_7956873_left_count : Nat := 1
def small_7956873_left_encoded : String := "00000001"
theorem small_7956873_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7956873_left_root small_7956873_left_fuel small_7956873_left_count small_7956873_left_encoded = true := by
  decide +kernel
theorem small_7956873_left_covered : CoveredBy scale carrier boxes small_7956873_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7956873_left_root small_7956873_left_fuel small_7956873_left_count small_7956873_left_encoded small_7956873_left_checked

theorem cover_7956873 : CoveredBy scale carrier boxes root_7956873 := by
  apply coveredBy_split_literal root_7956873 small_7956873_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0192.root_7956879 coord1 true (-15553280)
  · decide +kernel
  · decide +kernel
  · exact small_7956873_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0192.cover_7956879
#print axioms cover_7956873

def root_7956872 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7956872_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-6291456), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7956872_right_fuel : Nat := 23
def small_7956872_right_count : Nat := 217
def small_7956872_right_encoded : String := "128A40F9078000FA128A7CFB000000020280010613D7B10700000003022A458113E1C500000000000DE7CA08000000060E6014FF00000004064000F812FFACF90000000108C000FA11FC24FB0000000200000006000000060000000613E201000DE7CA080E5FD8FF064000F812FFACF90000000108C000FA11FC24FB000000020000000A0000000A0000000A000000040E6014FF00000004064000F812FFACF90000000108C000FA11FC24FB00000002014001060000000713F61507033F67C113BBF500000000000DAED87F0E9661080000000A00000004000000070000000A0000000311FBE8FB014001060000000613F61507033F67C1000000060000000A000000030000000212FF70F908C000FA11FC24FB0000000201400106000000060000000A11FBE8FB01400106000000060000000600000002000000010000000013D7ED07022A458113E1C500000000000DE7CA080E5FD8FF064000F812FFACF90000000108C000FA0000000911FBE8FB03C0010600000006000000050000000200000009000000040E6014FF00000004064000F812FFACF90000000108C000FA11FC24FB0000000203C0010613A5110700000003011523410000000613F895000DAED87F0E96610800000009000000040E9625080000000406E000F812C820F900000001096000FA0000000700000006000000060000000013A54D070115234113F8590000000000000000050000000A0000000311FBE8FB03C0010613A511070000000300000006000000050000000212FF70F908C000FA00000009000000050000000113E201000DE7CA080000000A0E6014FF00000004064000F812FFACF90000000108C000FA11FC24FB000000020000000A0000000A0000000A0000000000000003128A40FB0280010613D7B10700000003022A45810000000613E201000DE7CA080E5FD8FF00000008000000040E6014FF00000004064000F812FFACF900000001064000FA12FFACFB00000002014001060000000613F61507033F67C100000006000000080000000300000006000000060000000013D7ED07022A458113E1C500000000000DE7CA080E5FD8FF00000005000000040000000513E201000DE7CA080000000A0E6014FF00000004064000F812FFACF900000001064000FA12FFACFB000000020000000A000000050000000500000000000000030000000200000001"
theorem small_7956872_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7956872_right_root small_7956872_right_fuel small_7956872_right_count small_7956872_right_encoded = true := by
  decide +kernel
theorem small_7956872_right_covered : CoveredBy scale carrier boxes small_7956872_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7956872_right_root small_7956872_right_fuel small_7956872_right_count small_7956872_right_encoded small_7956872_right_checked

theorem cover_7956872 : CoveredBy scale carrier boxes root_7956872 := by
  apply coveredBy_split_literal root_7956872 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0192.root_7956873 small_7956872_right_root coord1 false (-6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0192.cover_7956873
  · exact small_7956872_right_covered
#print axioms cover_7956872

def root_7956866 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7956866_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-13027072)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7956866_left_fuel : Nat := 1
def small_7956866_left_count : Nat := 1
def small_7956866_left_encoded : String := "00000004"
theorem small_7956866_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7956866_left_root small_7956866_left_fuel small_7956866_left_count small_7956866_left_encoded = true := by
  decide +kernel
theorem small_7956866_left_covered : CoveredBy scale carrier boxes small_7956866_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7956866_left_root small_7956866_left_fuel small_7956866_left_count small_7956866_left_encoded small_7956866_left_checked

theorem cover_7956866 : CoveredBy scale carrier boxes root_7956866 := by
  apply coveredBy_split_literal root_7956866 small_7956866_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0192.root_7956872 coord4 true (-13027072)
  · decide +kernel
  · decide +kernel
  · exact small_7956866_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0192.cover_7956872
#print axioms cover_7956866

def root_7956694 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7956694_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (10572672)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7956694_left_fuel : Nat := 19
def small_7956694_left_count : Nat := 83
def small_7956694_left_encoded : String := "0F8750FF078000F8128A7CF900000001078000FA128A7CFB000000020280010613D7B10700000003022A458113E1C500000000000B4D44080000000910804CFF0000000408C000F811FC24F90000000108C000FA0000000900000008000000090000000813D7ED07022A458113E1C500000000000B4D4408108010FF000000090000000410804CFF0000000408C000F811FC24F90000000108C000FA11FC24FB0000000203C0010613A51107000000030000000813A54D07011523410000000900000008000000030000000811FBE8F908C000FA000000090000000A000000010000000A00000003128A40FB02800106000000080000000800000002128A40F9078000FA128A7CFB000000020280010613D7B10700000003000000090000000A128A40FB0280010613D7B10700000003022A458100000006000000080000000A000000020000000100000004"
theorem small_7956694_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7956694_left_root small_7956694_left_fuel small_7956694_left_count small_7956694_left_encoded = true := by
  decide +kernel
theorem small_7956694_left_covered : CoveredBy scale carrier boxes small_7956694_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7956694_left_root small_7956694_left_fuel small_7956694_left_count small_7956694_left_encoded small_7956694_left_checked

theorem cover_7956694 : CoveredBy scale carrier boxes root_7956694 := by
  apply coveredBy_split_literal root_7956694 small_7956694_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0192.root_7956866 coord4 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_7956694_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0192.cover_7956866
#print axioms cover_7956694

def root_7956689 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7956689_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7956689_right_fuel : Nat := 1
def small_7956689_right_count : Nat := 1
def small_7956689_right_encoded : String := "00000004"
theorem small_7956689_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7956689_right_root small_7956689_right_fuel small_7956689_right_count small_7956689_right_encoded = true := by
  decide +kernel
theorem small_7956689_right_covered : CoveredBy scale carrier boxes small_7956689_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7956689_right_root small_7956689_right_fuel small_7956689_right_count small_7956689_right_encoded small_7956689_right_checked

theorem cover_7956689 : CoveredBy scale carrier boxes root_7956689 := by
  apply coveredBy_split_literal root_7956689 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0192.root_7956694 small_7956689_right_root coord4 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0192.cover_7956694
  · exact small_7956689_right_covered
#print axioms cover_7956689

def root_7956688 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7956688 : CoveredBy scale carrier boxes root_7956688 := by
  apply coveredBy_split_literal root_7956688 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0192.root_7956689 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2986.root coord4 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0192.cover_7956689
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2986.covered
#print axioms cover_7956688

def root_7956682 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7956682_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7956682_left_fuel : Nat := 1
def small_7956682_left_count : Nat := 1
def small_7956682_left_encoded : String := "00000000"
theorem small_7956682_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7956682_left_root small_7956682_left_fuel small_7956682_left_count small_7956682_left_encoded = true := by
  decide +kernel
theorem small_7956682_left_covered : CoveredBy scale carrier boxes small_7956682_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7956682_left_root small_7956682_left_fuel small_7956682_left_count small_7956682_left_encoded small_7956682_left_checked

theorem cover_7956682 : CoveredBy scale carrier boxes root_7956682 := by
  apply coveredBy_split_literal root_7956682 small_7956682_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0192.root_7956688 coord0 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_7956682_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0192.cover_7956688
#print axioms cover_7956682

def root_7956681 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7956681_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7956681_right_fuel : Nat := 21
def small_7956681_right_count : Nat := 277
def small_7956681_right_encoded : String := "1386AD000CFD9BFF0F350D080C9A87080F8750FF078000F8000000080000000A000000040F878CFF00000004078000F8128A7CF900000001078000FA128A7CFB000000020280010613D7B10700000003067ECE8112EA5900000000000DE7CA080E5FD8FF00000008000000040E6014FF0000000408C000F80000000811FBE8F908C000FA11FC24FB000000020000000500000008000000010000000813D7ED07067ECE8112EA5900000000000DE7CA080000000A0E6014FF0000000408C000F811FC24F90000000108C000FA11FC24FB0000000203C0010600000005000000080000000811FBE8F90000000A000000010000000A00000003128A40FB02800106000000080000000800000002128A40F9078000FA128A7CFB000000020280010613D7B10700000003067ECE8112EA5900000000000DE7CA080000000A0E6014FF00000004064000F812FFACF90000000108C000FA11FC24FB000000020000000A0000000A0000000A0000000A0000000A128A40FB0280010613D7B10700000003067ECE8112EA59000000000000000008000000080000000A0000000200000001000000040F34D10800000004078000F8128A7CF900000001078000FA128A7CFB000000020280010613D7B10700000003067ECE8112EA5900000000000AD3577F10D13D0808C000F80000000911FBE8F908C000FA00000007000000090000000100000004000000090000000913D7ED07067ECE8112EA5900000000000AD3577F10D13D0808C000F80000000911FBE8F900000009000000010000000400000009000000090000000300000009128A40F9078000FA128A7CFB000000020280010613D7B10700000003067ECE8112EA5900000000000AD3577F10D13D08064000F812FFACF90000000108C000FA0000000711FBE8FB014001060000000713F615070569AC410000000700000007000000030000000212FF70F9000000070000000100000004000000070000000713D7ED07067ECE8112EA5900000000000AD3577F10D13D08064000F812FFACF90000000108C000FA11FC24FB000000020000000A0000000A0000000A0000000410D1010800000004064000F80000000912FF70F9000000070000000112EA95000AD3577F0000000A000000090000000000000003128A40FB0280010613D7B10700000003067ECE8112EA5900000000000AD3577F10D13D08064000F812FFACF900000001064000FA12FFACFB000000020140010613F5D907000000030569AC410000000900000007000000090000000912FF70F9064000FA12FFACFB0000000201400106000000070000000A12FF70FB0140010613F5D90700000003000000080000000A00000002000000010000000410D10108000000040000000912EA95000AD3577F10D13D08064000F8000000080000000A00000004000000090000000013D7ED07067ECE8112EA5900000000000AD3577F10D13D08064000F8000000090000000A000000040000000912EA9500000000090000000000000003000000020000000100000000"
theorem small_7956681_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7956681_right_root small_7956681_right_fuel small_7956681_right_count small_7956681_right_encoded = true := by
  decide +kernel
theorem small_7956681_right_covered : CoveredBy scale carrier boxes small_7956681_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7956681_right_root small_7956681_right_fuel small_7956681_right_count small_7956681_right_encoded small_7956681_right_checked

theorem cover_7956681 : CoveredBy scale carrier boxes root_7956681 := by
  apply coveredBy_split_literal root_7956681 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0192.root_7956682 small_7956681_right_root coord0 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0192.cover_7956682
  · exact small_7956681_right_covered
#print axioms cover_7956681

def root_7956675 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7956675_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(14529024), (16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7956675_left_fuel : Nat := 1
def small_7956675_left_count : Nat := 1
def small_7956675_left_encoded : String := "00000003"
theorem small_7956675_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7956675_left_root small_7956675_left_fuel small_7956675_left_count small_7956675_left_encoded = true := by
  decide +kernel
theorem small_7956675_left_covered : CoveredBy scale carrier boxes small_7956675_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7956675_left_root small_7956675_left_fuel small_7956675_left_count small_7956675_left_encoded small_7956675_left_checked

theorem cover_7956675 : CoveredBy scale carrier boxes root_7956675 := by
  apply coveredBy_split_literal root_7956675 small_7956675_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0192.root_7956681 coord3 true (16243968)
  · decide +kernel
  · decide +kernel
  · exact small_7956675_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0192.cover_7956681
#print axioms cover_7956675

def root_7956674 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7956674 : CoveredBy scale carrier boxes root_7956674 := by
  apply coveredBy_split_literal root_7956674 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0192.root_7956675 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2987.root coord3 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0192.cover_7956675
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2987.covered
#print axioms cover_7956674

def root_7956668 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7956668_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7956668_left_fuel : Nat := 1
def small_7956668_left_count : Nat := 1
def small_7956668_left_encoded : String := "00000002"
theorem small_7956668_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7956668_left_root small_7956668_left_fuel small_7956668_left_count small_7956668_left_encoded = true := by
  decide +kernel
theorem small_7956668_left_covered : CoveredBy scale carrier boxes small_7956668_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7956668_left_root small_7956668_left_fuel small_7956668_left_count small_7956668_left_encoded small_7956668_left_checked

theorem cover_7956668 : CoveredBy scale carrier boxes root_7956668 := by
  apply coveredBy_split_literal root_7956668 small_7956668_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0192.root_7956674 coord2 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_7956668_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0192.cover_7956674
#print axioms cover_7956668

def root_7956667 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7956667_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7956667_right_fuel : Nat := 19
def small_7956667_right_count : Nat := 159
def small_7956667_right_encoded : String := "135D44FB05000106135D45070000000304548A0113867100000000000CFD9BFF0F350D080C9A87080F8750FF078000F800000008128A40F90000000800000001000000040F878CFF00000004078000F8128A7CF900000001028000FA13D7ECFB000000020280010613D7B10700000003022A4581000000060000000813D7ED07022A458113E1C500000000000DE7CA080000000800000005000000080000000300000008128A40F9028000FA13D7ECFB000000020280010600000006000000050000000500000001000000040F34D10800000004078000F8128A7CF900000001028000FA13D7ECFB000000020000000900000009128A40F9028000FA13D7ECFB000000020280010613D7B10700000003022A45810000000613E201000AD3577F10D13D08000000060000000400000009000000000000000500000005000000011386AD000CFD9BFF0F350D080C9A8708000000080F878CFF00000004078000F800000008128A40F90000000800000001000000040F34D10800000004078000F800000009128A40F9028000FA13D7ECFB000000020280010613D7B10700000003067ECE8112EA5900000000000AD3577F10D13D080000000800000004000000090000000913D7ED07067ECE81000000090000000900000003000000090000000100000000135D810704548A0113867100000000000CFD9BFF0F350D080C9A87080F8750FF078000F8128A7CF90000000100000007000000050000000400000005000000040F34D10800000004000000051386AD000CFD9BFF0F350D080C9A87080000000A0F878CFF00000004078000F8128A7CF900000001000000080000000A000000040F34D1080000000400000009000000000000000300000002"
theorem small_7956667_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7956667_right_root small_7956667_right_fuel small_7956667_right_count small_7956667_right_encoded = true := by
  decide +kernel
theorem small_7956667_right_covered : CoveredBy scale carrier boxes small_7956667_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7956667_right_root small_7956667_right_fuel small_7956667_right_count small_7956667_right_encoded small_7956667_right_checked

theorem cover_7956667 : CoveredBy scale carrier boxes root_7956667 := by
  apply coveredBy_split_literal root_7956667 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0192.root_7956668 small_7956667_right_root coord2 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0192.cover_7956668
  · exact small_7956667_right_covered
#print axioms cover_7956667

def root_7956661 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7956661_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7956661_left_fuel : Nat := 1
def small_7956661_left_count : Nat := 1
def small_7956661_left_encoded : String := "00000001"
theorem small_7956661_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7956661_left_root small_7956661_left_fuel small_7956661_left_count small_7956661_left_encoded = true := by
  decide +kernel
theorem small_7956661_left_covered : CoveredBy scale carrier boxes small_7956661_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7956661_left_root small_7956661_left_fuel small_7956661_left_count small_7956661_left_encoded small_7956661_left_checked

theorem cover_7956661 : CoveredBy scale carrier boxes root_7956661 := by
  apply coveredBy_split_literal root_7956661 small_7956661_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0192.root_7956667 coord1 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_7956661_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0192.cover_7956667
#print axioms cover_7956661

def root_7956660 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7956660_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7956660_right_fuel : Nat := 23
def small_7956660_right_count : Nat := 285
def small_7956660_right_encoded : String := "135D44F9050000FA135D80FB0000000205000106135D45070000000304548A0113867100000000000CFD9BFF0F350D080C9A87080F8750FF00000009000000040F878CFF00000004028000F813D7ECF900000001078000FA128A7CFB000000020280010613D7B10700000003022A4581000000060000000A13D7ED07022A4581000000090000000A00000003128A40FB0280010600000006000000050000000213D7B0F9078000FA000000090000000500000001000000040F34D10800000004028000F813D7ECF900000001078000FA128A7CFB000000020280010613D7B10700000003022A458113E1C500000000000AD3577F10D13D080000000600000004000000060000000713D7ED07022A458113E1C500000000000AD3577F0000000510D10108000000040000000513E201000AD3577F10D13D0803C000F813A54CF90000000108C000FA0000000A00000005000000050000000410D1010800000004000000070000000000000003128A40FB0280010613D7B10700000003022A45810000000613E201000AD3577F10D13D08000000060000000410D10108000000040000000500000000000000050000000213D7B0F9078000FA128A7CFB000000020280010613D7B10700000003022A458100000006000000070000000500000005000000011386AD000CFD9BFF0F350D080000000A000000040F34D10800000004028000F813D7ECF900000001078000FA128A7CFB000000020280010613D7B10700000003067ECE8112EA590000000000000000070000000713D7ED07067ECE8112EA5900000000000000000A0000000A00000003128A40FB0280010613D7B10700000003067ECE8112EA5900000000000AD3577F10D13D0803C000F813A54CF900000001064000FA0000000A0000000A0000000A0000000410D10108000000040000000712EA95000AD3577F0000000A10D1010800000004000000070000000013D7ED07067ECE8112EA5900000000000AD3577F0000000510D1010800000004000000050000000A000000030000000213D7B0F9078000FA128A7CFB0000000202800106000000070000000A128A40FB0280010613D7B10700000003067ECE8112EA5900000000000000000A0000000A00000005000000020000000100000000135D810704548A0113867100000000000CFD9BFF0F350D080000000A000000040F34D10800000004000000051386AD000CFD9BFF0F350D080000000A000000040000000A0000000000000003135D44FB05000106135D45070000000304548A0113867100000000000CFD9BFF0F350D080C9A87080000000600000005000000040F34D10800000004000000051386AD000CFD9BFF0F350D080000000A000000040F34D10800000004028000F813D7ECF900000001028000FA13D7ECFB000000020280010613D7B10700000003067ECE8112EA5900000000000AD3577F0000000510D10108000000040000000512EA95000AD3577F0000000810D1010800000004000000090000000000000005000000050000000500000000135D810704548A01000000050000000A000000030000000200000001"
theorem small_7956660_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7956660_right_root small_7956660_right_fuel small_7956660_right_count small_7956660_right_encoded = true := by
  decide +kernel
theorem small_7956660_right_covered : CoveredBy scale carrier boxes small_7956660_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7956660_right_root small_7956660_right_fuel small_7956660_right_count small_7956660_right_encoded small_7956660_right_checked

theorem cover_7956660 : CoveredBy scale carrier boxes root_7956660 := by
  apply coveredBy_split_literal root_7956660 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0192.root_7956661 small_7956660_right_root coord1 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0192.cover_7956661
  · exact small_7956660_right_covered
#print axioms cover_7956660

def root_7956655 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7956655_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7956655_right_fuel : Nat := 1
def small_7956655_right_count : Nat := 1
def small_7956655_right_encoded : String := "00000004"
theorem small_7956655_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7956655_right_root small_7956655_right_fuel small_7956655_right_count small_7956655_right_encoded = true := by
  decide +kernel
theorem small_7956655_right_covered : CoveredBy scale carrier boxes small_7956655_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7956655_right_root small_7956655_right_fuel small_7956655_right_count small_7956655_right_encoded small_7956655_right_checked

theorem cover_7956655 : CoveredBy scale carrier boxes root_7956655 := by
  apply coveredBy_split_literal root_7956655 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0192.root_7956660 small_7956655_right_root coord4 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0192.cover_7956660
  · exact small_7956655_right_covered
#print axioms cover_7956655

def root_7956654 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7956654_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7956654_right_fuel : Nat := 21
def small_7956654_right_count : Nat := 219
def small_7956654_right_encoded : String := "1207010800000004050000F8135D80F900000001050000FA135D80FB0000000205000106135D45070000000304548A011386710000000000045489FF1386AD08078000F8128A7CF900000001078000FA128A7CFB000000020000000900000009128A40F9078000FA128A7CFB0000000200000007128A40FB000000090000000200000001000000041386710800000004078000F800000009000000091386AD00045489FF000000090000000900000000135D810704548A011386710000000000045489FF1386AD08078000F8128A7CF900000001078000FA128A7CFB000000020780010600000009128A7D07000000090000000300000009128A40F9078000FA128A7CFB0000000207800106128A410700000003022A458113E1C500000000000000000513E20100067ECE7F000000090000000900000000000000050000000500000001000000041386710800000004078000F800000009128A40F9078000FA128A7CFB0000000207800106000000070000000500000005000000011386AD00045489FF1386AD08078000F8000000090000000900000004000000090000000000000003135D44FB0500010600000009135D810704548A01138671000000000000000005000000090000000300000002135D44F9050000FA135D80FB0000000205000106135D45070000000304548A011386710000000000045489FF1386AD08028000F813D7ECF900000001078000FA00000007128A40FB0280010600000007000000050000000213D7B0F9078000FA00000007000000050000000100000004000000071386AD00045489FF1386AD08028000F813D7ECF900000001078000FA000000070000000913D7B0F9078000FA00000007128A40FB0280010600000007000000050000000200000001000000040000000700000000135D810704548A011386710000000000000000051386AD00045489FF1386AD08028000F813D7ECF900000001078000FA128A7CFB0000000207800106128A410700000003067ECE8112EA5900000000000000000500000007000000050000000500000005000000041386710800000004028000F800000009000000050000000000000003135D44FB05000106135D45070000000304548A011386710000000000000000051386AD00045489FF1386AD08028000F80000000900000005000000040000000900000000000000050000000200000001"
theorem small_7956654_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7956654_right_root small_7956654_right_fuel small_7956654_right_count small_7956654_right_encoded = true := by
  decide +kernel
theorem small_7956654_right_covered : CoveredBy scale carrier boxes small_7956654_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7956654_right_root small_7956654_right_fuel small_7956654_right_count small_7956654_right_encoded small_7956654_right_checked

theorem cover_7956654 : CoveredBy scale carrier boxes root_7956654 := by
  apply coveredBy_split_literal root_7956654 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0192.root_7956655 small_7956654_right_root coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0192.cover_7956655
  · exact small_7956654_right_covered
#print axioms cover_7956654

def root_7956648 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7956648_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7956648_left_fuel : Nat := 1
def small_7956648_left_count : Nat := 1
def small_7956648_left_encoded : String := "00000000"
theorem small_7956648_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7956648_left_root small_7956648_left_fuel small_7956648_left_count small_7956648_left_encoded = true := by
  decide +kernel
theorem small_7956648_left_covered : CoveredBy scale carrier boxes small_7956648_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7956648_left_root small_7956648_left_fuel small_7956648_left_count small_7956648_left_encoded small_7956648_left_checked

theorem cover_7956648 : CoveredBy scale carrier boxes root_7956648 := by
  apply coveredBy_split_literal root_7956648 small_7956648_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0192.root_7956654 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_7956648_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0192.cover_7956654
#print axioms cover_7956648

def root_7956647 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7956647_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7956647_right_fuel : Nat := 22
def small_7956647_right_count : Nat := 225
def small_7956647_right_encoded : String := "12073D0008A912FF12073D08050000F8135D80F900000001050000FA135D80FB0000000205000106135D4507000000030CFD9C010F34D100000000000CFD9BFF0F350D080C9A8708000000080F878CFF00000004078000F800000008128A40F90000000A00000001000000040F34D10800000004078000F800000009128A40F9078000FA128A7CFB000000020280010613D7B107000000030AD3578110D101000000000000000007000000090000000A00000009000000010F350D000CFD9BFF000000080F34D108000000040000000900000000135D81070CFD9C010F34D100000000000CFD9BFF0F350D080000000A000000040F34D10800000004078000F800000009128A40F900000009000000010F350D000CFD9BFF0F350D080C9A87000000000800000008000000040F34D10800000004000000060000000000000003135D44FB05000106135D4507000000030CFD9C010F34D100000000000CFD9BFF000000080F34D108000000040000000900000008135D81070CFD9C010F34D100000000000CFD9BFF0000000A0F34D10800000004000000090F350D000CFD9BFF0000000800000009000000000000000300000002135D44F9050000FA135D80FB0000000205000106135D4507000000030CFD9C010F34D100000000000CFD9BFF0F350D080000000A000000040F34D10800000004028000F813D7ECF900000001078000FA0000000A0000000A0000000A0F350D000CFD9BFF0F350D0800000008000000040F34D108000000040C9A87000F87510100000000000000090000000A00000000135D81070CFD9C010F34D100000000000000000A0F350D000CFD9BFF0F350D080000000A000000040000000A0000000000000003135D44FB05000106135D4507000000030CFD9C010F34D100000000000000000A0000000A135D81070CFD9C010000000A0000000A000000030000000200000001000000041207010800000004050000F8135D80F90000000100000009135D44F9050000FA135D80FB0000000205000106135D4507000000030CFD9C010F34D10000000000045489FF1386AD08028000F80000000913D7B0F9078000FA00000007000000090000000100000004000000070F350D000000000900000000135D81070CFD9C010F34D10000000000045489FF0000000A000000090000000900000003135D44FB05000106135D4507000000030CFD9C01000000090000000900000009000000020000000100000000"
theorem small_7956647_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7956647_right_root small_7956647_right_fuel small_7956647_right_count small_7956647_right_encoded = true := by
  decide +kernel
theorem small_7956647_right_covered : CoveredBy scale carrier boxes small_7956647_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7956647_right_root small_7956647_right_fuel small_7956647_right_count small_7956647_right_encoded small_7956647_right_checked

theorem cover_7956647 : CoveredBy scale carrier boxes root_7956647 := by
  apply coveredBy_split_literal root_7956647 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0192.root_7956648 small_7956647_right_root coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0192.cover_7956648
  · exact small_7956647_right_covered
#print axioms cover_7956647

def root_7956641 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7956641_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7956641_left_fuel : Nat := 1
def small_7956641_left_count : Nat := 1
def small_7956641_left_encoded : String := "00000004"
theorem small_7956641_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7956641_left_root small_7956641_left_fuel small_7956641_left_count small_7956641_left_encoded = true := by
  decide +kernel
theorem small_7956641_left_covered : CoveredBy scale carrier boxes small_7956641_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7956641_left_root small_7956641_left_fuel small_7956641_left_count small_7956641_left_encoded small_7956641_left_checked

theorem cover_7956641 : CoveredBy scale carrier boxes root_7956641 := by
  apply coveredBy_split_literal root_7956641 small_7956641_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0192.root_7956647 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_7956641_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0192.cover_7956647
#print axioms cover_7956641

def root_7956491 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7956491_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7956491_left_fuel : Nat := 17
def small_7956491_left_count : Nat := 73
def small_7956491_left_encoded : String := "1151E8FF08A913011207010000000000050000F8135D80F900000001050000FA135D80FB0000000205000106135D4507000000030500010800000008135D80FF0000000404548A011386710000000000078000F8128A7CF900000001078000FA00000009000000080000000900000008135D81070500010800000007135D80FF000000040000000A00000003135D44FB05000106000000080000000A00000002135D44F9050000FA135D80FB00000002050001060000000A0000000A0000000A0000000112073D00050000F8135D80F900000001050000FA135D80FB0000000205000106000000080000000800000008135D44F9050000FA135D80FB00000002050001060000000A135D81070000000A0000000300000008000000010000000000000004"
theorem small_7956491_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7956491_left_root small_7956491_left_fuel small_7956491_left_count small_7956491_left_encoded = true := by
  decide +kernel
theorem small_7956491_left_covered : CoveredBy scale carrier boxes small_7956491_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7956491_left_root small_7956491_left_fuel small_7956491_left_count small_7956491_left_encoded small_7956491_left_checked

theorem cover_7956491 : CoveredBy scale carrier boxes root_7956491 := by
  apply coveredBy_split_literal root_7956491 small_7956491_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0192.root_7956641 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_7956491_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0192.cover_7956641
#print axioms cover_7956491

def root_7956485 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7956485_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7956485_left_fuel : Nat := 1
def small_7956485_left_count : Nat := 1
def small_7956485_left_encoded : String := "00000003"
theorem small_7956485_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7956485_left_root small_7956485_left_fuel small_7956485_left_count small_7956485_left_encoded = true := by
  decide +kernel
theorem small_7956485_left_covered : CoveredBy scale carrier boxes small_7956485_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7956485_left_root small_7956485_left_fuel small_7956485_left_count small_7956485_left_encoded small_7956485_left_checked

theorem cover_7956485 : CoveredBy scale carrier boxes root_7956485 := by
  apply coveredBy_split_literal root_7956485 small_7956485_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0192.root_7956491 coord3 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_7956485_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0192.cover_7956491
#print axioms cover_7956485

def root_7956484 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7956484_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7956484_right_fuel : Nat := 22
def small_7956484_right_count : Nat := 217
def small_7956484_right_encoded : String := "115225070A0001081151E8FF08A91301120701000000000008A913070000000712073D06050000F80000000A0000000A0000000312073D0008A913070000000A12073D06050000F8135D80F900000001050000FA0000000700000007135D44F9050000FA135D80FB000000020500010800000007135D80FF000000040000000A0000000700000001000000030000000000000004115224FF0000000408A91301120701000000000008A9130712070106000000030000000512073D0608A912FF12073D08050000F8135D80F900000001050000FA135D80FB0000000204548A0113867100000000000CFD9C070F34D10600000003000000050F350D060CFD9BFF0F350D080000000A000000040F34D1080000000400000005000000031386AD000CFD9C070000000A0F350D060CFD9BFF0F350D080000000A000000040F34D108000000040C9A87060F875107000000030000000A000000050000000300000000135D44FB04548A01000000051386AD000CFD9C07000000050F350D060CFD9BFF000000050F34D1080000000400000005000000030000000000000002135D44F9050000FA135D80FB0000000204548A01000000050000000A0000000500000001000000041207010800000004050000F8135D80F900000001050000FA135D80FB0000000204548A011386710000000000000000051386AD000CFD9C07000000090F350D06045489FF1386AD080C9A8706000000090000000500000004138671080000000400000009000000030000000000000005000000050000000312073D0008A9130712070106000000030000000A12073D0608A912FF12073D08050000F8135D80F900000001050000FA135D80FB000000020CFD9C010F34D100000000000CFD9C07000000060F350D060000000A0000000300000006135D44FB0CFD9C010F34D100000000000000000A0000000A00000002135D44F9050000FA135D80FB000000020CFD9C010F34D100000000000000000A0F350D000CFD9C07000000060F350D060CFD9BFF000000060000000A0000000300000000135D44FB0000000A0000000200000001000000041207010800000004050000F8135D80F900000001050000FA0000000600000009135D44F9050000FA135D80FB000000020CFD9C010F34D100000000000000000A000000060000000900000001000000030000000000000003"
theorem small_7956484_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7956484_right_root small_7956484_right_fuel small_7956484_right_count small_7956484_right_encoded = true := by
  decide +kernel
theorem small_7956484_right_covered : CoveredBy scale carrier boxes small_7956484_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7956484_right_root small_7956484_right_fuel small_7956484_right_count small_7956484_right_encoded small_7956484_right_checked

theorem cover_7956484 : CoveredBy scale carrier boxes root_7956484 := by
  apply coveredBy_split_literal root_7956484 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0192.root_7956485 small_7956484_right_root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0192.cover_7956485
  · exact small_7956484_right_covered
#print axioms cover_7956484

def root_7956479 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7956479_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7956479_right_fuel : Nat := 1
def small_7956479_right_count : Nat := 1
def small_7956479_right_encoded : String := "00000002"
theorem small_7956479_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7956479_right_root small_7956479_right_fuel small_7956479_right_count small_7956479_right_encoded = true := by
  decide +kernel
theorem small_7956479_right_covered : CoveredBy scale carrier boxes small_7956479_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7956479_right_root small_7956479_right_fuel small_7956479_right_count small_7956479_right_encoded small_7956479_right_checked

theorem cover_7956479 : CoveredBy scale carrier boxes root_7956479 := by
  apply coveredBy_split_literal root_7956479 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0192.root_7956484 small_7956479_right_root coord2 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0192.cover_7956484
  · exact small_7956479_right_covered
#print axioms cover_7956479

def root_7947997 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7947997 : CoveredBy scale carrier boxes root_7947997 := by
  apply coveredBy_split_literal root_7947997 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0192.root_7947998 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0192.root_7956479 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0192.cover_7947998
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0192.cover_7956479
#print axioms cover_7947997

def root_7947992 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7947992_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7947992_right_fuel : Nat := 1
def small_7947992_right_count : Nat := 1
def small_7947992_right_encoded : String := "00000001"
theorem small_7947992_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7947992_right_root small_7947992_right_fuel small_7947992_right_count small_7947992_right_encoded = true := by
  decide +kernel
theorem small_7947992_right_covered : CoveredBy scale carrier boxes small_7947992_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7947992_right_root small_7947992_right_fuel small_7947992_right_count small_7947992_right_encoded small_7947992_right_checked

theorem cover_7947992 : CoveredBy scale carrier boxes root_7947992 := by
  apply coveredBy_split_literal root_7947992 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0192.root_7947997 small_7947992_right_root coord1 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0192.cover_7947997
  · exact small_7947992_right_covered
#print axioms cover_7947992

def root_7938400 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7938400 : CoveredBy scale carrier boxes root_7938400 := by
  apply coveredBy_split_literal root_7938400 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0192.root_7938401 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0192.root_7947992 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0192.cover_7938401
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0192.cover_7947992
#print axioms cover_7938400

def root_7938395 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7938395_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7938395_right_fuel : Nat := 1
def small_7938395_right_count : Nat := 1
def small_7938395_right_encoded : String := "00000000"
theorem small_7938395_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7938395_right_root small_7938395_right_fuel small_7938395_right_count small_7938395_right_encoded = true := by
  decide +kernel
theorem small_7938395_right_covered : CoveredBy scale carrier boxes small_7938395_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7938395_right_root small_7938395_right_fuel small_7938395_right_count small_7938395_right_encoded small_7938395_right_checked

theorem cover_7938395 : CoveredBy scale carrier boxes root_7938395 := by
  apply coveredBy_split_literal root_7938395 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0192.root_7938400 small_7938395_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0192.cover_7938400
  · exact small_7938395_right_covered
#print axioms cover_7938395

def root_7937767 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7937767_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7937767_left_fuel : Nat := 22
def small_7937767_left_count : Nat := 291
def small_7937767_left_encoded : String := "1151E901000000000A0000F8115224F9000000010A0000FA115224FB000000020A0001061151E907000000030A0001081151E8FF0000000500000004115224FF0000000408A912F912073CF80000000108A912FB00000005120700FA0000000500000002120700F808A912FB000000050000000900000001115225070A0001081151E8FF08A912F912073CF80000000108A912FB00000006120700FA0000000500000002120700F8000000050000000100000004115224FF0000000408A912F912073CF80000000108A912FB00000006120700FA0000000600000002120700F80000000600000001000000031151E8FB0A0001061151E907000000030A00010800000005115224FF0000000408A912F912073CF80000000108A912FF12073D080500010000000005135D8101050000FA0000000500000009000000000000000400000009120700F80000000500000001115225070A0001081151E8FF0000000700000004115224FF0000000408A912F912073CF80000000108A913070000000612073D0600000009000000030000000900000003000000021151E8F90A0000FA115224FB000000020A0001061151E907000000030A00010800000005115224FF0000000408A912FB12073CFA0000000208A912FF12073D080500010000000005135D8101050000F800000005135D44F90500010600000005135D81070CFD9BFB000000060F34D0FA00000005000000020000000300000001000000000000000412070108000000040500010000000005135D8101050000F800000005135D44F90500010600000005000000060000000100000000120700FA0000000500000002115225070A0001081151E8FF08A912FB12073CFA0000000208A913070000000612073D0605000100135D45010000000000000006135D8101050000F800000006135D44F905000108135D44FF000000060000000400000006000000010000000000000003120700FA000000060000000200000004115224FF0000000408A912FB12073CFA0000000208A913070000000612073D0608A912FF0000000612070108000000040000000600000003120700FA0000000600000002000000031151E8FB0A0001061151E907000000030A0001081151E8FF0000000800000004115224FF0000000408A912FF12073D0805000100135D450100000000050000F800000008135D44F90000000800000001135D8101050000F8135D80F900000001050000FA135D80FB0000000205000106000000050000000600000008135D44F9050000FA135D80FB0000000205000106135D45070000000300000008135D81070CFD9BFF00000006000000090000000300000008000000010000000000000004120701080000000400000009115225070A0001081151E8FF08A9130712070106000000030000000612073D060500010000000007000000070000000300000004115224FF0000000408A9130712070106000000030000000612073D0608A912FF12073D080500010000000009135D8101050000F800000006135D44F9050000FA000000060000000900000001000000000000000412070108000000040000000600000003000000030000000200000001"
theorem small_7937767_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7937767_left_root small_7937767_left_fuel small_7937767_left_count small_7937767_left_encoded = true := by
  decide +kernel
theorem small_7937767_left_covered : CoveredBy scale carrier boxes small_7937767_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7937767_left_root small_7937767_left_fuel small_7937767_left_count small_7937767_left_encoded small_7937767_left_checked

theorem cover_7937767 : CoveredBy scale carrier boxes root_7937767 := by
  apply coveredBy_split_literal root_7937767 small_7937767_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0192.root_7938395 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_7937767_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0192.cover_7938395
#print axioms cover_7937767

def root_7975979 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7975979 : CoveredBy scale carrier boxes root_7975979 := by
  apply coveredBy_split_literal root_7975979 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2991.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2992.root coord3 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2991.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2992.covered
#print axioms cover_7975979

def root_7975973 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7975973_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7975973_left_fuel : Nat := 1
def small_7975973_left_count : Nat := 1
def small_7975973_left_encoded : String := "00000002"
theorem small_7975973_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7975973_left_root small_7975973_left_fuel small_7975973_left_count small_7975973_left_encoded = true := by
  decide +kernel
theorem small_7975973_left_covered : CoveredBy scale carrier boxes small_7975973_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7975973_left_root small_7975973_left_fuel small_7975973_left_count small_7975973_left_encoded small_7975973_left_checked

theorem cover_7975973 : CoveredBy scale carrier boxes root_7975973 := by
  apply coveredBy_split_literal root_7975973 small_7975973_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0192.root_7975979 coord2 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_7975973_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0192.cover_7975979
#print axioms cover_7975973

def root_7975972 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7975972_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7975972_right_fuel : Nat := 17
def small_7975972_right_count : Nat := 67
def small_7975972_right_encoded : String := "0F34D0FA0CFD9C070F34D106000000030CFD9C090F34D108000000040C9A86F80F878CF900000001022A458113E1C500000000000AD3577B0000000610D100FA0000000500000002000000060F8750F9022A458113E1C500000000000AD3577B10D13CFA000000020AD357870000000610D13D060AD357890000000610D13D080B4D43F80000000500000008000000040000000310D100FA0000000A0000000200000006000000010F350D080C9A86F8000000050F8750F90C9A8708000000050F878D09000000050000000400000001000000040F350D060CFD9C090F34D108000000040C9A86F8000000050F8750F900000007000000010F350D0800000005000000040000000300000002"
theorem small_7975972_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7975972_right_root small_7975972_right_fuel small_7975972_right_count small_7975972_right_encoded = true := by
  decide +kernel
theorem small_7975972_right_covered : CoveredBy scale carrier boxes small_7975972_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7975972_right_root small_7975972_right_fuel small_7975972_right_count small_7975972_right_encoded small_7975972_right_checked

theorem cover_7975972 : CoveredBy scale carrier boxes root_7975972 := by
  apply coveredBy_split_literal root_7975972 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0192.root_7975973 small_7975972_right_root coord2 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0192.cover_7975973
  · exact small_7975972_right_covered
#print axioms cover_7975972

def root_7975966 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7975966_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7975966_left_fuel : Nat := 1
def small_7975966_left_count : Nat := 1
def small_7975966_left_encoded : String := "00000001"
theorem small_7975966_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7975966_left_root small_7975966_left_fuel small_7975966_left_count small_7975966_left_encoded = true := by
  decide +kernel
theorem small_7975966_left_covered : CoveredBy scale carrier boxes small_7975966_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7975966_left_root small_7975966_left_fuel small_7975966_left_count small_7975966_left_encoded small_7975966_left_checked

theorem cover_7975966 : CoveredBy scale carrier boxes root_7975966 := by
  apply coveredBy_split_literal root_7975966 small_7975966_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0192.root_7975972 coord1 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_7975966_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0192.cover_7975972
#print axioms cover_7975966

def root_7975965 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7975965_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7975965_right_fuel : Nat := 19
def small_7975965_right_count : Nat := 77
def small_7975965_right_encoded : String := "0F34D0F80CFD9BFB0F350CFA000000020CFD9C070F34D106000000030CFD9C090F34D108000000040C9A86FA0F878CFB00000002022A458113E1C500000000000AD357790000000610D100F80000000500000001000000060F8750FB022A458113E1C500000000000AD3577910D13CF8000000010AD357870000000610D13D060AD357890000000610D13D080B4D43FA0000000500000007000000040000000310D100F8000000090000000100000006000000020F350D080C9A86FA000000050F8750FB0000000800000002000000040F350D060CFD9C090F34D108000000040C9A86FA000000050F8750FB0C9A8706000000050F878D070000000500000003000000020F350D080000000500000004000000030F34D0FA0CFD9C07000000050F350D0600000005000000030000000200000001"
theorem small_7975965_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7975965_right_root small_7975965_right_fuel small_7975965_right_count small_7975965_right_encoded = true := by
  decide +kernel
theorem small_7975965_right_covered : CoveredBy scale carrier boxes small_7975965_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7975965_right_root small_7975965_right_fuel small_7975965_right_count small_7975965_right_encoded small_7975965_right_checked

theorem cover_7975965 : CoveredBy scale carrier boxes root_7975965 := by
  apply coveredBy_split_literal root_7975965 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0192.root_7975966 small_7975965_right_root coord1 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0192.cover_7975966
  · exact small_7975965_right_covered
#print axioms cover_7975965

def root_7975959 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7975959_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7975959_left_fuel : Nat := 1
def small_7975959_left_count : Nat := 1
def small_7975959_left_encoded : String := "00000000"
theorem small_7975959_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7975959_left_root small_7975959_left_fuel small_7975959_left_count small_7975959_left_encoded = true := by
  decide +kernel
theorem small_7975959_left_covered : CoveredBy scale carrier boxes small_7975959_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7975959_left_root small_7975959_left_fuel small_7975959_left_count small_7975959_left_encoded small_7975959_left_checked

theorem cover_7975959 : CoveredBy scale carrier boxes root_7975959 := by
  apply coveredBy_split_literal root_7975959 small_7975959_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0192.root_7975965 coord0 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_7975959_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0192.cover_7975965
#print axioms cover_7975959

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0192
