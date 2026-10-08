import TaoBundleAssembly0596
import TaoBundleChunkBatch0816
import TaoBundleChunkBatch0817
import TaoBundleChunkBatch0818
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0597
def root_8721343 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8721343_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8721343_right_fuel : Nat := 20
def small_8721343_right_count : Nat := 217
def small_8721343_right_encoded : String := "135D450300000001045489FB1386AD04045489FD1386ACFC000000030CFD9C09000000050F350CFE000000040C9A86FE000000070F8751090000000400000007138670FC0CFD9C090F34D0FE078001000000000A128A7D01028000F8000000050000000900000000000000040F350CFE000000040C9A86FE0F878D0907800100128A41010000000000000007128A7D01028000F813D7ED03067ECE7B0000000900000009000000010000000700000000000000040F8751090000000407800100128A41010000000000000007128A7D01028000F813D7ED03067ECE7B0000000712EA590400000002022A457D000000070000000900000001000000070000000000000003000000021386710400000002045489FD1386ACFC000000030CFD9C090F34D0FE078001000000000A00000006000000040F350CFE000000040C9A86FE0F878D0907800100128A4101000000000000000A128A7D01028000F813D7ED03022A457B13E20104067ECE7D000000050000000900000002000000060000000113D7B103000000010000000600000000000000040F8751090000000407800100128A410100000000028000F813D7ED03022A457B0000000713E1C50400000002067ECE7D000000070000000A0000000100000007128A7D01028000F813D7ED03022A457B13E20104067ECE7D0000000712EA58FC0B4D43FE00000007108011090000000400000007000000030000000213E1C50400000002067ECE7D0000000612EA58FC00000006000000030000000113D7B10300000001022A457B0000000713E1C50400000002067ECE7D000000060000000600000000138670FC0CFD9C090F34D0FE0000000A000000040F350CFE000000040C9A86FE0F878D09078001000000000A128A7D01028000F8000000090000000900000000000000040F8751090000000407800100128A410100000000028000F813D7ED03022A457B13E20104022A457D0000000713E1C4FC0B4D43FE0000000910801109000000040000000900000003000000020000000A000000010000000A128A7D01028000F813D7ED03022A457B13E20104022A457D13E200FC000000030B4D43FE00000009108011090000000400000009000000090000000213E1C50400000002022A457D00000006000000090000000113D7B10300000001022A457B00000009000000090000000000000003"
theorem small_8721343_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8721343_right_root small_8721343_right_fuel small_8721343_right_count small_8721343_right_encoded = true := by
  decide +kernel
theorem small_8721343_right_covered : CoveredBy scale carrier boxes small_8721343_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8721343_right_root small_8721343_right_fuel small_8721343_right_count small_8721343_right_encoded small_8721343_right_checked

theorem cover_8721343 : CoveredBy scale carrier boxes root_8721343 := by
  apply coveredBy_split_literal root_8721343 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0596.root_8721344 small_8721343_right_root coord1 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0596.cover_8721344
  · exact small_8721343_right_covered
#print axioms cover_8721343

def root_8721338 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8721338_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8721338_right_fuel : Nat := 1
def small_8721338_right_count : Nat := 1
def small_8721338_right_encoded : String := "00000000"
theorem small_8721338_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8721338_right_root small_8721338_right_fuel small_8721338_right_count small_8721338_right_encoded = true := by
  decide +kernel
theorem small_8721338_right_covered : CoveredBy scale carrier boxes small_8721338_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8721338_right_root small_8721338_right_fuel small_8721338_right_count small_8721338_right_encoded small_8721338_right_checked

theorem cover_8721338 : CoveredBy scale carrier boxes root_8721338 := by
  apply coveredBy_split_literal root_8721338 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0597.root_8721343 small_8721338_right_root coord0 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0597.cover_8721343
  · exact small_8721338_right_covered
#print axioms cover_8721338

def root_8719146 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8719146 : CoveredBy scale carrier boxes root_8719146 := by
  apply coveredBy_split_literal root_8719146 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3264.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0597.root_8721338 coord0 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3264.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0597.cover_8721338
#print axioms cover_8719146

def root_8719140 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8719140_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8719140_left_fuel : Nat := 1
def small_8719140_left_count : Nat := 1
def small_8719140_left_encoded : String := "00000004"
theorem small_8719140_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8719140_left_root small_8719140_left_fuel small_8719140_left_count small_8719140_left_encoded = true := by
  decide +kernel
theorem small_8719140_left_covered : CoveredBy scale carrier boxes small_8719140_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8719140_left_root small_8719140_left_fuel small_8719140_left_count small_8719140_left_encoded small_8719140_left_checked

theorem cover_8719140 : CoveredBy scale carrier boxes root_8719140 := by
  apply coveredBy_split_literal root_8719140 small_8719140_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0597.root_8719146 coord4 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_8719140_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0597.cover_8719146
#print axioms cover_8719140

def root_8719100 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8719100_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8719100_left_fuel : Nat := 7
def small_8719100_left_count : Nat := 19
def small_8719100_left_encoded : String := "120700FE05000100135D450100000000050000F8135D8103045489FB000000050000000A000000010000000A135D8101050000F800000005135D4503000000010000000A0000000000000004"
theorem small_8719100_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8719100_left_root small_8719100_left_fuel small_8719100_left_count small_8719100_left_encoded = true := by
  decide +kernel
theorem small_8719100_left_covered : CoveredBy scale carrier boxes small_8719100_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8719100_left_root small_8719100_left_fuel small_8719100_left_count small_8719100_left_encoded small_8719100_left_checked

theorem cover_8719100 : CoveredBy scale carrier boxes root_8719100 := by
  apply coveredBy_split_literal root_8719100 small_8719100_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0597.root_8719140 coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_8719100_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0597.cover_8719140
#print axioms cover_8719100

def root_8719095 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8719095_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8719095_right_fuel : Nat := 1
def small_8719095_right_count : Nat := 1
def small_8719095_right_encoded : String := "00000003"
theorem small_8719095_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8719095_right_root small_8719095_right_fuel small_8719095_right_count small_8719095_right_encoded = true := by
  decide +kernel
theorem small_8719095_right_covered : CoveredBy scale carrier boxes small_8719095_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8719095_right_root small_8719095_right_fuel small_8719095_right_count small_8719095_right_encoded small_8719095_right_checked

theorem cover_8719095 : CoveredBy scale carrier boxes root_8719095 := by
  apply coveredBy_split_literal root_8719095 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0597.root_8719100 small_8719095_right_root coord3 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0597.cover_8719100
  · exact small_8719095_right_covered
#print axioms cover_8719095

def root_8718707 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8718707_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8718707_left_fuel : Nat := 26
def small_8718707_left_count : Nat := 179
def small_8718707_left_encoded : String := "12073CFC0000000308A91309120700FE000000050000000412073CFE0000000405000100135D450100000000050000F8135D8103045489FB0000000513867104000000020CFD9BFD000000050F34D0FC0CFD9C09000000050F350CFE000000040C9A86FE0F878D0900000005000000040F87510900000004028001000000000713D7ED01078000F8128A7D03000000050000000100000007000000000000000300000001135D450300000001045489FB0000000713867104000000020CFD9BFD000000070F34D0FC0CFD9C09000000050000000700000003135D8101050000F8135D8103045489FB1386AD040CFD9BFD000000050F34D0FC00000005000000030000000213867104000000020CFD9BFD0F350CFC000000030CFD9C09000000050F350CFE000000040C9A86FC000000050F8750FD00000005000000030F34D0FC0CFD9C09000000050F350CFE000000040C9A86FE0F878D0900000005000000040F8751090000000407800100128A410100000000078000F8128A7D030000000500000001128A41030000000100000007128A7D01078000F8128A7D030000000500000001128A410300000001022A457B0000000513E1C504000000020AD3577D0000000510D100FC0B4D43FE10804D09000000050000000410801109000000040000000800000003000000000000000300000001135D450300000001045489FB1386AD040CFD9BFD0F350CFC00000003000000070F34D0FC0CFD9C090000000500000007000000030000000213867104000000020CFD9BFD0F350CFC000000030CFD9C090F34D0FE00000005000000040F350CFE000000040C9A86FC00000007000000070F34D0FC0CFD9C090F34D0FE00000005000000040F350CFE000000040C9A86FE0F878D090780010000000007128A7D01028000F813D7ED03022A457B0000000500000006000000010000000700000000000000040F87510900000004000000070000000300000000"
theorem small_8718707_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8718707_left_root small_8718707_left_fuel small_8718707_left_count small_8718707_left_encoded = true := by
  decide +kernel
theorem small_8718707_left_covered : CoveredBy scale carrier boxes small_8718707_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8718707_left_root small_8718707_left_fuel small_8718707_left_count small_8718707_left_encoded small_8718707_left_checked

theorem cover_8718707 : CoveredBy scale carrier boxes root_8718707 := by
  apply coveredBy_split_literal root_8718707 small_8718707_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0597.root_8719095 coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_8718707_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0597.cover_8719095
#print axioms cover_8718707

def root_8718701 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8718701_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8718701_left_fuel : Nat := 1
def small_8718701_left_count : Nat := 1
def small_8718701_left_encoded : String := "00000002"
theorem small_8718701_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8718701_left_root small_8718701_left_fuel small_8718701_left_count small_8718701_left_encoded = true := by
  decide +kernel
theorem small_8718701_left_covered : CoveredBy scale carrier boxes small_8718701_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8718701_left_root small_8718701_left_fuel small_8718701_left_count small_8718701_left_encoded small_8718701_left_checked

theorem cover_8718701 : CoveredBy scale carrier boxes root_8718701 := by
  apply coveredBy_split_literal root_8718701 small_8718701_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0597.root_8718707 coord2 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_8718701_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0597.cover_8718707
#print axioms cover_8718701

def root_8718557 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8718557_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8718557_left_fuel : Nat := 20
def small_8718557_left_count : Nat := 71
def small_8718557_left_encoded : String := "12073D0408A912FD00000005120700FC08A913090000000512073CFE0000000405000100135D450100000000050000F8135D81030CFD9BFB000000050F34D10400000002045489FD00000005138670FC0CFD9C09000000050F350CFE000000040C9A86FE0000000700000005000000030000000100000007135D8101050000F8135D81030CFD9BFB000000050F34D10400000002045489FD00000005138670FC0CFD9C09000000050F350CFE000000040C9A86FE000000050F875109000000040780010000000005128A7D0100000005000000000000000300000001135D4503000000010CFD9BFB000000050F34D10400000002045489FD00000005138670FC0CFD9C09000000050000000700000003000000000000000300000002"
theorem small_8718557_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8718557_left_root small_8718557_left_fuel small_8718557_left_count small_8718557_left_encoded = true := by
  decide +kernel
theorem small_8718557_left_covered : CoveredBy scale carrier boxes small_8718557_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8718557_left_root small_8718557_left_fuel small_8718557_left_count small_8718557_left_encoded small_8718557_left_checked

theorem cover_8718557 : CoveredBy scale carrier boxes root_8718557 := by
  apply coveredBy_split_literal root_8718557 small_8718557_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0597.root_8718701 coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_8718557_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0597.cover_8718701
#print axioms cover_8718557

def root_8718552 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8718552_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8718552_right_fuel : Nat := 1
def small_8718552_right_count : Nat := 1
def small_8718552_right_encoded : String := "00000004"
theorem small_8718552_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8718552_right_root small_8718552_right_fuel small_8718552_right_count small_8718552_right_encoded = true := by
  decide +kernel
theorem small_8718552_right_covered : CoveredBy scale carrier boxes small_8718552_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8718552_right_root small_8718552_right_fuel small_8718552_right_count small_8718552_right_encoded small_8718552_right_checked

theorem cover_8718552 : CoveredBy scale carrier boxes root_8718552 := by
  apply coveredBy_split_literal root_8718552 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0597.root_8718557 small_8718552_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0597.cover_8718557
  · exact small_8718552_right_covered
#print axioms cover_8718552

def root_8730051 : ZRayBox := fun j => (#[⟨⟨(4194304), (6291456)⟩, ⟨(15552512), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8730051_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (6291456)⟩, ⟨(15552512), (16244736)⟩⟩, ⟨⟨(-6291456), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8730051_right_fuel : Nat := 23
def small_8730051_right_count : Nat := 101
def small_8730051_right_encoded : String := "128A410300000001078000FE128A7D09022A457B13E20104067ECE7D0000000712EA58FC064001000000000712FFAD01064000F812FFAD0308C000FE0000000711FBE9090000000400000007000000010000000700000000000000030000000213E1C50400000002067ECE7D12EA94FC0000000306400100000000070000000812EA58FC0640010012FF710100000000064000F812FFAD0308C000FE11FC25090115233B0000000713F85904000000020569AC3D00000007000000050000000400000008000000010000000712FFAD01064000F812FFAD0308C000FE11FC25090115233B13F895040569AC3D000000071340D4FC06E001000000000712C8210106E000F812C82103096000FE0000000700000008000000010000000700000000000000030000000213F85904000000020569AC3D000000081340D4FC000000080000000300000004000000080000000100000008000000000000000300000004128A410900000004022A457B13E20104067ECE7D0000000712EA58FC064001000000000700000008000000030000000200000008"
theorem small_8730051_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8730051_right_root small_8730051_right_fuel small_8730051_right_count small_8730051_right_encoded = true := by
  decide +kernel
theorem small_8730051_right_covered : CoveredBy scale carrier boxes small_8730051_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8730051_right_root small_8730051_right_fuel small_8730051_right_count small_8730051_right_encoded small_8730051_right_checked

theorem cover_8730051 : CoveredBy scale carrier boxes root_8730051 := by
  apply coveredBy_split_literal root_8730051 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3268.root small_8730051_right_root coord1 false (-6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3268.covered
  · exact small_8730051_right_covered
#print axioms cover_8730051

def root_8730045 : ZRayBox := fun j => (#[⟨⟨(4194304), (6291456)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8730045_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (6291456)⟩, ⟨(14529024), (15552512)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8730045_left_fuel : Nat := 1
def small_8730045_left_count : Nat := 1
def small_8730045_left_encoded : String := "00000000"
theorem small_8730045_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8730045_left_root small_8730045_left_fuel small_8730045_left_count small_8730045_left_encoded = true := by
  decide +kernel
theorem small_8730045_left_covered : CoveredBy scale carrier boxes small_8730045_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8730045_left_root small_8730045_left_fuel small_8730045_left_count small_8730045_left_encoded small_8730045_left_checked

theorem cover_8730045 : CoveredBy scale carrier boxes root_8730045 := by
  apply coveredBy_split_literal root_8730045 small_8730045_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0597.root_8730051 coord0 true (15552512)
  · decide +kernel
  · decide +kernel
  · exact small_8730045_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0597.cover_8730051
#print axioms cover_8730045

def root_8730044 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8730044_right_root : ZRayBox := fun j => (#[⟨⟨(6291456), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8730044_right_fuel : Nat := 26
def small_8730044_right_count : Nat := 363
def small_8730044_right_encoded : String := "128A7D01078000F8128A7D03078000FE128A7D09022A457B13E20104067ECE7D12EA94FC0000000308C0010011FBE9010000000008C000F80000000A11FBE9030000000108C000FE11FC2509000000050000000411FBE909000000040000000A0000000A12EA58FC08C0010011FBE9010000000008C000F80000000A11FBE9030000000108C000FE11FC2509033F67BB0000000A13BBF504000000020569AC3D0000000A1340D4FC0000000A000000030000000411FBE909000000040000000A0000000A000000030000000213E1C50400000002067ECE7D12EA94FC0000000308C0010011FBE9010000000008C000F811FC25030000000A0000000111FBE9030000000108C000FE11FC25090115233B13F895040793F0BD00000005128220FC00000008000000030000000200000008000000040000000811FC25010000000A0000000012EA58FC08C0010011FBE9010000000008C000F811FC250308C000FE11FC25090115233B0000000A13F85904000000020000000A000000040000000A0000000111FBE9030000000108C000FE11FC25090115233B13F895040569AC3D134110FC000000030820010012465D0100000000082000F80000000A000000080000000A1340D4FC0820010012465D0100000000082000F80000000A12465D0300000001096000FE0000000911AA810900000004000000080000000A000000030000000213F85904000000020569AC3D134110FC000000030820010000000008000000081340D4FC0820010012465D0100000000082000F812469903096000FE0000000611AA810900000004000000080000000112465D030000000100000008124699010000000600000000000000030000000411FBE909000000040115233B13F895040569AC3D000000080000000A000000020000000811FC250108C000F80000000A11FBE9030000000108C000FE11FC25090115233B0000000A00000006000000040000000A000000000000000300000004128A410900000004022A457B13E20104067ECE7D0000000A0000000A0000000213E1C50400000002067ECE7D0000000A12EA58FC08C0010011FBE9010000000008C000F80000000A000000080000000A0000000300000001128A410300000001078000FE128A7D09022A457B13E20104067ECE7D12EA94FC0000000308C0010011FBE901000000000000000711FC2501064000F812FFAD0308C000FE11FC2509033F67BB0000000500000008000000040000000800000001000000070000000012EA58FC08C0010011FBE90100000000064000F812FFAD0308C000FE11FC2509033F67BB0000000713BBF504000000020569AC3D000000071340D4FC0820010012465D010000000000000007124699010000000900000000000000030000000411FBE90900000004033F67BB00000007000000080000000112FF71030000000108C000FE000000070000000811FC2501064000F812FFAD0308C000FE11FC2509033F67BB0000000A13BBF504000000020569AC3D0000000A000000090000000411FBE909000000040000000A0000000112FF71030000000108C000FE11FC2509033F67BB0000000700000008000000040000000800000000000000030000000213E1C50400000002067ECE7D12EA94FC000000030000000812EA58FC08C0010011FBE90100000000064000F812FFAD0308C000FE11FC25090115233B13F895040569AC3D000000081340D4FC0820010012465D010000000006E000F812C821030000000800000001000000081246990100000008000000000000000300000002000000080000000400000008000000010000000811FC2501064000F812FFAD0308C000FE11FC25090115233B13F895040569AC3D0000000600000006000000020000000600000004000000080000000100000008000000000000000300000004128A410900000004022A457B13E20104067ECE7D0000000812EA58FC08C00100000000080000000800000003000000020000000800000000"
theorem small_8730044_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8730044_right_root small_8730044_right_fuel small_8730044_right_count small_8730044_right_encoded = true := by
  decide +kernel
theorem small_8730044_right_covered : CoveredBy scale carrier boxes small_8730044_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8730044_right_root small_8730044_right_fuel small_8730044_right_count small_8730044_right_encoded small_8730044_right_checked

theorem cover_8730044 : CoveredBy scale carrier boxes root_8730044 := by
  apply coveredBy_split_literal root_8730044 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0597.root_8730045 small_8730044_right_root coord0 false (6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0597.cover_8730045
  · exact small_8730044_right_covered
#print axioms cover_8730044

def root_8730038 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8730038_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-16379648)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8730038_left_fuel : Nat := 1
def small_8730038_left_count : Nat := 1
def small_8730038_left_encoded : String := "00000003"
theorem small_8730038_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8730038_left_root small_8730038_left_fuel small_8730038_left_count small_8730038_left_encoded = true := by
  decide +kernel
theorem small_8730038_left_covered : CoveredBy scale carrier boxes small_8730038_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8730038_left_root small_8730038_left_fuel small_8730038_left_count small_8730038_left_encoded small_8730038_left_checked

theorem cover_8730038 : CoveredBy scale carrier boxes root_8730038 := by
  apply coveredBy_split_literal root_8730038 small_8730038_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0597.root_8730044 coord3 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_8730038_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0597.cover_8730044
#print axioms cover_8730038

def root_8734126 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8734126_right_root : ZRayBox := fun j => (#[⟨⟨(6291456), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8734126_right_fuel : Nat := 23
def small_8734126_right_count : Nat := 333
def small_8734126_right_encoded : String := "128A7D01078000F8128A7D03078000FE128A7D09022A457B13E20104022A457D13E200FC0000000308C0010011FBE9010000000008C000F80000000A11FBE9030000000108C000FE11FC2509033F67BB13BC31040000000900000002000000090000000411FBE909000000040000000A0000000A13E1C4FC08C0010011FBE9010000000008C000F811FC25030000000A0000000111FBE9030000000108C000FE0000000911FBE909000000040000000911FC25010000000A00000000000000030000000213E1C50400000002022A457D13E200FC0000000308C0010011FBE9010000000008C000F811FC250308C000FE11FC25090115233B0000000A13F8590400000002033F67BD0000000A000000070000000411FBE909000000040000000A0000000111FBE9030000000108C000FE11FC25090115233B13F89504033F67BD13BC30FC0000000300000009000000090000000213F8590400000002033F67BD13BC30FC00000003082001000000000900000009000000050000000411FBE909000000040115233B13F89504033F67BD0000000A00000005000000020000000511FC250108C000F80000000A11FBE9030000000108C000FE0000000911FBE909000000040000000A0000000013E1C4FC08C0010011FBE9010000000008C000F8000000070000000511FC250100000007000000000000000300000004128A410900000004022A457B13E20104022A457D0000000A13E1C4FC0000000A000000030000000213E1C50400000002022A457D13E200FC0000000308C0010011FBE9010000000008C000F80000000A11FBE90300000001000000050000000A0000000500000001128A410300000001078000FE128A7D09022A457B13E20104022A457D13E200FC0000000308C0010011FBE90100000000064000F812FFAD0308C000FE11FC2509033F67BB00000009000000090000000411FBE90900000004033F67BB13BC3104033F67BD0000000A13BBF4FC082001000000000900000009000000030000000213BBF50400000002033F67BD13BC30FC000000030820010012465D010000000006E000F80000000A000000080000000A000000050000000112FF71030000000108C000FE11FC2509033F67BB00000009000000090000000411FBE90900000004033F67BB13BC3104033F67BD00000007000000090000000213BBF50400000002033F67BD000000080000000511FC2501064000F812FFAD0308C000FE0000000911FBE909000000040000000A0000000112FF71030000000108C000FE0000000911FBE90900000004033F67BB00000009000000090000000013E1C4FC08C0010011FBE90100000000064000F812FFAD0308C000FE0000000911FBE9090000000400000005000000010000000911FC25010000000900000000000000030000000213E1C50400000002022A457D13E200FC0000000308C0010011FBE90100000000064000F812FFAD0308C000FE11FC25090115233B00000009000000050000000411FBE90900000004000000050000000112FF7103000000010000000511FC2501064000F812FFAD0308C000FE0000000911FBE909000000040115233B00000009000000050000000112FF71030000000108C000FE0000000900000005000000000000000500000004128A410900000004022A457B13E20104022A457D13E200FC0000000308C0010011FBE90100000000064000F812FFAD03064000FE12FFAD09033F67BB0000000A000000050000000412FF710900000004000000080000000112FF7103000000010000000811FC2501064000F80000000A000000080000000000000005000000020000000500000000"
theorem small_8734126_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8734126_right_root small_8734126_right_fuel small_8734126_right_count small_8734126_right_encoded = true := by
  decide +kernel
theorem small_8734126_right_covered : CoveredBy scale carrier boxes small_8734126_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8734126_right_root small_8734126_right_fuel small_8734126_right_count small_8734126_right_encoded small_8734126_right_checked

theorem cover_8734126 : CoveredBy scale carrier boxes root_8734126 := by
  apply coveredBy_split_literal root_8734126 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3269.root small_8734126_right_root coord0 false (6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3269.covered
  · exact small_8734126_right_covered
#print axioms cover_8734126

def root_8734121 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8734121_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16378880), (-15122432)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8734121_right_fuel : Nat := 1
def small_8734121_right_count : Nat := 1
def small_8734121_right_encoded : String := "00000003"
theorem small_8734121_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8734121_right_root small_8734121_right_fuel small_8734121_right_count small_8734121_right_encoded = true := by
  decide +kernel
theorem small_8734121_right_covered : CoveredBy scale carrier boxes small_8734121_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8734121_right_root small_8734121_right_fuel small_8734121_right_count small_8734121_right_encoded small_8734121_right_checked

theorem cover_8734121 : CoveredBy scale carrier boxes root_8734121 := by
  apply coveredBy_split_literal root_8734121 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0597.root_8734126 small_8734121_right_root coord3 false (-16378880)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0597.cover_8734126
  · exact small_8734121_right_covered
#print axioms cover_8734121

def root_8730037 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8730037 : CoveredBy scale carrier boxes root_8730037 := by
  apply coveredBy_split_literal root_8730037 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0597.root_8730038 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0597.root_8734121 coord3 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0597.cover_8730038
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0597.cover_8734121
#print axioms cover_8730037

def root_8730031 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8730031_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8730031_left_fuel : Nat := 1
def small_8730031_left_count : Nat := 1
def small_8730031_left_encoded : String := "00000002"
theorem small_8730031_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8730031_left_root small_8730031_left_fuel small_8730031_left_count small_8730031_left_encoded = true := by
  decide +kernel
theorem small_8730031_left_covered : CoveredBy scale carrier boxes small_8730031_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8730031_left_root small_8730031_left_fuel small_8730031_left_count small_8730031_left_encoded small_8730031_left_checked

theorem cover_8730031 : CoveredBy scale carrier boxes root_8730031 := by
  apply coveredBy_split_literal root_8730031 small_8730031_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0597.root_8730037 coord2 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_8730031_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0597.cover_8730037
#print axioms cover_8730031

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0597
