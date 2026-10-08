import TaoBundleAssembly0320
import TaoBundleAssembly0331
import TaoBundleAssembly0334
import TaoBundleAssembly0338
import TaoBundleChunkBatch0440
import TaoBundleChunkBatch0441
import TaoBundleChunkBatch0442
import TaoBundleChunkBatch0443
import TaoBundleChunkBatch0444
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0339
def root_4712165 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4712165_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (10572672)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4712165_left_fuel : Nat := 22
def small_4712165_left_count : Nat := 267
def small_4712165_left_encoded : String := "0F875103000000010C9A86FA0F878D05078000F6128A7D0107800106128A40FD022A458913E1C508000000040B4D440210801103000000010DE7C9FA000000060000000810804D030DE7C9FA0E60150508C000F611FC25010640010600000005000000060000000000000006000000020E5FD9050000000208C000F611FC25010640010612FF70FD01152349000000060000000800000003000000080000000011FBE90100000000000000060000000113E201080B4D440210801103000000010DE7C9FA0E60150500000008000000020000000810804D030DE7C9FA0E60150508C000F60000000700000007000000020E5FD9050000000208C000F611FC25010640010612FF70FD0000000700000003000000080000000011FBE9010000000000000008000000010000000400000003128A7CFD00000003022A458913E1C508000000040B4D44020000000810804D030DE7C9FA0E6015050000000800000002000000080000000113E201080B4D44020000000810804D030DE7C9FA0E601505000000080000000200000008000000010000000400000000128A41010000000007800106128A40FD022A45890000000613E201080B4D44020000000810804D0300000008000000010000000400000003128A7CFD0000000300000008000000020F87510500000002078000F6128A7D0107800106128A40FD022A458913E1C508000000040B4D440210801103000000010B4D43FA10804D0500000008000000020000000810804D030B4D43FA10804D0508C000F611FC25010640010612FF70FD011523490000000613F89508000000080000000400000003000000080000000011FBE901000000000000000800000002108011050000000208C000F611FC25010640010612FF70FD0115234913F85908000000040BF3E5820000000810092903000000080000000113F895080BF3E582000000081009290300000008000000010000000400000003000000080000000011FBE90100000000000000080000000113E201080B4D440210801103000000010B4D43FA10804D0500000008000000020000000810804D030B4D43FA10804D0508C000F611FC25010640010612FF70FD033F67C9000000080000000800000003000000080000000011FBE901000000000000000800000002108011050000000208C000F611FC25010640010612FF70FD033F67C9000000080000000800000003000000080000000011FBE9010000000000000008000000010000000400000003128A7CFD00000003022A458913E1C508000000040B4D44020000000810804D03000000080000000113E201080B4D44020000000810804D030B4D43FA10804D05000000080000000200000008000000010000000400000000128A41010000000007800106128A40FD022A45890000000813E201080B4D44020000000810804D0300000008000000010000000400000003128A7CFD0000000300000008"
theorem small_4712165_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4712165_left_root small_4712165_left_fuel small_4712165_left_count small_4712165_left_encoded = true := by
  decide +kernel
theorem small_4712165_left_covered : CoveredBy scale carrier boxes small_4712165_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4712165_left_root small_4712165_left_fuel small_4712165_left_count small_4712165_left_encoded small_4712165_left_checked

theorem cover_4712165 : CoveredBy scale carrier boxes root_4712165 := by
  apply coveredBy_split_literal root_4712165 small_4712165_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1761.root coord1 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_4712165_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1761.covered
#print axioms cover_4712165

def root_4712159 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4712159_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4712159_left_fuel : Nat := 1
def small_4712159_left_count : Nat := 1
def small_4712159_left_encoded : String := "00000004"
theorem small_4712159_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4712159_left_root small_4712159_left_fuel small_4712159_left_count small_4712159_left_encoded = true := by
  decide +kernel
theorem small_4712159_left_covered : CoveredBy scale carrier boxes small_4712159_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4712159_left_root small_4712159_left_fuel small_4712159_left_count small_4712159_left_encoded small_4712159_left_checked

theorem cover_4712159 : CoveredBy scale carrier boxes root_4712159 := by
  apply coveredBy_split_literal root_4712159 small_4712159_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0339.root_4712165 coord4 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_4712159_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0339.cover_4712165
#print axioms cover_4712159

def root_4712158 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4712158_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4712158_right_fuel : Nat := 19
def small_4712158_right_count : Nat := 233
def small_4712158_right_encoded : String := "1386AD080C9A87020F875103000000010C9A86FA0F878D05078000F6128A7D0107800106128A40FD067ECE8912EA5908000000040B4D440210801103000000010DE7C9FA0E601505000000070000000200000008000000070000000700000003128A7CFD00000003067ECE8912EA5908000000040B4D44020000000810804D030DE7C9FA0E6015050000000800000002000000080000000112EA95080B4D440200000008000000070000000400000000128A41010000000007800106128A40FD067ECE8912EA5908000000040B4D440200000008000000070000000700000003128A7CFD00000003067ECE890000000800000008000000020F87510500000002078000F6128A7D0107800106128A40FD067ECE8912EA5908000000040B4D440210801103000000010B4D43FA10804D0500000008000000020000000810804D030B4D43FA10804D0508C000F611FC25010640010600000007000000080000000011FBE901000000000000000800000002108011050000000208C000F600000009000000050000000112EA95080B4D44020000000A10804D030000000A000000010000000400000003128A7CFD00000003067ECE8912EA5908000000040B4D440200000008000000050000000500000000128A41010000000007800106128A40FD067ECE8912EA5908000000040B4D440200000008000000050000000500000003000000050F878D030C9A86FA0F878D05078000F6128A7D010780010600000007128A7CFD00000003067ECE8912EA5908000000040DE7CA020E5FD903000000010DE7C9FA0E60150500000007000000020E5FD9050000000208C000F611FC250108C0010600000007000000080000000000000008000000070000000700000000128A4101000000000780010600000007128A7CFD00000003067ECE8912EA5908000000040DE7CA020E5FD90300000001000000080000000700000007000000020F87510500000002078000F6128A7D0107800106128A40FD067ECE8912EA5908000000040DE7CA020E5FD903000000010B4D43FA10804D050000000700000002108011050000000208C000F611FC25010640010600000007000000050000000000000005000000070000000700000003128A7CFD00000003067ECE8912EA5908000000040DE7CA020E5FD9030000000100000005000000050000000500000000128A41010000000007800106128A40FD067ECE8912EA5908000000040DE7CA020E5FD9030000000100000005000000050000000500000003000000050000000100000004"
theorem small_4712158_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4712158_right_root small_4712158_right_fuel small_4712158_right_count small_4712158_right_encoded = true := by
  decide +kernel
theorem small_4712158_right_covered : CoveredBy scale carrier boxes small_4712158_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4712158_right_root small_4712158_right_fuel small_4712158_right_count small_4712158_right_encoded small_4712158_right_checked

theorem cover_4712158 : CoveredBy scale carrier boxes root_4712158 := by
  apply coveredBy_split_literal root_4712158 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0339.root_4712159 small_4712158_right_root coord4 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0339.cover_4712159
  · exact small_4712158_right_covered
#print axioms cover_4712158

def root_4712152 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4712152_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4712152_left_fuel : Nat := 1
def small_4712152_left_count : Nat := 1
def small_4712152_left_encoded : String := "00000002"
theorem small_4712152_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4712152_left_root small_4712152_left_fuel small_4712152_left_count small_4712152_left_encoded = true := by
  decide +kernel
theorem small_4712152_left_covered : CoveredBy scale carrier boxes small_4712152_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4712152_left_root small_4712152_left_fuel small_4712152_left_count small_4712152_left_encoded small_4712152_left_checked

theorem cover_4712152 : CoveredBy scale carrier boxes root_4712152 := by
  apply coveredBy_split_literal root_4712152 small_4712152_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0339.root_4712158 coord2 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_4712152_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0339.cover_4712158
#print axioms cover_4712152

def root_4711974 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4711974_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4711974_left_fuel : Nat := 15
def small_4711974_left_count : Nat := 85
def small_4711974_left_encoded : String := "0F34D0FA04548A0913867108000000040C9A87020F87510300000001078000F6128A7D0107800106128A40FD0AD357850000000710D13CFA00000002022A458913E1C508000000040B4D440200000005000000090000000700000003128A7CFD000000030AD3578510D100FA000000090000000210D13CFA00000002022A45890000000813E20108000000080000000400000000128A41010000000007800106128A40FD0AD357850000000710D13CFA00000002022A4589000000060000000700000003128A7CFD00000003000000080F878D03078000F6128A7D010780010600000007128A7CFD000000030AD357850000000710D13CFA00000002000000090000000000000009000000011386AD080C9A87020F87510300000001078000F600000007128A4101000000000780010600000007128A7CFD000000030AD357850000000700000007000000070000000400000002"
theorem small_4711974_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4711974_left_root small_4711974_left_fuel small_4711974_left_count small_4711974_left_encoded = true := by
  decide +kernel
theorem small_4711974_left_covered : CoveredBy scale carrier boxes small_4711974_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4711974_left_root small_4711974_left_fuel small_4711974_left_count small_4711974_left_encoded small_4711974_left_checked

theorem cover_4711974 : CoveredBy scale carrier boxes root_4711974 := by
  apply coveredBy_split_literal root_4711974 small_4711974_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0339.root_4712152 coord2 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_4711974_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0339.cover_4712152
#print axioms cover_4711974

def root_4711969 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4711969_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4711969_right_fuel : Nat := 1
def small_4711969_right_count : Nat := 1
def small_4711969_right_encoded : String := "00000001"
theorem small_4711969_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4711969_right_root small_4711969_right_fuel small_4711969_right_count small_4711969_right_encoded = true := by
  decide +kernel
theorem small_4711969_right_covered : CoveredBy scale carrier boxes small_4711969_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4711969_right_root small_4711969_right_fuel small_4711969_right_count small_4711969_right_encoded small_4711969_right_checked

theorem cover_4711969 : CoveredBy scale carrier boxes root_4711969 := by
  apply coveredBy_split_literal root_4711969 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0339.root_4711974 small_4711969_right_root coord1 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0339.cover_4711974
  · exact small_4711969_right_covered
#print axioms cover_4711969

def root_4711405 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4711405_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4711405_left_fuel : Nat := 32
def small_4711405_left_count : Nat := 263
def small_4711405_left_encoded : String := "0F34D102000000010CFD9C050F34D0FA00000007000000020F350CFA0000000204548A0913867108000000040C9A86FA0F878D05078000F6128A7D0107800106128A40FD0000000700000003128A7CFD000000030AD3578310D10102000000010000000910D13D02022A45890000000913E201080DE7C9FA000000070E5FD905000000020000000700000004000000010000000000000009000000020F87510500000002078000F6128A7D0107800106128A40FD0AD3578310D1010200000001022A4589000000090000000710D13D02022A458913E1C508000000040B4D43FA10804D0508C000F611FC250100000009000000000000000900000002108011050000000208C000F611FC25010640010612FF70FD0BE879C31011710200000001000000071011AD020115234913F85908000000040AA6A27A0000000910ED710500000002096000F611AABD0105A0010600000007133170FD0000000300000009000000000000000900000007000000010000000312FFACFD000000030BE879C31011710200000001000000091011AD020115234913F85908000000040AA6A27A0000000910ED7105000000020000000513F895080AA6A27A10EDAD05096000F60000000700000005000000020000000500000004000000010000000011FBE901000000000640010612FF70FD0BE879C300000009000000090000000312FFACFD000000030BE879C3000000090000000513E201080B4D43FA00000007108011050000000208C000F60000000711FBE9010000000000000007000000040000000100000003128A7CFD000000030AD3578310D1010200000001022A45890000000913E201080B4D43FA10804D050000000700000002000000050000000410D13D02022A458913E1C508000000040B4D43FA10804D0508C000F611FC250100000009000000000000000900000002108011050000000208C000F611FC250108C0010611FBE8FD0BE879C3101171020000000100000005000000050000000300000005000000000000000513E201080B4D43FA10804D0508C000F611FC250108C0010611FBE8FD00000007000000030000000500000000000000050000000200000005000000040000000100000000128A41010000000007800106128A40FD0AD3578310D10102000000010000000910D13D02022A45890000000913E201080B4D43FA0000000700000005000000040000000100000003128A7CFD000000030AD3578310D101020000000100000005000000051386AD080C9A86FA0F878D0500000007000000020F87510500000002078000F6128A7D010780010600000007128A7CFD000000030AD3578310D10102000000010000000710D13D02067ECE8912EA5908000000040B4D43FA10804D05000000070000000200000005000000050000000100000000128A41010000000007800106000000070000000500000004"
theorem small_4711405_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4711405_left_root small_4711405_left_fuel small_4711405_left_count small_4711405_left_encoded = true := by
  decide +kernel
theorem small_4711405_left_covered : CoveredBy scale carrier boxes small_4711405_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4711405_left_root small_4711405_left_fuel small_4711405_left_count small_4711405_left_encoded small_4711405_left_checked

theorem cover_4711405 : CoveredBy scale carrier boxes root_4711405 := by
  apply coveredBy_split_literal root_4711405 small_4711405_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0339.root_4711969 coord1 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_4711405_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0339.cover_4711969
#print axioms cover_4711405

def root_4711399 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4711399_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4711399_left_fuel : Nat := 1
def small_4711399_left_count : Nat := 1
def small_4711399_left_encoded : String := "00000003"
theorem small_4711399_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4711399_left_root small_4711399_left_fuel small_4711399_left_count small_4711399_left_encoded = true := by
  decide +kernel
theorem small_4711399_left_covered : CoveredBy scale carrier boxes small_4711399_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4711399_left_root small_4711399_left_fuel small_4711399_left_count small_4711399_left_encoded small_4711399_left_checked

theorem cover_4711399 : CoveredBy scale carrier boxes root_4711399 := by
  apply coveredBy_split_literal root_4711399 small_4711399_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0339.root_4711405 coord3 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_4711399_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0339.cover_4711405
#print axioms cover_4711399

def root_4708945 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4708945 : CoveredBy scale carrier boxes root_4708945 := by
  apply coveredBy_split_literal root_4708945 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1760.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0339.root_4711399 coord3 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1760.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0339.cover_4711399
#print axioms cover_4708945

def root_4708940 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4708940_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4708940_right_fuel : Nat := 1
def small_4708940_right_count : Nat := 1
def small_4708940_right_encoded : String := "00000000"
theorem small_4708940_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4708940_right_root small_4708940_right_fuel small_4708940_right_count small_4708940_right_encoded = true := by
  decide +kernel
theorem small_4708940_right_covered : CoveredBy scale carrier boxes small_4708940_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4708940_right_root small_4708940_right_fuel small_4708940_right_count small_4708940_right_encoded small_4708940_right_checked

theorem cover_4708940 : CoveredBy scale carrier boxes root_4708940 := by
  apply coveredBy_split_literal root_4708940 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0339.root_4708945 small_4708940_right_root coord0 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0339.cover_4708945
  · exact small_4708940_right_covered
#print axioms cover_4708940

def root_4708939 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4708939_right_root : ZRayBox := fun j => (#[⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4708939_right_fuel : Nat := 21
def small_4708939_right_count : Nat := 243
def small_4708939_right_encoded : String := "135D45010000000005000106135D44FD0CFD9C030F34D102000000010CFD9C05000000070F350CFA0000000204548A0900000009000000070F350D020CFD9C050F34D0FA04548A0913867108000000040C9A87020F87510300000001028000F600000007000000060000000700000007000000020F350CFA0000000204548A0913867108000000040C9A87020F875103000000010C9A86FA0F878D05028000F613D7ED010280010600000006000000060000000000000006000000020F87510500000002028000F613D7ED01028001060000000A13D7ECFD00000003022A4589000000060000000800000000000000060F878D030C9A86FA0F878D0500000009000000020F87510500000002028000F613D7ED01028001060000000A13D7ECFD00000003022A458913E1C508000000040DE7CA020000000A000000090000000A000000000000000A000000011386AD080C9A87020000000A0F878D030000000A00000001000000040000000100000003135D80FD000000030CFD9C030F34D102000000010CFD9C050F34D0FA00000009000000020F350CFA0000000204548A0913867108000000040C9A86FA000000090F87510500000002028000F613D7ED0107800106000000090000000500000000000000051386AD080C9A86FA0F878D0500000007000000020F8751050000000200000005000000040F350D020CFD9C050F34D0FA04548A09000000091386AD080C9A87020F87510300000001028000F613D7ED010780010600000007128A7CFD000000030000000800000000000000090000000700000004000000020F350CFA0000000204548A0913867108000000040C9A87020F875103000000010C9A86FA0F878D05028000F613D7ED010780010600000008000000080000000000000006000000020F87510500000002028000F613D7ED0107800106000000080000000500000000000000050F878D030C9A86FA0F878D0500000009000000020F87510500000002028000F613D7ED0107800106128A40FD022A458913E1C50800000004000000050000000500000003000000050000000000000005000000011386AD080C9A87020F875103000000010C9A86FA0F878D05028000F613D7ED0107800106128A40FD067ECE89000000080000000700000003000000080000000013D7B10100000000078001060000000800000005000000020F87510500000002000000050F878D030C9A86FA0F878D05028000F613D7ED010780010600000007128A7CFD00000003000000050000000013D7B10100000000078001060000000700000005000000020F8751050000000200000005000000010000000400000001"
theorem small_4708939_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4708939_right_root small_4708939_right_fuel small_4708939_right_count small_4708939_right_encoded = true := by
  decide +kernel
theorem small_4708939_right_covered : CoveredBy scale carrier boxes small_4708939_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4708939_right_root small_4708939_right_fuel small_4708939_right_count small_4708939_right_encoded small_4708939_right_checked

theorem cover_4708939 : CoveredBy scale carrier boxes root_4708939 := by
  apply coveredBy_split_literal root_4708939 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0339.root_4708940 small_4708939_right_root coord0 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0339.cover_4708940
  · exact small_4708939_right_covered
#print axioms cover_4708939

def root_4708933 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4708933_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4708933_left_fuel : Nat := 1
def small_4708933_left_count : Nat := 1
def small_4708933_left_encoded : String := "00000004"
theorem small_4708933_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4708933_left_root small_4708933_left_fuel small_4708933_left_count small_4708933_left_encoded = true := by
  decide +kernel
theorem small_4708933_left_covered : CoveredBy scale carrier boxes small_4708933_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4708933_left_root small_4708933_left_fuel small_4708933_left_count small_4708933_left_encoded small_4708933_left_checked

theorem cover_4708933 : CoveredBy scale carrier boxes root_4708933 := by
  apply coveredBy_split_literal root_4708933 small_4708933_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0339.root_4708939 coord4 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_4708933_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0339.cover_4708939
#print axioms cover_4708933

def root_4708932 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4708932_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4708932_right_fuel : Nat := 21
def small_4708932_right_count : Nat := 87
def small_4708932_right_encoded : String := "12073D08050000F6135D810105000106135D44FD0000000700000003135D80FD000000030CFD9C030F34D10200000001000000070F350D020CFD9C05000000070F350CFA000000020CFD9C090F34D108000000040C9A87020F875103000000010C9A86FA0F878D05078000F600000007128A41010000000000000007000000020F87510500000002078000F6128A7D01078001060000000A128A7CFD000000030AD357890000000800000005000000000000000A0F878D030C9A86FA000000070F87510500000002078000F6000000070000000A00000001000000070000000100000000135D45010000000005000106135D44FD0000000700000003135D80FD000000030CFD9C030F34D10200000001000000070F350D020CFD9C05000000070F350CFA000000020CFD9C090F34D108000000040C9A87020000000A0F878D030C9A86FA000000070000000500000001000000070000000100000004"
theorem small_4708932_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4708932_right_root small_4708932_right_fuel small_4708932_right_count small_4708932_right_encoded = true := by
  decide +kernel
theorem small_4708932_right_covered : CoveredBy scale carrier boxes small_4708932_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4708932_right_root small_4708932_right_fuel small_4708932_right_count small_4708932_right_encoded small_4708932_right_checked

theorem cover_4708932 : CoveredBy scale carrier boxes root_4708932 := by
  apply coveredBy_split_literal root_4708932 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0339.root_4708933 small_4708932_right_root coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0339.cover_4708933
  · exact small_4708932_right_covered
#print axioms cover_4708932

def root_4708926 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4708926_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4708926_left_fuel : Nat := 1
def small_4708926_left_count : Nat := 1
def small_4708926_left_encoded : String := "00000002"
theorem small_4708926_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4708926_left_root small_4708926_left_fuel small_4708926_left_count small_4708926_left_encoded = true := by
  decide +kernel
theorem small_4708926_left_covered : CoveredBy scale carrier boxes small_4708926_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4708926_left_root small_4708926_left_fuel small_4708926_left_count small_4708926_left_encoded small_4708926_left_checked

theorem cover_4708926 : CoveredBy scale carrier boxes root_4708926 := by
  apply coveredBy_split_literal root_4708926 small_4708926_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0339.root_4708932 coord2 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_4708926_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0339.cover_4708932
#print axioms cover_4708926

def root_4708900 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4708900_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4708900_left_fuel : Nat := 7
def small_4708900_left_count : Nat := 13
def small_4708900_left_encoded : String := "120700FA08A913091207010800000004050000F600000007135D4501000000000500010600000007000000090000000700000002"
theorem small_4708900_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4708900_left_root small_4708900_left_fuel small_4708900_left_count small_4708900_left_encoded = true := by
  decide +kernel
theorem small_4708900_left_covered : CoveredBy scale carrier boxes small_4708900_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4708900_left_root small_4708900_left_fuel small_4708900_left_count small_4708900_left_encoded small_4708900_left_checked

theorem cover_4708900 : CoveredBy scale carrier boxes root_4708900 := by
  apply coveredBy_split_literal root_4708900 small_4708900_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0339.root_4708926 coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_4708900_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0339.cover_4708926
#print axioms cover_4708900

def root_4708895 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4708895_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4708895_right_fuel : Nat := 1
def small_4708895_right_count : Nat := 1
def small_4708895_right_encoded : String := "00000001"
theorem small_4708895_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4708895_right_root small_4708895_right_fuel small_4708895_right_count small_4708895_right_encoded = true := by
  decide +kernel
theorem small_4708895_right_covered : CoveredBy scale carrier boxes small_4708895_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4708895_right_root small_4708895_right_fuel small_4708895_right_count small_4708895_right_encoded small_4708895_right_checked

theorem cover_4708895 : CoveredBy scale carrier boxes root_4708895 := by
  apply coveredBy_split_literal root_4708895 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0339.root_4708900 small_4708895_right_root coord1 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0339.cover_4708900
  · exact small_4708895_right_covered
#print axioms cover_4708895

def root_4708689 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4708689_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4708689_left_fuel : Nat := 25
def small_4708689_left_count : Nat := 97
def small_4708689_left_encoded : String := "120701020000000108A913050000000712073CFA0000000208A913091207010800000004050000F6135D810105000106135D44FD0000000700000003135D80FD0000000304548A0313867102000000010CFD9C05000000070F350CFA0000000204548A0913867108000000040C9A86FA000000070F87510500000002078000F60000000700000009000000071386AD020CFD9C05000000070F350CFA0000000204548A0913867108000000040C9A86FA0F878D0500000009000000020F87510500000002078000F6128A7D0107800106128A40FD0000000700000003128A7CFD00000003067ECE8312EA5902000000010000000912EA9502022A45890000000900000007000000010000000000000009000000070000000100000000135D45010000000005000106135D44FD0000000700000003135D80FD0000000304548A0313867102000000010CFD9C05000000070F350CFA00000002000000091386AD020CFD9C05000000070F350CFA0000000204548A0900000009000000070000000100000007"
theorem small_4708689_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4708689_left_root small_4708689_left_fuel small_4708689_left_count small_4708689_left_encoded = true := by
  decide +kernel
theorem small_4708689_left_covered : CoveredBy scale carrier boxes small_4708689_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4708689_left_root small_4708689_left_fuel small_4708689_left_count small_4708689_left_encoded small_4708689_left_checked

theorem cover_4708689 : CoveredBy scale carrier boxes root_4708689 := by
  apply coveredBy_split_literal root_4708689 small_4708689_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0339.root_4708895 coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_4708689_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0339.cover_4708895
#print axioms cover_4708689

def root_4708684 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4708684_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4708684_right_fuel : Nat := 1
def small_4708684_right_count : Nat := 1
def small_4708684_right_encoded : String := "00000004"
theorem small_4708684_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4708684_right_root small_4708684_right_fuel small_4708684_right_count small_4708684_right_encoded = true := by
  decide +kernel
theorem small_4708684_right_covered : CoveredBy scale carrier boxes small_4708684_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4708684_right_root small_4708684_right_fuel small_4708684_right_count small_4708684_right_encoded small_4708684_right_checked

theorem cover_4708684 : CoveredBy scale carrier boxes root_4708684 := by
  apply coveredBy_split_literal root_4708684 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0339.root_4708689 small_4708684_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0339.cover_4708689
  · exact small_4708684_right_covered
#print axioms cover_4708684

def root_4708676 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4708676_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4708676_left_fuel : Nat := 2
def small_4708676_left_count : Nat := 3
def small_4708676_left_encoded : String := "1151E9090000000400000007"
theorem small_4708676_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4708676_left_root small_4708676_left_fuel small_4708676_left_count small_4708676_left_encoded = true := by
  decide +kernel
theorem small_4708676_left_covered : CoveredBy scale carrier boxes small_4708676_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4708676_left_root small_4708676_left_fuel small_4708676_left_count small_4708676_left_encoded small_4708676_left_checked

theorem cover_4708676 : CoveredBy scale carrier boxes root_4708676 := by
  apply coveredBy_split_literal root_4708676 small_4708676_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0339.root_4708684 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_4708676_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0339.cover_4708684
#print axioms cover_4708676

def root_4708671 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4708671_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4708671_right_fuel : Nat := 1
def small_4708671_right_count : Nat := 1
def small_4708671_right_encoded : String := "00000003"
theorem small_4708671_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4708671_right_root small_4708671_right_fuel small_4708671_right_count small_4708671_right_encoded = true := by
  decide +kernel
theorem small_4708671_right_covered : CoveredBy scale carrier boxes small_4708671_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4708671_right_root small_4708671_right_fuel small_4708671_right_count small_4708671_right_encoded small_4708671_right_checked

theorem cover_4708671 : CoveredBy scale carrier boxes root_4708671 := by
  apply coveredBy_split_literal root_4708671 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0339.root_4708676 small_4708671_right_root coord3 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0339.cover_4708676
  · exact small_4708671_right_covered
#print axioms cover_4708671

def root_4708670 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4708670 : CoveredBy scale carrier boxes root_4708670 := by
  apply coveredBy_split_literal root_4708670 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0339.root_4708671 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1762.root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0339.cover_4708671
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1762.covered
#print axioms cover_4708670

def root_4708665 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4708665_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4708665_right_fuel : Nat := 1
def small_4708665_right_count : Nat := 1
def small_4708665_right_encoded : String := "00000002"
theorem small_4708665_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4708665_right_root small_4708665_right_fuel small_4708665_right_count small_4708665_right_encoded = true := by
  decide +kernel
theorem small_4708665_right_covered : CoveredBy scale carrier boxes small_4708665_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4708665_right_root small_4708665_right_fuel small_4708665_right_count small_4708665_right_encoded small_4708665_right_checked

theorem cover_4708665 : CoveredBy scale carrier boxes root_4708665 := by
  apply coveredBy_split_literal root_4708665 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0339.root_4708670 small_4708665_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0339.cover_4708670
  · exact small_4708665_right_covered
#print axioms cover_4708665

def root_4719650 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4719650_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4719650_right_fuel : Nat := 20
def small_4719650_right_count : Nat := 109
def small_4719650_right_encoded : String := "115224FD000000030A0001081151E9090000000408A9130312070102000000010000000612073D0208A912FD12073D06050000F6135D8101050000FA135D8105050001080000000800000005000000020000000500000000000000050000000300000005000000011152250908A91303120701020000000108A912FD12073D0608A9130912070108000000040000000512073D08050000F6135D8101050000FA135D810504548A03000000061386AD020CFD9BFD0F350D060000000600000003000000050000000100000002000000050000000000000005000000040000000312070106000000030000000512073D0208A912FD12073D0608A913091207010800000004050000F6135D8101050000FA135D81050CFD9C030F34D10200000001000000050F350D020CFD9BFD0F350D0604548A09138671080000000400000005000000050000000300000005000000010000000200000005000000000000000512073D08050000F6135D8101050000FA135D81050CFD9C030F34D1020000000100000005000000050000000200000005000000000000000500000004000000031207010600000003000000050000000100000004"
theorem small_4719650_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4719650_right_root small_4719650_right_fuel small_4719650_right_count small_4719650_right_encoded = true := by
  decide +kernel
theorem small_4719650_right_covered : CoveredBy scale carrier boxes small_4719650_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4719650_right_root small_4719650_right_fuel small_4719650_right_count small_4719650_right_encoded small_4719650_right_checked

theorem cover_4719650 : CoveredBy scale carrier boxes root_4719650 := by
  apply coveredBy_split_literal root_4719650 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1763.root small_4719650_right_root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1763.covered
  · exact small_4719650_right_covered
#print axioms cover_4719650

def root_4719644 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4719644_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4719644_left_fuel : Nat := 1
def small_4719644_left_count : Nat := 1
def small_4719644_left_encoded : String := "00000002"
theorem small_4719644_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4719644_left_root small_4719644_left_fuel small_4719644_left_count small_4719644_left_encoded = true := by
  decide +kernel
theorem small_4719644_left_covered : CoveredBy scale carrier boxes small_4719644_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4719644_left_root small_4719644_left_fuel small_4719644_left_count small_4719644_left_encoded small_4719644_left_checked

theorem cover_4719644 : CoveredBy scale carrier boxes root_4719644 := by
  apply coveredBy_split_literal root_4719644 small_4719644_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0339.root_4719650 coord2 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_4719644_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0339.cover_4719650
#print axioms cover_4719644

def root_4708664 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4708664 : CoveredBy scale carrier boxes root_4708664 := by
  apply coveredBy_split_literal root_4708664 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0339.root_4708665 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0339.root_4719644 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0339.cover_4708665
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0339.cover_4719644
#print axioms cover_4708664

def root_4708659 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4708659_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4708659_right_fuel : Nat := 1
def small_4708659_right_count : Nat := 1
def small_4708659_right_encoded : String := "00000001"
theorem small_4708659_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4708659_right_root small_4708659_right_fuel small_4708659_right_count small_4708659_right_encoded = true := by
  decide +kernel
theorem small_4708659_right_covered : CoveredBy scale carrier boxes small_4708659_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4708659_right_root small_4708659_right_fuel small_4708659_right_count small_4708659_right_encoded small_4708659_right_checked

theorem cover_4708659 : CoveredBy scale carrier boxes root_4708659 := by
  apply coveredBy_split_literal root_4708659 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0339.root_4708664 small_4708659_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0339.cover_4708664
  · exact small_4708659_right_covered
#print axioms cover_4708659

def root_4704671 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4704671 : CoveredBy scale carrier boxes root_4704671 := by
  apply coveredBy_split_literal root_4704671 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0338.root_4704672 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0339.root_4708659 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0338.cover_4704672
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0339.cover_4708659
#print axioms cover_4704671

def root_4704665 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4704665_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4704665_left_fuel : Nat := 1
def small_4704665_left_count : Nat := 1
def small_4704665_left_encoded : String := "00000000"
theorem small_4704665_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4704665_left_root small_4704665_left_fuel small_4704665_left_count small_4704665_left_encoded = true := by
  decide +kernel
theorem small_4704665_left_covered : CoveredBy scale carrier boxes small_4704665_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4704665_left_root small_4704665_left_fuel small_4704665_left_count small_4704665_left_encoded small_4704665_left_checked

theorem cover_4704665 : CoveredBy scale carrier boxes root_4704665 := by
  apply coveredBy_split_literal root_4704665 small_4704665_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0339.root_4704671 coord0 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_4704665_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0339.cover_4704671
#print axioms cover_4704665

def root_4666987 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4666987 : CoveredBy scale carrier boxes root_4666987 := by
  apply coveredBy_split_literal root_4666987 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0338.root_4666988 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0339.root_4704665 coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0338.cover_4666988
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0339.cover_4704665
#print axioms cover_4666987

def root_4636553 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4636553 : CoveredBy scale carrier boxes root_4636553 := by
  apply coveredBy_split_literal root_4636553 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0334.root_4636554 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0339.root_4666987 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0334.cover_4636554
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0339.cover_4666987
#print axioms cover_4636553

def root_4631421 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4631421 : CoveredBy scale carrier boxes root_4631421 := by
  apply coveredBy_split_literal root_4631421 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0331.root_4631422 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0339.root_4636553 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0331.cover_4631422
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0339.cover_4636553
#print axioms cover_4631421

def root_4725025 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4725025 : CoveredBy scale carrier boxes root_4725025 := by
  apply coveredBy_split_literal root_4725025 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1765.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1766.root coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1765.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1766.covered
#print axioms cover_4725025

def root_4722833 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4722833 : CoveredBy scale carrier boxes root_4722833 := by
  apply coveredBy_split_literal root_4722833 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1764.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0339.root_4725025 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1764.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0339.cover_4725025
#print axioms cover_4722833

def root_4722832 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4722832 : CoveredBy scale carrier boxes root_4722832 := by
  apply coveredBy_split_literal root_4722832 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0339.root_4722833 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1767.root coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0339.cover_4722833
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1767.covered
#print axioms cover_4722832

def root_4631420 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4631420 : CoveredBy scale carrier boxes root_4631420 := by
  apply coveredBy_split_literal root_4631420 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0339.root_4631421 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0339.root_4722832 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0339.cover_4631421
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0339.cover_4722832
#print axioms cover_4631420

def root_4493202 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4493202 : CoveredBy scale carrier boxes root_4493202 := by
  apply coveredBy_split_literal root_4493202 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0331.root_4493203 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0339.root_4631420 coord3 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0331.cover_4493203
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0339.cover_4631420
#print axioms cover_4493202

def root_4456818 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4456818 : CoveredBy scale carrier boxes root_4456818 := by
  apply coveredBy_split_literal root_4456818 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0320.root_4456819 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0339.root_4493202 coord2 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0320.cover_4456819
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0339.cover_4493202
#print axioms cover_4456818

def root_4732953 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4732953 : CoveredBy scale carrier boxes root_4732953 := by
  apply coveredBy_split_literal root_4732953 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1769.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1770.root coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1769.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1770.covered
#print axioms cover_4732953

def root_4732952 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4732952 : CoveredBy scale carrier boxes root_4732952 := by
  apply coveredBy_split_literal root_4732952 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0339.root_4732953 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1771.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0339.cover_4732953
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1771.covered
#print axioms cover_4732952

def root_4731074 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4731074 : CoveredBy scale carrier boxes root_4731074 := by
  apply coveredBy_split_literal root_4731074 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1768.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0339.root_4732952 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1768.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0339.cover_4732952
#print axioms cover_4731074

def root_4741262 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4741262 : CoveredBy scale carrier boxes root_4741262 := by
  apply coveredBy_split_literal root_4741262 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1773.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1774.root coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1773.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1774.covered
#print axioms cover_4741262

def root_4739728 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4739728 : CoveredBy scale carrier boxes root_4739728 := by
  apply coveredBy_split_literal root_4739728 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1772.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0339.root_4741262 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1772.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0339.cover_4741262
#print axioms cover_4739728

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0339
