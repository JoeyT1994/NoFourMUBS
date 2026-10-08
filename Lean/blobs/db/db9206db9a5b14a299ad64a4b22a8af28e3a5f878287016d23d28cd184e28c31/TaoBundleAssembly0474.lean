import TaoBundleAssembly0468
import TaoBundleAssembly0472
import TaoBundleAssembly0473
import TaoBundleChunkBatch0644
import TaoBundleChunkBatch0652
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0474
def root_6887391 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6887391_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6887391_right_fuel : Nat := 26
def small_6887391_right_count : Nat := 379
def small_6887391_right_encoded : String := "120701000000000008A912F912073D0205000104135D450500000002050000FC135D80FD0000000305000108135D450900000004045489F71386AD000CFD9BF90F350D020C9A87020F8750F900000008000000010F878CF9000000010280010413D7B10500000002078000FC128A7CFD0000000300000007128A40FD028001080000000813D7ED0900000008000000040000000313D7ED05078000FC000000080000000800000002000000010F34D102000000010280010413D7B10500000002078000FC128A7CFD000000030280010813D7B10900000004067ECE7712EA95000AD357790000000700000009000000000000000700000007128A40FD0280010813D7B10900000004067ECE7712EA95000AD3577910D13D02000000080000000110D1010200000001014001040000000700000008000000000000000813D7ED09067ECE7712EA95000AD3577910D13D020140010400000007000000050000000110D1010200000001000000050000000000000007000000040000000313D7ED05078000FC128A7CFD00000003028001080000000900000009128A40FD02800108000000080000000500000003000000020000000013867100000000000CFD9BF90F350D0200000008000000010F34D10200000001028001040000000700000008135D8109045489F71386AD000CFD9BF90F350D020C9A87020F8750F90280010413D7B10500000002078000FC00000007128A40FD07800108128A41090000000400000006000000060000000313D7ED05078000FC128A7CFD00000003078001080000000800000007128A40FD0780010800000008000000050000000300000002000000010F878CF9000000010280010413D7B10500000002078000FC00000007128A40FD07800108128A410900000004067ECE7712EA9500000000070000000000000007000000050000000313D7ED05078000FC128A7CFD0000000307800108128A410900000004067ECE7712EA95000DE7CA020E5FD8F90000000700000001000000050000000000000007000000050000000500000002000000010F34D102000000010280010413D7B10500000002078000FC0000000900000005000000050000000013867100000000000CFD9BF90F350D020C9A87020F8750F900000007000000010F878CF900000001028001040000000700000005000000010F34D102000000010000000500000004135D44FD05000108135D450900000004045489F71386AD000CFD9BF90F350D020C9A8702000000080F878CF9000000010280010413D7B10500000002028000FC000000080000000800000008000000010F34D102000000010280010413D7B10500000002028000FC13D7ECFD000000030280010813D7B10900000004067ECE7712EA95000AD357790000000810D10102000000010000000500000000000000080000000500000005000000050000000013867100000000000CFD9BF90000000800000008135D8109045489F71386AD000CFD9BF90F350D020C9A87020F8750F9000000060000000100000005000000010F34D1020000000100000005000000001386710000000000000000050000000400000003135D8105050000FC135D80FD0000000305000108135D450900000004045489F71386AD000CFD9BF90F350D0200000008000000010F34D1020000000107800104128A410500000002078000FC00000009000000050000000500000000138671000000000000000008135D8109045489F71386AD000CFD9BF90F350D020C9A87020F8750F907800104128A410500000002078000FC128A7CFD0000000307800108000000080000000500000005000000050000000100000005000000010F34D10200000001000000050000000013867100000000000000000500000004135D44FD05000108135D450900000004045489F71386AD000CFD9BF90F350D0200000008000000010F34D1020000000100000005000000000000000800000005000000030000000200000001120701020000000105000104135D450500000002050000FC135D80FD0000000305000108135D450900000004045489F70000000900000009000000050000000500000005"
theorem small_6887391_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6887391_right_root small_6887391_right_fuel small_6887391_right_count small_6887391_right_encoded = true := by
  decide +kernel
theorem small_6887391_right_covered : CoveredBy scale carrier boxes small_6887391_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6887391_right_root small_6887391_right_fuel small_6887391_right_count small_6887391_right_encoded small_6887391_right_checked

theorem cover_6887391 : CoveredBy scale carrier boxes root_6887391 := by
  apply coveredBy_split_literal root_6887391 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0473.root_6887392 small_6887391_right_root coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0473.cover_6887392
  · exact small_6887391_right_covered
#print axioms cover_6887391

def root_6887385 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6887385_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6887385_left_fuel : Nat := 1
def small_6887385_left_count : Nat := 1
def small_6887385_left_encoded : String := "00000004"
theorem small_6887385_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6887385_left_root small_6887385_left_fuel small_6887385_left_count small_6887385_left_encoded = true := by
  decide +kernel
theorem small_6887385_left_covered : CoveredBy scale carrier boxes small_6887385_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6887385_left_root small_6887385_left_fuel small_6887385_left_count small_6887385_left_encoded small_6887385_left_checked

theorem cover_6887385 : CoveredBy scale carrier boxes root_6887385 := by
  apply coveredBy_split_literal root_6887385 small_6887385_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0474.root_6887391 coord4 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_6887385_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0474.cover_6887391
#print axioms cover_6887385

def root_6887384 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6887384_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6887384_right_fuel : Nat := 30
def small_6887384_right_count : Nat := 369
def small_6887384_right_encoded : String := "1152250908A912F712073D0008A912F912073D0208A91309120701080000000405000104135D450500000002050000FC135D80FD000000030CFD9BF7000000050000000A000000050000000512073D0805000104135D450500000002050000FC135D80FD000000030CFD9BF70F350D000CFD9BF90F350D020CFD9C090F34D108000000040C9A8700000000080F878CF7000000000C9A87020F8750F90000000500000001000000050F350D080C9A87000F8750F70C9A87020F8750F90C9A87080F8751090000000402800104000000060000000600000006000000010F878CF9000000010C9A87080F87510900000004028001040000000813D7ED05078000FC00000008000000060000000200000008000000000F878CF7000000000C9A87020F8750F90C9A87080F875109000000040280010400000006000000060F878D090000000600000004000000010F878CF9000000010C9A87080F875109000000040280010413D7B10500000002078000FC128A7CFD000000030000000A0000000A13D7ED05078000FC128A7CFD000000030DE7CA000E5FD8F700000008000000000000000500000005000000020F878D09028001040000000A000000050000000400000004000000010F34D102000000010CFD9C090000000A0F350D080C9A87000000000A0F878CF7000000000C9A87080F87510900000004028001040000000A000000050000000500000004000000000F34D100000000000CFD9BF90F350D020CFD9C090F34D10800000004000000050F350D080C9A87020F8750F90C9A87080F875109000000040280010413D7B10500000002078000FC128A7CFD00000003000000060000000613D7ED05078000FC128A7CFD000000030000000600000005000000020F878D0902800104000000060000000500000004000000010F878CF9000000010C9A87080F875109000000040280010413D7B10500000002078000FC128A7CFD000000030AD3577710D13D000DE7CA020E5FD8F90000000600000001000000050000000010D10100000000000000000500000005000000050000000500000004000000010F34D1020000000100000005135D44FD0CFD9BF70F350D000CFD9BF90F350D020CFD9C090F34D10800000004000000050F350D080C9A87000F8750F70C9A87020000000600000006000000000F878CF7000000000C9A87020F8750F900000006000000010000000500000004000000010F34D1020000000100000005000000000F34D100000000000000000500000003135D8105050000FC135D80FD000000030CFD9BF70F350D000CFD9BF90F350D020CFD9C090F34D10800000004000000050F350D080C9A87000F8750F70C9A87020F8750F90C9A87080F875109000000040780010400000006128A7D05000000050000000200000005000000010F878CF9000000010C9A87080F8751090000000407800104128A410500000002078000FC00000008000000050000000500000005000000000F878CF7000000000C9A87020F8750F90C9A87080F8751090000000407800104000000060000000500000005000000010000000500000004000000010F34D1020000000100000005000000000F34D100000000000000000500000005000000020000000400000001120701020000000108A9130912070108000000040000000512073D0805000104135D450500000002050000FC135D80FD000000030CFD9BF70000000A0000000A00000005000000050000000400000000120701000000000008A912F912073D0208A9130912070108000000040000000512073D0805000104135D450500000002050000FC135D80FD00000003045489F71386AD000CFD9BF90F350D020CFD9C090F34D10800000004000000050F350D080C9A87020F8750F90C9A87080F8751090000000402800104000000060000000500000005000000010000000500000004000000010F34D1020000000100000005000000001386710000000000000000050000000500000005000000040000000112070102000000010000000500000004"
theorem small_6887384_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6887384_right_root small_6887384_right_fuel small_6887384_right_count small_6887384_right_encoded = true := by
  decide +kernel
theorem small_6887384_right_covered : CoveredBy scale carrier boxes small_6887384_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6887384_right_root small_6887384_right_fuel small_6887384_right_count small_6887384_right_encoded small_6887384_right_checked

theorem cover_6887384 : CoveredBy scale carrier boxes root_6887384 := by
  apply coveredBy_split_literal root_6887384 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0474.root_6887385 small_6887384_right_root coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0474.cover_6887385
  · exact small_6887384_right_covered
#print axioms cover_6887384

def root_6887379 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6887379_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6887379_right_fuel : Nat := 1
def small_6887379_right_count : Nat := 1
def small_6887379_right_encoded : String := "00000003"
theorem small_6887379_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6887379_right_root small_6887379_right_fuel small_6887379_right_count small_6887379_right_encoded = true := by
  decide +kernel
theorem small_6887379_right_covered : CoveredBy scale carrier boxes small_6887379_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6887379_right_root small_6887379_right_fuel small_6887379_right_count small_6887379_right_encoded small_6887379_right_checked

theorem cover_6887379 : CoveredBy scale carrier boxes root_6887379 := by
  apply coveredBy_split_literal root_6887379 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0474.root_6887384 small_6887379_right_root coord3 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0474.cover_6887384
  · exact small_6887379_right_covered
#print axioms cover_6887379

def root_6856307 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6856307 : CoveredBy scale carrier boxes root_6856307 := by
  apply coveredBy_split_literal root_6856307 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0472.root_6856308 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0474.root_6887379 coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0472.cover_6856308
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0474.cover_6887379
#print axioms cover_6856307

def root_6856301 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6856301_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6856301_left_fuel : Nat := 1
def small_6856301_left_count : Nat := 1
def small_6856301_left_encoded : String := "00000002"
theorem small_6856301_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6856301_left_root small_6856301_left_fuel small_6856301_left_count small_6856301_left_encoded = true := by
  decide +kernel
theorem small_6856301_left_covered : CoveredBy scale carrier boxes small_6856301_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6856301_left_root small_6856301_left_fuel small_6856301_left_count small_6856301_left_encoded small_6856301_left_checked

theorem cover_6856301 : CoveredBy scale carrier boxes root_6856301 := by
  apply coveredBy_split_literal root_6856301 small_6856301_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0474.root_6856307 coord2 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_6856301_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0474.cover_6856307
#print axioms cover_6856301

def root_6917849 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6917849_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6917849_right_fuel : Nat := 33
def small_6917849_right_count : Nat := 371
def small_6917849_right_encoded : String := "1151E8FD0A0001081151E9090000000408A912F712073D0008A912F912073D0208A913051207010400000002050000FC135D80FD0000000305000108135D4509000000040CFD9BF70000000500000008000000050000000512073D04050000FC135D80FD0000000305000108135D4509000000040CFD9BF70F350D000CFD9BF90F350D020CFD9C050F34D104000000020C9A87000F8750F70000000A00000000000000080F350D040C9A87000F8750F70C9A87020F8750F90C9A87040F87510500000002078000FC0000000A0000000700000007000000010F878CF9000000010C9A87040F87510500000002078000FC128A7CFD00000003028001080000000700000007000000070F878D050000000700000002000000000F878CF7000000000C9A87020F8750F90C9A87040F87510500000002078000FC0000000A000000080000000A000000010F878CF9000000010C9A87040F87510500000002078000FC128A7CFD000000030280010813D7B109000000040000000813D7ED090DE7CA000E5FD8F70DE7CA020000000700000005000000000000000500000004128A40FD028001080000000700000005000000030F878D05078000FC0000000A000000050000000200000002000000010F34D102000000010CFD9C050F34D10400000002000000050F350D040C9A87000F8750F70C9A87040F87510500000002078000FC128A7CFD00000003028001080000000700000007000000070F878D05078000FC128A7CFD00000003000000070000000500000002000000000F878CF7000000000C9A87040F87510500000002078000FC128A7CFD000000030280010813D7B109000000040AD3577910D13D020DE7CA000E5FD8F70000000700000000000000050000000110D10102000000010000000500000005000000050000000500000002000000000F34D100000000000CFD9BF90F350D020CFD9C05000000080F350D040C9A8702000000080F878CF9000000010C9A87040F87510500000002078000FC00000008000000050000000500000002000000010F34D1020000000100000005135D81090CFD9BF70F350D000CFD9BF90F350D020CFD9C050F34D10400000002000000050F350D040C9A87000F8750F70C9A87020F8750F90C9A87040F87510500000002078000FC128A7CFD000000030780010800000007000000070000000700000005000000010F878CF9000000010C9A87040F87510500000002078000FC128A7CFD000000030780010800000007000000050000000500000005000000000F878CF7000000000C9A87020F8750F90C9A87040F87510500000002078000FC128A7CFD0000000307800108128A4109000000040000000A000000050000000500000005000000010000000500000002000000010F34D1020000000100000005000000000F34D100000000000000000500000004135D44FD05000108135D4509000000040CFD9BF70F350D000CFD9BF90F350D020CFD9C050F34D10400000002000000050F350D040C9A87000F8750F700000007000000000F878CF7000000000C9A8702000000070000000500000002000000010F34D1020000000100000005000000000F34D100000000000000000500000005000000030000000200000001120701020000000108A9130512070104000000020000000512073D04050000FC135D80FD0000000305000108135D4509000000040CFD9BF70F350D00045489F91386AD020CFD9C050F34D10400000002000000050F350D040C9A87000F8750F70C9A87040F87510500000002078000FC00000006000000050000000500000000000000050000000200000001138671020000000100000005000000000F34D100000000000000000500000005000000050000000200000000120701000000000008A912F912073D0208A9130512070104000000020000000512073D04050000FC135D80FD0000000305000108135D450900000004045489F71386AD00000000080000000000000008000000050000000500000002000000011207010200000001000000050000000500000003"
theorem small_6917849_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6917849_right_root small_6917849_right_fuel small_6917849_right_count small_6917849_right_encoded = true := by
  decide +kernel
theorem small_6917849_right_covered : CoveredBy scale carrier boxes small_6917849_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6917849_right_root small_6917849_right_fuel small_6917849_right_count small_6917849_right_encoded small_6917849_right_checked

theorem cover_6917849 : CoveredBy scale carrier boxes root_6917849 := by
  apply coveredBy_split_literal root_6917849 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2605.root small_6917849_right_root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2605.covered
  · exact small_6917849_right_covered
#print axioms cover_6917849

def root_6917844 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6917844_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6917844_right_fuel : Nat := 1
def small_6917844_right_count : Nat := 1
def small_6917844_right_encoded : String := "00000002"
theorem small_6917844_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6917844_right_root small_6917844_right_fuel small_6917844_right_count small_6917844_right_encoded = true := by
  decide +kernel
theorem small_6917844_right_covered : CoveredBy scale carrier boxes small_6917844_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6917844_right_root small_6917844_right_fuel small_6917844_right_count small_6917844_right_encoded small_6917844_right_checked

theorem cover_6917844 : CoveredBy scale carrier boxes root_6917844 := by
  apply coveredBy_split_literal root_6917844 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0474.root_6917849 small_6917844_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0474.cover_6917849
  · exact small_6917844_right_covered
#print axioms cover_6917844

def root_6856300 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6856300 : CoveredBy scale carrier boxes root_6856300 := by
  apply coveredBy_split_literal root_6856300 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0474.root_6856301 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0474.root_6917844 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0474.cover_6856301
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0474.cover_6917844
#print axioms cover_6856300

def root_6856294 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6856294_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6856294_left_fuel : Nat := 1
def small_6856294_left_count : Nat := 1
def small_6856294_left_encoded : String := "00000001"
theorem small_6856294_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6856294_left_root small_6856294_left_fuel small_6856294_left_count small_6856294_left_encoded = true := by
  decide +kernel
theorem small_6856294_left_covered : CoveredBy scale carrier boxes small_6856294_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6856294_left_root small_6856294_left_fuel small_6856294_left_count small_6856294_left_encoded small_6856294_left_checked

theorem cover_6856294 : CoveredBy scale carrier boxes root_6856294 := by
  apply coveredBy_split_literal root_6856294 small_6856294_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0474.root_6856300 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6856294_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0474.cover_6856300
#print axioms cover_6856294

def root_6847576 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6847576 : CoveredBy scale carrier boxes root_6847576 := by
  apply coveredBy_split_literal root_6847576 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0468.root_6847577 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0474.root_6856294 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0468.cover_6847577
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0474.cover_6856294
#print axioms cover_6847576

def root_6847570 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6847570_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6847570_left_fuel : Nat := 1
def small_6847570_left_count : Nat := 1
def small_6847570_left_encoded : String := "00000000"
theorem small_6847570_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6847570_left_root small_6847570_left_fuel small_6847570_left_count small_6847570_left_encoded = true := by
  decide +kernel
theorem small_6847570_left_covered : CoveredBy scale carrier boxes small_6847570_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6847570_left_root small_6847570_left_fuel small_6847570_left_count small_6847570_left_encoded small_6847570_left_checked

theorem cover_6847570 : CoveredBy scale carrier boxes root_6847570 := by
  apply coveredBy_split_literal root_6847570 small_6847570_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0474.root_6847576 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6847570_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0474.cover_6847576
#print axioms cover_6847570

def root_6835366 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6835366 : CoveredBy scale carrier boxes root_6835366 := by
  apply coveredBy_split_literal root_6835366 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0468.root_6835367 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0474.root_6847570 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0468.cover_6835367
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0474.cover_6847570
#print axioms cover_6835366

def root_6833712 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6833712 : CoveredBy scale carrier boxes root_6833712 := by
  apply coveredBy_split_literal root_6833712 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2573.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0474.root_6835366 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2573.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0474.cover_6835366
#print axioms cover_6833712

def root_6815212 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6815212 : CoveredBy scale carrier boxes root_6815212 := by
  apply coveredBy_split_literal root_6815212 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0468.root_6815213 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0474.root_6833712 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0468.cover_6815213
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0474.cover_6833712
#print axioms cover_6815212

def root_6926053 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6926053_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6926053_left_fuel : Nat := 25
def small_6926053_left_count : Nat := 175
def small_6926053_left_encoded : String := "120701040000000208A91307120700FC08A91309120700FE0000000500000004000000050000000312073CFC0000000308A91309120700FE000000050000000412073CFE0000000405000102135D44F9045489F71386AD000000000500000000138671000000000004548A0513867104000000020CFD9C07000000050F350CFC000000030CFD9C09000000050000000A1386AD040CFD9C07000000050F350CFC000000030CFD9C09000000050F350CFE000000040C9A86FC000000050F875107000000030C9A86FE00000005000000070000000200000001135D80F900000001045489F71386AD0004548A0513867104000000020CFD9C070F34D0FC00000005000000030F350CFC000000030CFD9C09000000070F350CFE00000004000000071386AD040CFD9C070F34D0FC00000005000000030F350CFC000000030CFD9C09000000070F350CFE000000040C9A86FC00000006000000070000000200000000138671000000000004548A0513867104000000020CFD9C070F34D0FC00000005000000030F350CFC000000030CFD9C090F34D0FE00000005000000040F350CFE000000040C9A86FC0F878D070C9A86FE0F878D0900000005000000040F875109000000040000000A000000030F87510700000003000000071386AD040CFD9C070F34D0FC0CFD9C09000000050F350CFE000000040C9A86FE000000050F8751090000000400000009000000030F350CFC000000030CFD9C090F34D0FE00000007000000040F350CFE000000040C9A86FC0F878D070C9A86FE0F878D09078001020000000500000006000000040F87510900000004078001020000000A128A7CF900000001022A45770000000600000009000000030F875107000000030C9A86FE000000070F875109000000040780010200000007128A7CF900000001022A45770000000613E1C50000000000067ECE85000000070000000700000002"
theorem small_6926053_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6926053_left_root small_6926053_left_fuel small_6926053_left_count small_6926053_left_encoded = true := by
  decide +kernel
theorem small_6926053_left_covered : CoveredBy scale carrier boxes small_6926053_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6926053_left_root small_6926053_left_fuel small_6926053_left_count small_6926053_left_encoded small_6926053_left_checked

theorem cover_6926053 : CoveredBy scale carrier boxes root_6926053 := by
  apply coveredBy_split_literal root_6926053 small_6926053_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2608.root coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_6926053_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2608.covered
#print axioms cover_6926053

def root_6926047 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6926047_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6926047_left_fuel : Nat := 1
def small_6926047_left_count : Nat := 1
def small_6926047_left_encoded : String := "00000000"
theorem small_6926047_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6926047_left_root small_6926047_left_fuel small_6926047_left_count small_6926047_left_encoded = true := by
  decide +kernel
theorem small_6926047_left_covered : CoveredBy scale carrier boxes small_6926047_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6926047_left_root small_6926047_left_fuel small_6926047_left_count small_6926047_left_encoded small_6926047_left_checked

theorem cover_6926047 : CoveredBy scale carrier boxes root_6926047 := by
  apply coveredBy_split_literal root_6926047 small_6926047_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0474.root_6926053 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_6926047_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0474.cover_6926053
#print axioms cover_6926047

def root_6925843 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6925843_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6925843_left_fuel : Nat := 19
def small_6925843_left_count : Nat := 95
def small_6925843_left_encoded : String := "12073D0008A91305120701040000000208A91307120700FC08A91309120700FE000000070000000412073CFE000000040500010200000005135D80F900000001000000050000000312073CFC0000000308A913090000000712073CFE000000040500010200000005135D80F9000000010CFD9BF7000000060F34D1000000000004548A0513867104000000020CFD9C0700000007000000071386AD040CFD9C070F34D0FC0000000500000003000000060000000212073D0408A91307120700FC000000050000000312073CFC0000000308A91309120700FE000000050000000412073CFE000000040500010200000005135D80F9000000010CFD9BF70F350D0000000005000000000F34D100000000000CFD9C050F34D104000000020CFD9C070F34D0FC00000005000000030F350CFC000000030CFD9C0900000007000000060F350D040CFD9C07000000050F350CFC000000030CFD9C09000000050F350CFE000000040C9A87040000000500000006000000020000000200000000"
theorem small_6925843_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6925843_left_root small_6925843_left_fuel small_6925843_left_count small_6925843_left_encoded = true := by
  decide +kernel
theorem small_6925843_left_covered : CoveredBy scale carrier boxes small_6925843_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6925843_left_root small_6925843_left_fuel small_6925843_left_count small_6925843_left_encoded small_6925843_left_checked

theorem cover_6925843 : CoveredBy scale carrier boxes root_6925843 := by
  apply coveredBy_split_literal root_6925843 small_6925843_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0474.root_6926047 coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_6925843_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0474.cover_6926047
#print axioms cover_6925843

def root_6925838 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6925838_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6925838_right_fuel : Nat := 1
def small_6925838_right_count : Nat := 1
def small_6925838_right_encoded : String := "00000004"
theorem small_6925838_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6925838_right_root small_6925838_right_fuel small_6925838_right_count small_6925838_right_encoded = true := by
  decide +kernel
theorem small_6925838_right_covered : CoveredBy scale carrier boxes small_6925838_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6925838_right_root small_6925838_right_fuel small_6925838_right_count small_6925838_right_encoded small_6925838_right_checked

theorem cover_6925838 : CoveredBy scale carrier boxes root_6925838 := by
  apply coveredBy_split_literal root_6925838 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0474.root_6925843 small_6925838_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0474.cover_6925843
  · exact small_6925838_right_covered
#print axioms cover_6925838

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0474
