import TaoBundleAssembly0013
import TaoBundleAssembly0016
import TaoBundleAssembly0019
import TaoBundleAssembly0020
import TaoBundleAssembly0021
import TaoBundleChunkBatch0085
import TaoBundleChunkBatch0086
import TaoBundleChunkBatch0087
import TaoBundleChunkBatch0088
import TaoBundleChunkBatch0089
import TaoBundleChunkBatch0090
import TaoBundleChunkBatch0091
import TaoBundleChunkBatch0092
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022
def root_876459 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_876459_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_876459_left_fuel : Nat := 26
def small_876459_left_count : Nat := 323
def small_876459_left_encoded : String := "12073CF60000000008A912FF12073CFE00000004050000F8135D810305000104135D45050000000205000106135D4507000000030CFD9BF7000000050F34D0F60CFD9BFF000000050F34D0FE078000F8128A7D03000000050000000100000005000000040000000000000005000000050000000100000005120700FE050000F8135D810305000104135D45050000000205000106135D4507000000030CFD9BF70F350CF600000000000000080F34D0F6045489FF1386ACFE00000004078000F8128A7D030280010413D7B105000000020280010613D7B107000000030AD357770000000610D100F600000008000000000000000813D7ED050280010613D7B107000000030000000613D7ED070AD357770000000510D100F6067ECE7F000000050000000800000000000000030000000200000001128A410300000001028001040000000813D7ED0502800106000000060000000800000002138670FE078000F8128A7D03028001040000000813D7ED050280010600000006000000080000000200000001000000080000000400000000135D81070CFD9BF7000000080F34D0F6045489FF1386ACFE00000004078000F8128A7D03028001040000000813D7ED0507800106128A4107000000030AD357770000000510D100F6067ECE7F00000005000000080000000000000005000000020000000100000008000000080000000000000003135D810505000106135D4507000000030CFD9BF70F350CF600000000045489FF00000005000000060F34D0F6045489FF1386ACFE00000004078000F8128A7D0307800104128A410500000002028001060000000613D7ED070AD357770000000510D100F6067ECE7F0000000512EA58FE08C000F811FC2503000000050000000100000005000000040000000000000003128A7D05000000050000000200000001128A41030000000107800104128A4105000000020000000600000006138670FE078000F8128A7D0307800104128A410500000002028001060000000613D7ED070AD357770000000610D100F6022A457F00000006000000060000000000000003128A7D05028001060000000613D7ED070AD357770000000610D100F6022A457F000000060000000600000000000000030000000200000001128A410300000001000000060000000400000000135D81070CFD9BF7000000050F34D0F6045489FF00000005138670FE078000F8128A7D0307800104128A41050000000207800106128A4107000000030AD357770000000810D100F6022A457F000000080000000800000000128A7D070000000800000003128A7D0507800106128A4107000000030AD357770000000510D100F6022A457F0000000513E1C4FE08C000F80000000A11FBE90300000001000000080000000400000000128A7D0700000005000000030000000200000001128A4103000000010780010400000008128A7D0507800106128A4107000000030AD357770000000510D100F6022A457F000000050000000600000000128A7D070000000500000003000000020000000400000000000000030000000200000001135D45030000000105000104135D45050000000205000106135D4507000000030CFD9BF7000000060F34D0F6000000080000000000000008135D810505000106135D4507000000030CFD9BF7000000060F34D0F6045489FF1386ACFE00000004028000F800000006000000050000000600000000135D81070CFD9BF7000000050F34D0F6045489FF000000050000000800000000000000030000000200000004"
theorem small_876459_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_876459_left_root small_876459_left_fuel small_876459_left_count small_876459_left_encoded = true := by
  decide +kernel
theorem small_876459_left_covered : CoveredBy scale carrier boxes small_876459_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_876459_left_root small_876459_left_fuel small_876459_left_count small_876459_left_encoded small_876459_left_checked

theorem cover_876459 : CoveredBy scale carrier boxes root_876459 := by
  apply coveredBy_split_literal root_876459 small_876459_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.root_877131 coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_876459_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.cover_877131
#print axioms cover_876459

def root_876453 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_876453_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_876453_left_fuel : Nat := 1
def small_876453_left_count : Nat := 1
def small_876453_left_encoded : String := "00000004"
theorem small_876453_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_876453_left_root small_876453_left_fuel small_876453_left_count small_876453_left_encoded = true := by
  decide +kernel
theorem small_876453_left_covered : CoveredBy scale carrier boxes small_876453_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_876453_left_root small_876453_left_fuel small_876453_left_count small_876453_left_encoded small_876453_left_checked

theorem cover_876453 : CoveredBy scale carrier boxes root_876453 := by
  apply coveredBy_split_literal root_876453 small_876453_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.root_876459 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_876453_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.cover_876459
#print axioms cover_876453

def root_876452 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_876452_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_876452_right_fuel : Nat := 4
def small_876452_right_count : Nat := 7
def small_876452_right_encoded : String := "1151E8FF08A912F700000005120700F6000000050000000000000004"
theorem small_876452_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_876452_right_root small_876452_right_fuel small_876452_right_count small_876452_right_encoded = true := by
  decide +kernel
theorem small_876452_right_covered : CoveredBy scale carrier boxes small_876452_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_876452_right_root small_876452_right_fuel small_876452_right_count small_876452_right_encoded small_876452_right_checked

theorem cover_876452 : CoveredBy scale carrier boxes root_876452 := by
  apply coveredBy_split_literal root_876452 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.root_876453 small_876452_right_root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.cover_876453
  · exact small_876452_right_covered
#print axioms cover_876452

def root_876446 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_876446_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_876446_left_fuel : Nat := 1
def small_876446_left_count : Nat := 1
def small_876446_left_encoded : String := "00000003"
theorem small_876446_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_876446_left_root small_876446_left_fuel small_876446_left_count small_876446_left_encoded = true := by
  decide +kernel
theorem small_876446_left_covered : CoveredBy scale carrier boxes small_876446_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_876446_left_root small_876446_left_fuel small_876446_left_count small_876446_left_encoded small_876446_left_checked

theorem cover_876446 : CoveredBy scale carrier boxes root_876446 := by
  apply coveredBy_split_literal root_876446 small_876446_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.root_876452 coord3 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_876446_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.cover_876452
#print axioms cover_876446

def root_876445 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_876445 : CoveredBy scale carrier boxes root_876445 := by
  apply coveredBy_split_literal root_876445 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.root_876446 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0340.root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.cover_876446
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0340.covered
#print axioms cover_876445

def root_876439 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_876439_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_876439_left_fuel : Nat := 1
def small_876439_left_count : Nat := 1
def small_876439_left_encoded : String := "00000002"
theorem small_876439_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_876439_left_root small_876439_left_fuel small_876439_left_count small_876439_left_encoded = true := by
  decide +kernel
theorem small_876439_left_covered : CoveredBy scale carrier boxes small_876439_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_876439_left_root small_876439_left_fuel small_876439_left_count small_876439_left_encoded small_876439_left_checked

theorem cover_876439 : CoveredBy scale carrier boxes root_876439 := by
  apply coveredBy_split_literal root_876439 small_876439_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.root_876445 coord2 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_876439_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.cover_876445
#print axioms cover_876439

def root_876438 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_876438 : CoveredBy scale carrier boxes root_876438 := by
  apply coveredBy_split_literal root_876438 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.root_876439 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0341.root coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.cover_876439
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0341.covered
#print axioms cover_876438

def root_876432 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_876432_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_876432_left_fuel : Nat := 1
def small_876432_left_count : Nat := 1
def small_876432_left_encoded : String := "00000001"
theorem small_876432_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_876432_left_root small_876432_left_fuel small_876432_left_count small_876432_left_encoded = true := by
  decide +kernel
theorem small_876432_left_covered : CoveredBy scale carrier boxes small_876432_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_876432_left_root small_876432_left_fuel small_876432_left_count small_876432_left_encoded small_876432_left_checked

theorem cover_876432 : CoveredBy scale carrier boxes root_876432 := by
  apply coveredBy_split_literal root_876432 small_876432_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.root_876438 coord1 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_876432_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.cover_876438
#print axioms cover_876432

def root_848520 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_848520 : CoveredBy scale carrier boxes root_848520 := by
  apply coveredBy_split_literal root_848520 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.root_848521 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.root_876432 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.cover_848521
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.cover_876432
#print axioms cover_848520

def root_848514 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_848514_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_848514_left_fuel : Nat := 1
def small_848514_left_count : Nat := 1
def small_848514_left_encoded : String := "00000000"
theorem small_848514_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_848514_left_root small_848514_left_fuel small_848514_left_count small_848514_left_encoded = true := by
  decide +kernel
theorem small_848514_left_covered : CoveredBy scale carrier boxes small_848514_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_848514_left_root small_848514_left_fuel small_848514_left_count small_848514_left_encoded small_848514_left_checked

theorem cover_848514 : CoveredBy scale carrier boxes root_848514 := by
  apply coveredBy_split_literal root_848514 small_848514_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.root_848520 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_848514_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.cover_848520
#print axioms cover_848514

def root_848513 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_848513_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_848513_right_fuel : Nat := 22
def small_848513_right_count : Nat := 341
def small_848513_right_encoded : String := "1151E8F70A0000F8115225030A0001041151E905000000020A0001061151E907000000030A0000FE115224FF0000000408A913030000000512073CF800000001000000051151E8FF0000000500000004115225070A0000FE000000051151E8FF000000050000000400000003115225050A0001061151E907000000030A0000FE000000051151E8FF0000000500000004115225070A0000FE115224FF0000000408A91303120700F808A91305120701040000000208A9130712070106000000030000000A00000005000000050000000112073CF80000000108A91305120701040000000208A913071207010600000003000000070000000512073D0408A913070000000512073D0608A912FF00000005120700FE000000050000000400000003000000021151E8FF08A91303120700F808A91305120701040000000208A9130712070106000000030000000712073D06050000F600000005000000070000000312073D0408A913071207010600000003050000F6000000050000000700000005000000020000000112073CF80000000108A91305120701040000000208A9130712070106000000030000000712073D06050000F600000005000000070000000312073D0408A913071207010600000003050000F6000000050000000712073D06050000F600000005135D44F700000005000000000000000300000002000000040000000300000002000000011151E903000000010A0001041151E905000000020A0001061151E907000000030A0000FE115224FF0000000408A912FF00000005120700FE00000005000000041151E8FF0000000500000004115225070A0000FE115224FF0000000408A9130712070106000000030000000812073D0608A912FF12073CFE00000004050000F600000005135D44F70000000500000000120700FE050000F6000000050000000800000004000000031151E8FF08A913070000000812073D06050000F60000000500000008000000030000000400000003115225050A0001061151E907000000030A0000FE115224FF0000000408A91305120701040000000208A912FF00000005120700FE000000050000000412073D0408A912FF12073CFE00000004050000F600000005135D44F70000000500000000120700FE050000F600000005135D44F7000000050000000000000004000000021151E8FF08A913050000000912073D04050000F600000005000000090000000200000004115225070A0000FE115224FF0000000408A91305120701040000000208A913070000000712073D0608A912FF00000007120700FE00000007000000040000000312073D0408A91307120701060000000308A912FF00000007120700FE000000070000000412073D0608A912FF12073CFE00000004050000F6135D80F700000000050000F800000005135D4503000000010CFD9C05000000050F350D040000000500000002135D44F7050000F800000005135D4503000000010CFD9C050F34D10400000002000000070F350D04000000080000000200000000120700FE050000F6135D80F700000000050000F800000005135D4503000000010CFD9C05000000050F350D040000000500000002135D44F7050000F800000005135D4503000000010CFD9C050F34D10400000002000000070F350D040000000800000002000000000000000400000003000000021151E8FF08A91305120701040000000208A91307000000070000000712073D0408A9130712070106000000030000000712073D06050000F6135D80F700000000050000F800000007135D450300000001050000FE0000000700000007135D44F7050000F8000000070000000800000000000000030000000200000004000000030000000200000000"
theorem small_848513_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_848513_right_root small_848513_right_fuel small_848513_right_count small_848513_right_encoded = true := by
  decide +kernel
theorem small_848513_right_covered : CoveredBy scale carrier boxes small_848513_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_848513_right_root small_848513_right_fuel small_848513_right_count small_848513_right_encoded small_848513_right_checked

theorem cover_848513 : CoveredBy scale carrier boxes root_848513 := by
  apply coveredBy_split_literal root_848513 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.root_848514 small_848513_right_root coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.cover_848514
  · exact small_848513_right_covered
#print axioms cover_848513

def root_903574 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_903574 : CoveredBy scale carrier boxes root_903574 := by
  apply coveredBy_split_literal root_903574 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0342.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0343.root coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0342.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0343.covered
#print axioms cover_903574

def root_903568 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_903568_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_903568_left_fuel : Nat := 1
def small_903568_left_count : Nat := 1
def small_903568_left_encoded : String := "00000001"
theorem small_903568_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_903568_left_root small_903568_left_fuel small_903568_left_count small_903568_left_encoded = true := by
  decide +kernel
theorem small_903568_left_covered : CoveredBy scale carrier boxes small_903568_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_903568_left_root small_903568_left_fuel small_903568_left_count small_903568_left_encoded small_903568_left_checked

theorem cover_903568 : CoveredBy scale carrier boxes root_903568 := by
  apply coveredBy_split_literal root_903568 small_903568_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.root_903574 coord1 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_903568_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.cover_903574
#print axioms cover_903568

def root_903388 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_903388_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_903388_left_fuel : Nat := 16
def small_903388_left_count : Nat := 87
def small_903388_left_encoded : String := "120700F808A91305120701040000000208A913090000000512073CFE0000000405000106135D4507000000030CFD9BF7000000050F34D0F604548A03000000051386ACF80000000104548A05000000051386AD040CFD9C09000000050F350CFE000000040000000500000002000000000000000512073D0408A91309120700FE05000106135D4507000000030CFD9BF70F350CF600000000000000050F34D0F604548A030000000A0000000A00000000135D81070CFD9BF7000000050000000A000000030000000412073CFE0000000405000106135D4507000000030CFD9BF70F350CF60000000004548A03000000091386ACF8000000010CFD9C050F34D104000000020CFD9C090000000500000009000000090F34D0F604548A03000000091386ACF8000000010CFD9C050F34D104000000020CFD9C090F34D0FE0000000900000004000000090000000900000000000000090000000200000001"
theorem small_903388_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_903388_left_root small_903388_left_fuel small_903388_left_count small_903388_left_encoded = true := by
  decide +kernel
theorem small_903388_left_covered : CoveredBy scale carrier boxes small_903388_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_903388_left_root small_903388_left_fuel small_903388_left_count small_903388_left_encoded small_903388_left_checked

theorem cover_903388 : CoveredBy scale carrier boxes root_903388 := by
  apply coveredBy_split_literal root_903388 small_903388_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.root_903568 coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_903388_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.cover_903568
#print axioms cover_903388

def root_903382 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_903382_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_903382_left_fuel : Nat := 1
def small_903382_left_count : Nat := 1
def small_903382_left_encoded : String := "00000000"
theorem small_903382_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_903382_left_root small_903382_left_fuel small_903382_left_count small_903382_left_encoded = true := by
  decide +kernel
theorem small_903382_left_covered : CoveredBy scale carrier boxes small_903382_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_903382_left_root small_903382_left_fuel small_903382_left_count small_903382_left_encoded small_903382_left_checked

theorem cover_903382 : CoveredBy scale carrier boxes root_903382 := by
  apply coveredBy_split_literal root_903382 small_903382_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.root_903388 coord0 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_903382_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.cover_903388
#print axioms cover_903382

def root_908811 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(16243968), (16645888)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_908811 : CoveredBy scale carrier boxes root_908811 := by
  apply coveredBy_split_literal root_908811 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0344.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0345.root coord0 true (-5448672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0344.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0345.covered
#print axioms cover_908811

def root_908806 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_908806_right_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(16645888), (16777216)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_908806_right_fuel : Nat := 1
def small_908806_right_count : Nat := 1
def small_908806_right_encoded : String := "00000003"
theorem small_908806_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_908806_right_root small_908806_right_fuel small_908806_right_count small_908806_right_encoded = true := by
  decide +kernel
theorem small_908806_right_covered : CoveredBy scale carrier boxes small_908806_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_908806_right_root small_908806_right_fuel small_908806_right_count small_908806_right_encoded small_908806_right_checked

theorem cover_908806 : CoveredBy scale carrier boxes root_908806 := by
  apply coveredBy_split_literal root_908806 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.root_908811 small_908806_right_root coord3 true (16645888)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.cover_908811
  · exact small_908806_right_covered
#print axioms cover_908806

def root_908328 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_908328_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(0), (2097152)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_908328_left_fuel : Nat := 21
def small_908328_left_count : Nat := 225
def small_908328_left_encoded : String := "13D7B10700000003067ECE7712EA94F600000000022A458513E1C504000000020B4D43F810804D030B4D43FE10804D0900000005000000041080110900000004000000070000000110801103000000010B4D43FE10804D09014001060000000613F615070793F0B700000005128220F60115234500000005000000060000000000000003000000041080110900000004014001060000000613F615070793F0B700000006128220F60115234513F85904000000020AA6A278000000070000000600000007000000000000000313E201040B4D43F810804D030B4D43FE10804D090000000700000004000000070000000110801103000000010B4D43FE10804D09014001060000000613F615070793F0B700000006128220F600000006000000000000000300000004000000070000000212EA58F6022A458513E1C504000000020B4D43F810804D030B4D43FE10804D09014001060000000713F615070569AC37134110F600000000011523450000000500000007000000080000000300000004000000070000000110801103000000010B4D43FE10804D090140010613F5D907000000030569AC37134110F6000000000115234500000009000000061340D4F60115234500000009000000070000000013F615070569AC37134110F6000000000115234513F85904000000020AA6A27810EDAD030BF3E57E000000081008ED090000000401E0010600000006000000080000000110ED7103000000010000000913F895040AA6A27810EDAD030BF3E57E1009290901E00106000000060000000800000004000000070000000110ED71030000000100000006000000021340D4F60115234513F85904000000020AA6A2780000000810ED7103000000010000000813F895040AA6A27810EDAD03000000080000000110ED7103000000010BF3E57E1009290900000008000000041008ED090000000400000007000000020000000000000003000000041080110900000004014001060000000713F615070569AC37134110F60000000000000007000000070000000313E201040B4D43F810804D03000000070000000110801103000000010B4D43FE10804D09014001060000000713F615070569AC37134110F600000000033F67C513BBF504000000020AA6A27810EDAD03000000070000000100000006000000071340D4F6033F67C513BBF504000000020000000700000005000000000000000300000004000000070000000200000000"
theorem small_908328_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_908328_left_root small_908328_left_fuel small_908328_left_count small_908328_left_encoded = true := by
  decide +kernel
theorem small_908328_left_covered : CoveredBy scale carrier boxes small_908328_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_908328_left_root small_908328_left_fuel small_908328_left_count small_908328_left_encoded small_908328_left_checked

theorem cover_908328 : CoveredBy scale carrier boxes root_908328 := by
  apply coveredBy_split_literal root_908328 small_908328_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.root_908806 coord3 false (2097152)
  · decide +kernel
  · decide +kernel
  · exact small_908328_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.cover_908806
#print axioms cover_908328

def root_908322 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_908322_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(10897344), (13026304)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_908322_left_fuel : Nat := 1
def small_908322_left_count : Nat := 1
def small_908322_left_encoded : String := "00000004"
theorem small_908322_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_908322_left_root small_908322_left_fuel small_908322_left_count small_908322_left_encoded = true := by
  decide +kernel
theorem small_908322_left_covered : CoveredBy scale carrier boxes small_908322_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_908322_left_root small_908322_left_fuel small_908322_left_count small_908322_left_encoded small_908322_left_checked

theorem cover_908322 : CoveredBy scale carrier boxes root_908322 := by
  apply coveredBy_split_literal root_908322 small_908322_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.root_908328 coord4 true (13026304)
  · decide +kernel
  · decide +kernel
  · exact small_908322_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.cover_908328
#print axioms cover_908322

def root_907748 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_907748_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-12756736), (-10572672)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_907748_left_fuel : Nat := 20
def small_907748_left_count : Nat := 273
def small_907748_left_encoded : String := "0F878D090280010613D7B10700000003067ECE7712EA94F600000000022A458513E1C504000000020B4D43F810804D0300000005000000010000000513E201040B4D43F810804D030DE7C9FE0E6015090140010613F5D907000000030793F0B7000000050000000813F615070793F0B7000000050000000800000003000000040E5FD909000000040140010613F5D907000000030793F0B7000000060000000713F615070793F0B700000005128220F6033F67C50000000513BC31040BF3E5781009290300000007000000010000000A0000000200000000000000030000000110801103000000010DE7C9FE000000060E5FD90900000004000000060000000212EA58F6022A458513E1C504000000020B4D43F810804D03000000080000000110801103000000010DE7C9FE0E60150900000008000000040E5FD909000000040140010613F5D907000000030569AC37134110F600000000000000090000000813F615070569AC37134110F600000000011523450000000513F895040AA6A278000000080000000600000002000000080000000313E201040B4D43F810804D030DE7C9FE000000080E5FD909000000040140010613F5D907000000030000000813F615070569AC37134110F600000000033F67C5000000080000000A00000008000000030000000110801103000000010DE7C9FE0000000A0E5FD909000000040140010613F5D907000000030569AC37000000061340D4F6033F67C500000008000000070000000013F615070569AC37134110F600000000033F67C513BBF504000000020AA6A27810EDAD030000000A00000001000000060000000A0000000A00000003000000020000000013D7ED07067ECE7712EA94F600000000022A45850000000513E201040B4D43F810804D030DE7C9FE0E60150900000005000000040E5FD9090000000403C0010613A51107000000030793F0B700000005128220F6033F67C5000000050000000A0000000013A54D070793F0B7000000050000000A000000030000000110801103000000010DE7C9FE0E6015090000000A000000040E5FD9090000000403C0010613A51107000000030793F0B700000006128220F6033F67C513BBF504000000020AA6A27810EDAD030000000A00000001000000060000000A0000000013A54D070793F0B712825CF600000000033F67C5000000050000000A0000000A000000030000000212EA58F6022A458513E1C504000000020B4D43F810804D030DE7C9FE000000080E5FD90900000004000000080000000110801103000000010DE7C9FE0E60150900000008000000040E5FD9090000000403C0010613A51107000000030569AC37134110F600000000011523450000000513F895040AA6A278000000080000000A000000020000000813A54D070569AC37134110F60000000001152345000000050000000A000000080000000313E201040B4D43F810804D030000000A000000010000000A00000002000000000000000300000004"
theorem small_907748_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_907748_left_root small_907748_left_fuel small_907748_left_count small_907748_left_encoded = true := by
  decide +kernel
theorem small_907748_left_covered : CoveredBy scale carrier boxes small_907748_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_907748_left_root small_907748_left_fuel small_907748_left_count small_907748_left_encoded small_907748_left_checked

theorem cover_907748 : CoveredBy scale carrier boxes root_907748 := by
  apply coveredBy_split_literal root_907748 small_907748_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.root_908322 coord4 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact small_907748_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.cover_908322
#print axioms cover_907748

def root_907742 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_907742_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(10897344), (13026304)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_907742_left_fuel : Nat := 1
def small_907742_left_count : Nat := 1
def small_907742_left_encoded : String := "00000001"
theorem small_907742_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_907742_left_root small_907742_left_fuel small_907742_left_count small_907742_left_encoded = true := by
  decide +kernel
theorem small_907742_left_covered : CoveredBy scale carrier boxes small_907742_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_907742_left_root small_907742_left_fuel small_907742_left_count small_907742_left_encoded small_907742_left_checked

theorem cover_907742 : CoveredBy scale carrier boxes root_907742 := by
  apply coveredBy_split_literal root_907742 small_907742_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.root_907748 coord1 true (13026304)
  · decide +kernel
  · decide +kernel
  · exact small_907742_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.cover_907748
#print axioms cover_907742

def root_907360 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_907360_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-12756736), (-10572672)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_907360_left_fuel : Nat := 19
def small_907360_left_count : Nat := 181
def small_907360_left_encoded : String := "0F878D030C9A86FE0F878D090280010613D7B10700000003067ECE7712EA94F600000000022A45850000000513E201040DE7C9F80E60150300000005000000010E5FD903000000010DE7C9FE0E60150900000005000000040E5FD90900000004014001060000000713F615070793F0B70000000500000008000000030000000212EA58F6000000080000000013D7ED07067ECE7712EA94F600000000022A45850000000513E201040DE7C9F80E60150300000005000000010E5FD903000000010DE7C9FE0E6015090000000500000004000000050000000212EA58F6022A45850000000813E201040DE7C9F8000000080E5FD9030000000100000008000000020000000000000003000000040F875109000000040280010613D7B10700000003067ECE7712EA94F600000000022A458513E1C504000000020DE7C9F80E6015030000000500000001000000050000000712EA58F6022A458513E1C504000000020DE7C9F8000000070E5FD903000000010B4D43FE0000000800000007000000070000000013D7ED07067ECE7712EA94F600000000022A45850000000513E201040DE7C9F80E6015030B4D43FE0000000900000007000000010E5FD903000000010B4D43FE10804D0903C0010613A51107000000030793F0B7000000050000000713A54D070793F0B700000005000000090000000300000004108011090000000403C0010600000007000000090000000212EA58F6022A458513E1C504000000020DE7C9F80E60150300000008000000010E5FD903000000010B4D43FE10804D090000000800000004108011090000000403C001060000000713A54D070569AC37134110F600000000011523450000000500000007000000070000000313E201040DE7C9F80E60150300000007000000010E5FD903000000010B4D43FE10804D0903C001060000000713A54D070569AC37000000090000000800000003000000040000000700000002000000000000000300000001"
theorem small_907360_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_907360_left_root small_907360_left_fuel small_907360_left_count small_907360_left_encoded = true := by
  decide +kernel
theorem small_907360_left_covered : CoveredBy scale carrier boxes small_907360_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_907360_left_root small_907360_left_fuel small_907360_left_count small_907360_left_encoded small_907360_left_checked

theorem cover_907360 : CoveredBy scale carrier boxes root_907360 := by
  apply coveredBy_split_literal root_907360 small_907360_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.root_907742 coord1 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact small_907360_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.cover_907742
#print axioms cover_907360

def root_907354 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_907354_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_907354_left_fuel : Nat := 1
def small_907354_left_count : Nat := 1
def small_907354_left_encoded : String := "00000004"
theorem small_907354_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_907354_left_root small_907354_left_fuel small_907354_left_count small_907354_left_encoded = true := by
  decide +kernel
theorem small_907354_left_covered : CoveredBy scale carrier boxes small_907354_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_907354_left_root small_907354_left_fuel small_907354_left_count small_907354_left_encoded small_907354_left_checked

theorem cover_907354 : CoveredBy scale carrier boxes root_907354 := by
  apply coveredBy_split_literal root_907354 small_907354_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.root_907360 coord4 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_907354_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.cover_907360
#print axioms cover_907354

def root_907290 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_907290_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_907290_left_fuel : Nat := 12
def small_907290_left_count : Nat := 31
def small_907290_left_encoded : String := "0F34D0FE0C9A86F80F878D03028001060000000800000008000000010F875103000000010280010613D7B10700000003067ECE7712EA94F600000000022A45850000000513E201040AD357890000000510D13CFE0000000400000005000000020000000813D7ED07067ECE77000000050000000A0000000300000004"
theorem small_907290_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_907290_left_root small_907290_left_fuel small_907290_left_count small_907290_left_encoded = true := by
  decide +kernel
theorem small_907290_left_covered : CoveredBy scale carrier boxes small_907290_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_907290_left_root small_907290_left_fuel small_907290_left_count small_907290_left_encoded small_907290_left_checked

theorem cover_907290 : CoveredBy scale carrier boxes root_907290 := by
  apply coveredBy_split_literal root_907290 small_907290_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.root_907354 coord4 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_907290_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.cover_907354
#print axioms cover_907290

def root_907284 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_907284_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_907284_left_fuel : Nat := 1
def small_907284_left_count : Nat := 1
def small_907284_left_encoded : String := "00000002"
theorem small_907284_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_907284_left_root small_907284_left_fuel small_907284_left_count small_907284_left_encoded = true := by
  decide +kernel
theorem small_907284_left_covered : CoveredBy scale carrier boxes small_907284_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_907284_left_root small_907284_left_fuel small_907284_left_count small_907284_left_encoded small_907284_left_checked

theorem cover_907284 : CoveredBy scale carrier boxes root_907284 := by
  apply coveredBy_split_literal root_907284 small_907284_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.root_907290 coord2 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_907284_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.cover_907290
#print axioms cover_907284

def root_907283 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_907283_right_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_907283_right_fuel : Nat := 23
def small_907283_right_count : Nat := 289
def small_907283_right_encoded : String := "1386AD040CFD9C090F34D0FE0C9A86F80F878D030280010613D7B10700000003067ECE7712EA94F600000000067ECE8512EA5904000000020000000A0000000A000000080000000A000000010F875103000000010000000A000000040F350CFE000000040C9A86F80F878D030C9A86FE0F878D090280010613D7B10700000003067ECE7712EA94F600000000067ECE8512EA5904000000020DE7C9F80E6015030DE7C9FE0E601509000000080000000400000007000000010E5FD903000000010DE7C9FE0E6015090140010613F5D907000000030793F0B712825CF6000000000569AC450000000500000006000000070000000A000000040E5FD909000000040000000712EA95040DE7C9F80E60150300000007000000010E5FD903000000010DE7C9FE0000000A000000070000000212EA58F6067ECE8512EA5904000000020DE7C9F80E60150300000007000000010E5FD903000000010000000A0000000A0000000013D7ED07067ECE7712EA94F600000000067ECE8512EA5904000000020DE7C9F80E6015030DE7C9FE0000000A0E5FD9090000000400000009000000010E5FD903000000010000000A0000000A0000000A00000003000000040F87510900000004028001060000000713D7ED07067ECE7712EA94F600000000067ECE8512EA5904000000020DE7C9F8000000090E5FD90300000001000000090000000912EA58F6067ECE8500000007000000070000000000000003000000010F875103000000010C9A86FE0F878D090280010613D7B10700000003067ECE7712EA94F600000000067ECE8512EA5904000000020B4D43F810804D030DE7C9FE0E60150901400106000000060000000A000000040E5FD90900000004014001060000000613F615070793F0B70000000600000007000000030000000110801103000000010DE7C9FE000000060E5FD909000000040000000612EA95040B4D43F810804D030000000A000000010000000A0000000212EA58F6067ECE8512EA5904000000020B4D43F810804D030000000A000000010000000A0000000A0000000013D7ED07067ECE7712EA94F600000000067ECE8512EA5904000000020B4D43F810804D030000000A000000010000000A0000000A0000000A00000003000000040F875109000000040280010613D7B10700000003067ECE7712EA94F600000000000000070000000713D7ED07067ECE7712EA94F600000000067ECE8512EA5904000000020B4D43F810804D030B4D43FE10804D0903C0010613A51107000000030000000700000009000000041080110900000004000000070000000110801103000000010B4D43FE10804D0903C0010613A51107000000030793F0B7000000060000000A13A54D070793F0B712825CF6000000000000000A0000000A0000000300000004108011090000000403C001060000000713A54D070793F0B700000008000000050000000312EA95040B4D43F8000000091080110300000001000000050000000212EA58F6067ECE8512EA5904000000020B4D43F810804D030B4D43FE0000000A000000070000000110801103000000010000000500000005000000000000000300000002"
theorem small_907283_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_907283_right_root small_907283_right_fuel small_907283_right_count small_907283_right_encoded = true := by
  decide +kernel
theorem small_907283_right_covered : CoveredBy scale carrier boxes small_907283_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_907283_right_root small_907283_right_fuel small_907283_right_count small_907283_right_encoded small_907283_right_checked

theorem cover_907283 : CoveredBy scale carrier boxes root_907283 := by
  apply coveredBy_split_literal root_907283 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.root_907284 small_907283_right_root coord2 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.cover_907284
  · exact small_907283_right_covered
#print axioms cover_907283

def root_907277 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_907277_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_907277_left_fuel : Nat := 1
def small_907277_left_count : Nat := 1
def small_907277_left_encoded : String := "00000001"
theorem small_907277_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_907277_left_root small_907277_left_fuel small_907277_left_count small_907277_left_encoded = true := by
  decide +kernel
theorem small_907277_left_covered : CoveredBy scale carrier boxes small_907277_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_907277_left_root small_907277_left_fuel small_907277_left_count small_907277_left_encoded small_907277_left_checked

theorem cover_907277 : CoveredBy scale carrier boxes root_907277 := by
  apply coveredBy_split_literal root_907277 small_907277_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.root_907283 coord1 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_907277_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.cover_907283
#print axioms cover_907277

def root_907139 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_907139_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_907139_left_fuel : Nat := 15
def small_907139_left_count : Nat := 69
def small_907139_left_encoded : String := "0F34D0F804548A0513867104000000020CFD9C09000000050F350CFE000000040C9A86FE0F878D09028001060000000800000008000000040F87510900000004028001060000000713D7ED07067ECE770000000512EA58F60AD35783000000050000000800000000000000031386AD040CFD9C090F34D0FE028001060000000800000008000000040F350CFE000000040C9A86FE0F878D090280010613D7B10700000003067ECE7712EA94F6000000000AD357830000000710D13CF800000001067ECE8500000007000000070000000713D7ED07067ECE770000000912EA58F60AD3578300000007000000080000000000000003000000040F875109000000040280010600000007000000090000000200000001"
theorem small_907139_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_907139_left_root small_907139_left_fuel small_907139_left_count small_907139_left_encoded = true := by
  decide +kernel
theorem small_907139_left_covered : CoveredBy scale carrier boxes small_907139_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_907139_left_root small_907139_left_fuel small_907139_left_count small_907139_left_encoded small_907139_left_checked

theorem cover_907139 : CoveredBy scale carrier boxes root_907139 := by
  apply coveredBy_split_literal root_907139 small_907139_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.root_907277 coord1 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_907139_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.cover_907277
#print axioms cover_907139

def root_907133 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_907133_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16379648)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_907133_left_fuel : Nat := 1
def small_907133_left_count : Nat := 1
def small_907133_left_encoded : String := "00000000"
theorem small_907133_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_907133_left_root small_907133_left_fuel small_907133_left_count small_907133_left_encoded = true := by
  decide +kernel
theorem small_907133_left_covered : CoveredBy scale carrier boxes small_907133_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_907133_left_root small_907133_left_fuel small_907133_left_count small_907133_left_encoded small_907133_left_checked

theorem cover_907133 : CoveredBy scale carrier boxes root_907133 := by
  apply coveredBy_split_literal root_907133 small_907133_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.root_907139 coord0 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_907133_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.cover_907139
#print axioms cover_907133

def root_907132 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_907132_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_907132_right_fuel : Nat := 34
def small_907132_right_count : Nat := 285
def small_907132_right_encoded : String := "138670F60CFD9C030F34D0F804548A0513867104000000020CFD9C0900000008000000081386AD040CFD9C09000000080F350CFE000000040C9A86FE0F878D0900000008000000040000000700000002000000010F350CF80000000104548A0513867104000000020CFD9C090F34D0FE00000008000000040F350CFE000000040C9A86F80F878D030C9A86FE0F878D0900000008000000040F875109000000040280010613D7B10700000003022A4577000000070000000713D7ED07022A457713E200F600000000022A45850000000813E201040DE7C9F8000000080E5FD903000000010B4D43FE0000000800000007000000020000000800000003000000010F875103000000010C9A86FE0F878D090280010613D7B10700000003022A457713E200F600000000022A45850000000813E201040B4D43F8000000080000000A000000020000000813D7ED07022A457713E200F600000000022A4585000000080000000A0000000800000003000000040F875109000000040280010613D7B10700000003022A457713E200F600000000022A458513E1C504000000020B4D43F810804D030B4D43FE00000008000000070000000110801103000000010B4D43FE10804D09014001060000000800000008000000041080110900000004014001060000000713F61507033F67B700000007000000050000000313E201040B4D43F810804D0300000007000000011080110300000001000000050000000213E1C4F6022A458513E1C5040000000200000008000000050000000013D7ED07022A457713E200F600000000022A458513E1C504000000020B4D43F810804D030B4D43FE00000008108011090000000403C0010613A51107000000030000000813A54D07033F67B713BC30F600000000011523450000000813F895040BF3E578000000080000000A0000000200000008000000030000000110801103000000010B4D43FE10804D0903C0010613A51107000000030000000813A54D070000000A0000000300000004108011090000000403C0010613A5110700000003033F67B713BC30F6000000000115234513F85904000000020AA6A27810EDAD03000000080000000110ED7103000000010AA6A27E0000000810ED71090000000400000005000000050000000513A54D07033F67B713BC30F6000000000115234513F85904000000020AA6A27810EDAD03000000080000000110ED7103000000010AA6A27E10EDAD09000000080000000410ED710900000004046001061383DD0700000003000000050000000500000005000000050000000313E201040B4D43F810804D030B4D43FE0000000A108011090000000400000005000000011080110300000001000000050000000213E1C4F6022A458513E1C504000000020B4D43F8000000081080110300000001000000050000000500000000000000031386AD040CFD9C090F34D0FE0000000A000000040F350CFE000000040C9A86F80F878D030C9A86FE0000000A0F8751090000000400000007000000010F875103000000010C9A86FE0000000A0F87510900000004000000050000000200000000"
theorem small_907132_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_907132_right_root small_907132_right_fuel small_907132_right_count small_907132_right_encoded = true := by
  decide +kernel
theorem small_907132_right_covered : CoveredBy scale carrier boxes small_907132_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_907132_right_root small_907132_right_fuel small_907132_right_count small_907132_right_encoded small_907132_right_checked

theorem cover_907132 : CoveredBy scale carrier boxes root_907132 := by
  apply coveredBy_split_literal root_907132 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.root_907133 small_907132_right_root coord0 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.cover_907133
  · exact small_907132_right_covered
#print axioms cover_907132

def root_907126 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_907126_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(14529024), (16243968)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_907126_left_fuel : Nat := 1
def small_907126_left_count : Nat := 1
def small_907126_left_encoded : String := "00000003"
theorem small_907126_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_907126_left_root small_907126_left_fuel small_907126_left_count small_907126_left_encoded = true := by
  decide +kernel
theorem small_907126_left_covered : CoveredBy scale carrier boxes small_907126_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_907126_left_root small_907126_left_fuel small_907126_left_count small_907126_left_encoded small_907126_left_checked

theorem cover_907126 : CoveredBy scale carrier boxes root_907126 := by
  apply coveredBy_split_literal root_907126 small_907126_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.root_907132 coord3 true (16243968)
  · decide +kernel
  · decide +kernel
  · exact small_907126_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.cover_907132
#print axioms cover_907126

def root_907125 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_907125 : CoveredBy scale carrier boxes root_907125 := by
  apply coveredBy_split_literal root_907125 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.root_907126 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0346.root coord3 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.cover_907126
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0346.covered
#print axioms cover_907125

def root_907119 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_907119_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_907119_left_fuel : Nat := 1
def small_907119_left_count : Nat := 1
def small_907119_left_encoded : String := "00000004"
theorem small_907119_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_907119_left_root small_907119_left_fuel small_907119_left_count small_907119_left_encoded = true := by
  decide +kernel
theorem small_907119_left_covered : CoveredBy scale carrier boxes small_907119_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_907119_left_root small_907119_left_fuel small_907119_left_count small_907119_left_encoded small_907119_left_checked

theorem cover_907119 : CoveredBy scale carrier boxes root_907119 := by
  apply coveredBy_split_literal root_907119 small_907119_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.root_907125 coord4 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_907119_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.cover_907125
#print axioms cover_907119

def root_907037 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_907037_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_907037_left_fuel : Nat := 11
def small_907037_left_count : Nat := 41
def small_907037_left_encoded : String := "120700FE05000106135D450700000003045489F71386ACF6000000000CFD9C03000000080F350CF80000000104548A05000000051386AD0404548A09000000050000000A0000000200000008135D8107045489F71386ACF6000000000CFD9C03000000050F350CF80000000104548A05000000050000000A138670F60CFD9C03000000080F350CF80000000104548A05000000070000000A000000000000000300000004"
theorem small_907037_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_907037_left_root small_907037_left_fuel small_907037_left_count small_907037_left_encoded = true := by
  decide +kernel
theorem small_907037_left_covered : CoveredBy scale carrier boxes small_907037_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_907037_left_root small_907037_left_fuel small_907037_left_count small_907037_left_encoded small_907037_left_checked

theorem cover_907037 : CoveredBy scale carrier boxes root_907037 := by
  apply coveredBy_split_literal root_907037 small_907037_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.root_907119 coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_907037_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.cover_907119
#print axioms cover_907037

def root_907031 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_907031_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_907031_left_fuel : Nat := 1
def small_907031_left_count : Nat := 1
def small_907031_left_encoded : String := "00000002"
theorem small_907031_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_907031_left_root small_907031_left_fuel small_907031_left_count small_907031_left_encoded = true := by
  decide +kernel
theorem small_907031_left_covered : CoveredBy scale carrier boxes small_907031_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_907031_left_root small_907031_left_fuel small_907031_left_count small_907031_left_encoded small_907031_left_checked

theorem cover_907031 : CoveredBy scale carrier boxes root_907031 := by
  apply coveredBy_split_literal root_907031 small_907031_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.root_907037 coord2 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_907031_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.cover_907037
#print axioms cover_907031

def root_907030 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_907030_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_907030_right_fuel : Nat := 22
def small_907030_right_count : Nat := 305
def small_907030_right_encoded : String := "12073D0408A91309120700FE05000106135D450700000003045489F71386ACF6000000000CFD9C030F34D0F80CFD9C050000000A0000000A000000010F350CF8000000010CFD9C050F34D1040000000204548A09138670FE0000000A000000040000000A0F350D0404548A09138670FE0C9A86F80F878D030000000A000000010F875103000000010C9A87040F875105000000020000000A0000000A000000041386ACFE000000040C9A86F80000000A0000000A00000002138670F60CFD9C030F34D0F80000000A000000010F350CF8000000010CFD9C050F34D104000000020000000A0F350D0404548A09138670FE0C9A86F80000000A0000000A000000040000000A0000000200000000135D8107045489F71386ACF6000000000CFD9C030F34D0F80CFD9C050000000A0000000A000000010F350CF8000000010CFD9C050F34D104000000020000000A0F350D0404548A09138670FE0C9A86F80F878D030000000A000000010F875103000000010C9A87040F875105000000020000000A0000000A000000041386ACFE000000040C9A86F80000000A0000000A00000002138670F60CFD9C030F34D0F80000000A000000010F350CF8000000010CFD9C050F34D104000000020000000A0F350D0404548A09138670FE0C9A86F80000000A0000000A000000040000000A0000000200000000000000030000000412073CFE0000000405000106135D450700000003045489F71386ACF6000000000CFD9C030F34D0F80CFD9C050F34D104000000020CFD9C090F34D0FE0000000A000000040F350CFE000000040C9A86FE00000009000000090F350D040CFD9C090F34D0FE00000009000000040000000900000002000000010F350CF8000000010CFD9C050F34D104000000020CFD9C090F34D0FE0000000A000000040F350CFE000000040C9A86F80F878D030C9A86FE0F878D090280010613D7B10700000003067ECE7712EA94F60000000000000007000000070000000A000000040F8751090000000400000007000000010F875103000000010C9A86FE0F878D090280010613D7B107000000030000000A0000000A000000040F87510900000004000000050F350D040CFD9C090F34D0FE0C9A86F80F878D030000000A000000010000000A000000040000000500000002138670F60CFD9C030F34D0F80CFD9C050F34D104000000020000000A0000000A000000010F350CF8000000010CFD9C050F34D104000000020CFD9C090F34D0FE0000000A00000004000000050000000500000000135D8107045489F71386ACF6000000000CFD9C030F34D0F80CFD9C050F34D104000000020CFD9C090000000A0000000900000009000000010F350CF8000000010CFD9C050F34D104000000020CFD9C090F34D0FE0000000A000000040F350CFE000000040C9A86F80F878D0300000009000000010F875103000000010C9A86FE0000000A0F87510900000004000000090F350D040CFD9C090F34D0FE0C9A86F8000000090000000A000000040000000900000002138670F60CFD9C030F34D0F80CFD9C050F34D104000000020000000A0000000A000000010F350CF8000000010CFD9C050F34D104000000020CFD9C090F34D0FE0000000A000000040000000A0F350D040CFD9C090F34D0FE0000000A000000040000000500000002000000000000000300000002"
theorem small_907030_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_907030_right_root small_907030_right_fuel small_907030_right_count small_907030_right_encoded = true := by
  decide +kernel
theorem small_907030_right_covered : CoveredBy scale carrier boxes small_907030_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_907030_right_root small_907030_right_fuel small_907030_right_count small_907030_right_encoded small_907030_right_checked

theorem cover_907030 : CoveredBy scale carrier boxes root_907030 := by
  apply coveredBy_split_literal root_907030 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.root_907031 small_907030_right_root coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.cover_907031
  · exact small_907030_right_covered
#print axioms cover_907030

def root_907024 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_907024_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_907024_left_fuel : Nat := 1
def small_907024_left_count : Nat := 1
def small_907024_left_encoded : String := "00000001"
theorem small_907024_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_907024_left_root small_907024_left_fuel small_907024_left_count small_907024_left_encoded = true := by
  decide +kernel
theorem small_907024_left_covered : CoveredBy scale carrier boxes small_907024_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_907024_left_root small_907024_left_fuel small_907024_left_count small_907024_left_encoded small_907024_left_checked

theorem cover_907024 : CoveredBy scale carrier boxes root_907024 := by
  apply coveredBy_split_literal root_907024 small_907024_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.root_907030 coord1 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_907024_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.cover_907030
#print axioms cover_907024

def root_906808 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_906808_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_906808_left_fuel : Nat := 17
def small_906808_left_count : Nat := 103
def small_906808_left_encoded : String := "120700F808A91305120701040000000208A91309120700FE000000080000000412073CFE0000000405000106135D450700000003045489F71386ACF60000000004548A03000000081386ACF80000000104548A051386710400000002000000081386AD040CFD9C09000000080F350CFE000000040C9A86FE00000009000000070000000200000008135D8107045489F71386ACF60000000004548A03000000051386ACF80000000104548A05000000051386AD040CFD9C09000000050000000900000002138670F604548A03000000081386ACF80000000104548A05000000080000000A000000000000000312073D0408A91309120700FE0000000A0000000412073CFE0000000405000106135D450700000003045489F71386ACF60000000004548A03000000091386ACF8000000010CFD9C050F34D104000000020CFD9C090F34D0FE00000008000000040000000900000009138670F604548A03000000071386ACF8000000010CFD9C050F34D104000000020000000A0000000A00000000135D8107045489F7000000090000000A000000030000000200000001"
theorem small_906808_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_906808_left_root small_906808_left_fuel small_906808_left_count small_906808_left_encoded = true := by
  decide +kernel
theorem small_906808_left_covered : CoveredBy scale carrier boxes small_906808_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_906808_left_root small_906808_left_fuel small_906808_left_count small_906808_left_encoded small_906808_left_checked

theorem cover_906808 : CoveredBy scale carrier boxes root_906808 := by
  apply coveredBy_split_literal root_906808 small_906808_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.root_907024 coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_906808_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.cover_907024
#print axioms cover_906808

def root_906803 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_906803_right_root : ZRayBox := fun j => (#[⟨⟨(-15122432), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_906803_right_fuel : Nat := 1
def small_906803_right_count : Nat := 1
def small_906803_right_encoded : String := "00000000"
theorem small_906803_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_906803_right_root small_906803_right_fuel small_906803_right_count small_906803_right_encoded = true := by
  decide +kernel
theorem small_906803_right_covered : CoveredBy scale carrier boxes small_906803_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_906803_right_root small_906803_right_fuel small_906803_right_count small_906803_right_encoded small_906803_right_checked

theorem cover_906803 : CoveredBy scale carrier boxes root_906803 := by
  apply coveredBy_split_literal root_906803 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.root_906808 small_906803_right_root coord0 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.cover_906808
  · exact small_906803_right_covered
#print axioms cover_906803

def root_903381 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_903381 : CoveredBy scale carrier boxes root_903381 := by
  apply coveredBy_split_literal root_903381 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.root_903382 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.root_906803 coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.cover_903382
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.cover_906803
#print axioms cover_903381

def root_903376 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_903376_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_903376_right_fuel : Nat := 1
def small_903376_right_count : Nat := 1
def small_903376_right_encoded : String := "00000004"
theorem small_903376_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_903376_right_root small_903376_right_fuel small_903376_right_count small_903376_right_encoded = true := by
  decide +kernel
theorem small_903376_right_covered : CoveredBy scale carrier boxes small_903376_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_903376_right_root small_903376_right_fuel small_903376_right_count small_903376_right_encoded small_903376_right_checked

theorem cover_903376 : CoveredBy scale carrier boxes root_903376 := by
  apply coveredBy_split_literal root_903376 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.root_903381 small_903376_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.cover_903381
  · exact small_903376_right_covered
#print axioms cover_903376

def root_917405 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_917405 : CoveredBy scale carrier boxes root_917405 := by
  apply coveredBy_split_literal root_917405 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0347.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0348.root coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0347.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0348.covered
#print axioms cover_917405

def root_917399 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_917399_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_917399_left_fuel : Nat := 1
def small_917399_left_count : Nat := 1
def small_917399_left_encoded : String := "00000004"
theorem small_917399_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_917399_left_root small_917399_left_fuel small_917399_left_count small_917399_left_encoded = true := by
  decide +kernel
theorem small_917399_left_covered : CoveredBy scale carrier boxes small_917399_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_917399_left_root small_917399_left_fuel small_917399_left_count small_917399_left_encoded small_917399_left_checked

theorem cover_917399 : CoveredBy scale carrier boxes root_917399 := by
  apply coveredBy_split_literal root_917399 small_917399_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.root_917405 coord4 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_917399_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.cover_917405
#print axioms cover_917399

def root_903375 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_903375 : CoveredBy scale carrier boxes root_903375 := by
  apply coveredBy_split_literal root_903375 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.root_903376 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.root_917399 coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.cover_903376
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.cover_917399
#print axioms cover_903375

def root_903369 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_903369_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_903369_left_fuel : Nat := 1
def small_903369_left_count : Nat := 1
def small_903369_left_encoded : String := "00000003"
theorem small_903369_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_903369_left_root small_903369_left_fuel small_903369_left_count small_903369_left_encoded = true := by
  decide +kernel
theorem small_903369_left_covered : CoveredBy scale carrier boxes small_903369_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_903369_left_root small_903369_left_fuel small_903369_left_count small_903369_left_encoded small_903369_left_checked

theorem cover_903369 : CoveredBy scale carrier boxes root_903369 := by
  apply coveredBy_split_literal root_903369 small_903369_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.root_903375 coord3 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_903369_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.cover_903375
#print axioms cover_903369

def root_903368 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_903368 : CoveredBy scale carrier boxes root_903368 := by
  apply coveredBy_split_literal root_903368 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.root_903369 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0349.root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.cover_903369
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0349.covered
#print axioms cover_903368

def root_903363 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_903363_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_903363_right_fuel : Nat := 1
def small_903363_right_count : Nat := 1
def small_903363_right_encoded : String := "00000002"
theorem small_903363_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_903363_right_root small_903363_right_fuel small_903363_right_count small_903363_right_encoded = true := by
  decide +kernel
theorem small_903363_right_covered : CoveredBy scale carrier boxes small_903363_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_903363_right_root small_903363_right_fuel small_903363_right_count small_903363_right_encoded small_903363_right_checked

theorem cover_903363 : CoveredBy scale carrier boxes root_903363 := by
  apply coveredBy_split_literal root_903363 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.root_903368 small_903363_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.cover_903368
  · exact small_903363_right_covered
#print axioms cover_903363

def root_902381 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_902381_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_902381_left_fuel : Nat := 30
def small_902381_left_count : Nat := 461
def small_902381_left_encoded : String := "1151E905000000020A0001061151E907000000030A0000FE1152250908A912F712073CF60000000008A91303120700F8000000090000000112073CF80000000108A91309120700FE05000104135D45050000000205000106135D4507000000030CFD9BF7000000090F34D0F60CFD9C03000000090F350CF80000000104548A09138670FE0000000900000004000000090000000000000009135D810505000106135D4507000000030CFD9BF70F350CF6000000000CFD9C03000000090F350CF80000000104548A09138670FE0C9A86F60F878CF7000000000C9A86F80F878D0300000009000000010F87510300000001000000060F8750F70C9A86F800000009000000060000000000000004000000090F34D0F60CFD9C030F34D0F800000009000000010F350CF80000000104548A09138670FE0C9A86F80F878D0307800104128A410500000002000000090000000A000000010F8751030000000107800104128A4105000000020280010613D7B107000000030AD35777000000060000000A00000009128A7D05028001060000000A0000000A00000002000000041386ACFE000000040C9A86F8000000090F8751030000000107800104000000090000000A00000000135D81070CFD9BF7000000090F34D0F6000000090000000000000003000000020000000412073CFE0000000405000104135D45050000000200000009135D810505000106135D4507000000030CFD9BF70F350CF6000000000CFD9C03000000090F350CF8000000010CFD9C0900000008000000080F34D0F60CFD9C03000000090F350CF8000000010CFD9C090F34D0FE000000090000000400000005000000000000000900000002120700F608A91303120700F808A91309120700FE0000000900000004000000090000000112073CF80000000108A91309120700FE05000104135D45050000000205000106135D450700000003045489F71386ACF6000000000CFD9C03000000090F350CF80000000104548A09138670FE0C9A86F80F878D0300000009000000010F87510300000001028001040000000513D7ED05028001060000000500000009000000020000000400000005138670F60000000700000000135D8107045489F700000009138670F60CFD9C03000000090F350CF80000000104548A09138670FE0C9A86F8000000090F875103000000010000000500000004000000050000000000000003135D810505000106135D450700000003045489F71386ACF6000000000CFD9C030F34D0F80000000A000000010F350CF80000000104548A09138670FE0C9A86F80F878D0307800104128A4105000000020000000A0000000A000000010F8751030000000107800104128A4105000000020280010613D7B10700000003067ECE7712EA94F6000000000000000A0000000513D7ED07067ECE77000000090000000500000003128A7D05028001060000000A0000000A00000002000000041386ACFE000000040C9A86F80F878D030000000A000000010F8751030000000100000005138670F60CFD9C030F34D0F80000000A000000010F350CF80000000104548A09138670FE0C9A86F80F878D030000000A000000010F8751030000000100000005000000040000000500000000135D8107045489F71386ACF6000000000CFD9C03000000090F350CF80000000104548A09138670FE0C9A86F8000000090F8751030000000107800104128A41050000000200000009128A7D05078001060000000A00000009000000020000000400000009138670F60CFD9C030F34D0F800000009000000010F350CF80000000104548A09138670FE0C9A86F80F878D0307800104000000090000000A000000010F8751030000000107800104128A410500000002078001060000000500000009128A7D05078001060000000A0000000A00000002000000041386ACFE000000040C9A86F8000000090F87510300000001000000050000000000000003000000020000000412073CFE0000000405000104135D450500000002050001060000000700000009135D810505000106135D450700000003045489F71386ACF6000000000CFD9C03000000070000000500000005135D8107045489F700000009138670F60CFD9C03000000090000000500000000000000030000000200000000000000041151E9090000000408A912F712073CF60000000008A913030000000912073CF8000000010500010400000008135D810505000106000000080000000900000002120700F60000000700000000115225070A0000FE1152250908A912F712073CF60000000008A913030000000912073CF80000000108A9130712070106000000030000000912073D0608A91309120700FE00000009000000040000000900000003120700F608A913030000000912073CF80000000108A9130712070106000000030000000912073D0608A91309120700FE0500010400000009135D8105045489F700000009138670F600000009000000000000000200000004000000090000000300000000000000041151E909000000040000000900000003"
theorem small_902381_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_902381_left_root small_902381_left_fuel small_902381_left_count small_902381_left_encoded = true := by
  decide +kernel
theorem small_902381_left_covered : CoveredBy scale carrier boxes small_902381_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_902381_left_root small_902381_left_fuel small_902381_left_count small_902381_left_encoded small_902381_left_checked

theorem cover_902381 : CoveredBy scale carrier boxes root_902381 := by
  apply coveredBy_split_literal root_902381 small_902381_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.root_903363 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_902381_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.cover_903363
#print axioms cover_902381

def root_902376 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_902376_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_902376_right_fuel : Nat := 1
def small_902376_right_count : Nat := 1
def small_902376_right_encoded : String := "00000001"
theorem small_902376_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_902376_right_root small_902376_right_fuel small_902376_right_count small_902376_right_encoded = true := by
  decide +kernel
theorem small_902376_right_covered : CoveredBy scale carrier boxes small_902376_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_902376_right_root small_902376_right_fuel small_902376_right_count small_902376_right_encoded small_902376_right_checked

theorem cover_902376 : CoveredBy scale carrier boxes root_902376 := by
  apply coveredBy_split_literal root_902376 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.root_902381 small_902376_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.cover_902381
  · exact small_902376_right_covered
#print axioms cover_902376

def root_926497 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_926497 : CoveredBy scale carrier boxes root_926497 := by
  apply coveredBy_split_literal root_926497 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0352.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0353.root coord3 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0352.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0353.covered
#print axioms cover_926497

def root_926492 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_926492_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_926492_right_fuel : Nat := 1
def small_926492_right_count : Nat := 1
def small_926492_right_encoded : String := "00000001"
theorem small_926492_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_926492_right_root small_926492_right_fuel small_926492_right_count small_926492_right_encoded = true := by
  decide +kernel
theorem small_926492_right_covered : CoveredBy scale carrier boxes small_926492_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_926492_right_root small_926492_right_fuel small_926492_right_count small_926492_right_encoded small_926492_right_checked

theorem cover_926492 : CoveredBy scale carrier boxes root_926492 := by
  apply coveredBy_split_literal root_926492 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.root_926497 small_926492_right_root coord1 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.cover_926497
  · exact small_926492_right_covered
#print axioms cover_926492

def root_926491 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_926491_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_926491_right_fuel : Nat := 21
def small_926491_right_count : Nat := 153
def small_926491_right_encoded : String := "135D45030000000105000106135D450700000003045489F71386ACF60000000004548A0513867104000000020CFD9C090F34D0FE00000006000000040F350CFE000000040C9A86FE000000060F87510900000004000000061386AD040CFD9C090F34D0FE00000006000000040F350CFE000000040C9A86FE000000060F875109000000040000000500000002138670F604548A0513867104000000020CFD9C09000000090F350CFE000000040C9A86FE0F878D0900000009000000040F87510900000004000000051386AD040CFD9C090F34D0FE0000000A00000004000000050000000200000000135D8107045489F71386ACF60000000004548A0513867104000000020CFD9C090F34D0FE00000007000000040F350CFE000000040C9A86FE0F878D0900000007000000040F87510900000004028000F813D7ED0307800106128A410700000003067ECE770000000612EA58F6022A458513E1C504000000020B4D43FE00000007000000080000000500000000128A7D0700000007000000030000000113D7B103000000010780010600000008000000071386AD040CFD9C090F34D0FE00000007000000040F350CFE000000040C9A86FE0F878D09028000F80000000A0000000A000000040F875109000000040000000800000002138670F604548A0513867104000000020CFD9C090F34D0FE00000007000000040F350CFE000000040C9A86FE0000000A0F87510900000004028000F813D7ED0307800106128A410700000003000000050000000A0000000113D7B10300000001000000051386AD040CFD9C090F34D0FE0000000A0000000400000005000000020000000000000003"
theorem small_926491_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_926491_right_root small_926491_right_fuel small_926491_right_count small_926491_right_encoded = true := by
  decide +kernel
theorem small_926491_right_covered : CoveredBy scale carrier boxes small_926491_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_926491_right_root small_926491_right_fuel small_926491_right_count small_926491_right_encoded small_926491_right_checked

theorem cover_926491 : CoveredBy scale carrier boxes root_926491 := by
  apply coveredBy_split_literal root_926491 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.root_926492 small_926491_right_root coord1 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.cover_926492
  · exact small_926491_right_covered
#print axioms cover_926491

def root_926485 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_926485_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_926485_left_fuel : Nat := 1
def small_926485_left_count : Nat := 1
def small_926485_left_encoded : String := "00000004"
theorem small_926485_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_926485_left_root small_926485_left_fuel small_926485_left_count small_926485_left_encoded = true := by
  decide +kernel
theorem small_926485_left_covered : CoveredBy scale carrier boxes small_926485_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_926485_left_root small_926485_left_fuel small_926485_left_count small_926485_left_encoded small_926485_left_checked

theorem cover_926485 : CoveredBy scale carrier boxes root_926485 := by
  apply coveredBy_split_literal root_926485 small_926485_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.root_926491 coord4 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_926485_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.cover_926491
#print axioms cover_926485

def root_926403 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_926403_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_926403_left_fuel : Nat := 13
def small_926403_left_count : Nat := 41
def small_926403_left_encoded : String := "120700FE050000F8135D810305000106135D450700000003045489F71386ACF60000000004548A05000000071386AD0404548A09000000071386ACFE00000004078000F80000000A0000000A00000002138670F604548A05000000091386AD0404548A09000000080000000A00000002000000000000000700000001135D45030000000105000106135D450700000003045489F700000007000000090000000700000004"
theorem small_926403_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_926403_left_root small_926403_left_fuel small_926403_left_count small_926403_left_encoded = true := by
  decide +kernel
theorem small_926403_left_covered : CoveredBy scale carrier boxes small_926403_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_926403_left_root small_926403_left_fuel small_926403_left_count small_926403_left_encoded small_926403_left_checked

theorem cover_926403 : CoveredBy scale carrier boxes root_926403 := by
  apply coveredBy_split_literal root_926403 small_926403_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.root_926485 coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_926403_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.cover_926485
#print axioms cover_926403

def root_926397 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_926397_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_926397_left_fuel : Nat := 1
def small_926397_left_count : Nat := 1
def small_926397_left_encoded : String := "00000002"
theorem small_926397_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_926397_left_root small_926397_left_fuel small_926397_left_count small_926397_left_encoded = true := by
  decide +kernel
theorem small_926397_left_covered : CoveredBy scale carrier boxes small_926397_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_926397_left_root small_926397_left_fuel small_926397_left_count small_926397_left_encoded small_926397_left_checked

theorem cover_926397 : CoveredBy scale carrier boxes root_926397 := by
  apply coveredBy_split_literal root_926397 small_926397_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.root_926403 coord2 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_926397_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.cover_926403
#print axioms cover_926397

def root_926396 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_926396 : CoveredBy scale carrier boxes root_926396 := by
  apply coveredBy_split_literal root_926396 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.root_926397 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0354.root coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.cover_926397
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0354.covered
#print axioms cover_926396

def root_926391 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_926391_right_root : ZRayBox := fun j => (#[⟨⟨(-15122432), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_926391_right_fuel : Nat := 1
def small_926391_right_count : Nat := 1
def small_926391_right_encoded : String := "00000000"
theorem small_926391_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_926391_right_root small_926391_right_fuel small_926391_right_count small_926391_right_encoded = true := by
  decide +kernel
theorem small_926391_right_covered : CoveredBy scale carrier boxes small_926391_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_926391_right_root small_926391_right_fuel small_926391_right_count small_926391_right_encoded small_926391_right_checked

theorem cover_926391 : CoveredBy scale carrier boxes root_926391 := by
  apply coveredBy_split_literal root_926391 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.root_926396 small_926391_right_root coord0 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.cover_926396
  · exact small_926391_right_covered
#print axioms cover_926391

def root_924469 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_924469 : CoveredBy scale carrier boxes root_924469 := by
  apply coveredBy_split_literal root_924469 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0351.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.root_926391 coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0351.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.cover_926391
#print axioms cover_924469

def root_924464 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_924464_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_924464_right_fuel : Nat := 1
def small_924464_right_count : Nat := 1
def small_924464_right_encoded : String := "00000004"
theorem small_924464_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_924464_right_root small_924464_right_fuel small_924464_right_count small_924464_right_encoded = true := by
  decide +kernel
theorem small_924464_right_covered : CoveredBy scale carrier boxes small_924464_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_924464_right_root small_924464_right_fuel small_924464_right_count small_924464_right_encoded small_924464_right_checked

theorem cover_924464 : CoveredBy scale carrier boxes root_924464 := by
  apply coveredBy_split_literal root_924464 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.root_924469 small_924464_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.cover_924469
  · exact small_924464_right_covered
#print axioms cover_924464

def root_924463 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_924463 : CoveredBy scale carrier boxes root_924463 := by
  apply coveredBy_split_literal root_924463 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.root_924464 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0355.root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.cover_924464
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0355.covered
#print axioms cover_924463

def root_924457 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_924457_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_924457_left_fuel : Nat := 1
def small_924457_left_count : Nat := 1
def small_924457_left_encoded : String := "00000003"
theorem small_924457_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_924457_left_root small_924457_left_fuel small_924457_left_count small_924457_left_encoded = true := by
  decide +kernel
theorem small_924457_left_covered : CoveredBy scale carrier boxes small_924457_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_924457_left_root small_924457_left_fuel small_924457_left_count small_924457_left_encoded small_924457_left_checked

theorem cover_924457 : CoveredBy scale carrier boxes root_924457 := by
  apply coveredBy_split_literal root_924457 small_924457_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.root_924463 coord3 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_924457_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.cover_924463
#print axioms cover_924457

def root_924456 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_924456 : CoveredBy scale carrier boxes root_924456 := by
  apply coveredBy_split_literal root_924456 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.root_924457 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0356.root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.cover_924457
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0356.covered
#print axioms cover_924456

def root_924451 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_924451_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_924451_right_fuel : Nat := 1
def small_924451_right_count : Nat := 1
def small_924451_right_encoded : String := "00000002"
theorem small_924451_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_924451_right_root small_924451_right_fuel small_924451_right_count small_924451_right_encoded = true := by
  decide +kernel
theorem small_924451_right_covered : CoveredBy scale carrier boxes small_924451_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_924451_right_root small_924451_right_fuel small_924451_right_count small_924451_right_encoded small_924451_right_checked

theorem cover_924451 : CoveredBy scale carrier boxes root_924451 := by
  apply coveredBy_split_literal root_924451 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.root_924456 small_924451_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.cover_924456
  · exact small_924451_right_covered
#print axioms cover_924451

def root_923163 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_923163 : CoveredBy scale carrier boxes root_923163 := by
  apply coveredBy_split_literal root_923163 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0350.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.root_924451 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0350.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.cover_924451
#print axioms cover_923163

def root_923157 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_923157_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_923157_left_fuel : Nat := 1
def small_923157_left_count : Nat := 1
def small_923157_left_encoded : String := "00000001"
theorem small_923157_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_923157_left_root small_923157_left_fuel small_923157_left_count small_923157_left_encoded = true := by
  decide +kernel
theorem small_923157_left_covered : CoveredBy scale carrier boxes small_923157_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_923157_left_root small_923157_left_fuel small_923157_left_count small_923157_left_encoded small_923157_left_checked

theorem cover_923157 : CoveredBy scale carrier boxes root_923157 := by
  apply coveredBy_split_literal root_923157 small_923157_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.root_923163 coord1 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_923157_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.cover_923163
#print axioms cover_923157

def root_902375 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_902375 : CoveredBy scale carrier boxes root_902375 := by
  apply coveredBy_split_literal root_902375 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.root_902376 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.root_923157 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.cover_902376
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.cover_923157
#print axioms cover_902375

def root_902369 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_902369_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_902369_left_fuel : Nat := 1
def small_902369_left_count : Nat := 1
def small_902369_left_encoded : String := "00000000"
theorem small_902369_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_902369_left_root small_902369_left_fuel small_902369_left_count small_902369_left_encoded = true := by
  decide +kernel
theorem small_902369_left_covered : CoveredBy scale carrier boxes small_902369_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_902369_left_root small_902369_left_fuel small_902369_left_count small_902369_left_encoded small_902369_left_checked

theorem cover_902369 : CoveredBy scale carrier boxes root_902369 := by
  apply coveredBy_split_literal root_902369 small_902369_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.root_902375 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_902369_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.cover_902375
#print axioms cover_902369

def root_936849 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_936849 : CoveredBy scale carrier boxes root_936849 := by
  apply coveredBy_split_literal root_936849 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0357.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0358.root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0357.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0358.covered
#print axioms cover_936849

def root_936844 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_936844_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_936844_right_fuel : Nat := 1
def small_936844_right_count : Nat := 1
def small_936844_right_encoded : String := "00000000"
theorem small_936844_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_936844_right_root small_936844_right_fuel small_936844_right_count small_936844_right_encoded = true := by
  decide +kernel
theorem small_936844_right_covered : CoveredBy scale carrier boxes small_936844_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_936844_right_root small_936844_right_fuel small_936844_right_count small_936844_right_encoded small_936844_right_checked

theorem cover_936844 : CoveredBy scale carrier boxes root_936844 := by
  apply coveredBy_split_literal root_936844 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.root_936849 small_936844_right_root coord0 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.cover_936849
  · exact small_936844_right_covered
#print axioms cover_936844

def root_902368 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_902368 : CoveredBy scale carrier boxes root_902368 := by
  apply coveredBy_split_literal root_902368 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.root_902369 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.root_936844 coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.cover_902369
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.cover_936844
#print axioms cover_902368

def root_848512 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_848512 : CoveredBy scale carrier boxes root_848512 := by
  apply coveredBy_split_literal root_848512 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.root_848513 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.root_902368 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.cover_848513
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.cover_902368
#print axioms cover_848512

def root_940958 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_940958 : CoveredBy scale carrier boxes root_940958 := by
  apply coveredBy_split_literal root_940958 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0359.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0360.root coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0359.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0360.covered
#print axioms cover_940958

def root_940957 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_940957 : CoveredBy scale carrier boxes root_940957 := by
  apply coveredBy_split_literal root_940957 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.root_940958 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0361.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.cover_940958
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0361.covered
#print axioms cover_940957

def root_848511 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_848511 : CoveredBy scale carrier boxes root_848511 := by
  apply coveredBy_split_literal root_848511 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.root_848512 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.root_940957 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.cover_848512
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.cover_940957
#print axioms cover_848511

def root_829903 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_829903 : CoveredBy scale carrier boxes root_829903 := by
  apply coveredBy_split_literal root_829903 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.root_829904 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.root_848511 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0021.cover_829904
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.cover_848511
#print axioms cover_829903

def root_749165 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_749165 : CoveredBy scale carrier boxes root_749165 := by
  apply coveredBy_split_literal root_749165 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0020.root_749166 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.root_829903 coord3 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0020.cover_749166
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.cover_829903
#print axioms cover_749165

def root_619973 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_619973 : CoveredBy scale carrier boxes root_619973 := by
  apply coveredBy_split_literal root_619973 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.root_619974 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.root_749165 coord2 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.cover_619974
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.cover_749165
#print axioms cover_619973

def root_494931 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_494931 : CoveredBy scale carrier boxes root_494931 := by
  apply coveredBy_split_literal root_494931 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.root_494932 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.root_619973 coord2 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0016.cover_494932
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.cover_619973
#print axioms cover_494931

def root_3 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3 : CoveredBy scale carrier boxes root_3 := by
  apply coveredBy_split_literal root_3 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0013.root_4 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.root_494931 coord1 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0013.cover_4
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.cover_494931
#print axioms cover_3

def root_952601 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_952601 : CoveredBy scale carrier boxes root_952601 := by
  apply coveredBy_split_literal root_952601 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0363.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0364.root coord3 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0363.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0364.covered
#print axioms cover_952601

def root_952595 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_952595_left_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-16379648)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_952595_left_fuel : Nat := 1
def small_952595_left_count : Nat := 1
def small_952595_left_encoded : String := "00000002"
theorem small_952595_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_952595_left_root small_952595_left_fuel small_952595_left_count small_952595_left_encoded = true := by
  decide +kernel
theorem small_952595_left_covered : CoveredBy scale carrier boxes small_952595_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_952595_left_root small_952595_left_fuel small_952595_left_count small_952595_left_encoded small_952595_left_checked

theorem cover_952595 : CoveredBy scale carrier boxes root_952595 := by
  apply coveredBy_split_literal root_952595 small_952595_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.root_952601 coord2 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_952595_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.cover_952601
#print axioms cover_952595

def root_957255 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_957255 : CoveredBy scale carrier boxes root_957255 := by
  apply coveredBy_split_literal root_957255 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0365.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0366.root coord3 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0365.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0366.covered
#print axioms cover_957255

def root_957250 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_957250_right_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16378880), (-15122432)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_957250_right_fuel : Nat := 1
def small_957250_right_count : Nat := 1
def small_957250_right_encoded : String := "00000002"
theorem small_957250_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_957250_right_root small_957250_right_fuel small_957250_right_count small_957250_right_encoded = true := by
  decide +kernel
theorem small_957250_right_covered : CoveredBy scale carrier boxes small_957250_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_957250_right_root small_957250_right_fuel small_957250_right_count small_957250_right_encoded small_957250_right_checked

theorem cover_957250 : CoveredBy scale carrier boxes root_957250 := by
  apply coveredBy_split_literal root_957250 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.root_957255 small_957250_right_root coord2 false (-16378880)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.cover_957255
  · exact small_957250_right_covered
#print axioms cover_957250

def root_952594 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_952594 : CoveredBy scale carrier boxes root_952594 := by
  apply coveredBy_split_literal root_952594 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.root_952595 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.root_957250 coord2 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.cover_952595
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.cover_957250
#print axioms cover_952594

def root_952588 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_952588_left_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_952588_left_fuel : Nat := 1
def small_952588_left_count : Nat := 1
def small_952588_left_encoded : String := "00000001"
theorem small_952588_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_952588_left_root small_952588_left_fuel small_952588_left_count small_952588_left_encoded = true := by
  decide +kernel
theorem small_952588_left_covered : CoveredBy scale carrier boxes small_952588_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_952588_left_root small_952588_left_fuel small_952588_left_count small_952588_left_encoded small_952588_left_checked

theorem cover_952588 : CoveredBy scale carrier boxes root_952588 := by
  apply coveredBy_split_literal root_952588 small_952588_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.root_952594 coord1 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_952588_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.cover_952594
#print axioms cover_952588

def root_951404 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_951404 : CoveredBy scale carrier boxes root_951404 := by
  apply coveredBy_split_literal root_951404 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0362.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.root_952588 coord1 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0362.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.cover_952588
#print axioms cover_951404

def root_951398 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_951398_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_951398_left_fuel : Nat := 1
def small_951398_left_count : Nat := 1
def small_951398_left_encoded : String := "00000000"
theorem small_951398_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_951398_left_root small_951398_left_fuel small_951398_left_count small_951398_left_encoded = true := by
  decide +kernel
theorem small_951398_left_covered : CoveredBy scale carrier boxes small_951398_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_951398_left_root small_951398_left_fuel small_951398_left_count small_951398_left_encoded small_951398_left_checked

theorem cover_951398 : CoveredBy scale carrier boxes root_951398 := by
  apply coveredBy_split_literal root_951398 small_951398_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.root_951404 coord0 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_951398_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.cover_951404
#print axioms cover_951398

def root_951397 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_951397_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_951397_right_fuel : Nat := 21
def small_951397_right_count : Nat := 185
def small_951397_right_encoded : String := "0F34D0F6045489F91386AD02045489FB1386ACFA00000002045489FD00000007138670FC0CFD9BFF0F350CFE00000004000000060000000700000003138670FA045489FD1386ACFC000000030CFD9BFF0F350CFE000000040C9A86FE0F878CFF00000004000000070F8750FF0AD3577710D13CF600000000067ECE790000000612EA590200000001022A457B0000000600000008000000060000000400000007138670FC0CFD9BFF0F350CFE000000040C9A86FE0F878CFF000000040AD3577710D13CF600000000067ECE790000000612EA590200000001022A457B0000000613E1C4FA022A457D00000007000000060000000210D100F600000006000000000F8750FF00000006000000040F34D0FE00000007000000040000000300000002000000011386710200000001045489FB1386ACFA00000002045489FD00000007138670FC0CFD9BFF0F350CFE000000040C9A86FE000000070F8750FF00000006000000040000000700000003138670FA045489FD1386ACFC000000030CFD9BFF0F350CFE000000040C9A86FE000000070F8750FF0AD3577710D13CF600000000022A457913E20102022A457B00000007000000080000000113E1C50200000001022A457B0000000700000009000000070000000400000007138670FC0CFD9BFF0F350CFE000000040C9A86FE0F878CFF000000040AD3577710D13CF600000000022A457913E20102022A457B0000000713E1C4FA022A457D0000000713E1C4FC0DE7C9FE000000070000000500000003000000020000000113E1C50200000001022A457B0000000713E1C4FA022A457D000000070000000500000002000000070F8750FF0AD3577710D13CF600000000022A457913E20102022A457B00000006000000080000000113E1C50200000001022A457B13E200FA00000002022A457D00000007000000050000000510D100F6022A45790000000613E1C50200000001022A457B0000000600000005000000000000000400000007000000030000000200000000"
theorem small_951397_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_951397_right_root small_951397_right_fuel small_951397_right_count small_951397_right_encoded = true := by
  decide +kernel
theorem small_951397_right_covered : CoveredBy scale carrier boxes small_951397_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_951397_right_root small_951397_right_fuel small_951397_right_count small_951397_right_encoded small_951397_right_checked

theorem cover_951397 : CoveredBy scale carrier boxes root_951397 := by
  apply coveredBy_split_literal root_951397 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.root_951398 small_951397_right_root coord0 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.cover_951398
  · exact small_951397_right_covered
#print axioms cover_951397

def root_951391 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_951391_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_951391_left_fuel : Nat := 1
def small_951391_left_count : Nat := 1
def small_951391_left_encoded : String := "00000004"
theorem small_951391_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_951391_left_root small_951391_left_fuel small_951391_left_count small_951391_left_encoded = true := by
  decide +kernel
theorem small_951391_left_covered : CoveredBy scale carrier boxes small_951391_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_951391_left_root small_951391_left_fuel small_951391_left_count small_951391_left_encoded small_951391_left_checked

theorem cover_951391 : CoveredBy scale carrier boxes root_951391 := by
  apply coveredBy_split_literal root_951391 small_951391_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.root_951397 coord4 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_951391_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.cover_951397
#print axioms cover_951391

def root_951390 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_951390_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_951390_right_fuel : Nat := 7
def small_951390_right_count : Nat := 15
def small_951390_right_encoded : String := "120700FE0CFD9BF70F350CF600000000045489F91386AD02045489FB000000070000000A000000011386710200000001000000070000000700000004"
theorem small_951390_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_951390_right_root small_951390_right_fuel small_951390_right_count small_951390_right_encoded = true := by
  decide +kernel
theorem small_951390_right_covered : CoveredBy scale carrier boxes small_951390_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_951390_right_root small_951390_right_fuel small_951390_right_count small_951390_right_encoded small_951390_right_checked

theorem cover_951390 : CoveredBy scale carrier boxes root_951390 := by
  apply coveredBy_split_literal root_951390 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.root_951391 small_951390_right_root coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.cover_951391
  · exact small_951390_right_covered
#print axioms cover_951390

def root_951385 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_951385_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_951385_right_fuel : Nat := 1
def small_951385_right_count : Nat := 1
def small_951385_right_encoded : String := "00000003"
theorem small_951385_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_951385_right_root small_951385_right_fuel small_951385_right_count small_951385_right_encoded = true := by
  decide +kernel
theorem small_951385_right_covered : CoveredBy scale carrier boxes small_951385_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_951385_right_root small_951385_right_fuel small_951385_right_count small_951385_right_encoded small_951385_right_checked

theorem cover_951385 : CoveredBy scale carrier boxes root_951385 := by
  apply coveredBy_split_literal root_951385 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.root_951390 small_951385_right_root coord3 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.cover_951390
  · exact small_951385_right_covered
#print axioms cover_951385

def root_950627 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_950627_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_950627_left_fuel : Nat := 31
def small_950627_left_count : Nat := 353
def small_950627_left_encoded : String := "12073CFC0000000308A912FF12073CFE000000040CFD9BF70F350CF600000000045489F91386AD02045489FB1386ACFA000000020CFD9BFD0F350CFC000000030CFD9BFF0F350CFE000000040C9A86F60F878CF700000000000000070000000A000000070F34D0FC0CFD9BFF0F350CFE000000040C9A86F60F878CF7000000000C9A86FE000000070F8750FF067ECE790000000512EA59020000000100000007000000040F8750F70C9A86FE0000000A0F8750FF0000000500000004000000000000000700000003138670FA0CFD9BFD0F350CFC000000030CFD9BFF0F350CFE000000040C9A86F60F878CF7000000000C9A86FC0000000A0F8750FD00000007000000030000000A0000000A0F34D0FC0CFD9BFF0F350CFE000000040C9A86F60F878CF7000000000C9A86FE0F878CFF000000040000000A0F8750FF067ECE7912EA95020000000A0000000112EA590200000001022A457B13E200FA000000020AD3577D0000000510D100FC000000070000000313E1C4FA0AD3577D0000000810D100FC000000080000000300000002000000040F8750F70000000A000000000F34D0FE00000007000000040000000300000002000000011386710200000001045489FB1386ACFA000000020CFD9BFD0F350CFC000000030CFD9BFF0F350CFE000000040C9A86F6000000070F8750F70C9A86FC000000070000000700000000000000070F34D0FC0CFD9BFF0F350CFE000000040C9A86F60F878CF700000000000000070F8750F70C9A86FE0F878CFF00000004000000070F8750FF022A457913E20102067ECE7B0000000512EA58FA0AD3577D0000000510D100FC0000000A00000003000000020000000113E1C50200000001067ECE7B0000000712EA58FA0AD3577D0000000710D100FC00000007000000030000000200000004000000000000000700000003138670FA0CFD9BFD0F350CFC000000030CFD9BFF0F350CFE000000040C9A86F60F878CF7000000000C9A86FC000000070F8750FD00000007000000030F8750F70C9A86FC0F878CFD000000030C9A86FE0000000A0F8750FF022A45790000000A13E1C50200000001022A457B000000070000000A000000040F8750FD0000000A0000000300000000000000070F34D0FC0CFD9BFF0F350CFE000000040C9A86F60F878CF7000000000C9A86FE0F878CFF00000004000000070F8750FF022A457913E20102022A457B0000000713E1C4FA0AD3577D0000000710D100FC0000000800000003000000020000000113E1C50200000001022A457B0000000713E1C4FA0AD3577D0000000710D100FC000000090000000300000002000000040F8750F70C9A86FE0F878CFF00000004022A45790000000A13E1C50200000001022A457B000000070000000A0F8750FF022A457913E20102022A457B13E200FA000000020AD3577D0000000A10D100FC0000000A0000000313E1C4FA0AD3577D0000000A10D100FC0000000A00000003000000020000000113E1C50200000001022A457B13E200FA000000020AD3577D10D13CFC000000030B4D43F6000000070000000A10D100FC0B4D43F610804CF7000000000B4D43FE0000000700000009108010F70B4D43FE0000000A108010FF011523390000000A13F8590200000001033F67BB000000090000000900000004000000000000000313E1C4FA0AD3577D10D13CFC000000030000000A10D100FC0B4D43F610804CF7000000000B4D43FE0000000A000000080000000A000000030000000200000004000000000F34D0FE000000070000000400000003000000020F34D0F6045489F91386AD02045489FB00000007138670FA0CFD9BFD000000070F34D0FC000000070000000300000002000000011386710200000001045489FB00000007138670FA0CFD9BFD000000070F34D0FC00000007000000030000000200000000120700FE0000000700000004"
theorem small_950627_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_950627_left_root small_950627_left_fuel small_950627_left_count small_950627_left_encoded = true := by
  decide +kernel
theorem small_950627_left_covered : CoveredBy scale carrier boxes small_950627_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_950627_left_root small_950627_left_fuel small_950627_left_count small_950627_left_encoded small_950627_left_checked

theorem cover_950627 : CoveredBy scale carrier boxes root_950627 := by
  apply coveredBy_split_literal root_950627 small_950627_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.root_951385 coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_950627_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.cover_951385
#print axioms cover_950627

def root_950622 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_950622_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_950622_right_fuel : Nat := 1
def small_950622_right_count : Nat := 1
def small_950622_right_encoded : String := "00000002"
theorem small_950622_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_950622_right_root small_950622_right_fuel small_950622_right_count small_950622_right_encoded = true := by
  decide +kernel
theorem small_950622_right_covered : CoveredBy scale carrier boxes small_950622_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_950622_right_root small_950622_right_fuel small_950622_right_count small_950622_right_encoded small_950622_right_checked

theorem cover_950622 : CoveredBy scale carrier boxes root_950622 := by
  apply coveredBy_split_literal root_950622 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.root_950627 small_950622_right_root coord2 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022.cover_950627
  · exact small_950622_right_covered
#print axioms cover_950622

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0022
