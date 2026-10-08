import TaoBundleAssembly0536
import TaoBundleAssembly0537
import TaoBundleAssembly0538
import TaoBundleChunkBatch0738
import TaoBundleChunkBatch0739
import TaoBundleChunkBatch0740
import TaoBundleChunkBatch0741
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0539
def root_7842952 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7842952_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7842952_right_fuel : Nat := 26
def small_7842952_right_count : Nat := 337
def small_7842952_right_encoded : String := "12073CFC00000003050000F8135D80F900000001050000FA135D80FB0000000205000108135D44FF04548A0113867100000000000CFD9C070F34D0FC078000F8128A7CF900000001078000FA128A7CFB00000002028001080000000813D7ECFF00000004022A458113E1C500000000000AD3578710D100FC0000000800000003000000050000000500000008128A40F9078000FA128A7CFB00000002028001080000000813D7ECFF00000004022A458100000006000000080000000600000001000000030F350CFC000000030C9A86FC00000008000000081386AD000CFD9C070F34D0FC0000000800000003000000050000000000000004135D80FF0000000404548A0113867100000000000CFD9C070F34D0FC078000F8128A7CF900000001078000FA128A7CFB0000000207800108128A40FF022A458113E1C500000000000AD3578710D100FC08C000F811FC24F90000000108C000FA11FC24FB00000002000000050000000611FBE8F9000000060000000100000003000000050000000500000004128A7CFF00000004022A458113E1C500000000000AD3578710D100FC08C000F811FC24F90000000108C000FA000000050000000600000006000000030000000500000005128A40FB07800108128A40FF022A4581000000060000000800000004128A7CFF00000004022A45810000000613E201000AD3578710D100FC0000000600000003000000050000000000000002128A40F9078000FA128A7CFB0000000207800108128A40FF022A45810000000613E201000AD3578710D100FC0000000600000003000000050000000000000004128A7CFF00000004022A45810000000613E201000AD3578710D100FC00000006000000030000000500000000128A40FB000000060000000200000001000000030F350CFC000000030C9A86FC0F878D07078000F8128A7CF900000001078000FA128A7CFB000000020000000500000008128A40F90000000600000001000000030F87510700000003078000F8128A7CF900000001078000FA0000000500000006000000061386AD000CFD9C070F34D0FC078000F8128A7CF900000001078000FA0000000500000008128A40F9078000FA128A7CFB000000020780010800000005128A7CFF00000004000000050000000800000001000000030F350CFC000000030C9A86FC000000050F875107000000030000000500000000135D44FB05000108135D44FF0000000800000004135D80FF0000000404548A0113867100000000000CFD9C070F34D0FC078000F8128A7CF900000001000000060000000600000003000000061386AD00000000080000000000000002135D44F9050000FA135D80FB0000000205000108135D44FF04548A0113867100000000000CFD9C070F34D0FC0000000600000003000000061386AD000CFD9C070000000A000000080000000000000004135D80FF0000000404548A0113867100000000000CFD9C070F34D0FC028000F813D7ECF900000001078000FA128A7CFB0000000200000006000000060000000600000003000000061386AD000CFD9C070F34D0FC028000F813D7ECF900000001078000FA128A7CFB0000000207800108128A40FF0000000800000004128A7CFF00000004000000070000000813D7B0F9078000FA128A7CFB000000020000000A0000000600000001000000030F350CFC000000030C9A86FC0F878D07028000F80000000800000006000000030F875107000000030000000600000000135D44FB05000108135D44FF04548A01000000060000000800000004135D80FF0000000404548A01000000061386AD000CFD9C070F34D0FC000000060000000300000006000000000000000200000001"
theorem small_7842952_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7842952_right_root small_7842952_right_fuel small_7842952_right_count small_7842952_right_encoded = true := by
  decide +kernel
theorem small_7842952_right_covered : CoveredBy scale carrier boxes small_7842952_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7842952_right_root small_7842952_right_fuel small_7842952_right_count small_7842952_right_encoded small_7842952_right_checked

theorem cover_7842952 : CoveredBy scale carrier boxes root_7842952 := by
  apply coveredBy_split_literal root_7842952 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0538.root_7842953 small_7842952_right_root coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0538.cover_7842953
  · exact small_7842952_right_covered
#print axioms cover_7842952

def root_7842946 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7842946_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7842946_left_fuel : Nat := 1
def small_7842946_left_count : Nat := 1
def small_7842946_left_encoded : String := "00000000"
theorem small_7842946_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7842946_left_root small_7842946_left_fuel small_7842946_left_count small_7842946_left_encoded = true := by
  decide +kernel
theorem small_7842946_left_covered : CoveredBy scale carrier boxes small_7842946_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7842946_left_root small_7842946_left_fuel small_7842946_left_count small_7842946_left_encoded small_7842946_left_checked

theorem cover_7842946 : CoveredBy scale carrier boxes root_7842946 := by
  apply coveredBy_split_literal root_7842946 small_7842946_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0539.root_7842952 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_7842946_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0539.cover_7842952
#print axioms cover_7842946

def root_7842945 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7842945_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7842945_right_fuel : Nat := 20
def small_7842945_right_count : Nat := 113
def small_7842945_right_encoded : String := "12073D0008A91307120700FC050000F8135D80F900000001050000FA135D80FB0000000205000108135D44FF0000000800000004135D80FF000000040CFD9C010F34D1000000000004548A07138670FC078000F8128A7CF900000001078000FA128A7CFB0000000207800108128A40FF0000000800000004128A7CFF000000040000000500000008128A40F9078000FA0000000A0000000800000001000000031386ACFC00000003078000F800000005128A40F900000008000000010F350D00000000050000000000000008135D44F9050000FA135D80FB00000002050001080000000A135D80FF000000040CFD9C010F34D1000000000004548A070000000A1386ACFC000000030000000A0000000A00000008000000010000000312073CFC00000003050000F8135D80F900000001050000FA135D80FB000000020500010800000005135D80FF000000040CFD9C010F34D100000000000CFD9C070F34D0FC0000000500000003000000050000000500000008135D44F9050000FA135D80FB000000020500010800000008135D80FF000000040CFD9C010F34D100000000000CFD9C070F34D0FC00000008000000030000000800000008000000080000000100000000"
theorem small_7842945_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7842945_right_root small_7842945_right_fuel small_7842945_right_count small_7842945_right_encoded = true := by
  decide +kernel
theorem small_7842945_right_covered : CoveredBy scale carrier boxes small_7842945_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7842945_right_root small_7842945_right_fuel small_7842945_right_count small_7842945_right_encoded small_7842945_right_checked

theorem cover_7842945 : CoveredBy scale carrier boxes root_7842945 := by
  apply coveredBy_split_literal root_7842945 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0539.root_7842946 small_7842945_right_root coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0539.cover_7842946
  · exact small_7842945_right_covered
#print axioms cover_7842945

def root_7842940 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7842940_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7842940_right_fuel : Nat := 1
def small_7842940_right_count : Nat := 1
def small_7842940_right_encoded : String := "00000004"
theorem small_7842940_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7842940_right_root small_7842940_right_fuel small_7842940_right_count small_7842940_right_encoded = true := by
  decide +kernel
theorem small_7842940_right_covered : CoveredBy scale carrier boxes small_7842940_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7842940_right_root small_7842940_right_fuel small_7842940_right_count small_7842940_right_encoded small_7842940_right_checked

theorem cover_7842940 : CoveredBy scale carrier boxes root_7842940 := by
  apply coveredBy_split_literal root_7842940 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0539.root_7842945 small_7842940_right_root coord4 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0539.cover_7842945
  · exact small_7842940_right_covered
#print axioms cover_7842940

def root_7842939 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7842939 : CoveredBy scale carrier boxes root_7842939 := by
  apply coveredBy_split_literal root_7842939 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0539.root_7842940 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2952.root coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0539.cover_7842940
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2952.covered
#print axioms cover_7842939

def root_7842934 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7842934_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7842934_right_fuel : Nat := 1
def small_7842934_right_count : Nat := 1
def small_7842934_right_encoded : String := "00000003"
theorem small_7842934_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7842934_right_root small_7842934_right_fuel small_7842934_right_count small_7842934_right_encoded = true := by
  decide +kernel
theorem small_7842934_right_covered : CoveredBy scale carrier boxes small_7842934_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7842934_right_root small_7842934_right_fuel small_7842934_right_count small_7842934_right_encoded small_7842934_right_checked

theorem cover_7842934 : CoveredBy scale carrier boxes root_7842934 := by
  apply coveredBy_split_literal root_7842934 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0539.root_7842939 small_7842934_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0539.cover_7842939
  · exact small_7842934_right_covered
#print axioms cover_7842934

def root_7842933 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7842933 : CoveredBy scale carrier boxes root_7842933 := by
  apply coveredBy_split_literal root_7842933 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0539.root_7842934 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2953.root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0539.cover_7842934
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2953.covered
#print axioms cover_7842933

def root_7842928 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7842928_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7842928_right_fuel : Nat := 1
def small_7842928_right_count : Nat := 1
def small_7842928_right_encoded : String := "00000002"
theorem small_7842928_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7842928_right_root small_7842928_right_fuel small_7842928_right_count small_7842928_right_encoded = true := by
  decide +kernel
theorem small_7842928_right_covered : CoveredBy scale carrier boxes small_7842928_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7842928_right_root small_7842928_right_fuel small_7842928_right_count small_7842928_right_encoded small_7842928_right_checked

theorem cover_7842928 : CoveredBy scale carrier boxes root_7842928 := by
  apply coveredBy_split_literal root_7842928 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0539.root_7842933 small_7842928_right_root coord2 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0539.cover_7842933
  · exact small_7842928_right_covered
#print axioms cover_7842928

def root_7839118 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7839118 : CoveredBy scale carrier boxes root_7839118 := by
  apply coveredBy_split_literal root_7839118 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0537.root_7839119 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0539.root_7842928 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0537.cover_7839119
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0539.cover_7842928
#print axioms cover_7839118

def root_7839113 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7839113_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7839113_right_fuel : Nat := 1
def small_7839113_right_count : Nat := 1
def small_7839113_right_encoded : String := "00000001"
theorem small_7839113_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7839113_right_root small_7839113_right_fuel small_7839113_right_count small_7839113_right_encoded = true := by
  decide +kernel
theorem small_7839113_right_covered : CoveredBy scale carrier boxes small_7839113_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7839113_right_root small_7839113_right_fuel small_7839113_right_count small_7839113_right_encoded small_7839113_right_checked

theorem cover_7839113 : CoveredBy scale carrier boxes root_7839113 := by
  apply coveredBy_split_literal root_7839113 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0539.root_7839118 small_7839113_right_root coord1 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0539.cover_7839118
  · exact small_7839113_right_covered
#print axioms cover_7839113

def root_7826927 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7826927 : CoveredBy scale carrier boxes root_7826927 := by
  apply coveredBy_split_literal root_7826927 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0537.root_7826928 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0539.root_7839113 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0537.cover_7826928
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0539.cover_7839113
#print axioms cover_7826927

def root_7826922 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7826922_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7826922_right_fuel : Nat := 1
def small_7826922_right_count : Nat := 1
def small_7826922_right_encoded : String := "00000000"
theorem small_7826922_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7826922_right_root small_7826922_right_fuel small_7826922_right_count small_7826922_right_encoded = true := by
  decide +kernel
theorem small_7826922_right_covered : CoveredBy scale carrier boxes small_7826922_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7826922_right_root small_7826922_right_fuel small_7826922_right_count small_7826922_right_encoded small_7826922_right_checked

theorem cover_7826922 : CoveredBy scale carrier boxes root_7826922 := by
  apply coveredBy_split_literal root_7826922 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0539.root_7826927 small_7826922_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0539.cover_7826927
  · exact small_7826922_right_covered
#print axioms cover_7826922

def root_7826568 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7826568_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7826568_left_fuel : Nat := 19
def small_7826568_left_count : Nat := 165
def small_7826568_left_encoded : String := "1151E901000000000A0000F8115224F9000000010A0000FA115224FB000000020A0000FC115225070A0001081151E8FF08A912F912073CF80000000108A912FB12073CFA0000000208A91307120700FC05000100135D45010000000005000108000000080000000500000005000000030000000500000005120700F808A912FB12073CFA000000020000000500000005000000010000000400000005000000031151E907000000030A0001081151E8FF0000000500000004115224FF0000000408A912F900000005120700F800000005000000011151E8FB0A0000FC115225070A0001081151E8FF08A912F912073CF800000001000000050000000500000004115224FF0000000400000005000000031151E9070000000300000005000000021151E8F90A0000FA115224FB000000020A0000FC115225070A0001081151E8FF08A912FB12073CFA00000002000000050000000500000004115224FF0000000400000005000000031151E90700000003000000051151E8FB0A0000FC115225070A0001081151E8FF0000000800000004115224FF0000000408A91307120700FC08A912FF12073D080500010000000005135D8101050000F800000005135D44F9050000FA0000000500000008000000010000000000000004000000050000000312073CFC0000000308A912FF12073D080500010000000005135D8101050000F800000005135D44F9050000FA000000050000000800000001000000000000000400000005000000031151E907000000030A00010800000005115224FF0000000408A912FF12073D080500010000000005135D8101050000F800000005135D44F90000000800000001000000000000000412070108000000040500010000000005135D810100000009000000000000000200000001"
theorem small_7826568_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7826568_left_root small_7826568_left_fuel small_7826568_left_count small_7826568_left_encoded = true := by
  decide +kernel
theorem small_7826568_left_covered : CoveredBy scale carrier boxes small_7826568_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7826568_left_root small_7826568_left_fuel small_7826568_left_count small_7826568_left_encoded small_7826568_left_checked

theorem cover_7826568 : CoveredBy scale carrier boxes root_7826568 := by
  apply coveredBy_split_literal root_7826568 small_7826568_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0539.root_7826922 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_7826568_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0539.cover_7826922
#print axioms cover_7826568

def root_7826567 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7826567 : CoveredBy scale carrier boxes root_7826567 := by
  apply coveredBy_split_literal root_7826567 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0539.root_7826568 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2954.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0539.cover_7826568
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2954.covered
#print axioms cover_7826567

def root_7812929 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7812929 : CoveredBy scale carrier boxes root_7812929 := by
  apply coveredBy_split_literal root_7812929 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0537.root_7812930 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0539.root_7826567 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0537.cover_7812930
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0539.cover_7826567
#print axioms cover_7812929

def root_7759103 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7759103 : CoveredBy scale carrier boxes root_7759103 := by
  apply coveredBy_split_literal root_7759103 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0536.root_7759104 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0539.root_7812929 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0536.cover_7759104
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0539.cover_7812929
#print axioms cover_7759103

def root_7865523 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7865523 : CoveredBy scale carrier boxes root_7865523 := by
  apply coveredBy_split_literal root_7865523 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2957.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2958.root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2957.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2958.covered
#print axioms cover_7865523

def root_7865518 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7865518_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7865518_right_fuel : Nat := 1
def small_7865518_right_count : Nat := 1
def small_7865518_right_encoded : String := "00000001"
theorem small_7865518_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7865518_right_root small_7865518_right_fuel small_7865518_right_count small_7865518_right_encoded = true := by
  decide +kernel
theorem small_7865518_right_covered : CoveredBy scale carrier boxes small_7865518_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7865518_right_root small_7865518_right_fuel small_7865518_right_count small_7865518_right_encoded small_7865518_right_checked

theorem cover_7865518 : CoveredBy scale carrier boxes root_7865518 := by
  apply coveredBy_split_literal root_7865518 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0539.root_7865523 small_7865518_right_root coord1 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0539.cover_7865523
  · exact small_7865518_right_covered
#print axioms cover_7865518

def root_7863452 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7863452 : CoveredBy scale carrier boxes root_7863452 := by
  apply coveredBy_split_literal root_7863452 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2956.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0539.root_7865518 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2956.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0539.cover_7865518
#print axioms cover_7863452

def root_7863447 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7863447_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7863447_right_fuel : Nat := 1
def small_7863447_right_count : Nat := 1
def small_7863447_right_encoded : String := "00000000"
theorem small_7863447_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7863447_right_root small_7863447_right_fuel small_7863447_right_count small_7863447_right_encoded = true := by
  decide +kernel
theorem small_7863447_right_covered : CoveredBy scale carrier boxes small_7863447_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7863447_right_root small_7863447_right_fuel small_7863447_right_count small_7863447_right_encoded small_7863447_right_checked

theorem cover_7863447 : CoveredBy scale carrier boxes root_7863447 := by
  apply coveredBy_split_literal root_7863447 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0539.root_7863452 small_7863447_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0539.cover_7863452
  · exact small_7863447_right_covered
#print axioms cover_7863447

def root_7862139 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7862139 : CoveredBy scale carrier boxes root_7862139 := by
  apply coveredBy_split_literal root_7862139 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2955.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0539.root_7863447 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2955.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0539.cover_7863447
#print axioms cover_7862139

def root_7873957 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7873957_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7873957_right_fuel : Nat := 33
def small_7873957_right_count : Nat := 383
def small_7873957_right_encoded : String := "115224FD000000030A0000FE1152250908A91301120701000000000008A912F912073CF80000000108A912FD12073D0608A91309120700FE050000FA135D80FB0000000204548A0113867100000000000000000800000008135D44FB00000008000000020000000412073CFE00000004050000FA135D80FB0000000204548A0113867100000000000CFD9BF90F350CF8000000010CFD9BFD0F350D060CFD9C090F34D0FE0000000800000004000000080000000300000008000000081386AD000CFD9BF90F350CF8000000010CFD9BFD0F350D060CFD9C090F34D0FE00000005000000040000000500000003000000080000000800000000135D44FB04548A01138671000000000000000008000000080000000200000003120701060000000300000008120700F8000000080000000112073D0008A912F912073CF80000000108A912FD12073D0608A91309120700FE050000FA135D80FB000000020CFD9C010F34D100000000000000000800000005135D44FB0CFD9C010F34D100000000000000000800000008000000020000000412073CFE00000004050000FA00000005135D44FB0CFD9C010F34D1000000000000000008000000050000000200000003120701060000000300000008120700F8000000050000000100000000000000041151E9090000000408A91301120701000000000008A912F912073CF80000000108A912FD12073D06050000FA135D80FB00000002050000FE135D810904548A0113867100000000000CFD9BF90F350CF8000000010CFD9BFD0F350D060C9A86F8000000080F8750F90C9A87060F8750FD078000FA00000005128A40FB078000FE00000005128A41090000000400000005000000020000000300000008000000010000000300000008000000081386AD000CFD9BF90F350CF8000000010CFD9BFD0F350D06000000050000000300000005000000050000000000000004135D45090000000404548A0113867100000000000CFD9BF90F350CF8000000010CFD9BFD0F350D060C9A86F80F878CF9000000010C9A870600000005000000080F8750F90C9A87060F8750FD078000FA128A7CFB00000002000000050000000A000000030F878CFD00000003078000FA128A7CFB00000002028000FE0000000513D7B10900000004022A458113E1C500000000000B4D43F800000005108010F90DE7CA0600000005000000080000000100000005128A40FB028000FE0000000813D7B10900000004022A458113E1C5000000000000000008000000080000000200000001000000030F34D10600000003000000080F34D0F800000005000000011386AD000CFD9BF90F350CF8000000010CFD9BFD0F350D060C9A86F8000000050F8750F90C9A8706000000050F878CFD000000030000000500000001000000030F34D10600000003000000080F34D0F8000000050000000100000000135D44FB050000FE135D810904548A011386710000000000000000080000000800000004135D45090000000404548A0113867100000000000CFD9BF90F350CF8000000010CFD9BFD0F350D060C9A86F80000000A0F8750F90000000A00000001000000030F34D10600000003000000080F34D0F800000008000000011386AD000CFD9BF90F350CF8000000010CFD9BFD0F350D060C9A86F8000000080F8750F90C9A8706000000090000000800000001000000030F34D10600000003000000080F34D0F80000000800000001000000000000000200000003120701060000000300000008120700F8000000080000000112073D0008A912F912073CF80000000108A912FD12073D06050000FA135D80FB00000002050000FE00000005135D45090000000400000005135D44FB050000FE135D81090CFD9C010F34D10000000000000000080000000500000004135D4509000000040CFD9C010F34D100000000000CFD9BF90F350CF8000000010CFD9BFD0F350D060C9A86F8000000050F8750F90C9A8706000000050F878CFD000000030000000800000001000000030F34D10600000003000000080F34D0F800000005000000010F350D0000000005000000000000000200000003120701060000000300000008120700F8000000050000000100000000"
theorem small_7873957_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7873957_right_root small_7873957_right_fuel small_7873957_right_count small_7873957_right_encoded = true := by
  decide +kernel
theorem small_7873957_right_covered : CoveredBy scale carrier boxes small_7873957_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7873957_right_root small_7873957_right_fuel small_7873957_right_count small_7873957_right_encoded small_7873957_right_checked

theorem cover_7873957 : CoveredBy scale carrier boxes root_7873957 := by
  apply coveredBy_split_literal root_7873957 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2960.root small_7873957_right_root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2960.covered
  · exact small_7873957_right_covered
#print axioms cover_7873957

def root_7873952 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7873952_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7873952_right_fuel : Nat := 1
def small_7873952_right_count : Nat := 1
def small_7873952_right_encoded : String := "00000002"
theorem small_7873952_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7873952_right_root small_7873952_right_fuel small_7873952_right_count small_7873952_right_encoded = true := by
  decide +kernel
theorem small_7873952_right_covered : CoveredBy scale carrier boxes small_7873952_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7873952_right_root small_7873952_right_fuel small_7873952_right_count small_7873952_right_encoded small_7873952_right_checked

theorem cover_7873952 : CoveredBy scale carrier boxes root_7873952 := by
  apply coveredBy_split_literal root_7873952 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0539.root_7873957 small_7873952_right_root coord2 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0539.cover_7873957
  · exact small_7873952_right_covered
#print axioms cover_7873952

def root_7871276 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7871276 : CoveredBy scale carrier boxes root_7871276 := by
  apply coveredBy_split_literal root_7871276 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2959.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0539.root_7873952 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2959.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0539.cover_7873952
#print axioms cover_7871276

def root_7871270 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7871270_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7871270_left_fuel : Nat := 1
def small_7871270_left_count : Nat := 1
def small_7871270_left_encoded : String := "00000001"
theorem small_7871270_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7871270_left_root small_7871270_left_fuel small_7871270_left_count small_7871270_left_encoded = true := by
  decide +kernel
theorem small_7871270_left_covered : CoveredBy scale carrier boxes small_7871270_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7871270_left_root small_7871270_left_fuel small_7871270_left_count small_7871270_left_encoded small_7871270_left_checked

theorem cover_7871270 : CoveredBy scale carrier boxes root_7871270 := by
  apply coveredBy_split_literal root_7871270 small_7871270_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0539.root_7871276 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_7871270_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0539.cover_7871276
#print axioms cover_7871270

def root_7879668 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7879668 : CoveredBy scale carrier boxes root_7879668 := by
  apply coveredBy_split_literal root_7879668 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2962.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2963.root coord4 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2962.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2963.covered
#print axioms cover_7879668

def root_7879662 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7879662_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7879662_left_fuel : Nat := 1
def small_7879662_left_count : Nat := 1
def small_7879662_left_encoded : String := "00000002"
theorem small_7879662_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7879662_left_root small_7879662_left_fuel small_7879662_left_count small_7879662_left_encoded = true := by
  decide +kernel
theorem small_7879662_left_covered : CoveredBy scale carrier boxes small_7879662_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7879662_left_root small_7879662_left_fuel small_7879662_left_count small_7879662_left_encoded small_7879662_left_checked

theorem cover_7879662 : CoveredBy scale carrier boxes root_7879662 := by
  apply coveredBy_split_literal root_7879662 small_7879662_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0539.root_7879668 coord2 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_7879662_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0539.cover_7879668
#print axioms cover_7879662

def root_7879661 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7879661_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7879661_right_fuel : Nat := 8
def small_7879661_right_count : Nat := 19
def small_7879661_right_encoded : String := "0F34D0FA04548A09138670FE078000F8128A7CF90000000107800106128A40FD00000006000000030000000A128A40F907800106000000080000000900000001000000040000000500000002"
theorem small_7879661_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7879661_right_root small_7879661_right_fuel small_7879661_right_count small_7879661_right_encoded = true := by
  decide +kernel
theorem small_7879661_right_covered : CoveredBy scale carrier boxes small_7879661_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7879661_right_root small_7879661_right_fuel small_7879661_right_count small_7879661_right_encoded small_7879661_right_checked

theorem cover_7879661 : CoveredBy scale carrier boxes root_7879661 := by
  apply coveredBy_split_literal root_7879661 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0539.root_7879662 small_7879661_right_root coord2 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0539.cover_7879662
  · exact small_7879661_right_covered
#print axioms cover_7879661

def root_7879655 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7879655_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7879655_left_fuel : Nat := 1
def small_7879655_left_count : Nat := 1
def small_7879655_left_encoded : String := "00000000"
theorem small_7879655_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7879655_left_root small_7879655_left_fuel small_7879655_left_count small_7879655_left_encoded = true := by
  decide +kernel
theorem small_7879655_left_covered : CoveredBy scale carrier boxes small_7879655_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7879655_left_root small_7879655_left_fuel small_7879655_left_count small_7879655_left_encoded small_7879655_left_checked

theorem cover_7879655 : CoveredBy scale carrier boxes root_7879655 := by
  apply coveredBy_split_literal root_7879655 small_7879655_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0539.root_7879661 coord0 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_7879655_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0539.cover_7879661
#print axioms cover_7879655

def root_7879654 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7879654_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7879654_right_fuel : Nat := 23
def small_7879654_right_count : Nat := 191
def small_7879654_right_encoded : String := "1386AD000CFD9BFB0F350CFA0000000204548A09138670FE0C9A86FA0F878CFB00000002078000F8128A7CF90000000107800106128A40FD067ECE8112EA590000000000022A458900000006000000050000000500000003128A7CFD00000003067ECE810000000A00000005128A40F907800106128A40FD067ECE8112EA590000000000022A45890000000A000000050000000500000003128A7CFD00000003067ECE810000000A00000005000000010F8750FB078000F8128A7CF90000000107800106128A40FD067ECE8112EA590000000000022A458913E1C4FE0B4D43FA00000006108010FB08C000F8000000060000000A000000020000000413E200FE000000040B4D43FA10804CFB0000000200000005108010FB08C000F811FC24F9000000010000000511FBE8F9064001060000000712FFACFD000000030569AC410000000A00000005000000010000000212EA9500022A458913E1C4FE0000000600000004000000050000000000000003128A7CFD00000003067ECE8112EA590000000000022A45890000000A13E200FE000000040B4D43FA0000000A108010FB08C000F8000000080000000A0000000212EA9500022A45890000000A0000000500000000128A40F907800106128A40FD067ECE8112EA590000000000022A458913E1C4FE0B4D43FA0000000A108010FB064000F80000000A000000070000000200000004000000070000000700000003128A7CFD00000003067ECE8112EA590000000000022A45890000000A13E200FE000000040B4D43FA0000000A108010FB064000F80000000A0000000A0000000212EA9500022A45890000000A00000005000000000000000100000002000000041386ACFE000000040C9A86FA0F878CFB00000002000000050F8750FB078000F8128A7CF90000000100000005128A40F90780010600000007128A7CFD00000003067ECE8112EA590000000000067ECE8912EA58FE0B4D43FA00000005108010FB000000070000000200000004000000050000000500000001000000020F34D0FA000000050000000200000000"
theorem small_7879654_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7879654_right_root small_7879654_right_fuel small_7879654_right_count small_7879654_right_encoded = true := by
  decide +kernel
theorem small_7879654_right_covered : CoveredBy scale carrier boxes small_7879654_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7879654_right_root small_7879654_right_fuel small_7879654_right_count small_7879654_right_encoded small_7879654_right_checked

theorem cover_7879654 : CoveredBy scale carrier boxes root_7879654 := by
  apply coveredBy_split_literal root_7879654 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0539.root_7879655 small_7879654_right_root coord0 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0539.cover_7879655
  · exact small_7879654_right_covered
#print axioms cover_7879654

def root_7879648 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7879648_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7879648_left_fuel : Nat := 1
def small_7879648_left_count : Nat := 1
def small_7879648_left_encoded : String := "00000003"
theorem small_7879648_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7879648_left_root small_7879648_left_fuel small_7879648_left_count small_7879648_left_encoded = true := by
  decide +kernel
theorem small_7879648_left_covered : CoveredBy scale carrier boxes small_7879648_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7879648_left_root small_7879648_left_fuel small_7879648_left_count small_7879648_left_encoded small_7879648_left_checked

theorem cover_7879648 : CoveredBy scale carrier boxes root_7879648 := by
  apply coveredBy_split_literal root_7879648 small_7879648_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0539.root_7879654 coord3 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_7879648_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0539.cover_7879654
#print axioms cover_7879648

def root_7877822 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7877822 : CoveredBy scale carrier boxes root_7877822 := by
  apply coveredBy_split_literal root_7877822 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2961.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0539.root_7879648 coord3 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2961.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0539.cover_7879648
#print axioms cover_7877822

def root_7877816 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7877816_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7877816_left_fuel : Nat := 1
def small_7877816_left_count : Nat := 1
def small_7877816_left_encoded : String := "00000001"
theorem small_7877816_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7877816_left_root small_7877816_left_fuel small_7877816_left_count small_7877816_left_encoded = true := by
  decide +kernel
theorem small_7877816_left_covered : CoveredBy scale carrier boxes small_7877816_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7877816_left_root small_7877816_left_fuel small_7877816_left_count small_7877816_left_encoded small_7877816_left_checked

theorem cover_7877816 : CoveredBy scale carrier boxes root_7877816 := by
  apply coveredBy_split_literal root_7877816 small_7877816_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0539.root_7877822 coord1 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_7877816_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0539.cover_7877822
#print axioms cover_7877816

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0539
