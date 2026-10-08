import TaoBundleAssembly0027
import TaoBundleChunkBatch0113
import TaoBundleChunkBatch0114
import TaoBundleChunkBatch0115
import TaoBundleChunkBatch0116
import TaoBundleChunkBatch0117
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0028
def root_1178627 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1178627_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1178627_left_fuel : Nat := 28
def small_1178627_left_count : Nat := 177
def small_1178627_left_encoded : String := "12073CF60000000008A912F912073D020000000500000001120701020000000108A91305120700FA000000050000000212073CFA00000002050000FC135D810705000108135D4509000000040CFD9BF7000000050F34D0F6045489F90000000513867102000000010CFD9C05000000050F350CFA000000020C9A86FA0F878D0500000005000000020F87510500000002078000FC128A7D0700000005000000030000000900000000135D81090CFD9BF70F350CF600000000045489F90000000513867102000000010CFD9C05000000050F350CFA000000020C9A86F6000000050F8750F700000005000000000F34D0F6045489F90000000513867102000000010CFD9C05000000050F350CFA000000020C9A86FA0F878D0500000005000000020F87510500000002078000FC128A7D070780010800000005128A7D09000000050000000400000003128A41070000000307800108128A41090000000400000009128A7D090AD357770000000510D100F6022A45790000000513E1C502000000010B4D43FA10804D0500000005000000021080110500000002000000070000000000000004000000000000000400000003135D45070000000305000108135D4509000000040CFD9BF7000000090F34D0F6045489F90000000513867102000000010CFD9C05000000050000000900000000135D81090CFD9BF70F350CF600000000045489F90000000913867102000000010CFD9C050F34D0FA00000005000000020F350CFA000000020C9A86F600000009000000090F34D0F6045489F91386AD020CFD9C0500000005000000090000000113867102000000010CFD9C050F34D0FA00000005000000020F350CFA000000020C9A86FA0F878D05028000FC13D7ED070780010800000009128A7D090AD357770000000510D100F60000000500000000000000040000000300000009000000020F87510500000002000000090000000000000004"
theorem small_1178627_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1178627_left_root small_1178627_left_fuel small_1178627_left_count small_1178627_left_encoded = true := by
  decide +kernel
theorem small_1178627_left_covered : CoveredBy scale carrier boxes small_1178627_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1178627_left_root small_1178627_left_fuel small_1178627_left_count small_1178627_left_encoded small_1178627_left_checked

theorem cover_1178627 : CoveredBy scale carrier boxes root_1178627 := by
  apply coveredBy_split_literal root_1178627 small_1178627_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0027.root_1179009 coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_1178627_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0027.cover_1179009
#print axioms cover_1178627

def root_1178621 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1178621_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1178621_left_fuel : Nat := 1
def small_1178621_left_count : Nat := 1
def small_1178621_left_encoded : String := "00000004"
theorem small_1178621_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1178621_left_root small_1178621_left_fuel small_1178621_left_count small_1178621_left_encoded = true := by
  decide +kernel
theorem small_1178621_left_covered : CoveredBy scale carrier boxes small_1178621_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1178621_left_root small_1178621_left_fuel small_1178621_left_count small_1178621_left_encoded small_1178621_left_checked

theorem cover_1178621 : CoveredBy scale carrier boxes root_1178621 := by
  apply coveredBy_split_literal root_1178621 small_1178621_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0028.root_1178627 coord4 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_1178621_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0028.cover_1178627
#print axioms cover_1178621

def root_1178620 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1178620 : CoveredBy scale carrier boxes root_1178620 := by
  apply coveredBy_split_literal root_1178620 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0028.root_1178621 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0457.root coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0028.cover_1178621
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0457.covered
#print axioms cover_1178620

def root_1178614 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1178614_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1178614_left_fuel : Nat := 1
def small_1178614_left_count : Nat := 1
def small_1178614_left_encoded : String := "00000003"
theorem small_1178614_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1178614_left_root small_1178614_left_fuel small_1178614_left_count small_1178614_left_encoded = true := by
  decide +kernel
theorem small_1178614_left_covered : CoveredBy scale carrier boxes small_1178614_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1178614_left_root small_1178614_left_fuel small_1178614_left_count small_1178614_left_encoded small_1178614_left_checked

theorem cover_1178614 : CoveredBy scale carrier boxes root_1178614 := by
  apply coveredBy_split_literal root_1178614 small_1178614_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0028.root_1178620 coord3 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_1178614_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0028.cover_1178620
#print axioms cover_1178614

def root_1175980 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1175980 : CoveredBy scale carrier boxes root_1175980 := by
  apply coveredBy_split_literal root_1175980 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0453.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0028.root_1178614 coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0453.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0028.cover_1178614
#print axioms cover_1175980

def root_1175975 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1175975_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1175975_right_fuel : Nat := 1
def small_1175975_right_count : Nat := 1
def small_1175975_right_encoded : String := "00000002"
theorem small_1175975_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1175975_right_root small_1175975_right_fuel small_1175975_right_count small_1175975_right_encoded = true := by
  decide +kernel
theorem small_1175975_right_covered : CoveredBy scale carrier boxes small_1175975_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1175975_right_root small_1175975_right_fuel small_1175975_right_count small_1175975_right_encoded small_1175975_right_checked

theorem cover_1175975 : CoveredBy scale carrier boxes root_1175975 := by
  apply coveredBy_split_literal root_1175975 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0028.root_1175980 small_1175975_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0028.cover_1175980
  · exact small_1175975_right_covered
#print axioms cover_1175975

def root_1187650 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1187650_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1187650_right_fuel : Nat := 16
def small_1187650_right_count : Nat := 109
def small_1187650_right_encoded : String := "1152250908A912F712073CF60000000008A912F912073D0208A913070000000512073CFC0000000308A913090000000512073D08050000FA00000005135D4505000000020CFD9BF7000000050F34D0F600000005000000000000000400000001120701020000000108A913070000000812073CFC0000000308A913090000000812073D08050000FA135D81050CFD9BF70F350CF600000000045489F9000000081386710200000001000000080F34D0F6000000080000000000000002135D4505000000020CFD9BF7000000080F34D0F6000000080000000000000004120700F608A912F912073D0208A913070000000512073CFC0000000308A913090000000512073D08050000FA135D8105045489F700000005138670F60CFD9BF9000000050F34D10200000001000000080000000000000002135D450500000002045489F700000008138670F600000008000000000000000400000001120701020000000108A913070000000812073CFC0000000308A913090000000812073D08050000FA135D8105045489F700000008138670F6000000080000000000000002135D45050000000200000008000000040000000000000004"
theorem small_1187650_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1187650_right_root small_1187650_right_fuel small_1187650_right_count small_1187650_right_encoded = true := by
  decide +kernel
theorem small_1187650_right_covered : CoveredBy scale carrier boxes small_1187650_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1187650_right_root small_1187650_right_fuel small_1187650_right_count small_1187650_right_encoded small_1187650_right_checked

theorem cover_1187650 : CoveredBy scale carrier boxes root_1187650 := by
  apply coveredBy_split_literal root_1187650 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0458.root small_1187650_right_root coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0458.covered
  · exact small_1187650_right_covered
#print axioms cover_1187650

def root_1187645 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1187645_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1187645_right_fuel : Nat := 1
def small_1187645_right_count : Nat := 1
def small_1187645_right_encoded : String := "00000003"
theorem small_1187645_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1187645_right_root small_1187645_right_fuel small_1187645_right_count small_1187645_right_encoded = true := by
  decide +kernel
theorem small_1187645_right_covered : CoveredBy scale carrier boxes small_1187645_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1187645_right_root small_1187645_right_fuel small_1187645_right_count small_1187645_right_encoded small_1187645_right_checked

theorem cover_1187645 : CoveredBy scale carrier boxes root_1187645 := by
  apply coveredBy_split_literal root_1187645 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0028.root_1187650 small_1187645_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0028.cover_1187650
  · exact small_1187645_right_covered
#print axioms cover_1187645

def root_1193746 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1193746_right_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(-6291456), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1193746_right_fuel : Nat := 23
def small_1193746_right_count : Nat := 205
def small_1193746_right_encoded : String := "128A41070000000307800108128A410900000004067ECE7712EA94F600000000022A45790000000913E1C5020000000108C000FA000000090000000712EA58F6022A457913E2010208C000FA0000000911FBE90500000002000000090000000113E1C5020000000108C000FA11FC2505064000FC12FFAD070640010812FF7109000000040569AC37000000071340D4F60115233900000009000000050000000012FFAD090569AC37000000071340D4F60115233913F89502096000FA0000000900000007000000010000000700000000000000040000000312FF7107000000030640010800000007000000070000000211FBE90500000002064000FC12FFAD07064001080000000700000007000000030000000700000000128A7D09067ECE7712EA94F600000000022A457913E2010208C000FA11FC2505064000FC12FFAD0708C001080000000911FC25090793F0B700000005128220F600000007000000000000000400000003000000090000000211FBE9050000000200000007000000010000000712EA58F6022A457913E2010208C000FA11FC2505064000FC12FFAD0708C0010811FBE909000000040569AC37000000091340D4F6033F67B90000000913BBF50200000001096000FA0000000611AA81050000000206E000FC12C8210708200108000000060000000600000003000000060000000011FC25090569AC370000000800000006000000040000000312FF71070000000308C001080000000911FC25090569AC370000000700000006000000040000000211FBE90500000002064000FC12FFAD0708C0010811FBE909000000040569AC37000000071340D4F6033F67B9000000080000000700000000000000080000000312FF71070000000308C0010800000007000000070000000113E1C5020000000108C000FA11FC2505064000FC12FFAD0708C0010811FBE909000000040569AC37000000071340D4F60115233913F89502096000FA000000060000000700000001000000070000000011FC25090569AC370000000700000006000000040000000312FF71070000000308C0010800000007000000070000000211FBE90500000002064000FC12FFAD070000000700000003000000070000000000000004"
theorem small_1193746_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1193746_right_root small_1193746_right_fuel small_1193746_right_count small_1193746_right_encoded = true := by
  decide +kernel
theorem small_1193746_right_covered : CoveredBy scale carrier boxes small_1193746_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1193746_right_root small_1193746_right_fuel small_1193746_right_count small_1193746_right_encoded small_1193746_right_checked

theorem cover_1193746 : CoveredBy scale carrier boxes root_1193746 := by
  apply coveredBy_split_literal root_1193746 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0460.root small_1193746_right_root coord3 false (-6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0460.covered
  · exact small_1193746_right_covered
#print axioms cover_1193746

def root_1193741 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1193741_right_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(15553280), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1193741_right_fuel : Nat := 1
def small_1193741_right_count : Nat := 1
def small_1193741_right_encoded : String := "00000002"
theorem small_1193741_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1193741_right_root small_1193741_right_fuel small_1193741_right_count small_1193741_right_encoded = true := by
  decide +kernel
theorem small_1193741_right_covered : CoveredBy scale carrier boxes small_1193741_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1193741_right_root small_1193741_right_fuel small_1193741_right_count small_1193741_right_encoded small_1193741_right_checked

theorem cover_1193741 : CoveredBy scale carrier boxes root_1193741 := by
  apply coveredBy_split_literal root_1193741 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0028.root_1193746 small_1193741_right_root coord2 true (15553280)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0028.cover_1193746
  · exact small_1193741_right_covered
#print axioms cover_1193741

def root_1193740 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1193740_right_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-6291456), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1193740_right_fuel : Nat := 19
def small_1193740_right_count : Nat := 163
def small_1193740_right_encoded : String := "128A410500000002078000FC128A7D0707800108128A410900000004067ECE7712EA94F600000000022A457913E20102064000FA12FFAD0508C000FC11FC2507064001080000000A0000000800000003000000090000000212FF71050000000208C000FC00000008000000070000000113E1C50200000001064000FA12FFAD0500000007000000020000000712EA58F6022A457913E20102064000FA12FFAD0508C000FC11FC2507064001080000000A000000080000000311FBE907000000030640010812FF7109000000040000000A12FFAD090569AC37000000071340D4F60000000800000000000000040000000212FF71050000000208C000FC000000080000000A0000000113E1C50200000001064000FA12FFAD0508C000FC11FC25070640010812FF7109000000040569AC37000000071340D4F60115233900000008000000050000000012FFAD0900000008000000040000000311FBE907000000030640010800000007000000070000000212FF71050000000208C000FC11FC2507064001080000000700000007000000030000000700000000128A7D09067ECE7712EA94F600000000022A4579000000080000000712EA58F6022A45790000000813E1C50200000001064000FA12FFAD0508C000FC0000000811FBE90700000003000000070000000200000008000000000000000400000003128A41070000000307800108128A410900000004067ECE770000000712EA58F6022A457913E20102064000FA0000000900000007000000010000000700000000128A7D09067ECE770000000712EA58F6022A457913E20102064000FA12FFAD05064000FC12FFAD0708C0010800000007000000070000000300000007000000020000000700000001000000070000000000000004"
theorem small_1193740_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1193740_right_root small_1193740_right_fuel small_1193740_right_count small_1193740_right_encoded = true := by
  decide +kernel
theorem small_1193740_right_covered : CoveredBy scale carrier boxes small_1193740_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1193740_right_root small_1193740_right_fuel small_1193740_right_count small_1193740_right_encoded small_1193740_right_checked

theorem cover_1193740 : CoveredBy scale carrier boxes root_1193740 := by
  apply coveredBy_split_literal root_1193740 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0028.root_1193741 small_1193740_right_root coord2 false (-6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0028.cover_1193741
  · exact small_1193740_right_covered
#print axioms cover_1193740

def root_1193734 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1193734_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1193734_left_fuel : Nat := 1
def small_1193734_left_count : Nat := 1
def small_1193734_left_encoded : String := "00000001"
theorem small_1193734_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1193734_left_root small_1193734_left_fuel small_1193734_left_count small_1193734_left_encoded = true := by
  decide +kernel
theorem small_1193734_left_covered : CoveredBy scale carrier boxes small_1193734_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1193734_left_root small_1193734_left_fuel small_1193734_left_count small_1193734_left_encoded small_1193734_left_checked

theorem cover_1193734 : CoveredBy scale carrier boxes root_1193734 := by
  apply coveredBy_split_literal root_1193734 small_1193734_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0028.root_1193740 coord1 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_1193734_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0028.cover_1193740
#print axioms cover_1193734

def root_1193510 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1193510_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1193510_left_fuel : Nat := 16
def small_1193510_left_count : Nat := 107
def small_1193510_left_encoded : String := "1386AD02078000FA128A7D05078000FC128A7D0707800108128A410900000004067ECE770000000512EA58F6067ECE790000000512EA59020000000108C000FA11FC2505000000050000000211FBE9050000000208C000FC11FC250700000005000000030000000900000000128A7D09067ECE770000000512EA58F6067ECE790000000512EA59020000000100000008000000000000000400000003128A4107000000030780010800000009128A7D09067ECE770000000912EA58F6067ECE790000000912EA59020000000108C000FA0000000911FBE9050000000200000009000000000000000400000002128A410500000002078000FC128A7D0707800108128A410900000004067ECE770000000912EA58F6067ECE790000000912EA5902000000010000000A00000000128A7D09067ECE7700000008000000080000000400000003128A4107000000030780010800000009128A7D09067ECE770000000912EA58F6067ECE790000000912EA590200000001064000FA12FFAD05064000FC00000008000000090000000212FF710500000002064000FC0000000800000007000000000000000400000001"
theorem small_1193510_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1193510_left_root small_1193510_left_fuel small_1193510_left_count small_1193510_left_encoded = true := by
  decide +kernel
theorem small_1193510_left_covered : CoveredBy scale carrier boxes small_1193510_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1193510_left_root small_1193510_left_fuel small_1193510_left_count small_1193510_left_encoded small_1193510_left_checked

theorem cover_1193510 : CoveredBy scale carrier boxes root_1193510 := by
  apply coveredBy_split_literal root_1193510 small_1193510_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0028.root_1193734 coord1 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact small_1193510_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0028.cover_1193734
#print axioms cover_1193510

def root_1193504 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1193504_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16379648)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1193504_left_fuel : Nat := 1
def small_1193504_left_count : Nat := 1
def small_1193504_left_encoded : String := "00000000"
theorem small_1193504_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1193504_left_root small_1193504_left_fuel small_1193504_left_count small_1193504_left_encoded = true := by
  decide +kernel
theorem small_1193504_left_covered : CoveredBy scale carrier boxes small_1193504_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1193504_left_root small_1193504_left_fuel small_1193504_left_count small_1193504_left_encoded small_1193504_left_checked

theorem cover_1193504 : CoveredBy scale carrier boxes root_1193504 := by
  apply coveredBy_split_literal root_1193504 small_1193504_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0028.root_1193510 coord0 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_1193504_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0028.cover_1193510
#print axioms cover_1193504

def root_1198320 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1198320_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-6291456), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1198320_right_fuel : Nat := 19
def small_1198320_right_count : Nat := 199
def small_1198320_right_encoded : String := "128A410500000002078000FC128A7D0707800108128A410900000004022A457713E200F600000000022A457913E20102064000FA12FFAD0508C000FC11FC2507064001080000000A000000080000000311FBE90700000003064001080000000A12FFAD09033F67B70000000813BBF4F60000000800000000000000040000000212FF7105000000020000000A0000000113E1C50200000001064000FA12FFAD0508C000FC11FC25070640010812FF710900000004033F67B713BC30F600000000011523390000000A000000050000000512FFAD09033F67B70000000800000005000000040000000311FBE90700000003000000050000000212FF7105000000020000000513E1C4F6022A457913E20102064000FA12FFAD0508C000FC0000000A11FBE9070000000300000005000000020000000A000000010000000500000000128A7D09022A457713E200F600000000022A45790000000813E1C50200000001064000FA12FFAD0508C000FC0000000811FBE9070000000308C0010811FBE9090000000400000005000000080000000212FF7105000000020000000813E1C4F6022A45790000000800000005000000000000000400000003128A41070000000307800108128A410900000004022A457713E200F600000000022A457913E20102064000FA12FFAD05064000FC12FFAD070640010812FF710900000004033F67B7000000090000000512FFAD09033F67B713BC30F600000000033F67B9000000090000000500000005000000040000000312FF710700000003064001080000000712FFAD0900000007000000040000000212FF710500000002064000FC12FFAD07064001080000000712FFAD0900000007000000040000000300000007000000010000000500000005128A7D09022A457713E200F600000000022A457913E20102064000FA12FFAD05064000FC12FFAD0708C0010811FBE90900000004033F67B70000000800000005000000080000000312FF71070000000308C001080000000711FC250900000007000000040000000212FF710500000002064000FC12FFAD0700000008000000030000000700000001000000050000000500000004"
theorem small_1198320_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1198320_right_root small_1198320_right_fuel small_1198320_right_count small_1198320_right_encoded = true := by
  decide +kernel
theorem small_1198320_right_covered : CoveredBy scale carrier boxes small_1198320_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1198320_right_root small_1198320_right_fuel small_1198320_right_count small_1198320_right_encoded small_1198320_right_checked

theorem cover_1198320 : CoveredBy scale carrier boxes root_1198320 := by
  apply coveredBy_split_literal root_1198320 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0461.root small_1198320_right_root coord2 false (-6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0461.covered
  · exact small_1198320_right_covered
#print axioms cover_1198320

def root_1198314 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1198314_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1198314_left_fuel : Nat := 1
def small_1198314_left_count : Nat := 1
def small_1198314_left_encoded : String := "00000001"
theorem small_1198314_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1198314_left_root small_1198314_left_fuel small_1198314_left_count small_1198314_left_encoded = true := by
  decide +kernel
theorem small_1198314_left_covered : CoveredBy scale carrier boxes small_1198314_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1198314_left_root small_1198314_left_fuel small_1198314_left_count small_1198314_left_encoded small_1198314_left_checked

theorem cover_1198314 : CoveredBy scale carrier boxes root_1198314 := by
  apply coveredBy_split_literal root_1198314 small_1198314_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0028.root_1198320 coord1 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_1198314_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0028.cover_1198320
#print axioms cover_1198314

def root_1197594 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1197594_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1197594_left_fuel : Nat := 21
def small_1197594_left_count : Nat := 347
def small_1197594_left_encoded : String := "1386AD02078000FA128A7D05078000FC128A7D0707800108128A410900000004022A457713E200F600000000067ECE7912EA950208C000FA000000050000000A0000000112EA59020000000108C000FA11FC250508C000FC11FC2507064001080000000A12FFAD0900000008000000040000000311FBE90700000003064001080000000912FFAD09033F67B70000000913BBF4F60569AC39000000060000000600000000000000040000000211FBE9050000000208C000FC0000000A11FBE90700000003064001080000000912FFAD09033F67B7000000080000000A0000000413E1C4F6067ECE790000000A12EA59020000000108C000FA11FC250508C000FC11FC25070640010800000007000000060000000311FBE907000000030640010812FF7109000000040000000A000000060000000211FBE905000000020000000A00000000128A7D09022A457713E200F600000000067ECE790000000812EA59020000000108C000FA11FC250508C000FC0000000811FBE9070000000300000008000000020000000813E1C4F6067ECE790000000812EA59020000000108C000FA11FC2505000000060000000211FBE9050000000200000008000000000000000400000003128A41070000000307800108128A410900000004022A45770000000913E1C4F6067ECE790000000912EA59020000000108C000FA11FC2505064000FC12FFAD070640010812FF710900000004000000090000000600000003000000090000000211FBE90500000002064000FC12FFAD07064001080000000A12FFAD0901152337000000090000000600000004000000030000000900000000128A7D09022A457713E200F600000000067ECE7912EA9502000000090000000112EA59020000000108C000FA11FC2505064000FC12FFAD0708C0010811FBE90900000004033F67B70000000900000006000000060000000312FF71070000000308C0010800000009000000060000000211FBE90500000002064000FC12FFAD0708C0010811FBE90900000004033F67B70000000813BBF4F60000000800000000000000080000000312FF71070000000308C001080000000911FC2509033F67B700000008000000060000000413E1C4F6067ECE7912EA950208C000FA0000000611FBE90500000002064000FC12FFAD070000000600000003000000060000000112EA59020000000108C000FA0000000611FBE90500000002064000FC12FFAD0708C0010800000006000000060000000300000006000000000000000400000002128A410500000002078000FC128A7D0707800108128A410900000004022A45770000000A0000000A128A7D09022A457700000008000000080000000400000003128A41070000000307800108128A410900000004022A457713E200F600000000067ECE790000000912EA590200000001064000FA000000090000000A13E1C4F6067ECE790000000912EA590200000001064000FA12FFAD050000000A000000020000000A00000000128A7D09022A457713E200F600000000067ECE7912EA9502064000FA00000009000000080000000112EA590200000001064000FA12FFAD05064000FC0000000812FF71070000000308C0010800000009000000080000000212FF710500000002064000FC0000000812FF71070000000308C00108000000070000000813E1C4F6067ECE7912EA9502064000FA12FFAD05064000FC000000080000000900000002000000080000000112EA590200000001064000FA12FFAD05064000FC12FFAD07000000080000000312FF71070000000308C0010811FBE9090000000401152337000000090000000511FC250900000006000000040000000212FF710500000002064000FC0000000812FF71070000000308C001080000000A00000005000000000000000400000001"
theorem small_1197594_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1197594_left_root small_1197594_left_fuel small_1197594_left_count small_1197594_left_encoded = true := by
  decide +kernel
theorem small_1197594_left_covered : CoveredBy scale carrier boxes small_1197594_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1197594_left_root small_1197594_left_fuel small_1197594_left_count small_1197594_left_encoded small_1197594_left_checked

theorem cover_1197594 : CoveredBy scale carrier boxes root_1197594 := by
  apply coveredBy_split_literal root_1197594 small_1197594_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0028.root_1198314 coord1 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact small_1197594_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0028.cover_1198314
#print axioms cover_1197594

def root_1197589 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1197589_right_root : ZRayBox := fun j => (#[⟨⟨(-16378880), (-15122432)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1197589_right_fuel : Nat := 1
def small_1197589_right_count : Nat := 1
def small_1197589_right_encoded : String := "00000000"
theorem small_1197589_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1197589_right_root small_1197589_right_fuel small_1197589_right_count small_1197589_right_encoded = true := by
  decide +kernel
theorem small_1197589_right_covered : CoveredBy scale carrier boxes small_1197589_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1197589_right_root small_1197589_right_fuel small_1197589_right_count small_1197589_right_encoded small_1197589_right_checked

theorem cover_1197589 : CoveredBy scale carrier boxes root_1197589 := by
  apply coveredBy_split_literal root_1197589 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0028.root_1197594 small_1197589_right_root coord0 false (-16378880)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0028.cover_1197594
  · exact small_1197589_right_covered
#print axioms cover_1197589

def root_1193503 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1193503 : CoveredBy scale carrier boxes root_1193503 := by
  apply coveredBy_split_literal root_1193503 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0028.root_1193504 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0028.root_1197589 coord0 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0028.cover_1193504
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0028.cover_1197589
#print axioms cover_1193503

def root_1193498 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1193498_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(16244736), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1193498_right_fuel : Nat := 1
def small_1193498_right_count : Nat := 1
def small_1193498_right_encoded : String := "00000004"
theorem small_1193498_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1193498_right_root small_1193498_right_fuel small_1193498_right_count small_1193498_right_encoded = true := by
  decide +kernel
theorem small_1193498_right_covered : CoveredBy scale carrier boxes small_1193498_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1193498_right_root small_1193498_right_fuel small_1193498_right_count small_1193498_right_encoded small_1193498_right_checked

theorem cover_1193498 : CoveredBy scale carrier boxes root_1193498 := by
  apply coveredBy_split_literal root_1193498 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0028.root_1193503 small_1193498_right_root coord4 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0028.cover_1193503
  · exact small_1193498_right_covered
#print axioms cover_1193498

def root_1191808 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1191808 : CoveredBy scale carrier boxes root_1191808 := by
  apply coveredBy_split_literal root_1191808 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0459.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0028.root_1193498 coord4 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0459.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0028.cover_1193498
#print axioms cover_1191808

def root_1191803 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1191803_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1191803_right_fuel : Nat := 1
def small_1191803_right_count : Nat := 1
def small_1191803_right_encoded : String := "00000003"
theorem small_1191803_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1191803_right_root small_1191803_right_fuel small_1191803_right_count small_1191803_right_encoded = true := by
  decide +kernel
theorem small_1191803_right_covered : CoveredBy scale carrier boxes small_1191803_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1191803_right_root small_1191803_right_fuel small_1191803_right_count small_1191803_right_encoded small_1191803_right_checked

theorem cover_1191803 : CoveredBy scale carrier boxes root_1191803 := by
  apply coveredBy_split_literal root_1191803 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0028.root_1191808 small_1191803_right_root coord3 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0028.cover_1191808
  · exact small_1191803_right_covered
#print axioms cover_1191803

def root_1191802 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1191802_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1191802_right_fuel : Nat := 24
def small_1191802_right_count : Nat := 219
def small_1191802_right_encoded : String := "135D45070000000305000108135D450900000004045489F700000009138670F6045489F9000000091386710200000001078000FA128A7D05028000FC13D7ED07028001080000000813D7ED09022A4577000000090000000500000004000000030000000800000002128A4105000000020000000500000000135D8109045489F71386ACF600000000045489F9000000091386710200000001078000FA128A7D05028000FC13D7ED0707800108128A410900000004067ECE770000000712EA58F60000000900000000128A7D09067ECE770000000712EA58F6022A457913E2010208C000FA000000090000000700000001000000070000000000000004000000030000000900000002128A41050000000200000007138670F6045489F91386AD02078000FA128A7D05028000FC13D7ED0707800108128A41090000000400000009128A7D09022A45770000000913E1C4F6067ECE790000000912EA59020000000108C000FA0000000611FBE9050000000203C000FC00000006000000060000000000000004000000030000000900000002128A410500000002028000FC13D7ED0707800108128A41090000000400000009128A7D09022A45770000000913E1C4F6067ECE790000000912EA590200000001064000FA12FFAD0503C000FC13A54D0708C0010811FBE909000000040000000511FC2509000000060000000400000003000000090000000212FF7105000000020000000500000000000000040000000300000009000000011386710200000001078000FA128A7D05028000FC13D7ED0707800108128A410900000004022A457713E200F600000000022A4579000000090000000500000005128A7D09022A457713E200F600000000022A457913E2010208C000FA11FC250503C000FC13A54D0708C00108000000060000000600000003000000090000000211FBE9050000000203C000FC13A54D0708C001080000000711FC250900000007000000040000000300000007000000010000000500000005000000040000000313D7B1070000000307800108128A410900000004022A45770000000700000005128A7D09022A457700000007000000050000000400000002128A410500000002028000FC13D7ED0707800108128A41090000000400000005128A7D09022A45770000000700000005000000040000000313D7B10700000003000000050000000000000004"
theorem small_1191802_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1191802_right_root small_1191802_right_fuel small_1191802_right_count small_1191802_right_encoded = true := by
  decide +kernel
theorem small_1191802_right_covered : CoveredBy scale carrier boxes small_1191802_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1191802_right_root small_1191802_right_fuel small_1191802_right_count small_1191802_right_encoded small_1191802_right_checked

theorem cover_1191802 : CoveredBy scale carrier boxes root_1191802 := by
  apply coveredBy_split_literal root_1191802 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0028.root_1191803 small_1191802_right_root coord3 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0028.cover_1191803
  · exact small_1191802_right_covered
#print axioms cover_1191802

def root_1191797 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1191797_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1191797_right_fuel : Nat := 1
def small_1191797_right_count : Nat := 1
def small_1191797_right_encoded : String := "00000002"
theorem small_1191797_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1191797_right_root small_1191797_right_fuel small_1191797_right_count small_1191797_right_encoded = true := by
  decide +kernel
theorem small_1191797_right_covered : CoveredBy scale carrier boxes small_1191797_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1191797_right_root small_1191797_right_fuel small_1191797_right_count small_1191797_right_encoded small_1191797_right_checked

theorem cover_1191797 : CoveredBy scale carrier boxes root_1191797 := by
  apply coveredBy_split_literal root_1191797 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0028.root_1191802 small_1191797_right_root coord2 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0028.cover_1191802
  · exact small_1191797_right_covered
#print axioms cover_1191797

def root_1191796 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1191796_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1191796_right_fuel : Nat := 20
def small_1191796_right_count : Nat := 273
def small_1191796_right_encoded : String := "135D450500000002050000FC135D810705000108135D450900000004045489F71386ACF600000000045489F90000000A1386710200000001028000FA13D7ED05078000FC128A7D07028001080000000613D7ED09067ECE77000000060000000A0000000400000003128A410700000003000000070000000213D7B1050000000200000007138670F6045489F90000000A1386710200000001028000FA13D7ED05078000FC128A7D070000000A00000003128A41070000000300000005000000020000000A00000000135D8109045489F71386ACF600000000045489F91386AD02028000FA13D7ED05078000FC128A7D07078001080000000A0000000800000003128A41070000000307800108128A41090000000400000009128A7D09067ECE770000000712EA58F6067ECE79000000080000000700000000000000040000000213D7B10500000002078000FC0000000A128A410700000003078001080000000700000007000000011386710200000001028000FA13D7ED05078000FC128A7D0707800108128A410900000004067ECE770000000712EA58F6022A45790000000A0000000700000000128A7D09067ECE770000000712EA58F600000008000000000000000400000003128A410700000003000000070000000213D7B10500000002078000FC128A7D070780010800000007000000070000000300000007138670F6045489F91386AD02028000FA13D7ED05078000FC128A7D07078001080000000A0000000800000003128A410700000003078001080000000A128A7D09022A457713E200F600000000067ECE790000000812EA5902000000010000000813E1C4F6067ECE790000000812EA5902000000010000000800000000000000040000000213D7B105000000020000000A000000011386710200000001028000FA13D7ED05078000FC128A7D0707800108128A410900000004022A457713E200F600000000022A45790000000A0000000500000005128A7D09022A457700000008000000050000000400000003128A41070000000307800108128A41090000000400000005128A7D09022A45770000000700000005000000040000000213D7B10500000002078000FC128A7D07078001080000000A128A7D09000000080000000400000003128A41070000000300000005000000000000000400000003135D45070000000305000108135D450900000004045489F700000007138670F6045489F9000000090000000500000000135D8109045489F71386ACF600000000045489F91386AD02028000FA00000009000000070000000100000007138670F6045489F91386AD02028000FA13D7ED05028000FC13D7ED0707800108128A41090000000400000009128A7D09022A45770000000713E1C4F6067ECE790000000A00000005000000000000000400000003000000090000000213D7B10500000002028000FC13D7ED07078001080000000700000007000000030000000700000001000000050000000000000004"
theorem small_1191796_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1191796_right_root small_1191796_right_fuel small_1191796_right_count small_1191796_right_encoded = true := by
  decide +kernel
theorem small_1191796_right_covered : CoveredBy scale carrier boxes small_1191796_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1191796_right_root small_1191796_right_fuel small_1191796_right_count small_1191796_right_encoded small_1191796_right_checked

theorem cover_1191796 : CoveredBy scale carrier boxes root_1191796 := by
  apply coveredBy_split_literal root_1191796 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0028.root_1191797 small_1191796_right_root coord2 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0028.cover_1191797
  · exact small_1191796_right_covered
#print axioms cover_1191796

def root_1191790 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1191790_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1191790_left_fuel : Nat := 1
def small_1191790_left_count : Nat := 1
def small_1191790_left_encoded : String := "00000001"
theorem small_1191790_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1191790_left_root small_1191790_left_fuel small_1191790_left_count small_1191790_left_encoded = true := by
  decide +kernel
theorem small_1191790_left_covered : CoveredBy scale carrier boxes small_1191790_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1191790_left_root small_1191790_left_fuel small_1191790_left_count small_1191790_left_encoded small_1191790_left_checked

theorem cover_1191790 : CoveredBy scale carrier boxes root_1191790 := by
  apply coveredBy_split_literal root_1191790 small_1191790_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0028.root_1191796 coord1 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_1191790_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0028.cover_1191796
#print axioms cover_1191790

def root_1191624 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1191624_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1191624_left_fuel : Nat := 18
def small_1191624_left_count : Nat := 77
def small_1191624_left_encoded : String := "12073D02050000FA135D8105050000FC135D810705000108135D45090000000400000009135D8109045489F71386ACF6000000000CFD9BF9000000050F34D10200000001078000FA00000005128A41050000000200000009138670F60CFD9BF9000000050F34D10200000001078000FA128A7D05078000FC128A7D0707800108128A41090000000400000009128A7D090000000500000004000000030000000900000002128A410500000002078000FC0000000A000000090000000000000004000000030000000900000002135D450500000002050000FC135D8107050001080000000A135D8109045489F71386ACF6000000000CFD9BF9000000050F34D102000000010000000A138670F60CFD9BF90000000A0F34D102000000010000000A0000000000000004000000030000000900000001"
theorem small_1191624_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1191624_left_root small_1191624_left_fuel small_1191624_left_count small_1191624_left_encoded = true := by
  decide +kernel
theorem small_1191624_left_covered : CoveredBy scale carrier boxes small_1191624_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1191624_left_root small_1191624_left_fuel small_1191624_left_count small_1191624_left_encoded small_1191624_left_checked

theorem cover_1191624 : CoveredBy scale carrier boxes root_1191624 := by
  apply coveredBy_split_literal root_1191624 small_1191624_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0028.root_1191790 coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_1191624_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0028.cover_1191790
#print axioms cover_1191624

def root_1191619 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1191619_right_root : ZRayBox := fun j => (#[⟨⟨(-15122432), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1191619_right_fuel : Nat := 1
def small_1191619_right_count : Nat := 1
def small_1191619_right_encoded : String := "00000000"
theorem small_1191619_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1191619_right_root small_1191619_right_fuel small_1191619_right_count small_1191619_right_encoded = true := by
  decide +kernel
theorem small_1191619_right_covered : CoveredBy scale carrier boxes small_1191619_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1191619_right_root small_1191619_right_fuel small_1191619_right_count small_1191619_right_encoded small_1191619_right_checked

theorem cover_1191619 : CoveredBy scale carrier boxes root_1191619 := by
  apply coveredBy_split_literal root_1191619 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0028.root_1191624 small_1191619_right_root coord0 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0028.cover_1191624
  · exact small_1191619_right_covered
#print axioms cover_1191619

def root_1190857 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1190857_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1190857_left_fuel : Nat := 28
def small_1190857_left_count : Nat := 357
def small_1190857_left_encoded : String := "12073CF60000000008A912F912073D02050000FA135D8105050000FC135D81070500010800000005135D81090CFD9BF7000000050F34D0F6000000050000000000000004000000030000000900000002135D450500000002050000FC135D81070500010800000009135D81090CFD9BF7000000090F34D0F60000000900000000000000040000000300000009000000011207010200000001050000FA135D8105050000FC135D810705000108135D4509000000040CFD9BF70F350CF600000000045489F90000000513867102000000010C9A86F600000009000000090F34D0F6045489F9000000091386710200000001078000FA128A7D05078000FC128A7D07028001080000000913D7ED090AD357770000000510D100F6000000090000000000000004000000030000000900000002128A410500000002078000FC128A7D07028001080000000613D7ED090AD357770000000610D100F6000000070000000000000004000000030000000700000000135D81090CFD9BF70F350CF600000000045489F91386AD020C9A86F6000000050F8750F700000005000000000000000113867102000000010C9A86F60F878CF700000000078000FA128A7D05078000FC128A7D0700000005000000030000000900000002128A410500000002000000070F8750F7078000FA128A7D05078000FC00000005000000070000000200000007000000000F34D0F6045489F91386AD02078000FA128A7D05078000FC000000050000000900000002128A410500000002078000FC128A7D070780010800000005128A7D0900000005000000040000000300000009000000011386710200000001078000FA128A7D05078000FC128A7D0707800108128A4109000000040AD357770000000510D100F6022A45790000000513E1C5020000000108C000FA11FC250508C000FC11FC25070000000500000003000000070000000211FBE905000000020000000700000000128A7D090AD357770000000510D100F6022A45790000000513E1C5020000000108C000FA11FC250508C000FC00000005000000070000000200000007000000000000000400000003128A41070000000307800108128A4109000000040AD357770000000710D100F60000000700000000128A7D090AD357770000000710D100F600000007000000000000000400000002128A410500000002078000FC128A7D0707800108128A4109000000040AD357770000000710D100F60000000700000000128A7D090AD357770000000710D100F600000007000000000000000400000003128A41070000000300000007000000000000000400000003135D45070000000305000108135D45090000000400000009135D81090CFD9BF70F350CF600000000045489F900000009000000070F34D0F6045489F9000000091386710200000001078000FA128A7D05000000070000000200000007000000000000000400000002135D450500000002050000FC135D810705000108135D4509000000040CFD9BF70F350CF600000000045489F900000009000000060F34D0F6045489F9000000090000000700000000135D81090CFD9BF70F350CF600000000045489F91386AD020C9A86F60F878CF700000000028000FA00000009000000070F8750F7000000070000000000000001000000070F34D0F6045489F91386AD02028000FA13D7ED05078000FC128A7D0707800108128A41090000000400000009128A7D09000000080000000400000003000000090000000213D7B10500000002078000FC128A7D070000000A0000000300000007000000011386710200000001028000FA13D7ED05078000FC128A7D070000000700000003000000070000000200000007000000000000000400000003135D45070000000305000108135D4509000000040CFD9BF7000000070F34D0F60000000700000000135D81090CFD9BF7000000070F34D0F6000000070000000000000004"
theorem small_1190857_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1190857_left_root small_1190857_left_fuel small_1190857_left_count small_1190857_left_encoded = true := by
  decide +kernel
theorem small_1190857_left_covered : CoveredBy scale carrier boxes small_1190857_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1190857_left_root small_1190857_left_fuel small_1190857_left_count small_1190857_left_encoded small_1190857_left_checked

theorem cover_1190857 : CoveredBy scale carrier boxes root_1190857 := by
  apply coveredBy_split_literal root_1190857 small_1190857_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0028.root_1191619 coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_1190857_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0028.cover_1191619
#print axioms cover_1190857

def root_1190851 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1190851_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1190851_left_fuel : Nat := 1
def small_1190851_left_count : Nat := 1
def small_1190851_left_encoded : String := "00000004"
theorem small_1190851_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1190851_left_root small_1190851_left_fuel small_1190851_left_count small_1190851_left_encoded = true := by
  decide +kernel
theorem small_1190851_left_covered : CoveredBy scale carrier boxes small_1190851_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1190851_left_root small_1190851_left_fuel small_1190851_left_count small_1190851_left_encoded small_1190851_left_checked

theorem cover_1190851 : CoveredBy scale carrier boxes root_1190851 := by
  apply coveredBy_split_literal root_1190851 small_1190851_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0028.root_1190857 coord4 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_1190851_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0028.cover_1190857
#print axioms cover_1190851

def root_1190850 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1190850 : CoveredBy scale carrier boxes root_1190850 := by
  apply coveredBy_split_literal root_1190850 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0028.root_1190851 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0462.root coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0028.cover_1190851
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0462.covered
#print axioms cover_1190850

def root_1190844 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1190844_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1190844_left_fuel : Nat := 1
def small_1190844_left_count : Nat := 1
def small_1190844_left_encoded : String := "00000003"
theorem small_1190844_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1190844_left_root small_1190844_left_fuel small_1190844_left_count small_1190844_left_encoded = true := by
  decide +kernel
theorem small_1190844_left_covered : CoveredBy scale carrier boxes small_1190844_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1190844_left_root small_1190844_left_fuel small_1190844_left_count small_1190844_left_encoded small_1190844_left_checked

theorem cover_1190844 : CoveredBy scale carrier boxes root_1190844 := by
  apply coveredBy_split_literal root_1190844 small_1190844_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0028.root_1190850 coord3 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_1190844_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0028.cover_1190850
#print axioms cover_1190844

def root_1187644 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1187644 : CoveredBy scale carrier boxes root_1187644 := by
  apply coveredBy_split_literal root_1187644 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0028.root_1187645 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0028.root_1190844 coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0028.cover_1187645
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0028.cover_1190844
#print axioms cover_1187644

def root_1187638 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1187638_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1187638_left_fuel : Nat := 1
def small_1187638_left_count : Nat := 1
def small_1187638_left_encoded : String := "00000002"
theorem small_1187638_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1187638_left_root small_1187638_left_fuel small_1187638_left_count small_1187638_left_encoded = true := by
  decide +kernel
theorem small_1187638_left_covered : CoveredBy scale carrier boxes small_1187638_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1187638_left_root small_1187638_left_fuel small_1187638_left_count small_1187638_left_encoded small_1187638_left_checked

theorem cover_1187638 : CoveredBy scale carrier boxes root_1187638 := by
  apply coveredBy_split_literal root_1187638 small_1187638_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0028.root_1187644 coord2 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_1187638_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0028.cover_1187644
#print axioms cover_1187638

def root_1175974 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1175974 : CoveredBy scale carrier boxes root_1175974 := by
  apply coveredBy_split_literal root_1175974 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0028.root_1175975 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0028.root_1187638 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0028.cover_1175975
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0028.cover_1187638
#print axioms cover_1175974

def root_1175968 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1175968_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1175968_left_fuel : Nat := 1
def small_1175968_left_count : Nat := 1
def small_1175968_left_encoded : String := "00000001"
theorem small_1175968_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1175968_left_root small_1175968_left_fuel small_1175968_left_count small_1175968_left_encoded = true := by
  decide +kernel
theorem small_1175968_left_covered : CoveredBy scale carrier boxes small_1175968_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1175968_left_root small_1175968_left_fuel small_1175968_left_count small_1175968_left_encoded small_1175968_left_checked

theorem cover_1175968 : CoveredBy scale carrier boxes root_1175968 := by
  apply coveredBy_split_literal root_1175968 small_1175968_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0028.root_1175974 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_1175968_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0028.cover_1175974
#print axioms cover_1175968

def root_1175722 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1175722_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1175722_left_fuel : Nat := 17
def small_1175722_left_count : Nat := 117
def small_1175722_left_encoded : String := "1151E8F90A0000FA115225050A0000FC115225070A0001081151E9090000000408A912F712073CF60000000000000005120700F608A91305120700FA08A913070000000512073CFC00000003000000050000000212073CFA0000000208A913070000000512073CFC0000000305000102135D44F905000108000000090000000500000001000000050000000000000005000000031151E907000000030A0001081151E9090000000408A912F700000005120700F608A91305000000050000000900000000115225090000000500000004000000021151E905000000020A0000FC115225070A0001081151E9090000000408A912F700000005120700F608A913070000000512073CFC000000030000000500000000115225090000000500000004000000031151E907000000030A0001081151E90900000004000000091152250908A912F712073CF60000000008A913090000000512073D080500010200000005135D80F900000001050000FA00000005135D450500000002050000FC000000050000000900000004120700F608A913090000000512073D080500010200000005135D80F900000001050000FA00000005135D450500000002050000FC000000050000000900000004000000000000000400000001"
theorem small_1175722_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1175722_left_root small_1175722_left_fuel small_1175722_left_count small_1175722_left_encoded = true := by
  decide +kernel
theorem small_1175722_left_covered : CoveredBy scale carrier boxes small_1175722_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1175722_left_root small_1175722_left_fuel small_1175722_left_count small_1175722_left_encoded small_1175722_left_checked

theorem cover_1175722 : CoveredBy scale carrier boxes root_1175722 := by
  apply coveredBy_split_literal root_1175722 small_1175722_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0028.root_1175968 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_1175722_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0028.cover_1175968
#print axioms cover_1175722

def root_1175716 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1175716_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1175716_left_fuel : Nat := 1
def small_1175716_left_count : Nat := 1
def small_1175716_left_encoded : String := "00000000"
theorem small_1175716_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1175716_left_root small_1175716_left_fuel small_1175716_left_count small_1175716_left_encoded = true := by
  decide +kernel
theorem small_1175716_left_covered : CoveredBy scale carrier boxes small_1175716_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1175716_left_root small_1175716_left_fuel small_1175716_left_count small_1175716_left_encoded small_1175716_left_checked

theorem cover_1175716 : CoveredBy scale carrier boxes root_1175716 := by
  apply coveredBy_split_literal root_1175716 small_1175716_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0028.root_1175722 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_1175716_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0028.cover_1175722
#print axioms cover_1175716

def root_1207002 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1207002_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1207002_left_fuel : Nat := 33
def small_1207002_left_count : Nat := 353
def small_1207002_left_encoded : String := "115225070A0001081151E9090000000408A912F912073D0208A913070000000512073CFC00000003050000F600000005135D44F7000000050000000000000001120701020000000108A91307120700FC000000050000000312073CFC00000003050000F6135D80F700000000050000FA135D81050500010800000005135D8109045489F90000000513867102000000010CFD9C07000000050F350CFC000000030C9A86FC000000050F87510700000003078000F600000005128A40F700000005000000000000000400000002135D4505000000020500010800000006135D8109045489F91386AD020CFD9C070000000500000006000000010000000600000004135D44F7050000FA135D81050500010800000005135D8109045489F90000000513867102000000010CFD9C0700000005000000060000000400000002135D4505000000020500010800000006135D8109045489F91386AD020CFD9C070000000500000006000000010000000600000004000000001152250908A912F912073D0208A91307120700FC000000050000000312073CFC0000000308A9130912070108000000040000000812073D08050000F6135D80F700000000050000FA00000005135D4505000000020CFD9BF9000000050F34D1020000000100000008135D44F7050000FA00000005135D4505000000020CFD9BF90F350D0200000005000000010F34D102000000010CFD9C070F34D0FC00000005000000030F350CFC000000030CFD9C090F34D10800000004000000080F350D080C9A86FC000000050F875107000000030C9A8708000000050F878D09000000080000000400000004000000000000000400000001120701020000000108A91307120700FC000000080000000312073CFC0000000308A9130912070108000000040000000812073D08050000F6135D80F700000000050000FA135D8105045489F91386AD020CFD9C07000000050F350CFC000000030CFD9C09000000050F350D0800000005000000040000000113867102000000010CFD9C07000000080F350CFC000000030CFD9C09000000080F350D080C9A86FC000000080F875107000000030C9A87080F87510900000004078000F600000005128A40F70000000500000000000000080000000400000002135D450500000002045489F900000008138671020000000100000008135D44F7050000FA135D8105045489F91386AD020CFD9C070F34D0FC00000005000000030F350CFC000000030CFD9C090F34D10800000004000000080F350D080C9A86FC000000050F875107000000030C9A8708000000050F878D090000000500000004000000040000000113867102000000010CFD9C070F34D0FC00000005000000030F350CFC000000030CFD9C090F34D10800000004000000080F350D080C9A86FC0F878D070C9A87080000000500000008000000030F875107000000030C9A87080F87510900000004028000F613D7ECF700000000078000FA000000050000000613D7B0F7078000FA0000000500000006000000000F878D09028000F60000000813D7B0F7078000FA128A7D05022A45790000000513E1C502000000010B4D43FC0000000510801107000000030DE7CA08000000050000000800000002128A410500000002022A45790000000813E1C502000000010000000800000000000000040000000400000002135D450500000002045489F91386AD020CFD9C070F34D0FC00000008000000030F350CFC000000030CFD9C090F34D10800000004000000080F350D080C9A86FC000000080F875107000000030C9A87080000000A00000008000000040000000113867102000000010CFD9C070F34D0FC00000008000000030F350CFC000000030CFD9C090F34D10800000004000000080F350D080C9A86FC000000060F87510700000003000000060000000400000000000000040000000400000003"
theorem small_1207002_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1207002_left_root small_1207002_left_fuel small_1207002_left_count small_1207002_left_encoded = true := by
  decide +kernel
theorem small_1207002_left_covered : CoveredBy scale carrier boxes small_1207002_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1207002_left_root small_1207002_left_fuel small_1207002_left_count small_1207002_left_encoded small_1207002_left_checked

theorem cover_1207002 : CoveredBy scale carrier boxes root_1207002 := by
  apply coveredBy_split_literal root_1207002 small_1207002_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0464.root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact small_1207002_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0464.covered
#print axioms cover_1207002

def root_1206996 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1206996_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1206996_left_fuel : Nat := 1
def small_1206996_left_count : Nat := 1
def small_1206996_left_encoded : String := "00000002"
theorem small_1206996_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1206996_left_root small_1206996_left_fuel small_1206996_left_count small_1206996_left_encoded = true := by
  decide +kernel
theorem small_1206996_left_covered : CoveredBy scale carrier boxes small_1206996_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1206996_left_root small_1206996_left_fuel small_1206996_left_count small_1206996_left_encoded small_1206996_left_checked

theorem cover_1206996 : CoveredBy scale carrier boxes root_1206996 := by
  apply coveredBy_split_literal root_1206996 small_1206996_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0028.root_1207002 coord2 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_1206996_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0028.cover_1207002
#print axioms cover_1206996

def root_1205772 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1205772 : CoveredBy scale carrier boxes root_1205772 := by
  apply coveredBy_split_literal root_1205772 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0463.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0028.root_1206996 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0463.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0028.cover_1206996
#print axioms cover_1205772

def root_1205766 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1205766_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1205766_left_fuel : Nat := 1
def small_1205766_left_count : Nat := 1
def small_1205766_left_encoded : String := "00000001"
theorem small_1205766_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1205766_left_root small_1205766_left_fuel small_1205766_left_count small_1205766_left_encoded = true := by
  decide +kernel
theorem small_1205766_left_covered : CoveredBy scale carrier boxes small_1205766_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1205766_left_root small_1205766_left_fuel small_1205766_left_count small_1205766_left_encoded small_1205766_left_checked

theorem cover_1205766 : CoveredBy scale carrier boxes root_1205766 := by
  apply coveredBy_split_literal root_1205766 small_1205766_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0028.root_1205772 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_1205766_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0028.cover_1205772
#print axioms cover_1205766

def root_1205668 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1205668_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1205668_left_fuel : Nat := 12
def small_1205668_left_count : Nat := 45
def small_1205668_left_encoded : String := "1151E8F90A0000FA115225050A0000FC115225070A0001081151E90900000004000000051152250908A91305120700FA00000005000000020000000500000004000000031151E9070000000300000005000000021151E905000000020A0000FC000000051151E907000000030A000108000000051152250908A913091207010800000004050000F6000000050000000612073D08050000F600000005135D44F70000000900000000000000040000000400000001"
theorem small_1205668_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1205668_left_root small_1205668_left_fuel small_1205668_left_count small_1205668_left_encoded = true := by
  decide +kernel
theorem small_1205668_left_covered : CoveredBy scale carrier boxes small_1205668_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1205668_left_root small_1205668_left_fuel small_1205668_left_count small_1205668_left_encoded small_1205668_left_checked

theorem cover_1205668 : CoveredBy scale carrier boxes root_1205668 := by
  apply coveredBy_split_literal root_1205668 small_1205668_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0028.root_1205766 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_1205668_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0028.cover_1205766
#print axioms cover_1205668

def root_1205663 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1205663_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1205663_right_fuel : Nat := 1
def small_1205663_right_count : Nat := 1
def small_1205663_right_encoded : String := "00000000"
theorem small_1205663_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1205663_right_root small_1205663_right_fuel small_1205663_right_count small_1205663_right_encoded = true := by
  decide +kernel
theorem small_1205663_right_covered : CoveredBy scale carrier boxes small_1205663_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1205663_right_root small_1205663_right_fuel small_1205663_right_count small_1205663_right_encoded small_1205663_right_checked

theorem cover_1205663 : CoveredBy scale carrier boxes root_1205663 := by
  apply coveredBy_split_literal root_1205663 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0028.root_1205668 small_1205663_right_root coord0 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0028.cover_1205668
  · exact small_1205663_right_covered
#print axioms cover_1205663

def root_1175715 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1175715 : CoveredBy scale carrier boxes root_1175715 := by
  apply coveredBy_split_literal root_1175715 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0028.root_1175716 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0028.root_1205663 coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0028.cover_1175716
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0028.cover_1205663
#print axioms cover_1175715

def root_1173793 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1173793 : CoveredBy scale carrier boxes root_1173793 := by
  apply coveredBy_split_literal root_1173793 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0452.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0028.root_1175715 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0452.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0028.cover_1175715
#print axioms cover_1173793

def root_1160079 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1160079 : CoveredBy scale carrier boxes root_1160079 := by
  apply coveredBy_split_literal root_1160079 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0027.root_1160080 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0028.root_1173793 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0027.cover_1160080
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0028.cover_1173793
#print axioms cover_1160079

def root_1138229 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1138229 : CoveredBy scale carrier boxes root_1138229 := by
  apply coveredBy_split_literal root_1138229 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0027.root_1138230 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0028.root_1160079 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0027.cover_1138230
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0028.cover_1160079
#print axioms cover_1138229

def root_1217325 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16645888), (-16243968)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1217325_left_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (-1816224)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16645888), (-16243968)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1217325_left_fuel : Nat := 23
def small_1217325_left_count : Nat := 421
def small_1217325_left_encoded : String := "13E20102067ECE8512EA58FA0B4D43F610804CF7000000000B4D43FE10804CFF0000000403C0010613A510FD033F67B913BC31020000000A0000000113BBF502000000010569AC451340D4FA0000000600000002134110FA000000020BF3E576100928F7000000000BF3E57E00000007000000060000000A0000000313A54CFD00000003033F67B90000000613BBF502000000010569AC4500000006134110FA0000000200000006108010FF03C0010613A510FD033F67B90000000613BBF502000000010569AC4500000006134110FA000000020BF3E576000000061008ECF70AA6A27E10EDACFF000000040000000A10ED70FF03200106000000080000000600000004000000000000000313A54CFD000000030000000600000004108010F70B4D43FE10804CFF0000000403C001060000000A13A54CFD00000003033F67B90000000913BBF502000000010569AC450000000A00000009108010FF03C0010613A510FD033F67B90000000513BBF502000000010569AC45000000050000000A0000000313A54CFD00000003033F67B90000000513BBF502000000010569AC4500000005134110FA000000020AA6A27610EDACF7000000000AA6A27E10EDACFF00000004046001060000000A000000060000000610ED70F70AA6A27E0000000A10ED70FF046001060000000A00000005000000040000000000000004000000000000000212EA94FA000000020B4D43F610804CF7000000000B4D43FE10804CFF0000000403C0010613A510FD033F67B913BC31020793F0C50000000A12825CFA000000020BF3E576100928F7000000000BF3E57E100928FF0000000400000005000000080000000A0000000113BBF502000000010793F0C5128220FA0BF3E576100928F7000000000BF3E57E100928FF00000004000000051008ECFF032001060000000A13C144FD0000000302B4D6990000000600000005000000040000000A00000002000000050000000313A54CFD00000003033F67B913BC31020793F0C500000006000000090000000113BBF502000000010793F0C5128220FA0BF3E576100928F7000000000BF3E57E100928FF0000000400000005000000061008ECF70BF3E57E000000091008ECFF0000000900000004000000000000000200000005108010FF03C0010613A510FD033F67B913BC31020793F0C5128220FA0BF3E576000000061008ECF70000000A0000000000000002000000080000000113BBF502000000010793F0C5128220FA0BF3E576100928F7000000000AA6A27E10EDACFF0000000400000008000000081008ECF70AA6A27E10EDACFF00000004032001060000000813C144FD0000000302B4D6990000000800000008000000080000000000000002000000080000000313A54CFD00000003033F67B913BC31020793F0C50000000612825CFA000000020BF3E576000000061008ECF70AA6A27E0000000900000008000000000000000113BBF502000000010793F0C5128220FA0BF3E576000000061008ECF70AA6A27E10EDACFF00000004046001061383DCFD02B4D6990000000613D0D1020000000107095FA50000000600000005000000030000000610ED70FF04600106000000080000000600000004000000000000000212825CFA000000020BF3E576100928F700000000000000051008ECF70AA6A27E10EDACFF000000040460010600000005138418FD0000000300000005000000080000000000000004108010F70B4D43FE10804CFF0000000403C001060000000A13A54CFD00000003033F67B90000000913BBF502000000010793F0C5128220FA000000090000000200000009108010FF03C0010613A510FD033F67B90000000A13BBF502000000010793F0C50000000A000000080000000313A54CFD00000003033F67B913BC31020793F0C5128220FA0AA6A27610EDACF7000000000AA6A27E0000000900000006000000090000000212825CFA000000020AA6A27600000009000000070000000113BBF502000000010793F0C5128220FA0AA6A27610EDACF7000000000AA6A27E10EDACFF00000004046001060000000A0000000910ED70FF046001061383DCFD0000000800000003138418FD0000000302B4D6990000000613D0D1020000000107095FA500000006000000080000000410ED70F70AA6A27E10EDACFF000000040000000910ED70FF04600106000000070000000900000004000000000000000212825CFA000000020AA6A27610EDACF7000000000AA6A27E10EDACFF000000040460010600000008000000090000000810ED70F70AA6A27E000000090000000700000000000000040000000000000001"
theorem small_1217325_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1217325_left_root small_1217325_left_fuel small_1217325_left_count small_1217325_left_encoded = true := by
  decide +kernel
theorem small_1217325_left_covered : CoveredBy scale carrier boxes small_1217325_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1217325_left_root small_1217325_left_fuel small_1217325_left_count small_1217325_left_encoded small_1217325_left_checked

theorem cover_1217325 : CoveredBy scale carrier boxes root_1217325 := by
  apply coveredBy_split_literal root_1217325 small_1217325_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0467.root coord1 true (-1816224)
  · decide +kernel
  · decide +kernel
  · exact small_1217325_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0467.covered
#print axioms cover_1217325

def root_1217319 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1217319_left_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16777216), (-16645888)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1217319_left_fuel : Nat := 1
def small_1217319_left_count : Nat := 1
def small_1217319_left_encoded : String := "00000003"
theorem small_1217319_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1217319_left_root small_1217319_left_fuel small_1217319_left_count small_1217319_left_encoded = true := by
  decide +kernel
theorem small_1217319_left_covered : CoveredBy scale carrier boxes small_1217319_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1217319_left_root small_1217319_left_fuel small_1217319_left_count small_1217319_left_encoded small_1217319_left_checked

theorem cover_1217319 : CoveredBy scale carrier boxes root_1217319 := by
  apply coveredBy_split_literal root_1217319 small_1217319_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0028.root_1217325 coord3 true (-16645888)
  · decide +kernel
  · decide +kernel
  · exact small_1217319_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0028.cover_1217325
#print axioms cover_1217319

def root_1216873 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1216873_left_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(0), (2097152)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1216873_left_fuel : Nat := 21
def small_1216873_left_count : Nat := 213
def small_1216873_left_encoded : String := "13D7B0FD022A457913E20102067ECE8512EA58FA0B4D43F610804CF7000000000B4D43FE10804CFF000000040000000A108010FF014001060000000A13F614FD00000003033F67B90000000A13BBF502000000010569AC450000000A134110FA000000020BF3E576000000080000000A000000040000000A0000000212EA94FA000000020B4D43F610804CF7000000000B4D43FE10804CFF000000040000000A108010FF014001060000000813F614FD00000003033F67B90000000800000008000000040000000A0000000113E1C50200000001067ECE8512EA58FA0B4D43F610804CF7000000000B4D43FE10804CFF00000004014001060000000A13F614FD000000030115233913F895020569AC4500000007134110FA000000020000000A0000000100000007108010FF0140010613F5D8FD0115233913F895020569AC450000000A000000080000000113F85902000000010569AC4500000009000000080000000313F614FD000000030115233913F895020569AC451340D4FA0BF3E576100928F700000000000000071008ECF70000000A0000000000000002134110FA000000020BF3E576100928F7000000000AA6A27E10EDACFF0000000401E001060000000700000007000000081008ECF70AA6A27E0000000A00000008000000000000000113F85902000000010569AC451340D4FA0BF3E576000000071008ECF7000000070000000000000002134110FA000000020BF3E576100928F7000000000AA6A27E00000007000000081008ECF70AA6A27E10EDACFF0000000401E001060000000700000007000000080000000000000004108010F70B4D43FE10804CFF000000040000000A108010FF014001060000000A13F614FD00000003011523390000000A13F85902000000010569AC450000000A134110FA000000020000000A00000004000000000000000212EA94FA000000020B4D43F610804CF7000000000B4D43FE10804CFF0000000400000005108010FF014001060000000813F614FD0000000301152339000000080000000500000004108010F70B4D43FE10804CFF000000040000000A108010FF014001060000000813F614FD00000003011523390000000A13F85902000000010793F0C5128220FA0AA6A27600000008000000060000000200000005000000040000000000000003"
theorem small_1216873_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1216873_left_root small_1216873_left_fuel small_1216873_left_count small_1216873_left_encoded = true := by
  decide +kernel
theorem small_1216873_left_covered : CoveredBy scale carrier boxes small_1216873_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1216873_left_root small_1216873_left_fuel small_1216873_left_count small_1216873_left_encoded small_1216873_left_checked

theorem cover_1216873 : CoveredBy scale carrier boxes root_1216873 := by
  apply coveredBy_split_literal root_1216873 small_1216873_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0028.root_1217319 coord3 false (2097152)
  · decide +kernel
  · decide +kernel
  · exact small_1216873_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0028.cover_1217319
#print axioms cover_1216873

def root_1216868 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1216868_right_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-13026304), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1216868_right_fuel : Nat := 1
def small_1216868_right_count : Nat := 1
def small_1216868_right_encoded : String := "00000004"
theorem small_1216868_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1216868_right_root small_1216868_right_fuel small_1216868_right_count small_1216868_right_encoded = true := by
  decide +kernel
theorem small_1216868_right_covered : CoveredBy scale carrier boxes small_1216868_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1216868_right_root small_1216868_right_fuel small_1216868_right_count small_1216868_right_encoded small_1216868_right_checked

theorem cover_1216868 : CoveredBy scale carrier boxes root_1216868 := by
  apply coveredBy_split_literal root_1216868 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0028.root_1216873 small_1216868_right_root coord4 true (-13026304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0028.cover_1216873
  · exact small_1216868_right_covered
#print axioms cover_1216868

def root_1216618 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1216618_left_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-12756736), (-10572672)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1216618_left_fuel : Nat := 17
def small_1216618_left_count : Nat := 117
def small_1216618_left_encoded : String := "0F878CFF000000040280010613D7B0FD022A457913E201020000000A0000000113E1C50200000001067ECE8512EA58FA0B4D43F610804CF700000000000000070000000A0000000212EA94FA000000020B4D43F610804CF70000000000000005000000050000000313D7ECFD00000003022A457913E20102067ECE8512EA58FA0B4D43F610804CF7000000000DE7C9FE0E6014FF00000004000000070E5FD8FF03C001060000000A13A54CFD00000003033F67B90000000613BBF5020000000100000007000000040000000A0000000212EA94FA000000020B4D43F610804CF7000000000DE7C9FE0E6014FF00000004000000050E5FD8FF03C0010613A510FD033F67B90000000A000000050000000313A54CFD00000003033F67B9000000090000000500000004108010F70DE7C9FE000000090E5FD8FF03C001060000000A0000000900000004000000000000000113E1C50200000001067ECE8512EA58FA0B4D43F610804CF7000000000DE7C9FE000000070E5FD8FF0000000700000004108010F70DE7C9FE0E6014FF00000004000000070E5FD8FF03C001060000000A13A54CFD00000003011523390000000A13F85902000000010569AC45000000070000000500000004000000000000000200000005"
theorem small_1216618_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1216618_left_root small_1216618_left_fuel small_1216618_left_count small_1216618_left_encoded = true := by
  decide +kernel
theorem small_1216618_left_covered : CoveredBy scale carrier boxes small_1216618_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1216618_left_root small_1216618_left_fuel small_1216618_left_count small_1216618_left_encoded small_1216618_left_checked

theorem cover_1216618 : CoveredBy scale carrier boxes root_1216618 := by
  apply coveredBy_split_literal root_1216618 small_1216618_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0028.root_1216868 coord4 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact small_1216618_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0028.cover_1216868
#print axioms cover_1216618

def root_1216613 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1216613_right_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(-13026304), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1216613_right_fuel : Nat := 1
def small_1216613_right_count : Nat := 1
def small_1216613_right_encoded : String := "00000000"
theorem small_1216613_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1216613_right_root small_1216613_right_fuel small_1216613_right_count small_1216613_right_encoded = true := by
  decide +kernel
theorem small_1216613_right_covered : CoveredBy scale carrier boxes small_1216613_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1216613_right_root small_1216613_right_fuel small_1216613_right_count small_1216613_right_encoded small_1216613_right_checked

theorem cover_1216613 : CoveredBy scale carrier boxes root_1216613 := by
  apply coveredBy_split_literal root_1216613 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0028.root_1216618 small_1216613_right_root coord0 true (-13026304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0028.cover_1216618
  · exact small_1216613_right_covered
#print axioms cover_1216613

def root_1215855 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1215855_left_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-10572672)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1215855_left_fuel : Nat := 23
def small_1215855_left_count : Nat := 361
def small_1215855_left_encoded : String := "0F878CF7000000000C9A86FE0F878CFF000000040280010613D7B0FD022A457913E20102067ECE8512EA58FA000000070000000212EA94FA000000020DE7C9F60E6014F700000000000000050E5FD8F70DE7C9FE0E6014FF00000004000000050E5FD8FF014001060000000A13F614FD00000003033F67B913BC31020793F0C50000000700000005000000010000000500000004000000000000000113E1C50200000001067ECE8500000007000000050000000313D7ECFD00000003022A457913E20102067ECE8512EA58FA0DE7C9F6000000060E5FD8F700000007000000000000000212EA94FA000000020DE7C9F60E6014F700000000000000050E5FD8F70DE7C9FE0E6014FF000000040000000500000005000000000000000113E1C50200000001067ECE8500000007000000050F8750FF0280010613D7B0FD022A457913E20102067ECE8512EA58FA0DE7C9F60E6014F7000000000B4D43FE00000007000000060E5FD8F70B4D43FE10804CFF000000040140010613F5D8FD000000070000000313F614FD00000003033F67B90000000600000007108010FF0140010613F5D8FD033F67B913BC31020569AC4500000006000000080000000113BBF502000000010569AC4500000007000000080000000313F614FD00000003033F67B90000000613BBF502000000010569AC4500000006134110FA000000020D412876000000060EFA10F7000000080000000000000004000000000000000212EA94FA000000020DE7C9F60E6014F7000000000B4D43FE10804CFF000000040140010613F5D8FD033F67B900000008000000050000000313F614FD00000003033F67B90000000600000005108010FF00000008000000040E5FD8F70B4D43FE10804CFF000000040140010613F5D8FD033F67B90000000813BBF50200000001000000080000000313F614FD00000003033F67B913BC31020793F0C5128220FA0D412876000000060000000A00000002000000050000000100000005108010FF0000000800000004000000000000000113E1C50200000001067ECE8512EA58FA0DE7C9F60E6014F700000000000000070E5FD8F70B4D43FE00000007108010FF0140010613F5D8FD0115233913F895020569AC45000000070000000800000001000000070000000313F614FD000000030115233913F895020569AC4500000007134110FA000000020D412876000000070EFA10F70AA6A27E000000070000000800000000000000010000000700000004000000000000000212EA94FA000000020DE7C9F60E6014F70000000000000005000000050000000313D7ECFD00000003022A457913E20102067ECE8512EA58FA0DE7C9F6000000060E5FD8F70B4D43FE10804CFF000000040000000600000006000000000000000212EA94FA000000020DE7C9F60E6014F7000000000B4D43FE10804CFF0000000400000005000000060E5FD8F70B4D43FE10804CFF0000000403C0010613A510FD033F67B913BC31020793F0C5000000060000000500000001000000050000000313A54CFD00000003033F67B90000000600000005108010FF03C0010613A510FD033F67B913BC31020793F0C500000006000000080000000113BBF502000000010793F0C5128220FA0D412876000000060EFA10F7000000080000000000000002000000050000000313A54CFD00000003033F67B90000000613BBF502000000010793F0C5000000060000000500000004000000000000000113E1C50200000001067ECE8512EA58FA0DE7C9F60E6014F700000000000000070E5FD8F70B4D43FE10804CFF0000000400000007108010FF03C0010613A510FD0115233913F895020569AC4500000006134110FA000000020D412876000000060EFA10F70AA6A27E00000007000000060000000000000001000000070000000313A54CFD00000003011523390000000613F85902000000010569AC4500000006000000050000000400000000000000020000000500000004"
theorem small_1215855_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1215855_left_root small_1215855_left_fuel small_1215855_left_count small_1215855_left_encoded = true := by
  decide +kernel
theorem small_1215855_left_covered : CoveredBy scale carrier boxes small_1215855_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1215855_left_root small_1215855_left_fuel small_1215855_left_count small_1215855_left_encoded small_1215855_left_checked

theorem cover_1215855 : CoveredBy scale carrier boxes root_1215855 := by
  apply coveredBy_split_literal root_1215855 small_1215855_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0028.root_1216613 coord0 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact small_1215855_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0028.cover_1216613
#print axioms cover_1215855

def root_1215849 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1215849_left_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1215849_left_fuel : Nat := 1
def small_1215849_left_count : Nat := 1
def small_1215849_left_encoded : String := "00000004"
theorem small_1215849_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1215849_left_root small_1215849_left_fuel small_1215849_left_count small_1215849_left_encoded = true := by
  decide +kernel
theorem small_1215849_left_covered : CoveredBy scale carrier boxes small_1215849_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1215849_left_root small_1215849_left_fuel small_1215849_left_count small_1215849_left_encoded small_1215849_left_checked

theorem cover_1215849 : CoveredBy scale carrier boxes root_1215849 := by
  apply coveredBy_split_literal root_1215849 small_1215849_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0028.root_1215855 coord4 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_1215849_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0028.cover_1215855
#print axioms cover_1215849

def root_1215848 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1215848_right_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-10897344), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1215848_right_fuel : Nat := 9
def small_1215848_right_count : Nat := 21
def small_1215848_right_encoded : String := "0F34D0FE0C9A86F60F878CF7000000000280010600000007000000070F8750F7028001060000000A13D7ECFD00000003022A457913E20102067ECE850000000A0000000500000001000000050000000000000004"
theorem small_1215848_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1215848_right_root small_1215848_right_fuel small_1215848_right_count small_1215848_right_encoded = true := by
  decide +kernel
theorem small_1215848_right_covered : CoveredBy scale carrier boxes small_1215848_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1215848_right_root small_1215848_right_fuel small_1215848_right_count small_1215848_right_encoded small_1215848_right_checked

theorem cover_1215848 : CoveredBy scale carrier boxes root_1215848 := by
  apply coveredBy_split_literal root_1215848 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0028.root_1215849 small_1215848_right_root coord4 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0028.cover_1215849
  · exact small_1215848_right_covered
#print axioms cover_1215848

def root_1215842 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1215842_left_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-16379648)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1215842_left_fuel : Nat := 1
def small_1215842_left_count : Nat := 1
def small_1215842_left_encoded : String := "00000002"
theorem small_1215842_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1215842_left_root small_1215842_left_fuel small_1215842_left_count small_1215842_left_encoded = true := by
  decide +kernel
theorem small_1215842_left_covered : CoveredBy scale carrier boxes small_1215842_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1215842_left_root small_1215842_left_fuel small_1215842_left_count small_1215842_left_encoded small_1215842_left_checked

theorem cover_1215842 : CoveredBy scale carrier boxes root_1215842 := by
  apply coveredBy_split_literal root_1215842 small_1215842_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0028.root_1215848 coord2 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_1215842_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0028.cover_1215848
#print axioms cover_1215842

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0028
