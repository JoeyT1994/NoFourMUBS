import TaoBundleAssembly0029
import TaoBundleAssembly0030
import TaoBundleChunkBatch0126
import TaoBundleChunkBatch0127
import TaoBundleChunkBatch0128
import TaoBundleChunkBatch0129
import TaoBundleChunkBatch0130
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0031
def root_1294120 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1294120_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1294120_left_fuel : Nat := 33
def small_1294120_left_count : Nat := 437
def small_1294120_left_encoded : String := "1151E8FB0A0000FC115224FD000000030A0000FE1152250908A912FD12073CFC0000000308A913090000000512073CFE00000004050000F6135D80F70000000005000102000000080000000800000008120700FC08A91309120700FE050000F6135D80F70000000005000102135D44F905000104135D44FB045489FD00000005138670FC000000050000000300000002135D80FB00000002045489FD00000005138670FC04548A09000000051386ACFE00000004078000F6128A7CF7000000000280010213D7B0F907800104128A40FB0000000500000002128A7CFB00000002022A457D0000000513E1C4FC067ECE890000000500000009000000030000000113D7ECF90000000107800104128A40FB022A457D0000000513E1C4FC067ECE890000000512EA94FE0000000408C000F611FC24F70000000000000009000000080000000300000002128A7CFB00000002022A457D0000000913E1C4FC067ECE89000000090000000900000003128A40F70280010213D7B0F907800104128A40FB00000005000000020000000A0000000113D7ECF90000000107800104128A40FB022A457D000000050000000800000002128A7CFB00000002022A457D0000000513E1C4FC067ECE89000000050000000A00000003000000000000000300000001135D80F90000000105000104135D44FB045489FD00000005138670FC04548A09000000051386ACFE00000004078000F6128A7CF70000000000000007000000080000000300000002135D80FB00000002045489FD1386ACFC0000000304548A09000000051386ACFE00000004078000F6128A7CF70000000007800102128A40F9000000050000000100000007128A40F70000000800000000138670FC04548A09138670FE078000F6128A7CF70000000007800102128A40F90000000500000001128A7CF90000000107800104128A40FB0000000500000002128A7CFB00000002022A457D0000000513E1C4FC022A4589000000050000000900000003128A40F70000000500000000000000041386ACFE00000004078000F6128A7CF70000000007800102128A40F907800104128A40FB022A457D0000000713E1C4FC067ECE8900000005000000070000000300000002128A7CFB00000002022A457D0000000913E1C4FC067ECE890000000912EA94FE00000004000000090000000300000001128A7CF9000000010780010400000007128A7CFB00000002022A457D0000000713E1C4FC067ECE89000000090000000700000003128A40F707800102128A40F90780010400000008128A7CFB00000002022A457D13E200FC000000030000000813E1C4FC067ECE8912EA58FE064000F612FFACF70000000006400102000000090000000912FF70F7000000080000000000000004000000080000000300000001128A7CF9000000010780010400000008128A7CFB00000002022A457D0000000813E1C4FC067ECE8912EA58FE000000080000000400000008000000030000000000000003135D44F705000102135D44F905000104135D44FB0000000500000002135D80FB00000002045489FD00000005138670FC04548A09000000051386ACFE00000004028000F613D7ECF700000000028001020000000A13D7ECF90000000107800104000000080000000A13D7B0F700000008000000000000000300000001135D80F90000000105000104135D44FB0000000800000002135D80FB00000002045489FD00000005138670FC04548A09000000051386ACFE00000004028000F613D7ECF7000000000780010200000008000000080000000800000003000000000000000412073CFE00000004050000F6135D80F70000000005000102135D44F905000104135D44FB045489FD000000080000000800000002135D80FB00000002045489FD1386ACFC000000030CFD9C090F34D0FE000000080000000400000008138670FC0CFD9C090F34D0FE078000F6128A7CF700000000028001020000000A13D7ECF90000000107800104000000080000000A128A40F70000000800000000000000040000000A0000000300000001135D80F90000000105000104135D44FB0000000800000002135D80FB00000002045489FD1386ACFC000000030CFD9C090F34D0FE000000080000000400000007138670FC0CFD9C090F34D0FE078000F6128A7CF70000000007800102128A40F90780010400000008128A7CFB00000002022A457D0000000713E1C4FC0AD35789000000090000000700000003000000010000000700000008000000040000000800000003135D44F70500010200000008000000080000000000000003000000041151E9090000000408A912FD00000008120700FC050000F6135D80F70000000005000102000000080000000800000008000000031151E8FD000000050000000300000002"
theorem small_1294120_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1294120_left_root small_1294120_left_fuel small_1294120_left_count small_1294120_left_encoded = true := by
  decide +kernel
theorem small_1294120_left_covered : CoveredBy scale carrier boxes small_1294120_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1294120_left_root small_1294120_left_fuel small_1294120_left_count small_1294120_left_encoded small_1294120_left_checked

theorem cover_1294120 : CoveredBy scale carrier boxes root_1294120 := by
  apply coveredBy_split_literal root_1294120 small_1294120_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0030.root_1295038 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_1294120_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0030.cover_1295038
#print axioms cover_1294120

def root_1294115 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1294115_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1294115_right_fuel : Nat := 1
def small_1294115_right_count : Nat := 1
def small_1294115_right_encoded : String := "00000001"
theorem small_1294115_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1294115_right_root small_1294115_right_fuel small_1294115_right_count small_1294115_right_encoded = true := by
  decide +kernel
theorem small_1294115_right_covered : CoveredBy scale carrier boxes small_1294115_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1294115_right_root small_1294115_right_fuel small_1294115_right_count small_1294115_right_encoded small_1294115_right_checked

theorem cover_1294115 : CoveredBy scale carrier boxes root_1294115 := by
  apply coveredBy_split_literal root_1294115 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0031.root_1294120 small_1294115_right_root coord1 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0031.cover_1294120
  · exact small_1294115_right_covered
#print axioms cover_1294115

def root_1305504 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1305504 : CoveredBy scale carrier boxes root_1305504 := by
  apply coveredBy_split_literal root_1305504 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0502.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0503.root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0502.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0503.covered
#print axioms cover_1305504

def root_1305498 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1305498_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1305498_left_fuel : Nat := 1
def small_1305498_left_count : Nat := 1
def small_1305498_left_encoded : String := "00000002"
theorem small_1305498_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1305498_left_root small_1305498_left_fuel small_1305498_left_count small_1305498_left_encoded = true := by
  decide +kernel
theorem small_1305498_left_covered : CoveredBy scale carrier boxes small_1305498_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1305498_left_root small_1305498_left_fuel small_1305498_left_count small_1305498_left_encoded small_1305498_left_checked

theorem cover_1305498 : CoveredBy scale carrier boxes root_1305498 := by
  apply coveredBy_split_literal root_1305498 small_1305498_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0031.root_1305504 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_1305498_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0031.cover_1305504
#print axioms cover_1305498

def root_1304984 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1304984_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1304984_left_fuel : Nat := 31
def small_1304984_left_count : Nat := 241
def small_1304984_left_encoded : String := "1151E8FB0A0000FC115224FD000000030A0000FE1152250908A912F912073D0208A912FD12073CFC0000000308A91309120700FE050000F6135D80F7000000000500010400000007135D80FB000000020CFD9BF90F350D020CFD9BFD000000050F34D0FC00000007000000030000000100000007135D44F700000008000000000000000412073CFE00000004050000F60000000700000008120700FC08A91309120700FE050000F6135D80F70000000005000104135D44FB0CFD9BF90F350D02045489FD00000007138670FC04548A09138670FE00000007000000040000000700000003000000010F34D102000000010000000700000002135D80FB000000020CFD9BF90F350D02045489FD1386ACFC0000000304548A09138670FE000000070000000400000007138670FC04548A09138670FE0C9A87020F8750F9078000F6128A7CF7000000000780010400000007128A7CFB00000002022A457D0000000713E1C4FC022A4589000000090000000700000003128A40F707800104128A40FB022A457D000000050000000800000002128A7CFB00000002022A457D0000000513E1C4FC022A458900000005000000060000000300000000000000010F878CF900000001078000F600000007128A40F707800104000000070000000600000000000000041386ACFE000000040C9A87020F8750F9078000F600000007128A40F70000000800000000000000010000000700000003000000010F34D1020000000100000007135D44F705000104135D44FB0000000800000002135D80FB000000020CFD9BF90F350D02045489FD00000008138670FC04548A09138670FE0C9A87020F8750F9028000F613D7ECF7000000000780010400000008128A7CFB00000002022A457D000000050000000600000008000000010F878CF900000001000000080000000400000008000000030000000100000008000000000000000412073CFE00000004050000F6135D80F7000000000500010400000007135D80FB000000020CFD9BF90F350D02045489FD00000007138670FC0CFD9C090F34D0FE00000007000000040000000700000003000000010F34D1020000000100000007135D44F700000008000000000000000300000001120701020000000108A912FD12073CFC0000000300000008120700FC08A91309120700FE00000008000000040000000700000003000000041151E9090000000408A912F912073D0208A912FD0000000700000008000000011207010200000001000000071151E8FD0A0000FE1152250908A912F90000000800000008000000041151E90900000004000000070000000300000002"
theorem small_1304984_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1304984_left_root small_1304984_left_fuel small_1304984_left_count small_1304984_left_encoded = true := by
  decide +kernel
theorem small_1304984_left_covered : CoveredBy scale carrier boxes small_1304984_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1304984_left_root small_1304984_left_fuel small_1304984_left_count small_1304984_left_encoded small_1304984_left_checked

theorem cover_1304984 : CoveredBy scale carrier boxes root_1304984 := by
  apply coveredBy_split_literal root_1304984 small_1304984_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0031.root_1305498 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_1304984_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0031.cover_1305498
#print axioms cover_1304984

def root_1304978 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1304978_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1304978_left_fuel : Nat := 1
def small_1304978_left_count : Nat := 1
def small_1304978_left_encoded : String := "00000001"
theorem small_1304978_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1304978_left_root small_1304978_left_fuel small_1304978_left_count small_1304978_left_encoded = true := by
  decide +kernel
theorem small_1304978_left_covered : CoveredBy scale carrier boxes small_1304978_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1304978_left_root small_1304978_left_fuel small_1304978_left_count small_1304978_left_encoded small_1304978_left_checked

theorem cover_1304978 : CoveredBy scale carrier boxes root_1304978 := by
  apply coveredBy_split_literal root_1304978 small_1304978_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0031.root_1304984 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_1304978_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0031.cover_1304984
#print axioms cover_1304978

def root_1294114 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1294114 : CoveredBy scale carrier boxes root_1294114 := by
  apply coveredBy_split_literal root_1294114 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0031.root_1294115 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0031.root_1304978 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0031.cover_1294115
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0031.cover_1304978
#print axioms cover_1294114

def root_1294109 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1294109_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1294109_right_fuel : Nat := 1
def small_1294109_right_count : Nat := 1
def small_1294109_right_encoded : String := "00000000"
theorem small_1294109_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1294109_right_root small_1294109_right_fuel small_1294109_right_count small_1294109_right_encoded = true := by
  decide +kernel
theorem small_1294109_right_covered : CoveredBy scale carrier boxes small_1294109_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1294109_right_root small_1294109_right_fuel small_1294109_right_count small_1294109_right_encoded small_1294109_right_checked

theorem cover_1294109 : CoveredBy scale carrier boxes root_1294109 := by
  apply coveredBy_split_literal root_1294109 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0031.root_1294114 small_1294109_right_root coord0 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0031.cover_1294114
  · exact small_1294109_right_covered
#print axioms cover_1294109

def root_1271899 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1271899 : CoveredBy scale carrier boxes root_1271899 := by
  apply coveredBy_split_literal root_1271899 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0030.root_1271900 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0031.root_1294109 coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0030.cover_1271900
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0031.cover_1294109
#print axioms cover_1271899

def root_1267589 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1267589 : CoveredBy scale carrier boxes root_1267589 := by
  apply coveredBy_split_literal root_1267589 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.root_1267590 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0031.root_1271899 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0029.cover_1267590
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0031.cover_1271899
#print axioms cover_1267589

def root_1314562 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1314562 : CoveredBy scale carrier boxes root_1314562 := by
  apply coveredBy_split_literal root_1314562 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0507.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0508.root coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0507.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0508.covered
#print axioms cover_1314562

def root_1314556 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1314556_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1314556_left_fuel : Nat := 1
def small_1314556_left_count : Nat := 1
def small_1314556_left_encoded : String := "00000000"
theorem small_1314556_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1314556_left_root small_1314556_left_fuel small_1314556_left_count small_1314556_left_encoded = true := by
  decide +kernel
theorem small_1314556_left_covered : CoveredBy scale carrier boxes small_1314556_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1314556_left_root small_1314556_left_fuel small_1314556_left_count small_1314556_left_encoded small_1314556_left_checked

theorem cover_1314556 : CoveredBy scale carrier boxes root_1314556 := by
  apply coveredBy_split_literal root_1314556 small_1314556_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0031.root_1314562 coord0 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_1314556_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0031.cover_1314562
#print axioms cover_1314556

def root_1314555 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1314555 : CoveredBy scale carrier boxes root_1314555 := by
  apply coveredBy_split_literal root_1314555 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0031.root_1314556 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0509.root coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0031.cover_1314556
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0509.covered
#print axioms cover_1314555

def root_1314550 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1314550_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1314550_right_fuel : Nat := 1
def small_1314550_right_count : Nat := 1
def small_1314550_right_encoded : String := "00000004"
theorem small_1314550_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1314550_right_root small_1314550_right_fuel small_1314550_right_count small_1314550_right_encoded = true := by
  decide +kernel
theorem small_1314550_right_covered : CoveredBy scale carrier boxes small_1314550_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1314550_right_root small_1314550_right_fuel small_1314550_right_count small_1314550_right_encoded small_1314550_right_checked

theorem cover_1314550 : CoveredBy scale carrier boxes root_1314550 := by
  apply coveredBy_split_literal root_1314550 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0031.root_1314555 small_1314550_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0031.cover_1314555
  · exact small_1314550_right_covered
#print axioms cover_1314550

def root_1312236 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1312236 : CoveredBy scale carrier boxes root_1312236 := by
  apply coveredBy_split_literal root_1312236 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0506.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0031.root_1314550 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0506.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0031.cover_1314550
#print axioms cover_1312236

def root_1312230 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1312230_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1312230_left_fuel : Nat := 1
def small_1312230_left_count : Nat := 1
def small_1312230_left_encoded : String := "00000003"
theorem small_1312230_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1312230_left_root small_1312230_left_fuel small_1312230_left_count small_1312230_left_encoded = true := by
  decide +kernel
theorem small_1312230_left_covered : CoveredBy scale carrier boxes small_1312230_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1312230_left_root small_1312230_left_fuel small_1312230_left_count small_1312230_left_encoded small_1312230_left_checked

theorem cover_1312230 : CoveredBy scale carrier boxes root_1312230 := by
  apply coveredBy_split_literal root_1312230 small_1312230_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0031.root_1312236 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_1312230_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0031.cover_1312236
#print axioms cover_1312230

def root_1319616 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1319616 : CoveredBy scale carrier boxes root_1319616 := by
  apply coveredBy_split_literal root_1319616 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0510.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0511.root coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0510.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0511.covered
#print axioms cover_1319616

def root_1319611 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1319611_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1319611_right_fuel : Nat := 1
def small_1319611_right_count : Nat := 1
def small_1319611_right_encoded : String := "00000003"
theorem small_1319611_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1319611_right_root small_1319611_right_fuel small_1319611_right_count small_1319611_right_encoded = true := by
  decide +kernel
theorem small_1319611_right_covered : CoveredBy scale carrier boxes small_1319611_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1319611_right_root small_1319611_right_fuel small_1319611_right_count small_1319611_right_encoded small_1319611_right_checked

theorem cover_1319611 : CoveredBy scale carrier boxes root_1319611 := by
  apply coveredBy_split_literal root_1319611 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0031.root_1319616 small_1319611_right_root coord3 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0031.cover_1319616
  · exact small_1319611_right_covered
#print axioms cover_1319611

def root_1312229 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1312229 : CoveredBy scale carrier boxes root_1312229 := by
  apply coveredBy_split_literal root_1312229 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0031.root_1312230 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0031.root_1319611 coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0031.cover_1312230
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0031.cover_1319611
#print axioms cover_1312229

def root_1312223 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1312223_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1312223_left_fuel : Nat := 1
def small_1312223_left_count : Nat := 1
def small_1312223_left_encoded : String := "00000002"
theorem small_1312223_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1312223_left_root small_1312223_left_fuel small_1312223_left_count small_1312223_left_encoded = true := by
  decide +kernel
theorem small_1312223_left_covered : CoveredBy scale carrier boxes small_1312223_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1312223_left_root small_1312223_left_fuel small_1312223_left_count small_1312223_left_encoded small_1312223_left_checked

theorem cover_1312223 : CoveredBy scale carrier boxes root_1312223 := by
  apply coveredBy_split_literal root_1312223 small_1312223_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0031.root_1312229 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_1312223_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0031.cover_1312229
#print axioms cover_1312223

def root_1310911 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1310911 : CoveredBy scale carrier boxes root_1310911 := by
  apply coveredBy_split_literal root_1310911 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0505.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0031.root_1312223 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0505.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0031.cover_1312223
#print axioms cover_1310911

def root_1310906 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1310906_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1310906_right_fuel : Nat := 1
def small_1310906_right_count : Nat := 1
def small_1310906_right_encoded : String := "00000001"
theorem small_1310906_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1310906_right_root small_1310906_right_fuel small_1310906_right_count small_1310906_right_encoded = true := by
  decide +kernel
theorem small_1310906_right_covered : CoveredBy scale carrier boxes small_1310906_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1310906_right_root small_1310906_right_fuel small_1310906_right_count small_1310906_right_encoded small_1310906_right_checked

theorem cover_1310906 : CoveredBy scale carrier boxes root_1310906 := by
  apply coveredBy_split_literal root_1310906 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0031.root_1310911 small_1310906_right_root coord1 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0031.cover_1310911
  · exact small_1310906_right_covered
#print axioms cover_1310906

def root_1331105 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16678144), (16777216)⟩, ⟨(-1816224), (0)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(15552512), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1331105 : CoveredBy scale carrier boxes root_1331105 := by
  apply coveredBy_split_literal root_1331105 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0516.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0517.root coord0 false (-9480640)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0516.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0517.covered
#print axioms cover_1331105

def root_1331099 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-1816224), (0)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(15552512), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1331099_left_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16378880), (16678144)⟩, ⟨(-1816224), (0)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(15552512), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1331099_left_fuel : Nat := 1
def small_1331099_left_count : Nat := 1
def small_1331099_left_encoded : String := "00000002"
theorem small_1331099_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1331099_left_root small_1331099_left_fuel small_1331099_left_count small_1331099_left_encoded = true := by
  decide +kernel
theorem small_1331099_left_covered : CoveredBy scale carrier boxes small_1331099_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1331099_left_root small_1331099_left_fuel small_1331099_left_count small_1331099_left_encoded small_1331099_left_checked

theorem cover_1331099 : CoveredBy scale carrier boxes root_1331099 := by
  apply coveredBy_split_literal root_1331099 small_1331099_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0031.root_1331105 coord2 false (16678144)
  · decide +kernel
  · decide +kernel
  · exact small_1331099_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0031.cover_1331105
#print axioms cover_1331099

def root_1330151 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(15552512), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1330151_left_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (-1816224)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(15552512), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1330151_left_fuel : Nat := 24
def small_1330151_left_count : Nat := 447
def small_1330151_left_encoded : String := "13E201040B4D43F610804CF7000000000DE7CA020E5FD8F90B4D43FC10804CFD000000030640010812FF710900000004033F67BB0000000713BBF504000000020BF3E576100928F700000000000000051008ECF70D4128820EFA10F90000000A00000001000000070000000012FFAD09033F67BB13BC31040BF3E576100928F700000000000000071008ECF700000009000000000000000213BBF504000000020BF3E576100928F7000000000D4128820EFA10F90BF3E57C100928FD00000003000000051008ECFD06E0010812C7E509000000040000000712C8210902B4D69B00000007000000080000000400000003000000010EFA4CF9000000010BF3E57C000000071008ECFD00000007000000031008ECF70D4128820EFA10F90BF3E57C0000000A1008ECFD0000000A00000003000000010EFA4CF9000000010BF3E57C000000091008ECFD06E001080000000900000009000000030000000000000004108010FD0640010812FF710900000004033F67BB0000000713BBF504000000020BF3E576000000071008ECF70D4128820EFA10F90AA6A27C10EDACFD0000000305A001080000000713317109000000070000000410ED70FD000000070000000300000001000000070000000012FFAD09033F67BB13BC31040BF3E576100928F700000000000000071008ECF70D4128820EFA10F90AA6A27C0000000A000000060000000100000007000000000000000213BBF504000000020BF3E576100928F7000000000D4128820EFA10F90AA6A27C10EDACFD0000000306E00108000000070000000600000006000000010EFA4CF900000001000000071008ECF70D4128820EFA10F90AA6A27C10EDACFD0000000306E0010812C7E5090000000402B4D69B00000006000000060000000600000006000000010EFA4CF9000000010AA6A27C10EDACFD0000000306E0010812C7E509000000040000000712C8210902B4D69B0000000713D0D104000000020BA094B6104604F70000000000000006000000060000000410ED70FD06E00108000000070000000600000003000000000000000400000003000000010E6014F9000000010B4D43FC10804CFD00000003064001080000000712FFAD09033F67BB0000000713BBF504000000020DAED8790E9661020BF3E5760000000700000009000000010000000900000004108010FD064001080000000712FFAD09033F67BB0000000713BBF504000000020DAED8790E9661020BF3E576000000071008ECF70AA6A27C00000007000000070000000000000001000000070000000400000003108010F70DE7CA020E5FD8F90B4D43FC10804CFD000000030640010812FF710900000004033F67BB0000000913BBF504000000020AA6A27610EDACF7000000000D4128820000000A0EFA4CF900000001000000090000000A12FFAD09033F67BB0000000913BBF504000000020AA6A27610EDACF7000000000D4128820000000A000000090000000A00000004108010FD0640010812FF710900000004033F67BB13BC31040AA6A27610EDACF7000000000D4128820000000A000000070000000A0000000213BBF504000000020AA6A27610EDACF7000000000D4128820EFA10F90AA6A27C0000000A10ED70FD0000000A00000003000000010EFA4CF9000000010AA6A27C10EDACFD0000000305A00108000000071331710902B4D69B0000000713D0D104000000020AF9F33600000007000000090000000410ED70FD000000070000000310ED70F70D4128820000000A0EFA4CF9000000010AA6A27C0000000A10ED70FD0000000A000000030000000012FFAD09033F67BB13BC31040AA6A27610EDACF7000000000D4128820EFA10F90000000A000000010EFA4CF9000000010AA6A27C0000000910ED70FD000000050000000310ED70F70000000A000000000000000213BBF504000000020AA6A27610EDACF7000000000D4128820EFA10F90AA6A27C0000000A10ED70FD0000000600000003000000010EFA4CF9000000010AA6A27C10EDACFD0000000306E001080000000912C82109000000090000000410ED70FD06E0010812C7E5090000000402B4D69B0000000600000006000000060000000310ED70F70D4128820000000A0EFA4CF9000000010AA6A27C0000000A10ED70FD0000000500000003000000000000000400000003000000010E6014F9000000010B4D43FC10804CFD00000003064001080000000900000009108010FD0640010812FF710900000004033F67BB0000000713BBF504000000020DAED8790E9661020AA6A2760000000710ED70F70000000900000000000000010E962502000000010000000712FFAD09033F67BB0000000913BBF504000000020DAED8790E9661020AA6A27610EDACF7000000000AA6A27C0000000910ED70FD06E0010800000007000000050000000300000009000000010E962502000000010000000900000004000000030000000000000002"
theorem small_1330151_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1330151_left_root small_1330151_left_fuel small_1330151_left_count small_1330151_left_encoded = true := by
  decide +kernel
theorem small_1330151_left_covered : CoveredBy scale carrier boxes small_1330151_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1330151_left_root small_1330151_left_fuel small_1330151_left_count small_1330151_left_encoded small_1330151_left_checked

theorem cover_1330151 : CoveredBy scale carrier boxes root_1330151 := by
  apply coveredBy_split_literal root_1330151 small_1330151_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0031.root_1331099 coord2 true (-1816224)
  · decide +kernel
  · decide +kernel
  · exact small_1330151_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0031.cover_1331099
#print axioms cover_1330151

def root_1330145 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1330145_left_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(14529024), (15552512)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1330145_left_fuel : Nat := 1
def small_1330145_left_count : Nat := 1
def small_1330145_left_encoded : String := "00000004"
theorem small_1330145_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1330145_left_root small_1330145_left_fuel small_1330145_left_count small_1330145_left_encoded = true := by
  decide +kernel
theorem small_1330145_left_covered : CoveredBy scale carrier boxes small_1330145_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1330145_left_root small_1330145_left_fuel small_1330145_left_count small_1330145_left_encoded small_1330145_left_checked

theorem cover_1330145 : CoveredBy scale carrier boxes root_1330145 := by
  apply coveredBy_split_literal root_1330145 small_1330145_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0031.root_1330151 coord4 true (15552512)
  · decide +kernel
  · decide +kernel
  · exact small_1330145_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0031.cover_1330151
#print axioms cover_1330145

def root_1330144 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1330144 : CoveredBy scale carrier boxes root_1330144 := by
  apply coveredBy_split_literal root_1330144 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0031.root_1330145 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0518.root coord4 false (6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0031.cover_1330145
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0518.covered
#print axioms cover_1330144

def root_1330139 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1330139_right_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-13026304), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1330139_right_fuel : Nat := 1
def small_1330139_right_count : Nat := 1
def small_1330139_right_encoded : String := "00000003"
theorem small_1330139_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1330139_right_root small_1330139_right_fuel small_1330139_right_count small_1330139_right_encoded = true := by
  decide +kernel
theorem small_1330139_right_covered : CoveredBy scale carrier boxes small_1330139_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1330139_right_root small_1330139_right_fuel small_1330139_right_count small_1330139_right_encoded small_1330139_right_checked

theorem cover_1330139 : CoveredBy scale carrier boxes root_1330139 := by
  apply coveredBy_split_literal root_1330139 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0031.root_1330144 small_1330139_right_root coord3 true (-13026304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0031.cover_1330144
  · exact small_1330139_right_covered
#print axioms cover_1330139

def root_1329729 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1329729_left_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-10572672)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1329729_left_fuel : Nat := 18
def small_1329729_left_count : Nat := 193
def small_1329729_left_encoded : String := "0F878CFD0000000307800108128A410900000004022A457B13E201040B4D43F610804CF7000000000DE7CA020E5FD8F90DE7C9FC0E6014FD00000003000000050E5FD8FD0640010812FF7109000000040000000512FFAD09033F67BB0000000913BBF504000000020BF3E57600000005000000090000000400000003000000010E6014F90000000100000009108010F70DE7CA020E5FD8F90DE7C9FC000000090E5FD8FD0000000A000000030000000100000009000000000000000213E1C504000000020B4D43F610804CF7000000000DE7CA02000000050E6014F9000000010DE7C9FC000000050E5FD8FD064001080000000512FFAD090115233B00000009000000050000000400000003108010F70DE7CA020E5FD8F90DE7C9FC0E6014FD00000003000000050E5FD8FD0640010812FF7109000000040115233B0000000A0000000512FFAD090115233B13F895040AA6A27610EDACF70000000000000009000000090000000213F85904000000020AA6A2760000000810ED70F70000000A000000000000000400000003000000010E6014F9000000010DE7C9FC000000090E5FD8FD064001080000000912FFAD0900000009000000040000000300000000128A7D09022A457B13E201040B4D43F610804CF7000000000DE7CA020E5FD8F90DE7C9FC000000090E5FD8FD08C0010811FBE90900000004033F67BB0000000913BBF504000000020BF3E576000000080000000911FC2509000000090000000400000003000000010E6014F90000000100000009108010F70DE7CA020E5FD8F9000000090000000100000009000000000000000213E1C504000000020B4D43F610804CF7000000000DE7CA020E5FD8F90DE7C9FC000000080E5FD8FD00000008000000030000000100000008108010F70DE7CA020E5FD8F90DE7C9FC000000080E5FD8FD08C0010811FBE909000000040115233B13F895040AA6A276000000080000000900000002000000080000000800000003000000010E6014F9000000010DE7C9FC000000080E5FD8FD08C001080000000900000008000000030000000000000004"
theorem small_1329729_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1329729_left_root small_1329729_left_fuel small_1329729_left_count small_1329729_left_encoded = true := by
  decide +kernel
theorem small_1329729_left_covered : CoveredBy scale carrier boxes small_1329729_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1329729_left_root small_1329729_left_fuel small_1329729_left_count small_1329729_left_encoded small_1329729_left_checked

theorem cover_1329729 : CoveredBy scale carrier boxes root_1329729 := by
  apply coveredBy_split_literal root_1329729 small_1329729_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0031.root_1330139 coord3 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact small_1329729_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0031.cover_1330139
#print axioms cover_1329729

def root_1329723 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1329723_left_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-13027072)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1329723_left_fuel : Nat := 1
def small_1329723_left_count : Nat := 1
def small_1329723_left_encoded : String := "00000001"
theorem small_1329723_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1329723_left_root small_1329723_left_fuel small_1329723_left_count small_1329723_left_encoded = true := by
  decide +kernel
theorem small_1329723_left_covered : CoveredBy scale carrier boxes small_1329723_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1329723_left_root small_1329723_left_fuel small_1329723_left_count small_1329723_left_encoded small_1329723_left_checked

theorem cover_1329723 : CoveredBy scale carrier boxes root_1329723 := by
  apply coveredBy_split_literal root_1329723 small_1329723_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0031.root_1329729 coord1 true (-13027072)
  · decide +kernel
  · decide +kernel
  · exact small_1329723_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0031.cover_1329729
#print axioms cover_1329723

def root_1328463 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1328463 : CoveredBy scale carrier boxes root_1328463 := by
  apply coveredBy_split_literal root_1328463 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0515.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0031.root_1329723 coord1 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0515.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0031.cover_1329723
#print axioms cover_1328463

def root_1328458 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1328458_right_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(-13026304), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1328458_right_fuel : Nat := 1
def small_1328458_right_count : Nat := 1
def small_1328458_right_encoded : String := "00000000"
theorem small_1328458_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1328458_right_root small_1328458_right_fuel small_1328458_right_count small_1328458_right_encoded = true := by
  decide +kernel
theorem small_1328458_right_covered : CoveredBy scale carrier boxes small_1328458_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1328458_right_root small_1328458_right_fuel small_1328458_right_count small_1328458_right_encoded small_1328458_right_checked

theorem cover_1328458 : CoveredBy scale carrier boxes root_1328458 := by
  apply coveredBy_split_literal root_1328458 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0031.root_1328463 small_1328458_right_root coord0 true (-13026304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0031.cover_1328463
  · exact small_1328458_right_covered
#print axioms cover_1328458

def root_1326770 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1326770 : CoveredBy scale carrier boxes root_1326770 := by
  apply coveredBy_split_literal root_1326770 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0514.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0031.root_1328458 coord0 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0514.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0031.cover_1328458
#print axioms cover_1326770

def root_1326764 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1326764_left_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1326764_left_fuel : Nat := 1
def small_1326764_left_count : Nat := 1
def small_1326764_left_encoded : String := "00000003"
theorem small_1326764_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1326764_left_root small_1326764_left_fuel small_1326764_left_count small_1326764_left_encoded = true := by
  decide +kernel
theorem small_1326764_left_covered : CoveredBy scale carrier boxes small_1326764_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1326764_left_root small_1326764_left_fuel small_1326764_left_count small_1326764_left_encoded small_1326764_left_checked

theorem cover_1326764 : CoveredBy scale carrier boxes root_1326764 := by
  apply coveredBy_split_literal root_1326764 small_1326764_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0031.root_1326770 coord3 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_1326764_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0031.cover_1326770
#print axioms cover_1326764

def root_1326763 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1326763_right_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1326763_right_fuel : Nat := 13
def small_1326763_right_count : Nat := 57
def small_1326763_right_encoded : String := "0F34D0FC0C9A86F60F878CF7000000000C9A8702000000050F878CF900000001000000050F8750F70C9A87020F8750F907800108128A41090000000400000005128A7D09022A457B13E201040AD3577D0000000A000000090000000213E1C504000000020AD3577D10D13CFC000000030B4D43F6000000050000000A0000000500000004000000010F878CF90000000107800108128A410900000004022A457B0000000900000005128A7D09022A457B0000000913E1C504000000020AD3577D10D13CFC000000030B4D43F6000000080000000900000009000000040000000000000003"
theorem small_1326763_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1326763_right_root small_1326763_right_fuel small_1326763_right_count small_1326763_right_encoded = true := by
  decide +kernel
theorem small_1326763_right_covered : CoveredBy scale carrier boxes small_1326763_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1326763_right_root small_1326763_right_fuel small_1326763_right_count small_1326763_right_encoded small_1326763_right_checked

theorem cover_1326763 : CoveredBy scale carrier boxes root_1326763 := by
  apply coveredBy_split_literal root_1326763 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0031.root_1326764 small_1326763_right_root coord3 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0031.cover_1326764
  · exact small_1326763_right_covered
#print axioms cover_1326763

def root_1326757 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1326757_left_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1326757_left_fuel : Nat := 1
def small_1326757_left_count : Nat := 1
def small_1326757_left_encoded : String := "00000002"
theorem small_1326757_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1326757_left_root small_1326757_left_fuel small_1326757_left_count small_1326757_left_encoded = true := by
  decide +kernel
theorem small_1326757_left_covered : CoveredBy scale carrier boxes small_1326757_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1326757_left_root small_1326757_left_fuel small_1326757_left_count small_1326757_left_encoded small_1326757_left_checked

theorem cover_1326757 : CoveredBy scale carrier boxes root_1326757 := by
  apply coveredBy_split_literal root_1326757 small_1326757_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0031.root_1326763 coord2 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_1326757_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0031.cover_1326763
#print axioms cover_1326757

def root_1325247 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1325247 : CoveredBy scale carrier boxes root_1325247 := by
  apply coveredBy_split_literal root_1325247 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0513.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0031.root_1326757 coord2 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0513.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0031.cover_1326757
#print axioms cover_1325247

def root_1325242 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1325242_right_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1325242_right_fuel : Nat := 1
def small_1325242_right_count : Nat := 1
def small_1325242_right_encoded : String := "00000001"
theorem small_1325242_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1325242_right_root small_1325242_right_fuel small_1325242_right_count small_1325242_right_encoded = true := by
  decide +kernel
theorem small_1325242_right_covered : CoveredBy scale carrier boxes small_1325242_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1325242_right_root small_1325242_right_fuel small_1325242_right_count small_1325242_right_encoded small_1325242_right_checked

theorem cover_1325242 : CoveredBy scale carrier boxes root_1325242 := by
  apply coveredBy_split_literal root_1325242 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0031.root_1325247 small_1325242_right_root coord1 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0031.cover_1325247
  · exact small_1325242_right_covered
#print axioms cover_1325242

def root_1325241 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1325241_right_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1325241_right_fuel : Nat := 33
def small_1325241_right_count : Nat := 487
def small_1325241_right_encoded : String := "0F34D10200000001045489FB1386AD040CFD9BFD0F350CFC000000030C9A86F60F878CF7000000000C9A86FC000000070F8750FD00000007000000030F8750F70C9A86FC0F878CFD00000003000000090F8750FD07800108128A41090000000400000007128A7D090AD3577900000009000000090000000400000003000000000F34D0FC00000009000000030000000213867104000000020CFD9BFD0F350CFC000000030C9A86F60F878CF7000000000C9A86FC0F878CFD0000000307800108128A4109000000040AD3577910D13D02022A457B00000007000000050000000100000005128A7D090AD3577910D13D02022A457B13E201040DE7C9F60E6014F70000000000000007000000090000000213E1C504000000020DE7C9F6000000080E5FD8F700000008000000000000000110D1010200000001022A457B0000000713E1C504000000020DE7C9F60000000800000009000000040F8750FD07800108128A4109000000040AD3577910D13D02022A457B0000000713E1C504000000020DE7C9F6000000070E5FD8F70B4D43FC000000070000000A000000000000000100000007128A7D090AD3577910D13D02022A457B13E201040DE7C9F6000000070E5FD8F70B4D43FC00000007108010FD0000000700000003000000000000000213E1C504000000020DE7C9F60E6014F7000000000000000A0E5FD8F70B4D43FC000000080000000A000000000000000110D1010200000001022A457B000000070000000A00000004000000030F8750F70C9A86FC0F878CFD0000000307800108128A4109000000040AD3577910D13D02022A457B0000000913E1C504000000020B4D43F610804CF7000000000DE7C9FC000000050E5FD8FD06400108000000050000000900000003000000090000000110D101020000000100000009128A7D090AD3577910D13D02022A457B0000000913E1C504000000020B4D43F610804CF7000000000DE7C9FC000000080E5FD8FD0000000800000003000000090000000110D101020000000100000009000000040F8750FD07800108128A4109000000040AD3577910D13D02022A457B13E201040B4D43F610804CF70000000000000007108010F70B4D43FC00000009108010FD06400108000000070000000900000003000000000000000213E1C504000000020B4D43F610804CF7000000000B4D43FC10804CFD000000030640010812FF7109000000040000000712FFAD090BE879B91011AD020115233B00000007000000080000000110117102000000010000000900000004108010FD064001080000000712FFAD090BE879B91011AD020115233B000000070000000A000000011011710200000001000000070000000400000003108010F70B4D43FC10804CFD000000030640010812FF7109000000040BE879B9000000090000000912FFAD090000000900000004108010FD0640010812FF7109000000040BE879B91011AD020115233B0000000713F85904000000020AA6A27610EDACF7000000000AA6A27C000000070000000A10ED70F70AA6A27C0000000910ED70FD05A00108133135090000000400000007133171090C730AD900000009000000090000000400000003000000000000000110117102000000010000000712FFAD090BE879B91011AD020115233B13F895040AA6A27610EDACF70000000000000009000000090000000213F85904000000020AA6A27610EDACF7000000000AA6A27C000000080000000A10ED70F70AA6A27C0000000910ED70FD06E001080000000912C8210900000009000000040000000300000000000000011011710200000001000000090000000400000003000000000000000110D1010200000001022A457B0000000713E1C504000000020B4D43F610804CF70000000000000007108010F70B4D43FC00000009108010FD0640010800000007000000090000000300000000128A7D090AD3577910D13D02022A457B13E201040B4D43F610804CF7000000000B4D43FC10804CFD0000000300000009108010FD08C0010811FBE909000000040000000711FC25090BE879B900000009000000090000000400000003108010F70B4D43FC00000009108010FD08C00108000000090000000500000003000000000000000213E1C504000000020B4D43F610804CF7000000000B4D43FC10804CFD0000000308C0010811FBE909000000040BE879B90000000810117102000000010000000800000008108010FD08C0010811FBE909000000040BE879B91011AD020115233B13F895040BF3E576000000081008ECF7000000080000000000000002000000080000000110117102000000010000000A0000000800000003108010F70B4D43FC10804CFD0000000308C001080000000900000008108010FD08C0010811FBE909000000040BE879B91011AD020115233B00000009000000080000000110117102000000010000000911FC25090BE879B9000000051011710200000001000000050000000400000003000000000000000110D1010200000001022A457B0000000913E1C504000000020B4D43F610804CF7000000000B4D43FC000000080000000A108010F700000009000000000000000400000003000000000F34D0FC0C9A86F60F878CF7000000000780010800000005128A7D090AD357790000000900000005000000040F8750F7000000090000000000000003"
theorem small_1325241_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1325241_right_root small_1325241_right_fuel small_1325241_right_count small_1325241_right_encoded = true := by
  decide +kernel
theorem small_1325241_right_covered : CoveredBy scale carrier boxes small_1325241_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1325241_right_root small_1325241_right_fuel small_1325241_right_count small_1325241_right_encoded small_1325241_right_checked

theorem cover_1325241 : CoveredBy scale carrier boxes root_1325241 := by
  apply coveredBy_split_literal root_1325241 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0031.root_1325242 small_1325241_right_root coord1 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0031.cover_1325242
  · exact small_1325241_right_covered
#print axioms cover_1325241

def root_1325235 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1325235_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1325235_left_fuel : Nat := 1
def small_1325235_left_count : Nat := 1
def small_1325235_left_encoded : String := "00000000"
theorem small_1325235_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1325235_left_root small_1325235_left_fuel small_1325235_left_count small_1325235_left_encoded = true := by
  decide +kernel
theorem small_1325235_left_covered : CoveredBy scale carrier boxes small_1325235_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1325235_left_root small_1325235_left_fuel small_1325235_left_count small_1325235_left_encoded small_1325235_left_checked

theorem cover_1325235 : CoveredBy scale carrier boxes root_1325235 := by
  apply coveredBy_split_literal root_1325235 small_1325235_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0031.root_1325241 coord0 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_1325235_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0031.cover_1325241
#print axioms cover_1325235

def root_1325234 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1325234_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1325234_right_fuel : Nat := 23
def small_1325234_right_count : Nat := 165
def small_1325234_right_encoded : String := "0F34D0F60CFD9BF90F350D02045489FB1386AD040CFD9BFD0F350CFC000000030C9A87020F8750F90C9A86FC0F878CFD000000030780010800000005128A7D090AD3577710D13CF600000000067ECE7B0000000712EA5904000000020B4D4402000000050000000700000007000000040F8750FD0780010800000007128A7D090AD3577710D13CF600000000067ECE7B0000000712EA5904000000020B4D4402108010F90B4D43FC00000007108010FD0000000600000003000000010000000700000007000000040000000300000001000000070F34D0FC00000005000000030000000213867104000000020CFD9BFD0F350CFC000000030C9A87020F8750F90C9A86FC0F878CFD00000003000000050F8750FD07800108128A41090000000400000005128A7D090AD3577710D13CF600000000022A457B13E201040B4D4402108010F90B4D43FC10804CFD0000000300000005000000060000000110804CF9000000010B4D43FC10804CFD0000000300000005108010FD08C001080000000600000006000000030000000213E1C504000000020B4D4402000000050000000810D100F600000005000000000000000400000003000000010F878CF9000000010C9A86FC0F878CFD00000003000000050F8750FD07800108128A41090000000400000007128A7D090AD3577710D13CF600000000022A457B0000000713E1C504000000020DE7CA020E5FD8F90000000800000001000000080000000700000004000000030F34D0FC0000000500000003000000010F34D10200000001045489FB1386AD040CFD9BFD000000070F34D0FC00000005000000030000000213867104000000020CFD9BFD0F350CFC000000030C9A86FC000000070F8750FD00000007000000030F34D0FC000000050000000300000000"
theorem small_1325234_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1325234_right_root small_1325234_right_fuel small_1325234_right_count small_1325234_right_encoded = true := by
  decide +kernel
theorem small_1325234_right_covered : CoveredBy scale carrier boxes small_1325234_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1325234_right_root small_1325234_right_fuel small_1325234_right_count small_1325234_right_encoded small_1325234_right_checked

theorem cover_1325234 : CoveredBy scale carrier boxes root_1325234 := by
  apply coveredBy_split_literal root_1325234 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0031.root_1325235 small_1325234_right_root coord0 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0031.cover_1325235
  · exact small_1325234_right_covered
#print axioms cover_1325234

def root_1325229 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1325229_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(16244736), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1325229_right_fuel : Nat := 1
def small_1325229_right_count : Nat := 1
def small_1325229_right_encoded : String := "00000004"
theorem small_1325229_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1325229_right_root small_1325229_right_fuel small_1325229_right_count small_1325229_right_encoded = true := by
  decide +kernel
theorem small_1325229_right_covered : CoveredBy scale carrier boxes small_1325229_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1325229_right_root small_1325229_right_fuel small_1325229_right_count small_1325229_right_encoded small_1325229_right_checked

theorem cover_1325229 : CoveredBy scale carrier boxes root_1325229 := by
  apply coveredBy_split_literal root_1325229 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0031.root_1325234 small_1325229_right_root coord4 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0031.cover_1325234
  · exact small_1325229_right_covered
#print axioms cover_1325229

def root_1323627 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1323627 : CoveredBy scale carrier boxes root_1323627 := by
  apply coveredBy_split_literal root_1323627 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0512.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0031.root_1325229 coord4 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0512.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0031.cover_1325229
#print axioms cover_1323627

def root_1323621 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1323621_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1323621_left_fuel : Nat := 1
def small_1323621_left_count : Nat := 1
def small_1323621_left_encoded : String := "00000003"
theorem small_1323621_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1323621_left_root small_1323621_left_fuel small_1323621_left_count small_1323621_left_encoded = true := by
  decide +kernel
theorem small_1323621_left_covered : CoveredBy scale carrier boxes small_1323621_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1323621_left_root small_1323621_left_fuel small_1323621_left_count small_1323621_left_encoded small_1323621_left_checked

theorem cover_1323621 : CoveredBy scale carrier boxes root_1323621 := by
  apply coveredBy_split_literal root_1323621 small_1323621_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0031.root_1323627 coord3 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_1323621_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0031.cover_1323627
#print axioms cover_1323621

def root_1323620 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1323620_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1323620_right_fuel : Nat := 13
def small_1323620_right_count : Nat := 31
def small_1323620_right_encoded : String := "120700FC05000108135D45090000000400000005135D81090CFD9BF70F350CF6000000000CFD9BF90F350D02045489FB1386AD04045489FD1386ACFC000000030C9A86F60000000500000009000000050000000200000005000000010F34D10200000001000000090F34D0F600000005000000000000000400000003"
theorem small_1323620_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1323620_right_root small_1323620_right_fuel small_1323620_right_count small_1323620_right_encoded = true := by
  decide +kernel
theorem small_1323620_right_covered : CoveredBy scale carrier boxes small_1323620_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1323620_right_root small_1323620_right_fuel small_1323620_right_count small_1323620_right_encoded small_1323620_right_checked

theorem cover_1323620 : CoveredBy scale carrier boxes root_1323620 := by
  apply coveredBy_split_literal root_1323620 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0031.root_1323621 small_1323620_right_root coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0031.cover_1323621
  · exact small_1323620_right_covered
#print axioms cover_1323620

def root_1323614 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1323614_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1323614_left_fuel : Nat := 1
def small_1323614_left_count : Nat := 1
def small_1323614_left_encoded : String := "00000002"
theorem small_1323614_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1323614_left_root small_1323614_left_fuel small_1323614_left_count small_1323614_left_encoded = true := by
  decide +kernel
theorem small_1323614_left_covered : CoveredBy scale carrier boxes small_1323614_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1323614_left_root small_1323614_left_fuel small_1323614_left_count small_1323614_left_encoded small_1323614_left_checked

theorem cover_1323614 : CoveredBy scale carrier boxes root_1323614 := by
  apply coveredBy_split_literal root_1323614 small_1323614_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0031.root_1323620 coord2 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_1323614_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0031.cover_1323620
#print axioms cover_1323614

def root_1323258 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1323258_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1323258_left_fuel : Nat := 27
def small_1323258_left_count : Nat := 167
def small_1323258_left_encoded : String := "12073D0408A912FD12073CFC0000000305000108135D4509000000040CFD9BF70F350CF6000000000CFD9BF90F350D020CFD9BFB000000070F34D104000000020CFD9BFD000000070F34D0FC0C9A86F6000000070000000900000003000000010F34D102000000010000000700000007135D81090CFD9BF70F350CF6000000000CFD9BF90F350D020CFD9BFB0F350D040CFD9BFD000000070F34D0FC0000000900000003000000020F34D104000000020CFD9BFD0F350CFC000000030C9A86F60F878CF7000000000C9A87020F8750F90C9A86FC0F878CFD000000030780010800000007128A7D090AD3577B0000000710D10104000000020DE7C9F60000000700000009000000040F8750FD000000070000000300000001000000070F8750F70C9A87020F8750F90C9A86FC0F878CFD000000030780010800000009000000090F8750FD07800108128A41090000000400000007128A7D090AD3577B0000000910D10104000000020B4D43F610804CF7000000000B4D44020000000A000000070000000A0000000400000003000000010F878CF9000000010C9A86FC000000090F8750FD0000000700000003000000000F34D0FC0C9A86F60F878CF700000000000000090000000900000003000000010F34D102000000010CFD9BFB000000070F34D104000000020CFD9BFD00000007000000090F34D0F60CFD9BF90F350D020CFD9BFB000000070F34D104000000020CFD9BFD000000070F34D0FC0000000700000003000000010F34D10200000001000000070000000000000004120700FC05000108135D4509000000040CFD9BF70F350CF600000000000000090F34D0F60000000500000000135D81090CFD9BF70F350CF600000000000000090F34D0F60CFD9BF9000000090000000500000000000000040000000300000002"
theorem small_1323258_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1323258_left_root small_1323258_left_fuel small_1323258_left_count small_1323258_left_encoded = true := by
  decide +kernel
theorem small_1323258_left_covered : CoveredBy scale carrier boxes small_1323258_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1323258_left_root small_1323258_left_fuel small_1323258_left_count small_1323258_left_encoded small_1323258_left_checked

theorem cover_1323258 : CoveredBy scale carrier boxes root_1323258 := by
  apply coveredBy_split_literal root_1323258 small_1323258_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0031.root_1323614 coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_1323258_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0031.cover_1323614
#print axioms cover_1323258

def root_1323253 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1323253_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1323253_right_fuel : Nat := 1
def small_1323253_right_count : Nat := 1
def small_1323253_right_encoded : String := "00000001"
theorem small_1323253_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1323253_right_root small_1323253_right_fuel small_1323253_right_count small_1323253_right_encoded = true := by
  decide +kernel
theorem small_1323253_right_covered : CoveredBy scale carrier boxes small_1323253_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1323253_right_root small_1323253_right_fuel small_1323253_right_count small_1323253_right_encoded small_1323253_right_checked

theorem cover_1323253 : CoveredBy scale carrier boxes root_1323253 := by
  apply coveredBy_split_literal root_1323253 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0031.root_1323258 small_1323253_right_root coord1 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0031.cover_1323258
  · exact small_1323253_right_covered
#print axioms cover_1323253

def root_1323252 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1323252_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1323252_right_fuel : Nat := 26
def small_1323252_right_count : Nat := 187
def small_1323252_right_encoded : String := "120701020000000108A912FB12073D0408A912FD00000007120700FC000000090000000300000002120701040000000208A912FD12073CFC0000000305000108135D4509000000040CFD9BF70F350CF600000000045489F91386AD02045489FB1386AD040CFD9BFD00000007000000090000000213867104000000020CFD9BFD0F350CFC000000030C9A86F6000000070F8750F70C9A86FC000000060F8750FD0000000700000003000000000F34D0FC0000000500000003000000011386710200000001045489FB0000000713867104000000020CFD9BFD00000007000000060F34D0F60000000500000000135D81090CFD9BF70F350CF600000000045489F91386AD02045489FB1386AD040CFD9BFD0F350CFC000000030C9A86F60000000700000009000000090000000213867104000000020CFD9BFD0F350CFC000000030C9A86F60F878CF7000000000C9A86FC0F878CFD000000030780010800000007128A7D09067ECE790000000900000009000000040F8750FD00000007000000030F8750F70C9A86FC0F878CFD00000003000000090F8750FD07800108128A41090000000400000007128A7D09067ECE7912EA9502022A457B0000000913E1C504000000020000000900000001000000090000000400000003000000000F34D0FC0000000900000003000000011386710200000001045489FB1386AD040CFD9BFD00000007000000090000000213867104000000020CFD9BFD0F350CFC000000030C9A86F60F878CF7000000000C9A86FC00000007000000070F8750F70C9A86FC000000090F8750FD07800108000000070000000900000003000000000F34D0FC00000006000000030F34D0F6045489F91386AD02045489FB0000000713867104000000020CFD9BFD000000070F34D0FC0000000500000003000000011386710200000001045489FB0000000713867104000000020CFD9BFD00000007000000050000000000000004120700FC0500010800000005135D81090CFD9BF700000009000000050000000400000003"
theorem small_1323252_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1323252_right_root small_1323252_right_fuel small_1323252_right_count small_1323252_right_encoded = true := by
  decide +kernel
theorem small_1323252_right_covered : CoveredBy scale carrier boxes small_1323252_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1323252_right_root small_1323252_right_fuel small_1323252_right_count small_1323252_right_encoded small_1323252_right_checked

theorem cover_1323252 : CoveredBy scale carrier boxes root_1323252 := by
  apply coveredBy_split_literal root_1323252 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0031.root_1323253 small_1323252_right_root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0031.cover_1323253
  · exact small_1323252_right_covered
#print axioms cover_1323252

def root_1323246 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1323246_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1323246_left_fuel : Nat := 1
def small_1323246_left_count : Nat := 1
def small_1323246_left_encoded : String := "00000000"
theorem small_1323246_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1323246_left_root small_1323246_left_fuel small_1323246_left_count small_1323246_left_encoded = true := by
  decide +kernel
theorem small_1323246_left_covered : CoveredBy scale carrier boxes small_1323246_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1323246_left_root small_1323246_left_fuel small_1323246_left_count small_1323246_left_encoded small_1323246_left_checked

theorem cover_1323246 : CoveredBy scale carrier boxes root_1323246 := by
  apply coveredBy_split_literal root_1323246 small_1323246_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0031.root_1323252 coord0 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_1323246_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0031.cover_1323252
#print axioms cover_1323246

def root_1323245 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1323245_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1323245_right_fuel : Nat := 17
def small_1323245_right_count : Nat := 57
def small_1323245_right_encoded : String := "120700F608A912F912073D0208A912FB12073D0408A912FD00000007120700FC000000050000000300000002120701040000000208A912FD12073CFC0000000305000108135D45090000000400000005135D8109045489F71386ACF6000000000CFD9BF90F350D02045489FB1386AD040CFD9BFD00000007000000050000000200000005000000010F34D1020000000100000007138670F60CFD9BF90F350D0200000005000000010000000500000000000000040000000500000001120701020000000108A912FB00000007120701040000000208A912FD000000070000000500000000"
theorem small_1323245_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1323245_right_root small_1323245_right_fuel small_1323245_right_count small_1323245_right_encoded = true := by
  decide +kernel
theorem small_1323245_right_covered : CoveredBy scale carrier boxes small_1323245_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1323245_right_root small_1323245_right_fuel small_1323245_right_count small_1323245_right_encoded small_1323245_right_checked

theorem cover_1323245 : CoveredBy scale carrier boxes root_1323245 := by
  apply coveredBy_split_literal root_1323245 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0031.root_1323246 small_1323245_right_root coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0031.cover_1323246
  · exact small_1323245_right_covered
#print axioms cover_1323245

def root_1323239 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1323239_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1323239_left_fuel : Nat := 1
def small_1323239_left_count : Nat := 1
def small_1323239_left_encoded : String := "00000004"
theorem small_1323239_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1323239_left_root small_1323239_left_fuel small_1323239_left_count small_1323239_left_encoded = true := by
  decide +kernel
theorem small_1323239_left_covered : CoveredBy scale carrier boxes small_1323239_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1323239_left_root small_1323239_left_fuel small_1323239_left_count small_1323239_left_encoded small_1323239_left_checked

theorem cover_1323239 : CoveredBy scale carrier boxes root_1323239 := by
  apply coveredBy_split_literal root_1323239 small_1323239_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0031.root_1323245 coord4 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_1323239_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0031.cover_1323245
#print axioms cover_1323239

def root_1339318 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1339318_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1339318_right_fuel : Nat := 26
def small_1339318_right_count : Nat := 459
def small_1339318_right_encoded : String := "0F34D0F60CFD9BF90F350D02045489FB1386AD040CFD9BFD0F350CFC000000030CFD9C090F34D108000000040C9A87020F8750F90C9A86FC000000080F8750FD0000000600000003000000010F878CF9000000010C9A86FC000000080F8750FD00000008000000030F350D080C9A87020F8750F90C9A86FC0F878CFD000000030C9A87080F875109000000040AD3577710D13CF600000000067ECE7B12EA95040B4D4402108010F90DE7C9FC0E6014FD000000030B4D4408108011090000000400000007000000080E5FD8FD0B4D44080000000600000006000000030000000110804CF9000000010DE7C9FC000000070E5FD8FD00000007000000030000000212EA5904000000020B4D4402108010F90DE7C9FC000000080E5FD8FD0000000800000003000000010000000810D100F6067ECE7B0000000712EA59040000000200000008000000000F878D090AD3577710D13CF600000000067ECE7B12EA95040B4D4402108010F9000000080000000100000008000000020000000810D100F60000000800000000000000040F8750FD0C9A87080F875109000000040AD3577710D13CF600000000067ECE7B12EA95040B4D440200000006000000070000000212EA5904000000020B4D44020000000610804CF9000000010B4D43FC000000060000000610D100F6067ECE7B0000000712EA5904000000020B4D44020000000600000007000000000F878D090AD3577710D13CF60000000000000006000000060000000400000003000000010F878CF9000000010C9A86FC0F878CFD000000030C9A87080F875109000000040AD3577710D13CF600000000067ECE7B0000000712EA5904000000020DE7CA020E5FD8F9000000080000000100000008000000070F878D090AD3577710D13CF600000000067ECE7B12EA95040DE7CA020000000800000008000000020000000810D100F60000000800000000000000040F8750FD0C9A87080F875109000000040AD3577710D13CF600000000067ECE7B0000000712EA5904000000020DE7CA020E5FD8F90B4D43FC00000007108010FD00000006000000030000000100000007000000070F878D090AD3577710D13CF600000000067ECE7B12EA95040DE7CA02000000060E6014F9000000010B4D43FC0000000600000006000000020000000810D100F6067ECE7B0000000700000008000000000000000400000003000000040F34D0FC0CFD9C090F34D10800000004000000080F350D080C9A87020F8750F90C9A87080F875109000000040AD3577710D13CF600000000067ECE7B12EA9504000000090000000200000005000000050F878D090AD35777000000080000000800000004000000010F878CF9000000010C9A87080F875109000000040AD3577710D13CF6000000000000000910D100F600000005000000000F878D090AD3577700000008000000080000000400000004000000030000000213867104000000020CFD9BFD0F350CFC000000030CFD9C090F34D10800000004000000080F350D080C9A87020F8750F90C9A86FC0F878CFD000000030C9A870800000008000000080F8750FD0C9A87080F875109000000040AD3577710D13CF600000000022A457B13E201040B4D44020000000600000008000000020000000810D100F600000008000000000000000800000003000000010F878CF9000000010C9A86FC0F878CFD000000030C9A870800000008000000080F8750FD0C9A87080F875109000000040AD3577710D13CF600000000022A457B13E201040DE7CA020E5FD8F9000000080000000100000008000000020000000810D100F600000008000000000000000800000003000000040F34D0FC0CFD9C09000000080F350D080C9A87020F8750F90000000800000001000000080000000400000003000000010F34D10200000001045489FB1386AD040CFD9BFD0F350CFC000000030CFD9C090F34D108000000040C9A86FC000000080F8750FD00000008000000030F350D080C9A86FC0F878CFD000000030C9A87080F87510900000004000000070F878D090AD3577710D13CF6000000000AD35779000000080000000910D100F60000000700000000000000040F8750FD0C9A87080F87510900000004000000070F878D090AD3577710D13CF6000000000AD3577910D13D02067ECE7B00000007000000080000000110D101020000000100000007000000070000000400000003000000040F34D0FC0CFD9C09000000090F350D080C9A8708000000090F878D09000000090000000400000004000000030000000213867104000000020CFD9BFD0F350CFC000000030CFD9C090F34D10800000004000000080F350D080C9A86FC0F878CFD000000030C9A87080F875109000000040AD357770000000810D100F60000000800000000000000080F8750FD0C9A87080F875109000000040AD3577710D13CF6000000000AD35779000000080000000A000000070000000800000003000000040F34D0FC0CFD9C09000000080F350D080C9A87080000000800000008000000040000000300000000"
theorem small_1339318_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1339318_right_root small_1339318_right_fuel small_1339318_right_count small_1339318_right_encoded = true := by
  decide +kernel
theorem small_1339318_right_covered : CoveredBy scale carrier boxes small_1339318_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1339318_right_root small_1339318_right_fuel small_1339318_right_count small_1339318_right_encoded small_1339318_right_checked

theorem cover_1339318 : CoveredBy scale carrier boxes root_1339318 := by
  apply coveredBy_split_literal root_1339318 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0519.root small_1339318_right_root coord0 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0519.covered
  · exact small_1339318_right_covered
#print axioms cover_1339318

def root_1339313 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1339313_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1339313_right_fuel : Nat := 1
def small_1339313_right_count : Nat := 1
def small_1339313_right_encoded : String := "00000004"
theorem small_1339313_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1339313_right_root small_1339313_right_fuel small_1339313_right_count small_1339313_right_encoded = true := by
  decide +kernel
theorem small_1339313_right_covered : CoveredBy scale carrier boxes small_1339313_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1339313_right_root small_1339313_right_fuel small_1339313_right_count small_1339313_right_encoded small_1339313_right_checked

theorem cover_1339313 : CoveredBy scale carrier boxes root_1339313 := by
  apply coveredBy_split_literal root_1339313 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0031.root_1339318 small_1339313_right_root coord4 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0031.cover_1339318
  · exact small_1339313_right_covered
#print axioms cover_1339313

def root_1339245 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1339245_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1339245_left_fuel : Nat := 10
def small_1339245_left_count : Nat := 31
def small_1339245_left_encoded : String := "12070108000000040CFD9BF70F350CF6000000000CFD9BF90F350D02045489FB1386AD040CFD9BFD0F350CFC00000003000000050F34D0FC00000008000000030000000200000008000000010F34D10200000001045489FB00000009000000080F34D0F60CFD9BF9000000080F34D102000000010000000800000000"
theorem small_1339245_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1339245_left_root small_1339245_left_fuel small_1339245_left_count small_1339245_left_encoded = true := by
  decide +kernel
theorem small_1339245_left_covered : CoveredBy scale carrier boxes small_1339245_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1339245_left_root small_1339245_left_fuel small_1339245_left_count small_1339245_left_encoded small_1339245_left_checked

theorem cover_1339245 : CoveredBy scale carrier boxes root_1339245 := by
  apply coveredBy_split_literal root_1339245 small_1339245_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0031.root_1339313 coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_1339245_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0031.cover_1339313
#print axioms cover_1339245

def root_1339239 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1339239_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1339239_left_fuel : Nat := 1
def small_1339239_left_count : Nat := 1
def small_1339239_left_encoded : String := "00000003"
theorem small_1339239_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1339239_left_root small_1339239_left_fuel small_1339239_left_count small_1339239_left_encoded = true := by
  decide +kernel
theorem small_1339239_left_covered : CoveredBy scale carrier boxes small_1339239_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1339239_left_root small_1339239_left_fuel small_1339239_left_count small_1339239_left_encoded small_1339239_left_checked

theorem cover_1339239 : CoveredBy scale carrier boxes root_1339239 := by
  apply coveredBy_split_literal root_1339239 small_1339239_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0031.root_1339245 coord3 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_1339239_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0031.cover_1339245
#print axioms cover_1339239

def root_1339238 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1339238_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1339238_right_fuel : Nat := 18
def small_1339238_right_count : Nat := 109
def small_1339238_right_encoded : String := "120700FC08A9130912070108000000040CFD9BF70F350CF600000000000000090F34D0F6000000080000000012073D080CFD9BF70F350CF6000000000CFD9BF90F350D02045489FB1386AD04045489FD1386ACFC000000030CFD9C09000000090F350D08000000090000000400000009000000021386710400000002045489FD1386ACFC000000030CFD9C090F34D10800000004000000080F350D080C9A86F60F878CF7000000000C9A87020F8750F90000000800000001000000080F8750F70C9A87020F8750F90000000900000001000000090000000000000004138670FC0CFD9C09000000090F350D08000000090000000400000003000000010F34D10200000001045489FB000000091386710400000002000000090F34D0F60CFD9BF90F350D02045489FB1386AD04045489FD1386ACFC000000030CFD9C09000000090F350D080C9A8702000000050000000900000004138670FC0000000900000003000000021386710400000002045489FD00000008138670FC0000000800000003000000010F34D10200000001045489FB000000091386710400000002045489FD0000000800000009000000000000000400000003"
theorem small_1339238_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1339238_right_root small_1339238_right_fuel small_1339238_right_count small_1339238_right_encoded = true := by
  decide +kernel
theorem small_1339238_right_covered : CoveredBy scale carrier boxes small_1339238_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1339238_right_root small_1339238_right_fuel small_1339238_right_count small_1339238_right_encoded small_1339238_right_checked

theorem cover_1339238 : CoveredBy scale carrier boxes root_1339238 := by
  apply coveredBy_split_literal root_1339238 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0031.root_1339239 small_1339238_right_root coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0031.cover_1339239
  · exact small_1339238_right_covered
#print axioms cover_1339238

def root_1339232 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1339232_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1339232_left_fuel : Nat := 1
def small_1339232_left_count : Nat := 1
def small_1339232_left_encoded : String := "00000002"
theorem small_1339232_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1339232_left_root small_1339232_left_fuel small_1339232_left_count small_1339232_left_encoded = true := by
  decide +kernel
theorem small_1339232_left_covered : CoveredBy scale carrier boxes small_1339232_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1339232_left_root small_1339232_left_fuel small_1339232_left_count small_1339232_left_encoded small_1339232_left_checked

theorem cover_1339232 : CoveredBy scale carrier boxes root_1339232 := by
  apply coveredBy_split_literal root_1339232 small_1339232_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0031.root_1339238 coord2 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_1339232_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0031.cover_1339238
#print axioms cover_1339232

def root_1338212 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1338212_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1338212_left_fuel : Nat := 30
def small_1338212_left_count : Nat := 471
def small_1338212_left_encoded : String := "12073D0408A912FD12073CFC0000000308A9130912070108000000040CFD9BF70F350CF6000000000CFD9BF90F350D020CFD9BFB000000090F34D104000000020CFD9BFD0000000500000009000000010F34D10200000001000000090F34D0F60CFD9BF90F350D020CFD9BFB0F350D0400000009000000020F34D104000000020CFD9BFD0F350CFC0000000304548A09000000051386AD080C9A870200000006000000080000000400000009000000010F34D10200000001000000090000000012073D080CFD9BF70F350CF6000000000CFD9BF90F350D020CFD9BFB0F350D040CFD9BFD0F350CFC000000030CFD9C090F34D10800000004000000090F350D080C9A86F60F878CF7000000000C9A87020F8750F90C9A8704000000090F878CFB000000020C9A86FC000000090F8750FD0C9A870800000007000000090000000300000001000000070F8750F70000000900000000000000040F34D0FC0000000900000003000000020F34D104000000020CFD9BFD0F350CFC000000030CFD9C090F34D108000000040C9A86F60F878CF7000000000C9A87020F8750F90C9A86FC0F878CFD00000003000000090000000500000001000000090F8750F700000005000000000F350D080C9A86F60F878CF7000000000C9A87020F8750F90C9A86FC0F878CFD000000030C9A87080F875109000000040AD3577B0000000910D10104000000020DE7C9F60E6014F70000000000000009000000090F878D0900000009000000040F8750FD0C9A87080F875109000000040AD3577B10D13D04000000070000000210D10104000000020DE7C9F60E6014F7000000000B4D440200000006000000070E5FD8F70B4D44020000000610804CF90000000100000006000000000F878D090AD3577B00000005000000060000000400000003000000010F878CF9000000010C9A86FC0F878CFD00000003000000090F8750FD0C9A87080F87510900000004000000070F878D090AD3577B0000000510D10104000000020000000900000004000000030F8750F70C9A87020F8750F90C9A86FC0F878CFD00000003000000090F8750FD0C9A87080F875109000000040AD3577B0000000510D1010400000002000000050000000500000003000000010F878CF9000000010C9A86FC000000090F8750FD0C9A870800000009000000050000000300000000000000040F34D0FC0CFD9C09000000090F350D080C9A86F60F878CF70000000000000009000000090000000400000003000000010F34D102000000010CFD9BFB0F350D0400000009000000020F34D104000000020CFD9BFD0F350CFC000000030CFD9C09000000090F350D080C9A86F60F878CF7000000000C9A86FC000000090F8750FD0C9A87080000000700000009000000030000000900000004000000090F34D0F60CFD9BF90F350D020CFD9BFB0F350D040CFD9BFD0F350CFC000000030CFD9C090F34D108000000040C9A87020F8750F90C9A8704000000090000000900000001000000090F350D0800000007000000040F34D0FC0CFD9C09000000090F350D08000000090000000400000003000000020F34D104000000020CFD9BFD0F350CFC000000030CFD9C090F34D108000000040C9A87020F8750F90C9A86FC0F878CFD000000030AD3577710D13CF6000000000000000910D100F60AD3577B0000000600000006000000000F8750FD0000000600000003000000010F878CF9000000010C9A86FC0F878CFD00000003000000090F8750FD0AD3577710D13CF6000000000000000600000006000000030F350D080C9A87020F8750F90C9A86FC0F878CFD000000030C9A87080F87510900000004000000070F878D090AD3577710D13CF6000000000AD3577B0000000910D10104000000020B4D4402108010F900000009000000010000000910D100F60AD3577B0000000710D10104000000020B4D4402108010F900000006000000010000000700000000000000040F8750FD0C9A87080F87510900000004000000070F878D090AD3577710D13CF6000000000AD3577B000000060000000610D100F600000007000000000000000400000003000000010F878CF9000000010C9A86FC0F878CFD000000030C9A8708000000070F878D090AD357770000000900000007000000040F8750FD0000000700000003000000040F34D0FC0CFD9C090F34D10800000004000000090F350D080C9A87020F8750F90C9A8708000000090F878D090000000900000004000000010F878CF900000001000000090000000400000003000000010F34D102000000010CFD9BFB0F350D040CFD9BFD0000000700000009000000020F34D104000000020CFD9BFD0F350CFC000000030CFD9C090F34D108000000040C9A86FC000000090F8750FD0AD357770000000910D100F60000000700000000000000030F350D0800000007000000040F34D0FC00000009000000030000000000000004120700FC08A913090000000912073D080CFD9BF70F350CF6000000000CFD9BF900000009000000090F34D0F60CFD9BF90F350D020CFD9BFB000000090F34D1040000000200000009000000010F34D102000000010000000900000000000000040000000300000002"
theorem small_1338212_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1338212_left_root small_1338212_left_fuel small_1338212_left_count small_1338212_left_encoded = true := by
  decide +kernel
theorem small_1338212_left_covered : CoveredBy scale carrier boxes small_1338212_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1338212_left_root small_1338212_left_fuel small_1338212_left_count small_1338212_left_encoded small_1338212_left_checked

theorem cover_1338212 : CoveredBy scale carrier boxes root_1338212 := by
  apply coveredBy_split_literal root_1338212 small_1338212_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0031.root_1339232 coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_1338212_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0031.cover_1339232
#print axioms cover_1338212

def root_1338207 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1338207_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1338207_right_fuel : Nat := 1
def small_1338207_right_count : Nat := 1
def small_1338207_right_encoded : String := "00000001"
theorem small_1338207_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1338207_right_root small_1338207_right_fuel small_1338207_right_count small_1338207_right_encoded = true := by
  decide +kernel
theorem small_1338207_right_covered : CoveredBy scale carrier boxes small_1338207_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1338207_right_root small_1338207_right_fuel small_1338207_right_count small_1338207_right_encoded small_1338207_right_checked

theorem cover_1338207 : CoveredBy scale carrier boxes root_1338207 := by
  apply coveredBy_split_literal root_1338207 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0031.root_1338212 small_1338207_right_root coord1 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0031.cover_1338212
  · exact small_1338207_right_covered
#print axioms cover_1338207

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0031
