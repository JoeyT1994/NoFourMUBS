import TaoBundleAssembly0359
import TaoBundleChunkBatch0477
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0360
def root_5092598 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5092598_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5092598_left_fuel : Nat := 28
def small_5092598_left_count : Nat := 341
def small_5092598_left_encoded : String := "12073CFC0000000308A912FF12073CFE00000004050000FA135D80FB00000002045489F71386AD000CFD9BF9000000050F34D0F800000007000000010000000013867100000000000CFD9BF90F350CF8000000010CFD9BFD000000050F34D0FC0CFD9BFF000000050F34D0FE0C9A86F80F878CF900000001078000FA00000006000000070F8750F9000000050000000100000004000000030F34D0F80CFD9BFD000000060000000700000001135D44FB045489F70000000513867100000000000CFD9BF9000000050F34D0F8000000070000000100000002120700FE050000FA135D80FB00000002045489F71386AD000CFD9BF90F350CF8000000010CFD9BFD0F350CFC00000003045489FF00000005138670FE0C9A86F80F878CF9000000010C9A86FC0F878CFD00000003078000FA00000005000000090F8750FD00000005000000030F8750F90000000500000001000000040F34D0FC045489FF1386ACFE000000040C9A86F80F878CF900000001000000070F8750F90000000500000001138670FE0C9A86F80F878CF900000001078000FA128A7CFB00000002067ECE770000000A12EA5900000000000000000A0000000A0F8750F9078000FA128A7CFB00000002067ECE770000000512EA5900000000000AD3577D0000000510D100FC0000000A000000030000000A0000000100000004000000030F34D0F80CFD9BFD0F350CFC00000003045489FF00000006000000090F34D0FC045489FF00000007138670FE078000FA128A7CFB0000000200000007000000070000000400000003000000010000000013867100000000000CFD9BF90F350CF8000000010CFD9BFD0F350CFC00000003045489FF1386ACFE000000040C9A86F80F878CF900000001000000090F8750F90000000500000001138670FE0C9A86F80F878CF900000001000000090F8750F90C9A86FC0F878CFD00000003078000FA128A7CFB00000002022A457713E20100022A457F00000005000000080000000000000009000000090F8750FD000000090000000300000001000000040F34D0FC045489FF1386ACFE000000040C9A86F80F878CF900000001078000FA128A7CFB00000002022A457713E201000AD3577D00000005000000070000000000000009000000090F8750F9078000FA128A7CFB00000002022A45770000000513E1C500000000000AD3577D0000000510D100FC067ECE7F0000000512EA58FE0B4D43F800000009108010F908C000FA0000000500000009000000010000000400000003128A40FB022A457700000005000000090000000200000001138670FE0C9A86F80F878CF900000001078000FA128A7CFB00000002022A457713E201000AD3577D0000000910D100FC00000009000000030000000000000009000000090F8750F9078000FA128A7CFB00000002022A457713E201000AD3577D10D13CFC00000003022A457F000000050000000A10D100FC022A457F13E200FE000000040B4D43F80000000A108010F90000000A000000010000000A000000030000000013E1C500000000000AD3577D0000000910D100FC022A457F13E200FE000000040B4D43F800000009108010F908C000FA11FC24FB000000020000000900000009000000010000000900000003128A40FB0000000A000000020000000100000004000000030F34D0F80CFD9BFD000000090F34D0FC000000090000000300000001135D44FB045489F71386AD000CFD9BF90F350CF8000000010CFD9BFD000000050F34D0FC045489FF000000050000000A000000030F34D0F800000009000000010000000013867100000000000CFD9BF90F350CF8000000010CFD9BFD000000090F34D0FC045489FF000000090000000900000003000000090000000200000004"
theorem small_5092598_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5092598_left_root small_5092598_left_fuel small_5092598_left_count small_5092598_left_encoded = true := by
  decide +kernel
theorem small_5092598_left_covered : CoveredBy scale carrier boxes small_5092598_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5092598_left_root small_5092598_left_fuel small_5092598_left_count small_5092598_left_encoded small_5092598_left_checked

theorem cover_5092598 : CoveredBy scale carrier boxes root_5092598 := by
  apply coveredBy_split_literal root_5092598 small_5092598_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1905.root coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_5092598_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1905.covered
#print axioms cover_5092598

def root_5092592 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5092592_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5092592_left_fuel : Nat := 1
def small_5092592_left_count : Nat := 1
def small_5092592_left_encoded : String := "00000001"
theorem small_5092592_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5092592_left_root small_5092592_left_fuel small_5092592_left_count small_5092592_left_encoded = true := by
  decide +kernel
theorem small_5092592_left_covered : CoveredBy scale carrier boxes small_5092592_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5092592_left_root small_5092592_left_fuel small_5092592_left_count small_5092592_left_encoded small_5092592_left_checked

theorem cover_5092592 : CoveredBy scale carrier boxes root_5092592 := by
  apply coveredBy_split_literal root_5092592 small_5092592_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0360.root_5092598 coord1 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_5092592_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0360.cover_5092598
#print axioms cover_5092592

def root_5092591 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5092591_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5092591_right_fuel : Nat := 13
def small_5092591_right_count : Nat := 39
def small_5092591_right_encoded : String := "120700F808A912FD12073CFC0000000308A912FF00000007120700FE050000FA135D80FB00000002045489F71386AD000000000700000000000000090000000900000004120700FC08A912FF00000007120700FE050000FA135D80FB00000002045489F7000000071386710000000000045489F91386ACF800000001045489FD00000007000000070000000700000007000000040000000300000001"
theorem small_5092591_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5092591_right_root small_5092591_right_fuel small_5092591_right_count small_5092591_right_encoded = true := by
  decide +kernel
theorem small_5092591_right_covered : CoveredBy scale carrier boxes small_5092591_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5092591_right_root small_5092591_right_fuel small_5092591_right_count small_5092591_right_encoded small_5092591_right_checked

theorem cover_5092591 : CoveredBy scale carrier boxes root_5092591 := by
  apply coveredBy_split_literal root_5092591 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0360.root_5092592 small_5092591_right_root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0360.cover_5092592
  · exact small_5092591_right_covered
#print axioms cover_5092591

def root_5092585 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5092585_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5092585_left_fuel : Nat := 1
def small_5092585_left_count : Nat := 1
def small_5092585_left_encoded : String := "00000000"
theorem small_5092585_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5092585_left_root small_5092585_left_fuel small_5092585_left_count small_5092585_left_encoded = true := by
  decide +kernel
theorem small_5092585_left_covered : CoveredBy scale carrier boxes small_5092585_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5092585_left_root small_5092585_left_fuel small_5092585_left_count small_5092585_left_encoded small_5092585_left_checked

theorem cover_5092585 : CoveredBy scale carrier boxes root_5092585 := by
  apply coveredBy_split_literal root_5092585 small_5092585_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0360.root_5092591 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_5092585_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0360.cover_5092591
#print axioms cover_5092585

def root_5092203 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5092203_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5092203_left_fuel : Nat := 24
def small_5092203_left_count : Nat := 181
def small_5092203_left_encoded : String := "12073D0008A912F912073CF80000000108A912FD12073CFC0000000308A912FF00000005120700FE050000FA135D80FB000000020CFD9BF70F350D000CFD9BF9000000050F34D0F80000000500000001000000000F34D100000000000CFD9BF90F350CF8000000010CFD9BFD000000050F34D0FC045489FF00000005138670FE0000000500000004000000030F34D0F80CFD9BFD000000070000000700000001135D44FB0CFD9BF7000000050F34D100000000000CFD9BF9000000050F34D0F800000007000000010000000200000004120700FC08A912FF12073CFE00000004050000FA135D80FB000000020CFD9BF7000000070F34D100000000000000000700000007120700FE050000FA135D80FB000000020CFD9BF70F350D000CFD9BF90F350CF800000001045489FD000000050000000700000007000000000F34D100000000000CFD9BF90F350CF800000001045489FD1386ACFC00000003045489FF00000005138670FE0C9A86F80000000A0F8750F9078000FA128A7CFB000000020AD357770000000510D10100000000000000000A0000000A0000000100000004138670FC045489FF00000007138670FE0C9A86F8000000070F8750F9078000FA128A7CFB000000020AD357770000000710D101000000000000000007000000070000000100000004000000030F34D0F80000000700000001135D44FB0CFD9BF7000000070F34D100000000000CFD9BF90F350CF800000001045489FD000000070000000700000007000000020000000400000003120700F808A912FD12073CFC0000000308A912FF12073CFE00000004050000FA0000000700000007120700FE050000FA135D80FB000000020CFD9BF70F350D00045489F900000007138670F80000000700000001000000000F34D1000000000000000007135D44FB0CFD9BF70F350D00045489F9000000070000000900000000000000090000000200000004120700FC00000007000000030000000100000000"
theorem small_5092203_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5092203_left_root small_5092203_left_fuel small_5092203_left_count small_5092203_left_encoded = true := by
  decide +kernel
theorem small_5092203_left_covered : CoveredBy scale carrier boxes small_5092203_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5092203_left_root small_5092203_left_fuel small_5092203_left_count small_5092203_left_encoded small_5092203_left_checked

theorem cover_5092203 : CoveredBy scale carrier boxes root_5092203 := by
  apply coveredBy_split_literal root_5092203 small_5092203_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0360.root_5092585 coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_5092203_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0360.cover_5092585
#print axioms cover_5092203

def root_5092197 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5092197_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5092197_left_fuel : Nat := 1
def small_5092197_left_count : Nat := 1
def small_5092197_left_encoded : String := "00000004"
theorem small_5092197_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5092197_left_root small_5092197_left_fuel small_5092197_left_count small_5092197_left_encoded = true := by
  decide +kernel
theorem small_5092197_left_covered : CoveredBy scale carrier boxes small_5092197_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5092197_left_root small_5092197_left_fuel small_5092197_left_count small_5092197_left_encoded small_5092197_left_checked

theorem cover_5092197 : CoveredBy scale carrier boxes root_5092197 := by
  apply coveredBy_split_literal root_5092197 small_5092197_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0360.root_5092203 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5092197_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0360.cover_5092203
#print axioms cover_5092197

def root_5092196 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5092196_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5092196_right_fuel : Nat := 15
def small_5092196_right_count : Nat := 41
def small_5092196_right_encoded : String := "1151E8FF08A912F712073D0008A912F9000000050000000700000000120701000000000008A912F912073CF80000000108A912FD00000005120700FC050000FA135D80FB00000002050000FE135D80FF00000004045489F700000007138671000000000000000007135D44FF045489F70000000513867100000000000CFD9BF90000000500000007000000040000000700000003120700F8000000070000000100000004"
theorem small_5092196_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5092196_right_root small_5092196_right_fuel small_5092196_right_count small_5092196_right_encoded = true := by
  decide +kernel
theorem small_5092196_right_covered : CoveredBy scale carrier boxes small_5092196_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5092196_right_root small_5092196_right_fuel small_5092196_right_count small_5092196_right_encoded small_5092196_right_checked

theorem cover_5092196 : CoveredBy scale carrier boxes root_5092196 := by
  apply coveredBy_split_literal root_5092196 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0360.root_5092197 small_5092196_right_root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0360.cover_5092197
  · exact small_5092196_right_covered
#print axioms cover_5092196

def root_5092190 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5092190_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5092190_left_fuel : Nat := 1
def small_5092190_left_count : Nat := 1
def small_5092190_left_encoded : String := "00000003"
theorem small_5092190_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5092190_left_root small_5092190_left_fuel small_5092190_left_count small_5092190_left_encoded = true := by
  decide +kernel
theorem small_5092190_left_covered : CoveredBy scale carrier boxes small_5092190_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5092190_left_root small_5092190_left_fuel small_5092190_left_count small_5092190_left_encoded small_5092190_left_checked

theorem cover_5092190 : CoveredBy scale carrier boxes root_5092190 := by
  apply coveredBy_split_literal root_5092190 small_5092190_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0360.root_5092196 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5092190_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0360.cover_5092196
#print axioms cover_5092190

def root_5092189 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5092189_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5092189_right_fuel : Nat := 22
def small_5092189_right_count : Nat := 137
def small_5092189_right_encoded : String := "1151E8FD0A0000FE115224FF0000000408A912F712073D0008A912F900000005120700F808A912FF00000005120700FE050000FA135D80FB00000002050000FC135D80FD000000030CFD9BF70F350D00045489F900000005138670F80000000500000001000000000F34D1000000000000000007135D44FD0CFD9BF7000000050F34D100000000000000000700000003135D44FB050000FC135D80FD000000030CFD9BF70000000500000009135D44FD0CFD9BF700000005000000090000000300000002000000040000000100000000120701000000000008A912F912073CF80000000108A912FF00000005120700FE050000FA135D80FB00000002050000FC135D80FD00000003045489F71386AD000CFD9BF9000000050F34D0F800000007000000010000000013867100000000000CFD9BF90F350CF800000001045489FF00000005138670FE0C9A86F80F878CF900000001000000090F8750F90000000500000001000000040F34D0F80000000900000001135D44FD045489F70000000513867100000000000CFD9BF9000000050F34D0F8000000060000000100000003135D44FB050000FC135D80FD00000003045489F70000000500000009135D44FD045489F70000000513867100000000000CFD9BF90000000500000009000000030000000200000004120700F808A912FF00000006120700FE050000FA135D80FB00000002000000060000000900000004000000011151E8FF000000050000000400000003"
theorem small_5092189_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5092189_right_root small_5092189_right_fuel small_5092189_right_count small_5092189_right_encoded = true := by
  decide +kernel
theorem small_5092189_right_covered : CoveredBy scale carrier boxes small_5092189_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5092189_right_root small_5092189_right_fuel small_5092189_right_count small_5092189_right_encoded small_5092189_right_checked

theorem cover_5092189 : CoveredBy scale carrier boxes root_5092189 := by
  apply coveredBy_split_literal root_5092189 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0360.root_5092190 small_5092189_right_root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0360.cover_5092190
  · exact small_5092189_right_covered
#print axioms cover_5092189

def root_5092184 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5092184_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5092184_right_fuel : Nat := 1
def small_5092184_right_count : Nat := 1
def small_5092184_right_encoded : String := "00000002"
theorem small_5092184_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5092184_right_root small_5092184_right_fuel small_5092184_right_count small_5092184_right_encoded = true := by
  decide +kernel
theorem small_5092184_right_covered : CoveredBy scale carrier boxes small_5092184_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5092184_right_root small_5092184_right_fuel small_5092184_right_count small_5092184_right_encoded small_5092184_right_checked

theorem cover_5092184 : CoveredBy scale carrier boxes root_5092184 := by
  apply coveredBy_split_literal root_5092184 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0360.root_5092189 small_5092184_right_root coord2 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0360.cover_5092189
  · exact small_5092184_right_covered
#print axioms cover_5092184

def root_5076660 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5076660 : CoveredBy scale carrier boxes root_5076660 := by
  apply coveredBy_split_literal root_5076660 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0359.root_5076661 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0360.root_5092184 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0359.cover_5076661
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0360.cover_5092184
#print axioms cover_5076660

def root_5076654 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5076654_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5076654_left_fuel : Nat := 1
def small_5076654_left_count : Nat := 1
def small_5076654_left_encoded : String := "00000001"
theorem small_5076654_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5076654_left_root small_5076654_left_fuel small_5076654_left_count small_5076654_left_encoded = true := by
  decide +kernel
theorem small_5076654_left_covered : CoveredBy scale carrier boxes small_5076654_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5076654_left_root small_5076654_left_fuel small_5076654_left_count small_5076654_left_encoded small_5076654_left_checked

theorem cover_5076654 : CoveredBy scale carrier boxes root_5076654 := by
  apply coveredBy_split_literal root_5076654 small_5076654_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0360.root_5076660 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5076654_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0360.cover_5076660
#print axioms cover_5076654

def root_5097549 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5097549_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5097549_left_fuel : Nat := 26
def small_5097549_left_count : Nat := 289
def small_5097549_left_encoded : String := "12073CFE00000004050000F8135D80F900000001045489F71386AD000CFD9BFB0F350CFA00000002045489FD1386ACFC000000030CFD9BFF000000050F34D0FE0C9A86FA0F878CFB00000002000000080F8750FB000000050000000200000004138670FC0CFD9BFF0F350CFE000000040C9A86FA0F878CFB000000020C9A86FE0F878CFF00000004078000F800000005000000090F8750FF00000005000000040F8750FB00000005000000020F34D0FE0C9A86FA0F878CFB00000002078000F8128A7CF900000001067ECE770000000912EA59000000000000000009000000090F8750FB078000F8128A7CF900000001067ECE770000000512EA590000000000022A457D0000000500000009000000090000000200000004000000030F34D0FA045489FD00000008138670FC0CFD9BFF0000000A0F34D0FE078000F8128A7CF90000000100000008000000080000000400000003000000020000000013867100000000000CFD9BFB0F350CFA00000002045489FD1386ACFC000000030CFD9BFF0F350CFE000000040C9A86FA0F878CFB000000020000000A0F8750FB00000005000000020F34D0FE0C9A86FA0F878CFB00000002078000F8128A7CF900000001022A457713E20100067ECE7D000000050000000A000000000000000A0000000A0F8750FB078000F8128A7CF900000001022A45770000000513E1C50000000000067ECE7D0000000512EA58FC0AD3577F0000000510D100FE0B4D43FA0000000A108010FB08C000F8000000050000000A000000020000000400000003128A40F9022A4577000000050000000A000000010000000200000004138670FC0CFD9BFF0F350CFE000000040C9A86FA0F878CFB000000020000000A0F8750FB0C9A86FE0F878CFF00000004078000F8128A7CF900000001022A457713E20100022A457D0000000500000007000000000000000A0000000A0F8750FF0000000A00000004000000020F34D0FE0C9A86FA0F878CFB00000002078000F8128A7CF900000001022A457713E20100022A457D0000000A00000009000000000000000A000000090F8750FB078000F8128A7CF900000001022A457713E20100022A457D13E200FC000000030AD3577F0000000510D100FE0B4D43FA00000009108010FB000000090000000200000004000000090000000013E1C50000000000022A457D13E200FC000000030AD3577F0000000A10D100FE0B4D43FA00000009108010FB08C000F811FC24F9000000010000000A00000009000000020000000413E1C4FC0AD3577F0000000910D100FE000000090000000400000003128A40F900000009000000010000000200000004000000030F34D0FA045489FD0000000A0000000A00000002135D44F9045489F71386AD000CFD9BFB0F350CFA00000002045489FD00000005138670FC0CFD9BFF000000050F34D0FE0000000900000004000000030F34D0FA0000000A000000020000000013867100000000000CFD9BFB0F350CFA00000002045489FD1386ACFC000000030CFD9BFF000000050F34D0FE0000000A00000004138670FC0CFD9BFF0000000A0F34D0FE0000000900000004000000030000000A00000001"
theorem small_5097549_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5097549_left_root small_5097549_left_fuel small_5097549_left_count small_5097549_left_encoded = true := by
  decide +kernel
theorem small_5097549_left_covered : CoveredBy scale carrier boxes small_5097549_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5097549_left_root small_5097549_left_fuel small_5097549_left_count small_5097549_left_encoded small_5097549_left_checked

theorem cover_5097549 : CoveredBy scale carrier boxes root_5097549 := by
  apply coveredBy_split_literal root_5097549 small_5097549_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1906.root coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_5097549_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1906.covered
#print axioms cover_5097549

def root_5097544 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5097544_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5097544_right_fuel : Nat := 1
def small_5097544_right_count : Nat := 1
def small_5097544_right_encoded : String := "00000003"
theorem small_5097544_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5097544_right_root small_5097544_right_fuel small_5097544_right_count small_5097544_right_encoded = true := by
  decide +kernel
theorem small_5097544_right_covered : CoveredBy scale carrier boxes small_5097544_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5097544_right_root small_5097544_right_fuel small_5097544_right_count small_5097544_right_encoded small_5097544_right_checked

theorem cover_5097544 : CoveredBy scale carrier boxes root_5097544 := by
  apply coveredBy_split_literal root_5097544 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0360.root_5097549 small_5097544_right_root coord3 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0360.cover_5097549
  · exact small_5097544_right_covered
#print axioms cover_5097544

def root_5097192 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5097192_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5097192_left_fuel : Nat := 23
def small_5097192_left_count : Nat := 167
def small_5097192_left_encoded : String := "12073CFC0000000308A912FF12073CFE00000004050000F8135D80F900000001045489F71386AD000CFD9BFB000000050F34D0FA00000008000000020000000013867100000000000CFD9BFB0F350CFA000000020CFD9BFD000000050F34D0FC0CFD9BFF000000050F34D0FE0C9A86FA0F878CFB00000002078000F800000006000000080F8750FB000000050000000200000004000000030F34D0FA0CFD9BFD000000060000000A00000002135D44F9045489F70000000513867100000000000CFD9BFB000000050F34D0FA000000080000000200000001120700FE050000F8135D80F900000001045489F71386AD000CFD9BFB0F350CFA000000020CFD9BFD000000080F34D0FC045489FF0000000800000008000000030F34D0FA00000008000000020000000013867100000000000CFD9BFB0F350CFA000000020CFD9BFD0F350CFC00000003045489FF1386ACFE000000040C9A86FA000000080F8750FB0000000500000002000000080F34D0FC045489FF1386ACFE000000040C9A86FA0F878CFB00000002000000080F8750FB078000F8128A7CF900000001022A45770000000513E1C500000000000AD3577D0000000510D100FC067ECE7F000000050000000800000003128A40F9022A45770000000513E1C50000000000000000080000000100000002138670FE0C9A86FA000000080F8750FB078000F8128A7CF900000001022A45770000000813E1C500000000000AD3577D0000000810D100FC022A457F000000080000000800000003000000080000000200000004000000030F34D0FA0CFD9BFD000000080F34D0FC000000080000000300000002135D44F9045489F70000000813867100000000000CFD9BFB0F350CFA000000020CFD9BFD000000080F34D0FC0000000800000003000000080000000100000004"
theorem small_5097192_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5097192_left_root small_5097192_left_fuel small_5097192_left_count small_5097192_left_encoded = true := by
  decide +kernel
theorem small_5097192_left_covered : CoveredBy scale carrier boxes small_5097192_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5097192_left_root small_5097192_left_fuel small_5097192_left_count small_5097192_left_encoded small_5097192_left_checked

theorem cover_5097192 : CoveredBy scale carrier boxes root_5097192 := by
  apply coveredBy_split_literal root_5097192 small_5097192_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0360.root_5097544 coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_5097192_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0360.cover_5097544
#print axioms cover_5097192

def root_5097186 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5097186_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5097186_left_fuel : Nat := 1
def small_5097186_left_count : Nat := 1
def small_5097186_left_encoded : String := "00000002"
theorem small_5097186_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5097186_left_root small_5097186_left_fuel small_5097186_left_count small_5097186_left_encoded = true := by
  decide +kernel
theorem small_5097186_left_covered : CoveredBy scale carrier boxes small_5097186_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5097186_left_root small_5097186_left_fuel small_5097186_left_count small_5097186_left_encoded small_5097186_left_checked

theorem cover_5097186 : CoveredBy scale carrier boxes root_5097186 := by
  apply coveredBy_split_literal root_5097186 small_5097186_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0360.root_5097192 coord2 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_5097186_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0360.cover_5097192
#print axioms cover_5097186

def root_5097185 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5097185_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5097185_right_fuel : Nat := 13
def small_5097185_right_count : Nat := 41
def small_5097185_right_encoded : String := "120700FA08A912FD12073CFC0000000308A912FF12073CFE000000040000000800000008120700FC08A912FF12073CFE00000004050000F8135D80F900000001045489F71386AD0000000008000000000000000A0000000A120700FE050000F8135D80F900000001045489F7000000081386710000000000045489FB1386ACFA00000002045489FD000000080000000A0000000800000008000000040000000300000002"
theorem small_5097185_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5097185_right_root small_5097185_right_fuel small_5097185_right_count small_5097185_right_encoded = true := by
  decide +kernel
theorem small_5097185_right_covered : CoveredBy scale carrier boxes small_5097185_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5097185_right_root small_5097185_right_fuel small_5097185_right_count small_5097185_right_encoded small_5097185_right_checked

theorem cover_5097185 : CoveredBy scale carrier boxes root_5097185 := by
  apply coveredBy_split_literal root_5097185 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0360.root_5097186 small_5097185_right_root coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0360.cover_5097186
  · exact small_5097185_right_covered
#print axioms cover_5097185

def root_5097179 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5097179_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5097179_left_fuel : Nat := 1
def small_5097179_left_count : Nat := 1
def small_5097179_left_encoded : String := "00000000"
theorem small_5097179_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5097179_left_root small_5097179_left_fuel small_5097179_left_count small_5097179_left_encoded = true := by
  decide +kernel
theorem small_5097179_left_covered : CoveredBy scale carrier boxes small_5097179_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5097179_left_root small_5097179_left_fuel small_5097179_left_count small_5097179_left_encoded small_5097179_left_checked

theorem cover_5097179 : CoveredBy scale carrier boxes root_5097179 := by
  apply coveredBy_split_literal root_5097179 small_5097179_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0360.root_5097185 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_5097179_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0360.cover_5097185
#print axioms cover_5097179

def root_5096779 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5096779_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5096779_left_fuel : Nat := 24
def small_5096779_left_count : Nat := 191
def small_5096779_left_encoded : String := "12073D0008A912FB12073CFA0000000208A912FD12073CFC0000000308A912FF00000005120700FE050000F8135D80F9000000010CFD9BF7000000080F34D10000000000000000080000000800000004120700FC08A912FF12073CFE00000004050000F8135D80F9000000010CFD9BF70F350D000CFD9BFB000000050F34D0FA0000000500000002000000000F34D100000000000CFD9BFB0F350CFA00000002045489FD00000005138670FC0CFD9BFF000000050F34D0FE0000000500000004000000030F34D0FA045489FD00000008138670FC0CFD9BFF00000005000000080000000300000002135D44F90CFD9BF7000000050F34D100000000000CFD9BFB000000050F34D0FA000000080000000200000001120700FE050000F8135D80F9000000010CFD9BF70F350D000CFD9BFB0F350CFA00000002045489FD00000005138670FC045489FF00000005000000080000000300000008000000000F34D100000000000CFD9BFB0F350CFA00000002045489FD1386ACFC00000003045489FF0000000500000008138670FC045489FF1386ACFE000000040C9A86FA000000090F8750FB078000F8128A7CF9000000010AD357770000000510D1010000000000000000090000000900000002138670FE0C9A86FA000000080F8750FB078000F8128A7CF9000000010AD357770000000810D101000000000000000008000000080000000200000004000000030F34D0FA0000000800000002135D44F90CFD9BF7000000080F34D100000000000CFD9BFB0F350CFA00000002045489FD000000080000000900000008000000010000000400000003120700FA08A912FD12073CFC0000000308A912FF12073CFE00000004050000F8000000080000000800000008120700FC08A912FF12073CFE00000004050000F8135D80F9000000010CFD9BF70F350D00045489FB00000008138670FA0000000800000002000000000F34D1000000000000000008135D44F90CFD9BF70F350D00045489FB000000080000000A000000000000000A0000000100000008000000030000000200000000"
theorem small_5096779_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5096779_left_root small_5096779_left_fuel small_5096779_left_count small_5096779_left_encoded = true := by
  decide +kernel
theorem small_5096779_left_covered : CoveredBy scale carrier boxes small_5096779_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5096779_left_root small_5096779_left_fuel small_5096779_left_count small_5096779_left_encoded small_5096779_left_checked

theorem cover_5096779 : CoveredBy scale carrier boxes root_5096779 := by
  apply coveredBy_split_literal root_5096779 small_5096779_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0360.root_5097179 coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_5096779_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0360.cover_5097179
#print axioms cover_5096779

def root_5096773 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5096773_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5096773_left_fuel : Nat := 1
def small_5096773_left_count : Nat := 1
def small_5096773_left_encoded : String := "00000004"
theorem small_5096773_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5096773_left_root small_5096773_left_fuel small_5096773_left_count small_5096773_left_encoded = true := by
  decide +kernel
theorem small_5096773_left_covered : CoveredBy scale carrier boxes small_5096773_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5096773_left_root small_5096773_left_fuel small_5096773_left_count small_5096773_left_encoded small_5096773_left_checked

theorem cover_5096773 : CoveredBy scale carrier boxes root_5096773 := by
  apply coveredBy_split_literal root_5096773 small_5096773_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0360.root_5096779 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5096773_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0360.cover_5096779
#print axioms cover_5096773

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0360
