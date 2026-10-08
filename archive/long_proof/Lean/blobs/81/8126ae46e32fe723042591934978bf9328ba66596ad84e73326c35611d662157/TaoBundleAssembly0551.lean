import TaoBundleAssembly0550
import TaoBundleChunkBatch0749
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0551
def root_7985513 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7985513_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7985513_left_fuel : Nat := 30
def small_7985513_left_count : Nat := 435
def small_7985513_left_encoded : String := "1151E907000000030A0001081151E9090000000408A91301120701000000000008A912F912073CF800000001050000FA135D80FB000000020500010600000005135D81070500010800000005135D810904548A01000000051386AD000CFD9BF90000000500000008000000000000000400000003135D44FB05000106135D4507000000030500010800000005135D810904548A01000000051386AD00000000050000000000000004135D81070500010800000008135D810904548A0113867100000000000000000800000008000000040000000300000002120700F8000000080000000112073D0008A912F912073CF800000001050000FA135D80FB0000000205000106135D4507000000030500010800000005135D81090000000500000004135D81070500010800000005135D81090CFD9C010F34D100000000000CFD9BF900000005000000080F350D000CFD9BF90000000500000008000000000000000400000003135D44FB05000106135D4507000000030500010800000005135D81090000000900000004135D81070500010800000008135D81090CFD9C010F34D100000000000000000800000008000000040000000300000002120700F80000000800000001000000001152250908A91301120701000000000008A912F912073CF80000000108A913091207010800000004050000FA135D80FB0000000205000106135D45070000000304548A0113867100000000000000000900000009135D810704548A0113867100000000000CFD9BF90F350CF80000000104548A0900000009000000090000000900000009000000030000000912073D08050000FA135D80FB0000000205000106135D45070000000304548A0113867100000000000CFD9BF90F350CF8000000010CFD9C09000000050F350D0800000005000000040F34D0F800000005000000011386AD000CFD9BF90F350CF8000000010CFD9C09000000050F350D0800000005000000040F34D0F8000000050000000100000000135D810704548A0113867100000000000CFD9BF90F350CF8000000010CFD9C090F34D108000000040C9A86F80F878CF900000001078000FA00000005000000090F8750F9078000FA128A7CFB000000020780010600000007128A7D07022A458113E1C500000000000AD3578910D1010800000004000000090000000A0000000900000003128A40FB0000000900000002000000010F350D080C9A86F8000000050F8750F90C9A8708000000050F878D09078000FA00000005128A40FB0780010600000005128A7D07022A45810000000A0000000900000003000000020000000400000001000000040F34D0F80CFD9C090F34D10800000004000000090F350D080000000500000004000000011386AD000CFD9BF90F350CF8000000010CFD9C090F34D10800000004000000090F350D080C9A86F80F878CF9000000010C9A870800000005000000090F8750F90C9A8708000000050F878D09078000FA00000005000000090000000400000001000000040F34D0F80CFD9C090000000900000009000000010000000000000003135D44FB05000106135D45070000000304548A0113867100000000000CFD9BF90F350CF8000000010CFD9C09000000090000000A0000000900000009135D810704548A0113867100000000000CFD9BF90F350CF8000000010CFD9C090F34D10800000004000000090F350D080C9A86F80F878CF9000000010C9A870800000008000000090F8750F90C9A87080F87510900000004028000FA13D7ECFB00000002078001060000000500000008000000090F878D09000000090000000400000001000000040F34D0F800000009000000011386AD000CFD9BF90F350CF8000000010CFD9C0900000009000000090000000900000000000000030000000200000004120700F808A913090000000912073D08050000FA135D80FB000000020500010600000009135D810704548A010000000A000000090000000300000009000000040000000112073D0008A912F912073CF80000000108A9130912070108000000040000000912073D08050000FA135D80FB0000000205000106135D4507000000030CFD9C010F34D100000000000CFD9BF90F350CF800000001000000090000000900000009135D81070CFD9C010F34D100000000000CFD9BF90F350CF8000000010CFD9C090F34D10800000004000000090F350D080C9A86F80F878CF900000001000000090F8750F90C9A870800000005000000090000000100000004000000090F350D000CFD9BF90F350CF80000000100000009000000090000000000000003135D44FB0500010600000009135D81070CFD9C010F34D100000000000000000900000009000000030000000200000004120700F800000009000000010000000000000004"
theorem small_7985513_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7985513_left_root small_7985513_left_fuel small_7985513_left_count small_7985513_left_encoded = true := by
  decide +kernel
theorem small_7985513_left_covered : CoveredBy scale carrier boxes small_7985513_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7985513_left_root small_7985513_left_fuel small_7985513_left_count small_7985513_left_encoded small_7985513_left_checked

theorem cover_7985513 : CoveredBy scale carrier boxes root_7985513 := by
  apply coveredBy_split_literal root_7985513 small_7985513_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0550.root_7986437 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_7985513_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0550.cover_7986437
#print axioms cover_7985513

def root_7985508 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7985508_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7985508_right_fuel : Nat := 1
def small_7985508_right_count : Nat := 1
def small_7985508_right_encoded : String := "00000002"
theorem small_7985508_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7985508_right_root small_7985508_right_fuel small_7985508_right_count small_7985508_right_encoded = true := by
  decide +kernel
theorem small_7985508_right_covered : CoveredBy scale carrier boxes small_7985508_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7985508_right_root small_7985508_right_fuel small_7985508_right_count small_7985508_right_encoded small_7985508_right_checked

theorem cover_7985508 : CoveredBy scale carrier boxes root_7985508 := by
  apply coveredBy_split_literal root_7985508 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0551.root_7985513 small_7985508_right_root coord2 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0551.cover_7985513
  · exact small_7985508_right_covered
#print axioms cover_7985508

def root_7970406 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7970406 : CoveredBy scale carrier boxes root_7970406 := by
  apply coveredBy_split_literal root_7970406 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0550.root_7970407 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0551.root_7985508 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0550.cover_7970407
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0551.cover_7985508
#print axioms cover_7970406

def root_7970400 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7970400_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7970400_left_fuel : Nat := 1
def small_7970400_left_count : Nat := 1
def small_7970400_left_encoded : String := "00000001"
theorem small_7970400_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7970400_left_root small_7970400_left_fuel small_7970400_left_count small_7970400_left_encoded = true := by
  decide +kernel
theorem small_7970400_left_covered : CoveredBy scale carrier boxes small_7970400_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7970400_left_root small_7970400_left_fuel small_7970400_left_count small_7970400_left_encoded small_7970400_left_checked

theorem cover_7970400 : CoveredBy scale carrier boxes root_7970400 := by
  apply coveredBy_split_literal root_7970400 small_7970400_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0551.root_7970406 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_7970400_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0551.cover_7970406
#print axioms cover_7970400

def root_7993247 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7993247_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7993247_right_fuel : Nat := 21
def small_7993247_right_count : Nat := 113
def small_7993247_right_encoded : String := "135D44F904548A0113867100000000000CFD9BFB0F350CFA000000020CFD9C070F34D106000000030CFD9C090000000A0F350D080000000A000000040F350D060CFD9C090F34D108000000040C9A86FA000000070F8750FB0C9A87060000000700000005000000020F350D080C9A86FA0F878CFB000000020C9A8706000000070F878D070000000A000000030F8750FB0C9A87060F875107000000030C9A87080F8751090000000400000007000000070F878D070C9A87080000000A0F878D09028000F813D7ECF900000001022A458113E1C500000000000B4D43FA0000000A0000000A0000000A0000000500000004000000030000000200000004000000030F34D0FA0CFD9C070F34D106000000030000000A0F350D060000000700000003000000021386AD000CFD9BFB0F350CFA000000020CFD9C070F34D106000000030000000A0F350D060CFD9C090F34D108000000040C9A86FA000000070F8750FB0C9A8706000000070000000A000000020F350D080C9A86FA0F878CFB00000002000000070F8750FB0C9A87060F87510700000003000000070000000A0000000200000004000000030F34D0FA0CFD9C070000000A0000000A000000020000000000000001"
theorem small_7993247_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7993247_right_root small_7993247_right_fuel small_7993247_right_count small_7993247_right_encoded = true := by
  decide +kernel
theorem small_7993247_right_covered : CoveredBy scale carrier boxes small_7993247_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7993247_right_root small_7993247_right_fuel small_7993247_right_count small_7993247_right_encoded small_7993247_right_checked

theorem cover_7993247 : CoveredBy scale carrier boxes root_7993247 := by
  apply coveredBy_split_literal root_7993247 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2996.root small_7993247_right_root coord1 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2996.covered
  · exact small_7993247_right_covered
#print axioms cover_7993247

def root_7993242 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7993242_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7993242_right_fuel : Nat := 1
def small_7993242_right_count : Nat := 1
def small_7993242_right_encoded : String := "00000004"
theorem small_7993242_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7993242_right_root small_7993242_right_fuel small_7993242_right_count small_7993242_right_encoded = true := by
  decide +kernel
theorem small_7993242_right_covered : CoveredBy scale carrier boxes small_7993242_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7993242_right_root small_7993242_right_fuel small_7993242_right_count small_7993242_right_encoded small_7993242_right_checked

theorem cover_7993242 : CoveredBy scale carrier boxes root_7993242 := by
  apply coveredBy_split_literal root_7993242 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0551.root_7993247 small_7993242_right_root coord4 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0551.cover_7993247
  · exact small_7993242_right_covered
#print axioms cover_7993242

def root_7992864 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7992864_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7992864_left_fuel : Nat := 21
def small_7992864_left_count : Nat := 177
def small_7992864_left_encoded : String := "1207010800000004050000F8135D80F90000000104548A0113867100000000000CFD9BFB0F350CFA000000020CFD9C070F34D1060000000304548A091386710800000004000000051386AD080C9A86FA0F878CFB000000020000000800000005000000040F350D0604548A0913867108000000040C9A86FA0F878CFB00000002000000080F8750FB0C9A87060F87510700000003078000F8128A7CF900000001000000080000000500000005000000021386AD080C9A86FA0F878CFB000000020C9A8706000000070F878D0700000008000000030F8750FB0C9A87060F87510700000003078000F8128A7CF900000001022A45810000000800000007000000080F878D07078000F8128A7CF900000001022A45810000000813E20100067ECE8900000006000000060000000000000005000000030000000200000004000000030F34D0FA0CFD9C07000000080F350D060000000700000003000000021386AD000CFD9BFB0F350CFA000000020CFD9C070F34D10600000003000000060F350D0604548A0913867108000000040C9A86FA000000060F8750FB0C9A87060F87510700000003078000F8000000060000000600000006000000021386AD080C9A86FA0F878CFB00000002000000070F8750FB0C9A87060F87510700000003000000070F878D07078000F80000000600000006000000030000000200000004000000030F34D0FA0CFD9C070F34D10600000003000000060F350D0600000007000000030000000200000000135D44F904548A0113867100000000000CFD9BFB0F350CFA000000020CFD9C07000000080F350D060000000800000003000000081386AD000CFD9BFB0F350CFA000000020CFD9C070000000A0F350D0604548A0913867108000000040C9A86FA00000007000000051386AD080C9A86FA000000070F8750FB0C9A870600000007000000050000000200000004000000030000000A0000000000000001"
theorem small_7992864_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7992864_left_root small_7992864_left_fuel small_7992864_left_count small_7992864_left_encoded = true := by
  decide +kernel
theorem small_7992864_left_covered : CoveredBy scale carrier boxes small_7992864_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7992864_left_root small_7992864_left_fuel small_7992864_left_count small_7992864_left_encoded small_7992864_left_checked

theorem cover_7992864 : CoveredBy scale carrier boxes root_7992864 := by
  apply coveredBy_split_literal root_7992864 small_7992864_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0551.root_7993242 coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_7992864_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0551.cover_7993242
#print axioms cover_7992864

def root_7992859 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7992859_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7992859_right_fuel : Nat := 1
def small_7992859_right_count : Nat := 1
def small_7992859_right_encoded : String := "00000003"
theorem small_7992859_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7992859_right_root small_7992859_right_fuel small_7992859_right_count small_7992859_right_encoded = true := by
  decide +kernel
theorem small_7992859_right_covered : CoveredBy scale carrier boxes small_7992859_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7992859_right_root small_7992859_right_fuel small_7992859_right_count small_7992859_right_encoded small_7992859_right_checked

theorem cover_7992859 : CoveredBy scale carrier boxes root_7992859 := by
  apply coveredBy_split_literal root_7992859 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0551.root_7992864 small_7992859_right_root coord3 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0551.cover_7992864
  · exact small_7992859_right_covered
#print axioms cover_7992859

def root_7992691 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7992691_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7992691_left_fuel : Nat := 18
def small_7992691_left_count : Nat := 79
def small_7992691_left_encoded : String := "120701060000000308A913091207010800000004050000F8135D80F90000000104548A0113867100000000000CFD9BFB0000000600000008000000060000000512073D08050000F8135D80F90000000104548A0113867100000000000CFD9BFB0F350CFA0000000204548A0713867106000000030CFD9C090000000A0F350D080000000A000000041386AD060CFD9C090F34D108000000040C9A86FA0000000A000000050F350D080C9A86FA0F878CFB000000020000000A0F8750FB0C9A87080000000A0F878D090000000A000000040000000200000004000000030F34D0FA0000000A000000021386AD000CFD9BFB0F350CFA0000000204548A070000000A0000000A0000000A00000000135D44F904548A0113867100000000000CFD9BFB0F350CFA000000020000000A0000000A0000000A0000000100000004"
theorem small_7992691_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7992691_left_root small_7992691_left_fuel small_7992691_left_count small_7992691_left_encoded = true := by
  decide +kernel
theorem small_7992691_left_covered : CoveredBy scale carrier boxes small_7992691_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7992691_left_root small_7992691_left_fuel small_7992691_left_count small_7992691_left_encoded small_7992691_left_checked

theorem cover_7992691 : CoveredBy scale carrier boxes root_7992691 := by
  apply coveredBy_split_literal root_7992691 small_7992691_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0551.root_7992859 coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_7992691_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0551.cover_7992859
#print axioms cover_7992691

def root_7992685 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7992685_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7992685_left_fuel : Nat := 1
def small_7992685_left_count : Nat := 1
def small_7992685_left_encoded : String := "00000002"
theorem small_7992685_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7992685_left_root small_7992685_left_fuel small_7992685_left_count small_7992685_left_encoded = true := by
  decide +kernel
theorem small_7992685_left_covered : CoveredBy scale carrier boxes small_7992685_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7992685_left_root small_7992685_left_fuel small_7992685_left_count small_7992685_left_encoded small_7992685_left_checked

theorem cover_7992685 : CoveredBy scale carrier boxes root_7992685 := by
  apply coveredBy_split_literal root_7992685 small_7992685_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0551.root_7992691 coord2 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_7992685_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0551.cover_7992691
#print axioms cover_7992685

def root_7992684 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7992684_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7992684_right_fuel : Nat := 14
def small_7992684_right_count : Nat := 47
def small_7992684_right_encoded : String := "120700FA08A9130712070106000000030000000A12073D0608A913091207010800000004050000F8135D80F90000000104548A0100000008000000070000000812073D08050000F8135D80F90000000104548A011386710000000000045489FB1386ACFA000000020CFD9C070F34D106000000030000000A00000007000000071386AD00045489FB1386ACFA000000020CFD9C070000000A000000070000000700000000135D44F90000000A00000001000000040000000300000002"
theorem small_7992684_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7992684_right_root small_7992684_right_fuel small_7992684_right_count small_7992684_right_encoded = true := by
  decide +kernel
theorem small_7992684_right_covered : CoveredBy scale carrier boxes small_7992684_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7992684_right_root small_7992684_right_fuel small_7992684_right_count small_7992684_right_encoded small_7992684_right_checked

theorem cover_7992684 : CoveredBy scale carrier boxes root_7992684 := by
  apply coveredBy_split_literal root_7992684 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0551.root_7992685 small_7992684_right_root coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0551.cover_7992685
  · exact small_7992684_right_covered
#print axioms cover_7992684

def root_7992678 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7992678_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7992678_left_fuel : Nat := 1
def small_7992678_left_count : Nat := 1
def small_7992678_left_encoded : String := "00000000"
theorem small_7992678_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7992678_left_root small_7992678_left_fuel small_7992678_left_count small_7992678_left_encoded = true := by
  decide +kernel
theorem small_7992678_left_covered : CoveredBy scale carrier boxes small_7992678_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7992678_left_root small_7992678_left_fuel small_7992678_left_count small_7992678_left_encoded small_7992678_left_checked

theorem cover_7992678 : CoveredBy scale carrier boxes root_7992678 := by
  apply coveredBy_split_literal root_7992678 small_7992678_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0551.root_7992684 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_7992678_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0551.cover_7992684
#print axioms cover_7992678

def root_7992677 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7992677_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7992677_right_fuel : Nat := 24
def small_7992677_right_count : Nat := 209
def small_7992677_right_encoded : String := "12073D0008A912FB12073CFA0000000208A91307120701060000000308A913090000000A12073D08050000F8135D80F9000000010CFD9C010F34D100000000000000000A000000060000000A0000000412073D0608A913091207010800000004050000F8135D80F9000000010CFD9C010F34D100000000000CFD9BFB0F350CFA000000020CFD9C07000000060F350D0604548A09000000061386AD080C9A86FA000000060F8750FB000000060000000200000004000000030F34D0FA000000060000000200000006135D44F90CFD9C010F34D100000000000CFD9BFB0F350CFA000000020000000A0000000A0F350D000CFD9BFB000000060000000A000000000000000112073D08050000F8135D80F9000000010CFD9C010F34D100000000000CFD9BFB0F350CFA000000020CFD9C070F34D106000000030CFD9C090000000A0F350D080000000A000000040F350D060CFD9C090F34D108000000040C9A86FA0F878CFB000000020C9A8706000000070000000A0F8750FB0C9A87060F87510700000003000000070F878D070000000600000003000000020F350D080C9A86FA0F878CFB000000020C9A8706000000070000000A0F8750FB0C9A87060F875107000000030C9A87080F8751090000000400000007000000070F878D070000000A000000030000000200000004000000030F34D0FA0CFD9C070000000A0F350D060CFD9C090000000A0000000700000003000000020F350D000CFD9BFB0F350CFA000000020CFD9C070F34D106000000030000000A0F350D060CFD9C090F34D108000000040C9A8700000000060000000A0F350D080C9A87000000000A0000000A00000004000000030F34D0FA0000000A0000000200000000135D44F90CFD9C010F34D100000000000CFD9BFB0F350CFA000000020CFD9C070000000A0F350D060CFD9C090000000A0F350D080000000A00000004000000030000000A0F350D000000000A00000000000000010000000400000003120700FA08A913070000000A12073D0608A913091207010800000004050000F8135D80F9000000010CFD9C010F34D100000000000000000700000006135D44F90CFD9C0100000008000000060000000112073D08050000F80000000A0000000A00000004000000030000000200000000"
theorem small_7992677_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7992677_right_root small_7992677_right_fuel small_7992677_right_count small_7992677_right_encoded = true := by
  decide +kernel
theorem small_7992677_right_covered : CoveredBy scale carrier boxes small_7992677_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7992677_right_root small_7992677_right_fuel small_7992677_right_count small_7992677_right_encoded small_7992677_right_checked

theorem cover_7992677 : CoveredBy scale carrier boxes root_7992677 := by
  apply coveredBy_split_literal root_7992677 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0551.root_7992678 small_7992677_right_root coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0551.cover_7992678
  · exact small_7992677_right_covered
#print axioms cover_7992677

def root_7992672 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7992672_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7992672_right_fuel : Nat := 1
def small_7992672_right_count : Nat := 1
def small_7992672_right_encoded : String := "00000004"
theorem small_7992672_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7992672_right_root small_7992672_right_fuel small_7992672_right_count small_7992672_right_encoded = true := by
  decide +kernel
theorem small_7992672_right_covered : CoveredBy scale carrier boxes small_7992672_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7992672_right_root small_7992672_right_fuel small_7992672_right_count small_7992672_right_encoded small_7992672_right_checked

theorem cover_7992672 : CoveredBy scale carrier boxes root_7992672 := by
  apply coveredBy_split_literal root_7992672 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0551.root_7992677 small_7992672_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0551.cover_7992677
  · exact small_7992672_right_covered
#print axioms cover_7992672

def root_7991990 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7991990_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7991990_left_fuel : Nat := 28
def small_7991990_left_count : Nat := 321
def small_7991990_left_encoded : String := "1151E9090000000408A91301120701000000000008A912FB12073CFA0000000208A913071207010600000003050000F8135D80F90000000105000108135D45090000000404548A0113867100000000000000000A0000000A135D810904548A0113867100000000000CFD9BFB0F350CFA0000000204548A070000000A0000000A0000000A0000000A000000040000000A12073D06050000F8135D80F90000000105000108135D45090000000404548A0113867100000000000CFD9BFB0F350CFA000000020CFD9C07000000050F350D0600000005000000030F34D0FA00000005000000021386AD000CFD9BFB0F350CFA000000020CFD9C07000000050F350D0600000005000000030F34D0FA000000050000000200000000135D810904548A0113867100000000000CFD9BFB0F350CFA000000020CFD9C070F34D106000000030C9A86FA0F878CFB00000002078000F8000000050000000A0F8750FB078000F8128A7CF9000000010780010800000008128A7D09022A458113E1C500000000000AD3578710D101060000000300000009000000090000000A00000004128A40F90000000A00000001000000020F350D060C9A86FA000000050F8750FB0C9A8706000000050F878D07078000F800000005128A40F90780010800000005128A7D09022A4581000000090000000A00000004000000010000000300000002000000030F34D0FA0CFD9C070F34D10600000003000000090F350D060000000500000003000000021386AD000CFD9BFB0F350CFA000000020CFD9C070F34D106000000030000000A0F350D060C9A86FA0F878CFB000000020C9A8706000000050000000A0F8750FB0C9A8706000000050F878D07078000F8000000050000000A0000000300000002000000030F34D0FA0CFD9C070000000A0000000A000000020000000000000004135D44F905000108135D45090000000404548A0113867100000000000CFD9BFB0F350CFA000000020CFD9C070000000A00000009000000090000000A135D810904548A0113867100000000000CFD9BFB0F350CFA000000020CFD9C070F34D106000000030000000A0F350D060C9A86FA0F878CFB000000020C9A870600000007000000090F8750FB0C9A87060F87510700000003028000F813D7ECF9000000010780010800000005000000070000000A0F878D070000000A0000000300000002000000030F34D0FA0000000A000000021386AD000CFD9BFB0F350CFA000000020CFD9C070000000A0000000A0000000A00000000000000040000000100000003120700FA08A913070000000A12073D06050000F8135D80F900000001050001080000000A135D810904548A01000000090000000A000000040000000A000000030000000212073D0008A912FB12073CFA0000000208A9130712070106000000030000000A12073D06050000F8135D80F90000000105000108135D4509000000040CFD9C010F34D100000000000CFD9BFB0F350CFA000000020000000A0000000A0000000A135D81090CFD9C010F34D100000000000CFD9BFB0F350CFA000000020CFD9C070F34D106000000030000000A0F350D060C9A86FA0F878CFB000000020000000A0F8750FB0C9A8706000000050000000A00000002000000030000000A0F350D000CFD9BFB0F350CFA000000020000000A0000000A0000000000000004135D44F9050001080000000A135D81090CFD9C010F34D100000000000000000A0000000A000000040000000100000003120700FA0000000A0000000200000000"
theorem small_7991990_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7991990_left_root small_7991990_left_fuel small_7991990_left_count small_7991990_left_encoded = true := by
  decide +kernel
theorem small_7991990_left_covered : CoveredBy scale carrier boxes small_7991990_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7991990_left_root small_7991990_left_fuel small_7991990_left_count small_7991990_left_encoded small_7991990_left_checked

theorem cover_7991990 : CoveredBy scale carrier boxes root_7991990 := by
  apply coveredBy_split_literal root_7991990 small_7991990_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0551.root_7992672 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_7991990_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0551.cover_7992672
#print axioms cover_7991990

def root_7991985 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7991985_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7991985_right_fuel : Nat := 1
def small_7991985_right_count : Nat := 1
def small_7991985_right_encoded : String := "00000003"
theorem small_7991985_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7991985_right_root small_7991985_right_fuel small_7991985_right_count small_7991985_right_encoded = true := by
  decide +kernel
theorem small_7991985_right_covered : CoveredBy scale carrier boxes small_7991985_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7991985_right_root small_7991985_right_fuel small_7991985_right_count small_7991985_right_encoded small_7991985_right_checked

theorem cover_7991985 : CoveredBy scale carrier boxes root_7991985 := by
  apply coveredBy_split_literal root_7991985 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0551.root_7991990 small_7991985_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0551.cover_7991990
  · exact small_7991985_right_covered
#print axioms cover_7991985

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0551
