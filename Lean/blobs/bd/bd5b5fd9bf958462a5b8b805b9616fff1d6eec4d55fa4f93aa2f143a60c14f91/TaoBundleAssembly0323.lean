import TaoBundleAssembly0320
import TaoBundleAssembly0321
import TaoBundleAssembly0322
import TaoBundleChunkBatch0424
import TaoBundleChunkBatch0425
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0323
def root_4510483 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4510483_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4510483_left_fuel : Nat := 29
def small_4510483_left_count : Nat := 349
def small_4510483_left_encoded : String := "12073CFC0000000308A912FF12073D08050000F6135D810105000102135D45030000000100000006135D8103050000FA135D81050CFD9BFD000000050F34D0FC000000050000000300000002135D4505000000020CFD9BFD000000060F34D0FC0000000600000003000000010000000000000006000000041207010800000004050000F6135D810105000102135D450300000001050000FA135D81050CFD9BFD0F350CFC00000003045489FF0000000513867108000000040C9A86FC00000006000000060F34D0FC045489FF000000061386710800000004078000F6128A7D010280010213D7B10300000001078000FA000000060000000913D7ED03078000FA128A7D050AD3577D0000000510D100FC000000060000000300000002128A4105000000020AD3577D0000000610D100FC0000000A000000030000000100000000000000060000000300000002135D4505000000020CFD9BFD0F350CFC00000003045489FF00000006000000090F34D0FC045489FF000000060000000A00000003135D8103050000FA135D81050CFD9BFD0F350CFC00000003045489FF1386AD080C9A86FC000000050F8750FD00000005000000030000000413867108000000040C9A86FC0F878CFD00000003078000F6128A7D0107800102128A410300000001078000FA000000050000000A128A7D03078000FA000000050000000A0000000100000000128A4101000000000000000A0F8750FD078000F6128A7D010780010200000005128A7D03078000FA000000050000000A000000010000000000000006000000030F34D0FC045489FF1386AD08078000F6128A7D010780010200000005128A7D0300000005000000010000000000000006000000041386710800000004078000F6128A7D0107800102128A410300000001078000FA128A7D050AD3577D0000000510D100FC022A457F0000000513E1C5080000000408C000F611FC25010640010212FF71030000000108C000FA000000050000000A12FFAD0308C000FA000000050000000A000000010000000011FBE901000000000000000A0000000300000002128A4105000000020AD3577D0000000A10D100FC0000000A00000003128A7D03078000FA128A7D050AD3577D0000000510D100FC022A457F0000000513E1C5080000000408C000F611FC250100000008000000000000000A0000000300000002128A4105000000020AD3577D0000000A10D100FC0000000A000000030000000100000000128A41010000000007800102128A410300000001078000FA128A7D050AD3577D0000000610D100FC0000000600000003000000020000000A128A7D03078000FA128A7D050AD3577D0000000A10D100FC0000000A00000003000000020000000A000000010000000300000002135D4505000000020CFD9BFD0F350CFC00000003045489FF1386AD080C9A86FC0F878CFD00000003078000F6128A7D0107800102000000050000000A00000000000000060F8750FD0000000600000003000000040000000A0F34D0FC045489FF1386AD08078000F6128A7D0107800102128A41030000000100000007128A7D03000000080000000100000000128A41010000000007800102000000060000000A000000041386710800000004078000F6128A7D010000000A000000000000000A000000030000000100000000135D45010000000005000102135D450300000001050000FA00000006135D4505000000020CFD9BFD000000060F34D0FC0000000600000003135D8103050000FA135D81050CFD9BFD0F350CFC00000003045489FF000000060000000A0F34D0FC045489FF000000061386710800000004028000F613D7ED01078001020000000A0000000A00000000000000060000000300000002135D4505000000020CFD9BFD0000000A0F34D0FC0000000A0000000300000001"
theorem small_4510483_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4510483_left_root small_4510483_left_fuel small_4510483_left_count small_4510483_left_encoded = true := by
  decide +kernel
theorem small_4510483_left_covered : CoveredBy scale carrier boxes small_4510483_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4510483_left_root small_4510483_left_fuel small_4510483_left_count small_4510483_left_encoded small_4510483_left_checked

theorem cover_4510483 : CoveredBy scale carrier boxes root_4510483 := by
  apply coveredBy_split_literal root_4510483 small_4510483_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0322.root_4511221 coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_4510483_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0322.cover_4511221
#print axioms cover_4510483

def root_4510477 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4510477_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4510477_left_fuel : Nat := 1
def small_4510477_left_count : Nat := 1
def small_4510477_left_encoded : String := "00000004"
theorem small_4510477_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4510477_left_root small_4510477_left_fuel small_4510477_left_count small_4510477_left_encoded = true := by
  decide +kernel
theorem small_4510477_left_covered : CoveredBy scale carrier boxes small_4510477_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4510477_left_root small_4510477_left_fuel small_4510477_left_count small_4510477_left_encoded small_4510477_left_checked

theorem cover_4510477 : CoveredBy scale carrier boxes root_4510477 := by
  apply coveredBy_split_literal root_4510477 small_4510477_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0323.root_4510483 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_4510477_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0323.cover_4510483
#print axioms cover_4510477

def root_4510469 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4510469_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4510469_left_fuel : Nat := 2
def small_4510469_left_count : Nat := 3
def small_4510469_left_encoded : String := "1151E8FF0000000600000004"
theorem small_4510469_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4510469_left_root small_4510469_left_fuel small_4510469_left_count small_4510469_left_encoded = true := by
  decide +kernel
theorem small_4510469_left_covered : CoveredBy scale carrier boxes small_4510469_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4510469_left_root small_4510469_left_fuel small_4510469_left_count small_4510469_left_encoded small_4510469_left_checked

theorem cover_4510469 : CoveredBy scale carrier boxes root_4510469 := by
  apply coveredBy_split_literal root_4510469 small_4510469_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0323.root_4510477 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_4510469_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0323.cover_4510477
#print axioms cover_4510469

def root_4510463 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4510463_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4510463_left_fuel : Nat := 1
def small_4510463_left_count : Nat := 1
def small_4510463_left_encoded : String := "00000003"
theorem small_4510463_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4510463_left_root small_4510463_left_fuel small_4510463_left_count small_4510463_left_encoded = true := by
  decide +kernel
theorem small_4510463_left_covered : CoveredBy scale carrier boxes small_4510463_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4510463_left_root small_4510463_left_fuel small_4510463_left_count small_4510463_left_encoded small_4510463_left_checked

theorem cover_4510463 : CoveredBy scale carrier boxes root_4510463 := by
  apply coveredBy_split_literal root_4510463 small_4510463_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0323.root_4510469 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_4510463_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0323.cover_4510469
#print axioms cover_4510463

def root_4510462 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4510462_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4510462_right_fuel : Nat := 22
def small_4510462_right_count : Nat := 113
def small_4510462_right_encoded : String := "1151E8FD0A0001081151E8FF0000000500000004115224FF0000000408A912FF12073D08050000F6135D81010500010200000006135D8103050000FA00000006135D45050000000200000006000000010000000000000006000000041207010800000004050000F6135D810105000102135D450300000001050000FA135D8105050000FC00000006000000060000000200000009135D8103050000FA135D8105050000FC135D80FD00000003045489FF000000061386710800000004078000F6128A7D010780010200000009128A7D03078000FA128A7D050000000500000002000000090000000100000000128A41010000000007800102000000060000000A135D44FD045489FF000000061386710800000004078000F600000009000000060000000300000002135D450500000002050000FC135D80FD00000003045489FF1386AD08078000F600000007000000060000000400000009135D44FD045489FF0000000700000009000000030000000100000000135D45010000000005000102135D45030000000100000006135D8103050000FA135D8105050000FC000000060000000600000002135D450500000002050000FC000000060000000A0000000100000003"
theorem small_4510462_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4510462_right_root small_4510462_right_fuel small_4510462_right_count small_4510462_right_encoded = true := by
  decide +kernel
theorem small_4510462_right_covered : CoveredBy scale carrier boxes small_4510462_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4510462_right_root small_4510462_right_fuel small_4510462_right_count small_4510462_right_encoded small_4510462_right_checked

theorem cover_4510462 : CoveredBy scale carrier boxes root_4510462 := by
  apply coveredBy_split_literal root_4510462 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0323.root_4510463 small_4510462_right_root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0323.cover_4510463
  · exact small_4510462_right_covered
#print axioms cover_4510462

def root_4510456 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4510456_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4510456_left_fuel : Nat := 1
def small_4510456_left_count : Nat := 1
def small_4510456_left_encoded : String := "00000002"
theorem small_4510456_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4510456_left_root small_4510456_left_fuel small_4510456_left_count small_4510456_left_encoded = true := by
  decide +kernel
theorem small_4510456_left_covered : CoveredBy scale carrier boxes small_4510456_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4510456_left_root small_4510456_left_fuel small_4510456_left_count small_4510456_left_encoded small_4510456_left_checked

theorem cover_4510456 : CoveredBy scale carrier boxes root_4510456 := by
  apply coveredBy_split_literal root_4510456 small_4510456_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0323.root_4510462 coord2 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_4510456_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0323.cover_4510462
#print axioms cover_4510456

def root_4503108 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4503108 : CoveredBy scale carrier boxes root_4503108 := by
  apply coveredBy_split_literal root_4503108 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0321.root_4503109 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0323.root_4510456 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0321.cover_4503109
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0323.cover_4510456
#print axioms cover_4503108

def root_4503102 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4503102_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4503102_left_fuel : Nat := 1
def small_4503102_left_count : Nat := 1
def small_4503102_left_encoded : String := "00000001"
theorem small_4503102_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4503102_left_root small_4503102_left_fuel small_4503102_left_count small_4503102_left_encoded = true := by
  decide +kernel
theorem small_4503102_left_covered : CoveredBy scale carrier boxes small_4503102_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4503102_left_root small_4503102_left_fuel small_4503102_left_count small_4503102_left_encoded small_4503102_left_checked

theorem cover_4503102 : CoveredBy scale carrier boxes root_4503102 := by
  apply coveredBy_split_literal root_4503102 small_4503102_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0323.root_4503108 coord1 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_4503102_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0323.cover_4503108
#print axioms cover_4503102

def root_4525318 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4525318 : CoveredBy scale carrier boxes root_4525318 := by
  apply coveredBy_split_literal root_4525318 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1696.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1697.root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1696.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1697.covered
#print axioms cover_4525318

def root_4525312 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4525312_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4525312_left_fuel : Nat := 1
def small_4525312_left_count : Nat := 1
def small_4525312_left_encoded : String := "00000002"
theorem small_4525312_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4525312_left_root small_4525312_left_fuel small_4525312_left_count small_4525312_left_encoded = true := by
  decide +kernel
theorem small_4525312_left_covered : CoveredBy scale carrier boxes small_4525312_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4525312_left_root small_4525312_left_fuel small_4525312_left_count small_4525312_left_encoded small_4525312_left_checked

theorem cover_4525312 : CoveredBy scale carrier boxes root_4525312 := by
  apply coveredBy_split_literal root_4525312 small_4525312_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0323.root_4525318 coord2 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_4525312_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0323.cover_4525318
#print axioms cover_4525312

def root_4522574 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4522574 : CoveredBy scale carrier boxes root_4522574 := by
  apply coveredBy_split_literal root_4522574 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1695.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0323.root_4525312 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1695.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0323.cover_4525312
#print axioms cover_4522574

def root_4522569 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4522569_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4522569_right_fuel : Nat := 1
def small_4522569_right_count : Nat := 1
def small_4522569_right_encoded : String := "00000001"
theorem small_4522569_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4522569_right_root small_4522569_right_fuel small_4522569_right_count small_4522569_right_encoded = true := by
  decide +kernel
theorem small_4522569_right_covered : CoveredBy scale carrier boxes small_4522569_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4522569_right_root small_4522569_right_fuel small_4522569_right_count small_4522569_right_encoded small_4522569_right_checked

theorem cover_4522569 : CoveredBy scale carrier boxes root_4522569 := by
  apply coveredBy_split_literal root_4522569 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0323.root_4522574 small_4522569_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0323.cover_4522574
  · exact small_4522569_right_covered
#print axioms cover_4522569

def root_4503101 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4503101 : CoveredBy scale carrier boxes root_4503101 := by
  apply coveredBy_split_literal root_4503101 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0323.root_4503102 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0323.root_4522569 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0323.cover_4503102
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0323.cover_4522569
#print axioms cover_4503101

def root_4503095 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4503095_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4503095_left_fuel : Nat := 1
def small_4503095_left_count : Nat := 1
def small_4503095_left_encoded : String := "00000000"
theorem small_4503095_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4503095_left_root small_4503095_left_fuel small_4503095_left_count small_4503095_left_encoded = true := by
  decide +kernel
theorem small_4503095_left_covered : CoveredBy scale carrier boxes small_4503095_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4503095_left_root small_4503095_left_fuel small_4503095_left_count small_4503095_left_encoded small_4503095_left_checked

theorem cover_4503095 : CoveredBy scale carrier boxes root_4503095 := by
  apply coveredBy_split_literal root_4503095 small_4503095_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0323.root_4503101 coord0 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_4503095_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0323.cover_4503101
#print axioms cover_4503095

def root_4496263 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4496263 : CoveredBy scale carrier boxes root_4496263 := by
  apply coveredBy_split_literal root_4496263 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0320.root_4496264 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0323.root_4503095 coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0320.cover_4496264
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0323.cover_4503095
#print axioms cover_4496263

def root_4537645 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(16243968), (16645888)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4537645 : CoveredBy scale carrier boxes root_4537645 := by
  apply coveredBy_split_literal root_4537645 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1699.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1700.root coord3 true (-5448672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1699.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1700.covered
#print axioms cover_4537645

def root_4537640 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4537640_right_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(16645888), (16777216)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4537640_right_fuel : Nat := 1
def small_4537640_right_count : Nat := 1
def small_4537640_right_encoded : String := "00000001"
theorem small_4537640_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4537640_right_root small_4537640_right_fuel small_4537640_right_count small_4537640_right_encoded = true := by
  decide +kernel
theorem small_4537640_right_covered : CoveredBy scale carrier boxes small_4537640_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4537640_right_root small_4537640_right_fuel small_4537640_right_count small_4537640_right_encoded small_4537640_right_checked

theorem cover_4537640 : CoveredBy scale carrier boxes root_4537640 := by
  apply coveredBy_split_literal root_4537640 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0323.root_4537645 small_4537640_right_root coord1 true (16645888)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0323.cover_4537645
  · exact small_4537640_right_covered
#print axioms cover_4537640

def root_4537180 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4537180_left_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(0), (2097152)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4537180_left_fuel : Nat := 21
def small_4537180_left_count : Nat := 219
def small_4537180_left_encoded : String := "13D7B10300000001067ECE7D12EA94FC00000003022A458913E1C508000000040B4D43F610804D010B4D43FA10804D0500000005000000021080110500000002014001020000000913F615030793F0BD00000005128220FC01152349000000050000000900000003000000010000000010801101000000000B4D43FA10804D0500000008000000021080110500000002014001020000000813F615030793F0BD00000009128220FC0115234913F85908000000040AA6A276000000090000000600000008000000030000000113E201080B4D43F610804D010B4D43FA10804D0500000008000000021080110500000002014001020000000813F615030793F0BD00000009128220FC00000009000000030000000100000000000000080000000412EA58FC022A458913E1C508000000040B4D43F610804D010B4D43FA10804D05014001020000000813F615030569AC3D134110FC000000030115234900000005000000080000000A000000010000000210801105000000020140010213F5D903000000010569AC3D134110FC000000030115234900000007000000081340D4FC0115234900000007000000080000000313F615030569AC3D134110FC000000030115234913F85908000000040BF3E576100929010AA6A27A0000000A00000007000000001008ED01000000000AA6A27A10EDAD0501E00102000000080000000A000000020000000913F895080BF3E576100929010AA6A27A10EDAD0501E00102000000080000000A0000000200000009000000001008ED01000000000AA6A27A0000000800000009000000041340D4FC0115234913F85908000000040BF3E5760000000A1008ED01000000000000000A13F895080BF3E576100929010000000A000000001008ED0100000000000000080000000400000003000000010000000010801101000000000B4D43FA10804D0500000008000000021080110500000002014001020000000813F615030569AC3D134110FC0000000300000008000000080000000113E201080B4D43F610804D010B4D43FA10804D0500000008000000021080110500000002014001020000000813F615030569AC3D134110FC00000003033F67C913BBF508000000040BF3E5760000000900000008000000081340D4FC033F67C913BBF508000000040000000800000005000000030000000100000000000000080000000400000003"
theorem small_4537180_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4537180_left_root small_4537180_left_fuel small_4537180_left_count small_4537180_left_encoded = true := by
  decide +kernel
theorem small_4537180_left_covered : CoveredBy scale carrier boxes small_4537180_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4537180_left_root small_4537180_left_fuel small_4537180_left_count small_4537180_left_encoded small_4537180_left_checked

theorem cover_4537180 : CoveredBy scale carrier boxes root_4537180 := by
  apply coveredBy_split_literal root_4537180 small_4537180_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0323.root_4537640 coord1 false (2097152)
  · decide +kernel
  · decide +kernel
  · exact small_4537180_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0323.cover_4537640
#print axioms cover_4537180

def root_4537174 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4537174_left_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(10897344), (13026304)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4537174_left_fuel : Nat := 1
def small_4537174_left_count : Nat := 1
def small_4537174_left_encoded : String := "00000002"
theorem small_4537174_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4537174_left_root small_4537174_left_fuel small_4537174_left_count small_4537174_left_encoded = true := by
  decide +kernel
theorem small_4537174_left_covered : CoveredBy scale carrier boxes small_4537174_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4537174_left_root small_4537174_left_fuel small_4537174_left_count small_4537174_left_encoded small_4537174_left_checked

theorem cover_4537174 : CoveredBy scale carrier boxes root_4537174 := by
  apply coveredBy_split_literal root_4537174 small_4537174_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0323.root_4537180 coord2 true (13026304)
  · decide +kernel
  · decide +kernel
  · exact small_4537174_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0323.cover_4537180
#print axioms cover_4537174

def root_4536928 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4536928_left_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-12756736), (-10572672)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4536928_left_fuel : Nat := 17
def small_4536928_left_count : Nat := 117
def small_4536928_left_encoded : String := "0F878D050280010213D7B10300000001067ECE7D12EA94FC00000003022A458913E1C508000000040B4D43F610804D010000000500000000000000050000000812EA58FC022A458913E1C508000000040B4D43F610804D01000000080000000000000008000000080000000313D7ED03067ECE7D12EA94FC00000003022A45890000000513E201080B4D43F610804D010DE7C9FA0E60150500000005000000020E5FD9050000000203C0010213A51103000000010793F0BD000000050000000813A54D030793F0BD0000000500000007000000010000000010801101000000000DE7C9FA000000070E5FD9050000000203C0010200000008000000070000000412EA58FC022A458913E1C508000000040B4D43F610804D010DE7C9FA0000000A0E5FD905000000020000000A0000000010801101000000000DE7C9FA0E60150500000008000000020E5FD9050000000203C001020000000813A54D030569AC3D134110FC00000003011523490000000500000007000000080000000113E201080B4D43F610804D010DE7C9FA0E60150500000007000000020E5FD9050000000203C001020000000813A54D030569AC3D000000070000000600000001000000000000000800000004000000030000000100000002"
theorem small_4536928_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4536928_left_root small_4536928_left_fuel small_4536928_left_count small_4536928_left_encoded = true := by
  decide +kernel
theorem small_4536928_left_covered : CoveredBy scale carrier boxes small_4536928_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4536928_left_root small_4536928_left_fuel small_4536928_left_count small_4536928_left_encoded small_4536928_left_checked

theorem cover_4536928 : CoveredBy scale carrier boxes root_4536928 := by
  apply coveredBy_split_literal root_4536928 small_4536928_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0323.root_4537174 coord2 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact small_4536928_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0323.cover_4537174
#print axioms cover_4536928

def root_4536922 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4536922_left_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(10897344), (13026304)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4536922_left_fuel : Nat := 1
def small_4536922_left_count : Nat := 1
def small_4536922_left_encoded : String := "00000000"
theorem small_4536922_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4536922_left_root small_4536922_left_fuel small_4536922_left_count small_4536922_left_encoded = true := by
  decide +kernel
theorem small_4536922_left_covered : CoveredBy scale carrier boxes small_4536922_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4536922_left_root small_4536922_left_fuel small_4536922_left_count small_4536922_left_encoded small_4536922_left_checked

theorem cover_4536922 : CoveredBy scale carrier boxes root_4536922 := by
  apply coveredBy_split_literal root_4536922 small_4536922_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0323.root_4536928 coord0 true (13026304)
  · decide +kernel
  · decide +kernel
  · exact small_4536922_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0323.cover_4536928
#print axioms cover_4536922

def root_4536196 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4536196_left_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-10572672)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4536196_left_fuel : Nat := 23
def small_4536196_left_count : Nat := 345
def small_4536196_left_encoded : String := "0F878D010C9A86FA0F878D050280010213D7B10300000001067ECE7D12EA94FC00000003022A45890000000513E201080DE7C9F60E60150100000005000000000E5FD901000000000DE7C9FA0E60150500000005000000020E5FD90500000002014001020000000813F615030793F0BD000000050000000A000000010000000412EA58FC0000000A0000000313D7ED03067ECE7D12EA94FC00000003022A45890000000513E201080DE7C9F60E60150100000005000000000E5FD901000000000DE7C9FA0E6015050000000500000002000000050000000412EA58FC022A45890000000A13E201080DE7C9F6000000060E5FD901000000000000000A000000040000000300000001000000020F875105000000020280010213D7B10300000001067ECE7D12EA94FC00000003022A458913E1C508000000040DE7C9F60E60150100000005000000000000000513E201080DE7C9F60E6015010B4D43FA10804D050140010213F5D903000000010793F0BD000000050000000A13F615030793F0BD00000005000000060000000100000002108011050000000200000009000000000E5FD901000000000B4D43FA10804D050140010213F5D903000000010793F0BD000000090000000813F615030793F0BD00000005128220FC033F67C90000000513BC31080D4128760000000600000008000000040000000300000001000000021080110500000002000000090000000412EA58FC022A458913E1C508000000040DE7C9F60E6015010000000A000000000E5FD901000000000B4D43FA0000000A10801105000000020140010213F5D903000000010569AC3D134110FC00000003000000070000000713F615030569AC3D134110FC00000003011523490000000513F895080D412876000000090EFA1101000000000AA6A27A0000000A00000009000000040000000A0000000113E201080DE7C9F60E6015010B4D43FA0000000A00000006000000000E5FD901000000000B4D43FA10804D050140010213F5D903000000010000000A13F615030569AC3D134110FC00000003033F67C90000000A0000000600000006000000010000000210801105000000020140010213F5D903000000010569AC3D000000091340D4FC033F67C90000000A000000060000000313F615030569AC3D134110FC00000003033F67C913BBF508000000040D412876000000060EFA11010000000000000009000000060000000600000001000000040000000313D7ED03067ECE7D12EA94FC00000003022A45890000000513E201080DE7C9F60E6015010B4D43FA10804D05000000050000000200000006000000000E5FD901000000000B4D43FA10804D0503C0010213A51103000000010793F0BD00000005128220FC033F67C900000005000000060000000313A54D030793F0BD00000005000000060000000100000002108011050000000203C0010213A51103000000010793F0BD00000009128220FC033F67C913BBF508000000040D412876000000060EFA11010000000000000009000000060000000313A54D030793F0BD12825CFC00000003033F67C9000000050000000600000006000000010000000412EA58FC022A458913E1C508000000040DE7C9F60E6015010000000A000000000E5FD901000000000B4D43FA10804D050000000A00000002108011050000000203C0010213A51103000000010569AC3D134110FC00000003011523490000000513F895080D412876000000060EFA1101000000000AA6A27A0000000A00000006000000040000000A13A54D030569AC3D134110FC00000003011523490000000500000006000000060000000113E201080DE7C9F6000000060E5FD901000000000B4D43FA10804D0500000006000000020000000600000004000000030000000100000000"
theorem small_4536196_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4536196_left_root small_4536196_left_fuel small_4536196_left_count small_4536196_left_encoded = true := by
  decide +kernel
theorem small_4536196_left_covered : CoveredBy scale carrier boxes small_4536196_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4536196_left_root small_4536196_left_fuel small_4536196_left_count small_4536196_left_encoded small_4536196_left_checked

theorem cover_4536196 : CoveredBy scale carrier boxes root_4536196 := by
  apply coveredBy_split_literal root_4536196 small_4536196_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0323.root_4536922 coord0 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact small_4536196_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0323.cover_4536922
#print axioms cover_4536196

def root_4536190 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4536190_left_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4536190_left_fuel : Nat := 1
def small_4536190_left_count : Nat := 1
def small_4536190_left_encoded : String := "00000004"
theorem small_4536190_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4536190_left_root small_4536190_left_fuel small_4536190_left_count small_4536190_left_encoded = true := by
  decide +kernel
theorem small_4536190_left_covered : CoveredBy scale carrier boxes small_4536190_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4536190_left_root small_4536190_left_fuel small_4536190_left_count small_4536190_left_encoded small_4536190_left_checked

theorem cover_4536190 : CoveredBy scale carrier boxes root_4536190 := by
  apply coveredBy_split_literal root_4536190 small_4536190_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0323.root_4536196 coord4 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_4536190_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0323.cover_4536196
#print axioms cover_4536190

def root_4536189 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4536189_right_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4536189_right_fuel : Nat := 21
def small_4536189_right_count : Nat := 257
def small_4536189_right_encoded : String := "1386AD080C9A86F60F878D010C9A86FA0F878D050280010213D7B10300000001067ECE7D12EA94FC00000003067ECE8912EA5908000000040DE7C9F60E6015010DE7C9FA0E6015050000000A000000020E5FD905000000020140010213F5D903000000010793F0BD12825CFC000000030569AC4900000005000000060000000600000006000000000E5FD901000000000000000812EA95080DE7C9F600000006000000080000000412EA58FC067ECE8912EA5908000000040DE7C9F60000000600000008000000060000000313D7ED03067ECE7D12EA94FC00000003067ECE8912EA5908000000040DE7C9F6000000060E5FD901000000000DE7C9FA000000070E5FD9050000000200000006000000060000000600000001000000020F875105000000020280010213D7B10300000001067ECE7D12EA94FC00000003067ECE8912EA5908000000040DE7C9F60E6015010B4D43FA10804D050140010200000009000000060000000200000006000000000E5FD901000000000B4D43FA10804D05014001020000000813F615030793F0BD000000090000000600000001000000020000000912EA95080DE7C9F6000000060E5FD90100000000000000080000000412EA58FC067ECE8912EA5908000000040DE7C9F6000000060E5FD901000000000B4D43FA10804D05000000060000000200000006000000060000000313D7ED03067ECE7D12EA94FC00000003067ECE8912EA5908000000040DE7C9F6000000060E5FD901000000000B4D43FA10804D05000000060000000200000006000000060000000600000001000000000F875101000000000C9A86FA0F878D05028001020000000813D7ED03067ECE7D12EA94FC00000003067ECE8912EA5908000000040B4D43F600000007000000070000000712EA58FC067ECE8900000008000000070000000300000001000000020F875105000000020280010213D7B10300000001067ECE7D12EA94FC00000003000000080000000813D7ED03067ECE7D12EA94FC00000003067ECE8912EA5908000000040B4D43F610804D010B4D43FA10804D0503C0010213A5110300000001000000080000000700000002108011050000000203C0010213A51103000000010793F0BD000000090000000613A54D030793F0BD12825CFC000000030000000600000006000000010000000010801101000000000B4D43FA10804D050000000700000002108011050000000203C001020000000813A54D030793F0BD00000007000000050000000112EA95080B4D43F610804D010B4D43FA000000070000000600000000000000080000000412EA58FC067ECE8912EA5908000000040B4D43F610804D010B4D43FA10804D050000000600000002000000060000000010801101000000000000000500000005000000030000000100000004"
theorem small_4536189_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4536189_right_root small_4536189_right_fuel small_4536189_right_count small_4536189_right_encoded = true := by
  decide +kernel
theorem small_4536189_right_covered : CoveredBy scale carrier boxes small_4536189_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4536189_right_root small_4536189_right_fuel small_4536189_right_count small_4536189_right_encoded small_4536189_right_checked

theorem cover_4536189 : CoveredBy scale carrier boxes root_4536189 := by
  apply coveredBy_split_literal root_4536189 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0323.root_4536190 small_4536189_right_root coord4 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0323.cover_4536190
  · exact small_4536189_right_covered
#print axioms cover_4536189

def root_4536183 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4536183_left_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-16379648)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4536183_left_fuel : Nat := 1
def small_4536183_left_count : Nat := 1
def small_4536183_left_encoded : String := "00000003"
theorem small_4536183_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4536183_left_root small_4536183_left_fuel small_4536183_left_count small_4536183_left_encoded = true := by
  decide +kernel
theorem small_4536183_left_covered : CoveredBy scale carrier boxes small_4536183_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4536183_left_root small_4536183_left_fuel small_4536183_left_count small_4536183_left_encoded small_4536183_left_checked

theorem cover_4536183 : CoveredBy scale carrier boxes root_4536183 := by
  apply coveredBy_split_literal root_4536183 small_4536183_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0323.root_4536189 coord3 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_4536183_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0323.cover_4536189
#print axioms cover_4536183

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0323
