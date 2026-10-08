import TaoBundleAssembly0067
import TaoBundleChunkBatch0270
import TaoBundleChunkBatch0275
import TaoBundleChunkBatch0276
import TaoBundleChunkBatch0277
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0068
def root_2855261 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2855261_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2855261_right_fuel : Nat := 32
def small_2855261_right_count : Nat := 267
def small_2855261_right_encoded : String := "115224FB000000020A0000FC115224FD000000030A0001081151E90900000004000000051152250908A91301120700F608A912F912073CF80000000108A912FB12073D0408A912FD12073CFC0000000308A91309120701080000000404548A01138670F60CFD9BF90F350CF8000000010CFD9BFB0F350D040CFD9BFD0F350CFC0000000304548A0913867108000000040C9A86F8000000090F8750F90C9A87040F8750FB0C9A86FC000000060F8750FD00000009000000030000000200000009000000011386AD080C9A86F8000000090F8750F90C9A87040F8750FB0C9A86FC000000050F8750FD0000000900000003000000020000000900000001000000040F34D0FC0000000500000003000000020F34D104000000020CFD9BFD00000006000000050F34D0F80CFD9BFB0F350D0400000005000000020000000500000001000000001386ACF6000000000CFD9BF90F350CF8000000010CFD9BFB0F350D040CFD9BFD0F350CFC0000000304548A0913867108000000040C9A86F8000000090F8750F90C9A87040F8750FB0C9A86FC0F878CFD00000003000000050F8750FD0000000900000003000000020000000900000001000000050000000500000002000000050000000500000005000000050000000200000005000000050000000012073CF60000000008A912F912073CF80000000108A912FB12073D0408A912FD12073CFC0000000308A9130912070108000000040CFD9C010F34D0F60000000500000000000000050000000500000005000000020000000500000005000000041151E8FD0A0001081151E90900000004000000051152250908A91301120700F608A912F912073CF80000000108A912FB12073D0408A913091207010800000004050000FC135D80FD0000000304548A01138670F6000000090000000000000009135D44FD000000090000000312073D08050000FC135D80FD0000000304548A01138670F60CFD9BF90F350CF8000000010CFD9BFB0F350D040CFD9C090F34D1080000000400000009000000050000000200000005000000050000000000000005135D44FD04548A01138670F6000000090000000000000009000000030000000400000002120701040000000200000009120700F800000009000000010000000012073CF60000000008A912F912073CF80000000108A912FB12073D0408A913091207010800000004050000FC135D80FD000000030CFD9C010F34D0F600000009000000000F350CF6000000000CFD9BF90F350CF8000000010CFD9BFB0F350D0404548A0913867108000000040000000900000005000000020000000900000009135D44FD0CFD9C010F34D0F60000000900000000000000090000000312073D08050000FC00000005135D44FD0CFD9C010F34D0F6000000050000000000000005000000030000000400000002120701040000000200000009120700F800000009000000010000000400000003"
theorem small_2855261_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2855261_right_root small_2855261_right_fuel small_2855261_right_count small_2855261_right_encoded = true := by
  decide +kernel
theorem small_2855261_right_covered : CoveredBy scale carrier boxes small_2855261_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2855261_right_root small_2855261_right_fuel small_2855261_right_count small_2855261_right_encoded small_2855261_right_checked

theorem cover_2855261 : CoveredBy scale carrier boxes root_2855261 := by
  apply coveredBy_split_literal root_2855261 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.root_2855262 small_2855261_right_root coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.cover_2855262
  · exact small_2855261_right_covered
#print axioms cover_2855261

def root_2855255 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2855255_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2855255_left_fuel : Nat := 1
def small_2855255_left_count : Nat := 1
def small_2855255_left_encoded : String := "00000001"
theorem small_2855255_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2855255_left_root small_2855255_left_fuel small_2855255_left_count small_2855255_left_encoded = true := by
  decide +kernel
theorem small_2855255_left_covered : CoveredBy scale carrier boxes small_2855255_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2855255_left_root small_2855255_left_fuel small_2855255_left_count small_2855255_left_encoded small_2855255_left_checked

theorem cover_2855255 : CoveredBy scale carrier boxes root_2855255 := by
  apply coveredBy_split_literal root_2855255 small_2855255_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0068.root_2855261 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_2855255_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0068.cover_2855261
#print axioms cover_2855255

def root_2862530 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2862530 : CoveredBy scale carrier boxes root_2862530 := by
  apply coveredBy_split_literal root_2862530 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1098.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1099.root coord0 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1098.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1099.covered
#print axioms cover_2862530

def root_2862524 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2862524_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2862524_left_fuel : Nat := 1
def small_2862524_left_count : Nat := 1
def small_2862524_left_encoded : String := "00000002"
theorem small_2862524_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2862524_left_root small_2862524_left_fuel small_2862524_left_count small_2862524_left_encoded = true := by
  decide +kernel
theorem small_2862524_left_covered : CoveredBy scale carrier boxes small_2862524_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2862524_left_root small_2862524_left_fuel small_2862524_left_count small_2862524_left_encoded small_2862524_left_checked

theorem cover_2862524 : CoveredBy scale carrier boxes root_2862524 := by
  apply coveredBy_split_literal root_2862524 small_2862524_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0068.root_2862530 coord2 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_2862524_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0068.cover_2862530
#print axioms cover_2862524

def root_2860804 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2860804 : CoveredBy scale carrier boxes root_2860804 := by
  apply coveredBy_split_literal root_2860804 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1097.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0068.root_2862524 coord2 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1097.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0068.cover_2862524
#print axioms cover_2860804

def root_2860798 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2860798_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2860798_left_fuel : Nat := 1
def small_2860798_left_count : Nat := 1
def small_2860798_left_encoded : String := "00000001"
theorem small_2860798_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2860798_left_root small_2860798_left_fuel small_2860798_left_count small_2860798_left_encoded = true := by
  decide +kernel
theorem small_2860798_left_covered : CoveredBy scale carrier boxes small_2860798_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2860798_left_root small_2860798_left_fuel small_2860798_left_count small_2860798_left_encoded small_2860798_left_checked

theorem cover_2860798 : CoveredBy scale carrier boxes root_2860798 := by
  apply coveredBy_split_literal root_2860798 small_2860798_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0068.root_2860804 coord1 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_2860798_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0068.cover_2860804
#print axioms cover_2860798

def root_2860797 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2860797_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2860797_right_fuel : Nat := 22
def small_2860797_right_count : Nat := 263
def small_2860797_right_encoded : String := "135D44F905000104135D44FB04548A01138670F60CFD9BFD0F350CFC0000000304548A09000000090000000700000009000000001386ACF6000000000CFD9BFD0F350CFC0000000304548A0913867108000000040C9A86FC000000070F8750FD0000000700000003000000070000000900000002135D80FB0000000204548A01138670F60CFD9BFD0F350CFC0000000304548A0913867108000000040C9A86FC0F878CFD00000003028000F813D7ECF9000000010780010400000009128A7CFB0000000200000006000000090F8750FD028000F813D7ECF90000000107800104128A40FB022A458113E1C4F6022A45890000000513E201080B4D43FC00000006108010FD0000000600000003000000040000000013E200F600000000022A4589000000090000000700000002128A7CFB00000002022A45810000000613E200F600000000022A458913E1C508000000040000000813E201080B4D43FC00000006108010FD00000006000000030000000413D7B0F90780010400000009128A7CFB00000002022A45810000000613E200F600000000022A4589000000060000000600000001000000031386AD080C9A86FC0F878CFD00000003028000F813D7ECF90000000107800104128A40FB0000000700000002128A7CFB00000002022A45810000000613E200F600000000067ECE890000000600000005000000070F8750FD028000F813D7ECF90000000107800104128A40FB0000000700000002128A7CFB00000002022A458113E1C4F6067ECE89000000060000000600000000000000070000000700000003000000040F34D0FC04548A09000000091386AD08028000F813D7ECF9000000010780010400000005128A7CFB0000000200000005000000090000000400000003000000001386ACF6000000000CFD9BFD0F350CFC0000000304548A0913867108000000040C9A86FC0F878CFD00000003028000F813D7ECF90000000107800104128A40FB0000000900000002128A7CFB00000002067ECE8112EA58F600000008000000000000000813D7B0F90780010400000007128A7CFB0000000200000008000000010F8750FD028000F813D7ECF90000000107800104128A40FB067ECE8112EA58F600000007000000000000000700000002128A7CFB00000002067ECE8112EA58F6022A458913E1C508000000040000000813E201080B4D43FC00000007108010FD0000000700000003000000040000000012EA94F600000000022A458913E1C50800000004000000080000000713D7B0F90780010400000007128A7CFB00000002067ECE8112EA58F600000007000000000000000700000001000000031386AD080C9A86FC000000070F8750FD0000000700000003000000040F34D0FC04548A091386710800000004028000F813D7ECF90000000107800104000000090000000800000009000000050000000300000001"
theorem small_2860797_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2860797_right_root small_2860797_right_fuel small_2860797_right_count small_2860797_right_encoded = true := by
  decide +kernel
theorem small_2860797_right_covered : CoveredBy scale carrier boxes small_2860797_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2860797_right_root small_2860797_right_fuel small_2860797_right_count small_2860797_right_encoded small_2860797_right_checked

theorem cover_2860797 : CoveredBy scale carrier boxes root_2860797 := by
  apply coveredBy_split_literal root_2860797 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0068.root_2860798 small_2860797_right_root coord1 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0068.cover_2860798
  · exact small_2860797_right_covered
#print axioms cover_2860797

def root_2860791 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2860791_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2860791_left_fuel : Nat := 1
def small_2860791_left_count : Nat := 1
def small_2860791_left_encoded : String := "00000004"
theorem small_2860791_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2860791_left_root small_2860791_left_fuel small_2860791_left_count small_2860791_left_encoded = true := by
  decide +kernel
theorem small_2860791_left_covered : CoveredBy scale carrier boxes small_2860791_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2860791_left_root small_2860791_left_fuel small_2860791_left_count small_2860791_left_encoded small_2860791_left_checked

theorem cover_2860791 : CoveredBy scale carrier boxes root_2860791 := by
  apply coveredBy_split_literal root_2860791 small_2860791_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0068.root_2860797 coord4 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_2860791_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0068.cover_2860797
#print axioms cover_2860791

def root_2860790 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2860790_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2860790_right_fuel : Nat := 15
def small_2860790_right_count : Nat := 59
def small_2860790_right_encoded : String := "12073D08050000F8135D80F90000000105000104135D44FB04548A01138670F60CFD9BFD0F350CFC000000030CFD9C090F34D108000000040C9A86FC00000007000000050000000500000005000000000000000500000002135D80FB0000000204548A01138670F60CFD9BFD0F350CFC000000030CFD9C090F34D108000000040C9A86FC000000050F8750FD078000F800000005000000070000000300000005000000050000000000000005135D44F905000104135D44FB0000000700000002135D80FB0000000204548A01138670F60CFD9BFD000000070000000500000000000000050000000100000004"
theorem small_2860790_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2860790_right_root small_2860790_right_fuel small_2860790_right_count small_2860790_right_encoded = true := by
  decide +kernel
theorem small_2860790_right_covered : CoveredBy scale carrier boxes small_2860790_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2860790_right_root small_2860790_right_fuel small_2860790_right_count small_2860790_right_encoded small_2860790_right_checked

theorem cover_2860790 : CoveredBy scale carrier boxes root_2860790 := by
  apply coveredBy_split_literal root_2860790 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0068.root_2860791 small_2860790_right_root coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0068.cover_2860791
  · exact small_2860790_right_covered
#print axioms cover_2860790

def root_2860784 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2860784_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2860784_left_fuel : Nat := 1
def small_2860784_left_count : Nat := 1
def small_2860784_left_encoded : String := "00000003"
theorem small_2860784_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2860784_left_root small_2860784_left_fuel small_2860784_left_count small_2860784_left_encoded = true := by
  decide +kernel
theorem small_2860784_left_covered : CoveredBy scale carrier boxes small_2860784_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2860784_left_root small_2860784_left_fuel small_2860784_left_count small_2860784_left_encoded small_2860784_left_checked

theorem cover_2860784 : CoveredBy scale carrier boxes root_2860784 := by
  apply coveredBy_split_literal root_2860784 small_2860784_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0068.root_2860790 coord3 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_2860784_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0068.cover_2860790
#print axioms cover_2860784

def root_2860783 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2860783_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2860783_right_fuel : Nat := 9
def small_2860783_right_count : Nat := 21
def small_2860783_right_encoded : String := "120700FC08A913091207010800000004050000F8135D80F90000000105000104135D44FB04548A0100000009000000050000000200000005135D44F9050001040000000900000009000000010000000500000003"
theorem small_2860783_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2860783_right_root small_2860783_right_fuel small_2860783_right_count small_2860783_right_encoded = true := by
  decide +kernel
theorem small_2860783_right_covered : CoveredBy scale carrier boxes small_2860783_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2860783_right_root small_2860783_right_fuel small_2860783_right_count small_2860783_right_encoded small_2860783_right_checked

theorem cover_2860783 : CoveredBy scale carrier boxes root_2860783 := by
  apply coveredBy_split_literal root_2860783 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0068.root_2860784 small_2860783_right_root coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0068.cover_2860784
  · exact small_2860783_right_covered
#print axioms cover_2860783

def root_2860778 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2860778_right_root : ZRayBox := fun j => (#[⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2860778_right_fuel : Nat := 1
def small_2860778_right_count : Nat := 1
def small_2860778_right_encoded : String := "00000000"
theorem small_2860778_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2860778_right_root small_2860778_right_fuel small_2860778_right_count small_2860778_right_encoded = true := by
  decide +kernel
theorem small_2860778_right_covered : CoveredBy scale carrier boxes small_2860778_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2860778_right_root small_2860778_right_fuel small_2860778_right_count small_2860778_right_encoded small_2860778_right_checked

theorem cover_2860778 : CoveredBy scale carrier boxes root_2860778 := by
  apply coveredBy_split_literal root_2860778 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0068.root_2860783 small_2860778_right_root coord0 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0068.cover_2860783
  · exact small_2860778_right_covered
#print axioms cover_2860778

def root_2860777 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2860777_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2860777_right_fuel : Nat := 28
def small_2860777_right_count : Nat := 169
def small_2860777_right_encoded : String := "12073CF60000000008A912FD12073CFC0000000308A913091207010800000004050000F8135D80F90000000105000104135D44FB0CFD9C010F34D0F60CFD9BFD0F350CFC0000000304548A0913867108000000040C9A86FC0F878CFD00000003000000050F8750FD078000F8128A7CF9000000010000000500000007000000030000000500000005000000000000000500000002135D80FB000000020CFD9C010F34D0F60CFD9BFD0F350CFC0000000304548A0913867108000000040C9A86FC0F878CFD00000003000000050F8750FD078000F8128A7CF9000000010780010400000005128A7CFB0000000200000005128A40F907800104128A40FB0000000700000002128A7CFB000000020AD3578110D100F6022A458913E1C508000000040B4D43FC10804CFD0000000300000005108010FD0000000A0000000300000005000000000000000500000001000000030000000500000005000000000F350CF6000000000CFD9BFD0F350CFC0000000304548A0913867108000000040C9A86F6000000050F87510100000000000000050000000500000005135D44F905000104135D44FB0CFD9C010F34D0F60CFD9BFD0000000700000005000000000000000700000002135D80FB000000020CFD9C010F34D0F60CFD9BFD0F350CFC0000000304548A0913867108000000040C9A86FC0F878CFD00000003028000F813D7ECF9000000010780010400000007128A7CFB000000020AD3578110D100F6000000050000000000000005000000070F8750FD0000000700000003000000070F34D0FC0000000500000003000000000F350CF6000000000CFD9BFD0F350CFC0000000304548A0913867108000000040C9A86F60000000700000007000000070F34D0FC00000005000000030000000112073D080000000500000004120700FC0000000500000003"
theorem small_2860777_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2860777_right_root small_2860777_right_fuel small_2860777_right_count small_2860777_right_encoded = true := by
  decide +kernel
theorem small_2860777_right_covered : CoveredBy scale carrier boxes small_2860777_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2860777_right_root small_2860777_right_fuel small_2860777_right_count small_2860777_right_encoded small_2860777_right_checked

theorem cover_2860777 : CoveredBy scale carrier boxes root_2860777 := by
  apply coveredBy_split_literal root_2860777 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0068.root_2860778 small_2860777_right_root coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0068.cover_2860778
  · exact small_2860777_right_covered
#print axioms cover_2860777

def root_2860772 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2860772_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2860772_right_fuel : Nat := 1
def small_2860772_right_count : Nat := 1
def small_2860772_right_encoded : String := "00000004"
theorem small_2860772_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2860772_right_root small_2860772_right_fuel small_2860772_right_count small_2860772_right_encoded = true := by
  decide +kernel
theorem small_2860772_right_covered : CoveredBy scale carrier boxes small_2860772_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2860772_right_root small_2860772_right_fuel small_2860772_right_count small_2860772_right_encoded small_2860772_right_checked

theorem cover_2860772 : CoveredBy scale carrier boxes root_2860772 := by
  apply coveredBy_split_literal root_2860772 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0068.root_2860777 small_2860772_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0068.cover_2860777
  · exact small_2860772_right_covered
#print axioms cover_2860772

def root_2860754 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2860754_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2860754_left_fuel : Nat := 5
def small_2860754_left_count : Nat := 9
def small_2860754_left_encoded : String := "1151E9090000000408A91301120700F608A912FD00000007000000050000000000000005"
theorem small_2860754_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2860754_left_root small_2860754_left_fuel small_2860754_left_count small_2860754_left_encoded = true := by
  decide +kernel
theorem small_2860754_left_covered : CoveredBy scale carrier boxes small_2860754_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2860754_left_root small_2860754_left_fuel small_2860754_left_count small_2860754_left_encoded small_2860754_left_checked

theorem cover_2860754 : CoveredBy scale carrier boxes root_2860754 := by
  apply coveredBy_split_literal root_2860754 small_2860754_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0068.root_2860772 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_2860754_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0068.cover_2860772
#print axioms cover_2860754

def root_2860748 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2860748_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2860748_left_fuel : Nat := 1
def small_2860748_left_count : Nat := 1
def small_2860748_left_encoded : String := "00000003"
theorem small_2860748_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2860748_left_root small_2860748_left_fuel small_2860748_left_count small_2860748_left_encoded = true := by
  decide +kernel
theorem small_2860748_left_covered : CoveredBy scale carrier boxes small_2860748_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2860748_left_root small_2860748_left_fuel small_2860748_left_count small_2860748_left_encoded small_2860748_left_checked

theorem cover_2860748 : CoveredBy scale carrier boxes root_2860748 := by
  apply coveredBy_split_literal root_2860748 small_2860748_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0068.root_2860754 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_2860748_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0068.cover_2860754
#print axioms cover_2860748

def root_2869125 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2869125_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-6291456), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2869125_right_fuel : Nat := 25
def small_2869125_right_count : Nat := 437
def small_2869125_right_encoded : String := "128A40F907800104128A40FB078000FC128A7CFD00000003022A458113E1C4F6022A45890000000513E20108064000F812FFACF9000000010640010412FF70FB08C000FC11FC24FD00000003011523410000000513F894F600000000033F67C90000000500000006000000050000000212FFACFB0000000208C000FC0000000611FBE8FD000000050000000312FF70F90000000500000001000000040000000013E200F600000000022A458913E1C50800000004064000F812FFACF9000000010640010412FF70FB08C000FC11FC24FD00000003033F67C10000000513BC30F600000000011523490000000513F8950806E000F812C820F90000000105A0010400000007000000050000000500000004000000050000000212FFACFB0000000208C000FC11FC24FD00000003033F67C10000000513BC30F600000000011523490000000513F8950806E000F812C820F90000000106E0010412C7E4FB096000FC0000000600000005000000020000000612C7E4F900000005000000010000000411FBE8FD000000050000000312FF70F9000000050000000113E20108064000F812FFACF9000000010640010412FF70FB08C000FC11FC24FD00000003033F67C113BBF4F600000007000000000000000711FBE8FD033F67C113BBF4F6033F67C900000005000000070000000000000007000000030000000212FFACFB0000000208C000FC11FC24FD00000003033F67C113BBF4F6033F67C900000006000000060000000013BC30F600000000033F67C913BBF5080000000406E000F812C820F90000000106E001040000000700000006000000070000000711FBE8FD033F67C113BBF4F6033F67C90000000513BC310806E000F812C820F90000000106E001040000000712C820FB000000020000000600000007000000040000000013BC30F600000000033F67C913BBF5080000000406E000F812C820F90000000106E001040000000712C820FB00000002082000FC000000070000000A00000007000000070000000312FF70F9064001040000000712FFACFB0000000208C000FC0000000711FBE8FD00000007000000030000000100000004128A40FD022A45810000000513E200F600000000022A45890000000513E20108064000F812FFACF9000000010640010412FF70FB064000FC12FFACFD00000003033F67C10000000500000007000000080000000212FFACFB00000002064000FC12FFACFD00000003033F67C10000000513BC30F600000000033F67C9000000050000000712FF70FD0000000A0000000312FF70F90640010412FF70FB000000050000000212FFACFB000000020000000A00000001000000040000000300000002128A7CFB00000002078000FC128A7CFD00000003022A458113E1C4F6022A45890000000513E20108064000F812FFACF90000000108C0010411FBE8FB08C000FC0000000611FBE8FD0000000500000003000000020000000612FF70F908C00104000000060000000600000001000000040000000013E200F600000000022A458913E1C50800000004064000F812FFACF90000000108C0010411FBE8FB08C000FC11FC24FD00000003033F67C10000000513BC30F60000000001152349000000050000000611FBE8FD00000005000000030000000211FC24FB0000000208C000FC0000000611FBE8FD033F67C1000000050000000A0000000312FF70F908C0010411FBE8FB000000050000000211FC24FB0000000208C000FC00000006000000050000000113E20108064000F812FFACF90000000108C0010411FBE8FB08C000FC11FC24FD00000003033F67C10000000613BC30F600000000033F67C9000000060000000611FBE8FD033F67C113BBF4F6033F67C90000000513BC310806E000F80000000600000006000000040000000013BC30F600000000033F67C913BBF5080000000406E000F80000000912C7E4F90000000A0000000100000009000000030000000211FC24FB0000000208C000FC0000000611FBE8FD000000090000000312FF70F908C0010411FBE8FB08C000FC11FC24FD00000003033F67C10000000613BC30F600000000033F67C9000000060000000611FBE8FD033F67C113BBF4F6033F67C900000005000000060000000013BC30F600000000033F67C90000000A00000007000000030000000211FC24FB0000000208C000FC0000000611FBE8FD033F67C1000000060000000A000000030000000100000004128A40FD022A45810000000513E200F600000000022A45890000000513E20108064000F812FFACF90000000108C0010411FBE8FB064000FC12FFACFD00000003033F67C1000000050000000912FF70FD0000000900000003000000020000000912FF70F908C001040000000A11FC24FB000000020000000A00000001000000040000000300000001"
theorem small_2869125_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2869125_right_root small_2869125_right_fuel small_2869125_right_count small_2869125_right_encoded = true := by
  decide +kernel
theorem small_2869125_right_covered : CoveredBy scale carrier boxes small_2869125_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2869125_right_root small_2869125_right_fuel small_2869125_right_count small_2869125_right_encoded small_2869125_right_checked

theorem cover_2869125 : CoveredBy scale carrier boxes root_2869125 := by
  apply coveredBy_split_literal root_2869125 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1101.root small_2869125_right_root coord1 false (-6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1101.covered
  · exact small_2869125_right_covered
#print axioms cover_2869125

def root_2869119 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2869119_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2869119_left_fuel : Nat := 1
def small_2869119_left_count : Nat := 1
def small_2869119_left_encoded : String := "00000004"
theorem small_2869119_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2869119_left_root small_2869119_left_fuel small_2869119_left_count small_2869119_left_encoded = true := by
  decide +kernel
theorem small_2869119_left_covered : CoveredBy scale carrier boxes small_2869119_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2869119_left_root small_2869119_left_fuel small_2869119_left_count small_2869119_left_encoded small_2869119_left_checked

theorem cover_2869119 : CoveredBy scale carrier boxes root_2869119 := by
  apply coveredBy_split_literal root_2869119 small_2869119_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0068.root_2869125 coord4 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_2869119_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0068.cover_2869125
#print axioms cover_2869119

def root_2869118 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2869118_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2869118_right_fuel : Nat := 21
def small_2869118_right_count : Nat := 331
def small_2869118_right_encoded : String := "1386AD08078000F8128A7CF90000000107800104128A40FB078000FC128A7CFD00000003022A458113E1C4F6067ECE8912EA59080000000408C000F811FC24F900000001064001040000000812FFACFB0000000208C000FC000000060000000811FBE8F90640010412FF70FB000000080000000212FFACFB0000000208C000FC000000060000000800000001000000080000000013E200F600000000067ECE8912EA59080000000408C000F811FC24F900000001064001040000000812FFACFB000000020000000911FBE8F90640010412FF70FB000000070000000212FFACFB0000000208C000FC11FC24FD00000003033F67C113BBF4F60569AC490000000600000006000000000000000711FBE8FD033F67C10000000800000007000000030000000112EA950808C000F8000000050000000700000004128A40FD022A458100000008000000080000000300000002128A7CFB00000002078000FC128A7CFD00000003022A458113E1C4F6067ECE8912EA59080000000408C000F80000000911FBE8F908C0010411FBE8FB08C000FC0000000600000009000000020000000600000001000000090000000013E200F600000000067ECE8912EA59080000000408C000F80000000911FBE8F9000000090000000100000009128A40FD022A4581000000090000000900000003128A40F907800104128A40FB078000FC128A7CFD00000003022A458113E1C4F6067ECE8912EA590800000004064000F812FFACF9000000010640010412FF70FB08C000FC00000007000000080000000212FFACFB0000000208C000FC0000000611FBE8FD0115234100000006000000070000000312FF70F9064001040000000712FFACFB0000000208C000FC0000000611FBE8FD000000070000000300000001000000070000000000000007128A40FD022A458113E1C4F6067ECE8912EA590800000004064000F80000000800000008000000070000000013E200F600000000067ECE8912EA590800000004064000F80000000800000007000000070000000300000002128A7CFB00000002078000FC128A7CFD00000003022A458113E1C4F6067ECE8912EA590800000004064000F812FFACF90000000108C0010411FBE8FB08C000FC0000000611FBE8FD0000000600000003000000020000000612FF70F908C0010400000006000000060000000112EA9508064000F812FFACF90000000108C00104000000060000000612FF70F908C00104000000060000000600000001000000040000000013E200F600000000067ECE8912EA590800000004064000F812FFACF90000000108C0010411FBE8FB08C000FC11FC24FD00000003033F67C1000000060000000711FBE8FD033F67C113BBF4F6000000090000000000000007000000030000000211FC24FB000000020000000912FF70F908C0010411FBE8FB000000070000000211FC24FB0000000208C000FC0000000611FBE8FD033F67C10000000600000007000000030000000112EA95080000000700000004128A40FD022A458113E1C4F6067ECE8912EA590800000004064000F812FFACF9000000010000000912FF70F908C0010411FBE8FB064000FC12FFACFD00000003011523410000000500000007000000080000000211FC24FB00000002000000090000000112EA9508064000F80000000812FF70F908C00104000000070000000900000001000000040000000013E200F600000000067ECE8912EA590800000004064000F80000000912FF70F908C0010411FBE8FB0000000700000002000000090000000112EA9508064000F8000000090000000700000004000000030000000100000004"
theorem small_2869118_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2869118_right_root small_2869118_right_fuel small_2869118_right_count small_2869118_right_encoded = true := by
  decide +kernel
theorem small_2869118_right_covered : CoveredBy scale carrier boxes small_2869118_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2869118_right_root small_2869118_right_fuel small_2869118_right_count small_2869118_right_encoded small_2869118_right_checked

theorem cover_2869118 : CoveredBy scale carrier boxes root_2869118 := by
  apply coveredBy_split_literal root_2869118 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0068.root_2869119 small_2869118_right_root coord4 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0068.cover_2869119
  · exact small_2869118_right_covered
#print axioms cover_2869118

def root_2869113 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2869113_right_root : ZRayBox := fun j => (#[⟨⟨(-16378880), (-15122432)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2869113_right_fuel : Nat := 1
def small_2869113_right_count : Nat := 1
def small_2869113_right_encoded : String := "00000000"
theorem small_2869113_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2869113_right_root small_2869113_right_fuel small_2869113_right_count small_2869113_right_encoded = true := by
  decide +kernel
theorem small_2869113_right_covered : CoveredBy scale carrier boxes small_2869113_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2869113_right_root small_2869113_right_fuel small_2869113_right_count small_2869113_right_encoded small_2869113_right_checked

theorem cover_2869113 : CoveredBy scale carrier boxes root_2869113 := by
  apply coveredBy_split_literal root_2869113 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0068.root_2869118 small_2869113_right_root coord0 false (-16378880)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0068.cover_2869118
  · exact small_2869113_right_covered
#print axioms cover_2869113

def root_2873113 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2873113_right_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-6291456), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2873113_right_fuel : Nat := 25
def small_2873113_right_count : Nat := 261
def small_2873113_right_encoded : String := "128A40F907800104128A40FB078000FC128A7CFD00000003067ECE8112EA58F6022A458913E1C50800000004064000F812FFACF9000000010640010412FF70FB08C000FC11FC24FD000000030569AC411340D4F601152349000000050000000700000000000000070000000A0000000212FFACFB0000000208C000FC11FC24FD000000030569AC411340D4F6011523490000000A13F8950806E000F812C820F90000000106E001040000000712C820FB00000002096000FC000000060000000A0000000700000004000000000000000A0000000A12FF70F9064001040000000A0000000A0000000113E20108064000F812FFACF900000001064001040000000712FFACFB0000000208C000FC0000000711FBE8FD000000070000000300000007000000040000000012EA94F600000000022A458913E1C50800000004064000F812FFACF9000000010000000A0000000700000007128A40FD067ECE8112EA58F6022A45890000000A13E20108064000F812FFACF90000000106400104000000070000000A0000000700000004000000000000000A0000000300000002128A7CFB00000002078000FC128A7CFD00000003067ECE8112EA58F6022A458913E1C50800000004064000F812FFACF90000000108C0010411FBE8FB08C000FC11FC24FD000000030569AC411340D4F6011523490000000813F8950806E000F812C820F900000001082001040000000A000000060000000A00000004000000000000000A0000000A0000000211FC24FB0000000208C000FC11FC24FD000000030569AC4100000006000000080000000A12FF70F908C001040000000A0000000A0000000113E20108064000F812FFACF90000000108C0010411FBE8FB08C000FC11FC24FD000000030569AC411340D4F6033F67C913BBF5080000000406E000F812C820F9000000010820010412465CFB0000000700000002000000060000000700000007000000000000000711FBE8FD0569AC411340D4F6033F67C90000000A000000070000000000000007000000030000000211FC24FB0000000208C000FC11FC24FD000000030569AC41000000060000000911FBE8FD000000090000000312FF70F908C0010411FBE8FB08C000FC000000070000000A0000000211FC24FB0000000208C000FC11FC24FD000000030569AC4100000006000000070000000A00000001000000040000000012EA94F600000000022A45890000000A13E20108064000F812FFACF90000000108C0010411FBE8FB000000070000000211FC24FB0000000208C000FC11FC24FD000000030793F0C1128220F60000000900000000000000050000000A0000000700000004128A40FD067ECE8112EA58F6022A45890000000A13E20108064000F812FFACF90000000108C001040000000A000000090000000A00000004000000000000000A0000000300000001"
theorem small_2873113_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2873113_right_root small_2873113_right_fuel small_2873113_right_count small_2873113_right_encoded = true := by
  decide +kernel
theorem small_2873113_right_covered : CoveredBy scale carrier boxes small_2873113_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2873113_right_root small_2873113_right_fuel small_2873113_right_count small_2873113_right_encoded small_2873113_right_checked

theorem cover_2873113 : CoveredBy scale carrier boxes root_2873113 := by
  apply coveredBy_split_literal root_2873113 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1102.root small_2873113_right_root coord1 false (-6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1102.covered
  · exact small_2873113_right_covered
#print axioms cover_2873113

def root_2873107 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2873107_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2873107_left_fuel : Nat := 1
def small_2873107_left_count : Nat := 1
def small_2873107_left_encoded : String := "00000004"
theorem small_2873107_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2873107_left_root small_2873107_left_fuel small_2873107_left_count small_2873107_left_encoded = true := by
  decide +kernel
theorem small_2873107_left_covered : CoveredBy scale carrier boxes small_2873107_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2873107_left_root small_2873107_left_fuel small_2873107_left_count small_2873107_left_encoded small_2873107_left_checked

theorem cover_2873107 : CoveredBy scale carrier boxes root_2873107 := by
  apply coveredBy_split_literal root_2873107 small_2873107_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0068.root_2873113 coord4 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_2873107_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0068.cover_2873113
#print axioms cover_2873107

def root_2873106 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2873106_right_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2873106_right_fuel : Nat := 15
def small_2873106_right_count : Nat := 93
def small_2873106_right_encoded : String := "1386AD08078000F8128A7CF90000000107800104128A40FB078000FC128A7CFD00000003067ECE8112EA58F6067ECE8912EA59080000000408C000F811FC24F9000000010000000500000007000000050000000000000005128A40FD067ECE8112EA58F6067ECE8912EA590800000004000000080000000700000000000000070000000300000002128A7CFB00000002078000FC128A7CFD00000003067ECE8112EA58F6067ECE8912EA59080000000400000009000000050000000000000005128A40FD067ECE81000000090000000900000003128A40F907800104128A40FB0000000700000002128A7CFB00000002078000FC128A7CFD00000003067ECE8112EA58F6067ECE8912EA590800000004064000F812FFACF90000000108C00104000000070000000900000007000000070000000000000007128A40FD067ECE8112EA58F6067ECE8912EA590800000004064000F80000000900000007000000070000000000000007000000030000000100000004"
theorem small_2873106_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2873106_right_root small_2873106_right_fuel small_2873106_right_count small_2873106_right_encoded = true := by
  decide +kernel
theorem small_2873106_right_covered : CoveredBy scale carrier boxes small_2873106_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2873106_right_root small_2873106_right_fuel small_2873106_right_count small_2873106_right_encoded small_2873106_right_checked

theorem cover_2873106 : CoveredBy scale carrier boxes root_2873106 := by
  apply coveredBy_split_literal root_2873106 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0068.root_2873107 small_2873106_right_root coord4 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0068.cover_2873107
  · exact small_2873106_right_covered
#print axioms cover_2873106

def root_2873100 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2873100_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16379648)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2873100_left_fuel : Nat := 1
def small_2873100_left_count : Nat := 1
def small_2873100_left_encoded : String := "00000000"
theorem small_2873100_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2873100_left_root small_2873100_left_fuel small_2873100_left_count small_2873100_left_encoded = true := by
  decide +kernel
theorem small_2873100_left_covered : CoveredBy scale carrier boxes small_2873100_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2873100_left_root small_2873100_left_fuel small_2873100_left_count small_2873100_left_encoded small_2873100_left_checked

theorem cover_2873100 : CoveredBy scale carrier boxes root_2873100 := by
  apply coveredBy_split_literal root_2873100 small_2873100_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0068.root_2873106 coord0 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_2873100_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0068.cover_2873106
#print axioms cover_2873100

def root_2869112 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2869112 : CoveredBy scale carrier boxes root_2869112 := by
  apply coveredBy_split_literal root_2869112 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0068.root_2869113 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0068.root_2873100 coord0 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0068.cover_2869113
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0068.cover_2873100
#print axioms cover_2869112

def root_2869106 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2869106_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2869106_left_fuel : Nat := 1
def small_2869106_left_count : Nat := 1
def small_2869106_left_encoded : String := "00000003"
theorem small_2869106_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2869106_left_root small_2869106_left_fuel small_2869106_left_count small_2869106_left_encoded = true := by
  decide +kernel
theorem small_2869106_left_covered : CoveredBy scale carrier boxes small_2869106_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2869106_left_root small_2869106_left_fuel small_2869106_left_count small_2869106_left_encoded small_2869106_left_checked

theorem cover_2869106 : CoveredBy scale carrier boxes root_2869106 := by
  apply coveredBy_split_literal root_2869106 small_2869106_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0068.root_2869112 coord3 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_2869106_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0068.cover_2869112
#print axioms cover_2869106

def root_2869105 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2869105_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2869105_right_fuel : Nat := 16
def small_2869105_right_count : Nat := 149
def small_2869105_right_encoded : String := "135D44FD04548A01138670F604548A091386710800000004078000F8128A7CF90000000107800104128A40FB028000FC13D7ECFD00000003022A45810000000513E200F600000000022A458900000005000000080000000800000002128A7CFB00000002028000FC13D7ECFD00000003022A4581000000050000000913D7B0FD0000000900000003128A40F907800104128A40FB0000000500000002128A7CFB00000002028000FC13D7ECFD00000003022A4581000000050000000A00000005000000011386AD08078000F8128A7CF900000001078001040000000800000009128A40F90780010400000008128A7CFB00000002028000FC13D7ECFD00000003022A458113E1C4F6067ECE8912EA59080000000400000008000000080000000013E200F600000000067ECE8912EA5908000000040000000900000008000000080000000100000004000000001386ACF60000000004548A091386710800000004078000F8128A7CF90000000107800104128A40FB028000FC13D7ECFD00000003067ECE8112EA58F6022A45890000000A00000008000000000000000A0000000A00000002128A7CFB00000002028000FC13D7ECFD00000003067ECE8112EA58F60000000900000000000000090000000A128A40F90000000A000000011386AD08078000F8128A7CF900000001078001040000000800000009128A40F907800104128A40FB028000FC000000070000000800000002128A7CFB00000002028000FC13D7ECFD00000003067ECE8112EA58F6067ECE890000000A0000000700000000000000070000000A000000010000000400000003"
theorem small_2869105_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2869105_right_root small_2869105_right_fuel small_2869105_right_count small_2869105_right_encoded = true := by
  decide +kernel
theorem small_2869105_right_covered : CoveredBy scale carrier boxes small_2869105_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2869105_right_root small_2869105_right_fuel small_2869105_right_count small_2869105_right_encoded small_2869105_right_checked

theorem cover_2869105 : CoveredBy scale carrier boxes root_2869105 := by
  apply coveredBy_split_literal root_2869105 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0068.root_2869106 small_2869105_right_root coord3 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0068.cover_2869106
  · exact small_2869105_right_covered
#print axioms cover_2869105

def root_2869099 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2869099_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2869099_left_fuel : Nat := 1
def small_2869099_left_count : Nat := 1
def small_2869099_left_encoded : String := "00000002"
theorem small_2869099_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2869099_left_root small_2869099_left_fuel small_2869099_left_count small_2869099_left_encoded = true := by
  decide +kernel
theorem small_2869099_left_covered : CoveredBy scale carrier boxes small_2869099_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2869099_left_root small_2869099_left_fuel small_2869099_left_count small_2869099_left_encoded small_2869099_left_checked

theorem cover_2869099 : CoveredBy scale carrier boxes root_2869099 := by
  apply coveredBy_split_literal root_2869099 small_2869099_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0068.root_2869105 coord2 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_2869099_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0068.cover_2869105
#print axioms cover_2869099

def root_2867319 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2867319 : CoveredBy scale carrier boxes root_2867319 := by
  apply coveredBy_split_literal root_2867319 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1100.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0068.root_2869099 coord2 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1100.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0068.cover_2869099
#print axioms cover_2867319

def root_2867313 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2867313_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2867313_left_fuel : Nat := 1
def small_2867313_left_count : Nat := 1
def small_2867313_left_encoded : String := "00000001"
theorem small_2867313_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2867313_left_root small_2867313_left_fuel small_2867313_left_count small_2867313_left_encoded = true := by
  decide +kernel
theorem small_2867313_left_covered : CoveredBy scale carrier boxes small_2867313_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2867313_left_root small_2867313_left_fuel small_2867313_left_count small_2867313_left_encoded small_2867313_left_checked

theorem cover_2867313 : CoveredBy scale carrier boxes root_2867313 := by
  apply coveredBy_split_literal root_2867313 small_2867313_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0068.root_2867319 coord1 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_2867313_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0068.cover_2867319
#print axioms cover_2867313

def root_2867312 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2867312_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2867312_right_fuel : Nat := 26
def small_2867312_right_count : Nat := 309
def small_2867312_right_encoded : String := "135D44F905000104135D44FB050000FC135D80FD0000000304548A01138670F604548A091386710800000004028000F813D7ECF9000000010280010413D7B0FB078000FC00000007128A40FD00000005000000030000000213D7ECFB00000002078000FC128A7CFD00000003022A45810000000500000007128A40FD000000050000000300000007000000070000000000000007135D44FD04548A01138670F604548A090000000500000007000000000000000A0000000300000002135D80FB00000002050000FC135D80FD0000000304548A01138670F604548A091386710800000004028000F813D7ECF90000000107800104128A40FB078000FC128A7CFD00000003022A45810000000513E200F600000000022A45890000000500000007128A40FD000000050000000300000002128A7CFB00000002078000FC128A7CFD00000003022A45810000000513E200F600000000022A45890000000513E2010803C000F813A54CF90000000108C0010411FBE8FB08C000FC0000000711FBE8FD00000007000000030000000211FC24FB0000000208C000FC000000060000000A13A510F908C001040000000711FC24FB000000020000000A0000000100000004128A40FD022A4581000000050000000A0000000313D7B0F907800104128A40FB078000FC128A7CFD00000003022A458100000005000000070000000500000002128A7CFB00000002078000FC128A7CFD00000003022A4581000000050000000A0000000A000000011386AD08028000F813D7ECF90000000107800104128A40FB078000FC00000007128A40FD000000070000000300000002128A7CFB00000002078000FC128A7CFD00000003022A458113E1C4F6067ECE8912EA59080000000403C000F813A54CF90000000108C00104000000060000000613A510F908C00104000000060000000600000001000000070000000000000007128A40FD022A458113E1C4F6067ECE8912EA59080000000403C000F813A54CF90000000108C0010411FBE8FB000000050000000211FC24FB00000002064000FC000000060000000513A510F900000005000000010000000700000000000000070000000313D7B0F90780010400000007128A7CFB00000002078000FC00000007128A40FD00000007000000030000000100000004000000001386ACF60000000004548A091386710800000004028000F813D7ECF90000000107800104128A40FB078000FC128A7CFD00000003067ECE8112EA58F60000000700000000000000070000000A00000002128A7CFB00000002078000FC128A7CFD00000003067ECE8112EA58F6022A45890000000A13E2010803C000F813A54CF90000000108C00104000000070000000A0000000700000004000000000000000A0000000A13D7B0F907800104000000070000000A0000000100000007135D44FD04548A01138670F604548A09000000051386AD08028000F813D7ECF90000000107800104128A40FB028000FC000000070000000800000002128A7CFB00000002028000FC13D7ECFD00000003022A458113E1C4F6067ECE890000000500000008000000000000000A0000000A13D7B0F907800104000000070000000A0000000100000004000000001386ACF60000000004548A090000000A1386AD08028000F813D7ECF90000000107800104000000070000000A00000007000000040000000300000001"
theorem small_2867312_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2867312_right_root small_2867312_right_fuel small_2867312_right_count small_2867312_right_encoded = true := by
  decide +kernel
theorem small_2867312_right_covered : CoveredBy scale carrier boxes small_2867312_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2867312_right_root small_2867312_right_fuel small_2867312_right_count small_2867312_right_encoded small_2867312_right_checked

theorem cover_2867312 : CoveredBy scale carrier boxes root_2867312 := by
  apply coveredBy_split_literal root_2867312 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0068.root_2867313 small_2867312_right_root coord1 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0068.cover_2867313
  · exact small_2867312_right_covered
#print axioms cover_2867312

def root_2867306 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2867306_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2867306_left_fuel : Nat := 1
def small_2867306_left_count : Nat := 1
def small_2867306_left_encoded : String := "00000004"
theorem small_2867306_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2867306_left_root small_2867306_left_fuel small_2867306_left_count small_2867306_left_encoded = true := by
  decide +kernel
theorem small_2867306_left_covered : CoveredBy scale carrier boxes small_2867306_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2867306_left_root small_2867306_left_fuel small_2867306_left_count small_2867306_left_encoded small_2867306_left_checked

theorem cover_2867306 : CoveredBy scale carrier boxes root_2867306 := by
  apply coveredBy_split_literal root_2867306 small_2867306_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0068.root_2867312 coord4 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_2867306_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0068.cover_2867312
#print axioms cover_2867306

def root_2867305 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2867305_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2867305_right_fuel : Nat := 18
def small_2867305_right_count : Nat := 85
def small_2867305_right_encoded : String := "12073D08050000F8135D80F90000000105000104135D44FB050000FC000000070000000800000002135D80FB00000002050000FC135D80FD0000000304548A01138670F60CFD9C090F34D10800000004078000F8128A7CF90000000107800104128A40FB0000000800000002128A7CFB00000002078000FC128A7CFD000000030000000500000008128A40F90780010400000007128A7CFB00000002078000FC00000007128A40FD00000007000000030000000100000005000000001386ACF6000000000CFD9C090F34D10800000004078000F8000000050000000700000005135D44FD04548A01138670F60CFD9C090F34D108000000040000000800000008000000001386ACF6000000000CFD9C090F34D10800000004000000080000000500000003135D44F90500010400000007135D80FB00000002050000FC00000007135D44FD00000007000000030000000100000004"
theorem small_2867305_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2867305_right_root small_2867305_right_fuel small_2867305_right_count small_2867305_right_encoded = true := by
  decide +kernel
theorem small_2867305_right_covered : CoveredBy scale carrier boxes small_2867305_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2867305_right_root small_2867305_right_fuel small_2867305_right_count small_2867305_right_encoded small_2867305_right_checked

theorem cover_2867305 : CoveredBy scale carrier boxes root_2867305 := by
  apply coveredBy_split_literal root_2867305 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0068.root_2867306 small_2867305_right_root coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0068.cover_2867306
  · exact small_2867305_right_covered
#print axioms cover_2867305

def root_2867300 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2867300_right_root : ZRayBox := fun j => (#[⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2867300_right_fuel : Nat := 1
def small_2867300_right_count : Nat := 1
def small_2867300_right_encoded : String := "00000000"
theorem small_2867300_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2867300_right_root small_2867300_right_fuel small_2867300_right_count small_2867300_right_encoded = true := by
  decide +kernel
theorem small_2867300_right_covered : CoveredBy scale carrier boxes small_2867300_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2867300_right_root small_2867300_right_fuel small_2867300_right_count small_2867300_right_encoded small_2867300_right_checked

theorem cover_2867300 : CoveredBy scale carrier boxes root_2867300 := by
  apply coveredBy_split_literal root_2867300 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0068.root_2867305 small_2867300_right_root coord0 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0068.cover_2867305
  · exact small_2867300_right_covered
#print axioms cover_2867300

def root_2867299 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2867299_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2867299_right_fuel : Nat := 29
def small_2867299_right_count : Nat := 349
def small_2867299_right_encoded : String := "12073CF60000000008A913091207010800000004050000F8135D80F90000000105000104135D44FB050000FC135D80FD000000030CFD9C010F34D0F604548A091386710800000004078000F8128A7CF9000000010280010413D7B0FB078000FC00000007000000060000000213D7ECFB00000002078000FC128A7CFD000000030AD3578110D100F6000000070000000000000005128A40FD0AD3578110D100F60000000A0000000000000006000000030000000700000007000000000F350CF60000000004548A0913867108000000040C9A86F6000000070000000700000005135D44FD0CFD9C010F34D0F604548A090000000A00000007000000000F350CF60000000004548A0900000006000000070000000300000002135D80FB00000002050000FC135D80FD000000030CFD9C010F34D0F604548A091386710800000004078000F8128A7CF90000000107800104128A40FB078000FC128A7CFD000000030AD3578110D100F6022A458913E1C5080000000408C000F811FC24F9000000010640010412FF70FB08C000FC000000050000000A0000000212FFACFB0000000208C000FC000000050000000A11FBE8F90000000A00000001000000050000000000000005128A40FD0AD3578110D100F60000000A000000000000000A0000000300000002128A7CFB00000002078000FC128A7CFD000000030AD3578110D100F6022A458913E1C5080000000408C000F811FC24F900000001000000090000000A000000050000000000000005128A40FD0AD3578110D100F60000000A000000000000000A00000003128A40F907800104128A40FB078000FC128A7CFD000000030AD3578110D100F60000000700000000000000070000000A00000002128A7CFB00000002078000FC128A7CFD000000030AD3578110D100F60000000A000000000000000A0000000A000000011386AD08078000F8128A7CF9000000010780010400000005128A7CFB00000002000000050000000700000004000000000F350CF60000000004548A0913867108000000040C9A86F60F878D01078000F8128A7CF90000000107800104128A40FB078000FC000000050000000A00000002128A7CFB00000002078000FC000000050000000A128A40F90000000A00000001000000000F87510100000000078000F8128A7CF9000000010780010400000005128A7CFB00000002078000FC000000050000000A000000071386AD080C9A86F6000000050F875101000000000000000500000004135D44FD0CFD9C010F34D0F604548A091386710800000004078000F8128A7CF9000000010000000A0000000A1386AD08078000F8128A7CF90000000107800104128A40FB0000000800000002128A7CFB0000000200000009128A40F907800104000000070000000A0000000100000004000000000F350CF60000000004548A090000000A1386AD080C9A86F60F878D01078000F8128A7CF90000000107800104000000050000000A00000007000000000F87510100000000000000070000000400000003135D44F905000104135D44FB050000FC00000007135D44FD0CFD9C010F34D0F60000000700000000000000070000000300000002135D80FB00000002050000FC135D80FD000000030CFD9C010F34D0F604548A091386710800000004028000F813D7ECF900000001078001040000000A0000000A0000000700000007000000000F350CF60000000004548A090000000A00000007135D44FD0CFD9C010F34D0F60000000A000000000000000A000000030000000112073D08050000F8135D80F90000000105000104135D44FB0000000700000002135D80FB00000002050000FC135D80FD000000030CFD9C010F34D0F6000000050000000000000005135D44FD0CFD9C010F34D0F6000000070000000000000007000000030000000700000004"
theorem small_2867299_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2867299_right_root small_2867299_right_fuel small_2867299_right_count small_2867299_right_encoded = true := by
  decide +kernel
theorem small_2867299_right_covered : CoveredBy scale carrier boxes small_2867299_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2867299_right_root small_2867299_right_fuel small_2867299_right_count small_2867299_right_encoded small_2867299_right_checked

theorem cover_2867299 : CoveredBy scale carrier boxes root_2867299 := by
  apply coveredBy_split_literal root_2867299 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0068.root_2867300 small_2867299_right_root coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0068.cover_2867300
  · exact small_2867299_right_covered
#print axioms cover_2867299

def root_2867294 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2867294_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2867294_right_fuel : Nat := 1
def small_2867294_right_count : Nat := 1
def small_2867294_right_encoded : String := "00000004"
theorem small_2867294_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2867294_right_root small_2867294_right_fuel small_2867294_right_count small_2867294_right_encoded = true := by
  decide +kernel
theorem small_2867294_right_covered : CoveredBy scale carrier boxes small_2867294_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2867294_right_root small_2867294_right_fuel small_2867294_right_count small_2867294_right_encoded small_2867294_right_checked

theorem cover_2867294 : CoveredBy scale carrier boxes root_2867294 := by
  apply coveredBy_split_literal root_2867294 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0068.root_2867299 small_2867294_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0068.cover_2867299
  · exact small_2867294_right_covered
#print axioms cover_2867294

def root_2867286 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2867286_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2867286_left_fuel : Nat := 2
def small_2867286_left_count : Nat := 3
def small_2867286_left_encoded : String := "1151E9090000000400000007"
theorem small_2867286_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2867286_left_root small_2867286_left_fuel small_2867286_left_count small_2867286_left_encoded = true := by
  decide +kernel
theorem small_2867286_left_covered : CoveredBy scale carrier boxes small_2867286_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2867286_left_root small_2867286_left_fuel small_2867286_left_count small_2867286_left_encoded small_2867286_left_checked

theorem cover_2867286 : CoveredBy scale carrier boxes root_2867286 := by
  apply coveredBy_split_literal root_2867286 small_2867286_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0068.root_2867294 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_2867286_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0068.cover_2867294
#print axioms cover_2867286

def root_2867281 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2867281_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2867281_right_fuel : Nat := 1
def small_2867281_right_count : Nat := 1
def small_2867281_right_encoded : String := "00000003"
theorem small_2867281_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2867281_right_root small_2867281_right_fuel small_2867281_right_count small_2867281_right_encoded = true := by
  decide +kernel
theorem small_2867281_right_covered : CoveredBy scale carrier boxes small_2867281_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2867281_right_root small_2867281_right_fuel small_2867281_right_count small_2867281_right_encoded small_2867281_right_checked

theorem cover_2867281 : CoveredBy scale carrier boxes root_2867281 := by
  apply coveredBy_split_literal root_2867281 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0068.root_2867286 small_2867281_right_root coord3 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0068.cover_2867286
  · exact small_2867281_right_covered
#print axioms cover_2867281

def root_2860747 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2860747 : CoveredBy scale carrier boxes root_2860747 := by
  apply coveredBy_split_literal root_2860747 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0068.root_2860748 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0068.root_2867281 coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0068.cover_2860748
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0068.cover_2867281
#print axioms cover_2860747

def root_2860742 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2860742_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2860742_right_fuel : Nat := 1
def small_2860742_right_count : Nat := 1
def small_2860742_right_encoded : String := "00000002"
theorem small_2860742_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2860742_right_root small_2860742_right_fuel small_2860742_right_count small_2860742_right_encoded = true := by
  decide +kernel
theorem small_2860742_right_covered : CoveredBy scale carrier boxes small_2860742_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2860742_right_root small_2860742_right_fuel small_2860742_right_count small_2860742_right_encoded small_2860742_right_checked

theorem cover_2860742 : CoveredBy scale carrier boxes root_2860742 := by
  apply coveredBy_split_literal root_2860742 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0068.root_2860747 small_2860742_right_root coord2 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0068.cover_2860747
  · exact small_2860742_right_covered
#print axioms cover_2860742

def root_2878723 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2878723 : CoveredBy scale carrier boxes root_2878723 := by
  apply coveredBy_split_literal root_2878723 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1103.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1104.root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1103.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1104.covered
#print axioms cover_2878723

def root_2878717 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2878717_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2878717_left_fuel : Nat := 1
def small_2878717_left_count : Nat := 1
def small_2878717_left_encoded : String := "00000002"
theorem small_2878717_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2878717_left_root small_2878717_left_fuel small_2878717_left_count small_2878717_left_encoded = true := by
  decide +kernel
theorem small_2878717_left_covered : CoveredBy scale carrier boxes small_2878717_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2878717_left_root small_2878717_left_fuel small_2878717_left_count small_2878717_left_encoded small_2878717_left_checked

theorem cover_2878717 : CoveredBy scale carrier boxes root_2878717 := by
  apply coveredBy_split_literal root_2878717 small_2878717_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0068.root_2878723 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_2878717_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0068.cover_2878723
#print axioms cover_2878717

def root_2860741 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2860741 : CoveredBy scale carrier boxes root_2860741 := by
  apply coveredBy_split_literal root_2860741 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0068.root_2860742 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0068.root_2878717 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0068.cover_2860742
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0068.cover_2878717
#print axioms cover_2860741

def root_2860736 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2860736_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2860736_right_fuel : Nat := 1
def small_2860736_right_count : Nat := 1
def small_2860736_right_encoded : String := "00000001"
theorem small_2860736_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2860736_right_root small_2860736_right_fuel small_2860736_right_count small_2860736_right_encoded = true := by
  decide +kernel
theorem small_2860736_right_covered : CoveredBy scale carrier boxes small_2860736_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2860736_right_root small_2860736_right_fuel small_2860736_right_count small_2860736_right_encoded small_2860736_right_checked

theorem cover_2860736 : CoveredBy scale carrier boxes root_2860736 := by
  apply coveredBy_split_literal root_2860736 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0068.root_2860741 small_2860736_right_root coord1 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0068.cover_2860741
  · exact small_2860736_right_covered
#print axioms cover_2860736

def root_2855254 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2855254 : CoveredBy scale carrier boxes root_2855254 := by
  apply coveredBy_split_literal root_2855254 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0068.root_2855255 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0068.root_2860736 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0068.cover_2855255
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0068.cover_2860736
#print axioms cover_2855254

def root_2855249 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2855249_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2855249_right_fuel : Nat := 1
def small_2855249_right_count : Nat := 1
def small_2855249_right_encoded : String := "00000000"
theorem small_2855249_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2855249_right_root small_2855249_right_fuel small_2855249_right_count small_2855249_right_encoded = true := by
  decide +kernel
theorem small_2855249_right_covered : CoveredBy scale carrier boxes small_2855249_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2855249_right_root small_2855249_right_fuel small_2855249_right_count small_2855249_right_encoded small_2855249_right_checked

theorem cover_2855249 : CoveredBy scale carrier boxes root_2855249 := by
  apply coveredBy_split_literal root_2855249 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0068.root_2855254 small_2855249_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0068.cover_2855254
  · exact small_2855249_right_covered
#print axioms cover_2855249

def root_2884791 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2884791_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2884791_left_fuel : Nat := 32
def small_2884791_left_count : Nat := 431
def small_2884791_left_encoded : String := "115224FD000000030A0001081151E90900000004000000051152250908A912FB12073D0408A912FD12073CFC0000000308A913091207010800000004050000F6135D8101050000F8135D80F9000000010CFD9BFB0F350D040CFD9BFD0F350CFC0000000304548A0913867108000000040C9A87040F8750FB0C9A86FC000000050F8750FD078000F600000005128A4101000000000000000500000003000000020F878CFB000000020C9A86FC000000050F8750FD078000F600000005128A41010000000000000005000000030000000500000005000000020F34D104000000020CFD9BFD0F350CFC0000000304548A0913867108000000040C9A86FC000000050F8750FD078000F600000005128A41010000000000000008000000030000000500000005135D44F90CFD9BFB0F350D040CFD9BFD0F350CFC0000000304548A0913867108000000040C9A87040F8750FB0C9A86FC000000070F8750FD0000000700000003000000020F878CFB000000020C9A86FC0F878CFD00000003078000F600000005128A410100000000000000070F8750FD0000000A000000031386AD080C9A8704000000070F878CFB0000000200000007000000040F34D0FC0000000500000003000000020F34D104000000020CFD9BFD0F350CFC0000000304548A0913867108000000040C9A86FC000000060F8750FD00000008000000031386AD080C9A86FC000000060F8750FD078000F6128A7D0100000006000000000000000600000003000000040F34D0FC00000005000000030000000100000000135D450100000000050000F8135D80F9000000010CFD9BFB0F350D040CFD9BFD0F350CFC0000000304548A0913867108000000040C9A87040F8750FB0C9A86FC0F878CFD00000003000000050F8750FD028000F613D7ED01078000F800000005000000070000000013D7B10100000000078000F8000000050000000700000003000000020F878CFB000000020C9A86FC0F878CFD00000003000000050F8750FD028000F613D7ED01078000F800000005128A40F9022A45890000000A00000005000000010000000013D7B10100000000078000F8128A7CF900000001022A458913E1C508000000040DE7CA04000000050E6014FB000000020000000500000005128A40F9022A458913E1C508000000040DE7CA040E5FD8FB00000007000000020E6014FB00000002000000080000000700000001000000031386AD080C9A8704000000050F878CFB0000000200000005000000040F34D0FC0000000500000003000000020F34D104000000020CFD9BFD0F350CFC0000000304548A0913867108000000040C9A86FC0F878CFD00000003000000060F8750FD028000F613D7ED01078000F800000005000000060000000013D7B10100000000078000F8128A7CF9000000010AD3577B10D13D0400000005000000020000000500000006000000031386AD080C9A86FC000000050F8750FD028000F60000000513D7B10100000000078000F8000000050000000600000003000000040F34D0FC0000000500000003135D44F90CFD9BFB0F350D040CFD9BFD0F350CFC0000000304548A0913867108000000040C9A87040F8750FB00000007000000020F878CFB000000020C9A86FC0F878CFD00000003000000070F8750FD028000F6000000070000000700000003000000070F34D0FC04548A0913867108000000040C9A870400000005000000060000000500000003000000020F34D104000000020CFD9BFD0F350CFC0000000304548A0913867108000000040C9A86FC000000060F8750FD00000006000000031386AD0800000006000000040F34D0FC00000006000000030000000112073D08050000F6135D8101050000F800000005135D44F90CFD9BFB0F350D040000000500000002000000050000000100000000135D450100000000050000F800000005135D44F90CFD9BFB0F350D0400000007000000020F34D104000000020CFD9BFD0F350CFC000000030CFD9C0900000006000000060F34D0FC00000005000000030000000100000004120700FC08A913091207010800000004050000F600000005135D45010000000000000005000000050000000300000002120701040000000208A912FD12073CFC0000000308A913091207010800000004050000F6135D8101050000F8135D80F90000000100000005135D44F9045489FB1386AD040CFD9BFD000000060000000600000002000000060000000100000000135D450100000000050000F8135D80F900000001045489FB1386AD040CFD9BFD000000060000000600000002000000060000000612073D08050000F600000005135D450100000000050000F8000000050000000600000004120700FC000000050000000300000004"
theorem small_2884791_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2884791_left_root small_2884791_left_fuel small_2884791_left_count small_2884791_left_encoded = true := by
  decide +kernel
theorem small_2884791_left_covered : CoveredBy scale carrier boxes small_2884791_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2884791_left_root small_2884791_left_fuel small_2884791_left_count small_2884791_left_encoded small_2884791_left_checked

theorem cover_2884791 : CoveredBy scale carrier boxes root_2884791 := by
  apply coveredBy_split_literal root_2884791 small_2884791_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1105.root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact small_2884791_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1105.covered
#print axioms cover_2884791

def root_2884785 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2884785_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2884785_left_fuel : Nat := 1
def small_2884785_left_count : Nat := 1
def small_2884785_left_encoded : String := "00000002"
theorem small_2884785_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2884785_left_root small_2884785_left_fuel small_2884785_left_count small_2884785_left_encoded = true := by
  decide +kernel
theorem small_2884785_left_covered : CoveredBy scale carrier boxes small_2884785_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2884785_left_root small_2884785_left_fuel small_2884785_left_count small_2884785_left_encoded small_2884785_left_checked

theorem cover_2884785 : CoveredBy scale carrier boxes root_2884785 := by
  apply coveredBy_split_literal root_2884785 small_2884785_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0068.root_2884791 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_2884785_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0068.cover_2884791
#print axioms cover_2884785

def root_2884337 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2884337_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2884337_left_fuel : Nat := 25
def small_2884337_left_count : Nat := 215
def small_2884337_left_encoded : String := "1151E8FB0A0000FC115224FD000000030A0001081151E90900000004000000051152250908A912FD12073CFC0000000308A913091207010800000004050000F6135D8101050000F8135D80F9000000010500010400000005135D80FB000000020CFD9BFD0F350CFC0000000304548A0913867108000000040C9A86FC000000050F8750FD078000F60000000500000007000000030000000500000005135D44F90500010400000007135D80FB000000020CFD9BFD000000070F34D0FC00000005000000030000000100000000135D450100000000050000F8135D80F9000000010500010400000005135D80FB000000020CFD9BFD0F350CFC0000000304548A0913867108000000040C9A86FC000000050F8750FD00000007000000030000000500000005135D44F9000000070000000112073D08050000F600000005135D4501000000000000000500000004120700FC0000000500000003000000041151E8FD0A0001081151E90900000004000000051152250908A913091207010800000004050000F6135D8101050000F8135D80F90000000105000104135D44FB050000FC000000070000000600000002135D80FB00000002050000FC135D80FD0000000304548A091386710800000004078000F6128A7D01078000F8128A7CF9000000010780010400000005128A7CFB000000020000000A0000000700000000128A410100000000078000F8128A7CF9000000010780010400000006128A7CFB00000002078000FC00000005000000060000000700000007135D44FD04548A09000000061386AD08078000F600000007000000070000000400000003135D44F90500010400000007135D80FB00000002050000FC000000070000000A0000000100000000135D450100000000050000F8135D80F90000000105000104135D44FB050000FC000000070000000600000002135D80FB00000002050000FC135D80FD0000000304548A091386710800000004028000F613D7ED01078000F800000006000000070000000013D7B10100000000078000F8000000060000000700000007135D44FD04548A09000000060000000600000003135D44F90500010400000007135D80FB00000002050000FC000000070000000A0000000112073D08050000F600000007135D4501000000000000000700000004000000040000000300000002"
theorem small_2884337_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2884337_left_root small_2884337_left_fuel small_2884337_left_count small_2884337_left_encoded = true := by
  decide +kernel
theorem small_2884337_left_covered : CoveredBy scale carrier boxes small_2884337_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2884337_left_root small_2884337_left_fuel small_2884337_left_count small_2884337_left_encoded small_2884337_left_checked

theorem cover_2884337 : CoveredBy scale carrier boxes root_2884337 := by
  apply coveredBy_split_literal root_2884337 small_2884337_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0068.root_2884785 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_2884337_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0068.cover_2884785
#print axioms cover_2884337

def root_2884332 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2884332_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2884332_right_fuel : Nat := 1
def small_2884332_right_count : Nat := 1
def small_2884332_right_encoded : String := "00000001"
theorem small_2884332_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2884332_right_root small_2884332_right_fuel small_2884332_right_count small_2884332_right_encoded = true := by
  decide +kernel
theorem small_2884332_right_covered : CoveredBy scale carrier boxes small_2884332_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2884332_right_root small_2884332_right_fuel small_2884332_right_count small_2884332_right_encoded small_2884332_right_checked

theorem cover_2884332 : CoveredBy scale carrier boxes root_2884332 := by
  apply coveredBy_split_literal root_2884332 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0068.root_2884337 small_2884332_right_root coord1 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0068.cover_2884337
  · exact small_2884332_right_covered
#print axioms cover_2884332

def root_2883454 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2883454_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2883454_left_fuel : Nat := 37
def small_2883454_left_count : Nat := 409
def small_2883454_left_encoded : String := "115224F9000000010A0001041151E8FB0A0000FC115224FD00000003000000051151E8FD0A0001081151E90900000004000000051152250908A912F912073CF80000000108A913091207010800000004050000F6135D810105000104135D44FB050000FC000000050000000600000002135D80FB00000002050000FC135D80FD000000030CFD9BF90F350CF80000000104548A0913867108000000040C9A86F8000000050F8750F9078000F600000005128A41010000000000000005000000010000000500000005135D44FD0CFD9BF9000000060F34D0F800000005000000010000000300000000135D45010000000005000104135D44FB050000FC000000050000000600000002135D80FB00000002050000FC135D80FD000000030CFD9BF90F350CF80000000104548A091386710800000004000000060000000500000005135D44FD0CFD9BF9000000060F34D0F800000005000000010000000312073D08050000F600000005135D4501000000000000000500000004120700F80000000500000001000000040000000300000002115224FB000000020A0000FC115224FD000000030A0001081151E9090000000408A912F900000005120700F800000005000000011152250908A912F912073CF80000000108A912FB12073D0408A912FD12073CFC0000000308A913091207010800000004050000F600000005135D4501000000000CFD9BF90F350CF8000000010CFD9BFB0F350D0400000005000000020000000500000005000000050000000500000002120701040000000208A912FD00000005120700FC0000000500000003120700F808A912FB00000005120701040000000208A912FD00000005120700FC000000050000000300000001000000041151E8FD0A0001081151E90900000004000000051152250908A912F912073CF80000000108A912FB12073D0408A913091207010800000004050000F6135D8101050000FC135D80FD000000030CFD9BF90F350CF8000000010CFD9BFB0F350D0404548A0913867108000000040C9A86F8000000090F8750F90C9A87040F8750FB078000F600000005128A4101000000000000000500000002000000090000000100000005000000020F34D10400000002000000090F34D0F80000000500000001135D44FD0CFD9BF90F350CF8000000010CFD9BFB0F350D0404548A09138671080000000400000009000000090000000200000009000000090000000300000000135D450100000000050000FC135D80FD000000030CFD9BF90F350CF8000000010CFD9BFB0F350D0404548A0913867108000000040C9A86F80F878CF9000000010C9A870400000005000000090F8750F90C9A87040F8750FB028000F613D7ED01078000FC00000005000000060000000013D7B10100000000078000FC0000000500000006000000020F878CFB00000002028000F60000000913D7B10100000000078000FC128A7CFD00000003022A458913E1C508000000040B4D43F800000005108010F90DE7CA0400000005000000090000000100000005128A40FD022A458913E1C50800000004000000090000000900000003000000011386AD080C9A86F8000000050F8750F90C9A8704000000050F878CFB00000002000000050000000100000004000000020F34D10400000002000000090F34D0F80000000500000001135D44FD0CFD9BF90F350CF8000000010CFD9BFB0F350D0404548A0913867108000000040C9A86F8000000060F8750F900000006000000011386AD080C9A86F8000000090F8750F90C9A870400000008000000090000000100000004000000020F34D10400000002000000090F34D0F800000009000000010000000312073D08050000F6135D8101050000FC00000005135D44FD0CFD9BF90F350CF8000000010CFD9BFB0F350D04000000050000000200000005000000050000000300000000135D450100000000050000FC00000005135D44FD0CFD9BF90F350CF8000000010CFD9BFB0F350D040CFD9C090F34D108000000040C9A86F8000000050F8750F90C9A8704000000050F878CFB00000002000000080000000100000005000000020F34D104000000020CFD9C090F34D1080000000400000009000000090F34D0F80000000500000001000000030000000400000002120701040000000208A9130912070108000000040000000900000009120700F808A912FB12073D0408A91309120701080000000400000009000000050000000200000005000000010000000400000003"
theorem small_2883454_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2883454_left_root small_2883454_left_fuel small_2883454_left_count small_2883454_left_encoded = true := by
  decide +kernel
theorem small_2883454_left_covered : CoveredBy scale carrier boxes small_2883454_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2883454_left_root small_2883454_left_fuel small_2883454_left_count small_2883454_left_encoded small_2883454_left_checked

theorem cover_2883454 : CoveredBy scale carrier boxes root_2883454 := by
  apply coveredBy_split_literal root_2883454 small_2883454_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0068.root_2884332 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact small_2883454_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0068.cover_2884332
#print axioms cover_2883454

def root_2883448 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2883448_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2883448_left_fuel : Nat := 1
def small_2883448_left_count : Nat := 1
def small_2883448_left_encoded : String := "00000000"
theorem small_2883448_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2883448_left_root small_2883448_left_fuel small_2883448_left_count small_2883448_left_encoded = true := by
  decide +kernel
theorem small_2883448_left_covered : CoveredBy scale carrier boxes small_2883448_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2883448_left_root small_2883448_left_fuel small_2883448_left_count small_2883448_left_encoded small_2883448_left_checked

theorem cover_2883448 : CoveredBy scale carrier boxes root_2883448 := by
  apply coveredBy_split_literal root_2883448 small_2883448_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0068.root_2883454 coord0 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_2883448_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0068.cover_2883454
#print axioms cover_2883448

def root_2855248 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2855248 : CoveredBy scale carrier boxes root_2855248 := by
  apply coveredBy_split_literal root_2855248 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0068.root_2855249 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0068.root_2883448 coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0068.cover_2855249
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0068.cover_2883448
#print axioms cover_2855248

def root_2819076 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2819076 : CoveredBy scale carrier boxes root_2819076 := by
  apply coveredBy_split_literal root_2819076 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.root_2819077 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0068.root_2855248 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0067.cover_2819077
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0068.cover_2855248
#print axioms cover_2819076

def root_2816028 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2816028 : CoveredBy scale carrier boxes root_2816028 := by
  apply coveredBy_split_literal root_2816028 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1079.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0068.root_2819076 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1079.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0068.cover_2819076
#print axioms cover_2816028

def root_2888397 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2888397 : CoveredBy scale carrier boxes root_2888397 := by
  apply coveredBy_split_literal root_2888397 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1106.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1107.root coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1106.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1107.covered
#print axioms cover_2888397

def root_2816027 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2816027 : CoveredBy scale carrier boxes root_2816027 := by
  apply coveredBy_split_literal root_2816027 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0068.root_2816028 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0068.root_2888397 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0068.cover_2816028
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0068.cover_2888397
#print axioms cover_2816027

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0068
