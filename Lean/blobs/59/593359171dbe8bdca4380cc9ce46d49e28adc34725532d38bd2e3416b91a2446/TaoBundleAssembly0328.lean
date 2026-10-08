import TaoBundleAssembly0327
import TaoBundleChunkBatch0431
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0328
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
  apply coveredBy_split_literal root_4593164 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0327.root_4593165 small_4593164_right_root coord1 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0327.cover_4593165
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
  apply coveredBy_split_literal root_4593158 small_4593158_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0328.root_4593164 coord0 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_4593158_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0328.cover_4593164
#print axioms cover_4593158

def root_4586376 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4586376 : CoveredBy scale carrier boxes root_4586376 := by
  apply coveredBy_split_literal root_4586376 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0327.root_4586377 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0328.root_4593158 coord0 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0327.cover_4586377
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0328.cover_4593158
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
  apply coveredBy_split_literal root_4586371 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0328.root_4586376 small_4586371_right_root coord4 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0328.cover_4586376
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
  apply coveredBy_split_literal root_4586370 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0328.root_4586371 small_4586370_right_root coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0328.cover_4586371
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
  apply coveredBy_split_literal root_4586364 small_4586364_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0328.root_4586370 coord3 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_4586364_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0328.cover_4586370
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
  apply coveredBy_split_literal root_4586308 small_4586308_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0328.root_4586364 coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_4586308_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0328.cover_4586364
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
  apply coveredBy_split_literal root_4586302 small_4586302_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0328.root_4586308 coord2 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_4586302_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0328.cover_4586308
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
  apply coveredBy_split_literal root_4586240 small_4586240_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0328.root_4586302 coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_4586240_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0328.cover_4586302
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
  apply coveredBy_split_literal root_4586234 small_4586234_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0328.root_4586240 coord1 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_4586234_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0328.cover_4586240
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
  apply coveredBy_split_literal root_4586233 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0328.root_4586234 small_4586233_right_root coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0328.cover_4586234
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
  apply coveredBy_split_literal root_4586228 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0328.root_4586233 small_4586228_right_root coord0 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0328.cover_4586233
  · exact small_4586228_right_covered
#print axioms cover_4586228

def root_4586227 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4586227 : CoveredBy scale carrier boxes root_4586227 := by
  apply coveredBy_split_literal root_4586227 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0328.root_4586228 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1723.root coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0328.cover_4586228
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
  apply coveredBy_split_literal root_4586222 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0328.root_4586227 small_4586222_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0328.cover_4586227
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
  apply coveredBy_split_literal root_4586221 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0328.root_4586222 small_4586221_right_root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0328.cover_4586222
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
  apply coveredBy_split_literal root_4586216 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0328.root_4586221 small_4586216_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0328.cover_4586221
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
  apply coveredBy_split_literal root_4602708 small_4602708_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0328.root_4602714 coord2 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_4602708_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0328.cover_4602714
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
  apply coveredBy_split_literal root_4602676 small_4602676_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0328.root_4602708 coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_4602676_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0328.cover_4602708
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
  apply coveredBy_split_literal root_4602670 small_4602670_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0328.root_4602676 coord1 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_4602670_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0328.cover_4602676
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
  apply coveredBy_split_literal root_4602669 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0328.root_4602670 small_4602669_right_root coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0328.cover_4602670
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
  apply coveredBy_split_literal root_4602664 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0328.root_4602669 small_4602664_right_root coord0 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0328.cover_4602669
  · exact small_4602664_right_covered
#print axioms cover_4602664

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0328
