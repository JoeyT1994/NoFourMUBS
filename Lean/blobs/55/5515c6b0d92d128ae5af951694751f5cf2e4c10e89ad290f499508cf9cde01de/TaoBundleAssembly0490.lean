import TaoBundleAssembly0488
import TaoBundleAssembly0489
import TaoBundleChunkBatch0674
import TaoBundleChunkBatch0675
import TaoBundleChunkBatch0676
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0490
def root_7160463 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7160463_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7160463_right_fuel : Nat := 17
def small_7160463_right_count : Nat := 191
def small_7160463_right_encoded : String := "135D450700000003050000FE135D8109045489F71386AD00045489FB1386ACFA0000000207800102128A410300000001028000FC13D7ED07078000FE00000007000000070000000300000007128A7D03028000FC13D7ED07078000FE00000009128A410900000004067ECE770000000A000000060000000313D7B10700000003078000FE000000070000000600000001138670FA07800102128A41030000000100000007128A7D03028000FC13D7ED07078000FE00000009128A410900000004067ECE770000000712EA590000000000022A457B00000009000000070000000313D7B10700000003000000070000000100000002000000001386710000000000045489FB1386ACFA0000000207800102128A410300000001028000FC13D7ED07078000FE128A7D09022A457713E20100067ECE7B0000000600000007000000000000000600000004000000060000000300000006128A7D03028000FC13D7ED07078000FE128A7D09022A457700000009000000060000000400000006000000030000000600000001138670FA07800102128A410300000001028000FC13D7ED07078000FE128A7D09022A4577000000070000000500000004128A410900000004000000050000000313D7B10700000003078000FE0000000700000005128A7D03028000FC13D7ED07078000FE128A7D09022A4577000000090000000500000004128A410900000004022A457713E20100022A457B000000060000000500000000000000050000000313D7B10700000003078000FE0000000900000006000000010000000200000004135D450900000004045489F71386AD00045489FB1386ACFA00000002078001020000000600000006138670FA07800102128A410300000001028000FC0000000A00000006128A7D03028000FC13D7ED07028000FE13D7ED09067ECE7712EA9500022A457B00000006000000070000000012EA590000000000022A457B0000000600000005000000040000000600000003000000060000000100000002000000001386710000000000045489FB0000000600000005"
theorem small_7160463_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7160463_right_root small_7160463_right_fuel small_7160463_right_count small_7160463_right_encoded = true := by
  decide +kernel
theorem small_7160463_right_covered : CoveredBy scale carrier boxes small_7160463_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7160463_right_root small_7160463_right_fuel small_7160463_right_count small_7160463_right_encoded small_7160463_right_checked

theorem cover_7160463 : CoveredBy scale carrier boxes root_7160463 := by
  apply coveredBy_split_literal root_7160463 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0489.root_7160464 small_7160463_right_root coord3 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0489.cover_7160464
  · exact small_7160463_right_covered
#print axioms cover_7160463

def root_7160458 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7160458_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7160458_right_fuel : Nat := 1
def small_7160458_right_count : Nat := 1
def small_7160458_right_encoded : String := "00000001"
theorem small_7160458_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7160458_right_root small_7160458_right_fuel small_7160458_right_count small_7160458_right_encoded = true := by
  decide +kernel
theorem small_7160458_right_covered : CoveredBy scale carrier boxes small_7160458_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7160458_right_root small_7160458_right_fuel small_7160458_right_count small_7160458_right_encoded small_7160458_right_checked

theorem cover_7160458 : CoveredBy scale carrier boxes root_7160458 := by
  apply coveredBy_split_literal root_7160458 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0490.root_7160463 small_7160458_right_root coord1 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0490.cover_7160463
  · exact small_7160458_right_covered
#print axioms cover_7160458

def root_7158338 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7158338 : CoveredBy scale carrier boxes root_7158338 := by
  apply coveredBy_split_literal root_7158338 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2697.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0490.root_7160458 coord1 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2697.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0490.cover_7160458
#print axioms cover_7158338

def root_7158333 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7158333_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7158333_right_fuel : Nat := 1
def small_7158333_right_count : Nat := 1
def small_7158333_right_encoded : String := "00000002"
theorem small_7158333_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7158333_right_root small_7158333_right_fuel small_7158333_right_count small_7158333_right_encoded = true := by
  decide +kernel
theorem small_7158333_right_covered : CoveredBy scale carrier boxes small_7158333_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7158333_right_root small_7158333_right_fuel small_7158333_right_count small_7158333_right_encoded small_7158333_right_checked

theorem cover_7158333 : CoveredBy scale carrier boxes root_7158333 := by
  apply coveredBy_split_literal root_7158333 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0490.root_7158338 small_7158333_right_root coord2 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0490.cover_7158338
  · exact small_7158333_right_covered
#print axioms cover_7158333

def root_7157605 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7157605_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7157605_left_fuel : Nat := 27
def small_7157605_left_count : Nat := 347
def small_7157605_left_encoded : String := "12073CFA0000000205000102135D450300000001050000FC135D8107050000FE135D8109045489F71386AD000CFD9BFB000000050F34D0FA0000000A000000020000000013867100000000000CFD9BFB0F350CFA000000020C9A86FA0000000A0000000A0F34D0FA0280010213D7B10300000001078000FC0000000A128A4107000000030000000A13D7ED03078000FC128A7D07078000FE128A7D09022A45770000000513E1C500000000000AD3577B0000000510D100FA0000000A00000002000000040000000A00000003128A410700000003078000FE128A7D09022A45770000000A0000000600000004000000060000000100000002000000040000000A00000003135D450700000003050000FE135D8109045489F71386AD000CFD9BFB0000000A000000070000000013867100000000000CFD9BFB000000060F34D0FA000000060000000200000004135D450900000004045489F70000000A00000006135D8103050000FC135D8107050000FE135D8109045489F71386AD000CFD9BFB0F350CFA000000020C9A86FA000000050F8750FB00000005000000020F34D0FA07800102128A410300000001078000FC0000000A128A4107000000030000000A128A7D03078000FC128A7D070000000500000003128A410700000003078000FE128A7D0900000005000000040000000A00000001000000020000000013867100000000000CFD9BFB0F350CFA000000020C9A86FA0F878CFB0000000207800102128A410300000001078000FC0000000A00000006128A7D03078000FC128A7D07078000FE00000005000000060000000300000006000000010F8750FB0780010200000006128A7D03078000FC128A7D07078000FE0000000500000006000000030000000600000001000000020F34D0FA07800102128A410300000001078000FC128A7D07078000FE128A7D09022A45770000000513E1C500000000000AD3577B0000000510D100FA0640010212FF71030000000108C000FC0000000A0000000612FFAD0308C000FC11FC250708C000FE00000005000000060000000300000006000000010000000200000004128A410900000004022A45770000000A0000000600000003128A410700000003078000FE128A7D09022A457713E201000AD3577B0000000510D100FA000000060000000200000000000000060000000400000006128A7D03078000FC128A7D07078000FE128A7D09022A45770000000513E1C500000000000AD3577B0000000510D100FA08C0010211FBE9030000000108C000FC11FC250700000005000000030000000611FC250300000009000000010000000200000004128A410900000004022A457713E201000AD3577B0000000510D100FA0000000600000002000000000000000600000003128A410700000003078000FE128A7D09022A457713E201000AD3577B0000000510D100FA000000060000000200000000000000060000000400000006000000010000000200000004135D450900000004045489F71386AD000000000A0000000013867100000000000CFD9BFB000000060F34D0FA0780010200000006000000060000000200000003135D450700000003050000FE135D8109045489F71386AD000CFD9BFB0F350CFA000000020C9A86FA0F878CFB000000020780010200000006000000060F8750FB00000006000000020F34D0FA07800102128A410300000001028000FC0000000A00000006128A7D03028000FC13D7ED07078000FE128A7D09000000090000000400000006000000030000000600000001000000020000000013867100000000000CFD9BFB000000060F34D0FA0780010200000006000000060000000200000004135D450900000004045489F71386AD000CFD9BFB000000060F34D0FA0000000600000002000000000000000600000001"
theorem small_7157605_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7157605_left_root small_7157605_left_fuel small_7157605_left_count small_7157605_left_encoded = true := by
  decide +kernel
theorem small_7157605_left_covered : CoveredBy scale carrier boxes small_7157605_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7157605_left_root small_7157605_left_fuel small_7157605_left_count small_7157605_left_encoded small_7157605_left_checked

theorem cover_7157605 : CoveredBy scale carrier boxes root_7157605 := by
  apply coveredBy_split_literal root_7157605 small_7157605_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0490.root_7158333 coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_7157605_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0490.cover_7158333
#print axioms cover_7157605

def root_7157599 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7157599_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7157599_left_fuel : Nat := 1
def small_7157599_left_count : Nat := 1
def small_7157599_left_encoded : String := "00000000"
theorem small_7157599_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7157599_left_root small_7157599_left_fuel small_7157599_left_count small_7157599_left_encoded = true := by
  decide +kernel
theorem small_7157599_left_covered : CoveredBy scale carrier boxes small_7157599_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7157599_left_root small_7157599_left_fuel small_7157599_left_count small_7157599_left_encoded small_7157599_left_checked

theorem cover_7157599 : CoveredBy scale carrier boxes root_7157599 := by
  apply coveredBy_split_literal root_7157599 small_7157599_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0490.root_7157605 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_7157599_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0490.cover_7157605
#print axioms cover_7157599

def root_7157355 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7157355_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7157355_left_fuel : Nat := 20
def small_7157355_left_count : Nat := 115
def small_7157355_left_encoded : String := "12073D0008A912FB12073CFA0000000205000102135D4503000000010000000A135D8103050000FC135D8107050000FE135D81090CFD9BF7000000050F34D100000000000CFD9BFB000000050F34D0FA0000000500000002000000040000000A00000003135D450700000003050000FE135D81090CFD9BF70000000A0F34D100000000000CFD9BFB0000000A0F34D0FA0000000A00000002000000040000000A00000001120700FA05000102135D450300000001050000FC0000000A135D450700000003050000FE0000000700000007135D8103050000FC135D8107050000FE135D81090CFD9BF70F350D0000000005000000000F34D10000000000045489FB1386ACFA000000020780010200000005128A7D030000000500000001138670FA07800102128A410300000001078000FC0000000A00000007128A7D03078000FC128A7D07078000FE128A7D0900000005000000040000000A00000003128A410700000003078000FE000000070000000A0000000100000002000000040000000A00000003135D450700000003050000FE135D81090CFD9BF7000000070F34D10000000000045489FB1386ACFA000000020000000700000007000000040000000A000000010000000200000000"
theorem small_7157355_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7157355_left_root small_7157355_left_fuel small_7157355_left_count small_7157355_left_encoded = true := by
  decide +kernel
theorem small_7157355_left_covered : CoveredBy scale carrier boxes small_7157355_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7157355_left_root small_7157355_left_fuel small_7157355_left_count small_7157355_left_encoded small_7157355_left_checked

theorem cover_7157355 : CoveredBy scale carrier boxes root_7157355 := by
  apply coveredBy_split_literal root_7157355 small_7157355_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0490.root_7157599 coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_7157355_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0490.cover_7157599
#print axioms cover_7157355

def root_7157349 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7157349_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7157349_left_fuel : Nat := 1
def small_7157349_left_count : Nat := 1
def small_7157349_left_encoded : String := "00000004"
theorem small_7157349_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7157349_left_root small_7157349_left_fuel small_7157349_left_count small_7157349_left_encoded = true := by
  decide +kernel
theorem small_7157349_left_covered : CoveredBy scale carrier boxes small_7157349_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7157349_left_root small_7157349_left_fuel small_7157349_left_count small_7157349_left_encoded small_7157349_left_checked

theorem cover_7157349 : CoveredBy scale carrier boxes root_7157349 := by
  apply coveredBy_split_literal root_7157349 small_7157349_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0490.root_7157355 coord4 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_7157349_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0490.cover_7157355
#print axioms cover_7157349

def root_7154341 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7154341 : CoveredBy scale carrier boxes root_7154341 := by
  apply coveredBy_split_literal root_7154341 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2696.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0490.root_7157349 coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2696.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0490.cover_7157349
#print axioms cover_7154341

def root_7154335 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7154335_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7154335_left_fuel : Nat := 1
def small_7154335_left_count : Nat := 1
def small_7154335_left_encoded : String := "00000003"
theorem small_7154335_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7154335_left_root small_7154335_left_fuel small_7154335_left_count small_7154335_left_encoded = true := by
  decide +kernel
theorem small_7154335_left_covered : CoveredBy scale carrier boxes small_7154335_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7154335_left_root small_7154335_left_fuel small_7154335_left_count small_7154335_left_encoded small_7154335_left_checked

theorem cover_7154335 : CoveredBy scale carrier boxes root_7154335 := by
  apply coveredBy_split_literal root_7154335 small_7154335_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0490.root_7154341 coord3 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_7154335_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0490.cover_7154341
#print axioms cover_7154335

def root_7144399 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7144399 : CoveredBy scale carrier boxes root_7144399 := by
  apply coveredBy_split_literal root_7144399 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0488.root_7144400 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0490.root_7154335 coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0488.cover_7144400
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0490.cover_7154335
#print axioms cover_7144399

def root_7144393 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7144393_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7144393_left_fuel : Nat := 1
def small_7144393_left_count : Nat := 1
def small_7144393_left_encoded : String := "00000002"
theorem small_7144393_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7144393_left_root small_7144393_left_fuel small_7144393_left_count small_7144393_left_encoded = true := by
  decide +kernel
theorem small_7144393_left_covered : CoveredBy scale carrier boxes small_7144393_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7144393_left_root small_7144393_left_fuel small_7144393_left_count small_7144393_left_encoded small_7144393_left_checked

theorem cover_7144393 : CoveredBy scale carrier boxes root_7144393 := by
  apply coveredBy_split_literal root_7144393 small_7144393_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0490.root_7144399 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_7144393_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0490.cover_7144399
#print axioms cover_7144393

def root_7144392 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7144392_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7144392_right_fuel : Nat := 24
def small_7144392_right_count : Nat := 313
def small_7144392_right_encoded : String := "1151E8FB0A0000FC115225070A0000FE1152250900000005000000041151E9090000000408A912F712073D0008A913070000000512073CFC000000030500010200000005135D8103000000050000000100000000120701000000000008A91307120700FC000000050000000312073CFC0000000305000102135D450300000001050000FA135D80FB00000002050000FE000000050000000A135D44FB0000000A00000002135D8103050000FA135D80FB00000002050000FE135D8109045489F70000000513867100000000000CFD9C07000000050F350CFC000000030C9A86FC000000050F875107000000030780010200000005128A7D03000000050000000100000004135D450900000004045489F70000000A13867100000000000CFD9C070000000A0000000A135D44FB050000FE135D8109045489F70000000513867100000000000CFD9C07000000050F350CFC000000030C9A86FC000000050F875107000000030000000A00000004135D4509000000040000000A0000000200000001000000031151E907000000030A0000FE1152250908A912F712073D0008A913090000000512073CFE000000040500010200000005135D8103000000050000000100000000120701000000000008A91309120700FE000000050000000412073CFE0000000405000102135D450300000001050000FA135D80FB00000002050000FC0000000500000008135D44FB050000FC000000050000000800000002135D8103050000FA135D80FB00000002050000FC135D8107045489F70000000513867100000000000CFD9C09000000050F350CFE000000040C9A86FE000000050F875109000000040780010200000005128A7D03000000050000000100000003135D450700000003045489F71386AD000CFD9C0900000005000000080000000000000008135D44FB050000FC135D8107045489F70000000513867100000000000CFD9C09000000050000000800000003135D450700000003045489F71386AD000CFD9C09000000050000000800000000000000080000000200000001000000041151E9090000000408A912F712073D00050001020000000A135D8103050000FA0000000A135D44FB0000000A000000020000000100000000120701000000000005000102135D450300000001050000FA135D80FB00000002050000FC0000000A135D45070000000300000006135D44FB050000FC0000000A0000000700000002135D8103050000FA135D80FB00000002050000FC135D8107050000FE135D8109045489F70000000A138671000000000007800102128A410300000001078000FA000000060000000A128A7D03078000FA128A7CFB00000002078000FC0000000A00000006128A40FB078000FC0000000A000000060000000200000001000000040000000A00000003135D450700000003050000FE135D8109045489F71386AD000780010200000006128A7D03078000FA00000006000000070000000100000000000000060000000400000006135D44FB050000FC135D8107050000FE135D8109045489F70000000A13867100000000000780010200000008128A7D03028000FA13D7ECFB00000002078000FC0000000A0000000613D7B0FB078000FC0000000A000000080000000200000001000000040000000A00000003135D450700000003050000FE135D8109045489F700000007000000060000000400000006000000020000000100000002"
theorem small_7144392_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7144392_right_root small_7144392_right_fuel small_7144392_right_count small_7144392_right_encoded = true := by
  decide +kernel
theorem small_7144392_right_covered : CoveredBy scale carrier boxes small_7144392_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7144392_right_root small_7144392_right_fuel small_7144392_right_count small_7144392_right_encoded small_7144392_right_checked

theorem cover_7144392 : CoveredBy scale carrier boxes root_7144392 := by
  apply coveredBy_split_literal root_7144392 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0490.root_7144393 small_7144392_right_root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0490.cover_7144393
  · exact small_7144392_right_covered
#print axioms cover_7144392

def root_7144386 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7144386_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7144386_left_fuel : Nat := 1
def small_7144386_left_count : Nat := 1
def small_7144386_left_encoded : String := "00000001"
theorem small_7144386_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7144386_left_root small_7144386_left_fuel small_7144386_left_count small_7144386_left_encoded = true := by
  decide +kernel
theorem small_7144386_left_covered : CoveredBy scale carrier boxes small_7144386_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7144386_left_root small_7144386_left_fuel small_7144386_left_count small_7144386_left_encoded small_7144386_left_checked

theorem cover_7144386 : CoveredBy scale carrier boxes root_7144386 := by
  apply coveredBy_split_literal root_7144386 small_7144386_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0490.root_7144392 coord1 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_7144386_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0490.cover_7144392
#print axioms cover_7144386

def root_7172579 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7172579_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7172579_left_fuel : Nat := 18
def small_7172579_left_count : Nat := 113
def small_7172579_left_encoded : String := "1152250908A912F712073D0008A9130312070102000000010000000912073D0208A912FB12073CFA0000000208A913090000000512073CFE00000004050000FC00000005135D4507000000030CFD9BF7000000050F34D1000000000000000009120700FA08A913090000000512073CFE00000004050000FC135D81070CFD9BF7000000050F34D100000000000000000900000003135D4507000000030CFD9BF7000000090F34D1000000000000000009000000020000000100000000120701000000000008A9130312070102000000010000000912073D0208A912FB12073CFA0000000208A913090000000912073CFE00000004050000FC135D8107045489F71386AD000CFD9C03000000090F350D020CFD9BFB000000050F34D0FA0000000500000002000000010000000013867100000000000CFD9C03000000090F350D020CFD9BFB000000090F34D0FA00000009000000020000000100000003135D450700000003045489F700000009138671000000000000000009120700FA08A913090000000912073CFE00000004050000FC135D8107045489F70000000913867100000000000000000900000003135D45070000000300000009000000020000000100000004"
theorem small_7172579_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7172579_left_root small_7172579_left_fuel small_7172579_left_count small_7172579_left_encoded = true := by
  decide +kernel
theorem small_7172579_left_covered : CoveredBy scale carrier boxes small_7172579_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7172579_left_root small_7172579_left_fuel small_7172579_left_count small_7172579_left_encoded small_7172579_left_checked

theorem cover_7172579 : CoveredBy scale carrier boxes root_7172579 := by
  apply coveredBy_split_literal root_7172579 small_7172579_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2701.root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact small_7172579_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2701.covered
#print axioms cover_7172579

def root_7172573 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7172573_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7172573_left_fuel : Nat := 1
def small_7172573_left_count : Nat := 1
def small_7172573_left_encoded : String := "00000003"
theorem small_7172573_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7172573_left_root small_7172573_left_fuel small_7172573_left_count small_7172573_left_encoded = true := by
  decide +kernel
theorem small_7172573_left_covered : CoveredBy scale carrier boxes small_7172573_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7172573_left_root small_7172573_left_fuel small_7172573_left_count small_7172573_left_encoded small_7172573_left_checked

theorem cover_7172573 : CoveredBy scale carrier boxes root_7172573 := by
  apply coveredBy_split_literal root_7172573 small_7172573_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0490.root_7172579 coord3 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_7172573_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0490.cover_7172579
#print axioms cover_7172573

def root_7170431 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7170431 : CoveredBy scale carrier boxes root_7170431 := by
  apply coveredBy_split_literal root_7170431 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2700.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0490.root_7172573 coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2700.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0490.cover_7172573
#print axioms cover_7170431

def root_7170425 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7170425_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7170425_left_fuel : Nat := 1
def small_7170425_left_count : Nat := 1
def small_7170425_left_encoded : String := "00000002"
theorem small_7170425_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7170425_left_root small_7170425_left_fuel small_7170425_left_count small_7170425_left_encoded = true := by
  decide +kernel
theorem small_7170425_left_covered : CoveredBy scale carrier boxes small_7170425_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7170425_left_root small_7170425_left_fuel small_7170425_left_count small_7170425_left_encoded small_7170425_left_checked

theorem cover_7170425 : CoveredBy scale carrier boxes root_7170425 := by
  apply coveredBy_split_literal root_7170425 small_7170425_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0490.root_7170431 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_7170425_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0490.cover_7170431
#print axioms cover_7170425

def root_7176891 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7176891_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7176891_left_fuel : Nat := 29
def small_7176891_left_count : Nat := 241
def small_7176891_left_encoded : String := "1152250908A912F712073D0008A9130312070102000000010000000912073D0208A91309120700FE000000050000000412073CFE00000004050000FA135D80FB00000002050000FC00000005135D4507000000030CFD9BF7000000050F34D1000000000000000009135D44FB050000FC00000005135D4507000000030CFD9BF70F350D0000000005000000000F34D100000000000CFD9C030F34D10200000001000000090F350D020CFD9C09000000050F350CFE000000040C9A8702000000050F878D03000000090000000100000001000000020000000100000000120701000000000008A9130312070102000000010000000912073D0208A91309120700FE000000090000000412073CFE00000004050000FA135D80FB00000002050000FC135D8107045489F71386AD000CFD9C03000000050F350D0200000005000000010000000013867100000000000CFD9C03000000090F350D020CFD9C09000000050F350CFE000000040C9A87020F875103000000010C9A86FE000000050F87510900000004078000FA00000005128A40FB0000000500000002000000090000000100000003135D450700000003045489F700000009138671000000000000000009135D44FB050000FC135D8107045489F71386AD000CFD9C030F34D10200000001000000090F350D020CFD9C09000000050F350CFE000000040C9A8702000000050F878D030000000500000001000000010000000013867100000000000CFD9C030F34D10200000001000000090F350D020CFD9C090F34D0FE00000005000000040F350CFE000000040C9A87020F875103000000010C9A86FE0F878D0900000005000000040F87510900000004028000FA13D7ECFB00000002078000FC000000050000000813D7B0FB078000FC0000000500000008000000020F878D030C9A86FE000000090F87510900000004028000FA0000000913D7B0FB078000FC128A7D07022A45770000000513E1C500000000000DE7CA02000000050000000900000003128A410700000003022A45770000000913E1C500000000000000000900000002000000010000000100000003135D450700000003045489F71386AD000CFD9C030F34D10200000001000000090F350D020CFD9C090F34D0FE00000005000000040F350CFE000000040C9A87020F875103000000010C9A86FE000000080000000700000009000000010000000013867100000000000CFD9C030F34D10200000001000000090F350D020CFD9C090F34D0FE00000008000000040F350CFE000000040C9A8702000000080F878D03000000090000000100000001000000020000000100000004"
theorem small_7176891_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7176891_left_root small_7176891_left_fuel small_7176891_left_count small_7176891_left_encoded = true := by
  decide +kernel
theorem small_7176891_left_covered : CoveredBy scale carrier boxes small_7176891_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7176891_left_root small_7176891_left_fuel small_7176891_left_count small_7176891_left_encoded small_7176891_left_checked

theorem cover_7176891 : CoveredBy scale carrier boxes root_7176891 := by
  apply coveredBy_split_literal root_7176891 small_7176891_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2702.root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact small_7176891_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2702.covered
#print axioms cover_7176891

def root_7176885 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7176885_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7176885_left_fuel : Nat := 1
def small_7176885_left_count : Nat := 1
def small_7176885_left_encoded : String := "00000003"
theorem small_7176885_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7176885_left_root small_7176885_left_fuel small_7176885_left_count small_7176885_left_encoded = true := by
  decide +kernel
theorem small_7176885_left_covered : CoveredBy scale carrier boxes small_7176885_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7176885_left_root small_7176885_left_fuel small_7176885_left_count small_7176885_left_encoded small_7176885_left_checked

theorem cover_7176885 : CoveredBy scale carrier boxes root_7176885 := by
  apply coveredBy_split_literal root_7176885 small_7176885_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0490.root_7176891 coord3 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_7176885_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0490.cover_7176891
#print axioms cover_7176885

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0490
