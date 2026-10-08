import TaoBundleAssembly0164
import TaoBundleAssembly0166
import TaoBundleChunkBatch0644
import TaoBundleChunkBatch0652
import TaoBundleChunkBatch0653
import TaoBundleChunkBatch0654
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0167
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
  apply coveredBy_split_literal root_6917844 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0167.root_6917849 small_6917844_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0167.cover_6917849
  · exact small_6917844_right_covered
#print axioms cover_6917844

def root_6856300 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6856300 : CoveredBy scale carrier boxes root_6856300 := by
  apply coveredBy_split_literal root_6856300 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0166.root_6856301 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0167.root_6917844 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0166.cover_6856301
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0167.cover_6917844
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
  apply coveredBy_split_literal root_6856294 small_6856294_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0167.root_6856300 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6856294_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0167.cover_6856300
#print axioms cover_6856294

def root_6847576 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6847576 : CoveredBy scale carrier boxes root_6847576 := by
  apply coveredBy_split_literal root_6847576 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.root_6847577 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0167.root_6856294 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.cover_6847577
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0167.cover_6856294
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
  apply coveredBy_split_literal root_6847570 small_6847570_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0167.root_6847576 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6847570_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0167.cover_6847576
#print axioms cover_6847570

def root_6835366 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6835366 : CoveredBy scale carrier boxes root_6835366 := by
  apply coveredBy_split_literal root_6835366 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.root_6835367 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0167.root_6847570 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.cover_6835367
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0167.cover_6847570
#print axioms cover_6835366

def root_6833712 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6833712 : CoveredBy scale carrier boxes root_6833712 := by
  apply coveredBy_split_literal root_6833712 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2573.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0167.root_6835366 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2573.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0167.cover_6835366
#print axioms cover_6833712

def root_6815212 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6815212 : CoveredBy scale carrier boxes root_6815212 := by
  apply coveredBy_split_literal root_6815212 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.root_6815213 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0167.root_6833712 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0164.cover_6815213
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0167.cover_6833712
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
  apply coveredBy_split_literal root_6926047 small_6926047_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0167.root_6926053 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_6926047_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0167.cover_6926053
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
  apply coveredBy_split_literal root_6925843 small_6925843_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0167.root_6926047 coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_6925843_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0167.cover_6926047
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
  apply coveredBy_split_literal root_6925838 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0167.root_6925843 small_6925838_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0167.cover_6925843
  · exact small_6925838_right_covered
#print axioms cover_6925838

def root_6933540 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6933540_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6933540_right_fuel : Nat := 17
def small_6933540_right_count : Nat := 103
def small_6933540_right_encoded : String := "135D450900000004045489F71386AD000CFD9C050F34D104000000020CFD9C070F34D0FC0000000A000000030F350CFC000000030C9A86FC0F878D0707800102000000080000000800000003000000080F350D040CFD9C070F34D0FC0C9A8704000000080F878D0507800102000000080000000800000002000000030F350CFC000000030C9A8704000000080F878D050C9A86FC0F878D0700000008000000030000000800000002000000020000000013867100000000000CFD9C050F34D104000000020CFD9C070F34D0FC00000009000000030F350CFC000000030C9A86FC0F878D07078001020000000900000009000000030F8751070000000307800102128A40F9028000FE13D7ED09022A45770000000813E1C500000000000AD357850000000900000009000000040000000800000001128A7CF900000001000000050F350D040CFD9C070F34D0FC0C9A8704000000070F878D050000000900000002000000030F350CFC000000030C9A8704000000080F878D050C9A86FC0F878D0707800102000000080000000800000003000000080000000200000002"
theorem small_6933540_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6933540_right_root small_6933540_right_fuel small_6933540_right_count small_6933540_right_encoded = true := by
  decide +kernel
theorem small_6933540_right_covered : CoveredBy scale carrier boxes small_6933540_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6933540_right_root small_6933540_right_fuel small_6933540_right_count small_6933540_right_encoded small_6933540_right_checked

theorem cover_6933540 : CoveredBy scale carrier boxes root_6933540 := by
  apply coveredBy_split_literal root_6933540 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2610.root small_6933540_right_root coord4 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2610.covered
  · exact small_6933540_right_covered
#print axioms cover_6933540

def root_6933534 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6933534_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6933534_left_fuel : Nat := 1
def small_6933534_left_count : Nat := 1
def small_6933534_left_encoded : String := "00000001"
theorem small_6933534_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6933534_left_root small_6933534_left_fuel small_6933534_left_count small_6933534_left_encoded = true := by
  decide +kernel
theorem small_6933534_left_covered : CoveredBy scale carrier boxes small_6933534_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6933534_left_root small_6933534_left_fuel small_6933534_left_count small_6933534_left_encoded small_6933534_left_checked

theorem cover_6933534 : CoveredBy scale carrier boxes root_6933534 := by
  apply coveredBy_split_literal root_6933534 small_6933534_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0167.root_6933540 coord1 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_6933534_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0167.cover_6933540
#print axioms cover_6933534

def root_6930666 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6930666 : CoveredBy scale carrier boxes root_6930666 := by
  apply coveredBy_split_literal root_6930666 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2609.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0167.root_6933534 coord1 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2609.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0167.cover_6933534
#print axioms cover_6930666

def root_6930660 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6930660_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6930660_left_fuel : Nat := 1
def small_6930660_left_count : Nat := 1
def small_6930660_left_encoded : String := "00000003"
theorem small_6930660_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6930660_left_root small_6930660_left_fuel small_6930660_left_count small_6930660_left_encoded = true := by
  decide +kernel
theorem small_6930660_left_covered : CoveredBy scale carrier boxes small_6930660_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6930660_left_root small_6930660_left_fuel small_6930660_left_count small_6930660_left_encoded small_6930660_left_checked

theorem cover_6930660 : CoveredBy scale carrier boxes root_6930660 := by
  apply coveredBy_split_literal root_6930660 small_6930660_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0167.root_6930666 coord3 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_6930660_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0167.cover_6930666
#print axioms cover_6930660

def root_6930540 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6930540_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6930540_left_fuel : Nat := 14
def small_6930540_left_count : Nat := 55
def small_6930540_left_encoded : String := "120700FC05000102135D44F90000000A00000001135D80F900000001050000FE135D8109045489F71386AD000CFD9C05000000050F350D0400000005000000020000000013867100000000000CFD9C050F34D10400000002000000090F350D0404548A07000000051386ACFC000000030C9A8704000000050F878D0500000009000000020000000200000004135D450900000004045489F71386AD000CFD9C050000000A0F350D0404548A07000000081386ACFC000000030C9A8704000000080000000A000000020000000013867100000000000000000900000003"
theorem small_6930540_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6930540_left_root small_6930540_left_fuel small_6930540_left_count small_6930540_left_encoded = true := by
  decide +kernel
theorem small_6930540_left_covered : CoveredBy scale carrier boxes small_6930540_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6930540_left_root small_6930540_left_fuel small_6930540_left_count small_6930540_left_encoded small_6930540_left_checked

theorem cover_6930540 : CoveredBy scale carrier boxes root_6930540 := by
  apply coveredBy_split_literal root_6930540 small_6930540_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0167.root_6930660 coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_6930540_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0167.cover_6930660
#print axioms cover_6930540

def root_6930535 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6930535_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6930535_right_fuel : Nat := 1
def small_6930535_right_count : Nat := 1
def small_6930535_right_encoded : String := "00000002"
theorem small_6930535_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6930535_right_root small_6930535_right_fuel small_6930535_right_count small_6930535_right_encoded = true := by
  decide +kernel
theorem small_6930535_right_covered : CoveredBy scale carrier boxes small_6930535_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6930535_right_root small_6930535_right_fuel small_6930535_right_count small_6930535_right_encoded small_6930535_right_checked

theorem cover_6930535 : CoveredBy scale carrier boxes root_6930535 := by
  apply coveredBy_split_literal root_6930535 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0167.root_6930540 small_6930535_right_root coord2 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0167.cover_6930540
  · exact small_6930535_right_covered
#print axioms cover_6930535

def root_6930201 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6930201_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6930201_left_fuel : Nat := 23
def small_6930201_left_count : Nat := 157
def small_6930201_left_encoded : String := "120701040000000208A91307120700FC0000000A0000000312073CFC0000000305000102135D44F90000000A00000001135D80F900000001050000FE135D8109045489F71386AD0004548A0513867104000000020000000A1386AD040CFD9C070F34D0FC0000000A000000030F350CFC000000030C9A86FC0F878D070000000A000000030F8751070000000307800102128A40F90000000A00000001128A7CF900000001078000FE00000006128A410900000004000000060000000200000000138671000000000004548A0513867104000000020CFD9C07000000090F350CFC000000030C9A86FC0000000A0F87510700000003078001020000000A128A7CF900000001078000FE128A7D09022A4577000000070000000900000004000000091386AD040CFD9C070F34D0FC00000009000000030F350CFC000000030C9A86FC0F878D07078001020000000A128A7CF90000000100000009000000030F8751070000000307800102128A40F9078000FE128A7D09022A45770000000A13E1C50000000000067ECE85000000090000000900000004128A4109000000040000000A00000001128A7CF900000001078000FE128A7D09022A457713E20100067ECE8500000007000000060000000013E1C50000000000067ECE85000000090000000900000004128A410900000004022A457713E20100067ECE85000000090000000900000000000000090000000200000004135D450900000004045489F71386AD0004548A050000000A1386AD040CFD9C070000000A0F350CFC000000030C9A86FC0000000A0F87510700000003078001020000000A000000080000000200000000138671000000000004548A050000000900000009"
theorem small_6930201_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6930201_left_root small_6930201_left_fuel small_6930201_left_count small_6930201_left_encoded = true := by
  decide +kernel
theorem small_6930201_left_covered : CoveredBy scale carrier boxes small_6930201_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6930201_left_root small_6930201_left_fuel small_6930201_left_count small_6930201_left_encoded small_6930201_left_checked

theorem cover_6930201 : CoveredBy scale carrier boxes root_6930201 := by
  apply coveredBy_split_literal root_6930201 small_6930201_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0167.root_6930535 coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_6930201_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0167.cover_6930535
#print axioms cover_6930201

def root_6930195 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6930195_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6930195_left_fuel : Nat := 1
def small_6930195_left_count : Nat := 1
def small_6930195_left_encoded : String := "00000000"
theorem small_6930195_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6930195_left_root small_6930195_left_fuel small_6930195_left_count small_6930195_left_encoded = true := by
  decide +kernel
theorem small_6930195_left_covered : CoveredBy scale carrier boxes small_6930195_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6930195_left_root small_6930195_left_fuel small_6930195_left_count small_6930195_left_encoded small_6930195_left_checked

theorem cover_6930195 : CoveredBy scale carrier boxes root_6930195 := by
  apply coveredBy_split_literal root_6930195 small_6930195_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0167.root_6930201 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_6930195_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0167.cover_6930201
#print axioms cover_6930195

def root_6929417 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6929417_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6929417_left_fuel : Nat := 23
def small_6929417_left_count : Nat := 365
def small_6929417_left_encoded : String := "12073D0008A91305120701040000000208A91307120700FC0000000A0000000312073CFC0000000305000102135D44F9050000FE135D81090CFD9BF70000000A0F34D100000000000000000A00000004135D4509000000040CFD9BF70000000A0F34D100000000000000000A00000001135D80F900000001050000FE135D81090CFD9BF7000000060F34D1000000000004548A0513867104000000020000000A1386AD040CFD9C070F34D0FC0000000600000003000000060000000200000004135D4509000000040CFD9BF70F350D0004548A0513867104000000020000000A1386AD040CFD9C070F34D0FC00000006000000030000000600000002000000000F34D1000000000004548A050000000A1386AD040CFD9C070000000A0F350CFC000000030C9A86FC0000000A000000080000000212073D0408A91307120700FC0500010200000005135D80F900000001050000FE00000005135D4509000000040CFD9BF70F350D0000000005000000000F34D100000000000CFD9C050000000A0F350D0404548A07000000051386ACFC000000030C9A8704000000050000000A000000020000000312073CFC0000000305000102135D44F9050000FE135D81090CFD9BF70F350D0000000005000000000F34D100000000000CFD9C050F34D104000000020CFD9C070000000A0F350CFC000000030C9A86FC000000050F87510700000003028001020000000513D7ECF900000001078000FE00000005128A410900000004000000080F350D040CFD9C07000000050F350CFC000000030C9A8704000000050F878D050C9A86FC000000050F87510700000003028001020000000513D7ECF900000001078000FE0000000500000008000000020000000200000004135D4509000000040CFD9BF70F350D000CFD9C050F34D104000000020CFD9C070F34D0FC00000005000000030F350CFC000000030C9A87000F8750F700000005000000000F878CF7000000000C9A86FC0000000A000000080F350D040CFD9C07000000050F350CFC000000030C9A8700000000050F878CF7000000000C9A8704000000050F878D050C9A86FC00000005000000080000000200000002000000000F34D100000000000CFD9C050F34D104000000020CFD9C070000000A0F350CFC000000030C9A86FC0000000A0F875107000000030280010200000008000000080F350D040CFD9C070F34D0FC00000005000000030F350CFC000000030C9A8704000000080F878D050C9A86FC0F878D07000000080000000300000008000000020000000200000001135D80F900000001050000FE135D81090CFD9BF70F350D000CFD9C050F34D10400000002000000060F350D040CFD9C070F34D0FC00000005000000030000000600000002000000000F34D100000000000CFD9C050F34D104000000020CFD9C070F34D0FC00000006000000030F350CFC000000030C9A86FC000000060F87510700000003000000060F350D040CFD9C070F34D0FC0C9A87040000000500000006000000030F350CFC000000030C9A87040F875105000000020C9A86FC00000006000000080F878D050C9A86FC000000060F8751070000000300000006000000020000000200000004135D4509000000040CFD9BF70F350D000CFD9C050F34D104000000020CFD9C070F34D0FC0000000600000003000000060F350D040CFD9C070F34D0FC00000006000000030F350CFC000000030C9A87000F8750F700000006000000000F878CF7000000000C9A8704000000080000000600000002000000000F34D100000000000CFD9C050F34D104000000020CFD9C070F34D0FC0000000A000000030F350CFC000000030C9A86FC0F878D0707800102000000080000000600000003000000080F350D040CFD9C070F34D0FC0C9A8704000000080F878D0507800102000000080000000600000002000000030F350CFC000000030C9A8704000000080F878D050C9A86FC0F878D0700000008000000030000000800000002000000020000000200000000"
theorem small_6929417_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6929417_left_root small_6929417_left_fuel small_6929417_left_count small_6929417_left_encoded = true := by
  decide +kernel
theorem small_6929417_left_covered : CoveredBy scale carrier boxes small_6929417_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6929417_left_root small_6929417_left_fuel small_6929417_left_count small_6929417_left_encoded small_6929417_left_checked

theorem cover_6929417 : CoveredBy scale carrier boxes root_6929417 := by
  apply coveredBy_split_literal root_6929417 small_6929417_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0167.root_6930195 coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_6929417_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0167.cover_6930195
#print axioms cover_6929417

def root_6929411 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6929411_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6929411_left_fuel : Nat := 1
def small_6929411_left_count : Nat := 1
def small_6929411_left_encoded : String := "00000004"
theorem small_6929411_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6929411_left_root small_6929411_left_fuel small_6929411_left_count small_6929411_left_encoded = true := by
  decide +kernel
theorem small_6929411_left_covered : CoveredBy scale carrier boxes small_6929411_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6929411_left_root small_6929411_left_fuel small_6929411_left_count small_6929411_left_encoded small_6929411_left_checked

theorem cover_6929411 : CoveredBy scale carrier boxes root_6929411 := by
  apply coveredBy_split_literal root_6929411 small_6929411_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0167.root_6929417 coord4 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_6929411_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0167.cover_6929417
#print axioms cover_6929411

def root_6925837 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6925837 : CoveredBy scale carrier boxes root_6925837 := by
  apply coveredBy_split_literal root_6925837 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0167.root_6925838 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0167.root_6929411 coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0167.cover_6925838
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0167.cover_6929411
#print axioms cover_6925837

def root_6925832 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6925832_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6925832_right_fuel : Nat := 1
def small_6925832_right_count : Nat := 1
def small_6925832_right_encoded : String := "00000003"
theorem small_6925832_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6925832_right_root small_6925832_right_fuel small_6925832_right_count small_6925832_right_encoded = true := by
  decide +kernel
theorem small_6925832_right_covered : CoveredBy scale carrier boxes small_6925832_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6925832_right_root small_6925832_right_fuel small_6925832_right_count small_6925832_right_encoded small_6925832_right_checked

theorem cover_6925832 : CoveredBy scale carrier boxes root_6925832 := by
  apply coveredBy_split_literal root_6925832 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0167.root_6925837 small_6925832_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0167.cover_6925837
  · exact small_6925832_right_covered
#print axioms cover_6925832

def root_6937106 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6937106 : CoveredBy scale carrier boxes root_6937106 := by
  apply coveredBy_split_literal root_6937106 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2611.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2612.root coord1 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2611.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2612.covered
#print axioms cover_6937106

def root_6937100 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6937100_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6937100_left_fuel : Nat := 1
def small_6937100_left_count : Nat := 1
def small_6937100_left_encoded : String := "00000004"
theorem small_6937100_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6937100_left_root small_6937100_left_fuel small_6937100_left_count small_6937100_left_encoded = true := by
  decide +kernel
theorem small_6937100_left_covered : CoveredBy scale carrier boxes small_6937100_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6937100_left_root small_6937100_left_fuel small_6937100_left_count small_6937100_left_encoded small_6937100_left_checked

theorem cover_6937100 : CoveredBy scale carrier boxes root_6937100 := by
  apply coveredBy_split_literal root_6937100 small_6937100_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0167.root_6937106 coord4 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_6937100_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0167.cover_6937106
#print axioms cover_6937100

def root_6937060 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6937060_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6937060_left_fuel : Nat := 7
def small_6937060_left_count : Nat := 19
def small_6937060_left_encoded : String := "120700FE05000102135D44F9050000FC00000005135D450700000003045489F7000000070000000700000001135D80F900000001050000FC135D810700000007000000030000000700000004"
theorem small_6937060_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6937060_left_root small_6937060_left_fuel small_6937060_left_count small_6937060_left_encoded = true := by
  decide +kernel
theorem small_6937060_left_covered : CoveredBy scale carrier boxes small_6937060_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6937060_left_root small_6937060_left_fuel small_6937060_left_count small_6937060_left_encoded small_6937060_left_checked

theorem cover_6937060 : CoveredBy scale carrier boxes root_6937060 := by
  apply coveredBy_split_literal root_6937060 small_6937060_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0167.root_6937100 coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_6937060_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0167.cover_6937100
#print axioms cover_6937060

def root_6937055 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6937055_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6937055_right_fuel : Nat := 1
def small_6937055_right_count : Nat := 1
def small_6937055_right_encoded : String := "00000002"
theorem small_6937055_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6937055_right_root small_6937055_right_fuel small_6937055_right_count small_6937055_right_encoded = true := by
  decide +kernel
theorem small_6937055_right_covered : CoveredBy scale carrier boxes small_6937055_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6937055_right_root small_6937055_right_fuel small_6937055_right_count small_6937055_right_encoded small_6937055_right_checked

theorem cover_6937055 : CoveredBy scale carrier boxes root_6937055 := by
  apply coveredBy_split_literal root_6937055 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0167.root_6937060 small_6937055_right_root coord2 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0167.cover_6937060
  · exact small_6937055_right_covered
#print axioms cover_6937055

def root_6936991 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6936991_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6936991_left_fuel : Nat := 11
def small_6936991_left_count : Nat := 31
def small_6936991_left_encoded : String := "120701040000000208A913090000000712073CFE0000000405000102135D44F9050000FC135D8107045489F700000007138671000000000000000007000000030000000700000001135D80F900000001050000FC135D8107045489F700000007138671000000000004548A0500000007000000070000000300000007"
theorem small_6936991_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6936991_left_root small_6936991_left_fuel small_6936991_left_count small_6936991_left_encoded = true := by
  decide +kernel
theorem small_6936991_left_covered : CoveredBy scale carrier boxes small_6936991_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6936991_left_root small_6936991_left_fuel small_6936991_left_count small_6936991_left_encoded small_6936991_left_checked

theorem cover_6936991 : CoveredBy scale carrier boxes root_6936991 := by
  apply coveredBy_split_literal root_6936991 small_6936991_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0167.root_6937055 coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_6936991_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0167.cover_6937055
#print axioms cover_6936991

def root_6936985 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6936985_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6936985_left_fuel : Nat := 1
def small_6936985_left_count : Nat := 1
def small_6936985_left_encoded : String := "00000000"
theorem small_6936985_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6936985_left_root small_6936985_left_fuel small_6936985_left_count small_6936985_left_encoded = true := by
  decide +kernel
theorem small_6936985_left_covered : CoveredBy scale carrier boxes small_6936985_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6936985_left_root small_6936985_left_fuel small_6936985_left_count small_6936985_left_encoded small_6936985_left_checked

theorem cover_6936985 : CoveredBy scale carrier boxes root_6936985 := by
  apply coveredBy_split_literal root_6936985 small_6936985_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0167.root_6936991 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_6936985_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0167.cover_6936991
#print axioms cover_6936985

def root_6936723 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6936723_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6936723_left_fuel : Nat := 20
def small_6936723_left_count : Nat := 121
def small_6936723_left_encoded : String := "12073D0008A91305120701040000000208A91309000000070000000712073D0408A91309120700FE0500010200000005135D80F900000001050000FC00000005000000070000000412073CFE0000000405000102135D44F9050000FC135D81070CFD9BF70F350D0000000005000000000F34D100000000000CFD9C050F34D10400000002000000070F350D040CFD9C09000000050F350CFE000000040C9A8704000000050F878D050C9A86FE000000050F8751090000000400000009000000020000000200000003135D4507000000030CFD9BF70F350D000CFD9C050000000700000009000000000F34D100000000000CFD9C050F34D10400000002000000070F350D04000000090000000200000001135D80F900000001050000FC135D81070CFD9BF70F350D000CFD9C05000000070F350D040CFD9C09000000070000000600000002000000000F34D100000000000CFD9C050F34D10400000002000000070F350D040CFD9C090F34D0FE00000007000000040F350CFE000000040C9A87040F87510500000002000000090F878D0500000007000000020000000200000003135D4507000000030CFD9BF70F350D0000000007000000000F34D100000000000CFD9C05000000070F350D040CFD9C090000000700000007000000020000000200000000"
theorem small_6936723_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6936723_left_root small_6936723_left_fuel small_6936723_left_count small_6936723_left_encoded = true := by
  decide +kernel
theorem small_6936723_left_covered : CoveredBy scale carrier boxes small_6936723_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6936723_left_root small_6936723_left_fuel small_6936723_left_count small_6936723_left_encoded small_6936723_left_checked

theorem cover_6936723 : CoveredBy scale carrier boxes root_6936723 := by
  apply coveredBy_split_literal root_6936723 small_6936723_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0167.root_6936985 coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_6936723_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0167.cover_6936985
#print axioms cover_6936723

def root_6936718 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6936718_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6936718_right_fuel : Nat := 1
def small_6936718_right_count : Nat := 1
def small_6936718_right_encoded : String := "00000004"
theorem small_6936718_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6936718_right_root small_6936718_right_fuel small_6936718_right_count small_6936718_right_encoded = true := by
  decide +kernel
theorem small_6936718_right_covered : CoveredBy scale carrier boxes small_6936718_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6936718_right_root small_6936718_right_fuel small_6936718_right_count small_6936718_right_encoded small_6936718_right_checked

theorem cover_6936718 : CoveredBy scale carrier boxes root_6936718 := by
  apply coveredBy_split_literal root_6936718 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0167.root_6936723 small_6936718_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0167.cover_6936723
  · exact small_6936718_right_covered
#print axioms cover_6936718

def root_6945748 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16645888), (-16243968)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6945748_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (-1816224)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16645888), (-16243968)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6945748_left_fuel : Nat := 20
def small_6945748_left_count : Nat := 219
def small_6945748_left_encoded : String := "13E201000DE7CA040E5FD9050000000203C0010213A510F908C000FC11FC250708C000FE000000090000000800000003000000090000000113A54CF90000000108C000FC11FC25070000000800000003000000080E60150503C0010213A510F908C000FC11FC250708C000FE11FC2509033F67B713BC31000DAED8850E9625040000000200000007000000090000000013BBF500000000000DAED8850E962504000000020320010213C108F9096000FC00000005000000070000000113C144F900000001096000FC11AABD07096000FE0000000511AA8109000000040000000A00000003000000070E9661040320010213C108F9000000090000000113C144F900000001096000FC11AABD07096000FE0000000511AA810900000004000000080000000300000009000000020000000411FBE90900000004033F67B70000000813BBF500000000000DAED8850E962504000000020320010213C108F9096000FC0000000A0000000A0000000113C144F900000001096000FC11AABD070000000800000003000000080E96610400000008000000020000000311FBE9070000000308C000FE11FC2509033F67B70000000913BBF50000000000000000090000000411FBE90900000004033F67B70000000813BBF500000000000DAED8850E962504000000020320010213C108F9082000FC12469907082000FE0000000912465D09000000040000000800000003000000090000000113C144F900000001082000FC124699070000000800000003000000090E96610400000009000000020000000113A54CF90000000108C000FC11FC250708C000FE11FC2509033F67B713BC31000DAED8850E96250400000002000000070E96610400000008000000020000000013BBF500000000000DAED8850E96250400000002046001021383DCF9096000FC11AABD07096000FE0000000711AA81090000000400000008000000030000000700000001138418F900000001096000FC11AABD07096000FE000000070000000800000003000000070E966104046001021383DCF9096000FC11AABD070000000800000003000000090000000100000008000000020000000411FBE90900000004000000080000000311FBE9070000000308C000FE11FC2509033F67B70000000713BBF500000000000DAED88500000009000000090000000411FBE90900000004000000080000000200000000"
theorem small_6945748_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6945748_left_root small_6945748_left_fuel small_6945748_left_count small_6945748_left_encoded = true := by
  decide +kernel
theorem small_6945748_left_covered : CoveredBy scale carrier boxes small_6945748_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6945748_left_root small_6945748_left_fuel small_6945748_left_count small_6945748_left_encoded small_6945748_left_checked

theorem cover_6945748 : CoveredBy scale carrier boxes root_6945748 := by
  apply coveredBy_split_literal root_6945748 small_6945748_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2614.root coord0 true (-1816224)
  · decide +kernel
  · decide +kernel
  · exact small_6945748_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2614.covered
#print axioms cover_6945748

def root_6945743 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16645888), (-16243968)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6945743_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16645888), (-16243968)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(15553280), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6945743_right_fuel : Nat := 1
def small_6945743_right_count : Nat := 1
def small_6945743_right_encoded : String := "00000004"
theorem small_6945743_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6945743_right_root small_6945743_right_fuel small_6945743_right_count small_6945743_right_encoded = true := by
  decide +kernel
theorem small_6945743_right_covered : CoveredBy scale carrier boxes small_6945743_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6945743_right_root small_6945743_right_fuel small_6945743_right_count small_6945743_right_encoded small_6945743_right_checked

theorem cover_6945743 : CoveredBy scale carrier boxes root_6945743 := by
  apply coveredBy_split_literal root_6945743 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0167.root_6945748 small_6945743_right_root coord4 true (15553280)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0167.cover_6945748
  · exact small_6945743_right_covered
#print axioms cover_6945743

def root_6945742 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16645888), (-16243968)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6945742_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16645888), (-16243968)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(-6291456), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6945742_right_fuel : Nat := 17
def small_6945742_right_count : Nat := 77
def small_6945742_right_encoded : String := "128A410900000004022A457713E201000DE7CA04000000080E60150503C0010213A510F908C000FC11FC25070000000800000003000000080000000100000008000000020000000013E1C500000000000DE7CA040E5FD9050000000203C0010213A510F908C000FC000000070000000600000001000000080E60150503C0010213A510F908C000FC11FC2507064000FE12FFAD090115233713F895000DAED8850E962504000000020320010200000006000000080E9661040000000700000002000000000000000600000004000000060000000311FBE90700000003064000FE12FFAD090000000600000004000000050000000113A54CF90000000108C000FC11FC2507064000FE12FFAD09011523370000000813F8590000000000000000050000000400000005000000030000000500000002"
theorem small_6945742_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6945742_right_root small_6945742_right_fuel small_6945742_right_count small_6945742_right_encoded = true := by
  decide +kernel
theorem small_6945742_right_covered : CoveredBy scale carrier boxes small_6945742_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6945742_right_root small_6945742_right_fuel small_6945742_right_count small_6945742_right_encoded small_6945742_right_checked

theorem cover_6945742 : CoveredBy scale carrier boxes root_6945742 := by
  apply coveredBy_split_literal root_6945742 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0167.root_6945743 small_6945742_right_root coord4 false (-6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0167.cover_6945743
  · exact small_6945742_right_covered
#print axioms cover_6945742

def root_6945737 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16645888), (-16243968)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6945737_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16645888), (-16243968)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(15553280), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6945737_right_fuel : Nat := 1
def small_6945737_right_count : Nat := 1
def small_6945737_right_encoded : String := "00000003"
theorem small_6945737_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6945737_right_root small_6945737_right_fuel small_6945737_right_count small_6945737_right_encoded = true := by
  decide +kernel
theorem small_6945737_right_covered : CoveredBy scale carrier boxes small_6945737_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6945737_right_root small_6945737_right_fuel small_6945737_right_count small_6945737_right_encoded small_6945737_right_checked

theorem cover_6945737 : CoveredBy scale carrier boxes root_6945737 := by
  apply coveredBy_split_literal root_6945737 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0167.root_6945742 small_6945737_right_root coord3 true (15553280)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0167.cover_6945742
  · exact small_6945737_right_covered
#print axioms cover_6945737

def root_6945736 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16645888), (-16243968)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6945736_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16645888), (-16243968)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-6291456), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6945736_right_fuel : Nat := 16
def small_6945736_right_count : Nat := 111
def small_6945736_right_encoded : String := "128A410700000003078000FE128A7D09022A457713E201000DE7CA04000000090E60150503C0010213A510F9000000090000000113A54CF900000001064000FC12FFAD0708C000FE0000000711FBE90900000004000000090000000300000009000000020000000013E1C500000000000DE7CA040E5FD9050000000203C0010213A510F9064000FC12FFAD0708C000FE000000090000000600000003000000060000000113A54CF900000001064000FC12FFAD0708C000FE000000090000000500000003000000050E60150503C0010213A510F9064000FC12FFAD0708C000FE11FC250901152337000000090000000600000004000000060000000312FF71070000000308C000FE00000009000000050000000113A54CF900000001064000FC12FFAD0708C000FE11FC2509011523370000000913F859000000000000000005000000040000000500000003000000050000000200000004128A410900000004022A457713E201000DE7CA04000000080E60150503C0010213A510F9064000FC12FFAD070000000800000003000000050000000100000005000000020000000013E1C500000000000DE7CA040E5FD905000000020000000500000005"
theorem small_6945736_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6945736_right_root small_6945736_right_fuel small_6945736_right_count small_6945736_right_encoded = true := by
  decide +kernel
theorem small_6945736_right_covered : CoveredBy scale carrier boxes small_6945736_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6945736_right_root small_6945736_right_fuel small_6945736_right_count small_6945736_right_encoded small_6945736_right_checked

theorem cover_6945736 : CoveredBy scale carrier boxes root_6945736 := by
  apply coveredBy_split_literal root_6945736 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0167.root_6945737 small_6945736_right_root coord3 false (-6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0167.cover_6945737
  · exact small_6945736_right_covered
#print axioms cover_6945736

def root_6945730 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6945730_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16777216), (-16645888)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6945730_left_fuel : Nat := 1
def small_6945730_left_count : Nat := 1
def small_6945730_left_encoded : String := "00000001"
theorem small_6945730_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6945730_left_root small_6945730_left_fuel small_6945730_left_count small_6945730_left_encoded = true := by
  decide +kernel
theorem small_6945730_left_covered : CoveredBy scale carrier boxes small_6945730_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6945730_left_root small_6945730_left_fuel small_6945730_left_count small_6945730_left_encoded small_6945730_left_checked

theorem cover_6945730 : CoveredBy scale carrier boxes root_6945730 := by
  apply coveredBy_split_literal root_6945730 small_6945730_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0167.root_6945736 coord1 true (-16645888)
  · decide +kernel
  · decide +kernel
  · exact small_6945730_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0167.cover_6945736
#print axioms cover_6945730

def root_6944760 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6944760_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(0), (2097152)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6944760_left_fuel : Nat := 25
def small_6944760_left_count : Nat := 461
def small_6944760_left_encoded : String := "13D7B0F9078000FC128A7D07078000FE128A7D09022A457713E201000DE7CA040E5FD905000000020140010213F5D8F908C000FC11FC250708C000FE0000000511FBE909000000040000000900000003000000090000000113F614F90000000108C000FC11FC250708C000FE0000000911FBE90900000004033F67B70000000813BBF500000000000D412884000000080EFA4D05000000090000000200000003000000090E6015050140010213F5D8F908C000FC11FC250708C000FE0000000511FBE909000000040000000A0000000311FBE9070000000308C000FE0000000911FBE90900000004033F67B700000009000000060000000113F614F90000000108C000FC11FC250708C000FE11FC2509033F67B70000000513BBF500000000000DAED885000000050E96610400000005000000020000000411FBE90900000004033F67B713BC31000DAED8850E962504000000020000000A0E96610400000008000000020000000013BBF500000000000DAED8850E962504000000020000000A0E96610401E001020000000A13E994F900000001096000FC0000000A11AA81070000000300000009000000020000000311FBE9070000000308C000FE11FC2509000000090000000411FBE90900000004033F67B70000000913BBF500000000000DAED8850E9625040000000201E001020000000613E994F900000001082000FC12469907082000FE000000090000000600000003000000060E9661040000000900000002000000020000000013E1C500000000000DE7CA040E5FD905000000020140010213F5D8F908C000FC11FC250708C000FE11FC2509011523370000000500000006000000040000000600000003000000060000000113F614F90000000108C000FC11FC250708C000FE11FC25090115233713F895000D412884000000050EFA4D0501E001020000000500000009000000020000000013F85900000000000D412884000000060EFA4D0500000006000000020000000411FBE909000000040115233713F895000D412884000000060EFA4D05000000060000000200000000000000060000000311FBE9070000000308C000FE11FC250901152337000000090000000600000004000000060E6015050140010213F5D8F908C000FC11FC250708C000FE11FC250901152337000000050000000600000004000000060000000311FBE90700000003000000060000000113F614F90000000108C000FC11FC250708C000FE11FC25090115233713F895000DAED8850E9625040000000201E001020000000513E994F900000001096000FC000000050000000A0E96610401E001020000000513E994F900000001096000FC0000000511AA810700000003096000FE0000000500000006000000020000000013F85900000000000DAED8850E9625040000000201E001020000000613E994F900000001096000FC0000000A000000060E96610401E001020000000613E994F900000001096000FC11AABD07000000060000000300000006000000020000000411FBE909000000040115233713F895000DAED8850E962504000000020000000A0E96610401E001020000000613E994F900000001096000FC11AABD070000000600000003000000060000000200000000000000060000000311FBE9070000000308C000FE11FC25090115233713F895000DAED8850E9625040000000201E001020000000613E994F900000001082000FC12469907096000FE000000070000000600000003000000060E9661040000000900000002000000000000000600000004000000060000000200000004128A410900000004022A457713E201000DE7CA040E5FD905000000020140010213F5D8F908C000FC11FC250700000008000000030000000600000001000000080E6015050140010213F5D8F908C000FC11FC25070000000A0000000311FBE90700000003064000FE12FFAD090000000600000004000000060000000113F614F90000000108C000FC11FC2507064000FE12FFAD09033F67B70000000813BBF500000000000DAED8850000000A0E966104000000080000000200000004000000080000000311FBE90700000003064000FE12FFAD09033F67B700000008000000060000000400000008000000020000000013E1C500000000000DE7CA04000000060E601505014001020000000613F614F90000000108C000FC11FC25070000000600000003000000060000000200000003128A410700000003078000FE128A7D09022A457713E201000DE7CA04000000090E601505014001020000000900000009000000020000000013E1C500000000000DE7CA04000000060E601505014001020000000613F614F900000001064000FC12FFAD070000000600000003000000060000000200000004128A410900000004022A457713E201000DE7CA040E5FD90500000002000000090E601505014001020000000613F614F900000001064000FC12FFAD07064000FE12FFAD09033F67B700000008000000060000000400000006000000030000000600000002000000000000000600000001"
theorem small_6944760_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6944760_left_root small_6944760_left_fuel small_6944760_left_count small_6944760_left_encoded = true := by
  decide +kernel
theorem small_6944760_left_covered : CoveredBy scale carrier boxes small_6944760_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6944760_left_root small_6944760_left_fuel small_6944760_left_count small_6944760_left_encoded small_6944760_left_checked

theorem cover_6944760 : CoveredBy scale carrier boxes root_6944760 := by
  apply coveredBy_split_literal root_6944760 small_6944760_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0167.root_6945730 coord1 false (2097152)
  · decide +kernel
  · decide +kernel
  · exact small_6944760_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0167.cover_6945730
#print axioms cover_6944760

def root_6944755 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6944755_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(13027072), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6944755_right_fuel : Nat := 1
def small_6944755_right_count : Nat := 1
def small_6944755_right_encoded : String := "00000002"
theorem small_6944755_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6944755_right_root small_6944755_right_fuel small_6944755_right_count small_6944755_right_encoded = true := by
  decide +kernel
theorem small_6944755_right_covered : CoveredBy scale carrier boxes small_6944755_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6944755_right_root small_6944755_right_fuel small_6944755_right_count small_6944755_right_encoded small_6944755_right_checked

theorem cover_6944755 : CoveredBy scale carrier boxes root_6944755 := by
  apply coveredBy_split_literal root_6944755 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0167.root_6944760 small_6944755_right_root coord2 true (13027072)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0167.cover_6944760
  · exact small_6944755_right_covered
#print axioms cover_6944755

def root_6944543 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6944543_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (10572672)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6944543_left_fuel : Nat := 19
def small_6944543_left_count : Nat := 99
def small_6944543_left_encoded : String := "0F875105000000020280010213D7B0F9078000FC128A7D07078000FE128A7D09022A45770000000913E1C500000000000B4D44040000000710804D050140010213F5D8F908C000FC00000007000000060000000113F614F90000000108C000FC00000007000000090000000200000004128A4109000000040000000700000003128A410700000003078000FE00000009128A410900000004022A457700000008000000060000000113D7ECF900000001078000FC128A7D07078000FE128A7D09022A45770000000813E1C500000000000B4D440410801105000000020000000710804D0503C0010213A510F908C000FC11FC250708C000FE11FC25090000000900000004000000070000000311FBE90700000003000000090000000113A54CF90000000108C000FC11FC250708C000FE11FC250901152337000000080000000700000004000000070000000311FBE90700000003000000090000000200000004128A4109000000040000000800000003128A410700000003078000FE00000009128A41090000000400000008"
theorem small_6944543_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6944543_left_root small_6944543_left_fuel small_6944543_left_count small_6944543_left_encoded = true := by
  decide +kernel
theorem small_6944543_left_covered : CoveredBy scale carrier boxes small_6944543_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6944543_left_root small_6944543_left_fuel small_6944543_left_count small_6944543_left_encoded small_6944543_left_checked

theorem cover_6944543 : CoveredBy scale carrier boxes root_6944543 := by
  apply coveredBy_split_literal root_6944543 small_6944543_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0167.root_6944755 coord2 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_6944543_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0167.cover_6944755
#print axioms cover_6944543

def root_6944538 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6944538_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6944538_right_fuel : Nat := 1
def small_6944538_right_count : Nat := 1
def small_6944538_right_encoded : String := "00000002"
theorem small_6944538_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6944538_right_root small_6944538_right_fuel small_6944538_right_count small_6944538_right_encoded = true := by
  decide +kernel
theorem small_6944538_right_covered : CoveredBy scale carrier boxes small_6944538_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6944538_right_root small_6944538_right_fuel small_6944538_right_count small_6944538_right_encoded small_6944538_right_checked

theorem cover_6944538 : CoveredBy scale carrier boxes root_6944538 := by
  apply coveredBy_split_literal root_6944538 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0167.root_6944543 small_6944538_right_root coord2 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0167.cover_6944543
  · exact small_6944538_right_covered
#print axioms cover_6944538

def root_6942138 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6942138 : CoveredBy scale carrier boxes root_6942138 := by
  apply coveredBy_split_literal root_6942138 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2613.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0167.root_6944538 coord2 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2613.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0167.cover_6944538
#print axioms cover_6942138

def root_6942132 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6942132_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6942132_left_fuel : Nat := 1
def small_6942132_left_count : Nat := 1
def small_6942132_left_encoded : String := "00000000"
theorem small_6942132_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6942132_left_root small_6942132_left_fuel small_6942132_left_count small_6942132_left_encoded = true := by
  decide +kernel
theorem small_6942132_left_covered : CoveredBy scale carrier boxes small_6942132_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6942132_left_root small_6942132_left_fuel small_6942132_left_count small_6942132_left_encoded small_6942132_left_checked

theorem cover_6942132 : CoveredBy scale carrier boxes root_6942132 := by
  apply coveredBy_split_literal root_6942132 small_6942132_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0167.root_6942138 coord0 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_6942132_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0167.cover_6942138
#print axioms cover_6942132

def root_6941450 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6941450_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6941450_left_fuel : Nat := 21
def small_6941450_left_count : Nat := 325
def small_6941450_left_encoded : String := "1386AD000CFD9C050F34D104000000020280010213D7B0F9078000FC128A7D07078000FE128A7D09067ECE770000000712EA5900000000000AD357850000000710D13D040140010213F5D8F908C000FC00000005000000070000000113F614F90000000108C000FC11FC25070000000700000003000000070000000200000004128A410900000004067ECE770000000A12EA5900000000000AD357850000000A10D13D04014001020000000A13F614F90000000108C000FC0000000A11FBE90700000003064000FE12FFAD090569AC37000000070000000A00000004000000080000000200000003128A410700000003078000FE128A7D090000000700000004128A410900000004067ECE7712EA95000AD357850000000710D13D04014001020000000900000008000000020000000012EA5900000000000AD3578510D10104000000020000000710D13D040140010213F5D8F9064000FC12FFAD07064000FE12FFAD090569AC3700000007000000070000000412FF7109000000040000000A0000000312FF710700000003064000FE0000000712FF710900000004000000090000000113F614F900000001064000FC12FFAD07064000FE0000000712FF710900000004000000080000000312FF710700000003064000FE0000000712FF71090000000400000008000000020000000113D7ECF900000001078000FC128A7D07078000FE128A7D09067ECE770000000712EA5900000000000AD357850000000710D13D0403C0010213A510F908C000FC000000070000000700000001000000070000000200000004128A410900000004067ECE7712EA95000AD3578500000007000000080000000012EA5900000000000AD3578510D101040000000203C001020000000A13A54CF9000000010000000710D13D0403C0010213A510F908C000FC11FC250700000008000000030000000800000001000000080000000200000003128A410700000003078000FE00000007128A410900000004067ECE7712EA9500000000070000000012EA5900000000000AD357850000000710D13D0403C0010213A510F9064000FC12FFAD07000000080000000312FF710700000003064000FE00000007000000050000000100000008000000020F350D040C9A87040F875105000000020280010213D7B0F9078000FC128A7D07078000FE0000000900000008000000030000000900000001000000080F878D050280010213D7B0F9078000FC128A7D07078000FE128A7D09067ECE770000000912EA5900000000000DE7CA040E5FD90500000002000000090E6015050140010213F5D8F908C000FC00000005000000090000000113F614F90000000108C000FC11FC25070000000500000003000000090000000200000004128A410900000004067ECE770000000812EA5900000000000DE7CA04000000080E6015050140010213F5D8F908C000FC0000000A0000000800000001000000080000000200000003128A410700000003078000FE00000009128A410900000004067ECE770000000812EA590000000000000000090000000113D7ECF900000001078000FC128A7D07078000FE128A7D09067ECE770000000812EA5900000000000DE7CA04000000080E60150503C0010213A510F908C000FC11FC250708C000FE000000090000000800000003000000090000000113A54CF90000000108C000FC00000008000000080000000200000004128A4109000000040000000800000003128A410700000003078000FE00000009128A41090000000400000008000000020000000200000000"
theorem small_6941450_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6941450_left_root small_6941450_left_fuel small_6941450_left_count small_6941450_left_encoded = true := by
  decide +kernel
theorem small_6941450_left_covered : CoveredBy scale carrier boxes small_6941450_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6941450_left_root small_6941450_left_fuel small_6941450_left_count small_6941450_left_encoded small_6941450_left_checked

theorem cover_6941450 : CoveredBy scale carrier boxes root_6941450 := by
  apply coveredBy_split_literal root_6941450 small_6941450_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0167.root_6942132 coord0 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact small_6941450_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0167.cover_6942132
#print axioms cover_6941450

def root_6941445 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6941445_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6941445_right_fuel : Nat := 1
def small_6941445_right_count : Nat := 1
def small_6941445_right_encoded : String := "00000004"
theorem small_6941445_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6941445_right_root small_6941445_right_fuel small_6941445_right_count small_6941445_right_encoded = true := by
  decide +kernel
theorem small_6941445_right_covered : CoveredBy scale carrier boxes small_6941445_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6941445_right_root small_6941445_right_fuel small_6941445_right_count small_6941445_right_encoded small_6941445_right_checked

theorem cover_6941445 : CoveredBy scale carrier boxes root_6941445 := by
  apply coveredBy_split_literal root_6941445 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0167.root_6941450 small_6941445_right_root coord4 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0167.cover_6941450
  · exact small_6941445_right_covered
#print axioms cover_6941445

def root_6941444 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6941444_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6941444_right_fuel : Nat := 19
def small_6941444_right_count : Nat := 205
def small_6941444_right_encoded : String := "135D450900000004045489F71386AD000CFD9C050F34D104000000020280010213D7B0F9078000FC128A7D07028000FE13D7ED09067ECE770000000A12EA5900000000000000000A0000000413D7B109000000040000000800000003128A410700000003028000FE13D7ED09067ECE7712EA95000AD3578510D10104000000020000000A000000080000000012EA5900000000000AD3578510D10104000000020000000A10D13D040140010213F5D8F9064000FC00000008000000060000000100000008000000020000000413D7B10900000004067ECE770000000812EA590000000000000000080000000113D7ECF900000001078000FC128A7D07028000FE13D7ED09067ECE770000000812EA59000000000000000008000000040000000800000003128A410700000003028000FE13D7ED09067ECE770000000812EA5900000000000AD3578510D1010400000002000000050000000500000004000000050F350D0400000008000000020000000013867100000000000CFD9C050F34D104000000020280010213D7B0F9078000FC128A7D07028000FE13D7ED09022A45770000000A13E1C500000000000AD357850000000610D13D0400000006000000020000000413D7B10900000004022A45770000000A0000000600000003128A410700000003028000FE13D7ED09022A457713E201000AD3578510D10104000000020000000510D13D040000000600000002000000000000000600000004000000050000000113D7ECF900000001078000FC128A7D07028000FE13D7ED09022A457713E201000AD3578510D10104000000020000000A10D13D0403C0010213A510F908C000FC00000008000000050000000100000005000000020000000013E1C500000000000AD3578510D10104000000020000000500000005000000040000000500000003000000050F350D040C9A87040F87510500000002000000070F878D050280010213D7B0F9078000FC128A7D07028000FE13D7ED09022A45770000000800000006000000040000000600000003000000060000000113D7ECF900000001078000FC128A7D07028000FE13D7ED09022A45770000000800000007000000040000000500000003000000050000000200000002"
theorem small_6941444_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6941444_right_root small_6941444_right_fuel small_6941444_right_count small_6941444_right_encoded = true := by
  decide +kernel
theorem small_6941444_right_covered : CoveredBy scale carrier boxes small_6941444_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6941444_right_root small_6941444_right_fuel small_6941444_right_count small_6941444_right_encoded small_6941444_right_checked

theorem cover_6941444 : CoveredBy scale carrier boxes root_6941444 := by
  apply coveredBy_split_literal root_6941444 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0167.root_6941445 small_6941444_right_root coord4 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0167.cover_6941445
  · exact small_6941444_right_covered
#print axioms cover_6941444

def root_6941439 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6941439_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6941439_right_fuel : Nat := 1
def small_6941439_right_count : Nat := 1
def small_6941439_right_encoded : String := "00000003"
theorem small_6941439_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6941439_right_root small_6941439_right_fuel small_6941439_right_count small_6941439_right_encoded = true := by
  decide +kernel
theorem small_6941439_right_covered : CoveredBy scale carrier boxes small_6941439_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6941439_right_root small_6941439_right_fuel small_6941439_right_count small_6941439_right_encoded small_6941439_right_checked

theorem cover_6941439 : CoveredBy scale carrier boxes root_6941439 := by
  apply coveredBy_split_literal root_6941439 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0167.root_6941444 small_6941439_right_root coord3 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0167.cover_6941444
  · exact small_6941439_right_covered
#print axioms cover_6941439

def root_6941438 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6941438_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6941438_right_fuel : Nat := 19
def small_6941438_right_count : Nat := 183
def small_6941438_right_encoded : String := "135D450700000003050000FE135D8109045489F71386AD000CFD9C050F34D104000000020280010213D7B0F9028000FC13D7ED07078000FE00000007128A410900000004067ECE770000000712EA5900000000000AD357850000000710D13D04000000090000000200000003000000070000000113D7ECF900000001028000FC13D7ED07078000FE00000007128A410900000004067ECE77000000070000000700000003000000070F350D040C9A8704000000090F878D0502800102000000090000000900000002000000020000000013867100000000000CFD9C050F34D104000000020280010213D7B0F9028000FC13D7ED07078000FE128A7D090000000700000004128A410900000004022A457713E201000AD357850000000710D13D04000000060000000200000000000000060000000313D7B10700000003078000FE00000007000000050000000113D7ECF900000001028000FC13D7ED07078000FE000000070000000500000003000000050F350D040C9A87040F875105000000020280010200000009000000090F878D050280010213D7B0F9028000FC13D7ED07078000FE128A7D09022A45770000000900000006000000040000000600000003000000060000000113D7ECF900000001028000FC13D7ED07078000FE128A7D09022A45770000000913E1C500000000000DE7CA04000000090000000500000004000000050000000300000005000000020000000200000004135D450900000004045489F71386AD000CFD9C050F34D104000000020280010213D7B0F9028000FC13D7ED07028000FE13D7ED09067ECE7712EA95000AD3578510D101040000000200000007000000080000000012EA5900000000000AD3578510D101040000000200000005000000050000000400000005000000030000000500000001000000050F350D0400000008000000020000000013867100000000000CFD9C050F34D10400000002000000050F350D040C9A8704000000060000000500000002"
theorem small_6941438_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6941438_right_root small_6941438_right_fuel small_6941438_right_count small_6941438_right_encoded = true := by
  decide +kernel
theorem small_6941438_right_covered : CoveredBy scale carrier boxes small_6941438_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6941438_right_root small_6941438_right_fuel small_6941438_right_count small_6941438_right_encoded small_6941438_right_checked

theorem cover_6941438 : CoveredBy scale carrier boxes root_6941438 := by
  apply coveredBy_split_literal root_6941438 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0167.root_6941439 small_6941438_right_root coord3 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0167.cover_6941439
  · exact small_6941438_right_covered
#print axioms cover_6941438

def root_6941433 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6941433_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16243968), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6941433_right_fuel : Nat := 1
def small_6941433_right_count : Nat := 1
def small_6941433_right_encoded : String := "00000001"
theorem small_6941433_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6941433_right_root small_6941433_right_fuel small_6941433_right_count small_6941433_right_encoded = true := by
  decide +kernel
theorem small_6941433_right_covered : CoveredBy scale carrier boxes small_6941433_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6941433_right_root small_6941433_right_fuel small_6941433_right_count small_6941433_right_encoded small_6941433_right_checked

theorem cover_6941433 : CoveredBy scale carrier boxes root_6941433 := by
  apply coveredBy_split_literal root_6941433 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0167.root_6941438 small_6941433_right_root coord1 true (-16243968)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0167.cover_6941438
  · exact small_6941433_right_covered
#print axioms cover_6941433

def root_6941432 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6941432 : CoveredBy scale carrier boxes root_6941432 := by
  apply coveredBy_split_literal root_6941432 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0167.root_6941433 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2615.root coord1 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0167.cover_6941433
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2615.covered
#print axioms cover_6941432

def root_6941427 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6941427_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6941427_right_fuel : Nat := 1
def small_6941427_right_count : Nat := 1
def small_6941427_right_encoded : String := "00000002"
theorem small_6941427_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6941427_right_root small_6941427_right_fuel small_6941427_right_count small_6941427_right_encoded = true := by
  decide +kernel
theorem small_6941427_right_covered : CoveredBy scale carrier boxes small_6941427_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6941427_right_root small_6941427_right_fuel small_6941427_right_count small_6941427_right_encoded small_6941427_right_checked

theorem cover_6941427 : CoveredBy scale carrier boxes root_6941427 := by
  apply coveredBy_split_literal root_6941427 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0167.root_6941432 small_6941427_right_root coord2 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0167.cover_6941432
  · exact small_6941427_right_covered
#print axioms cover_6941427

def root_6940921 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6940921_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6940921_left_fuel : Nat := 21
def small_6940921_left_count : Nat := 241
def small_6940921_left_encoded : String := "120701040000000205000102135D44F9050000FC135D8107050000FE135D8109045489F71386AD0004548A05000000070000000700000000138671000000000004548A051386710400000002028001020000000713D7ECF900000001078000FC0000000A000000071386AD040280010213D7B0F9078000FC0000000A000000070000000113D7ECF900000001078000FC128A7D07078000FE128A7D090000000700000004128A4109000000040000000A00000003128A410700000003000000070000000200000004135D450900000004045489F71386AD0004548A050000000A1386AD04028001020000000A13D7ECF900000001078000FC0000000A128A410700000003028000FE00000007000000050000000200000000138671000000000004548A050000000A1386AD04028001020000000A13D7ECF900000001078000FC0000000A000000050000000200000003135D450700000003050000FE00000007135D450900000004045489F71386AD0004548A05000000071386AD040280010213D7B0F9028000FC13D7ED07028000FE000000070000000500000003000000050000000100000005000000020000000013867100000000000000000500000001135D80F900000001050000FC135D8107050000FE135D8109045489F71386AD0004548A05000000071386AD040780010200000007128A7CF900000001000000070000000200000000138671000000000004548A05138671040000000207800102128A40F9078000FC128A7D07078000FE0000000700000007000000030000000700000001128A7CF900000001078000FC128A7D07078000FE000000070000000500000003000000051386AD0407800102128A40F9078000FC128A7D07078000FE128A7D090000000700000004128A410900000004022A457713E20100067ECE8500000007000000070000000013E1C500000000000000000500000003128A410700000003078000FE000000070000000500000001128A7CF900000001078000FC128A7D07078000FE128A7D0900000007000000040000000500000003000000050000000200000004135D450900000004045489F71386AD0004548A05138671040000000207800102128A40F90000000A00000001000000051386AD0407800102128A40F9078000FC128A7D07028000FE13D7ED09067ECE770000000712EA59000000000000000005000000040000000500000003000000050000000100000005000000020000000013867100000000000000000500000003135D450700000003050000FE135D8109045489F7000000071386710000000000000000050000000400000005"
theorem small_6940921_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6940921_left_root small_6940921_left_fuel small_6940921_left_count small_6940921_left_encoded = true := by
  decide +kernel
theorem small_6940921_left_covered : CoveredBy scale carrier boxes small_6940921_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6940921_left_root small_6940921_left_fuel small_6940921_left_count small_6940921_left_encoded small_6940921_left_checked

theorem cover_6940921 : CoveredBy scale carrier boxes root_6940921 := by
  apply coveredBy_split_literal root_6940921 small_6940921_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0167.root_6941427 coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_6940921_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0167.cover_6941427
#print axioms cover_6940921

def root_6940915 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6940915_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6940915_left_fuel : Nat := 1
def small_6940915_left_count : Nat := 1
def small_6940915_left_encoded : String := "00000000"
theorem small_6940915_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6940915_left_root small_6940915_left_fuel small_6940915_left_count small_6940915_left_encoded = true := by
  decide +kernel
theorem small_6940915_left_covered : CoveredBy scale carrier boxes small_6940915_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6940915_left_root small_6940915_left_fuel small_6940915_left_count small_6940915_left_encoded small_6940915_left_checked

theorem cover_6940915 : CoveredBy scale carrier boxes root_6940915 := by
  apply coveredBy_split_literal root_6940915 small_6940915_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0167.root_6940921 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_6940915_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0167.cover_6940921
#print axioms cover_6940915

def root_6940373 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6940373_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6940373_left_fuel : Nat := 22
def small_6940373_left_count : Nat := 253
def small_6940373_left_encoded : String := "12073D0008A91305120701040000000205000102135D44F9050000FC135D8107050000FE00000007135D4509000000040CFD9BF70F350D0000000007000000000F34D1000000000004548A05000000071386AD04028001020000000A13D7ECF900000001078000FC0000000A000000070000000200000003135D450700000003050000FE00000007135D4509000000040CFD9BF7000000070000000700000001135D80F900000001050000FC135D8107050000FE00000007135D4509000000040CFD9BF7000000070F34D1000000000004548A050000000700000008000000030000000712073D0405000102135D44F9050000FC135D8107050000FE135D81090CFD9BF70F350D000CFD9C050F34D104000000020000000700000009000000000F34D100000000000CFD9C050F34D104000000020280010213D7B0F9078000FC128A7D07078000FE00000005128A4109000000040AD357770000000710D10100000000000000000A00000003128A410700000003078000FE00000007128A410900000004000000070000000113D7ECF900000001078000FC128A7D07078000FE00000007128A4109000000040000000800000003000000070F350D040C9A8704000000080F878D050280010213D7B0F9000000090000000113D7ECF90000000100000008000000020000000200000004135D4509000000040CFD9BF70F350D000CFD9C050F34D104000000020C9A87000F8750F70000000700000000000000080F350D040000000800000002000000000F34D100000000000CFD9C050F34D104000000020280010213D7B0F9078000FC000000080000000800000001000000080F350D04000000080000000200000003135D450700000003050000FE135D81090CFD9BF7000000090F34D100000000000CFD9C050F34D10400000002000000070000000900000004135D4509000000040CFD9BF7000000080F34D100000000000000000800000001135D80F900000001050000FC135D8107050000FE135D81090CFD9BF70F350D000CFD9C050F34D10400000002000000060F350D040C9A8700000000090000000800000002000000000F34D100000000000CFD9C050F34D1040000000207800102128A40F9078000FC000000070000000700000001128A7CF900000001000000060F350D04000000080000000200000004135D4509000000040CFD9BF70F350D000CFD9C05000000080F350D040000000800000002000000000F34D100000000000000000800000003135D450700000003050000FE135D81090CFD9BF70F350D000CFD9C050000000700000009000000000F34D100000000000CFD9C050F34D10400000002000000070000000800000004135D4509000000040CFD9BF700000008000000080000000200000000"
theorem small_6940373_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6940373_left_root small_6940373_left_fuel small_6940373_left_count small_6940373_left_encoded = true := by
  decide +kernel
theorem small_6940373_left_covered : CoveredBy scale carrier boxes small_6940373_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6940373_left_root small_6940373_left_fuel small_6940373_left_count small_6940373_left_encoded small_6940373_left_checked

theorem cover_6940373 : CoveredBy scale carrier boxes root_6940373 := by
  apply coveredBy_split_literal root_6940373 small_6940373_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0167.root_6940915 coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_6940373_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0167.cover_6940915
#print axioms cover_6940373

def root_6940367 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6940367_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6940367_left_fuel : Nat := 1
def small_6940367_left_count : Nat := 1
def small_6940367_left_encoded : String := "00000004"
theorem small_6940367_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6940367_left_root small_6940367_left_fuel small_6940367_left_count small_6940367_left_encoded = true := by
  decide +kernel
theorem small_6940367_left_covered : CoveredBy scale carrier boxes small_6940367_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6940367_left_root small_6940367_left_fuel small_6940367_left_count small_6940367_left_encoded small_6940367_left_checked

theorem cover_6940367 : CoveredBy scale carrier boxes root_6940367 := by
  apply coveredBy_split_literal root_6940367 small_6940367_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0167.root_6940373 coord4 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_6940367_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0167.cover_6940373
#print axioms cover_6940367

def root_6936717 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6936717 : CoveredBy scale carrier boxes root_6936717 := by
  apply coveredBy_split_literal root_6936717 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0167.root_6936718 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0167.root_6940367 coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0167.cover_6936718
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0167.cover_6940367
#print axioms cover_6936717

def root_6936711 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6936711_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6936711_left_fuel : Nat := 1
def small_6936711_left_count : Nat := 1
def small_6936711_left_encoded : String := "00000003"
theorem small_6936711_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6936711_left_root small_6936711_left_fuel small_6936711_left_count small_6936711_left_encoded = true := by
  decide +kernel
theorem small_6936711_left_covered : CoveredBy scale carrier boxes small_6936711_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6936711_left_root small_6936711_left_fuel small_6936711_left_count small_6936711_left_encoded small_6936711_left_checked

theorem cover_6936711 : CoveredBy scale carrier boxes root_6936711 := by
  apply coveredBy_split_literal root_6936711 small_6936711_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0167.root_6936717 coord3 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_6936711_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0167.cover_6936717
#print axioms cover_6936711

def root_6925831 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6925831 : CoveredBy scale carrier boxes root_6925831 := by
  apply coveredBy_split_literal root_6925831 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0167.root_6925832 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0167.root_6936711 coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0167.cover_6925832
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0167.cover_6936711
#print axioms cover_6925831

def root_6925826 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6925826_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6925826_right_fuel : Nat := 1
def small_6925826_right_count : Nat := 1
def small_6925826_right_encoded : String := "00000002"
theorem small_6925826_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6925826_right_root small_6925826_right_fuel small_6925826_right_count small_6925826_right_encoded = true := by
  decide +kernel
theorem small_6925826_right_covered : CoveredBy scale carrier boxes small_6925826_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6925826_right_root small_6925826_right_fuel small_6925826_right_count small_6925826_right_encoded small_6925826_right_checked

theorem cover_6925826 : CoveredBy scale carrier boxes root_6925826 := by
  apply coveredBy_split_literal root_6925826 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0167.root_6925831 small_6925826_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0167.cover_6925831
  · exact small_6925826_right_covered
#print axioms cover_6925826

def root_6924544 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6924544 : CoveredBy scale carrier boxes root_6924544 := by
  apply coveredBy_split_literal root_6924544 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2607.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0167.root_6925826 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2607.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0167.cover_6925826
#print axioms cover_6924544

def root_6924539 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6924539_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6924539_right_fuel : Nat := 1
def small_6924539_right_count : Nat := 1
def small_6924539_right_encoded : String := "00000001"
theorem small_6924539_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6924539_right_root small_6924539_right_fuel small_6924539_right_count small_6924539_right_encoded = true := by
  decide +kernel
theorem small_6924539_right_covered : CoveredBy scale carrier boxes small_6924539_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6924539_right_root small_6924539_right_fuel small_6924539_right_count small_6924539_right_encoded small_6924539_right_checked

theorem cover_6924539 : CoveredBy scale carrier boxes root_6924539 := by
  apply coveredBy_split_literal root_6924539 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0167.root_6924544 small_6924539_right_root coord1 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0167.cover_6924544
  · exact small_6924539_right_covered
#print axioms cover_6924539

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0167
