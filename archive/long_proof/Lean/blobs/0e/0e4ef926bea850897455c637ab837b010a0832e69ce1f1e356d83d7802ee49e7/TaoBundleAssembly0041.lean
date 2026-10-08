import TaoBundleAssembly0029
import TaoBundleAssembly0035
import TaoBundleAssembly0037
import TaoBundleAssembly0039
import TaoBundleAssembly0040
import TaoBundleChunkBatch0167
import TaoBundleChunkBatch0168
import TaoBundleChunkBatch0169
import TaoBundleChunkBatch0170
import TaoBundleChunkBatch0171
import TaoBundleChunkBatch0172
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041
def root_1722557 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1722557_right_root : ZRayBox := fun j => (#[⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1722557_right_fuel : Nat := 22
def small_1722557_right_count : Nat := 175
def small_1722557_right_encoded : String := "135D44F7050000FE135D80FF00000004045489F91386AD020CFD9C050F34D10400000002000000050F350D040CFD9C070F34D10600000003000000050F350D060C9A87040F875105000000020C9A87060F87510700000003028000F613D7ECF700000000078000FE0000000700000007000000070F878D07028000F613D7ECF700000000078000FE00000009128A40FF00000005000000040000000A000000030F878D050C9A87060000000A0F878D0700000005000000030000000200000003000000020000000113867102000000010CFD9C050F34D10400000002000000050F350D040CFD9C070F34D10600000003000000050F350D060C9A87040F875105000000020C9A87060F87510700000003028000F613D7ECF700000000078000FE128A7CFF00000004022A45790000000713E1C502000000010B4D44040000000710804D050000000700000002128A40FF022A45790000000713E1C502000000010B4D44040000000710804D0500000007000000020000000413D7B0F7078000FE128A7CFF000000040000000700000005000000000F878D07028000F613D7ECF700000000078000FE128A7CFF00000004022A45790000000913E1C502000000010B4D440410801105000000020000000910804D0500000005000000020000000500000005000000030F878D050C9A87060F87510700000003028000F613D7ECF700000000078000FE128A7CFF00000004022A45790000000A13E1C502000000010DE7CA040E5FD905000000020000000A0000000A000000050000000500000005000000020000000300000002135D44FF045489F91386AD020CFD9C05000000050F350D040CFD9C07000000050F350D060C9A87040F875105000000020C9A87060F87510700000003028000F6000000070000000500000005000000050000000300000002000000011386710200000001000000050000000400000000"
theorem small_1722557_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1722557_right_root small_1722557_right_fuel small_1722557_right_count small_1722557_right_encoded = true := by
  decide +kernel
theorem small_1722557_right_covered : CoveredBy scale carrier boxes small_1722557_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1722557_right_root small_1722557_right_fuel small_1722557_right_count small_1722557_right_encoded small_1722557_right_checked

theorem cover_1722557 : CoveredBy scale carrier boxes root_1722557 := by
  apply coveredBy_split_literal root_1722557 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0040.root_1722558 small_1722557_right_root coord0 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0040.cover_1722558
  · exact small_1722557_right_covered
#print axioms cover_1722557

def root_1722552 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1722552_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1722552_right_fuel : Nat := 1
def small_1722552_right_count : Nat := 1
def small_1722552_right_encoded : String := "00000003"
theorem small_1722552_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1722552_right_root small_1722552_right_fuel small_1722552_right_count small_1722552_right_encoded = true := by
  decide +kernel
theorem small_1722552_right_covered : CoveredBy scale carrier boxes small_1722552_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1722552_right_root small_1722552_right_fuel small_1722552_right_count small_1722552_right_encoded small_1722552_right_checked

theorem cover_1722552 : CoveredBy scale carrier boxes root_1722552 := by
  apply coveredBy_split_literal root_1722552 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.root_1722557 small_1722552_right_root coord3 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.cover_1722557
  · exact small_1722552_right_covered
#print axioms cover_1722552

def root_1722456 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1722456_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1722456_left_fuel : Nat := 18
def small_1722456_left_count : Nat := 47
def small_1722456_left_encoded : String := "1207010600000003050000F6135D80F700000000050000FE135D80FF00000004045489F91386AD020CFD9C05000000050F350D0404548A07000000051386AD060C9A8704000000060000000500000003000000020000000113867102000000010CFD9C05000000050F350D0404548A07000000051386AD060C9A87040F87510500000002078000F6128A7CF700000000078000FE128A7CFF000000040000000600000005000000050000000500000003000000020000000500000005"
theorem small_1722456_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1722456_left_root small_1722456_left_fuel small_1722456_left_count small_1722456_left_encoded = true := by
  decide +kernel
theorem small_1722456_left_covered : CoveredBy scale carrier boxes small_1722456_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1722456_left_root small_1722456_left_fuel small_1722456_left_count small_1722456_left_encoded small_1722456_left_checked

theorem cover_1722456 : CoveredBy scale carrier boxes root_1722456 := by
  apply coveredBy_split_literal root_1722456 small_1722456_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.root_1722552 coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_1722456_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.cover_1722552
#print axioms cover_1722456

def root_1722451 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1722451_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1722451_right_fuel : Nat := 1
def small_1722451_right_count : Nat := 1
def small_1722451_right_encoded : String := "00000002"
theorem small_1722451_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1722451_right_root small_1722451_right_fuel small_1722451_right_count small_1722451_right_encoded = true := by
  decide +kernel
theorem small_1722451_right_covered : CoveredBy scale carrier boxes small_1722451_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1722451_right_root small_1722451_right_fuel small_1722451_right_count small_1722451_right_encoded small_1722451_right_checked

theorem cover_1722451 : CoveredBy scale carrier boxes root_1722451 := by
  apply coveredBy_split_literal root_1722451 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.root_1722456 small_1722451_right_root coord2 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.cover_1722456
  · exact small_1722451_right_covered
#print axioms cover_1722451

def root_1722347 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1722347_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1722347_left_fuel : Nat := 20
def small_1722347_left_count : Nat := 51
def small_1722347_left_encoded : String := "120701040000000208A913070000000512073D06050000F6135D80F700000000050000FE135D80FF00000004045489F91386AD0204548A05000000051386AD040CFD9C07000000050F350D060C9A87060000000A00000005000000030000000200000001138671020000000104548A05000000051386AD040CFD9C07000000050F350D060C9A87060F87510700000003078000F6128A7CF700000000078000FE128A7CFF000000040000000A0000000500000005000000050000000300000002000000050000000500000003"
theorem small_1722347_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1722347_left_root small_1722347_left_fuel small_1722347_left_count small_1722347_left_encoded = true := by
  decide +kernel
theorem small_1722347_left_covered : CoveredBy scale carrier boxes small_1722347_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1722347_left_root small_1722347_left_fuel small_1722347_left_count small_1722347_left_encoded small_1722347_left_checked

theorem cover_1722347 : CoveredBy scale carrier boxes root_1722347 := by
  apply coveredBy_split_literal root_1722347 small_1722347_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.root_1722451 coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_1722347_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.cover_1722451
#print axioms cover_1722347

def root_1722341 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1722341_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1722341_left_fuel : Nat := 1
def small_1722341_left_count : Nat := 1
def small_1722341_left_encoded : String := "00000001"
theorem small_1722341_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1722341_left_root small_1722341_left_fuel small_1722341_left_count small_1722341_left_encoded = true := by
  decide +kernel
theorem small_1722341_left_covered : CoveredBy scale carrier boxes small_1722341_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1722341_left_root small_1722341_left_fuel small_1722341_left_count small_1722341_left_encoded small_1722341_left_checked

theorem cover_1722341 : CoveredBy scale carrier boxes root_1722341 := by
  apply coveredBy_split_literal root_1722341 small_1722341_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.root_1722347 coord1 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_1722341_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.cover_1722347
#print axioms cover_1722341

def root_1721827 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1721827_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1721827_left_fuel : Nat := 22
def small_1721827_left_count : Nat := 241
def small_1721827_left_encoded : String := "12073D0208A91305120701040000000208A9130712070106000000030000000512073D06050000F6135D80F700000000050000FE135D80FF000000040CFD9BF90000000A0F34D1020000000104548A050000000A0000000A135D44FF0CFD9BF9000000050F34D1020000000100000005000000040000000A0000000312073D0408A913071207010600000003050000F6135D80F700000000050000FE135D80FF000000040CFD9BF9000000060F34D102000000010CFD9C05000000060F350D04000000060000000200000006135D44F7050000FE135D80FF000000040CFD9BF9000000050F34D1020000000100000005000000050000000012073D06050000F6135D80F700000000050000FE135D80FF000000040CFD9BF90F350D020CFD9C050F34D104000000020000000A0F350D040CFD9C070F34D10600000003000000060F350D060C9A8702000000060F878CF9000000010C9A8704000000060000000A0000000300000002000000010F34D102000000010CFD9C050F34D104000000020CFD9C070000000A0F350D060000000A000000030F350D040CFD9C070F34D10600000003000000060F350D060C9A87040F875105000000020C9A87060F87510700000003078000F600000007000000070F878D07078000F600000006128A40F70000000900000000000000030F878D050C9A87060F87510700000003078000F6000000080000000A0F878D07078000F6128A7CF700000000000000060000000A00000003000000020000000300000002135D44FF0CFD9BF90F350D020CFD9C050000000600000006000000010F34D102000000010CFD9C050F34D104000000020CFD9C07000000050F350D060C9A87060F875107000000030000000800000005000000030F350D040CFD9C07000000060F350D060C9A87040000000600000006000000030000000200000004135D44F7050000FE135D80FF000000040CFD9BF90F350D020CFD9C050000000A0F350D040CFD9C070000000A0000000A00000002000000010F34D102000000010CFD9C050F34D104000000020000000A0F350D040CFD9C070F34D106000000030C9A87040F8751050000000200000009000000050F350D060C9A87040F875105000000020000000A0000000A0000000300000002135D44FF0CFD9BF90F350D020CFD9C05000000060000000A000000010F34D102000000010CFD9C050F34D10400000002000000050F350D040CFD9C070F34D10600000003000000050F350D060C9A87040F875105000000020C9A87060000000A000000050000000500000003000000020000000400000000000000030000000200000001"
theorem small_1721827_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1721827_left_root small_1721827_left_fuel small_1721827_left_count small_1721827_left_encoded = true := by
  decide +kernel
theorem small_1721827_left_covered : CoveredBy scale carrier boxes small_1721827_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1721827_left_root small_1721827_left_fuel small_1721827_left_count small_1721827_left_encoded small_1721827_left_checked

theorem cover_1721827 : CoveredBy scale carrier boxes root_1721827 := by
  apply coveredBy_split_literal root_1721827 small_1721827_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.root_1722341 coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_1721827_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.cover_1722341
#print axioms cover_1721827

def root_1721822 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1721822_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1721822_right_fuel : Nat := 1
def small_1721822_right_count : Nat := 1
def small_1721822_right_encoded : String := "00000004"
theorem small_1721822_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1721822_right_root small_1721822_right_fuel small_1721822_right_count small_1721822_right_encoded = true := by
  decide +kernel
theorem small_1721822_right_covered : CoveredBy scale carrier boxes small_1721822_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1721822_right_root small_1721822_right_fuel small_1721822_right_count small_1721822_right_encoded small_1721822_right_checked

theorem cover_1721822 : CoveredBy scale carrier boxes root_1721822 := by
  apply coveredBy_split_literal root_1721822 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.root_1721827 small_1721822_right_root coord4 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.cover_1721827
  · exact small_1721822_right_covered
#print axioms cover_1721822

def root_1717122 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1717122 : CoveredBy scale carrier boxes root_1717122 := by
  apply coveredBy_split_literal root_1717122 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0040.root_1717123 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.root_1721822 coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0040.cover_1717123
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.cover_1721822
#print axioms cover_1717122

def root_1717117 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1717117_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1717117_right_fuel : Nat := 1
def small_1717117_right_count : Nat := 1
def small_1717117_right_encoded : String := "00000003"
theorem small_1717117_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1717117_right_root small_1717117_right_fuel small_1717117_right_count small_1717117_right_encoded = true := by
  decide +kernel
theorem small_1717117_right_covered : CoveredBy scale carrier boxes small_1717117_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1717117_right_root small_1717117_right_fuel small_1717117_right_count small_1717117_right_encoded small_1717117_right_checked

theorem cover_1717117 : CoveredBy scale carrier boxes root_1717117 := by
  apply coveredBy_split_literal root_1717117 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.root_1717122 small_1717117_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.cover_1717122
  · exact small_1717117_right_covered
#print axioms cover_1717117

def root_1715293 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1715293 : CoveredBy scale carrier boxes root_1715293 := by
  apply coveredBy_split_literal root_1715293 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0666.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.root_1717117 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0666.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.cover_1717117
#print axioms cover_1715293

def root_1715288 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1715288_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1715288_right_fuel : Nat := 1
def small_1715288_right_count : Nat := 1
def small_1715288_right_encoded : String := "00000002"
theorem small_1715288_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1715288_right_root small_1715288_right_fuel small_1715288_right_count small_1715288_right_encoded = true := by
  decide +kernel
theorem small_1715288_right_covered : CoveredBy scale carrier boxes small_1715288_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1715288_right_root small_1715288_right_fuel small_1715288_right_count small_1715288_right_encoded small_1715288_right_checked

theorem cover_1715288 : CoveredBy scale carrier boxes root_1715288 := by
  apply coveredBy_split_literal root_1715288 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.root_1715293 small_1715288_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.cover_1715293
  · exact small_1715288_right_covered
#print axioms cover_1715288

def root_1712962 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1712962 : CoveredBy scale carrier boxes root_1712962 := by
  apply coveredBy_split_literal root_1712962 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0665.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.root_1715288 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0665.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.cover_1715288
#print axioms cover_1712962

def root_1712956 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1712956_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1712956_left_fuel : Nat := 1
def small_1712956_left_count : Nat := 1
def small_1712956_left_encoded : String := "00000001"
theorem small_1712956_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1712956_left_root small_1712956_left_fuel small_1712956_left_count small_1712956_left_encoded = true := by
  decide +kernel
theorem small_1712956_left_covered : CoveredBy scale carrier boxes small_1712956_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1712956_left_root small_1712956_left_fuel small_1712956_left_count small_1712956_left_encoded small_1712956_left_checked

theorem cover_1712956 : CoveredBy scale carrier boxes root_1712956 := by
  apply coveredBy_split_literal root_1712956 small_1712956_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.root_1712962 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_1712956_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.cover_1712962
#print axioms cover_1712956

def root_1712702 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1712702_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1712702_left_fuel : Nat := 19
def small_1712702_left_count : Nat := 121
def small_1712702_left_encoded : String := "1151E8F90A0001041151E905000000020A0001061151E907000000030A0000FE000000051151E8FF050000F6135D80F7000000000500010200000005135D80F900000001050001040000000500000008135D44F7050001020000000A135D80F90000000105000104000000090000000A0000000000000004115225070A0000FE000000091151E8FF08A9130712070106000000030000000612073D06050000F60000000600000009000000030000000400000003115225050A0001061151E907000000030A0000FE0000000A1151E8FF08A9130512070104000000020000000812073D04050000F6000000080000000A0000000200000004115225070A0000FE115224FF0000000408A9130512070104000000020000000A12073D0408A9130712070106000000030000000912073D0608A912FF12073CFE00000004050000F6135D80F700000000050001020000000A135D80F9000000010CFD9C050000000A000000090000000A0000000900000003000000021151E8FF08A9130512070104000000020000000A12073D0408A9130712070106000000030000000612073D06050000F6135D80F7000000000500010200000006135D80F900000001050000FE00000006000000060000000A000000030000000200000004000000030000000200000001"
theorem small_1712702_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1712702_left_root small_1712702_left_fuel small_1712702_left_count small_1712702_left_encoded = true := by
  decide +kernel
theorem small_1712702_left_covered : CoveredBy scale carrier boxes small_1712702_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1712702_left_root small_1712702_left_fuel small_1712702_left_count small_1712702_left_encoded small_1712702_left_checked

theorem cover_1712702 : CoveredBy scale carrier boxes root_1712702 := by
  apply coveredBy_split_literal root_1712702 small_1712702_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.root_1712956 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_1712702_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.cover_1712956
#print axioms cover_1712702

def root_1712697 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1712697_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1712697_right_fuel : Nat := 1
def small_1712697_right_count : Nat := 1
def small_1712697_right_encoded : String := "00000000"
theorem small_1712697_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1712697_right_root small_1712697_right_fuel small_1712697_right_count small_1712697_right_encoded = true := by
  decide +kernel
theorem small_1712697_right_covered : CoveredBy scale carrier boxes small_1712697_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1712697_right_root small_1712697_right_fuel small_1712697_right_count small_1712697_right_encoded small_1712697_right_checked

theorem cover_1712697 : CoveredBy scale carrier boxes root_1712697 := by
  apply coveredBy_split_literal root_1712697 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.root_1712702 small_1712697_right_root coord0 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.cover_1712702
  · exact small_1712697_right_covered
#print axioms cover_1712697

def root_1686553 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1686553 : CoveredBy scale carrier boxes root_1686553 := by
  apply coveredBy_split_literal root_1686553 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0040.root_1686554 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.root_1712697 coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0040.cover_1686554
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.cover_1712697
#print axioms cover_1686553

def root_1686552 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1686552 : CoveredBy scale carrier boxes root_1686552 := by
  apply coveredBy_split_literal root_1686552 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.root_1686553 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0669.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.cover_1686553
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0669.covered
#print axioms cover_1686552

def root_1730737 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1730737 : CoveredBy scale carrier boxes root_1730737 := by
  apply coveredBy_split_literal root_1730737 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0670.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0671.root coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0670.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0671.covered
#print axioms cover_1730737

def root_1730731 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1730731_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1730731_left_fuel : Nat := 1
def small_1730731_left_count : Nat := 1
def small_1730731_left_encoded : String := "00000000"
theorem small_1730731_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1730731_left_root small_1730731_left_fuel small_1730731_left_count small_1730731_left_encoded = true := by
  decide +kernel
theorem small_1730731_left_covered : CoveredBy scale carrier boxes small_1730731_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1730731_left_root small_1730731_left_fuel small_1730731_left_count small_1730731_left_encoded small_1730731_left_checked

theorem cover_1730731 : CoveredBy scale carrier boxes root_1730731 := by
  apply coveredBy_split_literal root_1730731 small_1730731_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.root_1730737 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_1730731_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.cover_1730737
#print axioms cover_1730731

def root_1730730 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1730730 : CoveredBy scale carrier boxes root_1730730 := by
  apply coveredBy_split_literal root_1730730 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.root_1730731 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0672.root coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.cover_1730731
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0672.covered
#print axioms cover_1730730

def root_1736809 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1736809 : CoveredBy scale carrier boxes root_1736809 := by
  apply coveredBy_split_literal root_1736809 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0673.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0674.root coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0673.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0674.covered
#print axioms cover_1736809

def root_1730729 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1730729 : CoveredBy scale carrier boxes root_1730729 := by
  apply coveredBy_split_literal root_1730729 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.root_1730730 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.root_1736809 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.cover_1730730
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.cover_1736809
#print axioms cover_1730729

def root_1686551 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1686551 : CoveredBy scale carrier boxes root_1686551 := by
  apply coveredBy_split_literal root_1686551 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.root_1686552 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.root_1730729 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.cover_1686552
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.cover_1730729
#print axioms cover_1686551

def root_1624567 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1624567 : CoveredBy scale carrier boxes root_1624567 := by
  apply coveredBy_split_literal root_1624567 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0039.root_1624568 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.root_1686551 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0039.cover_1624568
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.cover_1686551
#print axioms cover_1624567

def root_1533405 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1533405 : CoveredBy scale carrier boxes root_1533405 := by
  apply coveredBy_split_literal root_1533405 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0037.root_1533406 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.root_1624567 coord3 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0037.cover_1533406
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.cover_1624567
#print axioms cover_1533405

def root_1267585 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1267585 : CoveredBy scale carrier boxes root_1267585 := by
  apply coveredBy_split_literal root_1267585 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.root_1267586 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.root_1533405 coord2 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.cover_1267586
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.cover_1533405
#print axioms cover_1267585

def root_948355 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_948355 : CoveredBy scale carrier boxes root_948355 := by
  apply coveredBy_split_literal root_948355 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.root_948356 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.root_1267585 coord2 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.cover_948356
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.cover_1267585
#print axioms cover_948355

def root_1742004 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1742004 : CoveredBy scale carrier boxes root_1742004 := by
  apply coveredBy_split_literal root_1742004 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0675.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0676.root coord2 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0675.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0676.covered
#print axioms cover_1742004

def root_1741998 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1741998_left_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1741998_left_fuel : Nat := 1
def small_1741998_left_count : Nat := 1
def small_1741998_left_encoded : String := "00000001"
theorem small_1741998_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1741998_left_root small_1741998_left_fuel small_1741998_left_count small_1741998_left_encoded = true := by
  decide +kernel
theorem small_1741998_left_covered : CoveredBy scale carrier boxes small_1741998_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1741998_left_root small_1741998_left_fuel small_1741998_left_count small_1741998_left_encoded small_1741998_left_checked

theorem cover_1741998 : CoveredBy scale carrier boxes root_1741998 := by
  apply coveredBy_split_literal root_1741998 small_1741998_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.root_1742004 coord1 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_1741998_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.cover_1742004
#print axioms cover_1741998

def root_1741997 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1741997_right_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1741997_right_fuel : Nat := 22
def small_1741997_right_count : Nat := 219
def small_1741997_right_encoded : String := "1386AD02045489FB1386ACFA00000002045489FD1386ACFC000000030CFD9BFF0F350CFE000000040C9A86F60F878CF7000000000C9A86FE0F878CFF00000004000000070F8750FF00000009000000040F8750F70C9A86FE0F878CFF00000004000000080F8750FF067ECE8312EA590200000001067ECE7B12EA94FA00000002067ECE7D000000070000000812EA58FA067ECE7D0000000912EA58FC0B4D43F610804CF7000000000B4D43FE10804CFF000000040000000500000005108010F70B4D43FE000000080000000500000000000000030000000212EA9502067ECE7B0000000812EA58FA067ECE7D0000000900000005000000020000000100000004000000000F34D0FE0000000700000004138670FC0CFD9BFF0F350CFE000000040C9A86F60F878CF7000000000C9A86FE0F878CFF00000004067ECE8312EA590200000001067ECE7B0000000700000005000000080F8750FF067ECE8312EA590200000001067ECE7B0000000A000000050000000A000000040F8750F70C9A86FE0F878CFF00000004000000080F8750FF067ECE8312EA590200000001067ECE7B12EA94FA00000002022A457D00000008000000050000000512EA9502067ECE7B00000008000000050000000100000004000000000F34D0FE000000080000000400000003138670FA045489FD1386ACFC000000030CFD9BFF0F350CFE000000040C9A86F60F878CF7000000000C9A86FE0F878CFF00000004067ECE8312EA590200000001022A457B000000070000000500000009000000090F8750F70C9A86FE0F878CFF00000004067ECE8312EA590200000001022A457B13E200FA00000002067ECE7D000000060000000500000005000000060F8750FF067ECE8312EA590200000001022A457B13E200FA00000002067ECE7D00000009000000050000000512EA9502022A457B00000009000000050000000100000004000000000F34D0FE0C9A86F60F878CF700000000000000070F8750F7067ECE8312EA590200000001022A457B0000000700000005000000050000000000000004138670FC0CFD9BFF0F350CFE000000040C9A86F60F878CF7000000000C9A86FE0F878CFF0000000400000005000000050F8750F70C9A86FE0F878CFF000000040000000500000005000000000F34D0FE0C9A86F60F878CF700000000000000050000000500000004000000030000000200000001"
theorem small_1741997_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1741997_right_root small_1741997_right_fuel small_1741997_right_count small_1741997_right_encoded = true := by
  decide +kernel
theorem small_1741997_right_covered : CoveredBy scale carrier boxes small_1741997_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1741997_right_root small_1741997_right_fuel small_1741997_right_count small_1741997_right_encoded small_1741997_right_checked

theorem cover_1741997 : CoveredBy scale carrier boxes root_1741997 := by
  apply coveredBy_split_literal root_1741997 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.root_1741998 small_1741997_right_root coord1 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.cover_1741998
  · exact small_1741997_right_covered
#print axioms cover_1741997

def root_1741991 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1741991_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1741991_left_fuel : Nat := 1
def small_1741991_left_count : Nat := 1
def small_1741991_left_encoded : String := "00000000"
theorem small_1741991_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1741991_left_root small_1741991_left_fuel small_1741991_left_count small_1741991_left_encoded = true := by
  decide +kernel
theorem small_1741991_left_covered : CoveredBy scale carrier boxes small_1741991_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1741991_left_root small_1741991_left_fuel small_1741991_left_count small_1741991_left_encoded small_1741991_left_checked

theorem cover_1741991 : CoveredBy scale carrier boxes root_1741991 := by
  apply coveredBy_split_literal root_1741991 small_1741991_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.root_1741997 coord0 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_1741991_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.cover_1741997
#print axioms cover_1741991

def root_1741990 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1741990_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1741990_right_fuel : Nat := 18
def small_1741990_right_count : Nat := 129
def small_1741990_right_encoded : String := "0F34D0F604548A031386710200000001045489FB1386ACFA00000002045489FD00000007138670FC0CFD9BFF0F350CFE000000040C9A86FE000000070F8750FF0AD3577710D13CF600000000022A458313E1C50200000001067ECE7B0000000612EA58FA000000070000000213E20102067ECE7B00000007000000050000000100000007000000040000000700000003138670FA045489FD1386ACFC000000030CFD9BFF0F350CFE000000040C9A86FE000000070000000900000007138670FC0CFD9BFF0F350CFE000000040C9A86FE0F878CFF000000040AD3577710D13CF600000000022A458313E1C50200000001022A457B000000070000000500000005000000050F8750FF0AD3577710D13CF600000000022A458313E1C50200000001000000050000000500000005000000040000000700000003000000021386AD02045489FB1386ACFA00000002045489FD00000007138670FC0CFD9BFF0F350CFE000000040C9A86FE0F878CFF00000004000000070F8750FF0AD3577710D13CF600000000067ECE8312EA5902000000010000000A0000000500000005000000040000000700000003138670FA045489FD1386ACFC000000030CFD9BFF0F350CFE000000040000000900000007138670FC0CFD9BFF0F350CFE000000040C9A86FE0F878CFF0000000400000005000000050000000500000003000000020000000100000000"
theorem small_1741990_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1741990_right_root small_1741990_right_fuel small_1741990_right_count small_1741990_right_encoded = true := by
  decide +kernel
theorem small_1741990_right_covered : CoveredBy scale carrier boxes small_1741990_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1741990_right_root small_1741990_right_fuel small_1741990_right_count small_1741990_right_encoded small_1741990_right_checked

theorem cover_1741990 : CoveredBy scale carrier boxes root_1741990 := by
  apply coveredBy_split_literal root_1741990 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.root_1741991 small_1741990_right_root coord0 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.cover_1741991
  · exact small_1741990_right_covered
#print axioms cover_1741990

def root_1741984 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1741984_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1741984_left_fuel : Nat := 1
def small_1741984_left_count : Nat := 1
def small_1741984_left_encoded : String := "00000004"
theorem small_1741984_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1741984_left_root small_1741984_left_fuel small_1741984_left_count small_1741984_left_encoded = true := by
  decide +kernel
theorem small_1741984_left_covered : CoveredBy scale carrier boxes small_1741984_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1741984_left_root small_1741984_left_fuel small_1741984_left_count small_1741984_left_encoded small_1741984_left_checked

theorem cover_1741984 : CoveredBy scale carrier boxes root_1741984 := by
  apply coveredBy_split_literal root_1741984 small_1741984_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.root_1741990 coord4 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_1741984_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.cover_1741990
#print axioms cover_1741984

def root_1741983 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1741983_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1741983_right_fuel : Nat := 9
def small_1741983_right_count : Nat := 19
def small_1741983_right_encoded : String := "120700FE0CFD9BF70F350CF60000000004548A031386710200000001000000071386AD02045489FB00000007138670FA045489FD000000070000000500000002000000010000000700000004"
theorem small_1741983_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1741983_right_root small_1741983_right_fuel small_1741983_right_count small_1741983_right_encoded = true := by
  decide +kernel
theorem small_1741983_right_covered : CoveredBy scale carrier boxes small_1741983_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1741983_right_root small_1741983_right_fuel small_1741983_right_count small_1741983_right_encoded small_1741983_right_checked

theorem cover_1741983 : CoveredBy scale carrier boxes root_1741983 := by
  apply coveredBy_split_literal root_1741983 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.root_1741984 small_1741983_right_root coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.cover_1741984
  · exact small_1741983_right_covered
#print axioms cover_1741983

def root_1741978 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1741978_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1741978_right_fuel : Nat := 1
def small_1741978_right_count : Nat := 1
def small_1741978_right_encoded : String := "00000003"
theorem small_1741978_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1741978_right_root small_1741978_right_fuel small_1741978_right_count small_1741978_right_encoded = true := by
  decide +kernel
theorem small_1741978_right_covered : CoveredBy scale carrier boxes small_1741978_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1741978_right_root small_1741978_right_fuel small_1741978_right_count small_1741978_right_encoded small_1741978_right_checked

theorem cover_1741978 : CoveredBy scale carrier boxes root_1741978 := by
  apply coveredBy_split_literal root_1741978 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.root_1741983 small_1741978_right_root coord3 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.cover_1741983
  · exact small_1741978_right_covered
#print axioms cover_1741978

def root_1741362 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1741362_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1741362_left_fuel : Nat := 28
def small_1741362_left_count : Nat := 283
def small_1741362_left_encoded : String := "12073CFC0000000308A912FF12073CFE000000040CFD9BF70F350CF60000000004548A031386710200000001045489FB1386ACFA000000020CFD9BFD0F350CFC00000003000000070F34D0FC0CFD9BFF0F350CFE000000040C9A86F6000000070F8750F70C9A86FE000000070F8750FF022A458313E1C50200000001067ECE7B0000000712EA58FA0AD3577D0000000710D100FC00000007000000030000000213E20102067ECE7B0000000712EA58FA0AD3577D0000000710D100FC0000000700000003000000020000000100000004000000000000000700000003138670FA0CFD9BFD0F350CFC000000030CFD9BFF0F350CFE000000040C9A86F60F878CF700000000000000070F8750F70C9A86FC0F878CFD000000030C9A86FE000000070F8750FF00000009000000040F8750FD000000070000000300000000000000070F34D0FC0CFD9BFF0F350CFE000000040C9A86F60F878CF7000000000C9A86FE0F878CFF00000004000000070F8750FF00000009000000040F8750F70C9A86FE0F878CFF00000004022A458313E1C50200000001022A457B0000000713E1C4FA0AD3577D0000000710D100FC0B4D43F6000000070000000A000000030000000213E20102022A457B0000000713E1C4FA0AD3577D0000000710D100FC000000060000000300000002000000010F8750FF022A458313E1C50200000001022A457B13E200FA000000020AD3577D0000000910D100FC0B4D43F610804CF70000000000000007108010F70B4D43FE10804CFF000000040000000700000009000000000000000313E1C4FA0AD3577D0000000910D100FC0B4D43F600000009108010F70B4D43FE10804CFF00000004000000060000000900000000000000030000000213E20102022A457B13E200FA0000000200000009000000090000000100000004000000000F34D0FE000000070000000400000003000000021386AD02045489FB1386ACFA000000020CFD9BFD0F350CFC000000030CFD9BFF0F350CFE000000040C9A86F6000000070F8750F70000000700000000000000070F34D0FC0CFD9BFF0F350CFE000000040C9A86F60F878CF700000000000000070F8750F70C9A86FE0F878CFF00000004000000070F8750FF0000000900000004000000000000000700000003138670FA0CFD9BFD0F350CFC000000030CFD9BFF0F350CFE000000040C9A86F6000000090F8750F70C9A86FC000000090F8750FD0000000900000003000000000F34D0FE00000007000000040F34D0FC0CFD9BFF0F350CFE000000040C9A86F60F878CF700000000000000090F8750F70C9A86FE0F878CFF00000004067ECE8312EA590200000001022A457B00000007000000060000000900000009000000000F34D0FE00000007000000040000000300000002000000010F34D0F604548A031386710200000001045489FB00000007138670FA0CFD9BFD000000070F34D0FC0000000700000003000000021386AD02045489FB00000007138670FA0CFD9BFD000000070F34D0FC0000000700000003000000020000000100000000120700FE0000000700000004"
theorem small_1741362_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1741362_left_root small_1741362_left_fuel small_1741362_left_count small_1741362_left_encoded = true := by
  decide +kernel
theorem small_1741362_left_covered : CoveredBy scale carrier boxes small_1741362_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1741362_left_root small_1741362_left_fuel small_1741362_left_count small_1741362_left_encoded small_1741362_left_checked

theorem cover_1741362 : CoveredBy scale carrier boxes root_1741362 := by
  apply coveredBy_split_literal root_1741362 small_1741362_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.root_1741978 coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_1741362_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.cover_1741978
#print axioms cover_1741362

def root_1741357 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1741357_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1741357_right_fuel : Nat := 1
def small_1741357_right_count : Nat := 1
def small_1741357_right_encoded : String := "00000002"
theorem small_1741357_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1741357_right_root small_1741357_right_fuel small_1741357_right_count small_1741357_right_encoded = true := by
  decide +kernel
theorem small_1741357_right_covered : CoveredBy scale carrier boxes small_1741357_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1741357_right_root small_1741357_right_fuel small_1741357_right_count small_1741357_right_encoded small_1741357_right_checked

theorem cover_1741357 : CoveredBy scale carrier boxes root_1741357 := by
  apply coveredBy_split_literal root_1741357 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.root_1741362 small_1741357_right_root coord2 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.cover_1741362
  · exact small_1741357_right_covered
#print axioms cover_1741357

def root_1740709 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1740709_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1740709_left_fuel : Nat := 30
def small_1740709_left_count : Nat := 303
def small_1740709_left_encoded : String := "12073CFA0000000208A912FD12073CFC0000000308A912FF12073CFE000000040CFD9BF70F350CF60000000004548A0313867102000000010CFD9BFB0F350CFA00000002000000070F34D0FA0CFD9BFD000000070F34D0FC0000000700000003000000021386AD020CFD9BFB0F350CFA000000020CFD9BFD000000070F34D0FC00000007000000030F34D0FA0CFD9BFD000000070F34D0FC000000070000000300000002000000010F34D0F6000000070000000000000007120700FC08A912FF12073CFE000000040CFD9BF70F350CF60000000004548A0313867102000000010CFD9BFB0F350CFA00000002045489FD1386ACFC0000000300000007138670FC0CFD9BFF0F350CFE000000040C9A86F60F878CF700000000000000070F8750F70C9A86FA0F878CFB000000020C9A86FE00000007000000080F8750FB00000007000000020000000000000007000000030F34D0FA045489FD1386ACFC000000030CFD9BFF0F350CFE000000040C9A86F6000000070F8750F70C9A86FE000000070F8750FF022A458313E1C502000000010AD3577B0000000710D100FA000000070000000213E201020AD3577B0000000710D100FA000000070000000200000001000000040000000000000007138670FC0CFD9BFF0F350CFE000000040C9A86F60F878CF7000000000C9A86FE0F878CFF00000004000000070F8750FF022A458313E1C502000000010AD3577B0000000710D100FA022A457D0000000713E1C4FC0DE7C9F6000000060E5FD8F70B4D43FE000000070000000600000000000000030000000213E201020AD3577B0000000710D100FA022A457D000000070000000A0000000200000001000000040F8750F70C9A86FE0F878CFF00000004000000080F8750FF022A458313E1C502000000010AD3577B10D13CFA00000002022A457D000000070000000810D100FA022A457D13E200FC000000030B4D43F610804CF700000000000000070000000813E1C4FC0B4D43F610804CF7000000000B4D43FE00000008108010FF0000000A0000000400000008000000030000000213E201020AD3577B0000000810D100FA022A457D0000000800000008000000020000000100000004000000000F34D0FE000000070000000400000003000000021386AD020CFD9BFB0F350CFA00000002045489FD1386ACFC000000030CFD9BFF0F350CFE000000040C9A86F6000000070000000800000007138670FC0CFD9BFF0F350CFE000000040C9A86F60F878CF7000000000C9A86FA00000007000000070000000800000008000000030F34D0FA045489FD1386ACFC000000030CFD9BFF0F350CFE000000040C9A86F60F878CF700000000000000070F8750F7000000080000000000000007138670FC0CFD9BFF0F350CFE000000040C9A86F60F878CF7000000000C9A86FE000000080F8750FF067ECE8312EA5902000000010AD3577B0000000710D100FA022A457D00000007000000080000000200000008000000040F8750F70000000800000000000000080000000300000002000000010F34D0F604548A0313867102000000010CFD9BFB000000070F34D0FA00000007000000021386AD020CFD9BFB000000070F34D0FA045489FD00000007138670FC0000000700000003000000020000000100000000120700FE000000070000000400000003"
theorem small_1740709_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1740709_left_root small_1740709_left_fuel small_1740709_left_count small_1740709_left_encoded = true := by
  decide +kernel
theorem small_1740709_left_covered : CoveredBy scale carrier boxes small_1740709_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1740709_left_root small_1740709_left_fuel small_1740709_left_count small_1740709_left_encoded small_1740709_left_checked

theorem cover_1740709 : CoveredBy scale carrier boxes root_1740709 := by
  apply coveredBy_split_literal root_1740709 small_1740709_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.root_1741357 coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_1740709_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.cover_1741357
#print axioms cover_1740709

def root_1740703 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1740703_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1740703_left_fuel : Nat := 1
def small_1740703_left_count : Nat := 1
def small_1740703_left_encoded : String := "00000001"
theorem small_1740703_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1740703_left_root small_1740703_left_fuel small_1740703_left_count small_1740703_left_encoded = true := by
  decide +kernel
theorem small_1740703_left_covered : CoveredBy scale carrier boxes small_1740703_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1740703_left_root small_1740703_left_fuel small_1740703_left_count small_1740703_left_encoded small_1740703_left_checked

theorem cover_1740703 : CoveredBy scale carrier boxes root_1740703 := by
  apply coveredBy_split_literal root_1740703 small_1740703_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.root_1740709 coord1 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_1740703_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.cover_1740709
#print axioms cover_1740703

def root_1740702 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1740702_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1740702_right_fuel : Nat := 21
def small_1740702_right_count : Nat := 369
def small_1740702_right_encoded : String := "12073D0208A912FB12073CFA0000000208A912FD12073CFC0000000308A912FF12073CFE000000040CFD9BF70F350CF6000000000CFD9C030F34D102000000010CFD9BFB0F350CFA000000020CFD9BFD00000007000000080F34D0FA0CFD9BFD000000070F34D0FC0CFD9BFF0F350CFE000000040C9A86F600000007000000080000000700000003000000020F350D020CFD9BFB0000000800000009000000010F34D0F60CFD9C030F34D10200000001000000070F350D02000000090000000100000000120700FE0CFD9BF7000000070000000700000004120700FC08A912FF12073CFE000000040CFD9BF70F350CF6000000000CFD9C030F34D102000000010CFD9BFB000000080F34D0FA045489FD0000000800000008000000020F350D0200000008000000010F34D0F60CFD9C030F34D102000000010CFD9BFB0F350CFA00000002000000070F34D0FA045489FD00000007138670FC0CFD9BFF0F350CFE000000040C9A86FE000000070F8750FF0000000A000000040000000700000003000000020F350D020CFD9BFB000000080F34D0FA00000008000000020000000100000000120700FE000000080000000400000003120700FA08A912FD12073CFC0000000308A912FF12073CFE000000040CFD9BF70F350CF6000000000CFD9C030F34D10200000001045489FB1386ACFA000000020CFD9BFD0F350CFC000000030CFD9BFF00000009000000070F34D0FC0CFD9BFF0F350CFE00000004000000090F34D0FE000000070000000400000003138670FA0CFD9BFD0F350CFC000000030CFD9BFF0F350CFE00000004000000090F34D0FE00000007000000040F34D0FC0CFD9BFF0F350CFE00000004000000090F34D0FE0C9A86F6000000070F8750F700000006000000000000000400000003000000020F350D02045489FB1386ACFA000000020CFD9BFD000000090F34D0FC0000000900000003138670FA0CFD9BFD000000090F34D0FC000000090000000300000002000000010F34D0F60CFD9C030F34D10200000001045489FB00000009000000090000000900000000120700FE0CFD9BF70F350CF6000000000CFD9C030F34D10200000001000000070F350D02045489FB00000007138670FA0CFD9BFD000000070F34D0FC000000080000000300000002000000010F34D0F6000000070000000000000004120700FC08A912FF12073CFE000000040CFD9BF70F350CF6000000000CFD9C030F34D10200000001045489FB1386ACFA00000002045489FD1386ACFC000000030CFD9BFF0F350CFE000000040C9A86F60F878CF700000000000000090F8750F70C9A86FE0000000800000009000000000F34D0FE0000000800000004138670FC0CFD9BFF0F350CFE000000040C9A86F60F878CF7000000000C9A86FE000000080000000A000000080000000800000003138670FA045489FD1386ACFC000000030CFD9BFF0F350CFE000000040C9A86F6000000090F8750F70C9A86FE0000000600000005000000000F34D0FE0C9A86F60F878CF700000000000000080000000600000004138670FC0CFD9BFF0F350CFE000000040C9A86F60F878CF70000000000000005000000050000000500000003000000020F350D02045489FB1386ACFA00000002045489FD1386ACFC000000030000000800000008138670FA045489FD1386ACFC000000030CFD9BFF0000000900000009138670FC0CFD9BFF0F350CFE000000040C9A86F60000000900000005000000080000000300000002000000010F34D0F60CFD9C030F34D10200000001045489FB1386ACFA00000002045489FD00000009138670FC0CFD9BFF0F350CFE000000040C9A86FE0F878CFF0000000400000009000000090F34D0FE000000070000000400000003138670FA045489FD00000009138670FC0CFD9BFF0F350CFE00000004000000050000000500000003000000020F350D02045489FB00000009000000090000000100000000120700FE0CFD9BF70F350CF6000000000CFD9C0300000008000000080000000800000004000000030000000200000001"
theorem small_1740702_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1740702_right_root small_1740702_right_fuel small_1740702_right_count small_1740702_right_encoded = true := by
  decide +kernel
theorem small_1740702_right_covered : CoveredBy scale carrier boxes small_1740702_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1740702_right_root small_1740702_right_fuel small_1740702_right_count small_1740702_right_encoded small_1740702_right_checked

theorem cover_1740702 : CoveredBy scale carrier boxes root_1740702 := by
  apply coveredBy_split_literal root_1740702 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.root_1740703 small_1740702_right_root coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.cover_1740703
  · exact small_1740702_right_covered
#print axioms cover_1740702

def root_1740696 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1740696_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1740696_left_fuel : Nat := 1
def small_1740696_left_count : Nat := 1
def small_1740696_left_encoded : String := "00000000"
theorem small_1740696_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1740696_left_root small_1740696_left_fuel small_1740696_left_count small_1740696_left_encoded = true := by
  decide +kernel
theorem small_1740696_left_covered : CoveredBy scale carrier boxes small_1740696_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1740696_left_root small_1740696_left_fuel small_1740696_left_count small_1740696_left_encoded small_1740696_left_checked

theorem cover_1740696 : CoveredBy scale carrier boxes root_1740696 := by
  apply coveredBy_split_literal root_1740696 small_1740696_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.root_1740702 coord0 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_1740696_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.cover_1740702
#print axioms cover_1740696

def root_1740695 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1740695_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1740695_right_fuel : Nat := 18
def small_1740695_right_count : Nat := 111
def small_1740695_right_encoded : String := "120700F608A91303120701020000000108A912FB12073CFA0000000208A912FD00000007120700FC0000000700000003120700FA08A912FD00000007120700FC08A912FF12073CFE00000004045489F71386ACF60000000004548A031386710200000001000000071386AD02045489FB00000007138670FA045489FD00000007138670FC000000070000000300000002000000010000000700000007000000030000000212073D0208A912FB12073CFA0000000208A912FD12073CFC0000000308A912FF12073CFE00000004045489F7000000070000000700000007120700FC08A912FF12073CFE00000004045489F71386ACF6000000000CFD9C030F34D10200000001000000070F350D020CFD9BFB000000070F34D0FA000000090000000200000001138670F60CFD9C030F34D102000000010000000700000007000000000000000700000003120700FA08A912FD12073CFC0000000308A912FF0000000900000007120700FC08A912FF12073CFE00000004045489F71386ACF6000000000CFD9C030F34D102000000010000000900000009138670F60000000900000000120700FE000000070000000400000003000000020000000100000000"
theorem small_1740695_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1740695_right_root small_1740695_right_fuel small_1740695_right_count small_1740695_right_encoded = true := by
  decide +kernel
theorem small_1740695_right_covered : CoveredBy scale carrier boxes small_1740695_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1740695_right_root small_1740695_right_fuel small_1740695_right_count small_1740695_right_encoded small_1740695_right_checked

theorem cover_1740695 : CoveredBy scale carrier boxes root_1740695 := by
  apply coveredBy_split_literal root_1740695 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.root_1740696 small_1740695_right_root coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.cover_1740696
  · exact small_1740695_right_covered
#print axioms cover_1740695

def root_1740689 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1740689_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1740689_left_fuel : Nat := 1
def small_1740689_left_count : Nat := 1
def small_1740689_left_encoded : String := "00000004"
theorem small_1740689_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1740689_left_root small_1740689_left_fuel small_1740689_left_count small_1740689_left_encoded = true := by
  decide +kernel
theorem small_1740689_left_covered : CoveredBy scale carrier boxes small_1740689_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1740689_left_root small_1740689_left_fuel small_1740689_left_count small_1740689_left_encoded small_1740689_left_checked

theorem cover_1740689 : CoveredBy scale carrier boxes root_1740689 := by
  apply coveredBy_split_literal root_1740689 small_1740689_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.root_1740695 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_1740689_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.cover_1740695
#print axioms cover_1740689

def root_1748259 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1748259 : CoveredBy scale carrier boxes root_1748259 := by
  apply coveredBy_split_literal root_1748259 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0677.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0678.root coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0677.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0678.covered
#print axioms cover_1748259

def root_1748253 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1748253_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1748253_left_fuel : Nat := 1
def small_1748253_left_count : Nat := 1
def small_1748253_left_encoded : String := "00000001"
theorem small_1748253_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1748253_left_root small_1748253_left_fuel small_1748253_left_count small_1748253_left_encoded = true := by
  decide +kernel
theorem small_1748253_left_covered : CoveredBy scale carrier boxes small_1748253_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1748253_left_root small_1748253_left_fuel small_1748253_left_count small_1748253_left_encoded small_1748253_left_checked

theorem cover_1748253 : CoveredBy scale carrier boxes root_1748253 := by
  apply coveredBy_split_literal root_1748253 small_1748253_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.root_1748259 coord1 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_1748253_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.cover_1748259
#print axioms cover_1748253

def root_1748252 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1748252_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1748252_right_fuel : Nat := 20
def small_1748252_right_count : Nat := 219
def small_1748252_right_encoded : String := "12073D0208A912FB12073CFA0000000208A912FD12073CFC00000003050000FE135D80FF000000040CFD9BF70F350CF6000000000CFD9C030F34D102000000010CFD9BFB0F350CFA000000020CFD9BFD000000090F34D0FC0C9A86F6000000090000000800000003000000090F350D020CFD9BFB0F350CFA000000020000000900000009000000010F34D0F60CFD9C03000000090000000900000000135D44FF0CFD9BF70F350CF6000000000CFD9C030F34D102000000010CFD9BFB0F350CFA0000000200000009000000090F350D0200000009000000010F34D0F6000000090000000000000004120700FC050000FE135D80FF000000040CFD9BF70F350CF6000000000CFD9C030F34D102000000010CFD9BFB0F350CFA00000002045489FD1386ACFC000000030C9A86F60F878CF7000000000C9A86FA000000080F8750FB000000070000000200000008138670FC0000000A000000030F34D0FA045489FD1386ACFC000000030C9A86F60F878CF700000000000000090F8750F7078000FE000000080000000A000000000000000A000000020F350D020CFD9BFB000000080F34D0FA0000000A00000002000000010F34D0F60CFD9C030F34D102000000010CFD9BFB0F350CFA00000002045489FD000000070000000A0F34D0FA045489FD000000090000000A000000020F350D020CFD9BFB0000000A0F34D0FA00000009000000020000000100000000135D44FF0CFD9BF70F350CF6000000000CFD9C030F34D102000000010CFD9BFB0000000A0F34D0FA0000000A000000020000000A0F34D0F60CFD9C030F34D102000000010CFD9BFB0000000A0F34D0FA00000009000000020000000A000000000000000400000003120700FA08A912FD12073CFC00000003050000FE0000000900000009120700FC050000FE135D80FF000000040CFD9BF70F350CF6000000000CFD9C030F34D10200000001045489FB1386ACFA00000002045489FD1386ACFC000000030C9A86F6000000090F8750F700000009000000000000000A138670FA045489FD0000000900000005000000020F350D02045489FB0000000A00000009000000010F34D0F60CFD9C03000000090000000900000000135D44FF0CFD9BF70F350CF6000000000CFD9C030F34D10200000001045489FB0000000A000000050000000A0F34D0F6000000090000000000000004000000030000000200000001"
theorem small_1748252_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1748252_right_root small_1748252_right_fuel small_1748252_right_count small_1748252_right_encoded = true := by
  decide +kernel
theorem small_1748252_right_covered : CoveredBy scale carrier boxes small_1748252_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1748252_right_root small_1748252_right_fuel small_1748252_right_count small_1748252_right_encoded small_1748252_right_checked

theorem cover_1748252 : CoveredBy scale carrier boxes root_1748252 := by
  apply coveredBy_split_literal root_1748252 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.root_1748253 small_1748252_right_root coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.cover_1748253
  · exact small_1748252_right_covered
#print axioms cover_1748252

def root_1748246 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1748246_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1748246_left_fuel : Nat := 1
def small_1748246_left_count : Nat := 1
def small_1748246_left_encoded : String := "00000000"
theorem small_1748246_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1748246_left_root small_1748246_left_fuel small_1748246_left_count small_1748246_left_encoded = true := by
  decide +kernel
theorem small_1748246_left_covered : CoveredBy scale carrier boxes small_1748246_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1748246_left_root small_1748246_left_fuel small_1748246_left_count small_1748246_left_encoded small_1748246_left_checked

theorem cover_1748246 : CoveredBy scale carrier boxes root_1748246 := by
  apply coveredBy_split_literal root_1748246 small_1748246_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.root_1748252 coord0 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_1748246_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.cover_1748252
#print axioms cover_1748246

def root_1748245 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1748245_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1748245_right_fuel : Nat := 16
def small_1748245_right_count : Nat := 155
def small_1748245_right_encoded : String := "120700F608A91303120701020000000108A912FB12073CFA0000000208A912FD12073CFC00000003050000FE00000007135D44FF045489F7000000090000000700000004120700FC050000FE135D80FF00000004045489F71386ACF60000000004548A0313867102000000010CFD9BFB000000060F34D0FA00000006000000021386AD020CFD9BFB000000070F34D0FA00000007000000020000000100000007135D44FF045489F71386ACF60000000004548A03000000061386AD020000000600000001000000060000000400000003120700FA08A912FD00000009120700FC050000FE135D80FF00000004045489F71386ACF60000000004548A0300000009000000090000000900000009000000030000000212073D0208A912FB12073CFA0000000208A912FD12073CFC00000003050000FE135D80FF00000004045489F700000009138670F60000000700000000135D44FF045489F7000000090000000900000004120700FC050000FE135D80FF00000004045489F71386ACF6000000000CFD9C030F34D102000000010CFD9BFB000000070F34D0FA00000009000000020F350D020CFD9BFB0000000A0000000900000001138670F60CFD9C030F34D10200000001000000070F350D020CFD9BFB00000007000000090000000100000000135D44FF045489F71386ACF6000000000CFD9C030F34D102000000010CFD9BFB0000000A000000090000000A138670F60CFD9C030F34D102000000010CFD9BFB00000006000000050000000A000000000000000400000003120700FA08A912FD00000009120700FC050000FE135D80FF00000004000000090000000900000003000000020000000100000000"
theorem small_1748245_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1748245_right_root small_1748245_right_fuel small_1748245_right_count small_1748245_right_encoded = true := by
  decide +kernel
theorem small_1748245_right_covered : CoveredBy scale carrier boxes small_1748245_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1748245_right_root small_1748245_right_fuel small_1748245_right_count small_1748245_right_encoded small_1748245_right_checked

theorem cover_1748245 : CoveredBy scale carrier boxes root_1748245 := by
  apply coveredBy_split_literal root_1748245 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.root_1748246 small_1748245_right_root coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.cover_1748246
  · exact small_1748245_right_covered
#print axioms cover_1748245

def root_1748240 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1748240_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1748240_right_fuel : Nat := 1
def small_1748240_right_count : Nat := 1
def small_1748240_right_encoded : String := "00000004"
theorem small_1748240_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1748240_right_root small_1748240_right_fuel small_1748240_right_count small_1748240_right_encoded = true := by
  decide +kernel
theorem small_1748240_right_covered : CoveredBy scale carrier boxes small_1748240_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1748240_right_root small_1748240_right_fuel small_1748240_right_count small_1748240_right_encoded small_1748240_right_checked

theorem cover_1748240 : CoveredBy scale carrier boxes root_1748240 := by
  apply coveredBy_split_literal root_1748240 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.root_1748245 small_1748240_right_root coord4 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.cover_1748245
  · exact small_1748240_right_covered
#print axioms cover_1748240

def root_1740688 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1740688 : CoveredBy scale carrier boxes root_1740688 := by
  apply coveredBy_split_literal root_1740688 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.root_1740689 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.root_1748240 coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.cover_1740689
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.cover_1748240
#print axioms cover_1740688

def root_1740682 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1740682_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1740682_left_fuel : Nat := 1
def small_1740682_left_count : Nat := 1
def small_1740682_left_encoded : String := "00000003"
theorem small_1740682_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1740682_left_root small_1740682_left_fuel small_1740682_left_count small_1740682_left_encoded = true := by
  decide +kernel
theorem small_1740682_left_covered : CoveredBy scale carrier boxes small_1740682_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1740682_left_root small_1740682_left_fuel small_1740682_left_count small_1740682_left_encoded small_1740682_left_checked

theorem cover_1740682 : CoveredBy scale carrier boxes root_1740682 := by
  apply coveredBy_split_literal root_1740682 small_1740682_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.root_1740688 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_1740682_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.cover_1740688
#print axioms cover_1740682

def root_1740681 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1740681_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1740681_right_fuel : Nat := 26
def small_1740681_right_count : Nat := 245
def small_1740681_right_encoded : String := "1151E8FD0A0000FE115224FF0000000408A912F712073CF60000000008A91303120701020000000108A912FB12073CFA0000000208A912FF12073CFE00000004050000FC000000070000000700000007120700FA08A912FF12073CFE00000004050000FC135D80FD000000030CFD9BF70F350CF60000000004548A031386710200000001045489FB00000007138670FA0CFD9BFF0F350CFE000000040C9A86F6000000070F8750F70C9A86FE000000070F8750FF00000007000000040000000000000007000000021386AD02045489FB00000007138670FA0CFD9BFF0F350CFE000000040C9A86F6000000070000000900000007000000020000000100000007135D44FD0CFD9BF70F350CF60000000004548A031386710200000001045489FB00000007138670FA0CFD9BFF0000000700000007000000021386AD02045489FB00000007138670FA0000000700000002000000010000000700000003000000070000000212073D0208A912FB12073CFA0000000208A912FF12073CFE00000004050000FC135D80FD000000030CFD9BF70F350CF6000000000CFD9C030F34D10200000001000000070000000700000007135D44FD0CFD9BF7000000070000000700000003120700FE0000000700000004120700FA08A912FF12073CFE00000004050000FC135D80FD000000030CFD9BF70F350CF6000000000CFD9C030F34D10200000001045489FB00000007138670FA0CFD9BFF0000000900000007000000020F350D0200000009000000010F34D0F60000000900000000135D44FD0CFD9BF70F350CF6000000000CFD9C030F34D10200000001045489FB00000007138670FA0CFD9BFF0000000700000007000000020F350D02045489FB0000000700000009000000010F34D0F6000000070000000000000003120700FE00000007000000040000000200000001120700F608A9130312070102000000010000000712073D0208A912FB00000007120700FA08A912FF00000007000000070000000200000001000000001151E8FF08A912F712073CF60000000008A91303120701020000000108A912FB12073CFA00000002050000FC00000009135D44FD0000000900000003120700FA050000FC135D80FD00000003050000FE135D80FF000000040CFD9BF70F350CF60000000004548A03138671020000000100000009000000090000000900000009135D44FD050000FE135D80FF000000040CFD9BF70F350CF60000000004548A031386710200000001045489FB0000000500000009000000090000000900000009000000030000000212073D0208A912FB000000090000000900000001120700F600000009000000000000000400000003"
theorem small_1740681_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1740681_right_root small_1740681_right_fuel small_1740681_right_count small_1740681_right_encoded = true := by
  decide +kernel
theorem small_1740681_right_covered : CoveredBy scale carrier boxes small_1740681_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1740681_right_root small_1740681_right_fuel small_1740681_right_count small_1740681_right_encoded small_1740681_right_checked

theorem cover_1740681 : CoveredBy scale carrier boxes root_1740681 := by
  apply coveredBy_split_literal root_1740681 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.root_1740682 small_1740681_right_root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.cover_1740682
  · exact small_1740681_right_covered
#print axioms cover_1740681

def root_1740675 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1740675_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1740675_left_fuel : Nat := 1
def small_1740675_left_count : Nat := 1
def small_1740675_left_encoded : String := "00000002"
theorem small_1740675_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1740675_left_root small_1740675_left_fuel small_1740675_left_count small_1740675_left_encoded = true := by
  decide +kernel
theorem small_1740675_left_covered : CoveredBy scale carrier boxes small_1740675_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1740675_left_root small_1740675_left_fuel small_1740675_left_count small_1740675_left_encoded small_1740675_left_checked

theorem cover_1740675 : CoveredBy scale carrier boxes root_1740675 := by
  apply coveredBy_split_literal root_1740675 small_1740675_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.root_1740681 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_1740675_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.cover_1740681
#print axioms cover_1740675

def root_1740674 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1740674 : CoveredBy scale carrier boxes root_1740674 := by
  apply coveredBy_split_literal root_1740674 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.root_1740675 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0679.root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.cover_1740675
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0679.covered
#print axioms cover_1740674

def root_1740669 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1740669_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1740669_right_fuel : Nat := 1
def small_1740669_right_count : Nat := 1
def small_1740669_right_encoded : String := "00000001"
theorem small_1740669_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1740669_right_root small_1740669_right_fuel small_1740669_right_count small_1740669_right_encoded = true := by
  decide +kernel
theorem small_1740669_right_covered : CoveredBy scale carrier boxes small_1740669_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1740669_right_root small_1740669_right_fuel small_1740669_right_count small_1740669_right_encoded small_1740669_right_checked

theorem cover_1740669 : CoveredBy scale carrier boxes root_1740669 := by
  apply coveredBy_split_literal root_1740669 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.root_1740674 small_1740669_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.cover_1740674
  · exact small_1740669_right_covered
#print axioms cover_1740669

def root_1740117 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1740117_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1740117_left_fuel : Nat := 20
def small_1740117_left_count : Nat := 263
def small_1740117_left_encoded : String := "1151E903000000010A0000FA115224FB000000020A0000FC115224FD000000030A0000FE115224FF0000000408A912F712073CF60000000008A912FB12073CFA0000000208A912FD12073CFC0000000308A912FF000000080000000900000008120700FA08A912FD12073CFC0000000308A912FF12073CFE0000000400000009120700FE0500010200000008135D81030CFD9BF70F350CF60000000000000008000000080000000100000004120700FC08A912FF12073CFE000000040500010200000008135D81030CFD9BF70F350CF600000000000000080000000800000001000000080000000300000002120700F608A912FB12073CFA0000000208A912FD00000009120700FC08A912FF12073CFE000000040500010200000009135D8103045489F7000000080000000800000001000000080000000300000009000000001151E8FF08A912F712073CF60000000008A912FB12073CFA0000000208A912FD12073CFC000000030500010200000009135D81030000000900000001120700FC050001020000000A135D8103050000FE135D80FF000000040CFD9BF700000008000000080000000A0000000100000003120700FA0000000900000002120700F608A912FB12073CFA0000000208A912FD00000009120700FC0500010200000009135D8103050000FE135D80FF00000004000000090000000900000001000000030000000900000000000000041151E8FD0A0000FE115224FF0000000408A912F712073CF60000000008A912FB12073CFA0000000208A912FF00000009120700FE0000000700000004120700FA08A912FF12073CFE00000004050001020000000900000009120700FE0500010200000008000000070000000400000002120700F608A912FB00000008120700FA0000000900000002000000001151E8FF0000000900000004000000031151E8FB0A0000FC115224FD000000030A0000FE115224FF0000000408A912F712073CF60000000008A912FD00000008120700FC08A912FF12073CFE000000040500010200000008000000080000000800000003120700F608A912FD00000009120700FC08A912FF12073CFE000000040500010200000009000000070000000700000003000000001151E8FF08A912F712073CF60000000008A912FD12073CFC000000030500010200000008135D8103050000FA000000080000000900000001120700FC0000000A00000003120700F608A912FD12073CFC0000000305000102135D450300000001050000FA00000008135D44FB0000000700000002135D8103050000FA000000070000000700000001120700FC05000102135D4503000000010000000A135D8103050000FA0000000A135D44FB050000FE000000070000000500000002000000010000000300000000000000041151E8FD0A0000FE000000081151E8FF00000008000000040000000300000002"
theorem small_1740117_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1740117_left_root small_1740117_left_fuel small_1740117_left_count small_1740117_left_encoded = true := by
  decide +kernel
theorem small_1740117_left_covered : CoveredBy scale carrier boxes small_1740117_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1740117_left_root small_1740117_left_fuel small_1740117_left_count small_1740117_left_encoded small_1740117_left_checked

theorem cover_1740117 : CoveredBy scale carrier boxes root_1740117 := by
  apply coveredBy_split_literal root_1740117 small_1740117_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.root_1740669 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_1740117_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.cover_1740669
#print axioms cover_1740117

def root_1740111 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1740111_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1740111_left_fuel : Nat := 1
def small_1740111_left_count : Nat := 1
def small_1740111_left_encoded : String := "00000000"
theorem small_1740111_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1740111_left_root small_1740111_left_fuel small_1740111_left_count small_1740111_left_encoded = true := by
  decide +kernel
theorem small_1740111_left_covered : CoveredBy scale carrier boxes small_1740111_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1740111_left_root small_1740111_left_fuel small_1740111_left_count small_1740111_left_encoded small_1740111_left_checked

theorem cover_1740111 : CoveredBy scale carrier boxes root_1740111 := by
  apply coveredBy_split_literal root_1740111 small_1740111_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.root_1740117 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_1740111_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.cover_1740117
#print axioms cover_1740111

def root_1756107 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1756107 : CoveredBy scale carrier boxes root_1756107 := by
  apply coveredBy_split_literal root_1756107 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0680.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0681.root coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0680.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0681.covered
#print axioms cover_1756107

def root_1756102 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1756102_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1756102_right_fuel : Nat := 1
def small_1756102_right_count : Nat := 1
def small_1756102_right_encoded : String := "00000002"
theorem small_1756102_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1756102_right_root small_1756102_right_fuel small_1756102_right_count small_1756102_right_encoded = true := by
  decide +kernel
theorem small_1756102_right_covered : CoveredBy scale carrier boxes small_1756102_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1756102_right_root small_1756102_right_fuel small_1756102_right_count small_1756102_right_encoded small_1756102_right_checked

theorem cover_1756102 : CoveredBy scale carrier boxes root_1756102 := by
  apply coveredBy_split_literal root_1756102 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.root_1756107 small_1756102_right_root coord2 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.cover_1756107
  · exact small_1756102_right_covered
#print axioms cover_1756102

def root_1755592 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1755592_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1755592_left_fuel : Nat := 24
def small_1755592_left_count : Nat := 237
def small_1755592_left_encoded : String := "12073CFA0000000208A912FD12073CFC0000000308A912FF12073CFE00000004050000F6135D80F70000000004548A0313867102000000010CFD9BFB0F350CFA000000020CFD9BFD0F350CFC0000000300000007000000080F34D0FA0CFD9BFD0F350CFC000000030CFD9BFF0F350CFE000000040C9A86FC0F878CFD000000030C9A86FE000000070F8750FF00000005000000040F8750FD0000000500000003000000070F34D0FC0CFD9BFF0F350CFE000000040C9A86FE000000080F8750FF078000F6128A7CF700000000022A458313E1C502000000010AD3577B0000000510D100FA00000007000000020000000800000008000000040000000700000003000000021386AD020CFD9BFB0F350CFA000000020CFD9BFD0F350CFC0000000300000007000000080F34D0FA0CFD9BFD0F350CFC000000030CFD9BFF0F350CFE000000040C9A86FC0F878CFD000000030C9A86FE000000070F8750FF00000007000000040F8750FD0000000700000003000000070F34D0FC0CFD9BFF0F350CFE000000040C9A86FE000000080F8750FF000000080000000400000008000000030000000200000001135D44F704548A0313867102000000010CFD9BFB0F350CFA000000020CFD9BFD00000005000000080F34D0FA0CFD9BFD0F350CFC000000030000000A0F34D0FC0CFD9BFF000000080000000800000003000000021386AD020CFD9BFB0F350CFA00000002000000080F34D0FA0CFD9BFD0F350CFC000000030CFD9BFF0F350CFE000000040C9A86FC0F878CFD0000000300000008000000080F34D0FE00000007000000040F34D0FC0000000800000003000000020000000100000000120700FE050000F600000007135D44F704548A0300000008000000080000000000000004120700FC08A912FF12073CFE00000004050000F6135D80F70000000004548A0313867102000000010CFD9BFB0F350CFA00000002045489FD00000008000000080F34D0FA045489FD1386ACFC000000030CFD9BFF0F350CFE000000040C9A86FE000000080F8750FF078000F6128A7CF700000000022A458313E1C502000000010AD3577B0000000810D100FA000000080000000200000008000000080000000400000008138670FC0CFD9BFF0F350CFE000000040C9A86FE000000080F8750FF078000F6128A7CF7000000000000000800000008000000040000000800000003000000021386AD020CFD9BFB000000080F34D0FA000000080000000200000001135D44F704548A031386710200000001000000080000000800000000120700FE000000080000000400000003"
theorem small_1755592_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1755592_left_root small_1755592_left_fuel small_1755592_left_count small_1755592_left_encoded = true := by
  decide +kernel
theorem small_1755592_left_covered : CoveredBy scale carrier boxes small_1755592_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1755592_left_root small_1755592_left_fuel small_1755592_left_count small_1755592_left_encoded small_1755592_left_checked

theorem cover_1755592 : CoveredBy scale carrier boxes root_1755592 := by
  apply coveredBy_split_literal root_1755592 small_1755592_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.root_1756102 coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_1755592_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.cover_1756102
#print axioms cover_1755592

def root_1755586 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1755586_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1755586_left_fuel : Nat := 1
def small_1755586_left_count : Nat := 1
def small_1755586_left_encoded : String := "00000001"
theorem small_1755586_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1755586_left_root small_1755586_left_fuel small_1755586_left_count small_1755586_left_encoded = true := by
  decide +kernel
theorem small_1755586_left_covered : CoveredBy scale carrier boxes small_1755586_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1755586_left_root small_1755586_left_fuel small_1755586_left_count small_1755586_left_encoded small_1755586_left_checked

theorem cover_1755586 : CoveredBy scale carrier boxes root_1755586 := by
  apply coveredBy_split_literal root_1755586 small_1755586_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.root_1755592 coord1 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_1755586_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.cover_1755592
#print axioms cover_1755586

def root_1755585 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1755585_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1755585_right_fuel : Nat := 22
def small_1755585_right_count : Nat := 377
def small_1755585_right_encoded : String := "12073D0208A912FB12073CFA0000000208A912FD12073CFC0000000308A912FF12073CFE00000004050000F6135D80F7000000000CFD9C030F34D102000000010CFD9BFB0F350CFA000000020CFD9BFD0F350CFC0000000300000008000000080F34D0FA0CFD9BFD0F350CFC000000030CFD9BFF0F350CFE000000040C9A86FC0F878CFD0000000300000008000000080F34D0FE00000007000000040F34D0FC0CFD9BFF000000080000000800000003000000020F350D020CFD9BFB000000080F34D0FA0CFD9BFD0F350CFC000000030CFD9BFF0000000800000008000000080000000200000001135D44F70CFD9C030F34D102000000010CFD9BFB0F350CFA00000002000000080F34D0FA0CFD9BFD0F350CFC000000030CFD9BFF000000080F34D0FE000000080000000400000008000000020F350D020CFD9BFB000000080F34D0FA0CFD9BFD0F350CFC000000030CFD9BFF000000060000000800000008000000020000000100000000120700FE050000F6135D80F7000000000CFD9C03000000080F350D020000000800000001135D44F70CFD9C0300000008000000080000000000000004120700FC08A912FF12073CFE00000004050000F60000000800000008120700FE000000080000000400000003120700FA08A912FD12073CFC0000000308A912FF12073CFE00000004050000F6135D80F7000000000CFD9C030F34D10200000001045489FB1386ACFA000000020CFD9BFD0F350CFC000000030CFD9BFF0F350CFE000000040C9A86FC0F878CFD000000030C9A86FE0F878CFF0000000400000006000000090F8750FD00000009000000030F34D0FE00000007000000040F34D0FC0CFD9BFF0F350CFE000000040C9A86FE0F878CFF00000004000000080F8750FF078000F60000000900000006000000040F34D0FE000000080000000400000003138670FA0CFD9BFD0F350CFC000000030CFD9BFF000000060F34D0FE00000006000000040F34D0FC0CFD9BFF000000060F34D0FE000000060000000400000003000000020F350D02045489FB1386ACFA000000020CFD9BFD0F350CFC000000030CFD9BFF00000009000000090F34D0FC0CFD9BFF000000060F34D0FE000000060000000400000003138670FA0CFD9BFD000000060F34D0FC00000006000000030000000200000001135D44F70CFD9C030F34D10200000001045489FB1386ACFA000000020CFD9BFD0F350CFC000000030CFD9BFF000000060F34D0FE00000006000000040F34D0FC0CFD9BFF000000060000000600000003138670FA0CFD9BFD000000060F34D0FC0000000600000003000000020F350D02045489FB1386ACFA000000020CFD9BFD000000060F34D0FC0000000600000003000000060000000100000000120700FE050000F6135D80F7000000000CFD9C030F34D10200000001045489FB1386ACFA0000000200000007138670FA0CFD9BFD000000070F34D0FC0000000600000003000000020F350D02045489FB1386ACFA000000020CFD9BFD0000000700000008138670FA0CFD9BFD000000060F34D0FC00000006000000030000000200000001135D44F70CFD9C030F34D10200000001045489FB1386ACFA000000020CFD9BFD0000000700000008000000060F350D02045489FB1386ACFA000000020CFD9BFD000000060000000600000006000000010000000000000004120700FC08A912FF12073CFE00000004050000F6135D80F7000000000CFD9C030F34D10200000001045489FB1386ACFA00000002045489FD1386ACFC000000030CFD9BFF0F350CFE000000040C9A86FE000000080F8750FF00000008000000040000000800000008138670FA045489FD1386ACFC000000030CFD9BFF0000000600000005138670FC0CFD9BFF000000060000000500000003000000020F350D02045489FB00000008138670FA045489FD00000006000000080000000200000001135D44F70CFD9C030F34D10200000001045489FB00000008000000060F350D02045489FB00000008000000060000000100000000120700FE050000F6135D80F700000000000000080000000800000004000000030000000200000001"
theorem small_1755585_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1755585_right_root small_1755585_right_fuel small_1755585_right_count small_1755585_right_encoded = true := by
  decide +kernel
theorem small_1755585_right_covered : CoveredBy scale carrier boxes small_1755585_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1755585_right_root small_1755585_right_fuel small_1755585_right_count small_1755585_right_encoded small_1755585_right_checked

theorem cover_1755585 : CoveredBy scale carrier boxes root_1755585 := by
  apply coveredBy_split_literal root_1755585 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.root_1755586 small_1755585_right_root coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.cover_1755586
  · exact small_1755585_right_covered
#print axioms cover_1755585

def root_1755579 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1755579_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1755579_left_fuel : Nat := 1
def small_1755579_left_count : Nat := 1
def small_1755579_left_encoded : String := "00000004"
theorem small_1755579_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1755579_left_root small_1755579_left_fuel small_1755579_left_count small_1755579_left_encoded = true := by
  decide +kernel
theorem small_1755579_left_covered : CoveredBy scale carrier boxes small_1755579_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1755579_left_root small_1755579_left_fuel small_1755579_left_count small_1755579_left_encoded small_1755579_left_checked

theorem cover_1755579 : CoveredBy scale carrier boxes root_1755579 := by
  apply coveredBy_split_literal root_1755579 small_1755579_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.root_1755585 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_1755579_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.cover_1755585
#print axioms cover_1755579

def root_1765714 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-6291456)⟩, ⟨(-15553280), (-14529024)⟩⟩, ⟨⟨(16678144), (16777216)⟩, ⟨(0), (1816224)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(-15553280), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1765714 : CoveredBy scale carrier boxes root_1765714 := by
  apply coveredBy_split_literal root_1765714 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0684.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0685.root coord2 true (-5448672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0684.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0685.covered
#print axioms cover_1765714

def root_1765708 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-6291456)⟩, ⟨(-15553280), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (1816224)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(-15553280), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1765708_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-6291456)⟩, ⟨(-15553280), (-14529024)⟩⟩, ⟨⟨(16378880), (16678144)⟩, ⟨(0), (1816224)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(-15553280), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1765708_left_fuel : Nat := 1
def small_1765708_left_count : Nat := 1
def small_1765708_left_encoded : String := "00000001"
theorem small_1765708_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1765708_left_root small_1765708_left_fuel small_1765708_left_count small_1765708_left_encoded = true := by
  decide +kernel
theorem small_1765708_left_covered : CoveredBy scale carrier boxes small_1765708_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1765708_left_root small_1765708_left_fuel small_1765708_left_count small_1765708_left_encoded small_1765708_left_checked

theorem cover_1765708 : CoveredBy scale carrier boxes root_1765708 := by
  apply coveredBy_split_literal root_1765708 small_1765708_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.root_1765714 coord1 false (16678144)
  · decide +kernel
  · decide +kernel
  · exact small_1765708_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.cover_1765714
#print axioms cover_1765708

def root_1765707 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-6291456)⟩, ⟨(-15553280), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(-15553280), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1765707_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-6291456)⟩, ⟨(-15553280), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(1816224), (3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(-15553280), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1765707_right_fuel : Nat := 23
def small_1765707_right_count : Nat := 307
def small_1765707_right_encoded : String := "13E20102067ECE7B12EA94FA00000002067ECE7D12EA94FC0000000308C000F611FC24F70000000008C000FE11FC24FF00000004033F67C313BBF502000000010793F0BB00000008128220FA0793F0BD00000009128220FC096000F60000000900000008000000030000000213BC310200000008000000010000000911FBE8F708C000FE11FC24FF000000040000000811FBE8FF033F67C313BBF502000000010793F0BB12825CFA000000020793F0BD0000000500000008128220FA0793F0BD00000009128220FC082000F60000000900000008000000030000000213BC31020793F0BB000000080000000900000001000000040000000012EA58FC08C000F611FC24F70000000008C000FE11FC24FF00000004033F67C313BBF502000000010793F0BB00000008128220FA0569AC3D134110FC000000030000000800000008000000020000000811FBE8FF033F67C313BBF502000000010793F0BB0000000A128220FA0000000A000000020000000A0000000411FBE8F708C000FE0000000811FBE8FF033F67C313BBF502000000010793F0BB00000008128220FA0569AC3D134110FC00000003082000F60000000A000000080000000A0000000213BC3102000000080000000100000004000000000000000312EA58FA067ECE7D12EA94FC0000000308C000F611FC24F70000000008C000FE11FC24FF00000004033F67C313BBF502000000010569AC3B134110FA000000020000000900000009000000090000000911FBE8F708C000FE11FC24FF00000004033F67C313BBF502000000010569AC3B134110FA000000020793F0BD00000006128220FC0000000600000003000000060000000611FBE8FF033F67C313BBF502000000010569AC3B134110FA000000020793F0BD00000009128220FC082000F60000000900000006000000031340D4FA0793F0BD00000006000000060000000213BC31020000000900000001000000040000000012EA58FC08C000F611FC24F70000000008C000FE11FC24FF00000004033F67C313BBF502000000010569AC3B134110FA000000020569AC3D134110FC00000003096000F611AABCF700000000096000FE11AABCFF0000000402B4D6A313D0D1020000000105F43D5B0000000800000006000000060000000911AA80F7096000FE0000000611AA80FF02B4D6A313D0D1020000000105F43D5B00000008000000060000000600000004000000001340D4FC096000F60000000A11AA80F70000000A00000000000000031340D4FA0569AC3D134110FC00000003096000F611AABCF700000000096000FE000000060000000900000006000000050000000213BC31020569AC3B134110FA000000020569AC3D134110FC00000003096000F6000000090000000600000005000000050000000111FBE8FF033F67C313BBF502000000010569AC3B0000000A1340D4FA0569AC3D0000000900000005000000020000000A0000000411FBE8F708C000FE11FC24FF00000004033F67C313BBF502000000010569AC3B134110FA000000020569AC3D0000000600000008000000060000000611FBE8FF033F67C313BBF502000000010569AC3B134110FA000000020569AC3D134110FC00000003082000F60000000A00000007000000070000000713BC31020569AC3B0000000A00000005000000010000000400000000000000030000000200000001"
theorem small_1765707_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1765707_right_root small_1765707_right_fuel small_1765707_right_count small_1765707_right_encoded = true := by
  decide +kernel
theorem small_1765707_right_covered : CoveredBy scale carrier boxes small_1765707_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1765707_right_root small_1765707_right_fuel small_1765707_right_count small_1765707_right_encoded small_1765707_right_checked

theorem cover_1765707 : CoveredBy scale carrier boxes root_1765707 := by
  apply coveredBy_split_literal root_1765707 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.root_1765708 small_1765707_right_root coord1 true (1816224)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.cover_1765708
  · exact small_1765707_right_covered
#print axioms cover_1765707

def root_1765701 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-6291456)⟩, ⟨(-15553280), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1765701_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-6291456)⟩, ⟨(-15553280), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(-16244736), (-15553280)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1765701_left_fuel : Nat := 1
def small_1765701_left_count : Nat := 1
def small_1765701_left_encoded : String := "00000004"
theorem small_1765701_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1765701_left_root small_1765701_left_fuel small_1765701_left_count small_1765701_left_encoded = true := by
  decide +kernel
theorem small_1765701_left_covered : CoveredBy scale carrier boxes small_1765701_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1765701_left_root small_1765701_left_fuel small_1765701_left_count small_1765701_left_encoded small_1765701_left_checked

theorem cover_1765701 : CoveredBy scale carrier boxes root_1765701 := by
  apply coveredBy_split_literal root_1765701 small_1765701_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.root_1765707 coord4 true (-15553280)
  · decide +kernel
  · decide +kernel
  · exact small_1765701_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041.cover_1765707
#print axioms cover_1765701

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0041
