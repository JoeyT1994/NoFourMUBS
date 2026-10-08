import TaoBundleAssembly0114
import TaoBundleChunkBatch0431
import TaoBundleChunkBatch0432
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0115
def root_4586567 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4586567_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4586567_left_fuel : Nat := 15
def small_4586567_left_count : Nat := 83
def small_4586567_left_encoded : String := "0F34D0FC04548A09138670FE0C9A86FA0F878D05022A458113E1C4F6022A458313E1C502000000010AD357870000000510D13CFC00000003022A4589000000050000000713E201020AD357870000000710D13CFC00000003022A458913E1C4FE0DE7C9FA00000007000000050000000400000007000000010000000000000007000000020F87510500000002022A458113E1C4F6022A458313E1C502000000010AD357870000000510D13CFC000000030000000513E201020AD357870000000600000006000000010000000013E200F600000000022A458313E1C502000000010AD357870000000710D13CFC00000003022A4589000000050000000700000009000000041386ACFE000000040C9A86FA000000070F87510500000002022A458113E1C4F6022A45830000000A13E201020AD35787000000060000000600000001000000000000000700000003"
theorem small_4586567_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4586567_left_root small_4586567_left_fuel small_4586567_left_count small_4586567_left_encoded = true := by
  decide +kernel
theorem small_4586567_left_covered : CoveredBy scale carrier boxes small_4586567_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4586567_left_root small_4586567_left_fuel small_4586567_left_count small_4586567_left_encoded small_4586567_left_checked

theorem cover_4586567 : CoveredBy scale carrier boxes root_4586567 := by
  apply coveredBy_split_literal root_4586567 small_4586567_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0114.root_4586735 coord3 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_4586567_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0114.cover_4586735
#print axioms cover_4586567

def root_4586561 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4586561_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4586561_left_fuel : Nat := 1
def small_4586561_left_count : Nat := 1
def small_4586561_left_encoded : String := "00000002"
theorem small_4586561_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4586561_left_root small_4586561_left_fuel small_4586561_left_count small_4586561_left_encoded = true := by
  decide +kernel
theorem small_4586561_left_covered : CoveredBy scale carrier boxes small_4586561_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4586561_left_root small_4586561_left_fuel small_4586561_left_count small_4586561_left_encoded small_4586561_left_checked

theorem cover_4586561 : CoveredBy scale carrier boxes root_4586561 := by
  apply coveredBy_split_literal root_4586561 small_4586561_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0115.root_4586567 coord2 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_4586561_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0115.cover_4586567
#print axioms cover_4586561

def root_4586389 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4586389_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4586389_left_fuel : Nat := 17
def small_4586389_left_count : Nat := 83
def small_4586389_left_encoded : String := "0F34D0FA0CFD9C070F34D0FC00000007000000030F350CFC0000000304548A09138670FE0C9A86FC0F878D07022A458113E1C4F6022A458313E1C502000000010AD357850000000510D13CFA00000002022A4589000000050000000713E201020AD357850000000710D13CFA00000002022A458913E1C4FE0DE7C9FC00000007000000050000000400000007000000010000000000000007000000030F87510700000003022A458113E1C4F6022A458313E1C502000000010AD357850000000510D13CFA0000000200000005000000080000000013E200F600000000022A458313E1C502000000010AD357850000000710D13CFA00000002022A4589000000050000000713E201020AD357850000000710D13CFA00000002022A45890000000A0000000700000001000000041386ACFE000000040C9A86FC000000070F875107000000030000000800000002"
theorem small_4586389_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4586389_left_root small_4586389_left_fuel small_4586389_left_count small_4586389_left_encoded = true := by
  decide +kernel
theorem small_4586389_left_covered : CoveredBy scale carrier boxes small_4586389_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4586389_left_root small_4586389_left_fuel small_4586389_left_count small_4586389_left_encoded small_4586389_left_checked

theorem cover_4586389 : CoveredBy scale carrier boxes root_4586389 := by
  apply coveredBy_split_literal root_4586389 small_4586389_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0115.root_4586561 coord2 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_4586389_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0115.cover_4586561
#print axioms cover_4586389

def root_4586383 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4586383_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4586383_left_fuel : Nat := 1
def small_4586383_left_count : Nat := 1
def small_4586383_left_encoded : String := "00000001"
theorem small_4586383_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4586383_left_root small_4586383_left_fuel small_4586383_left_count small_4586383_left_encoded = true := by
  decide +kernel
theorem small_4586383_left_covered : CoveredBy scale carrier boxes small_4586383_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4586383_left_root small_4586383_left_fuel small_4586383_left_count small_4586383_left_encoded small_4586383_left_checked

theorem cover_4586383 : CoveredBy scale carrier boxes root_4586383 := by
  apply coveredBy_split_literal root_4586383 small_4586383_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0115.root_4586389 coord1 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_4586383_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0115.cover_4586389
#print axioms cover_4586383

def root_4586382 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4586382_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4586382_right_fuel : Nat := 26
def small_4586382_right_count : Nat := 433
def small_4586382_right_encoded : String := "1386AD020CFD9C050F34D0FA0CFD9C070F34D0FC00000007000000030F350CFC0000000304548A09138670FE0C9A86FC0F878D07022A458113E1C4F6067ECE8312EA5902000000010AD357850000000710D13CFA00000002022A458913E1C4FE000000080000000400000007000000080000000013E200F600000000067ECE8312EA5902000000010000000700000008000000030F87510700000003000000080000000400000008000000020F350CFA000000020CFD9C070F34D0FC04548A09138670FE0C9A86FA0F878D05022A458113E1C4F6067ECE8312EA5902000000010AD357870000000710D13CFC00000003022A45890000000900000007000000090000000000000009000000020F8751050000000200000009000000041386ACFE000000040C9A86FA0F878D0500000007000000020F87510500000002022A458113E1C4F6067ECE8312EA59020000000100000006000000060000000000000009000000030F350CFC0000000304548A09138670FE0C9A86FA0F878D050C9A86FC0F878D07022A458113E1C4F6067ECE8312EA590200000001022A458913E1C4FE0DE7C9FA0E6015050DE7C9FC0E6015070115234113F858F60569AC4300000005000000060000000000000009000000030E5FD9070000000300000008000000020E5FD905000000020DE7C9FC000000060E5FD9070000000301152341000000060000000A0000000413E200FE000000040DE7C9FA0E60150500000008000000020E5FD905000000020DE7C9FC000000060E5FD907000000030000000612EA9502022A458913E1C4FE0DE7C9FA0E60150500000008000000020E5FD90500000002000000060000000400000008000000010000000013E200F600000000067ECE8312EA590200000001022A458913E1C4FE0DE7C9FA0E6015050DE7C9FC000000090E5FD907000000030000000A000000020E5FD90500000002000000090000000413E200FE000000040DE7C9FA0E60150500000007000000020E5FD905000000020DE7C9FC000000090E5FD90700000003033F67C1000000080000000812EA9502022A4589000000090000000800000001000000030F87510700000003022A458113E1C4F6067ECE8312EA590200000001022A45890000000A00000008000000080000000013E200F600000000067ECE8312EA590200000001022A45890000000A0000000812EA95020000000800000001000000020F875105000000020C9A86FC0F878D07022A458113E1C4F6067ECE8312EA590200000001022A45890000000600000006000000060000000013E200F600000000067ECE8312EA590200000001022A4589000000090000000900000009000000030F87510700000003022A458113E1C4F6067ECE8312EA590200000001022A458913E1C4FE0B4D43FA0000000A000000060000000413E200FE000000040B4D43FA10804D050B4D43FC0000000600000008000000020000000612EA9502022A458913E1C4FE0B4D43FA00000006000000060000000400000006000000010000000013E200F600000000067ECE8312EA590200000001022A458913E1C4FE0B4D43FA0000000A10801105000000020B4D43FC000000090000000A0000000413E200FE000000040B4D43FA10804D050B4D43FC10804D07033F67C113BBF4F60569AC431340D5020000000100000006000000060000000000000009000000031080110700000003000000080000000210801105000000020B4D43FC000000061080110700000003033F67C1000000060000000A12EA9502022A45890000000A13E200FE000000040B4D43FA000000080000000900000001000000041386ACFE000000040C9A86FA0F878D050C9A86FC0F878D07022A458113E1C4F6067ECE8312EA590200000001067ECE8912EA58FE000000080000000400000007000000080000000013E200F600000000067ECE8312EA5902000000010000000700000008000000030F8751070000000300000008000000020F875105000000020C9A86FC0F878D07022A458113E1C4F6067ECE8312EA590200000001067ECE890000000600000006000000060000000013E200F600000000067ECE8312EA590200000001067ECE8912EA58FE0B4D43FA10804D050000000900000002000000060000000412EA94FE000000040B4D43FA10804D0500000007000000020000000900000009000000030F87510700000003022A458113E1C4F6067ECE8312EA590200000001067ECE8912EA58FE0B4D43FA00000008000000060000000400000008000000080000000013E200F600000000067ECE8312EA590200000001067ECE8912EA58FE0B4D43FA10804D05000000080000000210801105000000020B4D43FC000000060000000800000004000000080000000800000001"
theorem small_4586382_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4586382_right_root small_4586382_right_fuel small_4586382_right_count small_4586382_right_encoded = true := by
  decide +kernel
theorem small_4586382_right_covered : CoveredBy scale carrier boxes small_4586382_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4586382_right_root small_4586382_right_fuel small_4586382_right_count small_4586382_right_encoded small_4586382_right_checked

theorem cover_4586382 : CoveredBy scale carrier boxes root_4586382 := by
  apply coveredBy_split_literal root_4586382 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0115.root_4586383 small_4586382_right_root coord1 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0115.cover_4586383
  · exact small_4586382_right_covered
#print axioms cover_4586382

def root_4586377 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4586377_right_root : ZRayBox := fun j => (#[⟨⟨(-16378880), (-15122432)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4586377_right_fuel : Nat := 1
def small_4586377_right_count : Nat := 1
def small_4586377_right_encoded : String := "00000000"
theorem small_4586377_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4586377_right_root small_4586377_right_fuel small_4586377_right_count small_4586377_right_encoded = true := by
  decide +kernel
theorem small_4586377_right_covered : CoveredBy scale carrier boxes small_4586377_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4586377_right_root small_4586377_right_fuel small_4586377_right_count small_4586377_right_encoded small_4586377_right_checked

theorem cover_4586377 : CoveredBy scale carrier boxes root_4586377 := by
  apply coveredBy_split_literal root_4586377 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0115.root_4586382 small_4586377_right_root coord0 false (-16378880)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0115.cover_4586382
  · exact small_4586377_right_covered
#print axioms cover_4586377

def root_4593271 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4593271 : CoveredBy scale carrier boxes root_4593271 := by
  apply coveredBy_split_literal root_4593271 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1721.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1722.root coord4 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1721.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1722.covered
#print axioms cover_4593271

def root_4593265 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4593265_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4593265_left_fuel : Nat := 1
def small_4593265_left_count : Nat := 1
def small_4593265_left_encoded : String := "00000003"
theorem small_4593265_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4593265_left_root small_4593265_left_fuel small_4593265_left_count small_4593265_left_encoded = true := by
  decide +kernel
theorem small_4593265_left_covered : CoveredBy scale carrier boxes small_4593265_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4593265_left_root small_4593265_left_fuel small_4593265_left_count small_4593265_left_encoded small_4593265_left_checked

theorem cover_4593265 : CoveredBy scale carrier boxes root_4593265 := by
  apply coveredBy_split_literal root_4593265 small_4593265_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0115.root_4593271 coord3 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_4593265_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0115.cover_4593271
#print axioms cover_4593265

def root_4593241 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4593241_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4593241_left_fuel : Nat := 6
def small_4593241_left_count : Nat := 11
def small_4593241_left_encoded : String := "0F34D0FC04548A09138670FE0C9A86FA000000070F8751050000000200000009000000040000000700000003"
theorem small_4593241_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4593241_left_root small_4593241_left_fuel small_4593241_left_count small_4593241_left_encoded = true := by
  decide +kernel
theorem small_4593241_left_covered : CoveredBy scale carrier boxes small_4593241_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4593241_left_root small_4593241_left_fuel small_4593241_left_count small_4593241_left_encoded small_4593241_left_checked

theorem cover_4593241 : CoveredBy scale carrier boxes root_4593241 := by
  apply coveredBy_split_literal root_4593241 small_4593241_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0115.root_4593265 coord3 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_4593241_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0115.cover_4593265
#print axioms cover_4593241

def root_4593235 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4593235_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4593235_left_fuel : Nat := 1
def small_4593235_left_count : Nat := 1
def small_4593235_left_encoded : String := "00000002"
theorem small_4593235_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4593235_left_root small_4593235_left_fuel small_4593235_left_count small_4593235_left_encoded = true := by
  decide +kernel
theorem small_4593235_left_covered : CoveredBy scale carrier boxes small_4593235_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4593235_left_root small_4593235_left_fuel small_4593235_left_count small_4593235_left_encoded small_4593235_left_checked

theorem cover_4593235 : CoveredBy scale carrier boxes root_4593235 := by
  apply coveredBy_split_literal root_4593235 small_4593235_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0115.root_4593241 coord2 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_4593235_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0115.cover_4593241
#print axioms cover_4593235

def root_4593171 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4593171_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4593171_left_fuel : Nat := 15
def small_4593171_left_count : Nat := 31
def small_4593171_left_encoded : String := "0F34D0FA0CFD9C07000000070F350CFC0000000304548A09138670FE0C9A86FC000000070F87510700000003067ECE8112EA58F6022A458313E1C502000000010000000713E201020AD357850000000710D13CFA00000002022A45890000000A00000007000000010000000000000007000000040000000700000002"
theorem small_4593171_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4593171_left_root small_4593171_left_fuel small_4593171_left_count small_4593171_left_encoded = true := by
  decide +kernel
theorem small_4593171_left_covered : CoveredBy scale carrier boxes small_4593171_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4593171_left_root small_4593171_left_fuel small_4593171_left_count small_4593171_left_encoded small_4593171_left_checked

theorem cover_4593171 : CoveredBy scale carrier boxes root_4593171 := by
  apply coveredBy_split_literal root_4593171 small_4593171_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0115.root_4593235 coord2 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_4593171_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0115.cover_4593235
#print axioms cover_4593171

def root_4593165 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4593165_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4593165_left_fuel : Nat := 1
def small_4593165_left_count : Nat := 1
def small_4593165_left_encoded : String := "00000001"
theorem small_4593165_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4593165_left_root small_4593165_left_fuel small_4593165_left_count small_4593165_left_encoded = true := by
  decide +kernel
theorem small_4593165_left_covered : CoveredBy scale carrier boxes small_4593165_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4593165_left_root small_4593165_left_fuel small_4593165_left_count small_4593165_left_encoded small_4593165_left_checked

theorem cover_4593165 : CoveredBy scale carrier boxes root_4593165 := by
  apply coveredBy_split_literal root_4593165 small_4593165_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0115.root_4593171 coord1 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_4593165_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0115.cover_4593171
#print axioms cover_4593165

def root_4593164 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4593164_right_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4593164_right_fuel : Nat := 22
def small_4593164_right_count : Nat := 191
def small_4593164_right_encoded : String := "1386AD020CFD9C050F34D0FA0CFD9C07000000070F350CFC0000000304548A09138670FE0C9A86FC0F878D0700000007000000030F87510700000003067ECE810000000812EA94F600000000000000080000000400000007000000020F350CFA000000020CFD9C070F34D0FC04548A090000000900000007000000030F350CFC0000000304548A09138670FE0C9A86FA0F878D050C9A86FC0F878D07067ECE8112EA58F6067ECE8312EA590200000001022A45890000000900000007000000090000000000000009000000030F87510700000003067ECE8112EA58F6067ECE8312EA590200000001022A45890000000A13E200FE000000040DE7C9FA000000080E5FD905000000020B4D43FC10804D0700000008000000030000000812EA9502022A45890000000A00000008000000010000000012EA94F600000000067ECE8312EA590200000001022A45890000000A13E200FE000000040DE7C9FA000000080E5FD905000000020000000912EA9502022A4589000000090000000800000001000000020F875105000000020C9A86FC0F878D0700000009000000030F87510700000003067ECE8112EA58F6067ECE8312EA590200000001022A458913E1C4FE0B4D43FA0000000A000000090000000413E200FE000000040B4D43FA10804D050B4D43FC0000000910801107000000030000000A000000020000000912EA950200000009000000010000000012EA94F600000000067ECE8312EA590200000001022A4589000000090000000900000009000000041386ACFE000000040C9A86FA0F878D050C9A86FC0F878D0700000007000000030F87510700000003067ECE810000000800000008000000020F875105000000020C9A86FC0F878D07067ECE8112EA58F6067ECE8312EA59020000000100000009000000090000000000000009000000030F87510700000003067ECE8112EA58F6067ECE8312EA590200000001067ECE8912EA58FE0B4D43FA10804D050000000800000002108011050000000200000009000000040000000500000005000000000000000500000001"
theorem small_4593164_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4593164_right_root small_4593164_right_fuel small_4593164_right_count small_4593164_right_encoded = true := by
  decide +kernel
theorem small_4593164_right_covered : CoveredBy scale carrier boxes small_4593164_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4593164_right_root small_4593164_right_fuel small_4593164_right_count small_4593164_right_encoded small_4593164_right_checked

theorem cover_4593164 : CoveredBy scale carrier boxes root_4593164 := by
  apply coveredBy_split_literal root_4593164 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0115.root_4593165 small_4593164_right_root coord1 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0115.cover_4593165
  · exact small_4593164_right_covered
#print axioms cover_4593164

def root_4593158 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4593158_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16379648)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4593158_left_fuel : Nat := 1
def small_4593158_left_count : Nat := 1
def small_4593158_left_encoded : String := "00000000"
theorem small_4593158_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4593158_left_root small_4593158_left_fuel small_4593158_left_count small_4593158_left_encoded = true := by
  decide +kernel
theorem small_4593158_left_covered : CoveredBy scale carrier boxes small_4593158_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4593158_left_root small_4593158_left_fuel small_4593158_left_count small_4593158_left_encoded small_4593158_left_checked

theorem cover_4593158 : CoveredBy scale carrier boxes root_4593158 := by
  apply coveredBy_split_literal root_4593158 small_4593158_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0115.root_4593164 coord0 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_4593158_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0115.cover_4593164
#print axioms cover_4593158

def root_4586376 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4586376 : CoveredBy scale carrier boxes root_4586376 := by
  apply coveredBy_split_literal root_4586376 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0115.root_4586377 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0115.root_4593158 coord0 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0115.cover_4586377
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0115.cover_4593158
#print axioms cover_4586376

def root_4586371 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4586371_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4586371_right_fuel : Nat := 1
def small_4586371_right_count : Nat := 1
def small_4586371_right_encoded : String := "00000004"
theorem small_4586371_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4586371_right_root small_4586371_right_fuel small_4586371_right_count small_4586371_right_encoded = true := by
  decide +kernel
theorem small_4586371_right_covered : CoveredBy scale carrier boxes small_4586371_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4586371_right_root small_4586371_right_fuel small_4586371_right_count small_4586371_right_encoded small_4586371_right_checked

theorem cover_4586371 : CoveredBy scale carrier boxes root_4586371 := by
  apply coveredBy_split_literal root_4586371 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0115.root_4586376 small_4586371_right_root coord4 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0115.cover_4586376
  · exact small_4586371_right_covered
#print axioms cover_4586371

def root_4586370 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4586370_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4586370_right_fuel : Nat := 27
def small_4586370_right_count : Nat := 353
def small_4586370_right_encoded : String := "12073CFE0000000404548A01138670F604548A0313867102000000010CFD9C050F34D0FA0CFD9C07000000070F350CFC000000030CFD9C090F34D0FE000000070000000400000007000000020F350CFA000000020CFD9C070F34D0FC0CFD9C090F34D0FE000000070000000400000007000000030F350CFC000000030CFD9C090F34D0FE0C9A86FA0F878D050C9A86FC0F878D0700000007000000030F87510700000003022A45810000000800000007000000020F875105000000020C9A86FC0F878D07022A458113E1C4F6022A458313E1C502000000010AD3578910D100FE0000000A000000040000000713E201020AD3578910D100FE000000060000000400000007000000010000000000000007000000030F87510700000003022A458113E1C4F6022A458313E1C502000000010AD3578910D100FE0B4D43FA10804D05000000080000000210801105000000020B4D43FC00000006000000080000000410D13CFE000000040000000813E201020AD3578910D100FE000000080000000400000008000000010000000013E200F600000000022A458313E1C502000000010AD3578910D100FE0B4D43FA10804D050B4D43FC00000007000000080000000210801105000000020B4D43FC10804D0700000007000000031080110700000003033F67C100000008000000080000000410D13CFE000000040B4D43FA000000070000000A13E201020AD3578910D100FE00000008000000040000000800000001000000040F350CFE000000040C9A86FA0F878D050C9A86FC0000000700000008000000020F875105000000020C9A86FC0F878D070C9A86FE0000000700000007000000030F875107000000030C9A86FE0F878D09022A45810000000800000007000000040F87510900000004000000081386AD020CFD9C050F34D0FA0CFD9C07000000070F350CFC0000000300000008000000020F350CFA000000020CFD9C070F34D0FC0CFD9C090F34D0FE000000070000000400000007000000030F350CFC000000030CFD9C090F34D0FE0C9A86FA0F878D050C9A86FC0F878D07000000080000000300000008000000020F875105000000020C9A86FC0F878D07022A458113E1C4F6067ECE8312EA5902000000010AD3578910D100FE000000060000000400000006000000080000000013E200F600000000067ECE8312EA5902000000010AD3578910D100FE00000007000000040000000500000005000000030F8751070000000300000008000000040F350CFE000000040C9A86FA0F878D0500000008000000020F875105000000020C9A86FC0F878D070C9A86FE000000080F8751090000000400000005000000030000000800000001000000001386ACF60000000004548A0313867102000000010CFD9C050F34D0FA00000007000000020F350CFA000000020CFD9C070F34D0FC00000007000000030F350CFC000000030CFD9C090F34D0FE0C9A86FA0F878D0500000007000000020F875105000000020C9A86FC0F878D0700000007000000030F87510700000003067ECE8112EA58F6022A458313E1C502000000010AD3578910D100FE00000007000000040000000713E201020AD3578910D100FE000000080000000400000005000000010000000000000007000000040F350CFE000000040C9A86FA000000070F875105000000020C9A86FC000000070F87510700000003000000051386AD020CFD9C050F34D0FA00000007000000020F350CFA000000020CFD9C070F34D0FC00000007000000030F350CFC000000030CFD9C090F34D0FE0C9A86FA0F878D050C9A86FC0000000700000008000000020F875105000000020C9A86FC0F878D07067ECE8112EA58F6000000070000000000000005000000030F8751070000000300000005000000040F350CFE000000040C9A86FA0F878D0500000007000000020F875105000000020000000500000001"
theorem small_4586370_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4586370_right_root small_4586370_right_fuel small_4586370_right_count small_4586370_right_encoded = true := by
  decide +kernel
theorem small_4586370_right_covered : CoveredBy scale carrier boxes small_4586370_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4586370_right_root small_4586370_right_fuel small_4586370_right_count small_4586370_right_encoded small_4586370_right_checked

theorem cover_4586370 : CoveredBy scale carrier boxes root_4586370 := by
  apply coveredBy_split_literal root_4586370 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0115.root_4586371 small_4586370_right_root coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0115.cover_4586371
  · exact small_4586370_right_covered
#print axioms cover_4586370

def root_4586364 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4586364_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4586364_left_fuel : Nat := 1
def small_4586364_left_count : Nat := 1
def small_4586364_left_encoded : String := "00000003"
theorem small_4586364_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4586364_left_root small_4586364_left_fuel small_4586364_left_count small_4586364_left_encoded = true := by
  decide +kernel
theorem small_4586364_left_covered : CoveredBy scale carrier boxes small_4586364_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4586364_left_root small_4586364_left_fuel small_4586364_left_count small_4586364_left_encoded small_4586364_left_checked

theorem cover_4586364 : CoveredBy scale carrier boxes root_4586364 := by
  apply coveredBy_split_literal root_4586364 small_4586364_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0115.root_4586370 coord3 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_4586364_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0115.cover_4586370
#print axioms cover_4586364

def root_4586308 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4586308_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4586308_left_fuel : Nat := 13
def small_4586308_left_count : Nat := 27
def small_4586308_left_encoded : String := "120700FC08A91309120700FE04548A01138670F604548A031386710200000001000000071386AD020CFD9C05000000070F350CFA0000000204548A07000000071386ACFC0000000304548A090000000900000007000000010000000000000007000000040000000700000003"
theorem small_4586308_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4586308_left_root small_4586308_left_fuel small_4586308_left_count small_4586308_left_encoded = true := by
  decide +kernel
theorem small_4586308_left_covered : CoveredBy scale carrier boxes small_4586308_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4586308_left_root small_4586308_left_fuel small_4586308_left_count small_4586308_left_encoded small_4586308_left_checked

theorem cover_4586308 : CoveredBy scale carrier boxes root_4586308 := by
  apply coveredBy_split_literal root_4586308 small_4586308_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0115.root_4586364 coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_4586308_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0115.cover_4586364
#print axioms cover_4586308

def root_4586302 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4586302_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4586302_left_fuel : Nat := 1
def small_4586302_left_count : Nat := 1
def small_4586302_left_encoded : String := "00000002"
theorem small_4586302_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4586302_left_root small_4586302_left_fuel small_4586302_left_count small_4586302_left_encoded = true := by
  decide +kernel
theorem small_4586302_left_covered : CoveredBy scale carrier boxes small_4586302_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4586302_left_root small_4586302_left_fuel small_4586302_left_count small_4586302_left_encoded small_4586302_left_checked

theorem cover_4586302 : CoveredBy scale carrier boxes root_4586302 := by
  apply coveredBy_split_literal root_4586302 small_4586302_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0115.root_4586308 coord2 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_4586302_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0115.cover_4586308
#print axioms cover_4586302

def root_4586240 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4586240_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4586240_left_fuel : Nat := 14
def small_4586240_left_count : Nat := 29
def small_4586240_left_encoded : String := "120700FA08A913070000000712073CFC0000000308A91309120700FE04548A01138670F604548A031386710200000001000000071386AD0204548A05000000071386ACFA000000020CFD9C07000000070F350CFC0000000300000008000000010000000000000007000000040000000700000002"
theorem small_4586240_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4586240_left_root small_4586240_left_fuel small_4586240_left_count small_4586240_left_encoded = true := by
  decide +kernel
theorem small_4586240_left_covered : CoveredBy scale carrier boxes small_4586240_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4586240_left_root small_4586240_left_fuel small_4586240_left_count small_4586240_left_encoded small_4586240_left_checked

theorem cover_4586240 : CoveredBy scale carrier boxes root_4586240 := by
  apply coveredBy_split_literal root_4586240 small_4586240_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0115.root_4586302 coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_4586240_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0115.cover_4586302
#print axioms cover_4586240

def root_4586234 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4586234_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4586234_left_fuel : Nat := 1
def small_4586234_left_count : Nat := 1
def small_4586234_left_encoded : String := "00000001"
theorem small_4586234_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4586234_left_root small_4586234_left_fuel small_4586234_left_count small_4586234_left_encoded = true := by
  decide +kernel
theorem small_4586234_left_covered : CoveredBy scale carrier boxes small_4586234_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4586234_left_root small_4586234_left_fuel small_4586234_left_count small_4586234_left_encoded small_4586234_left_checked

theorem cover_4586234 : CoveredBy scale carrier boxes root_4586234 := by
  apply coveredBy_split_literal root_4586234 small_4586234_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0115.root_4586240 coord1 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_4586234_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0115.cover_4586240
#print axioms cover_4586234

def root_4586233 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4586233_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4586233_right_fuel : Nat := 27
def small_4586233_right_count : Nat := 343
def small_4586233_right_encoded : String := "12073D0208A91305120700FA08A91307120700FC08A91309120700FE0000000700000004000000070000000312073CFC0000000308A91309120700FE04548A01138670F60CFD9C030F34D102000000010000000800000008000000001386ACF6000000000CFD9C030F34D10200000001000000080000000800000004000000080000000212073CFA0000000208A91307120700FC08A91309120700FE04548A01138670F60CFD9C030F34D102000000010CFD9C0500000007000000090000000900000000000000090000000412073CFE0000000404548A01138670F60CFD9C030F34D102000000010CFD9C05000000070F350CFA00000002000000090F350D020000000900000001000000001386ACF6000000000CFD9C030F34D1020000000100000007000000090000000312073CFC0000000308A91309120700FE04548A01138670F60CFD9C030F34D102000000010CFD9C050F34D0FA0CFD9C070F34D0FC04548A09138670FE022A458100000008000000070000000400000007000000030F350CFC0000000300000008000000020F350CFA000000020CFD9C070F34D0FC04548A09000000091386ACFE0000000400000009000000030F350CFC0000000304548A09138670FE0C9A86FA0F878D050C9A86FC0F878D07022A458100000008000000090000000300000008000000020F875105000000020C9A86FC0F878D0700000009000000030F87510700000003022A458113E1C4F60AD3578310D1010200000001022A45890000000600000006000000080000000013E200F6000000000AD3578310D10102000000010000000900000008000000041386ACFE000000040C9A86FA0F878D0500000008000000020F875105000000020C9A86FC0F878D07022A4581000000080000000900000003000000080F350D020CFD9C050F34D0FA00000008000000020F350CFA000000020CFD9C070F34D0FC00000009000000030F350CFC0000000304548A09138670FE0C9A87020F87510300000001000000050F878D030C9A86FA000000080000000900000001000000040000000800000001000000001386ACF6000000000CFD9C030F34D102000000010CFD9C050F34D0FA0CFD9C070F34D0FC00000007000000030F350CFC0000000304548A09138670FE000000080000000400000008000000020F350CFA000000020CFD9C070F34D0FC00000009000000030F350CFC0000000304548A09138670FE0C9A86FA0F878D050C9A86FC000000090F87510700000003067ECE8100000008000000080000000200000009000000041386ACFE000000040C9A86FA0F878D0500000008000000020F87510500000002000000050F350D020CFD9C050F34D0FA0CFD9C070000000800000008000000020F350CFA000000020CFD9C07000000090F350CFC0000000304548A090000000900000005000000010000000412073CFE0000000404548A01138670F60CFD9C030F34D102000000010CFD9C050F34D0FA0CFD9C070000000800000008000000020F350CFA000000020CFD9C070F34D0FC0CFD9C090F34D0FE0C9A86FA0000000800000009000000040F350CFE000000040C9A86FA0000000800000009000000030F350CFC000000030CFD9C090F34D0FE0000000800000004000000050F350D020CFD9C05000000080F350CFA000000020CFD9C070F34D0FC0CFD9C090000000900000005000000030000000500000001000000001386ACF6000000000CFD9C030F34D102000000010CFD9C050F34D0FA0CFD9C070000000700000008000000020F350CFA000000020CFD9C070F34D0FC00000009000000030F350CFC000000030CFD9C090F34D0FE0000000500000004000000050F350D020CFD9C050F34D0FA0000000800000002000000050000000100000001"
theorem small_4586233_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4586233_right_root small_4586233_right_fuel small_4586233_right_count small_4586233_right_encoded = true := by
  decide +kernel
theorem small_4586233_right_covered : CoveredBy scale carrier boxes small_4586233_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4586233_right_root small_4586233_right_fuel small_4586233_right_count small_4586233_right_encoded small_4586233_right_checked

theorem cover_4586233 : CoveredBy scale carrier boxes root_4586233 := by
  apply coveredBy_split_literal root_4586233 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0115.root_4586234 small_4586233_right_root coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0115.cover_4586234
  · exact small_4586233_right_covered
#print axioms cover_4586233

def root_4586228 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4586228_right_root : ZRayBox := fun j => (#[⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4586228_right_fuel : Nat := 1
def small_4586228_right_count : Nat := 1
def small_4586228_right_encoded : String := "00000000"
theorem small_4586228_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4586228_right_root small_4586228_right_fuel small_4586228_right_count small_4586228_right_encoded = true := by
  decide +kernel
theorem small_4586228_right_covered : CoveredBy scale carrier boxes small_4586228_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4586228_right_root small_4586228_right_fuel small_4586228_right_count small_4586228_right_encoded small_4586228_right_checked

theorem cover_4586228 : CoveredBy scale carrier boxes root_4586228 := by
  apply coveredBy_split_literal root_4586228 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0115.root_4586233 small_4586228_right_root coord0 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0115.cover_4586233
  · exact small_4586228_right_covered
#print axioms cover_4586228

def root_4586227 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4586227 : CoveredBy scale carrier boxes root_4586227 := by
  apply coveredBy_split_literal root_4586227 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0115.root_4586228 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1723.root coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0115.cover_4586228
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1723.covered
#print axioms cover_4586227

def root_4586222 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4586222_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4586222_right_fuel : Nat := 1
def small_4586222_right_count : Nat := 1
def small_4586222_right_encoded : String := "00000004"
theorem small_4586222_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4586222_right_root small_4586222_right_fuel small_4586222_right_count small_4586222_right_encoded = true := by
  decide +kernel
theorem small_4586222_right_covered : CoveredBy scale carrier boxes small_4586222_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4586222_right_root small_4586222_right_fuel small_4586222_right_count small_4586222_right_encoded small_4586222_right_checked

theorem cover_4586222 : CoveredBy scale carrier boxes root_4586222 := by
  apply coveredBy_split_literal root_4586222 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0115.root_4586227 small_4586222_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0115.cover_4586227
  · exact small_4586222_right_covered
#print axioms cover_4586222

def root_4586221 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4586221_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4586221_right_fuel : Nat := 25
def small_4586221_right_count : Nat := 245
def small_4586221_right_encoded : String := "1151E9090000000408A91301120700F608A91303120701020000000108A913050000000712073CFA0000000208A913070000000712073CFC00000003050000FE135D810904548A01138670F604548A0313867102000000010CFD9C05000000070F350CFA000000020CFD9C07000000070F350CFC000000030C9A86FA000000070F875105000000020C9A86FC000000070F87510700000003078000FE00000007000000081386AD020CFD9C05000000070F350CFA000000020CFD9C07000000070F350CFC000000030C9A86FA000000080F875105000000020000000500000001000000001386ACF60000000004548A031386710200000001000000071386AD020CFD9C05000000070F350CFA000000020CFD9C0700000007000000050000000100000004135D45090000000404548A01138670F604548A0313867102000000010CFD9C05000000070F350CFA000000020CFD9C07000000070F350CFC000000030C9A86FA000000070F875105000000020C9A86FC000000070F87510700000003000000051386AD020CFD9C050F34D0FA00000007000000020F350CFA000000020CFD9C070F34D0FC00000007000000030000000500000001000000001386ACF60000000004548A03000000071386AD020CFD9C0500000007000000050000000112073D0208A91305120700FA08A9130700000007000000080000000212073CFA0000000208A91307120700FC050000FE135D810904548A01138670F60CFD9C030F34D102000000010000000700000009000000000000000700000004135D45090000000404548A01138670F60CFD9C030F34D10200000001000000070F350D020CFD9C05000000070F350CFA00000002000000090000000100000000000000070000000312073CFC00000003050000FE135D810904548A01138670F60CFD9C030F34D102000000010CFD9C05000000080F350CFA000000020CFD9C07000000080000000500000008000000001386ACF6000000000CFD9C030F34D102000000010CFD9C0500000007000000050000000500000004135D45090000000404548A01138670F60CFD9C030F34D102000000010CFD9C050000000800000005000000050000000000000005000000010000000012073CF60000000008A91303120701020000000108A913050000000712073CFA0000000208A913070000000712073CFC00000003050000FE135D81090CFD9C010F34D0F600000007000000000000000700000004135D4509000000040CFD9C010F34D0F600000007000000000000000512073D0208A91305120700FA000000070000000212073CFA0000000208A91307120700FC00000007000000030000000500000001"
theorem small_4586221_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4586221_right_root small_4586221_right_fuel small_4586221_right_count small_4586221_right_encoded = true := by
  decide +kernel
theorem small_4586221_right_covered : CoveredBy scale carrier boxes small_4586221_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4586221_right_root small_4586221_right_fuel small_4586221_right_count small_4586221_right_encoded small_4586221_right_checked

theorem cover_4586221 : CoveredBy scale carrier boxes root_4586221 := by
  apply coveredBy_split_literal root_4586221 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0115.root_4586222 small_4586221_right_root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0115.cover_4586222
  · exact small_4586221_right_covered
#print axioms cover_4586221

def root_4586216 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4586216_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4586216_right_fuel : Nat := 1
def small_4586216_right_count : Nat := 1
def small_4586216_right_encoded : String := "00000003"
theorem small_4586216_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4586216_right_root small_4586216_right_fuel small_4586216_right_count small_4586216_right_encoded = true := by
  decide +kernel
theorem small_4586216_right_covered : CoveredBy scale carrier boxes small_4586216_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4586216_right_root small_4586216_right_fuel small_4586216_right_count small_4586216_right_encoded small_4586216_right_checked

theorem cover_4586216 : CoveredBy scale carrier boxes root_4586216 := by
  apply coveredBy_split_literal root_4586216 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0115.root_4586221 small_4586216_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0115.cover_4586221
  · exact small_4586216_right_covered
#print axioms cover_4586216

def root_4602714 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4602714_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4602714_right_fuel : Nat := 22
def small_4602714_right_count : Nat := 139
def small_4602714_right_encoded : String := "12073CFE00000004050000FC135D810704548A01138670F604548A0313867102000000010CFD9C050F34D0FA00000008000000020F350CFA000000020CFD9C090F34D0FE0C9A86FA000000080F87510500000002078000FC128A7D07022A45810000000813E200F600000000022A458313E1C502000000010AD3578910D100FE000000080000000400000008000000080000000300000008000000040F350CFE00000004000000081386AD020CFD9C05000000080F350CFA000000020CFD9C090F34D0FE00000008000000040000000800000001000000001386ACF60000000004548A0313867102000000010CFD9C050F34D0FA00000008000000020F350CFA000000020CFD9C090F34D0FE0C9A86FA0F878D0500000008000000020F87510500000002078000FC128A7D07067ECE8112EA58F6022A458313E1C502000000010AD3578910D100FE00000008000000040000000500000005000000000000000500000003128A410700000003067ECE810000000800000005000000040F350CFE000000040C9A86FA000000080F87510500000002000000051386AD020CFD9C05000000080F350CFA000000020CFD9C090F34D0FE0000000800000004000000050000000100000003135D45070000000304548A01138670F604548A0313867102000000010000000800000008000000001386ACF60000000004548A0313867102000000010CFD9C05000000080F350CFA000000020CFD9C090F34D0FE00000008000000040000000500000008"
theorem small_4602714_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4602714_right_root small_4602714_right_fuel small_4602714_right_count small_4602714_right_encoded = true := by
  decide +kernel
theorem small_4602714_right_covered : CoveredBy scale carrier boxes small_4602714_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4602714_right_root small_4602714_right_fuel small_4602714_right_count small_4602714_right_encoded small_4602714_right_checked

theorem cover_4602714 : CoveredBy scale carrier boxes root_4602714 := by
  apply coveredBy_split_literal root_4602714 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1724.root small_4602714_right_root coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1724.covered
  · exact small_4602714_right_covered
#print axioms cover_4602714

def root_4602708 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4602708_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4602708_left_fuel : Nat := 1
def small_4602708_left_count : Nat := 1
def small_4602708_left_encoded : String := "00000002"
theorem small_4602708_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4602708_left_root small_4602708_left_fuel small_4602708_left_count small_4602708_left_encoded = true := by
  decide +kernel
theorem small_4602708_left_covered : CoveredBy scale carrier boxes small_4602708_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4602708_left_root small_4602708_left_fuel small_4602708_left_count small_4602708_left_encoded small_4602708_left_checked

theorem cover_4602708 : CoveredBy scale carrier boxes root_4602708 := by
  apply coveredBy_split_literal root_4602708 small_4602708_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0115.root_4602714 coord2 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_4602708_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0115.cover_4602714
#print axioms cover_4602708

def root_4602676 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4602676_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4602676_left_fuel : Nat := 8
def small_4602676_left_count : Nat := 15
def small_4602676_left_encoded : String := "120700FA08A91309120700FE050000FC135D810704548A01000000081386ACF600000000000000080000000300000008000000040000000800000002"
theorem small_4602676_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4602676_left_root small_4602676_left_fuel small_4602676_left_count small_4602676_left_encoded = true := by
  decide +kernel
theorem small_4602676_left_covered : CoveredBy scale carrier boxes small_4602676_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4602676_left_root small_4602676_left_fuel small_4602676_left_count small_4602676_left_encoded small_4602676_left_checked

theorem cover_4602676 : CoveredBy scale carrier boxes root_4602676 := by
  apply coveredBy_split_literal root_4602676 small_4602676_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0115.root_4602708 coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_4602676_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0115.cover_4602708
#print axioms cover_4602676

def root_4602670 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4602670_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4602670_left_fuel : Nat := 1
def small_4602670_left_count : Nat := 1
def small_4602670_left_encoded : String := "00000001"
theorem small_4602670_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4602670_left_root small_4602670_left_fuel small_4602670_left_count small_4602670_left_encoded = true := by
  decide +kernel
theorem small_4602670_left_covered : CoveredBy scale carrier boxes small_4602670_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4602670_left_root small_4602670_left_fuel small_4602670_left_count small_4602670_left_encoded small_4602670_left_checked

theorem cover_4602670 : CoveredBy scale carrier boxes root_4602670 := by
  apply coveredBy_split_literal root_4602670 small_4602670_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0115.root_4602676 coord1 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_4602670_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0115.cover_4602676
#print axioms cover_4602670

def root_4602669 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4602669_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4602669_right_fuel : Nat := 22
def small_4602669_right_count : Nat := 93
def small_4602669_right_encoded : String := "12073D0208A91305120700FA000000080000000212073CFA0000000208A91309120700FE050000FC135D810704548A01138670F60CFD9C030F34D102000000010CFD9C05000000080F350CFA0000000204548A09138670FE0C9A86FA000000080F87510500000002078000FC128A7D07022A458100000008000000080000000300000008000000040000000800000008000000001386ACF6000000000CFD9C030F34D102000000010CFD9C050F34D0FA00000008000000020F350CFA0000000204548A09138670FE0C9A86FA0000000A0F87510500000002078000FC128A7D07067ECE8112EA58F6000000050000000000000005000000030000000A00000004000000050F350D02000000080000000100000003135D45070000000304548A01000000081386ACF6000000000CFD9C030F34D1020000000100000008000000080000000412073CFE00000004050000FC135D810704548A01000000081386ACF60000000000000008000000030000000800000001"
theorem small_4602669_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4602669_right_root small_4602669_right_fuel small_4602669_right_count small_4602669_right_encoded = true := by
  decide +kernel
theorem small_4602669_right_covered : CoveredBy scale carrier boxes small_4602669_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4602669_right_root small_4602669_right_fuel small_4602669_right_count small_4602669_right_encoded small_4602669_right_checked

theorem cover_4602669 : CoveredBy scale carrier boxes root_4602669 := by
  apply coveredBy_split_literal root_4602669 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0115.root_4602670 small_4602669_right_root coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0115.cover_4602670
  · exact small_4602669_right_covered
#print axioms cover_4602669

def root_4602664 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4602664_right_root : ZRayBox := fun j => (#[⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4602664_right_fuel : Nat := 1
def small_4602664_right_count : Nat := 1
def small_4602664_right_encoded : String := "00000000"
theorem small_4602664_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4602664_right_root small_4602664_right_fuel small_4602664_right_count small_4602664_right_encoded = true := by
  decide +kernel
theorem small_4602664_right_covered : CoveredBy scale carrier boxes small_4602664_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4602664_right_root small_4602664_right_fuel small_4602664_right_count small_4602664_right_encoded small_4602664_right_checked

theorem cover_4602664 : CoveredBy scale carrier boxes root_4602664 := by
  apply coveredBy_split_literal root_4602664 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0115.root_4602669 small_4602664_right_root coord0 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0115.cover_4602669
  · exact small_4602664_right_covered
#print axioms cover_4602664

def root_4602663 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4602663_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4602663_right_fuel : Nat := 32
def small_4602663_right_count : Nat := 463
def small_4602663_right_encoded : String := "12073CF60000000008A91303120701020000000108A91305120700FA08A91309120700FE050000FC135D81070CFD9C010F34D0F6000000060000000000000006000000030000000600000004000000080000000212073CFA0000000208A91309120700FE050000FC135D81070CFD9C010F34D0F604548A0313867102000000010CFD9C050F34D0FA00000006000000020F350CFA0000000204548A09138670FE0C9A86FA0F878D05078000FC128A7D070AD3578110D100F60000000600000000000000060000000300000006000000020F87510500000002078000FC128A7D070AD3578110D100F6022A458313E1C50200000001022A45890000000613E200FE000000040B4D43FA00000006108011050000000208C000FC11FC250700000006000000030000000613E20102022A45890000000A13E200FE000000040B4D43FA0000000A10801105000000020000000A000000010000000010D13CF600000000022A45830000000613E20102022A45890000000A000000050000000100000003128A4107000000030000000A000000041386ACFE000000040C9A86FA0F878D05078000FC128A7D070AD3578110D100F60000000600000000000000060000000300000006000000020F87510500000002078000FC128A7D070AD3578110D100F6022A458313E1C50200000001067ECE8912EA58FE0B4D43FA00000006108011050000000208C000FC0000000500000006000000040000000500000005000000000000000500000003128A4107000000030AD3578110D100F6022A4583000000060000000500000000000000051386AD020CFD9C050F34D0FA04548A09138670FE078000FC128A7D070000000800000003000000060000000400000008000000020F350CFA0000000204548A09138670FE0C9A86FA0F878D05078000FC128A7D070AD3578110D100F60000000A000000000000000A000000030000000A000000020F87510500000002078000FC128A7D070AD3578110D100F6067ECE8312EA5902000000010000000A000000050000000000000005000000030000000A000000041386ACFE000000040C9A86FA0F878D0500000008000000020F875105000000020000000500000001000000000F350CF60000000004548A0313867102000000010CFD9C050F34D0FA00000006000000020F350CFA0000000204548A09138670FE0C9A86F60F878D010C9A86FA000000060F87510500000002078000FC128A7D07022A45830000000613E20102022A45890000000600000005000000010000000300000006000000000F875101000000000C9A86FA0000000600000006000000041386ACFE000000040C9A86F60F878D010C9A86FA000000060F8751050000000200000005000000000F87510100000000000000051386AD020CFD9C050F34D0FA04548A090000000600000006000000020F350CFA0000000204548A09138670FE0C9A86F60F878D010C9A86FA0F878D05078000FC0000000500000006000000020F8751050000000200000005000000000F875101000000000000000500000004000000050000000100000003135D4507000000030CFD9C010F34D0F604548A0313867102000000010CFD9C05000000060F350CFA0000000204548A0900000006000000061386AD020CFD9C050F34D0FA00000006000000020F350CFA0000000204548A090000000A0000000500000001000000000F350CF60000000004548A031386710200000001000000061386AD020CFD9C050000000600000005000000010000000412073CFE00000004050000FC135D81070CFD9C010F34D0F604548A0313867102000000010CFD9C050F34D0FA00000007000000020F350CFA000000020CFD9C090F34D0FE0C9A86FA0F878D05078000FC0000000700000006000000020F875105000000020000000500000004000000051386AD020CFD9C05000000080000000500000001000000000F350CF60000000004548A0313867102000000010CFD9C050F34D0FA0000000600000002000000050000000500000003135D4507000000030CFD9C010F34D0F604548A0313867102000000010CFD9C05000000080000000500000005000000000000000512073D0208A91305120700FA08A91309120700FE050000FC135D81070CFD9C01000000080F350CF6000000000CFD9C030F34D10200000001000000080000000800000003135D4507000000030CFD9C010F34D0F60000000800000000000000060000000412073CFE00000004050000FC00000008000000080000000212073CFA0000000208A91309120700FE050000FC135D81070CFD9C010F34D0F60CFD9C030F34D102000000010CFD9C050F34D0FA00000008000000020F350CFA0000000204548A09138670FE0000000500000004000000050F350D020000000500000001000000000F350CF6000000000CFD9C030F34D102000000010CFD9C050F34D0FA0000000800000002000000050000000500000003135D4507000000030CFD9C010F34D0F60CFD9C030F34D1020000000100000008000000050000000000000005000000040000000500000001"
theorem small_4602663_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4602663_right_root small_4602663_right_fuel small_4602663_right_count small_4602663_right_encoded = true := by
  decide +kernel
theorem small_4602663_right_covered : CoveredBy scale carrier boxes small_4602663_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4602663_right_root small_4602663_right_fuel small_4602663_right_count small_4602663_right_encoded small_4602663_right_checked

theorem cover_4602663 : CoveredBy scale carrier boxes root_4602663 := by
  apply coveredBy_split_literal root_4602663 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0115.root_4602664 small_4602663_right_root coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0115.cover_4602664
  · exact small_4602663_right_covered
#print axioms cover_4602663

def root_4602658 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4602658_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4602658_right_fuel : Nat := 1
def small_4602658_right_count : Nat := 1
def small_4602658_right_encoded : String := "00000004"
theorem small_4602658_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4602658_right_root small_4602658_right_fuel small_4602658_right_count small_4602658_right_encoded = true := by
  decide +kernel
theorem small_4602658_right_covered : CoveredBy scale carrier boxes small_4602658_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4602658_right_root small_4602658_right_fuel small_4602658_right_count small_4602658_right_encoded small_4602658_right_checked

theorem cover_4602658 : CoveredBy scale carrier boxes root_4602658 := by
  apply coveredBy_split_literal root_4602658 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0115.root_4602663 small_4602658_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0115.cover_4602663
  · exact small_4602658_right_covered
#print axioms cover_4602658

def root_4602657 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4602657_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4602657_right_fuel : Nat := 13
def small_4602657_right_count : Nat := 37
def small_4602657_right_encoded : String := "1151E9090000000408A91301120700F608A91303120701020000000108A913050000000812073CFA00000002050000FC135D8107050000FE135D810904548A01000000080000000800000004135D45090000000404548A0100000008000000050000000300000008000000080000000012073CF60000000008A91303120701020000000108A91305000000080000000500000005"
theorem small_4602657_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4602657_right_root small_4602657_right_fuel small_4602657_right_count small_4602657_right_encoded = true := by
  decide +kernel
theorem small_4602657_right_covered : CoveredBy scale carrier boxes small_4602657_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4602657_right_root small_4602657_right_fuel small_4602657_right_count small_4602657_right_encoded small_4602657_right_checked

theorem cover_4602657 : CoveredBy scale carrier boxes root_4602657 := by
  apply coveredBy_split_literal root_4602657 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0115.root_4602658 small_4602657_right_root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0115.cover_4602658
  · exact small_4602657_right_covered
#print axioms cover_4602657

def root_4602651 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4602651_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4602651_left_fuel : Nat := 1
def small_4602651_left_count : Nat := 1
def small_4602651_left_encoded : String := "00000003"
theorem small_4602651_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4602651_left_root small_4602651_left_fuel small_4602651_left_count small_4602651_left_encoded = true := by
  decide +kernel
theorem small_4602651_left_covered : CoveredBy scale carrier boxes small_4602651_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4602651_left_root small_4602651_left_fuel small_4602651_left_count small_4602651_left_encoded small_4602651_left_checked

theorem cover_4602651 : CoveredBy scale carrier boxes root_4602651 := by
  apply coveredBy_split_literal root_4602651 small_4602651_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0115.root_4602657 coord3 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_4602651_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0115.cover_4602657
#print axioms cover_4602651

def root_4586215 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4586215 : CoveredBy scale carrier boxes root_4586215 := by
  apply coveredBy_split_literal root_4586215 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0115.root_4586216 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0115.root_4602651 coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0115.cover_4586216
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0115.cover_4602651
#print axioms cover_4586215

def root_4586210 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4586210_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4586210_right_fuel : Nat := 1
def small_4586210_right_count : Nat := 1
def small_4586210_right_encoded : String := "00000002"
theorem small_4586210_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4586210_right_root small_4586210_right_fuel small_4586210_right_count small_4586210_right_encoded = true := by
  decide +kernel
theorem small_4586210_right_covered : CoveredBy scale carrier boxes small_4586210_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4586210_right_root small_4586210_right_fuel small_4586210_right_count small_4586210_right_encoded small_4586210_right_checked

theorem cover_4586210 : CoveredBy scale carrier boxes root_4586210 := by
  apply coveredBy_split_literal root_4586210 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0115.root_4586215 small_4586210_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0115.cover_4586215
  · exact small_4586210_right_covered
#print axioms cover_4586210

def root_4607300 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4607300_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4607300_right_fuel : Nat := 26
def small_4607300_right_count : Nat := 297
def small_4607300_right_encoded : String := "12073CFE00000004050000FA135D810504548A01138670F604548A0313867102000000010CFD9C070F34D0FC0000000A000000030F350CFC000000030CFD9C090F34D0FE0C9A86FC0F878D07078000FA128A7D05022A4581000000060000000A0000000200000006000000030F87510700000003078000FA128A7D05022A458113E1C4F6022A458313E1C502000000010AD3578910D100FE000000060000000400000006000000060000000013E200F600000000022A458313E1C502000000010AD3578910D100FE0B4D43FC00000006108011070000000308C000FA11FC25050000000A0000000200000006000000040000000A13E201020AD3578910D100FE0B4D43FC0000000610801107000000030000000600000004000000050000000100000002128A41050000000200000006000000040F350CFE000000040C9A86FC0F878D070000000A000000030F875107000000030C9A86FE0F878D09078000FA128A7D05022A45810000000A0000000A000000020000000A000000040F875109000000040000000A1386AD020CFD9C070F34D0FC0CFD9C090F34D0FE078000FA128A7D05000000090000000200000006000000040000000A000000030F350CFC000000030CFD9C090F34D0FE0C9A86FC0F878D07078000FA128A7D05022A45810000000613E200F600000000067ECE8312EA59020000000100000006000000050000000200000006000000030F87510700000003078000FA128A7D05022A458100000006000000050000000200000006000000040F350CFE000000040C9A86FC0F878D070C9A86FE0F878D09078000FA0000000500000006000000040F8751090000000400000005000000030F875107000000030000000500000001000000001386ACF60000000004548A0313867102000000010CFD9C070F34D0FC0000000A000000030F350CFC000000030CFD9C090F34D0FE0C9A86FC0F878D07078000FA128A7D05067ECE810000000A00000007000000020000000A000000030F87510700000003078000FA128A7D05067ECE8112EA58F6022A458313E1C502000000010AD3578910D100FE0B4D43FC0000000A108011070000000308C000FA000000050000000A000000040000000500000005000000000000000500000002128A410500000002067ECE8112EA58F6022A45830000000A000000050000000000000005000000040F350CFE000000040C9A86FC0F878D070000000A000000030F87510700000003000000051386AD020CFD9C070F34D0FC00000009000000030F350CFC000000030CFD9C090F34D0FE0C9A86FC0F878D0700000009000000030F875107000000030000000500000004000000050000000100000002135D45050000000204548A01138670F604548A0313867102000000010CFD9C070000000A0F350CFC000000030CFD9C090F34D0FE00000006000000040000000A1386AD020CFD9C070F34D0FC00000006000000030F350CFC000000030CFD9C090F34D0FE00000006000000040000000500000001000000001386ACF60000000004548A0313867102000000010CFD9C070000000A0F350CFC000000030CFD9C090F34D0FE0000000A00000004000000051386AD020CFD9C070F34D0FC00000009000000030000000500000001"
theorem small_4607300_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4607300_right_root small_4607300_right_fuel small_4607300_right_count small_4607300_right_encoded = true := by
  decide +kernel
theorem small_4607300_right_covered : CoveredBy scale carrier boxes small_4607300_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4607300_right_root small_4607300_right_fuel small_4607300_right_count small_4607300_right_encoded small_4607300_right_checked

theorem cover_4607300 : CoveredBy scale carrier boxes root_4607300 := by
  apply coveredBy_split_literal root_4607300 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1725.root small_4607300_right_root coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1725.covered
  · exact small_4607300_right_covered
#print axioms cover_4607300

def root_4607294 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4607294_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4607294_left_fuel : Nat := 1
def small_4607294_left_count : Nat := 1
def small_4607294_left_encoded : String := "00000003"
theorem small_4607294_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4607294_left_root small_4607294_left_fuel small_4607294_left_count small_4607294_left_encoded = true := by
  decide +kernel
theorem small_4607294_left_covered : CoveredBy scale carrier boxes small_4607294_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4607294_left_root small_4607294_left_fuel small_4607294_left_count small_4607294_left_encoded small_4607294_left_checked

theorem cover_4607294 : CoveredBy scale carrier boxes root_4607294 := by
  apply coveredBy_split_literal root_4607294 small_4607294_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0115.root_4607300 coord3 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_4607294_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0115.cover_4607300
#print axioms cover_4607294

def root_4607244 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4607244_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4607244_left_fuel : Nat := 9
def small_4607244_left_count : Nat := 25
def small_4607244_left_encoded : String := "120700FC08A91309120700FE050000FA135D810504548A01138670F604548A030000000A00000009000000000000000900000002000000090000000412073CFE00000004050000FA135D810504548A010000000A00000007000000020000000A00000003"
theorem small_4607244_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4607244_left_root small_4607244_left_fuel small_4607244_left_count small_4607244_left_encoded = true := by
  decide +kernel
theorem small_4607244_left_covered : CoveredBy scale carrier boxes small_4607244_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4607244_left_root small_4607244_left_fuel small_4607244_left_count small_4607244_left_encoded small_4607244_left_checked

theorem cover_4607244 : CoveredBy scale carrier boxes root_4607244 := by
  apply coveredBy_split_literal root_4607244 small_4607244_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0115.root_4607294 coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_4607244_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0115.cover_4607294
#print axioms cover_4607244

def root_4607238 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4607238_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4607238_left_fuel : Nat := 1
def small_4607238_left_count : Nat := 1
def small_4607238_left_encoded : String := "00000001"
theorem small_4607238_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4607238_left_root small_4607238_left_fuel small_4607238_left_count small_4607238_left_encoded = true := by
  decide +kernel
theorem small_4607238_left_covered : CoveredBy scale carrier boxes small_4607238_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4607238_left_root small_4607238_left_fuel small_4607238_left_count small_4607238_left_encoded small_4607238_left_checked

theorem cover_4607238 : CoveredBy scale carrier boxes root_4607238 := by
  apply coveredBy_split_literal root_4607238 small_4607238_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0115.root_4607244 coord1 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_4607238_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0115.cover_4607244
#print axioms cover_4607238

def root_4607237 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4607237_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4607237_right_fuel : Nat := 21
def small_4607237_right_count : Nat := 177
def small_4607237_right_encoded : String := "12073D0208A91307120700FC08A913090000000912073CFE00000004050000FA135D810504548A01138670F60CFD9C030F34D102000000010000000900000009000000001386ACF6000000000CFD9C03000000090000000900000002135D45050000000204548A01138670F60CFD9C030000000A0F350D020000000A00000001000000001386ACF6000000000CFD9C0300000009000000090000000312073CFC0000000308A91309120700FE050000FA135D810504548A01138670F60CFD9C030F34D102000000010CFD9C070F34D0FC00000009000000030F350CFC0000000304548A09138670FE0C9A86FC000000060F87510700000003078000FA128A7D05022A458100000006000000090000000200000006000000041386ACFE000000040C9A86FC000000060F87510700000003078000FA128A7D05022A4581000000060000000500000002000000060F350D020CFD9C07000000090F350CFC0000000304548A09000000090000000500000001000000001386ACF6000000000CFD9C030F34D102000000010CFD9C07000000090F350CFC0000000304548A0900000009000000050000000900000002135D45050000000204548A01138670F60CFD9C030F34D10200000001000000090000000900000000000000090000000412073CFE00000004050000FA135D810504548A01138670F60CFD9C030F34D102000000010CFD9C070F34D0FC0CFD9C090000000900000005000000030F350CFC000000030CFD9C090F34D0FE0000000500000004000000050F350D020CFD9C070F34D0FC00000005000000030000000500000001000000001386ACF6000000000CFD9C030F34D102000000010CFD9C070F34D0FC0000000900000003000000050000000500000002135D45050000000204548A01138670F60CFD9C030F34D102000000010CFD9C070F34D0FC00000006000000030000000500000005000000000000000500000001"
theorem small_4607237_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4607237_right_root small_4607237_right_fuel small_4607237_right_count small_4607237_right_encoded = true := by
  decide +kernel
theorem small_4607237_right_covered : CoveredBy scale carrier boxes small_4607237_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4607237_right_root small_4607237_right_fuel small_4607237_right_count small_4607237_right_encoded small_4607237_right_checked

theorem cover_4607237 : CoveredBy scale carrier boxes root_4607237 := by
  apply coveredBy_split_literal root_4607237 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0115.root_4607238 small_4607237_right_root coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0115.cover_4607238
  · exact small_4607237_right_covered
#print axioms cover_4607237

def root_4607232 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4607232_right_root : ZRayBox := fun j => (#[⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4607232_right_fuel : Nat := 1
def small_4607232_right_count : Nat := 1
def small_4607232_right_encoded : String := "00000000"
theorem small_4607232_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4607232_right_root small_4607232_right_fuel small_4607232_right_count small_4607232_right_encoded = true := by
  decide +kernel
theorem small_4607232_right_covered : CoveredBy scale carrier boxes small_4607232_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4607232_right_root small_4607232_right_fuel small_4607232_right_count small_4607232_right_encoded small_4607232_right_checked

theorem cover_4607232 : CoveredBy scale carrier boxes root_4607232 := by
  apply coveredBy_split_literal root_4607232 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0115.root_4607237 small_4607232_right_root coord0 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0115.cover_4607237
  · exact small_4607232_right_covered
#print axioms cover_4607232

def root_4607231 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4607231_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4607231_right_fuel : Nat := 27
def small_4607231_right_count : Nat := 209
def small_4607231_right_encoded : String := "12073CF60000000008A91303120701020000000108A91307120700FC08A913090000000912073CFE00000004000000090000000312073CFC0000000308A91309120700FE050000FA135D81050CFD9C010F34D0F604548A0313867102000000010CFD9C070F34D0FC00000009000000030F350CFC0000000304548A09138670FE0C9A86FC000000090F87510700000003078000FA128A7D050AD3578110D100F6022A458313E1C50200000001022A458900000009000000090000000900000000000000090000000200000009000000041386ACFE000000040C9A86FC0F878D0700000009000000030F87510700000003078000FA128A7D050AD3578110D100F6022A458313E1C50200000001067ECE89000000090000000500000005000000000000000500000002128A4105000000020AD3578110D100F60000000900000000000000051386AD020CFD9C07000000090F350CFC0000000304548A09000000090000000900000001000000000F350CF60000000004548A0313867102000000010CFD9C07000000090F350CFC0000000304548A09000000091386ACFE000000040C9A86F600000009000000090000000900000002135D4505000000020CFD9C010F34D0F604548A031386710200000001000000090000000900000000000000090000000412073CFE00000004050000FA135D81050CFD9C010F34D0F604548A0313867102000000010CFD9C070F34D0FC00000007000000030F350CFC000000030CFD9C090F34D0FE0C9A86FC0F878D07078000FA0000000700000009000000030F875107000000030000000500000004000000051386AD020CFD9C070F34D0FC00000009000000030000000500000001000000000F350CF60000000004548A0313867102000000010CFD9C070F34D0FC0000000700000003000000050000000500000002135D4505000000020CFD9C010F34D0F604548A0313867102000000010CFD9C070000000A0000000500000005000000000000000512073D0208A91307120700FC08A913090000000912073CFE00000004050000FA00000009000000090000000312073CFC0000000308A91309120700FE050000FA135D81050CFD9C010F34D0F60000000900000000000000090000000200000009000000040000000500000001"
theorem small_4607231_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4607231_right_root small_4607231_right_fuel small_4607231_right_count small_4607231_right_encoded = true := by
  decide +kernel
theorem small_4607231_right_covered : CoveredBy scale carrier boxes small_4607231_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4607231_right_root small_4607231_right_fuel small_4607231_right_count small_4607231_right_encoded small_4607231_right_checked

theorem cover_4607231 : CoveredBy scale carrier boxes root_4607231 := by
  apply coveredBy_split_literal root_4607231 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0115.root_4607232 small_4607231_right_root coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0115.cover_4607232
  · exact small_4607231_right_covered
#print axioms cover_4607231

def root_4607226 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4607226_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4607226_right_fuel : Nat := 1
def small_4607226_right_count : Nat := 1
def small_4607226_right_encoded : String := "00000004"
theorem small_4607226_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4607226_right_root small_4607226_right_fuel small_4607226_right_count small_4607226_right_encoded = true := by
  decide +kernel
theorem small_4607226_right_covered : CoveredBy scale carrier boxes small_4607226_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4607226_right_root small_4607226_right_fuel small_4607226_right_count small_4607226_right_encoded small_4607226_right_checked

theorem cover_4607226 : CoveredBy scale carrier boxes root_4607226 := by
  apply coveredBy_split_literal root_4607226 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0115.root_4607231 small_4607226_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0115.cover_4607231
  · exact small_4607226_right_covered
#print axioms cover_4607226

def root_4607225 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4607225_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4607225_right_fuel : Nat := 20
def small_4607225_right_count : Nat := 159
def small_4607225_right_encoded : String := "1151E9090000000408A91301120700F608A91303120701020000000108A91307120700FC050000FA135D810500000007000000020000000A0000000312073CFC00000003050000FA135D8105050000FE135D810904548A01138670F604548A0313867102000000010CFD9C070000000A0F350CFC000000030C9A86FC0F878D070000000A000000030F87510700000003000000051386AD020CFD9C070F34D0FC00000009000000030000000500000001000000001386ACF60000000004548A0313867102000000010CFD9C0700000007000000050000000500000004135D45090000000404548A01138670F604548A0313867102000000010CFD9C070F34D0FC00000007000000030000000500000005000000000000000500000002135D450500000002050000FE135D810904548A01138670F604548A030000000A00000005000000000000000500000004135D45090000000404548A01138670F604548A030000000A00000005000000000000000512073D0208A91307120700FC050000FA135D8105050000FE135D810904548A01138670F60CFD9C030F34D10200000001000000070F350D020000000500000001000000001386ACF6000000000CFD9C030000000A0000000500000004135D45090000000404548A01138670F60CFD9C030F34D102000000010000000700000005000000000000000500000002135D450500000002050000FE135D810904548A010000000A0000000500000004135D45090000000404548A01138670F60CFD9C030000000A0000000500000000000000050000000300000005000000010000000012073CF60000000008A91303120701020000000108A91307120700FC00000007000000030000000500000005"
theorem small_4607225_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4607225_right_root small_4607225_right_fuel small_4607225_right_count small_4607225_right_encoded = true := by
  decide +kernel
theorem small_4607225_right_covered : CoveredBy scale carrier boxes small_4607225_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4607225_right_root small_4607225_right_fuel small_4607225_right_count small_4607225_right_encoded small_4607225_right_checked

theorem cover_4607225 : CoveredBy scale carrier boxes root_4607225 := by
  apply coveredBy_split_literal root_4607225 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0115.root_4607226 small_4607225_right_root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0115.cover_4607226
  · exact small_4607225_right_covered
#print axioms cover_4607225

def root_4607220 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4607220_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4607220_right_fuel : Nat := 1
def small_4607220_right_count : Nat := 1
def small_4607220_right_encoded : String := "00000003"
theorem small_4607220_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4607220_right_root small_4607220_right_fuel small_4607220_right_count small_4607220_right_encoded = true := by
  decide +kernel
theorem small_4607220_right_covered : CoveredBy scale carrier boxes small_4607220_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4607220_right_root small_4607220_right_fuel small_4607220_right_count small_4607220_right_encoded small_4607220_right_checked

theorem cover_4607220 : CoveredBy scale carrier boxes root_4607220 := by
  apply coveredBy_split_literal root_4607220 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0115.root_4607225 small_4607220_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0115.cover_4607225
  · exact small_4607220_right_covered
#print axioms cover_4607220

def root_4611998 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4611998_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4611998_right_fuel : Nat := 18
def small_4611998_right_count : Nat := 73
def small_4611998_right_encoded : String := "135D45070000000304548A01138670F604548A03138671020000000104548A09000000071386ACFE00000004000000071386AD0204548A09000000071386ACFE00000004078000FA000000070000000700000001000000001386ACF60000000004548A03138671020000000104548A09000000071386ACFE00000004078000FA128A7D05028000FC13D7ED07067ECE8112EA58F6022A458313E1C50200000001067ECE890000000712EA94FE0000000400000007000000070000000012EA94F600000000022A458313E1C50200000001067ECE890000000700000005000000050000000313D7B10700000003067ECE81000000070000000A00000002128A410500000002028000FC00000007000000071386AD0204548A090000000A0000000500000001"
theorem small_4611998_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4611998_right_root small_4611998_right_fuel small_4611998_right_count small_4611998_right_encoded = true := by
  decide +kernel
theorem small_4611998_right_covered : CoveredBy scale carrier boxes small_4611998_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4611998_right_root small_4611998_right_fuel small_4611998_right_count small_4611998_right_encoded small_4611998_right_checked

theorem cover_4611998 : CoveredBy scale carrier boxes root_4611998 := by
  apply coveredBy_split_literal root_4611998 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1726.root small_4611998_right_root coord3 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1726.covered
  · exact small_4611998_right_covered
#print axioms cover_4611998

def root_4611993 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4611993_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4611993_right_fuel : Nat := 1
def small_4611993_right_count : Nat := 1
def small_4611993_right_encoded : String := "00000002"
theorem small_4611993_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4611993_right_root small_4611993_right_fuel small_4611993_right_count small_4611993_right_encoded = true := by
  decide +kernel
theorem small_4611993_right_covered : CoveredBy scale carrier boxes small_4611993_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4611993_right_root small_4611993_right_fuel small_4611993_right_count small_4611993_right_encoded small_4611993_right_checked

theorem cover_4611993 : CoveredBy scale carrier boxes root_4611993 := by
  apply coveredBy_split_literal root_4611993 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0115.root_4611998 small_4611993_right_root coord2 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0115.cover_4611998
  · exact small_4611993_right_covered
#print axioms cover_4611993

def root_4611992 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4611992_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4611992_right_fuel : Nat := 19
def small_4611992_right_count : Nat := 91
def small_4611992_right_encoded : String := "135D450500000002050000FC135D810704548A01138670F604548A03138671020000000104548A09000000071386ACFE00000004000000071386AD0204548A09000000070000000600000001000000001386ACF60000000004548A03138671020000000104548A09000000071386ACFE00000004028000FA13D7ED05078000FC128A7D07067ECE8112EA58F6022A458313E1C5020000000100000006000000060000000012EA94F600000000022A458313E1C50200000001067ECE8900000007000000050000000500000003128A410700000003000000070000000213D7B10500000002078000FC128A7D07067ECE81000000060000000900000003000000071386AD0204548A09138670FE028000FA000000070000000700000004000000050000000100000003135D45070000000304548A01000000071386ACF60000000004548A03138671020000000104548A0900000007000000071386AD0204548A09000000070000000500000001"
theorem small_4611992_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4611992_right_root small_4611992_right_fuel small_4611992_right_count small_4611992_right_encoded = true := by
  decide +kernel
theorem small_4611992_right_covered : CoveredBy scale carrier boxes small_4611992_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4611992_right_root small_4611992_right_fuel small_4611992_right_count small_4611992_right_encoded small_4611992_right_checked

theorem cover_4611992 : CoveredBy scale carrier boxes root_4611992 := by
  apply coveredBy_split_literal root_4611992 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0115.root_4611993 small_4611992_right_root coord2 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0115.cover_4611993
  · exact small_4611992_right_covered
#print axioms cover_4611992

def root_4611987 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4611987_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4611987_right_fuel : Nat := 1
def small_4611987_right_count : Nat := 1
def small_4611987_right_encoded : String := "00000004"
theorem small_4611987_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4611987_right_root small_4611987_right_fuel small_4611987_right_count small_4611987_right_encoded = true := by
  decide +kernel
theorem small_4611987_right_covered : CoveredBy scale carrier boxes small_4611987_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4611987_right_root small_4611987_right_fuel small_4611987_right_count small_4611987_right_encoded small_4611987_right_checked

theorem cover_4611987 : CoveredBy scale carrier boxes root_4611987 := by
  apply coveredBy_split_literal root_4611987 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0115.root_4611992 small_4611987_right_root coord4 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0115.cover_4611992
  · exact small_4611987_right_covered
#print axioms cover_4611987

def root_4611986 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4611986_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4611986_right_fuel : Nat := 28
def small_4611986_right_count : Nat := 287
def small_4611986_right_encoded : String := "12073CFE00000004050000FA135D8105050000FC135D810704548A01138670F604548A0313867102000000010CFD9C090F34D0FE078000FA128A7D05078000FC128A7D07022A458113E1C4F6022A458313E1C502000000010AD3578910D100FE000000060000000410D13CFE000000040000000813E201020AD3578910D100FE000000060000000400000006000000010000000013E200F600000000022A458313E1C502000000010AD3578910D100FE08C000FA11FC250508C000FC11FC2507033F67C10000000613BC30F6000000000000000800000003000000080000000211FBE9050000000208C000FC0000000611FBE90700000003033F67C100000006000000050000000410D13CFE0000000408C000FA0000000811FBE905000000020000000513E201020AD3578910D100FE0000000800000004000000050000000100000003128A410700000003022A458113E1C4F6022A458313E1C502000000010AD3578910D100FE000000070000000400000008000000080000000013E200F600000000022A458313E1C502000000010AD3578910D100FE0000000800000004000000050000000500000002128A410500000002078000FC128A7D07022A45810000000613E200F600000000022A458313E1C502000000010AD3578910D100FE0000000600000004000000050000000500000003128A410700000003022A45810000000713E200F600000000022A458313E1C502000000010AD35789000000070000000500000005000000040F350CFE000000040C9A86FE0F878D09078000FA128A7D05078000FC128A7D07022A45810000000800000005000000030000000800000002128A410500000002078000FC00000005128A41070000000300000005000000040F87510900000004000000051386AD020CFD9C090F34D0FE078000FA128A7D05078000FC128A7D0700000008000000030000000800000002128A41050000000200000005000000040000000500000001000000001386ACF60000000004548A0313867102000000010CFD9C090F34D0FE078000FA128A7D05078000FC128A7D07067ECE8112EA58F6022A458313E1C502000000010AD3578910D100FE08C000FA0000000511FBE9050000000200000005000000040000000500000005000000000000000500000003128A4107000000030000000500000002128A410500000002078000FC00000005128A4107000000030000000500000004000000050000000500000003135D45070000000304548A01138670F604548A0313867102000000010CFD9C090F34D0FE078000FA128A7D050000000800000002128A41050000000200000007000000040000000500000005000000000000000500000002135D450500000002050000FC135D810704548A01138670F604548A0313867102000000010CFD9C090F34D0FE028000FA13D7ED05078000FC00000006128A410700000003000000060000000200000006000000040000000500000005000000000000000500000003135D45070000000304548A01138670F604548A0313867102000000010CFD9C090000000700000005000000050000000000000005"
theorem small_4611986_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4611986_right_root small_4611986_right_fuel small_4611986_right_count small_4611986_right_encoded = true := by
  decide +kernel
theorem small_4611986_right_covered : CoveredBy scale carrier boxes small_4611986_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4611986_right_root small_4611986_right_fuel small_4611986_right_count small_4611986_right_encoded small_4611986_right_checked

theorem cover_4611986 : CoveredBy scale carrier boxes root_4611986 := by
  apply coveredBy_split_literal root_4611986 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0115.root_4611987 small_4611986_right_root coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0115.cover_4611987
  · exact small_4611986_right_covered
#print axioms cover_4611986

def root_4611980 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4611980_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4611980_left_fuel : Nat := 1
def small_4611980_left_count : Nat := 1
def small_4611980_left_encoded : String := "00000001"
theorem small_4611980_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4611980_left_root small_4611980_left_fuel small_4611980_left_count small_4611980_left_encoded = true := by
  decide +kernel
theorem small_4611980_left_covered : CoveredBy scale carrier boxes small_4611980_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4611980_left_root small_4611980_left_fuel small_4611980_left_count small_4611980_left_encoded small_4611980_left_checked

theorem cover_4611980 : CoveredBy scale carrier boxes root_4611980 := by
  apply coveredBy_split_literal root_4611980 small_4611980_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0115.root_4611986 coord1 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_4611980_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0115.cover_4611986
#print axioms cover_4611980

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0115
