import TaoBundleAssembly0032
import TaoBundleAssembly0033
import TaoBundleChunkBatch0141
import TaoBundleChunkBatch0142
import TaoBundleChunkBatch0143
import TaoBundleChunkBatch0144
import TaoBundleChunkBatch0145
import TaoBundleChunkBatch0146
import TaoBundleChunkBatch0147
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034
def root_1426539 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1426539_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1426539_right_fuel : Nat := 26
def small_1426539_right_count : Nat := 323
def small_1426539_right_encoded : String := "12073CFC0000000308A91309120700FE050000F6135D80F70000000005000102135D44F905000104135D44FB0CFD9C070F34D0FC04548A09138670FE078000F6128A7CF700000000028001020000000713D7ECF90000000102800104000000070000000700000007000000041386ACFE00000004078000F6128A7CF7000000000280010213D7B0F90280010413D7B0FB0AD3578710D100FC00000007000000030000000700000002000000070000000113D7ECF9000000010280010413D7B0FB000000090000000213D7ECFB000000020AD3578710D100FC067ECE8900000007000000050000000300000005128A40F7028001020000000713D7ECF90000000102800104000000090000000700000000000000030F350CFC000000030000000700000002135D80FB000000020CFD9C070F34D0FC04548A09000000071386ACFE00000004078000F6128A7CF700000000028001020000000713D7ECF90000000107800104128A40FB0AD3578710D100FC067ECE8900000007000000050000000300000005000000020000000500000007000000030000000700000001135D80F90000000105000104135D44FB0CFD9C070F34D0FC04548A09138670FE078000F6128A7CF70000000007800102128A40F9028001040000000913D7ECFB000000020AD3578710D100FC022A45890000000700000009000000030000000700000001128A7CF900000001028001040000000913D7ECFB000000020AD3578710D100FC022A458900000009000000090000000300000009128A40F70000000900000000000000041386ACFE00000004078000F6128A7CF70000000007800102128A40F9028001040000000913D7ECFB000000020AD3578710D100FC067ECE8912EA58FE08C000F611FC24F70000000000000005000000050000000400000005000000030000000500000001128A7CF90000000100000005128A40F707800102128A40F900000009000000010000000900000000000000030F350CFC0000000304548A09000000090000000500000002135D80FB000000020CFD9C070F34D0FC04548A09138670FE078000F6128A7CF70000000007800102128A40F907800104128A40FB0AD3578710D100FC022A45890000000700000007000000030000000700000002128A7CFB000000020000000700000001128A7CF90000000107800104128A40FB0AD3578710D100FC022A458913E1C4FE08C000F60000000A11FBE8F700000007000000000000000400000005000000030000000500000002128A7CFB0000000200000005128A40F70780010200000007128A7CF90000000107800104128A40FB0AD3578710D100FC022A45890000000700000005000000030000000500000002128A7CFB00000002000000050000000000000004000000050000000300000005135D44F705000102135D44F905000104135D44FB0CFD9C070F34D0FC000000070000000300000007000000020000000700000001135D80F90000000105000104135D44FB0CFD9C070F34D0FC04548A09000000091386ACFE00000004028000F60000000900000005000000030000000900000002135D80FB000000020CFD9C070F34D0FC04548A0900000007000000050000000300000005000000000000000412073CFE00000004050000F6135D80F70000000005000102135D44F905000104135D44FB0CFD9C070F34D0FC0CFD9C090F34D0FE078000F6128A7CF7000000000000000500000005000000040000000500000003000000050000000200000005000000010000000500000005"
theorem small_1426539_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1426539_right_root small_1426539_right_fuel small_1426539_right_count small_1426539_right_encoded = true := by
  decide +kernel
theorem small_1426539_right_covered : CoveredBy scale carrier boxes small_1426539_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1426539_right_root small_1426539_right_fuel small_1426539_right_count small_1426539_right_encoded small_1426539_right_checked

theorem cover_1426539 : CoveredBy scale carrier boxes root_1426539 := by
  apply coveredBy_split_literal root_1426539 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.root_1426540 small_1426539_right_root coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.cover_1426540
  · exact small_1426539_right_covered
#print axioms cover_1426539

def root_1426534 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1426534_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1426534_right_fuel : Nat := 1
def small_1426534_right_count : Nat := 1
def small_1426534_right_encoded : String := "00000004"
theorem small_1426534_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1426534_right_root small_1426534_right_fuel small_1426534_right_count small_1426534_right_encoded = true := by
  decide +kernel
theorem small_1426534_right_covered : CoveredBy scale carrier boxes small_1426534_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1426534_right_root small_1426534_right_fuel small_1426534_right_count small_1426534_right_encoded small_1426534_right_checked

theorem cover_1426534 : CoveredBy scale carrier boxes root_1426534 := by
  apply coveredBy_split_literal root_1426534 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.root_1426539 small_1426534_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.cover_1426539
  · exact small_1426534_right_covered
#print axioms cover_1426534

def root_1426533 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1426533_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1426533_right_fuel : Nat := 4
def small_1426533_right_count : Nat := 7
def small_1426533_right_encoded : String := "1151E9090000000408A91307120700FC000000050000000300000005"
theorem small_1426533_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1426533_right_root small_1426533_right_fuel small_1426533_right_count small_1426533_right_encoded = true := by
  decide +kernel
theorem small_1426533_right_covered : CoveredBy scale carrier boxes small_1426533_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1426533_right_root small_1426533_right_fuel small_1426533_right_count small_1426533_right_encoded small_1426533_right_checked

theorem cover_1426533 : CoveredBy scale carrier boxes root_1426533 := by
  apply coveredBy_split_literal root_1426533 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.root_1426534 small_1426533_right_root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.cover_1426534
  · exact small_1426533_right_covered
#print axioms cover_1426533

def root_1426528 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1426528_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1426528_right_fuel : Nat := 1
def small_1426528_right_count : Nat := 1
def small_1426528_right_encoded : String := "00000003"
theorem small_1426528_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1426528_right_root small_1426528_right_fuel small_1426528_right_count small_1426528_right_encoded = true := by
  decide +kernel
theorem small_1426528_right_covered : CoveredBy scale carrier boxes small_1426528_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1426528_right_root small_1426528_right_fuel small_1426528_right_count small_1426528_right_encoded small_1426528_right_checked

theorem cover_1426528 : CoveredBy scale carrier boxes root_1426528 := by
  apply coveredBy_split_literal root_1426528 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.root_1426533 small_1426528_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.cover_1426533
  · exact small_1426528_right_covered
#print axioms cover_1426528

def root_1426527 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1426527_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1426527_right_fuel : Nat := 6
def small_1426527_right_count : Nat := 13
def small_1426527_right_encoded : String := "1151E907000000030A0000FE1152250908A91309120700FE000000050000000400000005000000041151E9090000000400000005"
theorem small_1426527_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1426527_right_root small_1426527_right_fuel small_1426527_right_count small_1426527_right_encoded = true := by
  decide +kernel
theorem small_1426527_right_covered : CoveredBy scale carrier boxes small_1426527_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1426527_right_root small_1426527_right_fuel small_1426527_right_count small_1426527_right_encoded small_1426527_right_checked

theorem cover_1426527 : CoveredBy scale carrier boxes root_1426527 := by
  apply coveredBy_split_literal root_1426527 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.root_1426528 small_1426527_right_root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.cover_1426528
  · exact small_1426527_right_covered
#print axioms cover_1426527

def root_1426522 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1426522_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1426522_right_fuel : Nat := 1
def small_1426522_right_count : Nat := 1
def small_1426522_right_encoded : String := "00000002"
theorem small_1426522_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1426522_right_root small_1426522_right_fuel small_1426522_right_count small_1426522_right_encoded = true := by
  decide +kernel
theorem small_1426522_right_covered : CoveredBy scale carrier boxes small_1426522_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1426522_right_root small_1426522_right_fuel small_1426522_right_count small_1426522_right_encoded small_1426522_right_checked

theorem cover_1426522 : CoveredBy scale carrier boxes root_1426522 := by
  apply coveredBy_split_literal root_1426522 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.root_1426527 small_1426522_right_root coord2 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.cover_1426527
  · exact small_1426522_right_covered
#print axioms cover_1426522

def root_1426521 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1426521 : CoveredBy scale carrier boxes root_1426521 := by
  apply coveredBy_split_literal root_1426521 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.root_1426522 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0563.root coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.cover_1426522
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0563.covered
#print axioms cover_1426521

def root_1426516 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1426516_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1426516_right_fuel : Nat := 1
def small_1426516_right_count : Nat := 1
def small_1426516_right_encoded : String := "00000001"
theorem small_1426516_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1426516_right_root small_1426516_right_fuel small_1426516_right_count small_1426516_right_encoded = true := by
  decide +kernel
theorem small_1426516_right_covered : CoveredBy scale carrier boxes small_1426516_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1426516_right_root small_1426516_right_fuel small_1426516_right_count small_1426516_right_encoded small_1426516_right_checked

theorem cover_1426516 : CoveredBy scale carrier boxes root_1426516 := by
  apply coveredBy_split_literal root_1426516 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.root_1426521 small_1426516_right_root coord1 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.cover_1426521
  · exact small_1426516_right_covered
#print axioms cover_1426516

def root_1426515 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1426515 : CoveredBy scale carrier boxes root_1426515 := by
  apply coveredBy_split_literal root_1426515 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.root_1426516 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0564.root coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.cover_1426516
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0564.covered
#print axioms cover_1426515

def root_1426510 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1426510_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1426510_right_fuel : Nat := 1
def small_1426510_right_count : Nat := 1
def small_1426510_right_encoded : String := "00000000"
theorem small_1426510_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1426510_right_root small_1426510_right_fuel small_1426510_right_count small_1426510_right_encoded = true := by
  decide +kernel
theorem small_1426510_right_covered : CoveredBy scale carrier boxes small_1426510_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1426510_right_root small_1426510_right_fuel small_1426510_right_count small_1426510_right_encoded small_1426510_right_checked

theorem cover_1426510 : CoveredBy scale carrier boxes root_1426510 := by
  apply coveredBy_split_literal root_1426510 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.root_1426515 small_1426510_right_root coord0 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.cover_1426515
  · exact small_1426510_right_covered
#print axioms cover_1426510

def root_1401024 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1401024 : CoveredBy scale carrier boxes root_1401024 := by
  apply coveredBy_split_literal root_1401024 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.root_1401025 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.root_1426510 coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.cover_1401025
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.cover_1426510
#print axioms cover_1401024

def root_1363936 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1363936 : CoveredBy scale carrier boxes root_1363936 := by
  apply coveredBy_split_literal root_1363936 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.root_1363937 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.root_1401024 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0033.cover_1363937
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.cover_1401024
#print axioms cover_1363936

def root_1451274 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1451274_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1451274_right_fuel : Nat := 24
def small_1451274_right_count : Nat := 343
def small_1451274_right_encoded : String := "1151E8F70A0001021151E8F90A0001041151E8FB0A0000FC115225070A0001081151E8FF0000000500000004115224FF0000000408A91307120700FC08A912FF00000005000000090000000312073CFC0000000308A912FF0000000712070108000000040000000A000000031151E907000000030A00010800000007115224FF000000040000000700000002115224FB000000020A0000FC115225070A0001081151E8FF0000000700000004115224FF0000000408A912FB12073D0408A91307120700FC000000090000000312073CFC0000000308A912FF12073D0800000007000000040000000700000002120701040000000208A913070000000912073CFC0000000308A912FF0000000900000009000000031151E907000000030A0001081151E8FF08A912FB0000000712070104000000020000000800000004115224FF0000000408A912FB12073D0408A912FF12073D08050000F600000007135D44F70000000700000000000000040000000700000002120701040000000208A912FF12073D08050000F600000008135D44F70500010200000009135D80F900000001050000FC000000070000000500000000000000041207010800000004050000F6000000070000000900000001115224F9000000010A0001041151E8FB0A0000FC115225070A0001081151E8FF08A912F912073D0208A91307000000050000000700000001120701020000000108A91307120700FC050000F6135D80F7000000000500010400000006135D80FB0000000205000108135D44FF00000007000000040000000600000007000000030000000700000004115224FF0000000408A912F912073D0208A91307120700FC08A912FF12073D08050000F6135D80F700000000050001040000000600000007135D44F705000104000000060000000500000000000000041207010800000004050000F600000009135D44F700000009000000000000000312073CFC0000000308A912FF12073D08050000F600000007000000070000000412070108000000040000000A00000001120701020000000108A91307120700FC08A912FF12073D08050000F60000000A000000070000000412070108000000040000000A000000030000000A000000031151E907000000030A0001081151E8FF00000007000000040000000700000002115224FB000000020A0000FC115225070A0001081151E8FF08A912F912073D0208A912FB12073D0400000007000000020000000700000001120701020000000108A912FB12073D0408A91307120700FC050000F6135D80F70000000005000108135D44FF045489F90000000713867102000000010CFD9BFB0F350D0400000007000000020000000700000004000000070000000700000003000000070000000212070104000000020000000700000004115224FF0000000408A912F912073D0208A912FB12073D0408A91307120700FC08A912FF00000007000000090000000312073CFC0000000308A912FF000000071207010800000004000000070000000212070104000000020000000700000001120701020000000108A912FB12073D0408A91307120700FC08A912FF00000007120701080000000400000007000000030000000700000002120701040000000200000007000000031151E907000000030A0001081151E8FF08A912F912073D0208A912FB000000071207010400000002050000F6000000070000000700000001120701020000000108A912FB12073D0400000007000000021207010400000002050000F6135D80F700000000000000070000000700000004115224FF0000000408A912F912073D0208A912FB00000007120701040000000208A912FF00000007000000070000000112070102000000010000000700000000"
theorem small_1451274_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1451274_right_root small_1451274_right_fuel small_1451274_right_count small_1451274_right_encoded = true := by
  decide +kernel
theorem small_1451274_right_covered : CoveredBy scale carrier boxes small_1451274_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1451274_right_root small_1451274_right_fuel small_1451274_right_count small_1451274_right_encoded small_1451274_right_checked

theorem cover_1451274 : CoveredBy scale carrier boxes root_1451274 := by
  apply coveredBy_split_literal root_1451274 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0565.root small_1451274_right_root coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0565.covered
  · exact small_1451274_right_covered
#print axioms cover_1451274

def root_1454463 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1454463 : CoveredBy scale carrier boxes root_1454463 := by
  apply coveredBy_split_literal root_1454463 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0566.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0567.root coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0566.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0567.covered
#print axioms cover_1454463

def root_1451273 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1451273 : CoveredBy scale carrier boxes root_1451273 := by
  apply coveredBy_split_literal root_1451273 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.root_1451274 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.root_1454463 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.cover_1451274
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.cover_1454463
#print axioms cover_1451273

def root_1363935 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1363935 : CoveredBy scale carrier boxes root_1363935 := by
  apply coveredBy_split_literal root_1363935 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.root_1363936 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.root_1451273 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.cover_1363936
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.cover_1451273
#print axioms cover_1363935

def root_1267587 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1267587 : CoveredBy scale carrier boxes root_1267587 := by
  apply coveredBy_split_literal root_1267587 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0032.root_1267588 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.root_1363935 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0032.cover_1267588
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.cover_1363935
#print axioms cover_1267587

def root_1458602 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1458602 : CoveredBy scale carrier boxes root_1458602 := by
  apply coveredBy_split_literal root_1458602 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0568.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0569.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0568.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0569.covered
#print axioms cover_1458602

def root_1464694 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1464694 : CoveredBy scale carrier boxes root_1464694 := by
  apply coveredBy_split_literal root_1464694 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0570.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0571.root coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0570.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0571.covered
#print axioms cover_1464694

def root_1464688 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1464688_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1464688_left_fuel : Nat := 1
def small_1464688_left_count : Nat := 1
def small_1464688_left_encoded : String := "00000000"
theorem small_1464688_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1464688_left_root small_1464688_left_fuel small_1464688_left_count small_1464688_left_encoded = true := by
  decide +kernel
theorem small_1464688_left_covered : CoveredBy scale carrier boxes small_1464688_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1464688_left_root small_1464688_left_fuel small_1464688_left_count small_1464688_left_encoded small_1464688_left_checked

theorem cover_1464688 : CoveredBy scale carrier boxes root_1464688 := by
  apply coveredBy_split_literal root_1464688 small_1464688_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.root_1464694 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_1464688_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.cover_1464694
#print axioms cover_1464688

def root_1464687 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1464687_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1464687_right_fuel : Nat := 22
def small_1464687_right_count : Nat := 323
def small_1464687_right_encoded : String := "1151E8F70A0001021151E8F90A0001041151E8FB0A0001061151E8FD0000000500000003115224FD000000030A000108000000081152250908A912FD00000005000000080000000400000002115224FB000000020A0001061151E8FD0A0001081151E9090000000408A912FB000000081207010400000002050000F6135D80F7000000000500010200000008135D80F90000000100000008000000081152250908A912FB000000051207010400000002000000050000000400000003115224FD000000030A0001081151E90900000004000000081152250908A912FB12073D0408A912FD00000005120701060000000300000005000000021207010400000002000000050000000400000001115224F9000000010A0001041151E8FB0A0001061151E8FD0A0001081151E9090000000408A912F912073D02050000F6135D80F70000000005000104135D44FB0000000700000002135D80FB00000002050001060000000800000005135D44F70000000500000000000000011207010200000001000000071152250908A912F9000000051207010200000001000000050000000400000003115224FD000000030A0001081151E9090000000408A912F912073D0208A912FD12073D06050000F6135D80F70000000005000104135D44FB000000080000000200000008135D44F705000104135D44FB00000005000000020000000500000000000000030000000800000001120701020000000108A912FD12073D06050000F6135D80F70000000005000104135D44FB05000108000000070000000500000002135D80FB00000002050001080000000800000005135D44F70000000500000000000000031207010600000003050000F600000008000000051152250908A912F912073D0208A912FD00000005120701060000000300000005000000011207010200000001000000050000000400000002115224FB000000020A0001061151E8FD0A0001081151E9090000000408A912F912073D0208A912FB12073D04050000F6135D80F70000000005000106135D44FD0500010800000008135D8109000000050000000400000003135D80FD00000003050001080000000800000005135D44F705000106135D44FD00000005000000030000000500000000000000021207010400000002050000F6135D80F70000000005000106135D44FD05000108135D4509000000040CFD9BF90F350D020000000800000001000000080000000500000003135D80FD00000003050001080000000800000005135D44F7000000050000000000000001120701020000000108A912FB12073D04050000F6135D80F70000000005000106135D44FD05000108000000070000000500000003135D80FD00000003050001080000000800000005135D44F70000000500000000000000021207010400000002050000F6135D80F70000000005000106135D44FD05000108135D450900000004045489F9000000050000000A000000050000000300000005000000051152250908A912F912073D0208A912FB00000005120701040000000200000005000000011207010200000001000000050000000400000003115224FD000000030A0001081151E9090000000408A912F912073D0208A912FB12073D0408A912FD12073D06050000F60000000800000005000000030000000800000002120701040000000208A912FD000000050000000800000001120701020000000108A912FB12073D0408A912FD0000000500000008000000021207010400000002000000050000000500000000"
theorem small_1464687_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1464687_right_root small_1464687_right_fuel small_1464687_right_count small_1464687_right_encoded = true := by
  decide +kernel
theorem small_1464687_right_covered : CoveredBy scale carrier boxes small_1464687_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1464687_right_root small_1464687_right_fuel small_1464687_right_count small_1464687_right_encoded small_1464687_right_checked

theorem cover_1464687 : CoveredBy scale carrier boxes root_1464687 := by
  apply coveredBy_split_literal root_1464687 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.root_1464688 small_1464687_right_root coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.cover_1464688
  · exact small_1464687_right_covered
#print axioms cover_1464687

def root_1463649 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1463649_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1463649_left_fuel : Nat := 21
def small_1463649_left_count : Nat := 473
def small_1463649_left_encoded : String := "0A0000F6115224F7000000000A0001021151E8F90A0001041151E8FB0A0001061151E8FD0000000500000003115224FD000000030A0001081151E8FF0000000500000004115224FF0000000408A912F712073CF60000000008A912FD00000005120701060000000300000005120700F608A912FD12073D0608A912FF0000000512070108000000040000000500000003120701060000000308A912FF000000051207010800000004000000050000000000000002115224FB000000020A0001061151E8FD0A0001081151E8FF0000000500000004115224FF0000000408A912F712073CF60000000008A912FB00000005120701040000000200000005120700F608A912FB12073D0408A912FF00000005120701080000000400000005000000020000000A0000000000000003115224FD000000030A0001081151E8FF08A912F712073CF60000000008A912FB00000005120701040000000200000005120700F608A912FB12073D0408A912FD000000051207010600000003000000050000000212070104000000020000000A0000000000000004115224FF0000000408A912F712073CF60000000008A912FB12073D0408A912FD0000000512070106000000030000000500000002120701040000000208A912FD00000005120701060000000300000005120700F608A912FB12073D0408A912FD12073D0608A912FF000000050000000A00000003120701060000000308A912FF0000000512070108000000040000000500000002120701040000000208A912FD0000000A1207010600000003000000050000000000000001115224F9000000010A0001041151E8FB0A0001061151E8FD0A0001081151E8FF0000000500000004115224FF0000000408A912F712073CF60000000008A912F900000005120701020000000100000005120700F608A912F912073D0208A912FF00000005120701080000000400000005000000011207010200000001000000090000000000000003115224FD000000030A0001081151E8FF08A912F712073CF60000000008A912F900000005120701020000000100000005120700F608A912F912073D0208A912FD0000000512070106000000030000000500000001000000090000000000000004115224FF0000000408A912F712073CF60000000008A912F912073D0208A912FD0000000512070106000000030000000500000001120701020000000108A912FD00000005120701060000000300000005120700F608A912F912073D0208A912FD12073D0608A912FF0000000512070108000000040000000500000003120701060000000308A912FF0000000512070108000000040000000500000001120701020000000108A912FD12073D0608A912FF0000000512070108000000040000000500000003000000090000000000000002115224FB000000020A0001061151E8FD0A0001081151E8FF08A912F712073CF60000000008A912F900000005120701020000000100000005120700F6000000060000000000000004115224FF0000000408A912F712073CF60000000008A912F912073D0208A912FB0000000512070104000000020000000500000001120701020000000108A912FB0000000500000006120700F608A912F912073D0208A912FB12073D0408A912FF000000050000000A0000000212070104000000020000000A00000001120701020000000108A912FB12073D0408A912FF0000000512070108000000040000000500000002000000060000000000000003115224FD000000030A0001081151E8FF08A912F712073CF60000000008A912F912073D0208A912FB0000000512070104000000020000000500000001120701020000000108A912FB0000000500000006120700F608A912F912073D0208A912FB12073D0408A912FD000000050000000900000002120701040000000208A912FD0000000512070106000000030000000500000001120701020000000108A912FB00000009000000060000000000000004115224FF0000000408A912F712073CF60000000008A912F912073D0208A912FB0000000512070104000000020000000500000001120701020000000100000005120700F608A912F912073D0208A912FB12073D0408A912FD12073D0608A912FF000000051207010800000004000000050000000312070106000000030000000500000002120701040000000208A912FD0000000512070106000000030000000500000001120701020000000108A912FB12073D0408A912FD0000000512070106000000030000000500000002120701040000000200000005000000001151E8F70A0001021151E8F90A0001041151E8FB0000000500000002115224FB000000020A0001061151E8FD0000000500000003115224FD000000030A0001081151E8FF00000005000000040000000500000001115224F9000000010A0001041151E8FB0A0001061151E8FD0000000500000003115224FD000000030A0001081151E8FF00000005000000040000000500000002115224FB000000020A0001061151E8FD0A0001081151E8FF00000005000000040000000500000003115224FD000000030A0001081151E8FF00000005000000040000000500000000"
theorem small_1463649_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1463649_left_root small_1463649_left_fuel small_1463649_left_count small_1463649_left_encoded = true := by
  decide +kernel
theorem small_1463649_left_covered : CoveredBy scale carrier boxes small_1463649_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1463649_left_root small_1463649_left_fuel small_1463649_left_count small_1463649_left_encoded small_1463649_left_checked

theorem cover_1463649 : CoveredBy scale carrier boxes root_1463649 := by
  apply coveredBy_split_literal root_1463649 small_1463649_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.root_1464687 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact small_1463649_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.cover_1464687
#print axioms cover_1463649

def root_1458601 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1458601 : CoveredBy scale carrier boxes root_1458601 := by
  apply coveredBy_split_literal root_1458601 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.root_1458602 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.root_1463649 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.cover_1458602
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.cover_1463649
#print axioms cover_1458601

def root_1470832 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1470832 : CoveredBy scale carrier boxes root_1470832 := by
  apply coveredBy_split_literal root_1470832 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0573.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0574.root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0573.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0574.covered
#print axioms cover_1470832

def root_1470826 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1470826_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1470826_left_fuel : Nat := 1
def small_1470826_left_count : Nat := 1
def small_1470826_left_encoded : String := "00000003"
theorem small_1470826_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1470826_left_root small_1470826_left_fuel small_1470826_left_count small_1470826_left_encoded = true := by
  decide +kernel
theorem small_1470826_left_covered : CoveredBy scale carrier boxes small_1470826_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1470826_left_root small_1470826_left_fuel small_1470826_left_count small_1470826_left_encoded small_1470826_left_checked

theorem cover_1470826 : CoveredBy scale carrier boxes root_1470826 := by
  apply coveredBy_split_literal root_1470826 small_1470826_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.root_1470832 coord3 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_1470826_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.cover_1470832
#print axioms cover_1470826

def root_1474830 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1474830 : CoveredBy scale carrier boxes root_1474830 := by
  apply coveredBy_split_literal root_1474830 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0575.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0576.root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0575.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0576.covered
#print axioms cover_1474830

def root_1474824 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1474824_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1474824_left_fuel : Nat := 1
def small_1474824_left_count : Nat := 1
def small_1474824_left_encoded : String := "00000000"
theorem small_1474824_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1474824_left_root small_1474824_left_fuel small_1474824_left_count small_1474824_left_encoded = true := by
  decide +kernel
theorem small_1474824_left_covered : CoveredBy scale carrier boxes small_1474824_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1474824_left_root small_1474824_left_fuel small_1474824_left_count small_1474824_left_encoded small_1474824_left_checked

theorem cover_1474824 : CoveredBy scale carrier boxes root_1474824 := by
  apply coveredBy_split_literal root_1474824 small_1474824_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.root_1474830 coord0 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_1474824_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.cover_1474830
#print axioms cover_1474824

def root_1474823 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1474823 : CoveredBy scale carrier boxes root_1474823 := by
  apply coveredBy_split_literal root_1474823 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.root_1474824 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0577.root coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.cover_1474824
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0577.covered
#print axioms cover_1474823

def root_1474817 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1474817_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1474817_left_fuel : Nat := 1
def small_1474817_left_count : Nat := 1
def small_1474817_left_encoded : String := "00000004"
theorem small_1474817_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1474817_left_root small_1474817_left_fuel small_1474817_left_count small_1474817_left_encoded = true := by
  decide +kernel
theorem small_1474817_left_covered : CoveredBy scale carrier boxes small_1474817_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1474817_left_root small_1474817_left_fuel small_1474817_left_count small_1474817_left_encoded small_1474817_left_checked

theorem cover_1474817 : CoveredBy scale carrier boxes root_1474817 := by
  apply coveredBy_split_literal root_1474817 small_1474817_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.root_1474823 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_1474817_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.cover_1474823
#print axioms cover_1474817

def root_1474816 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1474816 : CoveredBy scale carrier boxes root_1474816 := by
  apply coveredBy_split_literal root_1474816 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.root_1474817 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0578.root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.cover_1474817
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0578.covered
#print axioms cover_1474816

def root_1474811 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1474811_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1474811_right_fuel : Nat := 1
def small_1474811_right_count : Nat := 1
def small_1474811_right_encoded : String := "00000003"
theorem small_1474811_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1474811_right_root small_1474811_right_fuel small_1474811_right_count small_1474811_right_encoded = true := by
  decide +kernel
theorem small_1474811_right_covered : CoveredBy scale carrier boxes small_1474811_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1474811_right_root small_1474811_right_fuel small_1474811_right_count small_1474811_right_encoded small_1474811_right_checked

theorem cover_1474811 : CoveredBy scale carrier boxes root_1474811 := by
  apply coveredBy_split_literal root_1474811 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.root_1474816 small_1474811_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.cover_1474816
  · exact small_1474811_right_covered
#print axioms cover_1474811

def root_1470825 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1470825 : CoveredBy scale carrier boxes root_1470825 := by
  apply coveredBy_split_literal root_1470825 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.root_1470826 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.root_1474811 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.cover_1470826
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.cover_1474811
#print axioms cover_1470825

def root_1470820 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1470820_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1470820_right_fuel : Nat := 1
def small_1470820_right_count : Nat := 1
def small_1470820_right_encoded : String := "00000002"
theorem small_1470820_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1470820_right_root small_1470820_right_fuel small_1470820_right_count small_1470820_right_encoded = true := by
  decide +kernel
theorem small_1470820_right_covered : CoveredBy scale carrier boxes small_1470820_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1470820_right_root small_1470820_right_fuel small_1470820_right_count small_1470820_right_encoded small_1470820_right_checked

theorem cover_1470820 : CoveredBy scale carrier boxes root_1470820 := by
  apply coveredBy_split_literal root_1470820 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.root_1470825 small_1470820_right_root coord2 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.cover_1470825
  · exact small_1470820_right_covered
#print axioms cover_1470820

def root_1489457 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16678144), (16777216)⟩, ⟨(-1816224), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(15552512), (16244736)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1489457 : CoveredBy scale carrier boxes root_1489457 := by
  apply coveredBy_split_literal root_1489457 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0583.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0584.root coord0 false (-9480640)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0583.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0584.covered
#print axioms cover_1489457

def root_1489451 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-1816224), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(15552512), (16244736)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1489451_left_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16378880), (16678144)⟩, ⟨(-1816224), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(15552512), (16244736)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1489451_left_fuel : Nat := 1
def small_1489451_left_count : Nat := 1
def small_1489451_left_encoded : String := "00000001"
theorem small_1489451_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1489451_left_root small_1489451_left_fuel small_1489451_left_count small_1489451_left_encoded = true := by
  decide +kernel
theorem small_1489451_left_covered : CoveredBy scale carrier boxes small_1489451_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1489451_left_root small_1489451_left_fuel small_1489451_left_count small_1489451_left_encoded small_1489451_left_checked

theorem cover_1489451 : CoveredBy scale carrier boxes root_1489451 := by
  apply coveredBy_split_literal root_1489451 small_1489451_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.root_1489457 coord1 false (16678144)
  · decide +kernel
  · decide +kernel
  · exact small_1489451_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.cover_1489457
#print axioms cover_1489451

def root_1488503 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(15552512), (16244736)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1488503_left_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (-1816224)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(15552512), (16244736)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1488503_left_fuel : Nat := 24
def small_1488503_left_count : Nat := 447
def small_1488503_left_encoded : String := "13E201020B4D43F610804CF7000000000DE7CA040E5FD8FB0B4D43FE10804CFF000000040640010612FF710700000003033F67B90000000813BBF502000000010BF3E576100928F700000000000000051008ECF70D4128840EFA10FB0000000900000002000000080000000012FFAD07033F67B913BC31020BF3E576100928F700000000000000081008ECF70000000A000000000000000113BBF502000000010BF3E576100928F7000000000D4128840EFA10FB0BF3E57E100928FF00000004000000051008ECFF06E0010612C7E507000000030000000812C8210702B4D69900000008000000070000000300000004000000020EFA4CFB000000020BF3E57E000000081008ECFF00000008000000041008ECF70D4128840EFA10FB0BF3E57E000000091008ECFF0000000900000004000000020EFA4CFB000000020BF3E57E0000000A1008ECFF06E001060000000A0000000A000000040000000000000003108010FF0640010612FF710700000003033F67B90000000813BBF502000000010BF3E576000000081008ECF70D4128840EFA10FB0AA6A27E10EDACFF0000000405A001060000000813317107000000080000000310ED70FF000000080000000400000002000000080000000012FFAD07033F67B913BC31020BF3E576100928F700000000000000081008ECF70D4128840EFA10FB0AA6A27E00000009000000060000000200000008000000000000000113BBF502000000010BF3E576100928F7000000000D4128840EFA10FB0AA6A27E10EDACFF0000000406E00106000000080000000600000006000000020EFA4CFB00000002000000081008ECF70D4128840EFA10FB0AA6A27E10EDACFF0000000406E0010612C7E5070000000302B4D69900000006000000060000000600000006000000020EFA4CFB000000020AA6A27E10EDACFF0000000406E0010612C7E507000000030000000812C8210702B4D6990000000813D0D102000000010BA094B6104604F70000000000000006000000060000000310ED70FF06E00106000000080000000600000004000000000000000300000004000000020E6014FB000000020B4D43FE10804CFF00000004064001060000000812FFAD07033F67B90000000813BBF502000000010DAED87B0E9661040BF3E576000000080000000A000000020000000A00000003108010FF064001060000000812FFAD07033F67B90000000813BBF502000000010DAED87B0E9661040BF3E576000000081008ECF70AA6A27E00000008000000080000000000000002000000080000000300000004108010F70DE7CA040E5FD8FB0B4D43FE10804CFF000000040640010612FF710700000003033F67B90000000913BBF502000000010AA6A27610EDACF7000000000D412884000000090EFA4CFB000000020000000A0000000912FFAD07033F67B90000000913BBF502000000010AA6A27610EDACF7000000000D412884000000090000000A0000000900000003108010FF0640010612FF710700000003033F67B913BC31020AA6A27610EDACF7000000000D4128840000000900000008000000090000000113BBF502000000010AA6A27610EDACF7000000000D4128840EFA10FB0AA6A27E0000000910ED70FF0000000900000004000000020EFA4CFB000000020AA6A27E10EDACFF0000000405A00106000000081331710702B4D6990000000813D0D102000000010AF9F33600000008000000090000000310ED70FF000000080000000410ED70F70D412884000000090EFA4CFB000000020AA6A27E0000000910ED70FF00000009000000040000000012FFAD07033F67B913BC31020AA6A27610EDACF7000000000D4128840EFA10FB00000009000000020EFA4CFB000000020AA6A27E0000000910ED70FF000000050000000410ED70F700000009000000000000000113BBF502000000010AA6A27610EDACF7000000000D4128840EFA10FB0AA6A27E0000000910ED70FF0000000600000004000000020EFA4CFB000000020AA6A27E10EDACFF0000000406E001060000000A12C821070000000A0000000310ED70FF06E0010612C7E5070000000302B4D6990000000600000006000000060000000410ED70F70D412884000000090EFA4CFB000000020AA6A27E0000000910ED70FF0000000500000004000000000000000300000004000000020E6014FB000000020B4D43FE10804CFF00000004064001060000000A0000000A108010FF0640010612FF710700000003033F67B90000000813BBF502000000010DAED87B0E9661040AA6A2760000000810ED70F70000000A00000000000000020E962504000000020000000812FFAD07033F67B90000000A13BBF502000000010DAED87B0E9661040AA6A27610EDACF7000000000AA6A27E0000000A10ED70FF06E001060000000800000005000000040000000A000000020E962504000000020000000A00000003000000040000000000000001"
theorem small_1488503_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1488503_left_root small_1488503_left_fuel small_1488503_left_count small_1488503_left_encoded = true := by
  decide +kernel
theorem small_1488503_left_covered : CoveredBy scale carrier boxes small_1488503_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1488503_left_root small_1488503_left_fuel small_1488503_left_count small_1488503_left_encoded small_1488503_left_checked

theorem cover_1488503 : CoveredBy scale carrier boxes root_1488503 := by
  apply coveredBy_split_literal root_1488503 small_1488503_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.root_1489451 coord1 true (-1816224)
  · decide +kernel
  · decide +kernel
  · exact small_1488503_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.cover_1489451
#print axioms cover_1488503

def root_1488497 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1488497_left_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(14529024), (15552512)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1488497_left_fuel : Nat := 1
def small_1488497_left_count : Nat := 1
def small_1488497_left_encoded : String := "00000003"
theorem small_1488497_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1488497_left_root small_1488497_left_fuel small_1488497_left_count small_1488497_left_encoded = true := by
  decide +kernel
theorem small_1488497_left_covered : CoveredBy scale carrier boxes small_1488497_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1488497_left_root small_1488497_left_fuel small_1488497_left_count small_1488497_left_encoded small_1488497_left_checked

theorem cover_1488497 : CoveredBy scale carrier boxes root_1488497 := by
  apply coveredBy_split_literal root_1488497 small_1488497_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.root_1488503 coord3 true (15552512)
  · decide +kernel
  · decide +kernel
  · exact small_1488497_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.cover_1488503
#print axioms cover_1488497

def root_1488496 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1488496 : CoveredBy scale carrier boxes root_1488496 := by
  apply coveredBy_split_literal root_1488496 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.root_1488497 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0585.root coord3 false (6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.cover_1488497
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0585.covered
#print axioms cover_1488496

def root_1488491 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1488491_right_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-13026304), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1488491_right_fuel : Nat := 1
def small_1488491_right_count : Nat := 1
def small_1488491_right_encoded : String := "00000004"
theorem small_1488491_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1488491_right_root small_1488491_right_fuel small_1488491_right_count small_1488491_right_encoded = true := by
  decide +kernel
theorem small_1488491_right_covered : CoveredBy scale carrier boxes small_1488491_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1488491_right_root small_1488491_right_fuel small_1488491_right_count small_1488491_right_encoded small_1488491_right_checked

theorem cover_1488491 : CoveredBy scale carrier boxes root_1488491 := by
  apply coveredBy_split_literal root_1488491 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.root_1488496 small_1488491_right_root coord4 true (-13026304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.cover_1488496
  · exact small_1488491_right_covered
#print axioms cover_1488491

def root_1488081 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1488081_left_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-12756736), (-10572672)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1488081_left_fuel : Nat := 18
def small_1488081_left_count : Nat := 193
def small_1488081_left_encoded : String := "0F878CFF0000000407800106128A410700000003022A457913E201020B4D43F610804CF7000000000DE7CA040E5FD8FB0DE7C9FE0E6014FF00000004000000050E5FD8FF0640010612FF7107000000030000000512FFAD07033F67B90000000A13BBF502000000010BF3E576000000050000000A0000000300000004000000020E6014FB000000020000000A108010F70DE7CA040E5FD8FB0DE7C9FE000000090E5FD8FF0000000900000004000000020000000A000000000000000113E1C502000000010B4D43F610804CF7000000000DE7CA04000000050E6014FB000000020DE7C9FE000000050E5FD8FF064001060000000512FFAD07011523390000000A000000050000000300000004108010F70DE7CA040E5FD8FB0DE7C9FE0E6014FF00000004000000050E5FD8FF0640010612FF71070000000301152339000000090000000512FFAD070115233913F895020AA6A27610EDACF7000000000000000A000000090000000113F85902000000010AA6A2760000000710ED70F700000009000000000000000300000004000000020E6014FB000000020DE7C9FE0000000A0E5FD8FF064001060000000A12FFAD070000000A000000030000000400000000128A7D07022A457913E201020B4D43F610804CF7000000000DE7CA040E5FD8FB0DE7C9FE0000000A0E5FD8FF08C0010611FBE90700000003033F67B90000000A13BBF502000000010BF3E576000000070000000A11FC25070000000A0000000300000004000000020E6014FB000000020000000A108010F70DE7CA040E5FD8FB0000000A000000020000000A000000000000000113E1C502000000010B4D43F610804CF7000000000DE7CA040E5FD8FB0DE7C9FE000000070E5FD8FF00000007000000040000000200000007108010F70DE7CA040E5FD8FB0DE7C9FE000000070E5FD8FF08C0010611FBE907000000030115233913F895020AA6A276000000070000000900000001000000070000000700000004000000020E6014FB000000020DE7C9FE000000070E5FD8FF08C001060000000A00000007000000040000000000000003"
theorem small_1488081_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1488081_left_root small_1488081_left_fuel small_1488081_left_count small_1488081_left_encoded = true := by
  decide +kernel
theorem small_1488081_left_covered : CoveredBy scale carrier boxes small_1488081_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1488081_left_root small_1488081_left_fuel small_1488081_left_count small_1488081_left_encoded small_1488081_left_checked

theorem cover_1488081 : CoveredBy scale carrier boxes root_1488081 := by
  apply coveredBy_split_literal root_1488081 small_1488081_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.root_1488491 coord4 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact small_1488081_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.cover_1488491
#print axioms cover_1488081

def root_1488075 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1488075_left_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-13027072)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1488075_left_fuel : Nat := 1
def small_1488075_left_count : Nat := 1
def small_1488075_left_encoded : String := "00000002"
theorem small_1488075_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1488075_left_root small_1488075_left_fuel small_1488075_left_count small_1488075_left_encoded = true := by
  decide +kernel
theorem small_1488075_left_covered : CoveredBy scale carrier boxes small_1488075_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1488075_left_root small_1488075_left_fuel small_1488075_left_count small_1488075_left_encoded small_1488075_left_checked

theorem cover_1488075 : CoveredBy scale carrier boxes root_1488075 := by
  apply coveredBy_split_literal root_1488075 small_1488075_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.root_1488081 coord2 true (-13027072)
  · decide +kernel
  · decide +kernel
  · exact small_1488075_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.cover_1488081
#print axioms cover_1488075

def root_1486815 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1486815 : CoveredBy scale carrier boxes root_1486815 := by
  apply coveredBy_split_literal root_1486815 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0582.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.root_1488075 coord2 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0582.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.cover_1488075
#print axioms cover_1486815

def root_1486810 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1486810_right_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(-13026304), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1486810_right_fuel : Nat := 1
def small_1486810_right_count : Nat := 1
def small_1486810_right_encoded : String := "00000000"
theorem small_1486810_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1486810_right_root small_1486810_right_fuel small_1486810_right_count small_1486810_right_encoded = true := by
  decide +kernel
theorem small_1486810_right_covered : CoveredBy scale carrier boxes small_1486810_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1486810_right_root small_1486810_right_fuel small_1486810_right_count small_1486810_right_encoded small_1486810_right_checked

theorem cover_1486810 : CoveredBy scale carrier boxes root_1486810 := by
  apply coveredBy_split_literal root_1486810 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.root_1486815 small_1486810_right_root coord0 true (-13026304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.cover_1486815
  · exact small_1486810_right_covered
#print axioms cover_1486810

def root_1485122 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1485122 : CoveredBy scale carrier boxes root_1485122 := by
  apply coveredBy_split_literal root_1485122 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0581.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.root_1486810 coord0 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0581.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.cover_1486810
#print axioms cover_1485122

def root_1485116 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1485116_left_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1485116_left_fuel : Nat := 1
def small_1485116_left_count : Nat := 1
def small_1485116_left_encoded : String := "00000004"
theorem small_1485116_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1485116_left_root small_1485116_left_fuel small_1485116_left_count small_1485116_left_encoded = true := by
  decide +kernel
theorem small_1485116_left_covered : CoveredBy scale carrier boxes small_1485116_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1485116_left_root small_1485116_left_fuel small_1485116_left_count small_1485116_left_encoded small_1485116_left_checked

theorem cover_1485116 : CoveredBy scale carrier boxes root_1485116 := by
  apply coveredBy_split_literal root_1485116 small_1485116_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.root_1485122 coord4 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_1485116_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.cover_1485122
#print axioms cover_1485116

def root_1485115 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1485115_right_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-10897344), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1485115_right_fuel : Nat := 13
def small_1485115_right_count : Nat := 57
def small_1485115_right_encoded : String := "0F34D0FE0C9A86F60F878CF7000000000C9A8704000000050F878CFB00000002000000050F8750F70C9A87040F8750FB07800106128A41070000000300000005128A7D07022A457913E201020AD3577F000000090000000A0000000113E1C502000000010AD3577F10D13CFE000000040B4D43F600000005000000090000000500000003000000020F878CFB0000000207800106128A410700000003022A45790000000A00000005128A7D07022A45790000000A13E1C502000000010AD3577F10D13CFE000000040B4D43F6000000070000000A0000000A000000030000000000000004"
theorem small_1485115_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1485115_right_root small_1485115_right_fuel small_1485115_right_count small_1485115_right_encoded = true := by
  decide +kernel
theorem small_1485115_right_covered : CoveredBy scale carrier boxes small_1485115_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1485115_right_root small_1485115_right_fuel small_1485115_right_count small_1485115_right_encoded small_1485115_right_checked

theorem cover_1485115 : CoveredBy scale carrier boxes root_1485115 := by
  apply coveredBy_split_literal root_1485115 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.root_1485116 small_1485115_right_root coord4 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.cover_1485116
  · exact small_1485115_right_covered
#print axioms cover_1485115

def root_1485110 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1485110_right_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1485110_right_fuel : Nat := 1
def small_1485110_right_count : Nat := 1
def small_1485110_right_encoded : String := "00000002"
theorem small_1485110_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1485110_right_root small_1485110_right_fuel small_1485110_right_count small_1485110_right_encoded = true := by
  decide +kernel
theorem small_1485110_right_covered : CoveredBy scale carrier boxes small_1485110_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1485110_right_root small_1485110_right_fuel small_1485110_right_count small_1485110_right_encoded small_1485110_right_checked

theorem cover_1485110 : CoveredBy scale carrier boxes root_1485110 := by
  apply coveredBy_split_literal root_1485110 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.root_1485115 small_1485110_right_root coord2 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.cover_1485115
  · exact small_1485110_right_covered
#print axioms cover_1485110

def root_1485109 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1485109_right_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1485109_right_fuel : Nat := 31
def small_1485109_right_count : Nat := 463
def small_1485109_right_encoded : String := "0F34D104000000020CFD9BFF0F350CFE000000040C9A86F60F878CF7000000000C9A86FE0F878CFF0000000407800106128A410700000003022A45790000000800000005128A7D07022A457913E201020AD3577B10D13D040DE7C9F60E6014F700000000000000080000000A0000000210D1010400000002000000080000000113E1C502000000010AD3577B10D13D040DE7C9F6000000070E5FD8F700000007000000000000000210D10104000000020DE7C9F6000000070000000A000000030F8750FF07800106128A410700000003022A45790000000813E1C502000000010AD3577B10D13D040DE7C9F6000000080E5FD8F70B4D43FE0000000800000009000000000000000200000008128A7D07022A457913E201020AD3577B10D13D040DE7C9F6000000080E5FD8F70B4D43FE00000008108010FF0000000800000004000000000000000210D1010400000002000000080000000113E1C502000000010AD3577B10D13D040DE7C9F60E6014F700000000000000090E5FD8F70B4D43FE0000000700000009000000000000000210D10104000000020000000900000003000000040F8750F70C9A86FE0F878CFF0000000407800106128A410700000003022A45790000000A13E1C502000000010AD3577B10D13D040B4D43F610804CF7000000000DE7C9FE000000050E5FD8FF06400106000000050000000A000000040000000A0000000210D10104000000020000000A128A7D07022A45790000000A13E1C502000000010AD3577B10D13D040B4D43F610804CF7000000000DE7C9FE000000070E5FD8FF00000007000000040000000A0000000210D10104000000020000000A000000030F8750FF07800106128A410700000003022A457913E201020AD3577B10D13D040B4D43F610804CF70000000000000008108010F70B4D43FE0000000A108010FF06400106000000080000000A00000004000000000000000210D1010400000002000000080000000113E1C502000000010AD3577B10D13D040B4D43F610804CF7000000000B4D43FE10804CFF000000040640010612FF7107000000030000000812FFAD07011523390000000813F85902000000010BE879BB0000000710117104000000020000000700000003108010FF064001060000000812FFAD070115233900000008000000090000000300000004108010F70B4D43FE10804CFF000000040640010612FF710700000003011523390000000A13F85902000000010BE879BB0000000A0000000A12FFAD070000000A00000003108010FF0640010612FF710700000003011523390000000813F85902000000010BE879BB1011AD040AA6A27610EDACF7000000000AA6A27E000000080000000910ED70F70AA6A27E0000000A10ED70FF05A0010613313507000000030000000813317107008A921900000008000000090000000300000004000000000000000210117104000000020000000812FFAD070115233913F895020BE879BB1011AD040AA6A27610EDACF7000000000000000A0000000A000000020000000A0000000113F85902000000010BE879BB1011AD040AA6A27610EDACF7000000000AA6A27E000000070000000910ED70F70AA6A27E0000000A10ED70FF06E001060000000A12C821070000000A0000000300000004000000000000000210117104000000020000000A0000000300000004000000000000000210D10104000000020B4D43F610804CF70000000000000008108010F70B4D43FE0000000A108010FF06400106000000080000000A0000000400000000128A7D07022A457913E201020AD3577B10D13D040B4D43F610804CF7000000000B4D43FE10804CFF000000040000000A108010FF08C0010611FBE907000000030000000811FC2507033F67B90000000A13BBF502000000010BE879BB0000000A0000000A0000000300000004108010F70B4D43FE0000000A108010FF08C001060000000A0000000500000004000000000000000210D10104000000020000000A0000000113E1C502000000010AD3577B10D13D040B4D43F610804CF7000000000B4D43FE10804CFF0000000408C0010611FBE90700000003011523390000000A0000000700000007108010FF08C0010611FBE907000000030115233913F895020BE879BB1011AD040BF3E576000000071008ECF700000007000000000000000210117104000000020000000800000001000000070000000700000004108010F70B4D43FE10804CFF0000000408C001060000000A00000007108010FF08C0010611FBE907000000030115233913F895020BE879BB0000000A0000000A0000000113F85902000000010BE879BB0000000710117104000000020000000711FC25070115233900000005000000070000000300000004000000000000000210D10104000000020B4D43F610804CF7000000000B4D43FE0000000700000009108010F70000000A000000000000000300000004000000000F34D0FE0C9A86F60F878CF7000000000780010600000005128A7D07022A45790000000A00000005000000030F8750F70000000A0000000000000004"
theorem small_1485109_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1485109_right_root small_1485109_right_fuel small_1485109_right_count small_1485109_right_encoded = true := by
  decide +kernel
theorem small_1485109_right_covered : CoveredBy scale carrier boxes small_1485109_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1485109_right_root small_1485109_right_fuel small_1485109_right_count small_1485109_right_encoded small_1485109_right_checked

theorem cover_1485109 : CoveredBy scale carrier boxes root_1485109 := by
  apply coveredBy_split_literal root_1485109 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.root_1485110 small_1485109_right_root coord2 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.cover_1485110
  · exact small_1485109_right_covered
#print axioms cover_1485109

def root_1485103 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1485103_left_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1485103_left_fuel : Nat := 1
def small_1485103_left_count : Nat := 1
def small_1485103_left_encoded : String := "00000001"
theorem small_1485103_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1485103_left_root small_1485103_left_fuel small_1485103_left_count small_1485103_left_encoded = true := by
  decide +kernel
theorem small_1485103_left_covered : CoveredBy scale carrier boxes small_1485103_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1485103_left_root small_1485103_left_fuel small_1485103_left_count small_1485103_left_encoded small_1485103_left_checked

theorem cover_1485103 : CoveredBy scale carrier boxes root_1485103 := by
  apply coveredBy_split_literal root_1485103 small_1485103_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.root_1485109 coord1 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_1485103_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.cover_1485109
#print axioms cover_1485103

def root_1483505 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1483505 : CoveredBy scale carrier boxes root_1483505 := by
  apply coveredBy_split_literal root_1483505 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0580.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.root_1485103 coord1 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0580.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.cover_1485103
#print axioms cover_1483505

def root_1483499 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1483499_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1483499_left_fuel : Nat := 1
def small_1483499_left_count : Nat := 1
def small_1483499_left_encoded : String := "00000000"
theorem small_1483499_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1483499_left_root small_1483499_left_fuel small_1483499_left_count small_1483499_left_encoded = true := by
  decide +kernel
theorem small_1483499_left_covered : CoveredBy scale carrier boxes small_1483499_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1483499_left_root small_1483499_left_fuel small_1483499_left_count small_1483499_left_encoded small_1483499_left_checked

theorem cover_1483499 : CoveredBy scale carrier boxes root_1483499 := by
  apply coveredBy_split_literal root_1483499 small_1483499_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.root_1483505 coord0 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_1483499_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.cover_1483505
#print axioms cover_1483499

def root_1483498 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1483498_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1483498_right_fuel : Nat := 23
def small_1483498_right_count : Nat := 165
def small_1483498_right_encoded : String := "0F34D0F6045489F91386AD020CFD9BFB0F350D040CFD9BFF0F350CFE000000040C9A87040F8750FB0C9A86FE0F878CFF000000040780010600000005128A7D070AD3577710D13CF600000000067ECE790000000812EA5902000000010B4D4404000000050000000800000008000000030F8750FF0780010600000008128A7D070AD3577710D13CF600000000067ECE790000000812EA5902000000010B4D4404108010FB0B4D43FE00000008108010FF0000000600000004000000020000000800000008000000030000000400000002000000080F34D0FE0000000500000004000000020F34D104000000020CFD9BFF000000080F34D0FE00000005000000040000000113867102000000010CFD9BFB0F350D040CFD9BFF0F350CFE000000040C9A87040F8750FB0C9A86FE0F878CFF00000004000000050F8750FF07800106128A41070000000300000005128A7D070AD3577710D13CF600000000022A457913E201020B4D4404108010FB0B4D43FE10804CFF0000000400000005000000060000000210804CFB000000020B4D43FE10804CFF0000000400000005108010FF08C001060000000600000006000000040000000113E1C502000000010B4D4404000000050000000710D100F600000005000000000000000300000004000000020F878CFB000000020C9A86FE0F878CFF00000004000000050F8750FF07800106128A41070000000300000008128A7D070AD3577710D13CF600000000022A45790000000813E1C502000000010DE7CA040E5FD8FB0000000700000002000000070000000800000003000000040F34D0FE0000000500000004000000020F34D104000000020CFD9BFF0F350CFE000000040C9A86FE000000080F8750FF00000008000000040F34D0FE000000050000000400000000"
theorem small_1483498_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1483498_right_root small_1483498_right_fuel small_1483498_right_count small_1483498_right_encoded = true := by
  decide +kernel
theorem small_1483498_right_covered : CoveredBy scale carrier boxes small_1483498_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1483498_right_root small_1483498_right_fuel small_1483498_right_count small_1483498_right_encoded small_1483498_right_checked

theorem cover_1483498 : CoveredBy scale carrier boxes root_1483498 := by
  apply coveredBy_split_literal root_1483498 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.root_1483499 small_1483498_right_root coord0 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.cover_1483499
  · exact small_1483498_right_covered
#print axioms cover_1483498

def root_1483493 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1483493_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1483493_right_fuel : Nat := 1
def small_1483493_right_count : Nat := 1
def small_1483493_right_encoded : String := "00000003"
theorem small_1483493_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1483493_right_root small_1483493_right_fuel small_1483493_right_count small_1483493_right_encoded = true := by
  decide +kernel
theorem small_1483493_right_covered : CoveredBy scale carrier boxes small_1483493_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1483493_right_root small_1483493_right_fuel small_1483493_right_count small_1483493_right_encoded small_1483493_right_checked

theorem cover_1483493 : CoveredBy scale carrier boxes root_1483493 := by
  apply coveredBy_split_literal root_1483493 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.root_1483498 small_1483493_right_root coord3 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.cover_1483498
  · exact small_1483493_right_covered
#print axioms cover_1483493

def root_1481879 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1481879 : CoveredBy scale carrier boxes root_1481879 := by
  apply coveredBy_split_literal root_1481879 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0579.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.root_1483493 coord3 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0579.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.cover_1483493
#print axioms cover_1481879

def root_1481873 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1481873_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1481873_left_fuel : Nat := 1
def small_1481873_left_count : Nat := 1
def small_1481873_left_encoded : String := "00000004"
theorem small_1481873_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1481873_left_root small_1481873_left_fuel small_1481873_left_count small_1481873_left_encoded = true := by
  decide +kernel
theorem small_1481873_left_covered : CoveredBy scale carrier boxes small_1481873_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1481873_left_root small_1481873_left_fuel small_1481873_left_count small_1481873_left_encoded small_1481873_left_checked

theorem cover_1481873 : CoveredBy scale carrier boxes root_1481873 := by
  apply coveredBy_split_literal root_1481873 small_1481873_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.root_1481879 coord4 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_1481873_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.cover_1481879
#print axioms cover_1481873

def root_1481872 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1481872_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1481872_right_fuel : Nat := 13
def small_1481872_right_count : Nat := 35
def small_1481872_right_encoded : String := "120700FE05000106135D45070000000300000005135D81070CFD9BF70F350CF600000000045489F91386AD020CFD9BFB0F350D04045489FF1386ACFE000000040C9A86F6000000050000000A00000005000000020000000A0000000113867102000000010CFD9BFB0F350D040000000500000002000000050F34D0F600000005000000000000000300000004"
theorem small_1481872_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1481872_right_root small_1481872_right_fuel small_1481872_right_count small_1481872_right_encoded = true := by
  decide +kernel
theorem small_1481872_right_covered : CoveredBy scale carrier boxes small_1481872_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1481872_right_root small_1481872_right_fuel small_1481872_right_count small_1481872_right_encoded small_1481872_right_checked

theorem cover_1481872 : CoveredBy scale carrier boxes root_1481872 := by
  apply coveredBy_split_literal root_1481872 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.root_1481873 small_1481872_right_root coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.cover_1481873
  · exact small_1481872_right_covered
#print axioms cover_1481872

def root_1481867 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1481867_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1481867_right_fuel : Nat := 1
def small_1481867_right_count : Nat := 1
def small_1481867_right_encoded : String := "00000002"
theorem small_1481867_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1481867_right_root small_1481867_right_fuel small_1481867_right_count small_1481867_right_encoded = true := by
  decide +kernel
theorem small_1481867_right_covered : CoveredBy scale carrier boxes small_1481867_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1481867_right_root small_1481867_right_fuel small_1481867_right_count small_1481867_right_encoded small_1481867_right_checked

theorem cover_1481867 : CoveredBy scale carrier boxes root_1481867 := by
  apply coveredBy_split_literal root_1481867 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.root_1481872 small_1481867_right_root coord2 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.cover_1481872
  · exact small_1481867_right_covered
#print axioms cover_1481867

def root_1481866 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1481866_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1481866_right_fuel : Nat := 23
def small_1481866_right_count : Nat := 177
def small_1481866_right_encoded : String := "120701040000000208A912FF12073CFE0000000405000106135D4507000000030CFD9BF70F350CF600000000045489F91386AD02045489FB1386AD040CFD9BFF000000080000000A00000002138671040000000200000008000000011386710200000001045489FB1386AD040CFD9BFF0F350CFE000000040C9A86F6000000080F8750F70C9A86FE000000060F8750FF0000000800000004000000000F34D0FE00000005000000040000000213867104000000020CFD9BFF00000008000000060F34D0F60000000500000000135D81070CFD9BF70F350CF600000000045489F91386AD02045489FB1386AD040CFD9BFF0F350CFE000000040C9A86F6000000080000000A0000000A0000000213867104000000020CFD9BFF000000080000000A000000011386710200000001045489FB1386AD040CFD9BFF0F350CFE000000040C9A86F60F878CF7000000000C9A86FE0F878CFF000000040780010600000008128A7D07022A45790000000813E1C50200000001067ECE7B0000000A0000000A000000030F8750FF00000008000000040F8750F70C9A86FE0F878CFF000000040000000A0F8750FF07800106128A41070000000300000008128A7D07022A45790000000A13E1C50200000001067ECE7B0000000A0000000A0000000300000004000000000F34D0FE0000000A000000040000000213867104000000020CFD9BFF0F350CFE000000040C9A86F60F878CF7000000000C9A86FE00000008000000080F8750F70C9A86FE0000000A0F8750FF07800106000000080000000A00000004000000000F34D0FE00000006000000040F34D0F6045489F9000000081386710200000001045489FB1386AD040CFD9BFF000000080F34D0FE00000005000000040000000213867104000000020CFD9BFF00000008000000050000000000000003120700FE0500010600000005135D81070CFD9BF70000000A000000050000000300000004"
theorem small_1481866_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1481866_right_root small_1481866_right_fuel small_1481866_right_count small_1481866_right_encoded = true := by
  decide +kernel
theorem small_1481866_right_covered : CoveredBy scale carrier boxes small_1481866_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1481866_right_root small_1481866_right_fuel small_1481866_right_count small_1481866_right_encoded small_1481866_right_checked

theorem cover_1481866 : CoveredBy scale carrier boxes root_1481866 := by
  apply coveredBy_split_literal root_1481866 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.root_1481867 small_1481866_right_root coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.cover_1481867
  · exact small_1481866_right_covered
#print axioms cover_1481866

def root_1481860 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1481860_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1481860_left_fuel : Nat := 1
def small_1481860_left_count : Nat := 1
def small_1481860_left_encoded : String := "00000001"
theorem small_1481860_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1481860_left_root small_1481860_left_fuel small_1481860_left_count small_1481860_left_encoded = true := by
  decide +kernel
theorem small_1481860_left_covered : CoveredBy scale carrier boxes small_1481860_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1481860_left_root small_1481860_left_fuel small_1481860_left_count small_1481860_left_encoded small_1481860_left_checked

theorem cover_1481860 : CoveredBy scale carrier boxes root_1481860 := by
  apply coveredBy_split_literal root_1481860 small_1481860_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.root_1481866 coord1 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_1481860_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.cover_1481866
#print axioms cover_1481860

def root_1481476 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1481476_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1481476_left_fuel : Nat := 29
def small_1481476_left_count : Nat := 179
def small_1481476_left_encoded : String := "12073D0208A912FB12073D0408A912FF12073CFE0000000405000106135D4507000000030CFD9BF70F350CF6000000000CFD9BF9000000080F34D102000000010CFD9BFB0F350D040CFD9BFF000000080F34D0FE0C9A86F6000000080000000A00000004000000020F34D104000000020000000800000008135D81070CFD9BF70F350CF6000000000CFD9BF90F350D020CFD9BFB0F350D040CFD9BFF000000080F34D0FE0000000A00000004000000020F34D1040000000200000008000000010F34D102000000010CFD9BFB0F350D040CFD9BFF0F350CFE000000040C9A86F60F878CF7000000000C9A87040F8750FB0C9A86FE0F878CFF000000040780010600000008128A7D070AD357790000000810D10102000000010DE7C9F6000000080000000A000000030F8750FF000000080000000400000002000000080F8750F70C9A87040F8750FB0C9A86FE0F878CFF00000004078001060000000A0000000A0F8750FF07800106128A41070000000300000008128A7D070AD357790000000A10D10102000000010B4D43F610804CF7000000000B4D44040000000900000008000000090000000300000004000000020F878CFB000000020C9A86FE0000000A0F8750FF0000000800000004000000000F34D0FE0C9A86F60F878CF7000000000000000A0000000A00000004000000020F34D104000000020CFD9BFF000000080000000A0F34D0F60CFD9BF9000000080F34D102000000010CFD9BFB0F350D040CFD9BFF000000080F34D0FE0000000800000004000000020F34D10400000002000000080000000000000003120700FE05000106135D4507000000030CFD9BF70F350CF6000000000000000A0F34D0F60000000500000000135D81070CFD9BF70F350CF6000000000000000A0F34D0F60CFD9BF90000000A0000000500000000000000030000000400000002120701040000000208A912FF00000008120700FE0000000A0000000400000001"
theorem small_1481476_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1481476_left_root small_1481476_left_fuel small_1481476_left_count small_1481476_left_encoded = true := by
  decide +kernel
theorem small_1481476_left_covered : CoveredBy scale carrier boxes small_1481476_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1481476_left_root small_1481476_left_fuel small_1481476_left_count small_1481476_left_encoded small_1481476_left_checked

theorem cover_1481476 : CoveredBy scale carrier boxes root_1481476 := by
  apply coveredBy_split_literal root_1481476 small_1481476_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.root_1481860 coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_1481476_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.cover_1481860
#print axioms cover_1481476

def root_1481470 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1481470_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1481470_left_fuel : Nat := 1
def small_1481470_left_count : Nat := 1
def small_1481470_left_encoded : String := "00000000"
theorem small_1481470_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1481470_left_root small_1481470_left_fuel small_1481470_left_count small_1481470_left_encoded = true := by
  decide +kernel
theorem small_1481470_left_covered : CoveredBy scale carrier boxes small_1481470_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1481470_left_root small_1481470_left_fuel small_1481470_left_count small_1481470_left_encoded small_1481470_left_checked

theorem cover_1481470 : CoveredBy scale carrier boxes root_1481470 := by
  apply coveredBy_split_literal root_1481470 small_1481470_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.root_1481476 coord0 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_1481470_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.cover_1481476
#print axioms cover_1481470

def root_1481469 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1481469_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1481469_right_fuel : Nat := 17
def small_1481469_right_count : Nat := 63
def small_1481469_right_encoded : String := "120700F608A912F912073D0208A912FB12073D0408A912FF00000008120700FE00000005000000040000000212070104000000020000000800000001120701020000000108A912FB12073D0408A912FF12073CFE0000000405000106135D45070000000300000005135D8107045489F71386ACF600000000045489F91386AD020CFD9BFB0F350D040CFD9BFF0000000800000005000000020F34D10400000002000000080000000113867102000000010CFD9BFB0F350D04000000050000000200000005138670F6045489F9000000080000000500000000000000030000000500000002120701040000000208A912FF000000080000000500000000"
theorem small_1481469_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1481469_right_root small_1481469_right_fuel small_1481469_right_count small_1481469_right_encoded = true := by
  decide +kernel
theorem small_1481469_right_covered : CoveredBy scale carrier boxes small_1481469_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1481469_right_root small_1481469_right_fuel small_1481469_right_count small_1481469_right_encoded small_1481469_right_checked

theorem cover_1481469 : CoveredBy scale carrier boxes root_1481469 := by
  apply coveredBy_split_literal root_1481469 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.root_1481470 small_1481469_right_root coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.cover_1481470
  · exact small_1481469_right_covered
#print axioms cover_1481469

def root_1481463 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1481463_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1481463_left_fuel : Nat := 1
def small_1481463_left_count : Nat := 1
def small_1481463_left_encoded : String := "00000004"
theorem small_1481463_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1481463_left_root small_1481463_left_fuel small_1481463_left_count small_1481463_left_encoded = true := by
  decide +kernel
theorem small_1481463_left_covered : CoveredBy scale carrier boxes small_1481463_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1481463_left_root small_1481463_left_fuel small_1481463_left_count small_1481463_left_encoded small_1481463_left_checked

theorem cover_1481463 : CoveredBy scale carrier boxes root_1481463 := by
  apply coveredBy_split_literal root_1481463 small_1481463_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.root_1481469 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_1481463_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.cover_1481469
#print axioms cover_1481463

def root_1499653 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1499653_left_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-10572672)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1499653_left_fuel : Nat := 23
def small_1499653_left_count : Nat := 313
def small_1499653_left_encoded : String := "0F878CF7000000000C9A87040F8750FB07800106128A410700000003078000FE128A7CFF00000004022A457913E201020DE7C9F60E6014F7000000000B4D4404108010FB000000060000000210804CFB00000002064001060000000812FFAD0700000006000000030E5FD8F70B4D4404108010FB000000060000000210804CFB000000020640010612FF71070000000308C000FE000000080000000612FFAD070000000600000003000000000000000113E1C502000000010DE7C9F60E6014F7000000000B4D44040000000610804CFB000000020640010612FF7107000000030000000A000000060E5FD8F70B4D4404108010FB000000060000000210804CFB000000020640010612FF71070000000308C000FE11FC24FF000000040115233900000006000000060000000612FFAD07000000060000000300000000128A40FF022A457913E201020DE7C9F60E6014F7000000000000000600000006000000010000000A00000004128A7D07078000FE128A7CFF00000004022A457913E201020DE7C9F60E6014F70000000000000006000000060000000113E1C502000000010DE7C9F60E6014F7000000000000000600000006128A40FF000000060000000400000003000000020F878CFB0000000207800106128A410700000003078000FE128A7CFF00000004022A457913E201020DE7C9F6000000080E5FD8F70DE7CA040E5FD8FB064001060000000812FFAD0708C000FE0000000811FBE8FF0000000600000004000000030000000200000008000000000000000113E1C502000000010DE7C9F60E6014F7000000000DE7CA040E5FD8FB0000000900000002000000080E5FD8F70DE7CA040E5FD8FB0640010612FF71070000000308C000FE11FC24FF00000004011523390000000813F85902000000010D412876000000090EFA10F70D4128840000000A000000080000000011FBE8FF0115233900000008000000090000000412FFAD0708C000FE11FC24FF000000040115233913F895020D4128760EFA4CF70000000000000006000000060000000113F85902000000010D412876000000090000000611FBE8FF000000060000000400000003000000020E6014FB00000002064001060000000912FFAD07000000090000000300000000128A40FF022A457913E201020DE7C9F6000000080E5FD8F70DE7CA040E5FD8FB064001060000000600000006000000020000000800000000000000010000000900000004128A7D07078000FE128A7CFF00000004022A457913E201020DE7C9F60E6014F7000000000DE7CA040E5FD8FB08C0010611FBE90700000003000000080000000600000002000000080E5FD8F70DE7CA040E5FD8FB08C0010611FBE9070000000308C000FE000000060000000600000006000000020E6014FB0000000208C0010611FBE9070000000308C000FE000000080000000811FC250708C000FE11FC24FF00000004033F67B900000006000000060000000600000003000000000000000113E1C502000000010DE7C9F60E6014F7000000000DE7CA040E5FD8FB0000000900000002000000090E5FD8F70DE7CA040E5FD8FB08C0010611FBE9070000000308C000FE000000060000000600000006000000020E6014FB000000020000000900000000128A40FF022A457913E201020DE7C9F60E6014F700000000000000090E5FD8F70DE7CA0400000006000000050000000000000001000000090000000400000003"
theorem small_1499653_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1499653_left_root small_1499653_left_fuel small_1499653_left_count small_1499653_left_encoded = true := by
  decide +kernel
theorem small_1499653_left_covered : CoveredBy scale carrier boxes small_1499653_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1499653_left_root small_1499653_left_fuel small_1499653_left_count small_1499653_left_encoded small_1499653_left_checked

theorem cover_1499653 : CoveredBy scale carrier boxes root_1499653 := by
  apply coveredBy_split_literal root_1499653 small_1499653_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0587.root coord0 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact small_1499653_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0587.covered
#print axioms cover_1499653

def root_1499648 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1499648_right_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1499648_right_fuel : Nat := 1
def small_1499648_right_count : Nat := 1
def small_1499648_right_encoded : String := "00000002"
theorem small_1499648_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1499648_right_root small_1499648_right_fuel small_1499648_right_count small_1499648_right_encoded = true := by
  decide +kernel
theorem small_1499648_right_covered : CoveredBy scale carrier boxes small_1499648_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1499648_right_root small_1499648_right_fuel small_1499648_right_count small_1499648_right_encoded small_1499648_right_checked

theorem cover_1499648 : CoveredBy scale carrier boxes root_1499648 := by
  apply coveredBy_split_literal root_1499648 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.root_1499653 small_1499648_right_root coord2 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.cover_1499653
  · exact small_1499648_right_covered
#print axioms cover_1499648

def root_1499647 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1499647_right_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1499647_right_fuel : Nat := 27
def small_1499647_right_count : Nat := 233
def small_1499647_right_encoded : String := "0F34D104000000020C9A86F60F878CF70000000007800106128A410700000003078000FE0000000800000009128A7D07078000FE128A7CFF00000004022A457913E201020AD3577B10D13D040DE7C9F6000000080E5FD8F700000008000000000000000200000008000000010000000900000009000000030F8750F707800106128A410700000003078000FE128A7CFF00000004022A457913E201020AD3577B10D13D040B4D43F600000008108010F7064001060000000812FFAD0708C000FE000000080000000500000003000000000000000210D1010400000002000000080000000113E1C502000000010AD3577B10D13D040B4D43F610804CF700000000064001060000000912FFAD070000000900000003108010F70640010612FF71070000000308C000FE11FC24FF00000004011523390000000813F85902000000010BE879BB1011AD040AA6A2760000000910ED70F705A001061331350700000003096000FE000000080000000913317107000000090000000300000000000000020000000911FBE8FF0115233900000008000000090000000412FFAD0708C000FE11FC24FF000000040115233913F895020BE879BB1011AD040AA6A27610EDACF70000000006E00106000000080000000500000005000000021011710400000002000000080000000113F85902000000010BE879BB1011AD040AA6A2760000000910ED70F70000000500000000000000020000000911FBE8FF0115233900000005000000090000000400000003000000000000000210D101040000000200000009128A40FF022A457913E201020AD3577B10D13D040B4D43F6000000080000000500000002000000080000000113E1C502000000010AD3577B000000090000000900000004128A7D07078000FE128A7CFF00000004022A457913E201020AD3577B10D13D040B4D43F610804CF70000000008C0010611FBE9070000000308C000FE000000080000000500000005000000050000000210D10104000000020B4D43F610804CF70000000000000008000000050000000113E1C502000000010AD3577B10D13D040B4D43F610804CF70000000008C001060000000911FC25070000000900000003108010F708C0010611FBE9070000000308C000FE11FC24FF00000004011523390000000513F85902000000010BE879BB00000005000000090000000500000005000000000000000210D101040000000200000009128A40FF022A45790000000513E1C502000000010AD3577B0000000500000009000000040000000300000000"
theorem small_1499647_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1499647_right_root small_1499647_right_fuel small_1499647_right_count small_1499647_right_encoded = true := by
  decide +kernel
theorem small_1499647_right_covered : CoveredBy scale carrier boxes small_1499647_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1499647_right_root small_1499647_right_fuel small_1499647_right_count small_1499647_right_encoded small_1499647_right_checked

theorem cover_1499647 : CoveredBy scale carrier boxes root_1499647 := by
  apply coveredBy_split_literal root_1499647 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.root_1499648 small_1499647_right_root coord2 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.cover_1499648
  · exact small_1499647_right_covered
#print axioms cover_1499647

def root_1499641 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1499641_left_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1499641_left_fuel : Nat := 1
def small_1499641_left_count : Nat := 1
def small_1499641_left_encoded : String := "00000001"
theorem small_1499641_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1499641_left_root small_1499641_left_fuel small_1499641_left_count small_1499641_left_encoded = true := by
  decide +kernel
theorem small_1499641_left_covered : CoveredBy scale carrier boxes small_1499641_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1499641_left_root small_1499641_left_fuel small_1499641_left_count small_1499641_left_encoded small_1499641_left_checked

theorem cover_1499641 : CoveredBy scale carrier boxes root_1499641 := by
  apply coveredBy_split_literal root_1499641 small_1499641_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.root_1499647 coord1 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_1499641_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034.cover_1499647
#print axioms cover_1499641

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0034
