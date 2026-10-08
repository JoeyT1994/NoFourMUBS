import TaoBundleAssembly0209
import TaoBundleChunkBatch0816
import TaoBundleChunkBatch0817
import TaoBundleChunkBatch0818
import TaoBundleChunkBatch0819
import TaoBundleChunkBatch0820
import TaoBundleChunkBatch0821
import TaoBundleChunkBatch0822
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0210
def root_8729109 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8729109_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8729109_right_fuel : Nat := 24
def small_8729109_right_count : Nat := 259
def small_8729109_right_encoded : String := "135D450300000001050000FE135D8109045489FB1386AD04045489FD00000007138670FC07800100128A410100000000028000F813D7ED03078000FE00000007128A410900000004000000070000000100000007128A7D01028000F813D7ED03078000FE128A7D09067ECE7B0000000712EA590400000002022A457D0000000713E1C4FC08C0010011FBE9010000000003C000F8000000090000000711FC250100000009000000000000000300000004128A410900000004067ECE7B0000000712EA590400000002022A457D0000000713E1C4FC08C0010011FBE901000000000000000511FC250103C000F813A54D03064000FE0000000900000005000000010000000500000000000000030000000113D7B10300000001078000FE00000007128A410900000004000000070000000000000003000000021386710400000002045489FD1386ACFC0000000307800100128A410100000000028000F813D7ED03078000FE128A7D09022A457B000000070000000800000004000000080000000100000007128A7D01028000F813D7ED03078000FE128A7D09022A457B13E20104067ECE7D0000000712EA58FC08C0010000000007000000080000000300000002000000080000000400000008000000010000000800000000138670FC07800100128A410100000000028000F813D7ED03078000FE128A7D09022A457B13E20104022A457D0000000700000005000000020000000500000004128A410900000004000000050000000113D7B10300000001078000FE128A7D09022A457B00000007000000050000000400000005128A7D01028000F813D7ED03078000FE128A7D09022A457B13E20104022A457D13E200FC0000000308C0010011FBE9010000000003C000F813A54D0308C000FE0000000711FBE9090000000400000007000000010000000711FC250103C000F813A54D0308C000FE00000009000000080000000113A5110300000001000000080000000000000005000000020000000500000004128A410900000004022A457B13E20104022A457D000000080000000500000002000000050000000113D7B10300000001078000FE128A7D09022A457B13E20104022A457D000000070000000500000002000000050000000400000008000000000000000300000004135D450900000004045489FB1386AD04045489FD1386ACFC00000003078001000000000700000008138670FC07800100128A410100000000028000F813D7ED03028000FE00000007000000060000000100000007128A7D01028000F813D7ED03028000FE13D7ED09067ECE7B12EA9504022A457D00000006000000060000000212EA590400000002022A457D0000000800000005000000040000000800000001000000080000000000000003000000021386710400000002045489FD0000000800000005"
theorem small_8729109_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8729109_right_root small_8729109_right_fuel small_8729109_right_count small_8729109_right_encoded = true := by
  decide +kernel
theorem small_8729109_right_covered : CoveredBy scale carrier boxes small_8729109_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8729109_right_root small_8729109_right_fuel small_8729109_right_count small_8729109_right_encoded small_8729109_right_checked

theorem cover_8729109 : CoveredBy scale carrier boxes root_8729109 := by
  apply coveredBy_split_literal root_8729109 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.root_8729110 small_8729109_right_root coord1 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.cover_8729110
  · exact small_8729109_right_covered
#print axioms cover_8729109

def root_8729104 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8729104_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8729104_right_fuel : Nat := 1
def small_8729104_right_count : Nat := 1
def small_8729104_right_encoded : String := "00000000"
theorem small_8729104_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8729104_right_root small_8729104_right_fuel small_8729104_right_count small_8729104_right_encoded = true := by
  decide +kernel
theorem small_8729104_right_covered : CoveredBy scale carrier boxes small_8729104_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8729104_right_root small_8729104_right_fuel small_8729104_right_count small_8729104_right_encoded small_8729104_right_checked

theorem cover_8729104 : CoveredBy scale carrier boxes root_8729104 := by
  apply coveredBy_split_literal root_8729104 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0210.root_8729109 small_8729104_right_root coord0 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0210.cover_8729109
  · exact small_8729104_right_covered
#print axioms cover_8729104

def root_8726968 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8726968 : CoveredBy scale carrier boxes root_8726968 := by
  apply coveredBy_split_literal root_8726968 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3267.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0210.root_8729104 coord0 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3267.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0210.cover_8729104
#print axioms cover_8726968

def root_8726963 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8726963_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8726963_right_fuel : Nat := 1
def small_8726963_right_count : Nat := 1
def small_8726963_right_encoded : String := "00000003"
theorem small_8726963_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8726963_right_root small_8726963_right_fuel small_8726963_right_count small_8726963_right_encoded = true := by
  decide +kernel
theorem small_8726963_right_covered : CoveredBy scale carrier boxes small_8726963_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8726963_right_root small_8726963_right_fuel small_8726963_right_count small_8726963_right_encoded small_8726963_right_checked

theorem cover_8726963 : CoveredBy scale carrier boxes root_8726963 := by
  apply coveredBy_split_literal root_8726963 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0210.root_8726968 small_8726963_right_root coord3 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0210.cover_8726968
  · exact small_8726963_right_covered
#print axioms cover_8726963

def root_8726241 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8726241_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8726241_left_fuel : Nat := 27
def small_8726241_left_count : Nat := 345
def small_8726241_left_encoded : String := "12073CFC0000000305000100135D450100000000050000F8135D8103050000FE135D8109045489FB1386AD040CFD9BFD000000050F34D0FC00000007000000030000000213867104000000020CFD9BFD0F350CFC000000030C9A86FC00000007000000070F34D0FC0280010013D7B10100000000078000F8128A7D03078000FE0000000700000009000000010000000713D7ED01078000F8128A7D03078000FE128A7D09022A457B0000000513E1C504000000020AD3577D0000000510D100FC000000070000000300000004128A410900000004022A457B00000007000000080000000100000007000000000000000300000004135D450900000004045489FB1386AD040CFD9BFD00000007000000060000000213867104000000020CFD9BFD000000080F34D0FC000000080000000300000001135D450300000001050000FE00000007135D450900000004045489FB0000000700000008135D8101050000F8135D8103050000FE135D8109045489FB1386AD040CFD9BFD0F350CFC000000030C9A86FC000000050F8750FD00000005000000030F34D0FC07800100128A410100000000078000F8128A7D03000000050000000100000007128A7D01078000F8128A7D0300000005000000010000000700000000000000030000000213867104000000020CFD9BFD0F350CFC000000030C9A86FC0F878CFD0000000307800100128A410100000000078000F8128A7D03078000FE00000005000000080000000100000007128A7D01078000F8128A7D03078000FE00000005000000080000000100000008000000000F8750FD0780010000000008128A7D01078000F8128A7D03078000FE0000000500000008000000010000000700000000000000030F34D0FC07800100128A410100000000078000F8128A7D03078000FE128A7D09022A457B0000000513E1C504000000020AD3577D0000000510D100FC0640010012FF71010000000008C000F811FC250308C000FE0000000500000008000000010000000712FFAD0108C000F811FC250308C000FE00000005000000080000000100000008000000000000000300000004128A410900000004022A457B13E201040AD3577D0000000510D100FC0000000800000003000000020000000800000001128A410300000001078000FE128A7D09022A457B00000007000000080000000400000008128A7D01078000F8128A7D03078000FE128A7D09022A457B0000000513E1C504000000020AD3577D0000000510D100FC08C0010011FBE9010000000008C000F811FC250300000005000000010000000811FC25010000000A000000000000000300000004128A410900000004022A457B13E201040AD3577D0000000510D100FC0000000800000003000000020000000800000001128A410300000001078000FE128A7D09022A457B13E201040AD3577D0000000510D100FC000000070000000300000002000000080000000400000008000000000000000300000004135D450900000004045489FB1386AD040CFD9BFD0F350CFC000000030C9A86FC0F878CFD000000030780010000000007000000080F8750FD00000007000000030F34D0FC07800100128A410100000000078000F8128A7D03000000060000000100000007128A7D01078000F8128A7D030000000A000000010000000800000000000000030000000213867104000000020CFD9BFD000000080F34D0FC0780010000000008000000080000000300000001135D450300000001050000FE135D8109045489FB1386AD04000000070000000213867104000000020CFD9BFD000000080F34D0FC0780010000000008000000080000000300000004135D450900000004045489FB1386AD040CFD9BFD000000070F34D0FC0000000700000003000000020000000800000000"
theorem small_8726241_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8726241_left_root small_8726241_left_fuel small_8726241_left_count small_8726241_left_encoded = true := by
  decide +kernel
theorem small_8726241_left_covered : CoveredBy scale carrier boxes small_8726241_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8726241_left_root small_8726241_left_fuel small_8726241_left_count small_8726241_left_encoded small_8726241_left_checked

theorem cover_8726241 : CoveredBy scale carrier boxes root_8726241 := by
  apply coveredBy_split_literal root_8726241 small_8726241_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0210.root_8726963 coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_8726241_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0210.cover_8726963
#print axioms cover_8726241

def root_8726235 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8726235_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8726235_left_fuel : Nat := 1
def small_8726235_left_count : Nat := 1
def small_8726235_left_encoded : String := "00000002"
theorem small_8726235_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8726235_left_root small_8726235_left_fuel small_8726235_left_count small_8726235_left_encoded = true := by
  decide +kernel
theorem small_8726235_left_covered : CoveredBy scale carrier boxes small_8726235_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8726235_left_root small_8726235_left_fuel small_8726235_left_count small_8726235_left_encoded small_8726235_left_checked

theorem cover_8726235 : CoveredBy scale carrier boxes root_8726235 := by
  apply coveredBy_split_literal root_8726235 small_8726235_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0210.root_8726241 coord2 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_8726235_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0210.cover_8726241
#print axioms cover_8726235

def root_8725981 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8725981_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8725981_left_fuel : Nat := 20
def small_8725981_left_count : Nat := 117
def small_8725981_left_encoded : String := "12073D0408A912FD12073CFC0000000305000100135D45010000000000000007135D8101050000F8135D8103050000FE135D81090CFD9BFB000000050F34D104000000020CFD9BFD000000050F34D0FC000000050000000300000004135D4509000000040CFD9BFB000000070F34D104000000020CFD9BFD000000070F34D0FC0000000700000003000000010000000700000000120700FC05000100135D450100000000050000F8135D8103050000FE00000007000000060000000100000007135D8101050000F8135D8103050000FE135D81090CFD9BFB0F350D0400000005000000020F34D10400000002045489FD1386ACFC000000030780010000000005128A7D010000000500000000138670FC07800100128A410100000000078000F8128A7D03000000060000000100000007128A7D01078000F8128A7D03078000FE128A7D0900000005000000040000000600000001128A410300000001078000FE00000007128A41090000000400000007000000000000000300000004135D4509000000040CFD9BFB000000060F34D10400000002045489FD1386ACFC00000003000000060000000600000001135D450300000001050000FE00000007135D45090000000400000007000000000000000300000002"
theorem small_8725981_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8725981_left_root small_8725981_left_fuel small_8725981_left_count small_8725981_left_encoded = true := by
  decide +kernel
theorem small_8725981_left_covered : CoveredBy scale carrier boxes small_8725981_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8725981_left_root small_8725981_left_fuel small_8725981_left_count small_8725981_left_encoded small_8725981_left_checked

theorem cover_8725981 : CoveredBy scale carrier boxes root_8725981 := by
  apply coveredBy_split_literal root_8725981 small_8725981_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0210.root_8726235 coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_8725981_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0210.cover_8726235
#print axioms cover_8725981

def root_8725975 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8725975_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8725975_left_fuel : Nat := 1
def small_8725975_left_count : Nat := 1
def small_8725975_left_encoded : String := "00000004"
theorem small_8725975_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8725975_left_root small_8725975_left_fuel small_8725975_left_count small_8725975_left_encoded = true := by
  decide +kernel
theorem small_8725975_left_covered : CoveredBy scale carrier boxes small_8725975_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8725975_left_root small_8725975_left_fuel small_8725975_left_count small_8725975_left_encoded small_8725975_left_checked

theorem cover_8725975 : CoveredBy scale carrier boxes root_8725975 := by
  apply coveredBy_split_literal root_8725975 small_8725975_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0210.root_8725981 coord4 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_8725975_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0210.cover_8725981
#print axioms cover_8725975

def root_8718551 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8718551 : CoveredBy scale carrier boxes root_8718551 := by
  apply coveredBy_split_literal root_8718551 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.root_8718552 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0210.root_8725975 coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.cover_8718552
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0210.cover_8725975
#print axioms cover_8718551

def root_8718545 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8718545_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8718545_left_fuel : Nat := 1
def small_8718545_left_count : Nat := 1
def small_8718545_left_encoded : String := "00000003"
theorem small_8718545_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8718545_left_root small_8718545_left_fuel small_8718545_left_count small_8718545_left_encoded = true := by
  decide +kernel
theorem small_8718545_left_covered : CoveredBy scale carrier boxes small_8718545_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8718545_left_root small_8718545_left_fuel small_8718545_left_count small_8718545_left_encoded small_8718545_left_checked

theorem cover_8718545 : CoveredBy scale carrier boxes root_8718545 := by
  apply coveredBy_split_literal root_8718545 small_8718545_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0210.root_8718551 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_8718545_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0210.cover_8718551
#print axioms cover_8718545

def root_8718544 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8718544_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8718544_right_fuel : Nat := 23
def small_8718544_right_count : Nat := 211
def small_8718544_right_encoded : String := "1151E8FD0A0000FE1152250908A912FB12073D0408A913090000000512073CFE000000040500010000000005135D8101000000050000000000000002120701040000000208A91309120700FE000000050000000412073CFE0000000405000100135D450100000000050000F8135D8103050000FC00000005135D44FD00000005000000030000000100000007135D8101050000F8135D8103050000FC135D80FD00000003045489FB0000000513867104000000020CFD9C09000000050F350CFE000000040C9A86FE000000050F875109000000040780010000000005128A7D010000000500000000135D44FD045489FB0000000513867104000000020CFD9C09000000050F350CFE000000040C9A86FE000000050F87510900000004000000070000000300000001135D450300000001050000FC135D80FD00000003045489FB0000000713867104000000020CFD9C090000000700000007135D44FD000000070000000300000000000000041151E9090000000408A912FB12073D040500010000000007135D8101050000F8135D8103050000FC00000007135D44FD000000070000000300000001000000070000000000000002120701040000000205000100135D450100000000050000F8135D8103050000FC135D80FD00000003050000FE0000000700000009135D44FD050000FE0000000700000006000000030000000100000007135D8101050000F8135D8103050000FC135D80FD00000003050000FE135D8109045489FB00000007138671040000000207800100128A410100000000078000F80000000900000007128A7D01078000F8128A7D03078000FC00000008128A40FD078000FE00000005000000080000000300000001000000080000000000000004135D450900000004045489FB1386AD040780010000000006128A7D01078000F80000000600000006000000000000000200000008135D44FD050000FE135D8109045489FB0000000713867104000000020780010000000009128A7D01078000F800000009000000070000000000000004135D450900000004045489FB00000006000000080000000300000001135D450300000001050000FC135D80FD00000003050000FE0000000700000008135D44FD050000FE0000000700000008000000030000000000000003"
theorem small_8718544_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8718544_right_root small_8718544_right_fuel small_8718544_right_count small_8718544_right_encoded = true := by
  decide +kernel
theorem small_8718544_right_covered : CoveredBy scale carrier boxes small_8718544_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8718544_right_root small_8718544_right_fuel small_8718544_right_count small_8718544_right_encoded small_8718544_right_checked

theorem cover_8718544 : CoveredBy scale carrier boxes root_8718544 := by
  apply coveredBy_split_literal root_8718544 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0210.root_8718545 small_8718544_right_root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0210.cover_8718545
  · exact small_8718544_right_covered
#print axioms cover_8718544

def root_8718538 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8718538_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8718538_left_fuel : Nat := 1
def small_8718538_left_count : Nat := 1
def small_8718538_left_encoded : String := "00000002"
theorem small_8718538_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8718538_left_root small_8718538_left_fuel small_8718538_left_count small_8718538_left_encoded = true := by
  decide +kernel
theorem small_8718538_left_covered : CoveredBy scale carrier boxes small_8718538_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8718538_left_root small_8718538_left_fuel small_8718538_left_count small_8718538_left_encoded small_8718538_left_checked

theorem cover_8718538 : CoveredBy scale carrier boxes root_8718538 := by
  apply coveredBy_split_literal root_8718538 small_8718538_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0210.root_8718544 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_8718538_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0210.cover_8718544
#print axioms cover_8718538

def root_8718492 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8718492_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8718492_left_fuel : Nat := 9
def small_8718492_left_count : Nat := 21
def small_8718492_left_encoded : String := "1151E8FB0A0000FC115224FD000000030A0000FE1152250908A912FD00000005120700FC08A91309000000050000000700000003000000041151E90900000004000000071151E8FD000000050000000300000002"
theorem small_8718492_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8718492_left_root small_8718492_left_fuel small_8718492_left_count small_8718492_left_encoded = true := by
  decide +kernel
theorem small_8718492_left_covered : CoveredBy scale carrier boxes small_8718492_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8718492_left_root small_8718492_left_fuel small_8718492_left_count small_8718492_left_encoded small_8718492_left_checked

theorem cover_8718492 : CoveredBy scale carrier boxes root_8718492 := by
  apply coveredBy_split_literal root_8718492 small_8718492_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0210.root_8718538 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_8718492_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0210.cover_8718538
#print axioms cover_8718492

def root_8718486 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8718486_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8718486_left_fuel : Nat := 1
def small_8718486_left_count : Nat := 1
def small_8718486_left_encoded : String := "00000001"
theorem small_8718486_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8718486_left_root small_8718486_left_fuel small_8718486_left_count small_8718486_left_encoded = true := by
  decide +kernel
theorem small_8718486_left_covered : CoveredBy scale carrier boxes small_8718486_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8718486_left_root small_8718486_left_fuel small_8718486_left_count small_8718486_left_encoded small_8718486_left_checked

theorem cover_8718486 : CoveredBy scale carrier boxes root_8718486 := by
  apply coveredBy_split_literal root_8718486 small_8718486_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0210.root_8718492 coord1 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_8718486_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0210.cover_8718492
#print axioms cover_8718486

def root_8712760 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8712760 : CoveredBy scale carrier boxes root_8712760 := by
  apply coveredBy_split_literal root_8712760 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.root_8712761 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0210.root_8718486 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0209.cover_8712761
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0210.cover_8718486
#print axioms cover_8712760

def root_8712754 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8712754_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8712754_left_fuel : Nat := 1
def small_8712754_left_count : Nat := 1
def small_8712754_left_encoded : String := "00000000"
theorem small_8712754_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8712754_left_root small_8712754_left_fuel small_8712754_left_count small_8712754_left_encoded = true := by
  decide +kernel
theorem small_8712754_left_covered : CoveredBy scale carrier boxes small_8712754_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8712754_left_root small_8712754_left_fuel small_8712754_left_count small_8712754_left_encoded small_8712754_left_checked

theorem cover_8712754 : CoveredBy scale carrier boxes root_8712754 := by
  apply coveredBy_split_literal root_8712754 small_8712754_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0210.root_8712760 coord0 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_8712754_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0210.cover_8712760
#print axioms cover_8712754

def root_8740167 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8740167 : CoveredBy scale carrier boxes root_8740167 := by
  apply coveredBy_split_literal root_8740167 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3271.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3272.root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3271.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3272.covered
#print axioms cover_8740167

def root_8740161 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8740161_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8740161_left_fuel : Nat := 1
def small_8740161_left_count : Nat := 1
def small_8740161_left_encoded : String := "00000003"
theorem small_8740161_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8740161_left_root small_8740161_left_fuel small_8740161_left_count small_8740161_left_encoded = true := by
  decide +kernel
theorem small_8740161_left_covered : CoveredBy scale carrier boxes small_8740161_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8740161_left_root small_8740161_left_fuel small_8740161_left_count small_8740161_left_encoded small_8740161_left_checked

theorem cover_8740161 : CoveredBy scale carrier boxes root_8740161 := by
  apply coveredBy_split_literal root_8740161 small_8740161_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0210.root_8740167 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_8740161_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0210.cover_8740167
#print axioms cover_8740161

def root_8744905 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8744905_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8744905_left_fuel : Nat := 30
def small_8744905_left_count : Nat := 451
def small_8744905_left_encoded : String := "1152250908A91301120701000000000008A912FB12073D0408A91309120700FE000000050000000412073CFE00000004050000F800000005135D450300000001050000FC000000050000000900000002120701040000000208A91309120700FE000000050000000412073CFE00000004050000F8135D8103050000FC00000005135D44FD04548A01000000091386AD00045489FB0000000900000006000000000000000300000001135D450300000001050000FC135D80FD0000000304548A01000000061386AD00045489FB0000000900000006000000000000000912073D0008A912FB12073D0408A91309120700FE000000050000000412073CFE00000004050000F8135D8103050000FC00000005135D44FD000000050000000300000001135D450300000001050000FC135D80FD000000030CFD9C01000000050F350D000000000500000000135D44FD0CFD9C010F34D100000000000CFD9BFB0F350D0400000005000000020F34D104000000020CFD9C0900000009000000070F350D0000000007000000000000000300000002120701040000000208A91309120700FE050000F800000005135D450300000001050000FC00000005135D44FD00000005000000030000000412073CFE00000004050000F8135D8103050000FC135D80FD000000030CFD9C010F34D10000000000045489FB0000000513867104000000020CFD9C09000000050F350CFE000000040C9A86FE000000050F87510900000004078000F800000005128A410300000001000000060F350D00045489FB0000000513867104000000020CFD9C09000000050F350CFE000000040C9A87000F875101000000000C9A86FE000000050F87510900000004078000F800000005128A410300000001078000FC00000005000000070F878D010C9A86FE000000050F87510900000004078000F800000005128A410300000001078000FC00000005128A40FD00000005000000030000000000000000135D44FD0CFD9C010F34D10000000000045489FB1386AD040CFD9C09000000050F350CFE000000040C9A86FE000000050F87510900000004078000F800000005000000090000000213867104000000020CFD9C09000000060F350CFE000000040C9A86FE0F878D0900000006000000040F87510900000004078000F8128A7D03028000FC0000000513D7B0FD0AD357810000000510D13D0000000005000000000000000300000001128A410300000001028000FC00000006000000090F350D00045489FB1386AD040CFD9C09000000050F350CFE000000040C9A8700000000050F878D0100000005000000000000000213867104000000020CFD9C090F34D0FE00000005000000040F350CFE000000040C9A87000F875101000000000C9A86FE0F878D0900000005000000040F87510900000004078000F8128A7D030000000500000001000000070F878D010C9A86FE0F878D0900000005000000040F87510900000004078000F8128A7D03028000FC0000000513D7B0FD022A457B0000000513E1C504000000020DE7CA00000000050E60150100000005000000000000000300000001128A410300000001028000FC13D7ECFD00000003022A457B000000050000000813D7B0FD022A457B0000000713E1C504000000020DE7CA000E5FD90100000000000000070E60150100000006000000000000000300000000000000000000000300000001135D450300000001050000FC135D80FD000000030CFD9C010F34D10000000000045489FB1386AD040CFD9C090F34D0FE00000005000000040F350CFE000000040C9A86FE000000090F87510900000004028000F800000009000000090000000213867104000000020CFD9C09000000060F350CFE000000040C9A86FE000000060F87510900000004000000060F350D00045489FB1386AD040CFD9C090F34D0FE00000005000000040F350CFE000000040C9A8700000000070F878D0100000007000000000000000213867104000000020CFD9C090F34D0FE00000005000000040F350CFE000000040C9A87000F875101000000000C9A86FE000000070F87510900000004000000070F878D010C9A86FE0F878D09028000F80000000500000006000000040F87510900000004000000080000000000000000135D44FD0CFD9C010F34D10000000000045489FB1386AD040CFD9C0900000009000000090000000213867104000000020CFD9C09000000060F350CFE000000040C9A86FE000000090F87510900000004000000090F350D00045489FB1386AD040CFD9C090F34D0FE0000000500000004000000070000000213867104000000020CFD9C090F34D0FE0C9A87000000000500000006000000040F350CFE000000040C9A87000F87510100000000000000070F878D010C9A86FE0F878D0900000007000000040F87510900000004028000F813D7ED03028000FC000000070000000700000001000000070000000000000000000000030000000000000004"
theorem small_8744905_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8744905_left_root small_8744905_left_fuel small_8744905_left_count small_8744905_left_encoded = true := by
  decide +kernel
theorem small_8744905_left_covered : CoveredBy scale carrier boxes small_8744905_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8744905_left_root small_8744905_left_fuel small_8744905_left_count small_8744905_left_encoded small_8744905_left_checked

theorem cover_8744905 : CoveredBy scale carrier boxes root_8744905 := by
  apply coveredBy_split_literal root_8744905 small_8744905_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3273.root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact small_8744905_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3273.covered
#print axioms cover_8744905

def root_8744900 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8744900_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8744900_right_fuel : Nat := 1
def small_8744900_right_count : Nat := 1
def small_8744900_right_encoded : String := "00000003"
theorem small_8744900_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8744900_right_root small_8744900_right_fuel small_8744900_right_count small_8744900_right_encoded = true := by
  decide +kernel
theorem small_8744900_right_covered : CoveredBy scale carrier boxes small_8744900_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8744900_right_root small_8744900_right_fuel small_8744900_right_count small_8744900_right_encoded small_8744900_right_checked

theorem cover_8744900 : CoveredBy scale carrier boxes root_8744900 := by
  apply coveredBy_split_literal root_8744900 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0210.root_8744905 small_8744900_right_root coord3 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0210.cover_8744905
  · exact small_8744900_right_covered
#print axioms cover_8744900

def root_8740160 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8740160 : CoveredBy scale carrier boxes root_8740160 := by
  apply coveredBy_split_literal root_8740160 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0210.root_8740161 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0210.root_8744900 coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0210.cover_8740161
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0210.cover_8744900
#print axioms cover_8740160

def root_8740154 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8740154_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8740154_left_fuel : Nat := 1
def small_8740154_left_count : Nat := 1
def small_8740154_left_encoded : String := "00000002"
theorem small_8740154_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8740154_left_root small_8740154_left_fuel small_8740154_left_count small_8740154_left_encoded = true := by
  decide +kernel
theorem small_8740154_left_covered : CoveredBy scale carrier boxes small_8740154_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8740154_left_root small_8740154_left_fuel small_8740154_left_count small_8740154_left_encoded small_8740154_left_checked

theorem cover_8740154 : CoveredBy scale carrier boxes root_8740154 := by
  apply coveredBy_split_literal root_8740154 small_8740154_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0210.root_8740160 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_8740154_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0210.cover_8740160
#print axioms cover_8740154

def root_8740030 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8740030_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8740030_left_fuel : Nat := 16
def small_8740030_left_count : Nat := 59
def small_8740030_left_encoded : String := "1151E8FB0A0000FC115224FD000000030A0000FE1152250900000005000000041151E9090000000408A91301120701000000000008A912FD00000005120700FC000000050000000312073D0008A912FD12073CFC00000003050000F80000000500000007120700FC050000F800000005135D4503000000010500010400000005135D80FB00000002050000FE00000005135D4509000000040000000700000003000000001151E8FD0A0000FE000000051151E9090000000408A913011207010000000000050000F8000000050000000912073D00050000F80000000500000007000000000000000300000002"
theorem small_8740030_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8740030_left_root small_8740030_left_fuel small_8740030_left_count small_8740030_left_encoded = true := by
  decide +kernel
theorem small_8740030_left_covered : CoveredBy scale carrier boxes small_8740030_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8740030_left_root small_8740030_left_fuel small_8740030_left_count small_8740030_left_encoded small_8740030_left_checked

theorem cover_8740030 : CoveredBy scale carrier boxes root_8740030 := by
  apply coveredBy_split_literal root_8740030 small_8740030_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0210.root_8740154 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_8740030_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0210.cover_8740154
#print axioms cover_8740030

def root_8740024 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8740024_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8740024_left_fuel : Nat := 1
def small_8740024_left_count : Nat := 1
def small_8740024_left_encoded : String := "00000001"
theorem small_8740024_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8740024_left_root small_8740024_left_fuel small_8740024_left_count small_8740024_left_encoded = true := by
  decide +kernel
theorem small_8740024_left_covered : CoveredBy scale carrier boxes small_8740024_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8740024_left_root small_8740024_left_fuel small_8740024_left_count small_8740024_left_encoded small_8740024_left_checked

theorem cover_8740024 : CoveredBy scale carrier boxes root_8740024 := by
  apply coveredBy_split_literal root_8740024 small_8740024_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0210.root_8740030 coord1 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_8740024_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0210.cover_8740030
#print axioms cover_8740024

def root_8738698 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8738698 : CoveredBy scale carrier boxes root_8738698 := by
  apply coveredBy_split_literal root_8738698 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3270.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0210.root_8740024 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3270.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0210.cover_8740024
#print axioms cover_8738698

def root_8738693 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8738693_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8738693_right_fuel : Nat := 1
def small_8738693_right_count : Nat := 1
def small_8738693_right_encoded : String := "00000000"
theorem small_8738693_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8738693_right_root small_8738693_right_fuel small_8738693_right_count small_8738693_right_encoded = true := by
  decide +kernel
theorem small_8738693_right_covered : CoveredBy scale carrier boxes small_8738693_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8738693_right_root small_8738693_right_fuel small_8738693_right_count small_8738693_right_encoded small_8738693_right_checked

theorem cover_8738693 : CoveredBy scale carrier boxes root_8738693 := by
  apply coveredBy_split_literal root_8738693 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0210.root_8738698 small_8738693_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0210.cover_8738698
  · exact small_8738693_right_covered
#print axioms cover_8738693

def root_8712753 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8712753 : CoveredBy scale carrier boxes root_8712753 := by
  apply coveredBy_split_literal root_8712753 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0210.root_8712754 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0210.root_8738693 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0210.cover_8712754
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0210.cover_8738693
#print axioms cover_8712753

def root_8711297 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8711297 : CoveredBy scale carrier boxes root_8711297 := by
  apply coveredBy_split_literal root_8711297 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3261.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0210.root_8712753 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3261.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0210.cover_8712753
#print axioms cover_8711297

def root_8748503 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8748503 : CoveredBy scale carrier boxes root_8748503 := by
  apply coveredBy_split_literal root_8748503 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3274.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3275.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3274.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3275.covered
#print axioms cover_8748503

def root_8755447 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8755447 : CoveredBy scale carrier boxes root_8755447 := by
  apply coveredBy_split_literal root_8755447 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3277.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3278.root coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3277.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3278.covered
#print axioms cover_8755447

def root_8755442 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8755442_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8755442_right_fuel : Nat := 1
def small_8755442_right_count : Nat := 1
def small_8755442_right_encoded : String := "00000001"
theorem small_8755442_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8755442_right_root small_8755442_right_fuel small_8755442_right_count small_8755442_right_encoded = true := by
  decide +kernel
theorem small_8755442_right_covered : CoveredBy scale carrier boxes small_8755442_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8755442_right_root small_8755442_right_fuel small_8755442_right_count small_8755442_right_encoded small_8755442_right_checked

theorem cover_8755442 : CoveredBy scale carrier boxes root_8755442 := by
  apply coveredBy_split_literal root_8755442 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0210.root_8755447 small_8755442_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0210.cover_8755447
  · exact small_8755442_right_covered
#print axioms cover_8755442

def root_8760917 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8760917_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8760917_left_fuel : Nat := 27
def small_8760917_left_count : Nat := 481
def small_8760917_left_encoded : String := "120701000000000008A913091207010800000004050000F8135D810305000104135D44FB050000FC135D80FD0000000304548A010000000A00000008135D44FD04548A01000000071386AD0004548A09000000071386AD08078000F800000007128A4103000000010280010413D7B0FB028000FC0000000800000007000000020000000700000004000000000000000300000002135D80FB00000002050000FC000000080000000700000001135D45030000000105000104135D44FB050000FC135D80FD0000000304548A0113867100000000000000000A00000008135D44FD04548A01138671000000000004548A09000000071386AD08028000F80000000700000005000000041386AD0004548A09000000081386AD08028000F813D7ED030280010413D7B0FB028000FC0000000813D7B0FD067ECE8100000007000000080000000300000002000000080000000113D7B103000000010280010413D7B0FB028000FC0000000800000005000000020000000500000004000000000000000300000002135D80FB00000002050000FC000000080000000512073D08050000F8135D810305000104135D44FB050000FC135D80FD0000000304548A010000000A1386AD000CFD9C090F34D108000000040000000A0000000A00000000135D44FD04548A0113867100000000000CFD9C090F34D108000000040000000A0000000A1386AD000CFD9C090F34D10800000004078000F80000000A128A4103000000010280010413D7B0FB0000000A000000020000000A0F350D080C9A87080F875109000000040000000A0F878D09078000F80000000A128A4103000000010000000A0000000400000004000000000000000300000002135D80FB00000002050000FC135D80FD0000000304548A010000000A1386AD000CFD9C090F34D108000000040000000A0000000A00000000135D44FD04548A0113867100000000000CFD9C090F34D10800000004000000070000000A1386AD000CFD9C090F34D10800000004078000F80000000A128A41030000000107800104128A40FB0000000A000000020000000A0F350D080C9A87080F875109000000040000000A0F878D09078000F80000000A128A4103000000010000000A0000000400000004000000000000000300000001135D45030000000105000104135D44FB050000FC135D80FD0000000304548A0113867100000000000CFD9C090F34D108000000040000000A0000000A1386AD000CFD9C090F34D10800000004028000F80000000A13D7B103000000010280010413D7B0FB0000000A00000002000000080F350D080C9A87080F875109000000040000000A0F878D09028000F80000000A13D7B103000000010000000A000000040000000400000000135D44FD04548A0113867100000000000CFD9C090F34D10800000004028000F80000000A13D7B103000000010280010400000009000000050F350D0800000009000000041386AD000CFD9C090F34D10800000004028000F813D7ED030280010413D7B0FB028000FC0000000A13D7B0FD067ECE810000000A12EA95000AD3578910D101080000000403C000F80000000A13A511030000000101400104000000090000000510D13D0803C000F800000009000000090000000400000000000000030000000213D7ECFB00000002028000FC0000000A13D7B0FD067ECE810000000A12EA95000AD3578910D1010800000004000000050000000A00000000000000030000000113D7B103000000010280010413D7B0FB028000FC13D7ECFD00000003067ECE810000000A12EA95000AD35789000000080000000A0000000013D7B0FD067ECE8112EA5900000000000000000512EA95000AD3578910D10108000000040000000510D13D08000000090000000400000000000000030000000213D7ECFB00000002028000FC13D7ECFD00000003067ECE810000000A12EA95000000000800000000000000050F350D080C9A87080F87510900000004028000F800000009000000070F878D09028000F813D7ED030280010413D7B0FB028000FC0000000A000000090000000213D7ECFB00000002028000FC0000000A13D7B0FD067ECE810000000912EA95000000000A00000000000000030000000113D7B10300000001028001040000000913D7ECFB00000002028000FC00000006000000060000000400000004000000000000000300000002135D80FB00000002050000FC135D80FD0000000304548A0113867100000000000CFD9C090F34D108000000040000000A0000000A1386AD000CFD9C090F34D10800000004000000080F350D080C9A87080F87510900000004000000060F878D09028000F80000000A00000006000000040000000400000000135D44FD04548A0113867100000000000CFD9C090F34D10800000004000000050F350D080C9A87080F87510900000004000000060000000A000000041386AD000CFD9C090F34D10800000004028000F813D7ED0307800104128A40FB028000FC0000000A00000005000000020000000500000001000000050F350D080C9A87080F87510900000004000000060F878D09028000F813D7ED0307800104128A40FB028000FC0000000600000006000000020000000600000001000000060000000400000004000000000000000300000004"
theorem small_8760917_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8760917_left_root small_8760917_left_fuel small_8760917_left_count small_8760917_left_encoded = true := by
  decide +kernel
theorem small_8760917_left_covered : CoveredBy scale carrier boxes small_8760917_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8760917_left_root small_8760917_left_fuel small_8760917_left_count small_8760917_left_encoded small_8760917_left_checked

theorem cover_8760917 : CoveredBy scale carrier boxes root_8760917 := by
  apply coveredBy_split_literal root_8760917 small_8760917_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3279.root coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_8760917_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3279.covered
#print axioms cover_8760917

def root_8760912 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8760912_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8760912_right_fuel : Nat := 1
def small_8760912_right_count : Nat := 1
def small_8760912_right_encoded : String := "00000004"
theorem small_8760912_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8760912_right_root small_8760912_right_fuel small_8760912_right_count small_8760912_right_encoded = true := by
  decide +kernel
theorem small_8760912_right_covered : CoveredBy scale carrier boxes small_8760912_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8760912_right_root small_8760912_right_fuel small_8760912_right_count small_8760912_right_encoded small_8760912_right_checked

theorem cover_8760912 : CoveredBy scale carrier boxes root_8760912 := by
  apply coveredBy_split_literal root_8760912 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0210.root_8760917 small_8760912_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0210.cover_8760917
  · exact small_8760912_right_covered
#print axioms cover_8760912

def root_8760630 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8760630_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8760630_left_fuel : Nat := 21
def small_8760630_left_count : Nat := 137
def small_8760630_left_encoded : String := "1151E9090000000408A913011207010000000000050000F8135D810305000104135D44FB050000FC000000050000000900000002135D80FB00000002050000FC0000000A135D44FD05000108000000090000000A0000000300000001135D45030000000105000104135D44FB050000FC135D80FD000000030500010800000005135D810904548A010000000900000007000000040000000900000002135D80FB00000002050000FC135D80FD0000000305000108135D45090000000400000009135D810904548A010000000A0000000600000004135D44FD0500010800000009000000060000000312073D00050000F8135D810305000104135D44FB050000FC00000005135D44FD000000070000000300000002135D80FB00000002050000FC135D80FD000000030500010800000005135D81090CFD9C010F34D10000000000078000F800000005128A4103000000010780010400000005000000060000000700000004135D44FD05000108135D45090000000400000007135D81090CFD9C010F34D10000000000078000F8128A7D0307800104128A40FB028000FC0000000513D7B0FD07800108000000050000000A0000000300000002128A7CFB00000002028000FC000000060000000600000001128A41030000000107800104000000070000000600000007000000040000000300000001135D4503000000010500010400000007135D80FB00000002050000FC00000007135D44FD000000070000000300000000"
theorem small_8760630_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8760630_left_root small_8760630_left_fuel small_8760630_left_count small_8760630_left_encoded = true := by
  decide +kernel
theorem small_8760630_left_covered : CoveredBy scale carrier boxes small_8760630_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8760630_left_root small_8760630_left_fuel small_8760630_left_count small_8760630_left_encoded small_8760630_left_checked

theorem cover_8760630 : CoveredBy scale carrier boxes root_8760630 := by
  apply coveredBy_split_literal root_8760630 small_8760630_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0210.root_8760912 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_8760630_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0210.cover_8760912
#print axioms cover_8760630

def root_8760625 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8760625_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8760625_right_fuel : Nat := 1
def small_8760625_right_count : Nat := 1
def small_8760625_right_encoded : String := "00000003"
theorem small_8760625_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8760625_right_root small_8760625_right_fuel small_8760625_right_count small_8760625_right_encoded = true := by
  decide +kernel
theorem small_8760625_right_covered : CoveredBy scale carrier boxes small_8760625_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8760625_right_root small_8760625_right_fuel small_8760625_right_count small_8760625_right_encoded small_8760625_right_checked

theorem cover_8760625 : CoveredBy scale carrier boxes root_8760625 := by
  apply coveredBy_split_literal root_8760625 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0210.root_8760630 small_8760625_right_root coord3 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0210.cover_8760630
  · exact small_8760625_right_covered
#print axioms cover_8760625

def root_8759933 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8759933_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8759933_left_fuel : Nat := 22
def small_8759933_left_count : Nat := 319
def small_8759933_left_encoded : String := "115224FD000000030A0001081151E9090000000408A91301120701000000000008A912FD12073CFC00000003050000F8135D81030000000A00000001135D45030000000105000104135D44FB05000108000000050000000A00000002135D80FB0000000205000108135D4509000000040000000A0000000A120700FC0000000A0000000312073D0008A912FD12073CFC00000003050000F8135D81030500010400000005135D80FB000000020500010800000005135D81090CFD9C010F34D100000000000000000A0F350D000CFD9BFD0000000500000006000000000000000400000001135D45030000000105000104135D44FB0000000700000002135D80FB0000000205000108135D45090000000400000007135D81090CFD9C010F34D100000000000CFD9BFD00000007000000060000000700000004120700FC050000F8135D810305000104135D44FB0000000500000002135D80FB0000000205000108135D4509000000040000000A0000000600000001135D45030000000105000104135D44FB05000108000000050000000600000002135D80FB0000000205000108135D4509000000040CFD9C010F34D100000000000000000A000000060000000600000003000000001152250908A91301120701000000000008A912FD12073CFC0000000308A913091207010800000004050000F8000000080000000812073D08050000F8135D810305000104135D44FB0000000A000000020000000A00000001135D45030000000105000104135D44FB04548A010000000A1386AD000CFD9BFD0F350CFC000000030CFD9C090F34D10800000004000000080000000A0000000A0000000000000002135D80FB0000000204548A010000000A1386AD000CFD9BFD0F350CFC000000030CFD9C09000000080000000A0F34D0FC00000008000000030000000000000004120700FC08A91309000000080000000A0000000312073D0008A912FD12073CFC0000000308A9130912070108000000040000000812073D08050000F8135D810305000104135D44FB0CFD9C010F34D100000000000CFD9BFD0F350CFC000000030CFD9C09000000050000000A0F34D0FC00000005000000030F350D000CFD9BFD000000050F34D0FC00000005000000030000000000000002135D80FB000000020CFD9C010F34D100000000000CFD9BFD0F350CFC000000030CFD9C09000000080000000A0F34D0FC00000008000000030F350D000CFD9BFD000000080F34D0FC00000008000000030000000000000001135D45030000000105000104135D44FB0CFD9C010F34D100000000000CFD9BFD0F350CFC000000030CFD9C09000000080F350D080C9A86FC0F878CFD00000003000000080F8750FD0000000700000003000000040F34D0FC00000008000000030F350D000CFD9BFD0F350CFC000000030CFD9C0900000008000000070F34D0FC00000008000000030000000000000002135D80FB000000020CFD9C010F34D100000000000CFD9BFD0F350CFC000000030CFD9C09000000080F350D0800000008000000040F34D0FC00000008000000030F350D00000000080000000000000004120700FC08A9130912070108000000040000000812073D08050000F8135D810305000104135D44FB0CFD9C01000000050F350D000000000A0000000000000002135D80FB000000020CFD9C010000000A0F350D00045489FD00000008000000060000000000000001135D4503000000010000000800000004000000030000000000000004"
theorem small_8759933_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8759933_left_root small_8759933_left_fuel small_8759933_left_count small_8759933_left_encoded = true := by
  decide +kernel
theorem small_8759933_left_covered : CoveredBy scale carrier boxes small_8759933_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8759933_left_root small_8759933_left_fuel small_8759933_left_count small_8759933_left_encoded small_8759933_left_checked

theorem cover_8759933 : CoveredBy scale carrier boxes root_8759933 := by
  apply coveredBy_split_literal root_8759933 small_8759933_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0210.root_8760625 coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact small_8759933_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0210.cover_8760625
#print axioms cover_8759933

def root_8759928 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8759928_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8759928_right_fuel : Nat := 1
def small_8759928_right_count : Nat := 1
def small_8759928_right_encoded : String := "00000002"
theorem small_8759928_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8759928_right_root small_8759928_right_fuel small_8759928_right_count small_8759928_right_encoded = true := by
  decide +kernel
theorem small_8759928_right_covered : CoveredBy scale carrier boxes small_8759928_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8759928_right_root small_8759928_right_fuel small_8759928_right_count small_8759928_right_encoded small_8759928_right_checked

theorem cover_8759928 : CoveredBy scale carrier boxes root_8759928 := by
  apply coveredBy_split_literal root_8759928 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0210.root_8759933 small_8759928_right_root coord2 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0210.cover_8759933
  · exact small_8759928_right_covered
#print axioms cover_8759928

def root_8759927 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8759927 : CoveredBy scale carrier boxes root_8759927 := by
  apply coveredBy_split_literal root_8759927 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0210.root_8759928 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3280.root coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0210.cover_8759928
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3280.covered
#print axioms cover_8759927

def root_8759921 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8759921_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8759921_left_fuel : Nat := 1
def small_8759921_left_count : Nat := 1
def small_8759921_left_encoded : String := "00000001"
theorem small_8759921_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8759921_left_root small_8759921_left_fuel small_8759921_left_count small_8759921_left_encoded = true := by
  decide +kernel
theorem small_8759921_left_covered : CoveredBy scale carrier boxes small_8759921_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8759921_left_root small_8759921_left_fuel small_8759921_left_count small_8759921_left_encoded small_8759921_left_checked

theorem cover_8759921 : CoveredBy scale carrier boxes root_8759921 := by
  apply coveredBy_split_literal root_8759921 small_8759921_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0210.root_8759927 coord1 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_8759921_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0210.cover_8759927
#print axioms cover_8759921

def root_8755441 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8755441 : CoveredBy scale carrier boxes root_8755441 := by
  apply coveredBy_split_literal root_8755441 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0210.root_8755442 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0210.root_8759921 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0210.cover_8755442
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0210.cover_8759921
#print axioms cover_8755441

def root_8755436 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8755436_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8755436_right_fuel : Nat := 1
def small_8755436_right_count : Nat := 1
def small_8755436_right_encoded : String := "00000000"
theorem small_8755436_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8755436_right_root small_8755436_right_fuel small_8755436_right_count small_8755436_right_encoded = true := by
  decide +kernel
theorem small_8755436_right_covered : CoveredBy scale carrier boxes small_8755436_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8755436_right_root small_8755436_right_fuel small_8755436_right_count small_8755436_right_encoded small_8755436_right_checked

theorem cover_8755436 : CoveredBy scale carrier boxes root_8755436 := by
  apply coveredBy_split_literal root_8755436 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0210.root_8755441 small_8755436_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0210.cover_8755441
  · exact small_8755436_right_covered
#print axioms cover_8755436

def root_8752716 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8752716 : CoveredBy scale carrier boxes root_8752716 := by
  apply coveredBy_split_literal root_8752716 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3276.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0210.root_8755436 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3276.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0210.cover_8755436
#print axioms cover_8752716

def root_8748502 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8748502 : CoveredBy scale carrier boxes root_8748502 := by
  apply coveredBy_split_literal root_8748502 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0210.root_8748503 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0210.root_8752716 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0210.cover_8748503
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0210.cover_8752716
#print axioms cover_8748502

def root_8711296 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8711296 : CoveredBy scale carrier boxes root_8711296 := by
  apply coveredBy_split_literal root_8711296 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0210.root_8711297 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0210.root_8748502 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0210.cover_8711297
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0210.cover_8748502
#print axioms cover_8711296

def root_8769737 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8769737_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8769737_left_fuel : Nat := 19
def small_8769737_left_count : Nat := 129
def small_8769737_left_encoded : String := "1151E8FB0A0000FC115225070A0000FE1152250908A91307120700FC08A91309120700FE05000100135D450100000000050000F8135D81030500010400000009000000050000000100000005000000050000000412073CFE0000000405000100135D450100000000050000F8135D81030500010400000007135D80FB0000000204548A0700000007000000060000000100000007135D8101050000F8135D81030500010400000009135D80FB0000000204548A07000000051386ACFC00000003000000090000000100000007000000000000000312073CFC0000000308A91309120700FE05000100135D45010000000000000008000000080000000412073CFE0000000405000100135D450100000000050000F800000009135D450300000001050001040000000600000009135D8101050000F8135D810305000104000000090000000800000001135D45030000000105000104135D44FB0CFD9C070F34D0FC0CFD9C090000000500000006000000030000000600000002135D80FB000000020CFD9C070F34D0FC0CFD9C090000000800000008000000030000000800000000000000041151E9090000000408A91307120700FC0500010000000006135D8101050000F80000000600000006000000000000000300000006000000031151E907000000030A0000FE1152250908A913090000000800000006000000040000000600000002"
theorem small_8769737_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8769737_left_root small_8769737_left_fuel small_8769737_left_count small_8769737_left_encoded = true := by
  decide +kernel
theorem small_8769737_left_covered : CoveredBy scale carrier boxes small_8769737_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8769737_left_root small_8769737_left_fuel small_8769737_left_count small_8769737_left_encoded small_8769737_left_checked

theorem cover_8769737 : CoveredBy scale carrier boxes root_8769737 := by
  apply coveredBy_split_literal root_8769737 small_8769737_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3283.root coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_8769737_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3283.covered
#print axioms cover_8769737

def root_8769731 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8769731_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8769731_left_fuel : Nat := 1
def small_8769731_left_count : Nat := 1
def small_8769731_left_encoded : String := "00000001"
theorem small_8769731_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8769731_left_root small_8769731_left_fuel small_8769731_left_count small_8769731_left_encoded = true := by
  decide +kernel
theorem small_8769731_left_covered : CoveredBy scale carrier boxes small_8769731_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8769731_left_root small_8769731_left_fuel small_8769731_left_count small_8769731_left_encoded small_8769731_left_checked

theorem cover_8769731 : CoveredBy scale carrier boxes root_8769731 := by
  apply coveredBy_split_literal root_8769731 small_8769731_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0210.root_8769737 coord1 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_8769731_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0210.cover_8769737
#print axioms cover_8769731

def root_8768545 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8768545 : CoveredBy scale carrier boxes root_8768545 := by
  apply coveredBy_split_literal root_8768545 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3282.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0210.root_8769731 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3282.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0210.cover_8769731
#print axioms cover_8768545

def root_8768539 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8768539_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8768539_left_fuel : Nat := 1
def small_8768539_left_count : Nat := 1
def small_8768539_left_encoded : String := "00000000"
theorem small_8768539_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8768539_left_root small_8768539_left_fuel small_8768539_left_count small_8768539_left_encoded = true := by
  decide +kernel
theorem small_8768539_left_covered : CoveredBy scale carrier boxes small_8768539_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8768539_left_root small_8768539_left_fuel small_8768539_left_count small_8768539_left_encoded small_8768539_left_checked

theorem cover_8768539 : CoveredBy scale carrier boxes root_8768539 := by
  apply coveredBy_split_literal root_8768539 small_8768539_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0210.root_8768545 coord0 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_8768539_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0210.cover_8768545
#print axioms cover_8768539

def root_8774157 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8774157_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8774157_left_fuel : Nat := 22
def small_8774157_left_count : Nat := 311
def small_8774157_left_encoded : String := "1151E8FB0A0000FC115225070A0000FE1152250908A91301120701000000000008A913070000000512073CFC0000000308A913090000000512073CFE00000004050000F8135D810305000104135D44FB0000000500000002135D80FB0000000204548A01000000050000000800000001135D45030000000105000104135D44FB04548A01000000051386AD000CFD9C0700000005000000080000000000000002135D80FB0000000204548A0113867100000000000CFD9C07000000050F350CFC00000003000000081386AD000CFD9C070F34D0FC0000000500000003000000080000000012073D0008A91307120700FC08A913090000000512073CFE00000004050000F8135D81030000000500000001135D4503000000010500010400000005135D80FB000000020CFD9C01000000050F350D0004548A07000000051386ACFC000000030CFD9C09000000050F350CFE0000000400000009000000000000000312073CFC0000000308A91309120700FE050000F800000008135D4503000000010500010400000005135D80FB000000020CFD9C0100000005000000080000000412073CFE00000004050000F8135D810305000104135D44FB0CFD9C010F34D10000000000000000080000000800000002135D80FB000000020CFD9C010F34D10000000000000000080000000800000001135D45030000000105000104135D44FB0CFD9C010F34D100000000000CFD9C070F34D0FC0000000500000003000000080F350D000CFD9C070F34D0FC0CFD9C09000000050000000800000003000000080000000000000002135D80FB000000020CFD9C010F34D100000000000CFD9C070F34D0FC0CFD9C09000000050000000800000003000000080F350D000CFD9C070F34D0FC0CFD9C090F34D0FE00000005000000040F350CFE000000040000000900000003000000080000000000000000000000041151E9090000000408A91301120701000000000008A91307120700FC050000F800000005135D4503000000010500010400000005000000090000000312073CFC00000003050000F8135D81030000000900000001135D45030000000105000104135D44FB050000FE135D810904548A010000000900000009000000040000000900000002135D80FB00000002050000FE000000090000000912073D0008A91307120700FC050000F8135D810305000104135D44FB0000000900000002135D80FB00000002050000FE00000009135D4509000000040CFD9C01000000090000000600000001135D45030000000105000104135D44FB050000FE00000009135D4509000000040000000600000002135D80FB00000002050000FE135D81090CFD9C01000000090F350D00000000090000000000000004135D4509000000040CFD9C0100000009000000060000000312073CFC00000003050000F8135D810305000104000000090000000900000001135D45030000000105000104135D44FB050000FE135D81090CFD9C010000000900000006000000040000000600000002135D80FB00000002050000FE135D81090CFD9C01000000090000000900000004135D4509000000040000000600000000000000031151E907000000030A0000FE1152250908A9130112070100000000000000000812073D0008A91309000000080000000800000000000000041151E9090000000408A913011207010000000000000000080000000600000002"
theorem small_8774157_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8774157_left_root small_8774157_left_fuel small_8774157_left_count small_8774157_left_encoded = true := by
  decide +kernel
theorem small_8774157_left_covered : CoveredBy scale carrier boxes small_8774157_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8774157_left_root small_8774157_left_fuel small_8774157_left_count small_8774157_left_encoded small_8774157_left_checked

theorem cover_8774157 : CoveredBy scale carrier boxes root_8774157 := by
  apply coveredBy_split_literal root_8774157 small_8774157_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3285.root coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_8774157_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3285.covered
#print axioms cover_8774157

def root_8774151 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8774151_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8774151_left_fuel : Nat := 1
def small_8774151_left_count : Nat := 1
def small_8774151_left_encoded : String := "00000001"
theorem small_8774151_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8774151_left_root small_8774151_left_fuel small_8774151_left_count small_8774151_left_encoded = true := by
  decide +kernel
theorem small_8774151_left_covered : CoveredBy scale carrier boxes small_8774151_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8774151_left_root small_8774151_left_fuel small_8774151_left_count small_8774151_left_encoded small_8774151_left_checked

theorem cover_8774151 : CoveredBy scale carrier boxes root_8774151 := by
  apply coveredBy_split_literal root_8774151 small_8774151_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0210.root_8774157 coord1 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_8774151_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0210.cover_8774157
#print axioms cover_8774151

def root_8772939 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8772939 : CoveredBy scale carrier boxes root_8772939 := by
  apply coveredBy_split_literal root_8772939 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3284.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0210.root_8774151 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3284.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0210.cover_8774151
#print axioms cover_8772939

def root_8772934 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8772934_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8772934_right_fuel : Nat := 1
def small_8772934_right_count : Nat := 1
def small_8772934_right_encoded : String := "00000000"
theorem small_8772934_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8772934_right_root small_8772934_right_fuel small_8772934_right_count small_8772934_right_encoded = true := by
  decide +kernel
theorem small_8772934_right_covered : CoveredBy scale carrier boxes small_8772934_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8772934_right_root small_8772934_right_fuel small_8772934_right_count small_8772934_right_encoded small_8772934_right_checked

theorem cover_8772934 : CoveredBy scale carrier boxes root_8772934 := by
  apply coveredBy_split_literal root_8772934 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0210.root_8772939 small_8772934_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0210.cover_8772939
  · exact small_8772934_right_covered
#print axioms cover_8772934

def root_8768538 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8768538 : CoveredBy scale carrier boxes root_8768538 := by
  apply coveredBy_split_literal root_8768538 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0210.root_8768539 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0210.root_8772934 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0210.cover_8768539
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0210.cover_8772934
#print axioms cover_8768538

def root_8767154 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8767154 : CoveredBy scale carrier boxes root_8767154 := by
  apply coveredBy_split_literal root_8767154 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3281.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0210.root_8768538 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3281.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0210.cover_8768538
#print axioms cover_8767154

def root_8778643 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8778643 : CoveredBy scale carrier boxes root_8778643 := by
  apply coveredBy_split_literal root_8778643 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3286.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3287.root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3286.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3287.covered
#print axioms cover_8778643

def root_8778637 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8778637_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8778637_left_fuel : Nat := 1
def small_8778637_left_count : Nat := 1
def small_8778637_left_encoded : String := "00000002"
theorem small_8778637_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8778637_left_root small_8778637_left_fuel small_8778637_left_count small_8778637_left_encoded = true := by
  decide +kernel
theorem small_8778637_left_covered : CoveredBy scale carrier boxes small_8778637_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8778637_left_root small_8778637_left_fuel small_8778637_left_count small_8778637_left_encoded small_8778637_left_checked

theorem cover_8778637 : CoveredBy scale carrier boxes root_8778637 := by
  apply coveredBy_split_literal root_8778637 small_8778637_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0210.root_8778643 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_8778637_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0210.cover_8778643
#print axioms cover_8778637

def root_8778251 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8778251_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8778251_left_fuel : Nat := 18
def small_8778251_left_count : Nat := 181
def small_8778251_left_encoded : String := "1151E8FB0A0000FC115225070A0001081151E8FF08A91301120701000000000008A91303120700F808A913070000000700000005000000010000000712073D0008A91303120700F80000000500000001000000050000000000000004115224FF0000000408A91301120701000000000008A91303120700F808A91307120700FC08A912FF12073D0805000104000000050000000700000004000000050000000312073CFC0000000308A912FF12073D080500010400000005135D80FB000000020000000500000004000000050000000112073CF80000000108A91307120700FC08A912FF00000007000000050000000312073CFC0000000308A912FF12073D080500010400000005000000070000000412070108000000040000000A12073D0008A91303120700F808A91307120700FC0000000500000003000000050000000112073CF80000000108A91307120700FC000000050000000312073CFC0000000308A912FF12073D080500010400000005000000070000000412070108000000040000000A00000000000000031151E907000000030A0001081151E8FF08A91301120701000000000008A91303120700F80000000500000001000000070000000700000004115224FF0000000408A91301120701000000000008A91303120700F808A912FF12073D08050001040000000A135D80FB00000002050000FC0000000A135D45070000000304548A010000000A1386AD000000000A000000000000000412070108000000040000000A000000010000000A12073D0008A91303120700F808A912FF12073D080500010400000005135D80FB00000002050000FC00000005135D4507000000030CFD9C010000000700000007000000041207010800000004050001040000000A135D80FB00000002050000FC0000000A135D4507000000030000000A0000000112073CF80000000108A912FF12073D08000000070000000412070108000000040000000A0000000000000002"
theorem small_8778251_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8778251_left_root small_8778251_left_fuel small_8778251_left_count small_8778251_left_encoded = true := by
  decide +kernel
theorem small_8778251_left_covered : CoveredBy scale carrier boxes small_8778251_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8778251_left_root small_8778251_left_fuel small_8778251_left_count small_8778251_left_encoded small_8778251_left_checked

theorem cover_8778251 : CoveredBy scale carrier boxes root_8778251 := by
  apply coveredBy_split_literal root_8778251 small_8778251_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0210.root_8778637 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_8778251_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0210.cover_8778637
#print axioms cover_8778251

def root_8778246 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8778246_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8778246_right_fuel : Nat := 1
def small_8778246_right_count : Nat := 1
def small_8778246_right_encoded : String := "00000001"
theorem small_8778246_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8778246_right_root small_8778246_right_fuel small_8778246_right_count small_8778246_right_encoded = true := by
  decide +kernel
theorem small_8778246_right_covered : CoveredBy scale carrier boxes small_8778246_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8778246_right_root small_8778246_right_fuel small_8778246_right_count small_8778246_right_encoded small_8778246_right_checked

theorem cover_8778246 : CoveredBy scale carrier boxes root_8778246 := by
  apply coveredBy_split_literal root_8778246 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0210.root_8778251 small_8778246_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0210.cover_8778251
  · exact small_8778246_right_covered
#print axioms cover_8778246

def root_8778245 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8778245_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8778245_right_fuel : Nat := 24
def small_8778245_right_count : Nat := 319
def small_8778245_right_encoded : String := "1151E903000000010A0001041151E8FB0A0000FC115225070A0001081151E8FF08A913010000000712073D0008A91307120700FC0000000500000003000000070000000000000004115224FF0000000408A91301120701000000000008A91307120700FC08A912FF00000007120701080000000400000008000000030000000A12073D0008A91307120700FC08A912FF12073D08050000F80000000500000009000000041207010800000004050000F80000000A135D4503000000010000000A0000000312073CFC0000000308A912FF12073D08050000F800000007135D450300000001000000070000000412070108000000040000000A00000000000000031151E907000000030A00010800000007115224FF000000040000000700000002115224FB000000020A0000FC115225070A0001081151E8FF08A91301120701000000000008A912FB00000007120701040000000208A91307000000070000000712073D0008A912FB12073D040000000700000002000000070000000000000004115224FF0000000408A91301120701000000000008A912FB12073D0408A913070000000712073CFC0000000308A912FF000000070000000700000002120701040000000208A913070000000712073CFC0000000308A912FF12073D08050000F8135D810304548A011386710000000000045489FB00000007138671040000000200000007000000070000000100000007000000040000000712073D0008A912FB12073D0408A91307120700FC08A912FF000000071207010800000004050000F800000007135D4503000000010CFD9C0100000007000000090000000312073CFC0000000308A912FF0000000712070108000000040000000700000002120701040000000208A913070000000712073CFC0000000308A912FF000000070000000700000000000000031151E907000000030A0001081151E8FF08A91301120701000000000008A912FB12073D04050000F8135D8103050000FC00000007135D4507000000030500010800000007000000070000000100000007000000021207010400000002050000F8135D8103050000FC135D810705000108135D44FF04548A011386710000000000000000070000000700000004135D80FF0000000404548A011386710000000000000000070000000700000003135D45070000000305000108135D44FF04548A011386710000000000000000080000000800000004135D80FF0000000404548A011386710000000000045489FB1386AD04078000F8128A7D0300000007000000010000000500000002000000051386AD00000000070000000000000001135D450300000001050000FC00000007135D45070000000305000108135D44FF04548A011386710000000000045489FB000000070000000500000007000000040000000512073D0008A912FB000000071207010400000002050000F8135D8103050000FC00000007135D4507000000030000000800000001000000070000000000000004115224FF0000000408A91301120701000000000008A912FB12073D0408A912FF12073D0800000007000000040000000700000002120701040000000208A912FF12073D08050000F8135D8103050000FC135D810704548A011386710000000000045489FB00000007000000050000000700000003000000050000000100000005000000040000000512073D0008A912FB00000007120701040000000208A912FF12073D0800000007000000040000000700000000"
theorem small_8778245_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8778245_right_root small_8778245_right_fuel small_8778245_right_count small_8778245_right_encoded = true := by
  decide +kernel
theorem small_8778245_right_covered : CoveredBy scale carrier boxes small_8778245_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8778245_right_root small_8778245_right_fuel small_8778245_right_count small_8778245_right_encoded small_8778245_right_checked

theorem cover_8778245 : CoveredBy scale carrier boxes root_8778245 := by
  apply coveredBy_split_literal root_8778245 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0210.root_8778246 small_8778245_right_root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0210.cover_8778246
  · exact small_8778245_right_covered
#print axioms cover_8778245

def root_8778240 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8778240_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8778240_right_fuel : Nat := 1
def small_8778240_right_count : Nat := 1
def small_8778240_right_encoded : String := "00000000"
theorem small_8778240_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8778240_right_root small_8778240_right_fuel small_8778240_right_count small_8778240_right_encoded = true := by
  decide +kernel
theorem small_8778240_right_covered : CoveredBy scale carrier boxes small_8778240_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8778240_right_root small_8778240_right_fuel small_8778240_right_count small_8778240_right_encoded small_8778240_right_checked

theorem cover_8778240 : CoveredBy scale carrier boxes root_8778240 := by
  apply coveredBy_split_literal root_8778240 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0210.root_8778245 small_8778240_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0210.cover_8778245
  · exact small_8778240_right_covered
#print axioms cover_8778240

def root_8777616 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8777616_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8777616_left_fuel : Nat := 24
def small_8777616_left_count : Nat := 287
def small_8777616_left_encoded : String := "1151E901000000000A0000F8115225030A0001041151E8FB0A0000FC115225070A00010800000005115224FF0000000408A91303120700F8000000050000000112073CF80000000108A91307120700FC000000050000000312073CFC0000000308A912FF12073D08000000050000000412070108000000040000000A000000031151E907000000030A0001081151E8FF0000000500000004115224FF0000000408A91303120700F808A912FF0000000512070108000000040000000A000000010000000700000002115224FB000000020A0000FC115225070A0001081151E8FF0000000700000004115224FF0000000408A91303120700F808A912FB12073D0408A91307120700FC000000050000000312073CFC0000000308A912FF0000000812070108000000040500010000000007135D810104548A03138670F80CFD9BFB000000050F34D104000000020000000600000001000000070000000000000002120701040000000208A91307120700FC0000000700000003000000080000000112073CF80000000108A912FB12073D0408A91307120700FC08A912FF00000007120701080000000405000100135D4501000000000CFD9C030000000500000007135D81010CFD9C030F34D0F8000000050000000100000007000000000000000312073CFC0000000308A912FF0000000712070108000000040000000700000002120701040000000208A913070000000712073CFC0000000300000007000000031151E907000000030A0001081151E8FF0000000800000004115224FF0000000408A91303120700F808A912FB12073D0408A912FF000000081207010800000004050001000000000700000008000000021207010400000002000000080000000112073CF80000000108A912FB00000007120701040000000208A912FF0000000700000007000000011151E903000000010A0001041151E8FB0A0000FC115225070A0001081151E8FF0000000500000004115224FF0000000408A91307120700FC08A912FF0000000512070108000000040000000A0000000312073CFC0000000308A912FF12073D0805000100135D450100000000050000F800000007135D45030000000100000007135D8101050000F800000007135D45030000000100000007000000000000000412070108000000040000000A000000031151E907000000030A0001081151E8FF00000007000000040000000700000002115224FB000000020A0000FC115225070A0001081151E8FF08A912FB12073D0408A91307120700FC000000050000000300000007000000020000000700000004115224FF0000000408A912FB12073D0408A91307120700FC08A912FF12073D0805000100135D450100000000000000070000000700000004120701080000000405000100135D45010000000000000009135D8101050000F80000000700000009000000000000000312073CFC0000000308A912FF00000007120701080000000405000100000000060000000700000002120701040000000208A913070000000700000007000000031151E907000000030A0001081151E8FF000000070000000400000007"
theorem small_8777616_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8777616_left_root small_8777616_left_fuel small_8777616_left_count small_8777616_left_encoded = true := by
  decide +kernel
theorem small_8777616_left_covered : CoveredBy scale carrier boxes small_8777616_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8777616_left_root small_8777616_left_fuel small_8777616_left_count small_8777616_left_encoded small_8777616_left_checked

theorem cover_8777616 : CoveredBy scale carrier boxes root_8777616 := by
  apply coveredBy_split_literal root_8777616 small_8777616_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0210.root_8778240 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_8777616_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0210.cover_8778240
#print axioms cover_8777616

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0210
