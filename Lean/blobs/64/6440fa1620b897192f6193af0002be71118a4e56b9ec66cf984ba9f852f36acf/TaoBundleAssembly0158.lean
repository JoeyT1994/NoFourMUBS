import TaoBundleAssembly0157
import TaoBundleChunkBatch0609
import TaoBundleChunkBatch0612
import TaoBundleChunkBatch0613
import TaoBundleChunkBatch0614
import TaoBundleChunkBatch0615
import TaoBundleChunkBatch0616
import TaoBundleChunkBatch0617
import TaoBundleChunkBatch0618
import TaoBundleChunkBatch0619
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158
def root_6473532 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6473532_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6473532_left_fuel : Nat := 28
def small_6473532_left_count : Nat := 427
def small_6473532_left_encoded : String := "12073CFC0000000308A912FF12073D080CFD9BF70F350D00045489F91386AD02045489FB1386ACFA000000020CFD9BFD0F350CFC00000003000000050F34D0FC0CFD9BFF0F350D080C9A87000F8750F7000000050000000000000005000000040F34D108000000040C9A87000F8750F7067ECE790000000500000009000000000F878CF700000000067ECE790000000512EA590200000001067ECE7B0000000512EA58FA000000090000000200000003138670FA0CFD9BFD0F350CFC000000030CFD9BFF0F350D080000000A000000040000000A0F34D0FC0CFD9BFF0F350D080C9A87000F8750F70C9A87080000000A0F878CFF00000004067ECE790000000500000009000000000000000A000000040F34D108000000040C9A8700000000090F878CF700000000000000090000000300000002000000011386710200000001045489FB1386ACFA000000020CFD9BFD0F350CFC000000030CFD9BFF000000050F34D10800000004000000050F34D0FC0CFD9BFF0F350D080C9A87000F8750F70C9A87080F8750FF00000005000000040F878CFF00000004022A45790000000513E1C50200000001067ECE7B0000000512EA58FA0AD3577D0000000510D100FC0B4D440000000009000000050000000300000002000000000F878CF7000000000C9A87080F8750FF022A45790000000513E1C50200000001067ECE7B000000050000000A000000040F878CFF00000004022A45790000000513E1C50200000001067ECE7B0000000512EA58FA0AD3577D0000000510D100FC0DE7CA000E5FD8F70DE7CA080E5FD8FF000000050000000400000005000000000E6014F7000000000000000A0000000300000002000000040F34D108000000040C9A87000F8750F7022A45790000000900000009000000000F878CF700000000022A457913E20102067ECE7B0000000512EA58FA00000009000000020000000113E1C50200000001067ECE7B12EA94FA000000020AD3577D0000000510D100FC0AD3577F00000005000000090000000312EA58FA000000090000000200000003138670FA0CFD9BFD0F350CFC000000030CFD9BFF0F350D080C9A8700000000090000000A00000004000000090F34D0FC0CFD9BFF0F350D080C9A87000F8750F70C9A87080F8750FF022A457913E20102022A457B000000050000000A0000000113E1C50200000001022A457B13E200FA000000020AD3577D0000000510D100FC0B4D4400108010F7000000070000000010804CF7000000000000000A0000000313E1C4FA0AD3577D0000000610D100FC000000060000000300000002000000040F878CFF00000004022A45790000000900000009000000000F878CF7000000000C9A87080000000A0F878CFF00000004022A45790000000A13E1C50200000001022A457B13E200FA000000020AD3577D0000000910D100FC0DE7CA000E5FD8F70DE7CA080000000900000008000000000000000A000000030000000A000000040F34D108000000040C9A8700000000090F878CF700000000000000090000000300000002000000000F34D10000000000045489F91386AD02045489FB1386ACFA000000020CFD9BFD0000000A0F34D0FC0CFD9BFF0F350D080000000A000000040F34D108000000040AD3577710D13D00067ECE79000000050000000A000000000000000A000000030000000A000000011386710200000001045489FB1386ACFA000000020CFD9BFD0F350CFC000000030000000A0F34D0FC0CFD9BFF0F350D080C9A87080000000A0F878CFF000000040AD3577710D13D00022A45790000000513E1C50200000001067ECE7B000000050000000A000000000000000A000000040F34D108000000040AD3577710D13D00022A457913E20102067ECE7B000000050000000A0000000113E1C50200000001067ECE7B12EA94FA000000020AD3577D0000000510D100FC0AD3577F0000000510D1010800000004000000050000000312EA58FA0AD3577D0000000910D100FC0AD3577F10D13D080000000A000000040000000900000003000000020000000010D10100000000000000000A00000003138670FA0CFD9BFD0000000A0F34D0FC0CFD9BFF0F350D080000000A000000040000000A00000003000000020000000412070108000000040CFD9BF70F350D00045489F91386AD02000000090000000100000009000000000F34D10000000000045489F91386AD02045489FB1386ACFA000000020CFD9BFD000000090F34D0FC000000070000000300000009000000011386710200000001045489FB1386ACFA000000020CFD9BFD000000090F34D0FC045489FF1386AD080AD35777000000090000000900000004000000070000000300000009"
theorem small_6473532_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6473532_left_root small_6473532_left_fuel small_6473532_left_count small_6473532_left_encoded = true := by
  decide +kernel
theorem small_6473532_left_covered : CoveredBy scale carrier boxes small_6473532_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6473532_left_root small_6473532_left_fuel small_6473532_left_count small_6473532_left_encoded small_6473532_left_checked

theorem cover_6473532 : CoveredBy scale carrier boxes root_6473532 := by
  apply coveredBy_split_literal root_6473532 small_6473532_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0157.root_6474432 coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_6473532_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0157.cover_6474432
#print axioms cover_6473532

def root_6473527 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6473527_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6473527_right_fuel : Nat := 1
def small_6473527_right_count : Nat := 1
def small_6473527_right_encoded : String := "00000002"
theorem small_6473527_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6473527_right_root small_6473527_right_fuel small_6473527_right_count small_6473527_right_encoded = true := by
  decide +kernel
theorem small_6473527_right_covered : CoveredBy scale carrier boxes small_6473527_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6473527_right_root small_6473527_right_fuel small_6473527_right_count small_6473527_right_encoded small_6473527_right_checked

theorem cover_6473527 : CoveredBy scale carrier boxes root_6473527 := by
  apply coveredBy_split_literal root_6473527 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158.root_6473532 small_6473527_right_root coord2 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158.cover_6473532
  · exact small_6473527_right_covered
#print axioms cover_6473527

def root_6472253 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6472253 : CoveredBy scale carrier boxes root_6472253 := by
  apply coveredBy_split_literal root_6472253 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2436.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158.root_6473527 coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2436.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158.cover_6473527
#print axioms cover_6472253

def root_6472247 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6472247_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6472247_left_fuel : Nat := 1
def small_6472247_left_count : Nat := 1
def small_6472247_left_encoded : String := "00000001"
theorem small_6472247_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6472247_left_root small_6472247_left_fuel small_6472247_left_count small_6472247_left_encoded = true := by
  decide +kernel
theorem small_6472247_left_covered : CoveredBy scale carrier boxes small_6472247_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6472247_left_root small_6472247_left_fuel small_6472247_left_count small_6472247_left_encoded small_6472247_left_checked

theorem cover_6472247 : CoveredBy scale carrier boxes root_6472247 := by
  apply coveredBy_split_literal root_6472247 small_6472247_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158.root_6472253 coord1 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_6472247_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158.cover_6472253
#print axioms cover_6472247

def root_6470545 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6470545 : CoveredBy scale carrier boxes root_6470545 := by
  apply coveredBy_split_literal root_6470545 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2435.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158.root_6472247 coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2435.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158.cover_6472247
#print axioms cover_6470545

def root_6470540 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6470540_right_root : ZRayBox := fun j => (#[⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6470540_right_fuel : Nat := 1
def small_6470540_right_count : Nat := 1
def small_6470540_right_encoded : String := "00000000"
theorem small_6470540_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6470540_right_root small_6470540_right_fuel small_6470540_right_count small_6470540_right_encoded = true := by
  decide +kernel
theorem small_6470540_right_covered : CoveredBy scale carrier boxes small_6470540_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6470540_right_root small_6470540_right_fuel small_6470540_right_count small_6470540_right_encoded small_6470540_right_checked

theorem cover_6470540 : CoveredBy scale carrier boxes root_6470540 := by
  apply coveredBy_split_literal root_6470540 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158.root_6470545 small_6470540_right_root coord0 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158.cover_6470545
  · exact small_6470540_right_covered
#print axioms cover_6470540

def root_6470539 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6470539 : CoveredBy scale carrier boxes root_6470539 := by
  apply coveredBy_split_literal root_6470539 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158.root_6470540 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2446.root coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158.cover_6470540
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2446.covered
#print axioms cover_6470539

def root_6470533 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6470533_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6470533_left_fuel : Nat := 1
def small_6470533_left_count : Nat := 1
def small_6470533_left_encoded : String := "00000004"
theorem small_6470533_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6470533_left_root small_6470533_left_fuel small_6470533_left_count small_6470533_left_encoded = true := by
  decide +kernel
theorem small_6470533_left_covered : CoveredBy scale carrier boxes small_6470533_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6470533_left_root small_6470533_left_fuel small_6470533_left_count small_6470533_left_encoded small_6470533_left_checked

theorem cover_6470533 : CoveredBy scale carrier boxes root_6470533 := by
  apply coveredBy_split_literal root_6470533 small_6470533_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158.root_6470539 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6470533_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158.cover_6470539
#print axioms cover_6470533

def root_6468257 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6468257 : CoveredBy scale carrier boxes root_6468257 := by
  apply coveredBy_split_literal root_6468257 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2434.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158.root_6470533 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2434.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158.cover_6470533
#print axioms cover_6468257

def root_6468251 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6468251_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6468251_left_fuel : Nat := 1
def small_6468251_left_count : Nat := 1
def small_6468251_left_encoded : String := "00000003"
theorem small_6468251_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6468251_left_root small_6468251_left_fuel small_6468251_left_count small_6468251_left_encoded = true := by
  decide +kernel
theorem small_6468251_left_covered : CoveredBy scale carrier boxes small_6468251_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6468251_left_root small_6468251_left_fuel small_6468251_left_count small_6468251_left_encoded small_6468251_left_checked

theorem cover_6468251 : CoveredBy scale carrier boxes root_6468251 := by
  apply coveredBy_split_literal root_6468251 small_6468251_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158.root_6468257 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6468251_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158.cover_6468257
#print axioms cover_6468251

def root_6468250 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6468250_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6468250_right_fuel : Nat := 19
def small_6468250_right_count : Nat := 133
def small_6468250_right_encoded : String := "1151E8FD0A0001081151E8FF08A912F712073D0008A912F900000005120701020000000108A912FB00000005120700FA050000FC0000000A000000050000000200000000120701000000000008A912F90000000A12070102000000010000000A00000004115224FF0000000408A912F712073D0008A912F912073D0208A912FB12073CFA0000000208A912FF00000005120701080000000400000005120700FA08A912FF12073D08050000FC0000000A00000005000000041207010800000004050000FC135D80FD000000030CFD9BF70F350D000CFD9BF9000000050F34D1020000000100000005000000000F34D100000000000000000A135D44FD00000005000000030000000200000001120701020000000108A912FB12073CFA0000000208A912FF00000005120701080000000400000005120700FA08A912FF12073D08050000FC135D80FD000000030CFD9BF70F350D00045489F9000000051386710200000001045489FB0000000500000009000000000F34D100000000000000000A135D44FD0000000500000003000000041207010800000004000000090000000200000000120701000000000008A912F912073D0208A912FB12073CFA0000000208A912FF00000005120701080000000400000005120700FA0000000A0000000200000001120701020000000108A912FB12073CFA0000000208A912FF000000051207010800000004000000050000000A00000003"
theorem small_6468250_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6468250_right_root small_6468250_right_fuel small_6468250_right_count small_6468250_right_encoded = true := by
  decide +kernel
theorem small_6468250_right_covered : CoveredBy scale carrier boxes small_6468250_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6468250_right_root small_6468250_right_fuel small_6468250_right_count small_6468250_right_encoded small_6468250_right_checked

theorem cover_6468250 : CoveredBy scale carrier boxes root_6468250 := by
  apply coveredBy_split_literal root_6468250 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158.root_6468251 small_6468250_right_root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158.cover_6468251
  · exact small_6468250_right_covered
#print axioms cover_6468250

def root_6468244 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6468244_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6468244_left_fuel : Nat := 1
def small_6468244_left_count : Nat := 1
def small_6468244_left_encoded : String := "00000002"
theorem small_6468244_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6468244_left_root small_6468244_left_fuel small_6468244_left_count small_6468244_left_encoded = true := by
  decide +kernel
theorem small_6468244_left_covered : CoveredBy scale carrier boxes small_6468244_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6468244_left_root small_6468244_left_fuel small_6468244_left_count small_6468244_left_encoded small_6468244_left_checked

theorem cover_6468244 : CoveredBy scale carrier boxes root_6468244 := by
  apply coveredBy_split_literal root_6468244 small_6468244_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158.root_6468250 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6468244_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158.cover_6468250
#print axioms cover_6468244

def root_6468243 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6468243_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6468243_right_fuel : Nat := 21
def small_6468243_right_count : Nat := 193
def small_6468243_right_encoded : String := "1151E8FB0A0000FC115224FD000000030A0001081151E8FF08A912F712073D0008A912F900000005120701020000000108A912FD00000005120700FC050000FA135D80FB0000000205000108135D44FF0CFD9BF700000005000000080000000400000005000000050000000300000000120701000000000008A912F912073D0208A912FD00000005120700FC050000FA135D80FB0000000205000108135D44FF045489F7000000050000000A0000000400000005000000050000000300000001120701020000000108A912FD00000005120700FC050000FA00000008135D44FB00000008000000020000000300000004115224FF0000000408A912F712073D0008A912F912073D0208A912FD12073CFC0000000308A912FF00000005120701080000000400000005120700FC08A912FF12073D08050000FA000000060000000500000004000000060000000300000001120701020000000108A912FD12073CFC0000000308A912FF00000005120701080000000400000005120700FC08A912FF12073D08050000FA135D80FB000000020CFD9BF70F350D00045489F9000000051386710200000001045489FD0000000500000006000000000F34D1000000000000000008135D44FB0000000500000002000000041207010800000004000000060000000300000000120701000000000008A912F912073D0208A912FD12073CFC0000000308A912FF00000005120701080000000400000005120700FC08A912FF12073D08050000FA135D80FB00000002045489F71386AD000CFD9BF900000005000000080000000013867100000000000CFD9BF90F350D02045489FD00000005000000060000000100000008135D44FB000000050000000200000004000000060000000300000001120701020000000108A912FD12073CFC0000000308A912FF00000005120701080000000400000005120700FC08A912FF12073D08000000080000000400000006000000031151E8FD0A0001081151E8FF0000000500000004115224FF0000000408A912F7000000051207010000000000000000050000000300000002"
theorem small_6468243_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6468243_right_root small_6468243_right_fuel small_6468243_right_count small_6468243_right_encoded = true := by
  decide +kernel
theorem small_6468243_right_covered : CoveredBy scale carrier boxes small_6468243_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6468243_right_root small_6468243_right_fuel small_6468243_right_count small_6468243_right_encoded small_6468243_right_checked

theorem cover_6468243 : CoveredBy scale carrier boxes root_6468243 := by
  apply coveredBy_split_literal root_6468243 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158.root_6468244 small_6468243_right_root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158.cover_6468244
  · exact small_6468243_right_covered
#print axioms cover_6468243

def root_6468237 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6468237_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6468237_left_fuel : Nat := 1
def small_6468237_left_count : Nat := 1
def small_6468237_left_encoded : String := "00000001"
theorem small_6468237_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6468237_left_root small_6468237_left_fuel small_6468237_left_count small_6468237_left_encoded = true := by
  decide +kernel
theorem small_6468237_left_covered : CoveredBy scale carrier boxes small_6468237_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6468237_left_root small_6468237_left_fuel small_6468237_left_count small_6468237_left_encoded small_6468237_left_checked

theorem cover_6468237 : CoveredBy scale carrier boxes root_6468237 := by
  apply coveredBy_split_literal root_6468237 small_6468237_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158.root_6468243 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6468237_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158.cover_6468243
#print axioms cover_6468237

def root_6466637 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6466637 : CoveredBy scale carrier boxes root_6466637 := by
  apply coveredBy_split_literal root_6466637 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2433.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158.root_6468237 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2433.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158.cover_6468237
#print axioms cover_6466637

def root_6466631 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6466631_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6466631_left_fuel : Nat := 1
def small_6466631_left_count : Nat := 1
def small_6466631_left_encoded : String := "00000000"
theorem small_6466631_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6466631_left_root small_6466631_left_fuel small_6466631_left_count small_6466631_left_encoded = true := by
  decide +kernel
theorem small_6466631_left_covered : CoveredBy scale carrier boxes small_6466631_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6466631_left_root small_6466631_left_fuel small_6466631_left_count small_6466631_left_encoded small_6466631_left_checked

theorem cover_6466631 : CoveredBy scale carrier boxes root_6466631 := by
  apply coveredBy_split_literal root_6466631 small_6466631_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158.root_6466637 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6466631_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158.cover_6466637
#print axioms cover_6466631

def root_6461973 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6461973 : CoveredBy scale carrier boxes root_6461973 := by
  apply coveredBy_split_literal root_6461973 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0157.root_6461974 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158.root_6466631 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0157.cover_6461974
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158.cover_6466631
#print axioms cover_6461973

def root_6503110 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6503110 : CoveredBy scale carrier boxes root_6503110 := by
  apply coveredBy_split_literal root_6503110 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2447.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2448.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2447.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2448.covered
#print axioms cover_6503110

def root_6461972 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6461972 : CoveredBy scale carrier boxes root_6461972 := by
  apply coveredBy_split_literal root_6461972 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158.root_6461973 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158.root_6503110 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158.cover_6461973
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158.cover_6503110
#print axioms cover_6461972

def root_6455934 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6455934 : CoveredBy scale carrier boxes root_6455934 := by
  apply coveredBy_split_literal root_6455934 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0157.root_6455935 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158.root_6461972 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0157.cover_6455935
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158.cover_6461972
#print axioms cover_6455934

def root_6507108 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6507108 : CoveredBy scale carrier boxes root_6507108 := by
  apply coveredBy_split_literal root_6507108 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2449.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2450.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2449.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2450.covered
#print axioms cover_6507108

def root_6515281 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6515281_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6515281_left_fuel : Nat := 24
def small_6515281_left_count : Nat := 333
def small_6515281_left_encoded : String := "1151E8FF08A912F712073D0008A912F912073D0208A912FB12073CFA0000000208A91307120700FC05000108135D44FF0CFD9BF70F350D000CFD9BF90F350D020CFD9BFB000000050F34D0FA0000000900000002000000010F34D1020000000100000009000000000F34D100000000000CFD9BF9000000090F34D102000000010000000900000004135D80FF000000040CFD9BF70F350D000CFD9BF90F350D0200000006000000010F34D102000000010CFD9BFB000000060F34D0FA0000000900000002000000000F34D100000000000CFD9BF90F350D020CFD9BFB000000060F34D0FA0000000900000002000000010F34D102000000010CFD9BFB000000060F34D0FA00000009000000020000000312073CFC000000030500010800000009135D80FF000000040CFD9BF70000000900000006120700FA08A91307120700FC05000108135D44FF0CFD9BF7000000090F34D100000000000000000900000004135D80FF000000040CFD9BF70F350D000CFD9BF90F350D02045489FB1386ACFA0000000204548A07138670FC0C9A870000000006000000090000000300000006138670FA04548A07138670FC0C9A87000F8750F70C9A87020F8750F90000000900000001000000090000000000000009000000030000000900000002000000010F34D10200000001045489FB00000009138670FA0000000900000002000000000F34D100000000000CFD9BF90F350D02045489FB00000009138670FA0000000900000002000000010F34D102000000010000000900000003000000090000000200000001120701020000000108A912FB12073CFA0000000208A91307120700FC05000108135D44FF0CFD9BF7000000090F34D100000000000000000800000004135D80FF000000040CFD9BF70F350D00045489F91386AD020CFD9BFB0F350CFA00000002000000090F34D0FA00000009000000020000000113867102000000010CFD9BFB000000080F34D0FA0000000800000002000000000F34D10000000000000000080000000300000009120700FA08A91307120700FC05000108135D44FF0000000900000004135D80FF000000040CFD9BF70F350D00045489F91386AD02045489FB00000009138670FA0000000900000002000000011386710200000001045489FB00000009138670FA0000000900000002000000000F34D10000000000045489F9000000090000000900000003000000090000000200000000120701000000000008A912F912073D0208A912FB12073CFA0000000208A91307120700FC05000108135D44FF045489F70000000913867100000000000000000900000004135D80FF00000004045489F71386AD000CFD9BF90F350D020CFD9BFB0F350CFA00000002000000060F34D0FA0000000900000002000000010F34D10200000001000000090000000013867100000000000CFD9BF90F350D020CFD9BFB000000090000000A000000010F34D10200000001000000090000000300000009120700FA08A91307120700FC05000108135D44FF0000000900000004135D80FF00000004045489F71386AD000CFD9BF90F350D02045489FB000000090000000A000000010F34D10200000001000000090000000013867100000000000CFD9BF9000000070F34D102000000010000000900000003000000090000000200000001120701020000000108A912FB12073CFA0000000208A91307120700FC0500010800000008135D80FF00000004000000080000000300000009120700FA08A91307120700FC0500010800000009135D80FF00000004045489F70000000913867100000000000000000800000003000000090000000200000004"
theorem small_6515281_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6515281_left_root small_6515281_left_fuel small_6515281_left_count small_6515281_left_encoded = true := by
  decide +kernel
theorem small_6515281_left_covered : CoveredBy scale carrier boxes small_6515281_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6515281_left_root small_6515281_left_fuel small_6515281_left_count small_6515281_left_encoded small_6515281_left_checked

theorem cover_6515281 : CoveredBy scale carrier boxes root_6515281 := by
  apply coveredBy_split_literal root_6515281 small_6515281_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2453.root coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_6515281_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2453.covered
#print axioms cover_6515281

def root_6515276 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6515276_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6515276_right_fuel : Nat := 1
def small_6515276_right_count : Nat := 1
def small_6515276_right_encoded : String := "00000003"
theorem small_6515276_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6515276_right_root small_6515276_right_fuel small_6515276_right_count small_6515276_right_encoded = true := by
  decide +kernel
theorem small_6515276_right_covered : CoveredBy scale carrier boxes small_6515276_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6515276_right_root small_6515276_right_fuel small_6515276_right_count small_6515276_right_encoded small_6515276_right_checked

theorem cover_6515276 : CoveredBy scale carrier boxes root_6515276 := by
  apply coveredBy_split_literal root_6515276 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158.root_6515281 small_6515276_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158.cover_6515281
  · exact small_6515276_right_covered
#print axioms cover_6515276

def root_6515275 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6515275_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6515275_right_fuel : Nat := 13
def small_6515275_right_count : Nat := 59
def small_6515275_right_encoded : String := "1151E907000000030A0001081151E8FF08A912F712073D0008A912F9000000091207010200000001000000090000000012070100000000000000000900000004115224FF0000000408A912F712073D0008A912F912073D0208A912FB000000060000000600000001120701020000000108A912FB00000006120700FA000000060000000200000000120701000000000008A912F912073D0208A912FB12073CFA0000000208A912FF12073D08050000FC00000006000000060000000400000006120700FA08A912FF12073D080000000900000004000000060000000200000001120701020000000100000008"
theorem small_6515275_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6515275_right_root small_6515275_right_fuel small_6515275_right_count small_6515275_right_encoded = true := by
  decide +kernel
theorem small_6515275_right_covered : CoveredBy scale carrier boxes small_6515275_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6515275_right_root small_6515275_right_fuel small_6515275_right_count small_6515275_right_encoded small_6515275_right_checked

theorem cover_6515275 : CoveredBy scale carrier boxes root_6515275 := by
  apply coveredBy_split_literal root_6515275 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158.root_6515276 small_6515275_right_root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158.cover_6515276
  · exact small_6515275_right_covered
#print axioms cover_6515275

def root_6515269 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6515269_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6515269_left_fuel : Nat := 1
def small_6515269_left_count : Nat := 1
def small_6515269_left_encoded : String := "00000002"
theorem small_6515269_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6515269_left_root small_6515269_left_fuel small_6515269_left_count small_6515269_left_encoded = true := by
  decide +kernel
theorem small_6515269_left_covered : CoveredBy scale carrier boxes small_6515269_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6515269_left_root small_6515269_left_fuel small_6515269_left_count small_6515269_left_encoded small_6515269_left_checked

theorem cover_6515269 : CoveredBy scale carrier boxes root_6515269 := by
  apply coveredBy_split_literal root_6515269 small_6515269_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158.root_6515275 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6515269_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158.cover_6515275
#print axioms cover_6515269

def root_6515268 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6515268_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6515268_right_fuel : Nat := 19
def small_6515268_right_count : Nat := 187
def small_6515268_right_encoded : String := "1151E8FB0A0000FC115225070A0001081151E8FF08A912F712073D0008A912F912073D0208A91307120700FC050000FA135D80FB0000000205000108135D44FF0CFD9BF700000005000000060000000400000006135D44FB05000108135D44FF000000050000000400000005000000020000000312073CFC00000003050000FA000000060000000600000001120701020000000108A91307120700FC050000FA135D80FB0000000205000108135D44FF0000000900000004135D80FF000000040CFD9BF70F350D00045489F90000000500000008000000000F34D1000000000000000008135D44FB05000108135D44FF0CFD9BF7000000070000000900000004135D80FF000000040CFD9BF70000000500000006000000020000000312073CFC00000003050000FA00000009135D44FB0500010800000007000000060000000200000000120701000000000008A912F912073D0208A91307120700FC050000FA135D80FB0000000205000108135D44FF00000006000000040000000600000006000000030000000600000001120701020000000108A91307120700FC050000FA0000000800000009000000030000000900000004115224FF0000000408A912F712073D0008A912F912073D0208A91307000000060000000600000001120701020000000108A91307120700FC08A912FF12073D08050000FA135D80FB000000020CFD9BF70F350D00000000060000000000000006135D44FB0000000600000002000000041207010800000004000000060000000312073CFC0000000308A912FF000000060000000600000000120701000000000008A912F912073D0208A91307120700FC00000006000000030000000600000001120701020000000108A91307120700FC08A912FF00000006000000060000000300000006000000031151E907000000030A0001081151E8FF0000000600000004115224FF0000000408A912F712073D0008A912F912073D020000000600000001000000060000000012070100000000000000000600000002"
theorem small_6515268_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6515268_right_root small_6515268_right_fuel small_6515268_right_count small_6515268_right_encoded = true := by
  decide +kernel
theorem small_6515268_right_covered : CoveredBy scale carrier boxes small_6515268_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6515268_right_root small_6515268_right_fuel small_6515268_right_count small_6515268_right_encoded small_6515268_right_checked

theorem cover_6515268 : CoveredBy scale carrier boxes root_6515268 := by
  apply coveredBy_split_literal root_6515268 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158.root_6515269 small_6515268_right_root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158.cover_6515269
  · exact small_6515268_right_covered
#print axioms cover_6515268

def root_6515262 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6515262_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6515262_left_fuel : Nat := 1
def small_6515262_left_count : Nat := 1
def small_6515262_left_encoded : String := "00000001"
theorem small_6515262_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6515262_left_root small_6515262_left_fuel small_6515262_left_count small_6515262_left_encoded = true := by
  decide +kernel
theorem small_6515262_left_covered : CoveredBy scale carrier boxes small_6515262_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6515262_left_root small_6515262_left_fuel small_6515262_left_count small_6515262_left_encoded small_6515262_left_checked

theorem cover_6515262 : CoveredBy scale carrier boxes root_6515262 := by
  apply coveredBy_split_literal root_6515262 small_6515262_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158.root_6515268 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6515262_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158.cover_6515268
#print axioms cover_6515262

def root_6513232 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6513232 : CoveredBy scale carrier boxes root_6513232 := by
  apply coveredBy_split_literal root_6513232 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2452.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158.root_6515262 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2452.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158.cover_6515262
#print axioms cover_6513232

def root_6513226 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6513226_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6513226_left_fuel : Nat := 1
def small_6513226_left_count : Nat := 1
def small_6513226_left_encoded : String := "00000000"
theorem small_6513226_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6513226_left_root small_6513226_left_fuel small_6513226_left_count small_6513226_left_encoded = true := by
  decide +kernel
theorem small_6513226_left_covered : CoveredBy scale carrier boxes small_6513226_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6513226_left_root small_6513226_left_fuel small_6513226_left_count small_6513226_left_encoded small_6513226_left_checked

theorem cover_6513226 : CoveredBy scale carrier boxes root_6513226 := by
  apply coveredBy_split_literal root_6513226 small_6513226_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158.root_6513232 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6513226_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158.cover_6513232
#print axioms cover_6513226

def root_6511278 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6511278 : CoveredBy scale carrier boxes root_6511278 := by
  apply coveredBy_split_literal root_6511278 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2451.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158.root_6513226 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2451.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158.cover_6513226
#print axioms cover_6511278

def root_6511277 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6511277 : CoveredBy scale carrier boxes root_6511277 := by
  apply coveredBy_split_literal root_6511277 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158.root_6511278 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2454.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158.cover_6511278
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2454.covered
#print axioms cover_6511277

def root_6507107 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6507107 : CoveredBy scale carrier boxes root_6507107 := by
  apply coveredBy_split_literal root_6507107 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158.root_6507108 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158.root_6511277 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158.cover_6507108
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158.cover_6511277
#print axioms cover_6507107

def root_6455933 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6455933 : CoveredBy scale carrier boxes root_6455933 := by
  apply coveredBy_split_literal root_6455933 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158.root_6455934 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158.root_6507107 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158.cover_6455934
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158.cover_6507107
#print axioms cover_6455933

def root_6523618 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6523618_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6523618_left_fuel : Nat := 21
def small_6523618_left_count : Nat := 247
def small_6523618_left_encoded : String := "1151E8F70A0001021151E8F90A0000FA115224FB000000020A0001061151E8FD0A0000FE1152250908A912FB12073CFA0000000208A913090000000500000006120700FA08A91309000000080000000900000002000000041151E909000000040000000600000003115224FD000000030A0000FE1152250908A912FB12073CFA0000000208A912FD12073D0600000006000000030000000600000009000000041151E90900000004000000091151E8FB0A0001061151E8FD0000000500000003115224FD000000030A0000FE1152250900000006000000041151E9090000000408A912FD000000061207010600000003000000090000000200000001115224F9000000010A0000FA115224FB000000020A0001061151E8FD0A0000FE1152250908A912F912073D0208A912FB12073CFA0000000208A913090000000A12073CFE000000040500010000000006135D80F70000000005000106135D44FD0CFD9BF9000000060000000A0000000300000006120700FA0000000A000000020000000112070102000000010000000A000000041151E9090000000408A912F900000006120701020000000108A912FB000000060000000A00000003115224FD000000030A0000FE1152250908A912F912073D0208A912FB12073CFA0000000208A912FD0000000A0000000A120700FA000000090000000200000001120701020000000108A912FB12073CFA0000000208A912FD0000000A120701060000000300000006120700FA08A912FD0000000A12070106000000030000000900000002000000041151E9090000000408A912F912073D0208A912FB12073CFA0000000208A912FD000000061207010600000003000000060000000600000001120701020000000108A912FB000000060000000A1151E8FB0A0001061151E8FD0A0000FE1152250908A912F912073D0208A91309000000050000000600000001120701020000000108A913090000000A00000007000000041151E909000000040000000600000003115224FD000000030A0000FE1152250908A912F912073D0208A912FD12073D06000000060000000312070106000000030000000A00000001120701020000000108A912FD0000000A0000000A000000041151E9090000000408A912F912073D0208A912FD12073D0605000100135D44F7050000FA00000006135D44FB0000000600000002000000000000000600000003120701060000000305000100135D44F70000000900000000135D80F700000000050000FA00000006135D44FB050000FE00000006000000050000000200000001120701020000000108A912FD000000061207010600000003050001000000000A000000060000000200000000"
theorem small_6523618_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6523618_left_root small_6523618_left_fuel small_6523618_left_count small_6523618_left_encoded = true := by
  decide +kernel
theorem small_6523618_left_covered : CoveredBy scale carrier boxes small_6523618_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6523618_left_root small_6523618_left_fuel small_6523618_left_count small_6523618_left_encoded small_6523618_left_checked

theorem cover_6523618 : CoveredBy scale carrier boxes root_6523618 := by
  apply coveredBy_split_literal root_6523618 small_6523618_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2456.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_6523618_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2456.covered
#print axioms cover_6523618

def root_6521608 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6521608 : CoveredBy scale carrier boxes root_6521608 := by
  apply coveredBy_split_literal root_6521608 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2455.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158.root_6523618 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2455.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158.cover_6523618
#print axioms cover_6521608

def root_6527861 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6527861 : CoveredBy scale carrier boxes root_6527861 := by
  apply coveredBy_split_literal root_6527861 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2457.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2458.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2457.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2458.covered
#print axioms cover_6527861

def root_6526931 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6526931_left_root : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6526931_left_fuel : Nat := 21
def small_6526931_left_count : Nat := 429
def small_6526931_left_encoded : String := "0A0001001151E8F70A0001021151E8F90A0000FA115224FB000000020A0001061151E8FD0000000500000003115224FD000000030A0001081151E8FF0000000500000004115224FF0000000408A912FB12073CFA0000000208A912FD00000005120701060000000300000005120700FA08A912FD12073D0608A912FF0000000512070108000000040000000500000003120701060000000300000007000000021151E8FB000000050000000200000001115224F9000000010A0000FA115224FB000000020A0001061151E8FD0A0001081151E8FF0000000500000004115224FF0000000408A912F912073D0208A912FB00000005120700FA08A912FF000000051207010800000004000000050000000200000001120701020000000108A912FB00000005120700FA08A912FF000000051207010800000004000000050000000200000003115224FD000000030A0001081151E8FF08A912F912073D0208A912FB000000050000000700000001120701020000000108A912FB00000005120700FA08A912FD00000005000000070000000200000004115224FF0000000408A912F912073D0208A912FB12073CFA0000000208A912FD00000005120701060000000300000005120700FA08A912FD12073D0608A912FF0000000512070108000000040000000500000003120701060000000308A912FF000000051207010800000004000000050000000200000001120701020000000108A912FB12073CFA0000000208A912FD00000005120701060000000300000005120700FA08A912FD12073D0608A912FF0000000512070108000000040000000500000003120701060000000300000005000000021151E8FB0A0001061151E8FD0000000500000003115224FD000000030A0001081151E8FF0000000500000004000000050000000200000000115224F7000000000A0001021151E8F90A0000FA115224FB000000020A0001061151E8FD0A0001081151E8FF0000000500000004115224FF0000000408A912F712073D0008A912FB00000005120700FA08A912FF000000051207010800000004000000050000000200000000120701000000000008A912FB000000050000000A00000003115224FD000000030A0001081151E8FF08A912F70000000812070100000000000000000800000004115224FF0000000408A912F712073D0008A912FB12073CFA0000000208A912FD00000005120701060000000300000005120700FA08A912FD12073D0608A912FF000000050000000A00000003120701060000000308A912FF000000051207010800000004000000050000000200000000120701000000000008A912FB12073CFA0000000208A912FD0000000500000008120700FA08A912FD0000000A00000008000000021151E8FB0A0001061151E8FD0000000500000003115224FD000000030A0001081151E8FF0000000500000004000000050000000200000001115224F9000000010A0000FA115224FB000000020A0001061151E8FD0A0001081151E8FF08A912F712073D0008A912F90000000512070102000000010000000500000000120701000000000008A912F90000000512070102000000010000000500000004115224FF0000000408A912F712073D0008A912F912073D0208A912FB00000005120700FA08A912FF000000050000000A0000000200000001120701020000000108A912FB00000005120700FA08A912FF000000051207010800000004000000050000000200000000120701000000000008A912F90000000A12070102000000010000000500000003115224FD000000030A0001081151E8FF08A912F712073D0008A912F912073D0208A912FB00000005120700FA08A912FD00000005000000070000000200000001120701020000000108A912FB00000005120700FA08A912FD00000005000000070000000200000000120701000000000008A912F90000000812070102000000010000000500000004115224FF0000000408A912F712073D0008A912F912073D0208A912FB12073CFA0000000200000005120700FA08A912FD12073D0608A912FF00000005120701080000000400000005000000031207010600000003000000050000000200000001120701020000000108A912FB00000005120700FA08A912FD000000051207010600000003000000050000000200000000120701000000000008A912F912073D0208A912FB00000005120700FA08A912FD0000000512070106000000030000000500000002000000011207010200000001000000051151E8FB0A0001061151E8FD0A0001081151E8FF00000005000000040000000500000003115224FD000000030A0001081151E8FF00000005000000040000000500000002"
theorem small_6526931_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6526931_left_root small_6526931_left_fuel small_6526931_left_count small_6526931_left_encoded = true := by
  decide +kernel
theorem small_6526931_left_covered : CoveredBy scale carrier boxes small_6526931_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6526931_left_root small_6526931_left_fuel small_6526931_left_count small_6526931_left_encoded small_6526931_left_checked

theorem cover_6526931 : CoveredBy scale carrier boxes root_6526931 := by
  apply coveredBy_split_literal root_6526931 small_6526931_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158.root_6527861 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact small_6526931_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158.cover_6527861
#print axioms cover_6526931

def root_6521607 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6521607 : CoveredBy scale carrier boxes root_6521607 := by
  apply coveredBy_split_literal root_6521607 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158.root_6521608 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158.root_6526931 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158.cover_6521608
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158.cover_6526931
#print axioms cover_6521607

def root_6538516 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6538516 : CoveredBy scale carrier boxes root_6538516 := by
  apply coveredBy_split_literal root_6538516 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2462.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2463.root coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2462.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2463.covered
#print axioms cover_6538516

def root_6538510 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6538510_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6538510_left_fuel : Nat := 1
def small_6538510_left_count : Nat := 1
def small_6538510_left_encoded : String := "00000000"
theorem small_6538510_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6538510_left_root small_6538510_left_fuel small_6538510_left_count small_6538510_left_encoded = true := by
  decide +kernel
theorem small_6538510_left_covered : CoveredBy scale carrier boxes small_6538510_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6538510_left_root small_6538510_left_fuel small_6538510_left_count small_6538510_left_encoded small_6538510_left_checked

theorem cover_6538510 : CoveredBy scale carrier boxes root_6538510 := by
  apply coveredBy_split_literal root_6538510 small_6538510_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158.root_6538516 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6538510_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158.cover_6538516
#print axioms cover_6538510

def root_6536692 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6536692 : CoveredBy scale carrier boxes root_6536692 := by
  apply coveredBy_split_literal root_6536692 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2461.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158.root_6538510 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2461.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158.cover_6538510
#print axioms cover_6536692

def root_6534958 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6534958 : CoveredBy scale carrier boxes root_6534958 := by
  apply coveredBy_split_literal root_6534958 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2460.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158.root_6536692 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2460.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158.cover_6536692
#print axioms cover_6534958

def root_6532142 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6532142 : CoveredBy scale carrier boxes root_6532142 := by
  apply coveredBy_split_literal root_6532142 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2459.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158.root_6534958 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2459.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158.cover_6534958
#print axioms cover_6532142

def root_6521606 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6521606 : CoveredBy scale carrier boxes root_6521606 := by
  apply coveredBy_split_literal root_6521606 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158.root_6521607 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158.root_6532142 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158.cover_6521607
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158.cover_6532142
#print axioms cover_6521606

def root_6455932 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6455932 : CoveredBy scale carrier boxes root_6455932 := by
  apply coveredBy_split_literal root_6455932 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158.root_6455933 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158.root_6521606 coord3 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158.cover_6455933
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158.cover_6521606
#print axioms cover_6455932

def root_6546614 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6546614_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6546614_left_fuel : Nat := 21
def small_6546614_left_count : Nat := 401
def small_6546614_left_encoded : String := "115225050A0000FC115224FD000000030A0000FE1152250908A912F712073D0008A912F912073D0208A91305120700FA08A912FD12073CFC0000000308A91309120700FE0CFD9BF70F350D000000000A000000000F34D10000000000000000080000000400000005000000050000000212073CFA0000000208A912FD12073CFC0000000308A91309120700FE0000000500000004000000050000000500000001120701020000000108A91305120700FA00000005000000020000000500000000120701000000000008A912F912073D0208A91305120700FA0000000500000002000000050000000100000005000000041151E9090000000408A912F712073D0008A912F912073D0208A91305120700FA000000050000000200000005000000010000000500000000120701000000000008A912F912073D020000000500000001120701020000000108A91305120700FA000000050000000212073CFA0000000208A912FD12073CFC00000003050000FE00000005135D45090000000400000007120700FC00000007000000031151E8FD0A0000FE1152250908A912F712073D0008A912F912073D0208A91305120700FA08A91309120700FE050000FC135D80FD000000030CFD9BF70F350D000000000A0000000000000008135D44FD0CFD9BF70F350D000000000A0000000000000008000000030000000412073CFE00000004050000FC135D80FD000000030CFD9BF70F350D000CFD9BF90F350D020000000500000001000000050000000000000005135D44FD0CFD9BF70F350D000CFD9BF90F350D0204548A0500000009000000050000000100000005000000000F34D100000000000CFD9BF90F350D02000000050000000100000005000000030000000212073CFA0000000208A91309120700FE050000FC135D80FD000000030CFD9BF70F350D000CFD9BF90F350D020000000500000001000000050000000000000005135D44FD0CFD9BF70F350D000CFD9BF90F350D020CFD9C0500000008000000050000000100000005000000000F34D1000000000000000008000000030000000412073CFE00000004050000FC00000005135D44FD0CFD9BF70F350D000CFD9BF90F350D0200000005000000010000000500000000000000050000000300000001120701020000000108A91305120700FA0000000A0000000212073CFA0000000208A91309120700FE00000005000000040000000500000000120701000000000008A912F912073D0208A91305120700FA08A91309120700FE0000000800000004000000050000000212073CFA0000000208A91309120700FE00000005000000040000000500000001120701020000000108A91305120700FA08A913090000000A000000050000000212073CFA0000000208A91309120700FE000000050000000400000005000000041151E9090000000408A912F712073D0008A912F912073D0208A91305120700FA050000FC135D80FD00000003050000FE00000005135D45090000000400000005135D44FD050000FE135D81090CFD9BF70F350D0000000005000000000000000500000004135D4509000000040CFD9BF70000000A00000007000000030000000212073CFA00000002050000FC135D80FD00000003050000FE00000005135D45090000000400000005135D44FD050000FE135D81090CFD9BF70F350D0000000005000000000000000500000004135D4509000000040CFD9BF70F350D000CFD9BF90000000900000005000000000F34D100000000000CFD9BF90F350D0200000005000000010F34D102000000010CFD9C050000000A000000050000000300000001120701020000000108A91305120700FA0000000A0000000212073CFA00000002050000FC00000005135D44FD050000FE000000050000000A0000000300000000120701000000000008A912F912073D0208A91305120700FA000000070000000212073CFA00000002050000FC00000005135D44FD050000FE00000005135D450900000004045489F71386AD000CFD9BF90F350D0200000005000000010F34D102000000010000000700000000000000070000000300000001120701020000000108A913050000000712073CFA00000002050000FC135D80FD00000003050000FE00000005135D45090000000400000007135D44FD050000FE00000005135D450900000004045489F70000000A00000007000000030000000300000002"
theorem small_6546614_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6546614_left_root small_6546614_left_fuel small_6546614_left_count small_6546614_left_encoded = true := by
  decide +kernel
theorem small_6546614_left_covered : CoveredBy scale carrier boxes small_6546614_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6546614_left_root small_6546614_left_fuel small_6546614_left_count small_6546614_left_encoded small_6546614_left_checked

theorem cover_6546614 : CoveredBy scale carrier boxes root_6546614 := by
  apply coveredBy_split_literal root_6546614 small_6546614_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2465.root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact small_6546614_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2465.covered
#print axioms cover_6546614

def root_6546608 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6546608_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6546608_left_fuel : Nat := 1
def small_6546608_left_count : Nat := 1
def small_6546608_left_encoded : String := "00000001"
theorem small_6546608_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6546608_left_root small_6546608_left_fuel small_6546608_left_count small_6546608_left_encoded = true := by
  decide +kernel
theorem small_6546608_left_covered : CoveredBy scale carrier boxes small_6546608_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6546608_left_root small_6546608_left_fuel small_6546608_left_count small_6546608_left_encoded small_6546608_left_checked

theorem cover_6546608 : CoveredBy scale carrier boxes root_6546608 := by
  apply coveredBy_split_literal root_6546608 small_6546608_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158.root_6546614 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6546608_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158.cover_6546614
#print axioms cover_6546608

def root_6546178 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6546178_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6546178_left_fuel : Nat := 21
def small_6546178_left_count : Nat := 201
def small_6546178_left_encoded : String := "1151E8F90A0000FA115225050A0000FC115224FD000000030A0000FE1152250908A912F712073D0008A91305120700FA08A912FD12073CFC0000000308A91309120700FE000000080000000412073CFE000000040500010200000008135D80F9000000010CFD9BF70F350D0004548A0500000008000000050000000000000005000000080000000212073CFA0000000208A912FD12073CFC0000000308A91309120700FE0500010200000008135D80F9000000010CFD9BF7000000080000000500000004000000050000000500000000120701000000000008A91305120700FA000000080000000200000005000000041151E90900000004000000051151E8FD0A0000FE1152250908A912F712073D0008A91305120700FA08A91309120700FE000000080000000412073CFE000000040500010200000008135D80F900000001050000FC135D80FD000000030CFD9BF70F350D00000000090000000000000005135D44FD0CFD9BF70000000900000005000000030000000212073CFA0000000208A91309120700FE00000008000000040000000500000000120701000000000008A913050000000812073CFA0000000200000008000000041151E9090000000408A912F712073D0008A91305120700FA0500010200000005135D80F900000001050000FC00000005135D44FD050000FE0000000500000006000000030000000212073CFA000000020500010200000005135D80F9000000010000000500000000120701000000000008A91305120700FA00000005000000020000000500000003000000021151E905000000020A0000FC115224FD000000030A0000FE000000051151E90900000004000000051151E8FD0A0000FE1152250908A912F712073D0008A91309120700FE000000080000000412073CFE000000040500010200000005135D80F9000000010000000500000000120701000000000000000008000000041151E9090000000408A912F712073D000500010200000005135D80F900000001050000FA00000005135D450500000002000000090000000012070100000000000500010200000005135D80F900000001050000FA00000005000000080000000300000001"
theorem small_6546178_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6546178_left_root small_6546178_left_fuel small_6546178_left_count small_6546178_left_encoded = true := by
  decide +kernel
theorem small_6546178_left_covered : CoveredBy scale carrier boxes small_6546178_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6546178_left_root small_6546178_left_fuel small_6546178_left_count small_6546178_left_encoded small_6546178_left_checked

theorem cover_6546178 : CoveredBy scale carrier boxes root_6546178 := by
  apply coveredBy_split_literal root_6546178 small_6546178_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158.root_6546608 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_6546178_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158.cover_6546608
#print axioms cover_6546178

def root_6546172 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6546172_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6546172_left_fuel : Nat := 1
def small_6546172_left_count : Nat := 1
def small_6546172_left_encoded : String := "00000000"
theorem small_6546172_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6546172_left_root small_6546172_left_fuel small_6546172_left_count small_6546172_left_encoded = true := by
  decide +kernel
theorem small_6546172_left_covered : CoveredBy scale carrier boxes small_6546172_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6546172_left_root small_6546172_left_fuel small_6546172_left_count small_6546172_left_encoded small_6546172_left_checked

theorem cover_6546172 : CoveredBy scale carrier boxes root_6546172 := by
  apply coveredBy_split_literal root_6546172 small_6546172_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158.root_6546178 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6546172_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158.cover_6546178
#print axioms cover_6546172

def root_6545394 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6545394_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6545394_left_fuel : Nat := 23
def small_6545394_left_count : Nat := 361
def small_6545394_left_encoded : String := "1151E8F70A0001021151E8F90A0000FA115225050A0000FC115224FD000000030A0000FE1152250908A91305120700FA08A912FD12073CFC0000000308A91309120700FE050001000000000A000000080000000412073CFE0000000405000100135D44F70000000900000000135D80F70000000005000102135D44F90000000800000001135D80F90000000104548A05138670FA000000090000000200000009120700FC08A91309120700FE000000090000000412073CFE0000000405000100135D44F7000000090000000000000008000000030000000212073CFA0000000208A912FD12073CFC0000000308A91309120700FE05000100135D44F70000000900000000135D80F70000000005000102135D44F90000000900000001135D80F9000000010CFD9C0500000008000000090000000412073CFE000000040500010000000009135D80F70000000000000005120700FC08A91309120700FE050001000000000A135D80F7000000000500010200000009000000050000000412073CFE000000040000000500000003000000041151E9090000000408A91305120700FA08A912FD12073CFC00000003000000050000000500000002000000051151E8FD0A0000FE1152250908A91305120700FA08A91309120700FE0000000900000004000000090000000212073CFA0000000208A91309120700FE000000090000000400000009000000041151E909000000040000000900000003000000021151E905000000020A0000FC115224FD000000030A0000FE1152250908A912FD12073CFC000000030000000500000005000000041151E90900000004000000051151E8FD0A0000FE000000091151E90900000004000000050000000300000001115224F9000000010A0000FA115225050A0000FC115224FD000000030A0000FE1152250908A912F912073D0208A91305120700FA08A912FD12073CFC0000000308A913090000000A12073CFE00000004050001000000000A135D80F7000000000CFD9BF90000000A00000005120700FC08A913090000000A00000005000000030000000212073CFA0000000208A912FD12073CFC0000000308A91309120700FE050001000000000A135D80F7000000000CFD9BF90F350D020CFD9C050000000A00000005000000010000000500000004000000050000000500000001120701020000000108A91305120700FA08A912FD0000000A000000050000000200000005000000041151E90900000004000000051151E8FD0A0000FE1152250908A912F912073D0208A91305120700FA08A913090000000A12073CFE000000040000000A0000000212073CFA0000000208A91309120700FE050001000000000A135D80F700000000050000FC135D80FD000000030CFD9BF90F350D02000000090000000100000005135D44FD0CFD9BF9000000090000000500000003000000040000000500000001120701020000000108A913050000000A0000000A000000041151E9090000000408A912F912073D0208A91305120700FA0000000A0000000212073CFA000000020500010000000005135D80F700000000000000050000000112070102000000010000000A00000003000000021151E905000000020A0000FC115224FD000000030A0000FE000000051151E90900000004000000051151E8FD0A0000FE1152250908A912F912073D0208A91309120700FE0500010000000005135D80F700000000050000FA00000005135D450500000002000000050000000412073CFE000000040500010000000005135D80F7000000000000000500000001120701020000000108A91309120700FE000000050000000400000005000000041151E9090000000408A912F912073D020500010000000005135D80F700000000050000FA00000005135D450500000002000000090000000112070102000000010500010000000005135D80F700000000050000FA00000005135D4505000000020000000A0000000300000000"
theorem small_6545394_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6545394_left_root small_6545394_left_fuel small_6545394_left_count small_6545394_left_encoded = true := by
  decide +kernel
theorem small_6545394_left_covered : CoveredBy scale carrier boxes small_6545394_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6545394_left_root small_6545394_left_fuel small_6545394_left_count small_6545394_left_encoded small_6545394_left_checked

theorem cover_6545394 : CoveredBy scale carrier boxes root_6545394 := by
  apply coveredBy_split_literal root_6545394 small_6545394_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158.root_6546172 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_6545394_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158.cover_6546172
#print axioms cover_6545394

def root_6542726 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6542726 : CoveredBy scale carrier boxes root_6542726 := by
  apply coveredBy_split_literal root_6542726 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2464.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158.root_6545394 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2464.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158.cover_6545394
#print axioms cover_6542726

def root_6550462 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6550462 : CoveredBy scale carrier boxes root_6550462 := by
  apply coveredBy_split_literal root_6550462 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2466.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2467.root coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2466.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2467.covered
#print axioms cover_6550462

def root_6550457 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6550457_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6550457_right_fuel : Nat := 1
def small_6550457_right_count : Nat := 1
def small_6550457_right_encoded : String := "00000000"
theorem small_6550457_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6550457_right_root small_6550457_right_fuel small_6550457_right_count small_6550457_right_encoded = true := by
  decide +kernel
theorem small_6550457_right_covered : CoveredBy scale carrier boxes small_6550457_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6550457_right_root small_6550457_right_fuel small_6550457_right_count small_6550457_right_encoded small_6550457_right_checked

theorem cover_6550457 : CoveredBy scale carrier boxes root_6550457 := by
  apply coveredBy_split_literal root_6550457 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158.root_6550462 small_6550457_right_root coord0 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158.cover_6550462
  · exact small_6550457_right_covered
#print axioms cover_6550457

def root_6554808 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6554808_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6554808_right_fuel : Nat := 15
def small_6554808_right_count : Nat := 71
def small_6554808_right_encoded : String := "1151E8FD0A0001081151E8FF08A912F712073D0008A912F912073D020000000A00000001120701020000000108A913050000000A0000000600000000120701000000000008A912F912073D0208A913050000000A00000006000000010000000600000004115224FF0000000408A912F712073D0008A912F912073D0208A91305120700FA0000000A000000020000000A00000001120701020000000108A91305120700FA08A912FF12073D08050000FC135D80FD000000030CFD9BF70000000A0000000A135D44FD0000000A00000003000000040000000A0000000212073CFA0000000208A912FF12073D080000000A000000040000000A00000000120701000000000008A912F90000000A12070102000000010000000A00000003"
theorem small_6554808_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6554808_right_root small_6554808_right_fuel small_6554808_right_count small_6554808_right_encoded = true := by
  decide +kernel
theorem small_6554808_right_covered : CoveredBy scale carrier boxes small_6554808_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6554808_right_root small_6554808_right_fuel small_6554808_right_count small_6554808_right_encoded small_6554808_right_checked

theorem cover_6554808 : CoveredBy scale carrier boxes root_6554808 := by
  apply coveredBy_split_literal root_6554808 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2469.root small_6554808_right_root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2469.covered
  · exact small_6554808_right_covered
#print axioms cover_6554808

def root_6554803 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6554803_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6554803_right_fuel : Nat := 1
def small_6554803_right_count : Nat := 1
def small_6554803_right_encoded : String := "00000002"
theorem small_6554803_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6554803_right_root small_6554803_right_fuel small_6554803_right_count small_6554803_right_encoded = true := by
  decide +kernel
theorem small_6554803_right_covered : CoveredBy scale carrier boxes small_6554803_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6554803_right_root small_6554803_right_fuel small_6554803_right_count small_6554803_right_encoded small_6554803_right_checked

theorem cover_6554803 : CoveredBy scale carrier boxes root_6554803 := by
  apply coveredBy_split_literal root_6554803 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158.root_6554808 small_6554803_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158.cover_6554808
  · exact small_6554803_right_covered
#print axioms cover_6554803

def root_6554802 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6554802_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6554802_right_fuel : Nat := 15
def small_6554802_right_count : Nat := 99
def small_6554802_right_encoded : String := "1151E905000000020A0000FC115224FD000000030A0001081151E8FF08A912F712073D0008A912F90000000A12070102000000010000000A00000000120701000000000008A912F912073D020000000A000000010000000600000004115224FF0000000408A912F712073D0008A912F912073D0208A912FD12073CFC0000000308A912FF0000000A1207010800000004050000FA0000000A00000009120700FC08A912FF0000000A1207010800000004000000080000000300000001120701020000000108A912FD0000000A120700FC0000000A0000000300000000120701000000000008A912F912073D0208A912FD12073CFC000000030000000A0000000A000000010000000A1151E8FD0A0001081151E8FF08A912F712073D0008A912F912073D02050000FA0000000A0000000700000001000000060000000012070100000000000000000600000004115224FF0000000408A912F70000000A120701000000000008A912F912073D0208A912FF00000009120701080000000400000009000000010000000900000003"
theorem small_6554802_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6554802_right_root small_6554802_right_fuel small_6554802_right_count small_6554802_right_encoded = true := by
  decide +kernel
theorem small_6554802_right_covered : CoveredBy scale carrier boxes small_6554802_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6554802_right_root small_6554802_right_fuel small_6554802_right_count small_6554802_right_encoded small_6554802_right_checked

theorem cover_6554802 : CoveredBy scale carrier boxes root_6554802 := by
  apply coveredBy_split_literal root_6554802 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158.root_6554803 small_6554802_right_root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158.cover_6554803
  · exact small_6554802_right_covered
#print axioms cover_6554802

def root_6554796 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6554796_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6554796_left_fuel : Nat := 1
def small_6554796_left_count : Nat := 1
def small_6554796_left_encoded : String := "00000001"
theorem small_6554796_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6554796_left_root small_6554796_left_fuel small_6554796_left_count small_6554796_left_encoded = true := by
  decide +kernel
theorem small_6554796_left_covered : CoveredBy scale carrier boxes small_6554796_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6554796_left_root small_6554796_left_fuel small_6554796_left_count small_6554796_left_encoded small_6554796_left_checked

theorem cover_6554796 : CoveredBy scale carrier boxes root_6554796 := by
  apply coveredBy_split_literal root_6554796 small_6554796_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158.root_6554802 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6554796_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158.cover_6554802
#print axioms cover_6554796

def root_6553676 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6553676 : CoveredBy scale carrier boxes root_6553676 := by
  apply coveredBy_split_literal root_6553676 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2468.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158.root_6554796 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2468.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158.cover_6554796
#print axioms cover_6553676

def root_6553670 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6553670_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6553670_left_fuel : Nat := 1
def small_6553670_left_count : Nat := 1
def small_6553670_left_encoded : String := "00000000"
theorem small_6553670_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6553670_left_root small_6553670_left_fuel small_6553670_left_count small_6553670_left_encoded = true := by
  decide +kernel
theorem small_6553670_left_covered : CoveredBy scale carrier boxes small_6553670_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6553670_left_root small_6553670_left_fuel small_6553670_left_count small_6553670_left_encoded small_6553670_left_checked

theorem cover_6553670 : CoveredBy scale carrier boxes root_6553670 := by
  apply coveredBy_split_literal root_6553670 small_6553670_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158.root_6553676 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6553670_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158.cover_6553676
#print axioms cover_6553670

def root_6550456 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6550456 : CoveredBy scale carrier boxes root_6550456 := by
  apply coveredBy_split_literal root_6550456 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158.root_6550457 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158.root_6553670 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158.cover_6550457
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158.cover_6553670
#print axioms cover_6550456

def root_6561005 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6561005 : CoveredBy scale carrier boxes root_6561005 := by
  apply coveredBy_split_literal root_6561005 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2471.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2472.root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2471.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2472.covered
#print axioms cover_6561005

def root_6561000 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6561000_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6561000_right_fuel : Nat := 1
def small_6561000_right_count : Nat := 1
def small_6561000_right_encoded : String := "00000001"
theorem small_6561000_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6561000_right_root small_6561000_right_fuel small_6561000_right_count small_6561000_right_encoded = true := by
  decide +kernel
theorem small_6561000_right_covered : CoveredBy scale carrier boxes small_6561000_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6561000_right_root small_6561000_right_fuel small_6561000_right_count small_6561000_right_encoded small_6561000_right_checked

theorem cover_6561000 : CoveredBy scale carrier boxes root_6561000 := by
  apply coveredBy_split_literal root_6561000 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158.root_6561005 small_6561000_right_root coord1 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158.cover_6561005
  · exact small_6561000_right_covered
#print axioms cover_6561000

def root_6568711 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6568711_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6568711_right_fuel : Nat := 27
def small_6568711_right_count : Nat := 499
def small_6568711_right_encoded : String := "120701000000000008A912F912073D02050000FA135D8105050000FC135D80FD0000000305000108135D450900000004045489F71386AD000CFD9BF9000000070F34D10200000001000000070000000000000007135D8109045489F71386AD000CFD9BF9000000070F34D1020000000100000007000000000000000700000004135D44FD05000108135D450900000004045489F71386AD000CFD9BF90F350D020C9A87020F8750F900000007000000010F878CF900000001078000FA00000007128A41050000000200000007000000010F34D10200000001078000FA00000007128A410500000002028000FC0000000713D7B0FD028001080000000700000007000000030000000013867100000000000CFD9BF9000000070F34D1020000000100000007135D8109045489F71386AD000CFD9BF90F350D020C9A87020F8750F900000006000000010F878CF900000001078000FA00000007128A41050000000200000007000000010F34D102000000010000000A0000000013867100000000000CFD9BF9000000070F34D1020000000100000007000000040000000300000002135D450500000002050000FC135D80FD0000000305000108135D450900000004045489F71386AD000CFD9BF90F350D020C9A87020F8750F900000007000000010F878CF900000001028000FA0000000713D7B10500000002078000FC00000007128A40FD0000000700000003000000010F34D10200000001028000FA0000000713D7B10500000002078000FC00000007128A40FD0280010813D7B109000000040000000700000007000000030000000013867100000000000CFD9BF9000000070F34D1020000000100000007135D8109045489F71386AD000CFD9BF90F350D020C9A87020F8750F900000007000000010F878CF900000001028000FA0000000713D7B1050000000200000007000000010F34D10200000001028000FA0000000713D7B10500000002078000FC00000007128A40FD07800108128A4109000000040000000700000005000000030000000013867100000000000CFD9BF9000000070F34D102000000010000000700000004135D44FD05000108135D450900000004045489F71386AD000CFD9BF90F350D020C9A87020F8750F9028000FA13D7ED05028000FC00000007000000060000000200000008000000010F878CF900000001028000FA13D7ED05028000FC0000000713D7B0FD028001080000000800000006000000030000000213D7B10500000002028000FC13D7ECFD00000003028001080000000813D7ED09067ECE7712EA95000000000700000000000000070000000413D7B0FD02800108000000080000000600000003000000010F34D10200000001028000FA13D7ED05028000FC13D7ECFD0000000302800108000000070000000713D7B0FD0280010813D7B10900000004067ECE7712EA95000AD35779000000070000000A000000000000000713D7ED09067ECE7712EA95000000000A000000000000000700000004000000030000000213D7B10500000002028000FC13D7ECFD000000030280010813D7B10900000004067ECE7712EA95000AD3577910D13D02014000FA00000007000000080000000110D1010200000001014000FA0000000713F5D9050000000203C000FC0000000700000005000000000000000713D7ED09067ECE7712EA95000AD357790000000710D10102000000010000000500000000000000070000000413D7B0FD0280010813D7B10900000004067ECE7712EA95000AD3577910D13D02000000080000000110D1010200000001000000050000000012EA5900000000000000000500000005000000030000000013867100000000000CFD9BF90F350D0200000008000000010F34D10200000001028000FA0000000713D7B10500000002028000FC0000000700000005135D8109045489F71386AD000CFD9BF90F350D020C9A87020F8750F900000006000000010F878CF900000001028000FA13D7ED05028000FC00000007000000060000000213D7B10500000002028000FC13D7ECFD0000000307800108128A410900000004000000060000000500000005000000010F34D10200000001028000FA13D7ED05028000FC13D7ECFD0000000307800108128A41090000000400000007000000050000000500000002000000050000000013867100000000000CFD9BF90F350D020C9A87020F8750F9000000060000000100000007000000010F34D10200000001000000050000000400000003000000011207010200000001050000FA135D8105050000FC135D80FD0000000305000108135D450900000004045489F70000000A000000070000000A135D44FD05000108135D450900000004045489F70000000A1386710000000000000000070000000A0000000300000002135D450500000002050000FC135D80FD0000000305000108135D450900000004045489F71386AD00045489F91386AD02028000FA13D7ED05078000FC000000070000000A000000020000000900000001000000090000000000000009135D81090000000900000004135D44FD05000108135D450900000004045489F71386AD00045489F91386AD02028000FA0000000A13D7B10500000002028000FC13D7ECFD000000030280010813D7B10900000004067ECE770000000A000000090000000500000005000000010000000A000000001386710000000000045489F91386AD02028000FA000000070000000500000001000000090000000500000003"
theorem small_6568711_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6568711_right_root small_6568711_right_fuel small_6568711_right_count small_6568711_right_encoded = true := by
  decide +kernel
theorem small_6568711_right_covered : CoveredBy scale carrier boxes small_6568711_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6568711_right_root small_6568711_right_fuel small_6568711_right_count small_6568711_right_encoded small_6568711_right_checked

theorem cover_6568711 : CoveredBy scale carrier boxes root_6568711 := by
  apply coveredBy_split_literal root_6568711 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2475.root small_6568711_right_root coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2475.covered
  · exact small_6568711_right_covered
#print axioms cover_6568711

def root_6568705 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6568705_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6568705_left_fuel : Nat := 1
def small_6568705_left_count : Nat := 1
def small_6568705_left_encoded : String := "00000004"
theorem small_6568705_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6568705_left_root small_6568705_left_fuel small_6568705_left_count small_6568705_left_encoded = true := by
  decide +kernel
theorem small_6568705_left_covered : CoveredBy scale carrier boxes small_6568705_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6568705_left_root small_6568705_left_fuel small_6568705_left_count small_6568705_left_encoded small_6568705_left_checked

theorem cover_6568705 : CoveredBy scale carrier boxes root_6568705 := by
  apply coveredBy_split_literal root_6568705 small_6568705_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158.root_6568711 coord4 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_6568705_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158.cover_6568711
#print axioms cover_6568705

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0158
