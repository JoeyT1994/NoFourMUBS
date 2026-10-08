import TaoBundleAssembly0516
import TaoBundleAssembly0520
import TaoBundleAssembly0521
import TaoBundleChunkBatch0716
import TaoBundleChunkBatch0717
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0522
def root_7582639 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7582639_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7582639_right_fuel : Nat := 24
def small_7582639_right_count : Nat := 339
def small_7582639_right_encoded : String := "120701040000000205000102135D45030000000105000106135D450700000003050000FE135D80FF000000040CFD9BF70F350D00045489FB1386AD040C9A87000F8750F700000009000000000F878CF700000000028001020000000913D7ED030280010613D7B10700000003078000FE000000060000000913D7ED07078000FE000000090000000900000003000000010000000200000009000000000F34D10000000000045489FB1386AD040280010213D7B103000000010280010613D7B10700000003078000FE128A7CFF000000040AD35777000000060000000A128A40FF0AD3577710D13D00000000090000000010D1010000000000067ECE7B12EA950401400102000000090000000A00000002000000060000000413D7ED07078000FE128A7CFF000000040000000A000000090000000313D7ED030280010613D7B10700000003078000FE128A7CFF0000000400000006128A40FF0AD3577710D13D00067ECE7B12EA950403C00102000000060000000500000002000000060000000010D1010000000000000000050000000413D7ED07078000FE0000000A00000005000000030000000100000002138671040000000202800102000000090000000A135D44FF0CFD9BF70F350D00045489FB1386AD040C9A8700000000090F878CF700000000028001020000000913D7ED030280010613D7B10700000003028000FE000000090000000500000005000000010000000200000009000000000F34D10000000000045489FB1386AD040280010213D7B103000000010280010613D7B10700000003028000FE13D7ECFF000000040AD357770000000910D1010000000000000000050000000500000005000000050000000213867104000000020000000500000004135D8107050000FE135D80FF000000040CFD9BF70F350D0000000009000000000F34D10000000000045489FB1386AD040280010200000009000000050000000200000009135D44FF0CFD9BF70F350D0000000009000000000F34D10000000000000000050000000400000003135D810305000106135D450700000003050000FE135D80FF000000040CFD9BF70F350D00045489FB1386AD040C9A87000F8750F707800102128A4103000000010280010613D7B107000000030000000613D7ED07078000FE000000090000000800000003128A7D03028001060000000613D7ED07078000FE00000006000000050000000300000001000000000F878CF70000000007800102128A4103000000010280010613D7B10700000003078000FE00000006128A40FF067ECE7B12EA95040000000600000002000000060000000413D7ED07078000FE128A7CFF00000004067ECE7B12EA95040DE7CA000E5FD8F700000006000000000000000500000002000000060000000500000003128A7D030280010613D7B10700000003078000FE000000060000000500000005000000010000000213867104000000020C9A87000F8750F700000006000000000F878CF700000000078001020000000600000005000000000F34D10000000000045489FB1386AD0407800102128A4103000000010280010613D7B10700000003078000FE0000000A000000050000000500000005000000020000000A135D44FF0CFD9BF70F350D00045489FB1386AD040C9A87000F8750F700000008000000000000000500000002138671040000000200000005000000000F34D100000000000000000500000004135D8107050000FE135D80FF000000040CFD9BF70F350D00045489FB1386AD040C9A87000F8750F7078001020000000900000005000000000000000500000002138671040000000200000005000000000F34D1000000000000000005000000050000000300000001"
theorem small_7582639_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7582639_right_root small_7582639_right_fuel small_7582639_right_count small_7582639_right_encoded = true := by
  decide +kernel
theorem small_7582639_right_covered : CoveredBy scale carrier boxes small_7582639_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7582639_right_root small_7582639_right_fuel small_7582639_right_count small_7582639_right_encoded small_7582639_right_checked

theorem cover_7582639 : CoveredBy scale carrier boxes root_7582639 := by
  apply coveredBy_split_literal root_7582639 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0521.root_7582640 small_7582639_right_root coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0521.cover_7582640
  · exact small_7582639_right_covered
#print axioms cover_7582639

def root_7582634 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7582634_right_root : ZRayBox := fun j => (#[⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7582634_right_fuel : Nat := 1
def small_7582634_right_count : Nat := 1
def small_7582634_right_encoded : String := "00000000"
theorem small_7582634_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7582634_right_root small_7582634_right_fuel small_7582634_right_count small_7582634_right_encoded = true := by
  decide +kernel
theorem small_7582634_right_covered : CoveredBy scale carrier boxes small_7582634_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7582634_right_root small_7582634_right_fuel small_7582634_right_count small_7582634_right_encoded small_7582634_right_checked

theorem cover_7582634 : CoveredBy scale carrier boxes root_7582634 := by
  apply coveredBy_split_literal root_7582634 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0522.root_7582639 small_7582634_right_root coord0 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0522.cover_7582639
  · exact small_7582634_right_covered
#print axioms cover_7582634

def root_7582633 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7582633_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7582633_right_fuel : Nat := 26
def small_7582633_right_count : Nat := 387
def small_7582633_right_encoded : String := "120701000000000008A912FB12073D0405000102135D45030000000105000106135D450700000003050000FE135D80FF00000004045489F71386AD000CFD9BFB0F350D040C9A87040F8750FB00000007000000020F878CFB000000020280010213D7B10300000001028001060000000713D7ED07078000FE00000008000000070000000313D7ED03028001060000000713D7ED07078000FE00000007000000070000000300000001000000020F34D104000000020280010213D7B103000000010280010613D7B10700000003078000FE128A7CFF00000004067ECE7712EA95000AD3577B000000080000000A0000000000000007128A40FF067ECE7712EA95000AD3577B10D13D04000000070000000210D101040000000201400102000000080000000700000000000000070000000413D7ED07078000FE128A7CFF0000000400000008128A40FF067ECE7712EA95000AD3577B10D13D040140010200000008000000050000000210D1010400000002000000050000000000000008000000040000000313D7ED030280010613D7B10700000003078000FE128A7CFF000000040000000A0000000713D7ED07078000FE0000000A0000000500000003000000010000000013867100000000000CFD9BFB0F350D0400000007000000020F34D10400000002028001020000000800000007135D44FF045489F71386AD000CFD9BFB0F350D040C9A8704000000070F878CFB000000020280010213D7B10300000001028001060000000713D7ED07028000FE00000007000000050000000300000007000000020F34D104000000020280010213D7B103000000010280010613D7B10700000003028000FE13D7ECFF00000004067ECE7712EA95000AD3577B0000000710D10104000000020000000500000000000000070000000500000005000000050000000013867100000000000CFD9BFB000000070000000700000004135D8107050000FE135D80FF00000004045489F71386AD000CFD9BFB0F350D040C9A87040F8750FB0280010213D7B1030000000107800106128A410700000003000000080000000813D7ED0307800106128A410700000003078000FE0000000700000006128A7D07078000FE00000008000000050000000300000001000000020F878CFB000000020280010213D7B1030000000107800106128A410700000003078000FE00000008128A40FF067ECE7712EA950000000008000000000000000800000004128A7D07078000FE00000008000000050000000313D7ED0307800106128A410700000003078000FE128A7CFF00000004067ECE7712EA95000DE7CA040E5FD8FB0000000700000002000000050000000000000007000000050000000500000001000000020F34D104000000020280010213D7B1030000000107800106128A410700000003078000FE0000000A0000000500000005000000050000000013867100000000000CFD9BFB0F350D040C9A87040F8750FB00000007000000020F878CFB00000002028001020000000800000005000000020F34D1040000000200000005135D44FF045489F71386AD000CFD9BFB0F350D040C9A87040F8750FB000000060000000200000005000000020F34D1040000000200000005000000001386710000000000000000050000000400000003135D810305000106135D450700000003050000FE135D80FF00000004045489F71386AD000CFD9BFB0F350D0400000007000000020F34D1040000000207800102128A4103000000010280010600000007000000050000000500000000138671000000000000000007135D44FF045489F71386AD000CFD9BFB0F350D0400000007000000020F34D1040000000200000005000000000000000700000004135D8107050000FE135D80FF00000004045489F71386AD000CFD9BFB0F350D040C9A87040F8750FB07800102128A410300000001078001060000000700000005000000050000000200000005000000020F34D10400000002000000050000000013867100000000000000000500000005000000030000000100000002120701040000000205000102135D45030000000105000106135D450700000003050000FE135D80FF00000004045489F70000000A0000000A000000050000000500000005"
theorem small_7582633_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7582633_right_root small_7582633_right_fuel small_7582633_right_count small_7582633_right_encoded = true := by
  decide +kernel
theorem small_7582633_right_covered : CoveredBy scale carrier boxes small_7582633_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7582633_right_root small_7582633_right_fuel small_7582633_right_count small_7582633_right_encoded small_7582633_right_checked

theorem cover_7582633 : CoveredBy scale carrier boxes root_7582633 := by
  apply coveredBy_split_literal root_7582633 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0522.root_7582634 small_7582633_right_root coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0522.cover_7582634
  · exact small_7582633_right_covered
#print axioms cover_7582633

def root_7582628 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7582628_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7582628_right_fuel : Nat := 1
def small_7582628_right_count : Nat := 1
def small_7582628_right_encoded : String := "00000004"
theorem small_7582628_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7582628_right_root small_7582628_right_fuel small_7582628_right_count small_7582628_right_encoded = true := by
  decide +kernel
theorem small_7582628_right_covered : CoveredBy scale carrier boxes small_7582628_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7582628_right_root small_7582628_right_fuel small_7582628_right_count small_7582628_right_encoded small_7582628_right_checked

theorem cover_7582628 : CoveredBy scale carrier boxes root_7582628 := by
  apply coveredBy_split_literal root_7582628 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0522.root_7582633 small_7582628_right_root coord4 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0522.cover_7582633
  · exact small_7582628_right_covered
#print axioms cover_7582628

def root_7553794 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7553794 : CoveredBy scale carrier boxes root_7553794 := by
  apply coveredBy_split_literal root_7553794 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0520.root_7553795 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0522.root_7582628 coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0520.cover_7553795
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0522.cover_7582628
#print axioms cover_7553794

def root_7553788 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7553788_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7553788_left_fuel : Nat := 1
def small_7553788_left_count : Nat := 1
def small_7553788_left_encoded : String := "00000003"
theorem small_7553788_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7553788_left_root small_7553788_left_fuel small_7553788_left_count small_7553788_left_encoded = true := by
  decide +kernel
theorem small_7553788_left_covered : CoveredBy scale carrier boxes small_7553788_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7553788_left_root small_7553788_left_fuel small_7553788_left_count small_7553788_left_encoded small_7553788_left_checked

theorem cover_7553788 : CoveredBy scale carrier boxes root_7553788 := by
  apply coveredBy_split_literal root_7553788 small_7553788_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0522.root_7553794 coord3 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_7553788_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0522.cover_7553794
#print axioms cover_7553788

def root_7553787 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7553787 : CoveredBy scale carrier boxes root_7553787 := by
  apply coveredBy_split_literal root_7553787 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0522.root_7553788 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2864.root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0522.cover_7553788
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2864.covered
#print axioms cover_7553787

def root_7553781 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7553781_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7553781_left_fuel : Nat := 1
def small_7553781_left_count : Nat := 1
def small_7553781_left_encoded : String := "00000002"
theorem small_7553781_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7553781_left_root small_7553781_left_fuel small_7553781_left_count small_7553781_left_encoded = true := by
  decide +kernel
theorem small_7553781_left_covered : CoveredBy scale carrier boxes small_7553781_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7553781_left_root small_7553781_left_fuel small_7553781_left_count small_7553781_left_encoded small_7553781_left_checked

theorem cover_7553781 : CoveredBy scale carrier boxes root_7553781 := by
  apply coveredBy_split_literal root_7553781 small_7553781_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0522.root_7553787 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_7553781_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0522.cover_7553787
#print axioms cover_7553781

def root_7547421 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7547421 : CoveredBy scale carrier boxes root_7547421 := by
  apply coveredBy_split_literal root_7547421 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0516.root_7547422 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0522.root_7553781 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0516.cover_7547422
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0522.cover_7553781
#print axioms cover_7547421

def root_7547415 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7547415_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7547415_left_fuel : Nat := 1
def small_7547415_left_count : Nat := 1
def small_7547415_left_encoded : String := "00000001"
theorem small_7547415_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7547415_left_root small_7547415_left_fuel small_7547415_left_count small_7547415_left_encoded = true := by
  decide +kernel
theorem small_7547415_left_covered : CoveredBy scale carrier boxes small_7547415_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7547415_left_root small_7547415_left_fuel small_7547415_left_count small_7547415_left_encoded small_7547415_left_checked

theorem cover_7547415 : CoveredBy scale carrier boxes root_7547415 := by
  apply coveredBy_split_literal root_7547415 small_7547415_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0522.root_7547421 coord1 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_7547415_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0522.cover_7547421
#print axioms cover_7547415

def root_7618619 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7618619_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7618619_right_fuel : Nat := 42
def small_7618619_right_count : Nat := 319
def small_7618619_right_encoded : String := "115225070A0000FE115224FF0000000408A912F712073D0008A91303120701020000000108A912FB12073D0408A913070000000A12073D0608A912FF12073CFE00000004000000050000000A000000030000000212070104000000020000000512073D0208A912FB12073D0408A91307120701060000000308A912FF12073CFE00000004000000050000000A12073D0608A912FF12073CFE000000040CFD9BF70F350D000CFD9C030F34D102000000010CFD9BFB0F350D040CFD9C070F34D10600000003000000050F350D060CFD9BFF0F350CFE00000004000000050F34D0FE0000000A0000000400000003000000020F34D10400000002000000050F350D020CFD9BFB0F350D040CFD9C070F34D106000000030CFD9BFF0F350CFE00000004000000050F34D0FE0000000A000000040F350D060CFD9BFF0F350CFE000000040C9A87000F8750F70C9A87020F875103000000010C9A87040F8750FB0C9A87060F875107000000030C9A86FE0F878CFF000000040B4D4400108010F70B4D440210801103000000010B4D4404108010FB00000007000000020000000710804D030B4D44040000000910804CFB000000020000000A000000010000000010804CF7000000000B4D440210801103000000010B4D4404108010FB0B4D44060000000910804D0700000006000000030000000210804CFB000000020000000A10804D030B4D44040000000900000005000000010F8750FF0B4D4400108010F7000000050000000000000005000000040F878D070C9A86FE000000070000000500000003000000020F878CFB000000020C9A87060F875107000000030C9A86FE0F878CFF000000040B4D4400108010F70000000A000000000000000500000005000000050F878D030C9A87040F8750FB0C9A87060F875107000000030C9A86FE000000090000000500000005000000020000000500000001000000000F878CF7000000000C9A87020F875103000000010C9A87040F8750FB0C9A87060F875107000000030C9A86FE0F878CFF000000040DE7CA000E5FD8F70000000A000000000000000500000005000000050000000200000005000000050F34D0FE0C9A87000F8750F70C9A87020F875103000000010C9A87040F8750FB0C9A87060000000A0000000A000000020000000A0F878D030000000A00000001000000000F878CF7000000000000000A0000000400000003000000020F34D104000000020CFD9C070F34D10600000003000000050F350D060CFD9BFF0F350CFE00000004000000050F34D0FE0000000A000000040000000300000001000000000F34D100000000000CFD9C030F34D10200000001000000050F350D020CFD9BFB0F350D040CFD9C070F34D10600000003000000050F350D060CFD9BFF0F350CFE00000004000000050F34D0FE0000000A0000000400000003000000020F34D104000000020000000500000001120700FE0CFD9BF70F350D000CFD9C030000000A0F350D020CFD9BFB0000000A0000000A00000001000000000F34D100000000000000000A000000040000000300000002120701040000000208A913070000000A12073D0608A912FF12073CFE00000004000000050000000A000000030000000100000000120701000000000008A9130312070102000000010000000512073D0208A912FB12073D0408A913070000000A12073D0608A912FF12073CFE00000004000000050000000A0000000300000002120701040000000200000005000000010000000500000003"
theorem small_7618619_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7618619_right_root small_7618619_right_fuel small_7618619_right_count small_7618619_right_encoded = true := by
  decide +kernel
theorem small_7618619_right_covered : CoveredBy scale carrier boxes small_7618619_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7618619_right_root small_7618619_right_fuel small_7618619_right_count small_7618619_right_encoded small_7618619_right_checked

theorem cover_7618619 : CoveredBy scale carrier boxes root_7618619 := by
  apply coveredBy_split_literal root_7618619 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2866.root small_7618619_right_root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2866.covered
  · exact small_7618619_right_covered
#print axioms cover_7618619

def root_7618613 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7618613_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7618613_left_fuel : Nat := 1
def small_7618613_left_count : Nat := 1
def small_7618613_left_encoded : String := "00000002"
theorem small_7618613_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7618613_left_root small_7618613_left_fuel small_7618613_left_count small_7618613_left_encoded = true := by
  decide +kernel
theorem small_7618613_left_covered : CoveredBy scale carrier boxes small_7618613_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7618613_left_root small_7618613_left_fuel small_7618613_left_count small_7618613_left_encoded small_7618613_left_checked

theorem cover_7618613 : CoveredBy scale carrier boxes root_7618613 := by
  apply coveredBy_split_literal root_7618613 small_7618613_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0522.root_7618619 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_7618613_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0522.cover_7618619
#print axioms cover_7618613

def root_7616253 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7616253 : CoveredBy scale carrier boxes root_7616253 := by
  apply coveredBy_split_literal root_7616253 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2865.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0522.root_7618613 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2865.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0522.cover_7618613
#print axioms cover_7616253

def root_7616248 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7616248_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7616248_right_fuel : Nat := 1
def small_7616248_right_count : Nat := 1
def small_7616248_right_encoded : String := "00000001"
theorem small_7616248_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7616248_right_root small_7616248_right_fuel small_7616248_right_count small_7616248_right_encoded = true := by
  decide +kernel
theorem small_7616248_right_covered : CoveredBy scale carrier boxes small_7616248_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7616248_right_root small_7616248_right_fuel small_7616248_right_count small_7616248_right_encoded small_7616248_right_checked

theorem cover_7616248 : CoveredBy scale carrier boxes root_7616248 := by
  apply coveredBy_split_literal root_7616248 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0522.root_7616253 small_7616248_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0522.cover_7616253
  · exact small_7616248_right_covered
#print axioms cover_7616248

def root_7547414 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7547414 : CoveredBy scale carrier boxes root_7547414 := by
  apply coveredBy_split_literal root_7547414 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0522.root_7547415 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0522.root_7616248 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0522.cover_7547415
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0522.cover_7616248
#print axioms cover_7547414

def root_7547408 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7547408_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7547408_left_fuel : Nat := 1
def small_7547408_left_count : Nat := 1
def small_7547408_left_encoded : String := "00000000"
theorem small_7547408_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7547408_left_root small_7547408_left_fuel small_7547408_left_count small_7547408_left_encoded = true := by
  decide +kernel
theorem small_7547408_left_covered : CoveredBy scale carrier boxes small_7547408_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7547408_left_root small_7547408_left_fuel small_7547408_left_count small_7547408_left_encoded small_7547408_left_checked

theorem cover_7547408 : CoveredBy scale carrier boxes root_7547408 := by
  apply coveredBy_split_literal root_7547408 small_7547408_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0522.root_7547414 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_7547408_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0522.cover_7547414
#print axioms cover_7547408

def root_7535302 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7535302 : CoveredBy scale carrier boxes root_7535302 := by
  apply coveredBy_split_literal root_7535302 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0516.root_7535303 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0522.root_7547408 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0516.cover_7535303
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0522.cover_7547408
#print axioms cover_7535302

def root_7626161 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7626161_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7626161_right_fuel : Nat := 20
def small_7626161_right_count : Nat := 381
def small_7626161_right_encoded : String := "1151E9090000000408A912FB12073D0408A91307120701060000000305000100135D44F705000102135D450300000001050000FE135D81090CFD9BFB0F350D0404548A07000000061386AD060000000900000003000000020F34D1040000000204548A07000000070000000900000004135D4509000000040CFD9BFB000000090F34D1040000000204548A0713867106000000030000000500000005135D8103050000FE135D81090CFD9BFB0F350D0404548A0713867106000000030C9A870400000007000000071386AD060C9A87040F8750FB00000009000000020000000900000003000000020F34D1040000000204548A07000000091386AD06000000090000000300000004135D4509000000040CFD9BFB000000090F34D10400000002000000050000000100000000135D80F70000000005000102135D450300000001050000FE135D81090CFD9BFB000000090F34D10400000002000000090000000400000009135D8103050000FE135D81090CFD9BFB0F350D0404548A07000000091386AD060C9A87040F8750FB00000009000000020000000500000003000000020F34D104000000020000000500000004000000050000000112073D0605000100135D44F705000102135D450300000001050000FE135D81090CFD9BFB0F350D040CFD9C070F34D106000000030C9A87040F8750FB0000000900000002000000090F350D060000000900000003000000020F34D104000000020CFD9C07000000090F350D06000000090000000300000004135D4509000000040CFD9BFB000000090F34D1040000000200000009135D8103050000FE135D81090CFD9BFB0F350D040CFD9C070F34D106000000030C9A87040F8750FB02800100000000090000000900000002000000090F350D060C9A87040F8750FB0C9A8706000000090F878D070000000900000003000000020F878CFB000000020000000900000003000000020F34D104000000020CFD9C070F34D106000000030280010000000009000000050F350D06000000090000000300000004135D4509000000040CFD9BFB0F350D040CFD9C07000000090F350D060000000900000003000000020F34D10400000002000000090000000100000000135D80F70000000005000102135D450300000001050000FE135D81090CFD9BFB0F350D040CFD9C07000000090F350D060000000900000003000000020F34D104000000020000000900000004135D4509000000040CFD9BFB0000000900000009135D8103050000FE135D81090CFD9BFB0F350D040CFD9C070F34D106000000030C9A87040F8750FB07800100000000090000000900000002000000090F350D060C9A87040F8750FB0C9A8706000000090F878D070000000900000003000000020F878CFB000000020000000900000003000000020F34D104000000020CFD9C07000000090F350D06000000090000000300000004135D4509000000040CFD9BFB000000090F34D1040000000200000005000000010000000300000002120701040000000208A91307120701060000000305000100135D44F705000102135D450300000001050000FE135D8109045489FB1386AD0404548A07000000071386AD060280010000000007000000050000000300000002138671040000000200000005000000040000000500000005000000000000000512073D0605000100135D44F705000102135D450300000001050000FE135D8109045489FB1386AD040CFD9C070F34D106000000030280010013D7B0F70000000900000000000000090F350D0600000009000000030000000213867104000000020CFD9C070F34D10600000003000000050F350D06000000060000000300000004135D450900000004045489FB00000009138671040000000200000005135D8103050000FE135D8109045489FB1386AD040CFD9C070F34D10600000003000000050F350D0600000006000000030000000213867104000000020CFD9C07000000080000000500000004000000050000000100000000135D80F70000000005000102135D450300000001050000FE135D8109045489FB0000000913867104000000020000000500000004000000050000000500000003"
theorem small_7626161_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7626161_right_root small_7626161_right_fuel small_7626161_right_count small_7626161_right_encoded = true := by
  decide +kernel
theorem small_7626161_right_covered : CoveredBy scale carrier boxes small_7626161_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7626161_right_root small_7626161_right_fuel small_7626161_right_count small_7626161_right_encoded small_7626161_right_checked

theorem cover_7626161 : CoveredBy scale carrier boxes root_7626161 := by
  apply coveredBy_split_literal root_7626161 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2868.root small_7626161_right_root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2868.covered
  · exact small_7626161_right_covered
#print axioms cover_7626161

def root_7626156 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7626156_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7626156_right_fuel : Nat := 1
def small_7626156_right_count : Nat := 1
def small_7626156_right_encoded : String := "00000003"
theorem small_7626156_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7626156_right_root small_7626156_right_fuel small_7626156_right_count small_7626156_right_encoded = true := by
  decide +kernel
theorem small_7626156_right_covered : CoveredBy scale carrier boxes small_7626156_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7626156_right_root small_7626156_right_fuel small_7626156_right_count small_7626156_right_encoded small_7626156_right_checked

theorem cover_7626156 : CoveredBy scale carrier boxes root_7626156 := by
  apply coveredBy_split_literal root_7626156 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0522.root_7626161 small_7626156_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0522.cover_7626161
  · exact small_7626156_right_covered
#print axioms cover_7626156

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0522
