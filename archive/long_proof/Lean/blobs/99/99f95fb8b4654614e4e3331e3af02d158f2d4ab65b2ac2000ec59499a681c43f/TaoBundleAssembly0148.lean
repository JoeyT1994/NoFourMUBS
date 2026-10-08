import TaoBundleAssembly0146
import TaoBundleAssembly0147
import TaoBundleChunkBatch0568
import TaoBundleChunkBatch0571
import TaoBundleChunkBatch0572
import TaoBundleChunkBatch0573
import TaoBundleChunkBatch0574
import TaoBundleChunkBatch0575
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0148
def root_6059755 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6059755_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6059755_right_fuel : Nat := 20
def small_6059755_right_count : Nat := 125
def small_6059755_right_encoded : String := "135D450900000004045489F71386AD0004548A03138670F800000006000000011386ACF80000000104548A050000000A1386ACFA00000002078000FC128A7D07028000FE13D7ED09067ECE770000000A12EA590000000000067ECE83000000080000000A000000040000000800000003128A410700000003028000FE13D7ED09067ECE770000000A12EA590000000000067ECE83000000060000000A000000040000000600000000138671000000000004548A03000000061386ACF80000000104548A05000000061386ACFA00000002078000FC128A7D07028000FE13D7ED09022A457713E20100067ECE8312EA58F8067ECE8500000006000000080000000112EA94F800000001067ECE850000000A000000080000000013E1C50000000000067ECE8312EA58F8067ECE8500000006000000070000000112EA94F800000001067ECE8512EA58FA0000000A0000000212EA94FA0000000208C000FC0000000811FBE90700000003000000080000000413D7B10900000004022A45770000000A13E1C50000000000067ECE830000000612EA94F800000001067ECE85000000060000000700000003128A410700000003028000FE13D7ED09022A457713E20100067ECE830000000612EA94F800000001067ECE850000000612EA94FA000000020000000600000000000000060000000400000006"
theorem small_6059755_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6059755_right_root small_6059755_right_fuel small_6059755_right_count small_6059755_right_encoded = true := by
  decide +kernel
theorem small_6059755_right_covered : CoveredBy scale carrier boxes small_6059755_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6059755_right_root small_6059755_right_fuel small_6059755_right_count small_6059755_right_encoded small_6059755_right_checked

theorem cover_6059755 : CoveredBy scale carrier boxes root_6059755 := by
  apply coveredBy_split_literal root_6059755 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0147.root_6059756 small_6059755_right_root coord4 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0147.cover_6059756
  · exact small_6059755_right_covered
#print axioms cover_6059755

def root_6059750 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6059750_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6059750_right_fuel : Nat := 1
def small_6059750_right_count : Nat := 1
def small_6059750_right_encoded : String := "00000003"
theorem small_6059750_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6059750_right_root small_6059750_right_fuel small_6059750_right_count small_6059750_right_encoded = true := by
  decide +kernel
theorem small_6059750_right_covered : CoveredBy scale carrier boxes small_6059750_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6059750_right_root small_6059750_right_fuel small_6059750_right_count small_6059750_right_encoded small_6059750_right_checked

theorem cover_6059750 : CoveredBy scale carrier boxes root_6059750 := by
  apply coveredBy_split_literal root_6059750 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0148.root_6059755 small_6059750_right_root coord3 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0148.cover_6059755
  · exact small_6059750_right_covered
#print axioms cover_6059750

def root_6059749 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6059749_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6059749_right_fuel : Nat := 21
def small_6059749_right_count : Nat := 123
def small_6059749_right_encoded : String := "135D450700000003050000FE135D8109045489F71386AD0004548A03138670F800000006000000011386ACF80000000104548A05138670FA00000006000000021386ACFA00000002028000FC13D7ED07078000FE128A7D09067ECE770000000912EA590000000000067ECE83000000090000000700000004128A410900000004067ECE770000000912EA590000000000067ECE830000000612EA94F800000001067ECE8500000006000000090000000313D7B10700000003078000FE00000009128A4109000000040000000600000000138671000000000004548A03000000061386ACF80000000104548A05000000061386ACFA00000002028000FC13D7ED07078000FE128A7D09022A457713E20100067ECE8300000009000000070000000013E1C50000000000067ECE8312EA58F8067ECE8500000006000000090000000112EA94F800000001067ECE850000000712EA94FA0000000203C000FC000000070000000700000004128A410900000004022A457713E20100067ECE830000000612EA94F800000001067ECE850000000612EA94FA000000020000000600000000000000060000000313D7B10700000003078000FE128A7D09022A45770000000913E1C50000000000067ECE830000000600000007000000040000000600000004135D45090000000400000006"
theorem small_6059749_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6059749_right_root small_6059749_right_fuel small_6059749_right_count small_6059749_right_encoded = true := by
  decide +kernel
theorem small_6059749_right_covered : CoveredBy scale carrier boxes small_6059749_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6059749_right_root small_6059749_right_fuel small_6059749_right_count small_6059749_right_encoded small_6059749_right_checked

theorem cover_6059749 : CoveredBy scale carrier boxes root_6059749 := by
  apply coveredBy_split_literal root_6059749 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0148.root_6059750 small_6059749_right_root coord3 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0148.cover_6059750
  · exact small_6059749_right_covered
#print axioms cover_6059749

def root_6059744 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6059744_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6059744_right_fuel : Nat := 1
def small_6059744_right_count : Nat := 1
def small_6059744_right_encoded : String := "00000002"
theorem small_6059744_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6059744_right_root small_6059744_right_fuel small_6059744_right_count small_6059744_right_encoded = true := by
  decide +kernel
theorem small_6059744_right_covered : CoveredBy scale carrier boxes small_6059744_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6059744_right_root small_6059744_right_fuel small_6059744_right_count small_6059744_right_encoded small_6059744_right_checked

theorem cover_6059744 : CoveredBy scale carrier boxes root_6059744 := by
  apply coveredBy_split_literal root_6059744 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0148.root_6059749 small_6059744_right_root coord2 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0148.cover_6059749
  · exact small_6059744_right_covered
#print axioms cover_6059744

def root_6059743 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6059743 : CoveredBy scale carrier boxes root_6059743 := by
  apply coveredBy_split_literal root_6059743 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0148.root_6059744 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2282.root coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0148.cover_6059744
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2282.covered
#print axioms cover_6059743

def root_6059738 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6059738_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6059738_right_fuel : Nat := 1
def small_6059738_right_count : Nat := 1
def small_6059738_right_encoded : String := "00000001"
theorem small_6059738_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6059738_right_root small_6059738_right_fuel small_6059738_right_count small_6059738_right_encoded = true := by
  decide +kernel
theorem small_6059738_right_covered : CoveredBy scale carrier boxes small_6059738_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6059738_right_root small_6059738_right_fuel small_6059738_right_count small_6059738_right_encoded small_6059738_right_checked

theorem cover_6059738 : CoveredBy scale carrier boxes root_6059738 := by
  apply coveredBy_split_literal root_6059738 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0148.root_6059743 small_6059738_right_root coord1 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0148.cover_6059743
  · exact small_6059738_right_covered
#print axioms cover_6059738

def root_6059737 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6059737 : CoveredBy scale carrier boxes root_6059737 := by
  apply coveredBy_split_literal root_6059737 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0148.root_6059738 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2283.root coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0148.cover_6059738
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2283.covered
#print axioms cover_6059737

def root_6059731 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6059731_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6059731_left_fuel : Nat := 1
def small_6059731_left_count : Nat := 1
def small_6059731_left_encoded : String := "00000000"
theorem small_6059731_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6059731_left_root small_6059731_left_fuel small_6059731_left_count small_6059731_left_encoded = true := by
  decide +kernel
theorem small_6059731_left_covered : CoveredBy scale carrier boxes small_6059731_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6059731_left_root small_6059731_left_fuel small_6059731_left_count small_6059731_left_encoded small_6059731_left_checked

theorem cover_6059731 : CoveredBy scale carrier boxes root_6059731 := by
  apply coveredBy_split_literal root_6059731 small_6059731_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0148.root_6059737 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_6059731_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0148.cover_6059737
#print axioms cover_6059731

def root_6058767 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6058767_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6058767_left_fuel : Nat := 24
def small_6058767_left_count : Nat := 463
def small_6058767_left_encoded : String := "12073D0008A91303120700F808A91305120700FA050000FC135D8107050000FE135D81090CFD9BF70F350D0004548A03000000091386ACF80000000104548A05000000051386ACFA000000020C9A87000000000700000009000000000F34D1000000000004548A03138670F804548A050000000500000009000000011386ACF80000000104548A05138670FA0000000A000000021386ACFA00000002078000FC128A7D07078000FE128A7D090AD357770000000910D1010000000000067ECE830000000500000007000000040000000A00000003128A410700000003078000FE00000009128A4109000000040AD357770000000910D10100000000000000000900000004135D4509000000040CFD9BF70000000A0F34D1000000000004548A03000000050000000A00000003135D450700000003050000FE135D81090CFD9BF7000000090F34D1000000000004548A03000000051386ACF80000000104548A05000000050000000900000004135D4509000000040CFD9BF700000005000000060000000212073CFA00000002050000FC135D8107050000FE135D81090CFD9BF7000000080F34D1000000000004548A03000000081386ACF8000000010CFD9C050F34D0FA078000FC00000008128A410700000003078000FE00000008000000080000000200000008000000040000000800000003135D450700000003050000FE135D81090CFD9BF7000000090F34D1000000000004548A03000000091386ACF8000000010CFD9C050F34D0FA00000009000000020000000900000004135D4509000000040CFD9BF70F350D0000000008000000000F34D1000000000004548A03000000081386ACF8000000010CFD9C050F34D0FA028000FC000000080000000900000002000000080000000112073CF80000000108A91305120700FA050000FC135D8107050000FE135D81090CFD9BF7000000070F34D100000000000CFD9C030F34D0F804548A05000000071386ACFA00000002078000FC128A7D07000000070000000300000007000000010000000700000004135D4509000000040CFD9BF70000000A0F34D100000000000CFD9C030F34D0F80000000A000000010000000A00000003135D450700000003050000FE00000007135D4509000000040CFD9BF70F350D0000000007000000000F34D100000000000CFD9C030F34D0F804548A05000000061386ACFA00000002028000FC0000000A13D7B10700000003028000FE000000070000000600000001000000070000000212073CFA00000002050000FC135D8107050000FE135D81090CFD9BF70F350D000CFD9C030F34D0F800000008000000010F350CF80000000100000007000000000F34D100000000000CFD9C030F34D0F80CFD9C050F34D0FA078000FC128A7D07078000FE000000070000000800000003128A410700000003078000FE00000007128A4109000000040AD3577700000007000000070000000200000008000000010F350CF8000000010CFD9C05000000070F350CFA000000020C9A86F8000000080000000700000004135D4509000000040CFD9BF70F350D000CFD9C03000000080F350CF8000000010CFD9C050F34D0FA000000070000000200000008000000000F34D100000000000CFD9C030F34D0F80CFD9C050F34D0FA078000FC00000008128A410700000003028000FE00000008000000080000000200000008000000010F350CF8000000010CFD9C050F34D0FA0C9A86F80F878D03078000FC00000008128A410700000003028000FE0000000700000008000000010F8751030000000100000007000000020000000500000003135D450700000003050000FE135D81090CFD9BF70F350D000CFD9C030F34D0F80CFD9C0500000007000000090000000100000007000000000F34D100000000000CFD9C030F34D0F80CFD9C050F34D0FA028000FC0000000700000007000000020F350CFA000000020C9A86FA0F878D05028000FC13D7ED07000000080000000300000007000000020F8751050000000200000008000000010F350CF8000000010CFD9C05000000070000000500000004135D4509000000040CFD9BF70F350D000CFD9C030F34D0F80CFD9C050F34D0FA0C9A8700000000070F878CF700000000028000FC00000008000000070000000200000008000000010F350CF8000000010CFD9C05000000070F350CFA0000000200000007000000000F34D100000000000CFD9C030F34D0F80CFD9C050F34D0FA028000FC13D7ED07028000FE13D7ED090AD3577710D13D00000000070000000010D10100000000000AD3578300000008000000070000000413D7B109000000040AD3577700000008000000080000000313D7B10700000003028000FE13D7ED090AD3577700000007000000070000000413D7B109000000040AD3577710D13D000AD3578300000008000000070000000010D10100000000000AD3578310D100F8000000060000000110D13CF80000000100000007000000020F350CFA0000000200000008000000010F350CF8000000010CFD9C050F34D0FA00000007000000020000000500000000"
theorem small_6058767_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6058767_left_root small_6058767_left_fuel small_6058767_left_count small_6058767_left_encoded = true := by
  decide +kernel
theorem small_6058767_left_covered : CoveredBy scale carrier boxes small_6058767_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6058767_left_root small_6058767_left_fuel small_6058767_left_count small_6058767_left_encoded small_6058767_left_checked

theorem cover_6058767 : CoveredBy scale carrier boxes root_6058767 := by
  apply coveredBy_split_literal root_6058767 small_6058767_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0148.root_6059731 coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_6058767_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0148.cover_6059731
#print axioms cover_6058767

def root_6058761 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6058761_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6058761_left_fuel : Nat := 1
def small_6058761_left_count : Nat := 1
def small_6058761_left_encoded : String := "00000004"
theorem small_6058761_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6058761_left_root small_6058761_left_fuel small_6058761_left_count small_6058761_left_encoded = true := by
  decide +kernel
theorem small_6058761_left_covered : CoveredBy scale carrier boxes small_6058761_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6058761_left_root small_6058761_left_fuel small_6058761_left_count small_6058761_left_encoded small_6058761_left_checked

theorem cover_6058761 : CoveredBy scale carrier boxes root_6058761 := by
  apply coveredBy_split_literal root_6058761 small_6058761_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0148.root_6058767 coord4 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_6058761_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0148.cover_6058767
#print axioms cover_6058761

def root_6052989 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6052989 : CoveredBy scale carrier boxes root_6052989 := by
  apply coveredBy_split_literal root_6052989 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0147.root_6052990 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0148.root_6058761 coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0147.cover_6052990
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0148.cover_6058761
#print axioms cover_6052989

def root_6052983 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6052983_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6052983_left_fuel : Nat := 1
def small_6052983_left_count : Nat := 1
def small_6052983_left_encoded : String := "00000003"
theorem small_6052983_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6052983_left_root small_6052983_left_fuel small_6052983_left_count small_6052983_left_encoded = true := by
  decide +kernel
theorem small_6052983_left_covered : CoveredBy scale carrier boxes small_6052983_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6052983_left_root small_6052983_left_fuel small_6052983_left_count small_6052983_left_encoded small_6052983_left_checked

theorem cover_6052983 : CoveredBy scale carrier boxes root_6052983 := by
  apply coveredBy_split_literal root_6052983 small_6052983_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0148.root_6052989 coord3 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_6052983_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0148.cover_6052989
#print axioms cover_6052983

def root_6038757 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6038757 : CoveredBy scale carrier boxes root_6038757 := by
  apply coveredBy_split_literal root_6038757 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0147.root_6038758 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0148.root_6052983 coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0147.cover_6038758
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0148.cover_6052983
#print axioms cover_6038757

def root_6038752 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6038752_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6038752_right_fuel : Nat := 1
def small_6038752_right_count : Nat := 1
def small_6038752_right_encoded : String := "00000002"
theorem small_6038752_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6038752_right_root small_6038752_right_fuel small_6038752_right_count small_6038752_right_encoded = true := by
  decide +kernel
theorem small_6038752_right_covered : CoveredBy scale carrier boxes small_6038752_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6038752_right_root small_6038752_right_fuel small_6038752_right_count small_6038752_right_encoded small_6038752_right_checked

theorem cover_6038752 : CoveredBy scale carrier boxes root_6038752 := by
  apply coveredBy_split_literal root_6038752 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0148.root_6038757 small_6038752_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0148.cover_6038757
  · exact small_6038752_right_covered
#print axioms cover_6038752

def root_6038751 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6038751 : CoveredBy scale carrier boxes root_6038751 := by
  apply coveredBy_split_literal root_6038751 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0148.root_6038752 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2284.root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0148.cover_6038752
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2284.covered
#print axioms cover_6038751

def root_6038746 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6038746_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6038746_right_fuel : Nat := 1
def small_6038746_right_count : Nat := 1
def small_6038746_right_encoded : String := "00000001"
theorem small_6038746_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6038746_right_root small_6038746_right_fuel small_6038746_right_count small_6038746_right_encoded = true := by
  decide +kernel
theorem small_6038746_right_covered : CoveredBy scale carrier boxes small_6038746_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6038746_right_root small_6038746_right_fuel small_6038746_right_count small_6038746_right_encoded small_6038746_right_checked

theorem cover_6038746 : CoveredBy scale carrier boxes root_6038746 := by
  apply coveredBy_split_literal root_6038746 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0148.root_6038751 small_6038746_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0148.cover_6038751
  · exact small_6038746_right_covered
#print axioms cover_6038746

def root_6038745 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6038745 : CoveredBy scale carrier boxes root_6038745 := by
  apply coveredBy_split_literal root_6038745 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0148.root_6038746 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2285.root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0148.cover_6038746
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2285.covered
#print axioms cover_6038745

def root_6038739 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6038739_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6038739_left_fuel : Nat := 1
def small_6038739_left_count : Nat := 1
def small_6038739_left_encoded : String := "00000000"
theorem small_6038739_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6038739_left_root small_6038739_left_fuel small_6038739_left_count small_6038739_left_encoded = true := by
  decide +kernel
theorem small_6038739_left_covered : CoveredBy scale carrier boxes small_6038739_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6038739_left_root small_6038739_left_fuel small_6038739_left_count small_6038739_left_encoded small_6038739_left_checked

theorem cover_6038739 : CoveredBy scale carrier boxes root_6038739 := by
  apply coveredBy_split_literal root_6038739 small_6038739_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0148.root_6038745 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6038739_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0148.cover_6038745
#print axioms cover_6038739

def root_6037781 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6037781_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6037781_left_fuel : Nat := 22
def small_6037781_left_count : Nat := 457
def small_6037781_left_encoded : String := "1151E8F70A0000F8115225030A0000FA115225050A0000FC115225070A0000FE1152250908A91303120700F808A91305120700FA08A91307120700FC000000080000000312073CFC0000000308A913090000000712073CFE000000040500010000000007135D80F70000000004548A0300000008000000070000000212073CFA0000000208A913070000000812073CFC0000000308A91309120700FE0500010000000007135D80F70000000004548A0300000008000000070000000412073CFE00000004000000080000000112073CF80000000108A91305120700FA08A91307120700FC08A913090000000712073CFE000000040500010000000008135D80F7000000000CFD9C0300000008000000070000000312073CFC00000003000000070000000212073CFA0000000208A913070000000712073CFC0000000308A913090000000800000007000000041151E9090000000408A91303120700F808A91305120700FA08A91307000000080000000800000002000000080000000112073CF80000000108A91305120700FA08A91307120700FC0500010000000008135D80F700000000050000FE135D81090000000800000004000000080000000312073CFC00000003050001000000000A135D80F700000000050000FE135D81090CFD9C030F34D0F8000000070000000100000007000000040000000A0000000212073CFA0000000208A91307120700FC000000080000000312073CFC000000030500010000000008135D80F70000000000000008000000031151E907000000030A0000FE1152250908A91303120700F808A91305120700FA08A9130900000007000000070000000212073CFA0000000208A91309120700FE0500010000000007135D80F700000000050000FC135D81070000000700000003000000070000000412073CFE000000040500010000000009135D80F700000000050000FC135D810704548A03000000080000000800000003000000090000000112073CF80000000108A913050000000712073CFA0000000208A91309120700FE000000070000000412073CFE000000040500010000000007135D80F70000000000000007000000041151E9090000000408A91303120700F808A91305120700FA05000100135D44F70000000900000000135D80F700000000050000FC0000000A0000000900000002000000080000000112073CF80000000108A913050000000712073CFA0000000205000100135D44F7050000FC000000070000000700000000135D80F700000000050000FC135D8107050000FE000000070000000800000003135D450700000003050000FE00000007135D4509000000040CFD9C030000000800000007000000021151E905000000020A0000FC115225070A0000FE1152250908A91303120700F808A91307120700FC000000080000000312073CFC0000000308A91309120700FE0500010000000007000000060000000412073CFE000000040500010000000008000000080000000112073CF80000000108A913070000000712073CFC0000000308A91309120700FE000000060000000400000008000000041151E9090000000400000008000000031151E907000000030A0000FE1152250908A91303120700F808A91309120700FE05000100135D44F70000000900000000135D80F700000000050000FA00000009135D450500000002050000FC000000060000000500000004000000090000000112073CF80000000108A91309120700FE05000100135D44F7050000FA00000007135D4505000000020000000600000000135D80F700000000050000FA00000006000000060000000412073CFE000000040500010000000007135D80F700000000050000FA0000000700000007000000041151E9090000000400000008000000011151E903000000010A0000FA115225050A0000FC115225070A0000FE1152250908A91305120700FA08A91307120700FC08A913090000000612073CFE000000040500010000000008000000060000000312073CFC0000000308A913090000000712073CFE000000040500010000000007000000070000000212073CFA0000000208A91307120700FC000000060000000300000007000000041151E9090000000408A91305120700FA08A91307120700FC05000100135D44F70000000A00000000135D80F700000000050000F80000000A135D450300000001050000FE0000000600000005000000030000000A0000000212073CFA0000000208A91307120700FC05000100135D44F7050000F800000007135D4503000000010000000600000000135D80F700000000050000F800000006000000060000000312073CFC000000030500010000000007135D80F700000000050000F80000000700000008000000031151E907000000030A0000FE000000071151E9090000000400000007000000021151E905000000020A0000FC115225070A0000FE000000071151E9090000000400000007000000031151E907000000030A0000FE000000080000000800000000"
theorem small_6037781_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6037781_left_root small_6037781_left_fuel small_6037781_left_count small_6037781_left_encoded = true := by
  decide +kernel
theorem small_6037781_left_covered : CoveredBy scale carrier boxes small_6037781_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6037781_left_root small_6037781_left_fuel small_6037781_left_count small_6037781_left_encoded small_6037781_left_checked

theorem cover_6037781 : CoveredBy scale carrier boxes root_6037781 := by
  apply coveredBy_split_literal root_6037781 small_6037781_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0148.root_6038739 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_6037781_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0148.cover_6038739
#print axioms cover_6037781

def root_6036135 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6036135 : CoveredBy scale carrier boxes root_6036135 := by
  apply coveredBy_split_literal root_6036135 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2272.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0148.root_6037781 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2272.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0148.cover_6037781
#print axioms cover_6036135

def root_6078258 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6078258_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6078258_right_fuel : Nat := 23
def small_6078258_right_count : Nat := 449
def small_6078258_right_encoded : String := "1151E903000000010A0000FA115225050A0000FC115225070A0001081151E9090000000408A912F712073D0008A91305120700FA08A91307120700FC050000F800000009000000090000000312073CFC00000003050000F80000000A135D4503000000010000000A0000000212073CFA0000000208A91307120700FC050000F8135D810305000108000000090000000900000001000000090000000312073CFC00000003050000F8135D810305000108135D4509000000040CFD9BF70F350D000CFD9C050F34D0FA0000000A0000000200000008000000000F34D100000000000CFD9C050F34D0FA0CFD9C0700000009000000080000000200000008135D81090CFD9BF70F350D000CFD9C050000000A00000008000000000F34D10000000000000000090000000400000001135D45030000000105000108135D4509000000040CFD9BF70F350D000CFD9C050F34D0FA0000000A0000000200000008000000000F34D100000000000CFD9C050000000900000008135D81090CFD9BF70F350D000CFD9C05000000090F350CFA0000000200000008000000000F34D10000000000000000090000000400000000120701000000000008A91305120700FA08A913070000000912073CFC00000003050000F800000009135D450300000001000000090000000212073CFA0000000208A913070000000912073CFC00000003050000F8135D810305000108135D450900000004000000090000000900000001135D450300000001000000091152250908A912F712073D0008A91305120700FA0000000A0000000212073CFA0000000208A91307120700FC000000090000000312073CFC0000000308A9130912070108000000040000000912073D08050000F8135D81030CFD9BF70000000A0000000900000001135D4503000000010CFD9BF70000000A000000090000000400000000120701000000000008A91305120700FA00000009000000020000000900000004000000031151E907000000030A0001081151E9090000000408A912F712073D0008A91305120700FA0000000A0000000212073CFA00000002050000F8135D8103050000FC135D810705000108135D4509000000040CFD9BF70F350D00000000080000000000000005135D81090CFD9BF70000000A000000080000000400000003135D45070000000305000108135D4509000000040CFD9BF70F350D000CFD9C0500000007000000050000000000000005135D81090CFD9BF70000000A000000050000000400000001135D450300000001050000FC135D810705000108135D4509000000040CFD9BF70F350D00000000070000000000000005135D81090CFD9BF70000000A000000050000000400000003135D45070000000305000108135D45090000000400000005135D81090CFD9BF70000000A000000050000000400000000120701000000000008A91305120700FA050000F8135D8103050000FC135D810705000108135D450900000004045489F70000000A000000050000000900000003135D45070000000305000108135D450900000004045489F70000000A000000050000000A00000001135D450300000001050000FC135D810705000108135D450900000004045489F70000000A000000050000000900000003135D45070000000305000108135D450900000004000000050000000500000002000000051152250908A912F712073D0008A913050000000A12073CFA0000000208A9130912070108000000040000000A12073D08050000F80000000A135D4503000000010000000A0000000400000000120701000000000008A91305120700FA0000000A0000000212073CFA0000000208A913090000000812073D08050000F8135D8103050000FC00000008135D450700000003045489F71386AD000CFD9C050000000900000005000000000000000500000001135D450300000001000000090000000400000004000000021151E905000000020A0000FC115225070A0001081151E9090000000408A912F712073D0008A91307120700FC050000F800000008135D45030000000100000006000000030000000800000000120701000000000008A9130700000008000000051152250908A912F712073D0008A91307120700FC08A913090000000912073D08050000F8135D8103050000FA135D81050000000900000002135D4505000000020CFD9BF70F350D0004548A07000000060000000800000000000000080000000100000009000000040000000312073CFC0000000308A913090000000912073D08050000F8135D8103050000FA135D81050CFD9BF70000000900000008000000020000000800000001000000090000000400000000120701000000000008A91307120700FC00000009000000030000000800000004000000031151E907000000030A0001081151E90900000004000000051152250908A912F712073D0008A913090000000800000008000000000000000800000004"
theorem small_6078258_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6078258_right_root small_6078258_right_fuel small_6078258_right_count small_6078258_right_encoded = true := by
  decide +kernel
theorem small_6078258_right_covered : CoveredBy scale carrier boxes small_6078258_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6078258_right_root small_6078258_right_fuel small_6078258_right_count small_6078258_right_encoded small_6078258_right_checked

theorem cover_6078258 : CoveredBy scale carrier boxes root_6078258 := by
  apply coveredBy_split_literal root_6078258 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2286.root small_6078258_right_root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2286.covered
  · exact small_6078258_right_covered
#print axioms cover_6078258

def root_6078252 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6078252_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6078252_left_fuel : Nat := 1
def small_6078252_left_count : Nat := 1
def small_6078252_left_encoded : String := "00000000"
theorem small_6078252_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6078252_left_root small_6078252_left_fuel small_6078252_left_count small_6078252_left_encoded = true := by
  decide +kernel
theorem small_6078252_left_covered : CoveredBy scale carrier boxes small_6078252_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6078252_left_root small_6078252_left_fuel small_6078252_left_count small_6078252_left_encoded small_6078252_left_checked

theorem cover_6078252 : CoveredBy scale carrier boxes root_6078252 := by
  apply coveredBy_split_literal root_6078252 small_6078252_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0148.root_6078258 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6078252_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0148.cover_6078258
#print axioms cover_6078252

def root_6077676 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6077676_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6077676_left_fuel : Nat := 21
def small_6077676_left_count : Nat := 275
def small_6077676_left_encoded : String := "1151E8F70A0000F8115225030A0000FA115225050A0000FC115225070A0001081151E9090000000408A91303120700F808A91305120700FA08A91307000000080000000800000002000000080000000112073CF80000000108A91305120700FA0000000A0000000212073CFA0000000208A91307120700FC05000100135D44F705000108000000080000000A00000000135D80F70000000005000108000000080000000A00000003000000081152250908A91303120700F808A913050000000512073CFA0000000208A91307000000050000000A0000000112073CF80000000108A913050000000A12073CFA0000000208A91307120700FC0000000A000000030000000A00000004000000031151E907000000030A0001081151E9090000000408A91303120700F808A913050000000A000000080000000112073CF80000000108A913050000000A12073CFA000000020500010000000008135D80F700000000050000FC00000008135D4507000000030000000A0000000A000000021151E905000000020A0000FC115225070A0001081151E9090000000408A91303120700F8000000080000000112073CF80000000108A91307120700FC05000100000000080000000800000003000000081152250908A91303120700F808A913070000000512073CFC0000000308A9130900000005000000080000000112073CF80000000108A91307120700FC08A913090000000512073D0805000100135D44F70000000500000000135D80F700000000050000FA00000005135D4505000000020CFD9C03000000050000000A000000040000000312073CFC0000000308A9130912070108000000040000000A12073D08050001000000000A000000080000000400000004000000031151E907000000030A000108000000081152250908A91303120700F800000008000000010000000800000004000000011151E903000000010A0000FA115225050A0000FC115225070A0001081151E9090000000408A91305120700FA0000000A0000000212073CFA0000000208A91307120700FC05000100135D44F7050000F80000000A135D4503000000010000000A00000000135D80F700000000050000F8135D810305000108135D4509000000040CFD9C0500000007000000060000000A00000001135D450300000001000000090000000312073CFC00000003050001000000000A135D80F700000000050000F80000000A135D4503000000010000000A0000000A000000031151E907000000030000000A000000021151E905000000020A0000FC115225070A0001081151E9090000000408A913070000000712073CFC000000030500010000000007000000081152250908A91307120700FC08A9130912070108000000040000000A12073D08050001000000000A135D80F700000000050000F80000000A135D450300000001050000FA000000090000000700000004000000030000000A00000004000000031151E907000000030A000108000000080000000A00000000"
theorem small_6077676_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6077676_left_root small_6077676_left_fuel small_6077676_left_count small_6077676_left_encoded = true := by
  decide +kernel
theorem small_6077676_left_covered : CoveredBy scale carrier boxes small_6077676_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6077676_left_root small_6077676_left_fuel small_6077676_left_count small_6077676_left_encoded small_6077676_left_checked

theorem cover_6077676 : CoveredBy scale carrier boxes root_6077676 := by
  apply coveredBy_split_literal root_6077676 small_6077676_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0148.root_6078252 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_6077676_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0148.cover_6078252
#print axioms cover_6077676

def root_6076834 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6076834_left_root : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6076834_left_fuel : Nat := 22
def small_6076834_left_count : Nat := 385
def small_6076834_left_encoded : String := "0A0001001151E8F70A0000F8115225030A0000FA115225050A0000FC115225070A0001081151E8FF08A91303120700F808A91305120700FA08A91307120700FC00000006000000030000000A0000000212073CFA0000000208A9130700000006000000050000000112073CF80000000108A91305120700FA0000000A000000020000000500000004115224FF0000000400000005000000031151E9070000000300000005000000021151E905000000020A0000FC1152250700000005000000031151E907000000030A0001081151E8FF0000000500000004115224FF0000000408A91303120700F800000005000000010000000A000000011151E903000000010A0000FA115225050A0000FC1152250700000005000000031151E907000000030000000A000000021151E905000000020A0000FC115225070A0001081151E8FF0000000500000004115224FF0000000408A91307120700FC000000050000000300000009000000031151E907000000030A0001081151E8FF00000005000000040000000A00000000115224F7000000000A0000F8115225030A0000FA115225050A0000FC115225070A0001081151E8FF0000000500000004115224FF0000000408A912F712073D0008A913030000000512073CF80000000108A913050000000512073CFA0000000208A913070000000512073CFC0000000308A912FF000000050000000800000000120701000000000008A91303120700F8000000050000000112073CF80000000108A91305120700FA000000050000000212073CFA0000000208A913070000000612073CFC0000000300000008000000031151E907000000030A0001081151E8FF0000000500000004115224FF0000000408A912F712073D0008A91303120700F8000000050000000112073CF8000000010000000800000000120701000000000008A91303120700F808A91305120700FA000000050000000212073CFA0000000208A912FF12073D080000000500000004000000080000000112073CF80000000108A91305120700FA0000000A0000000200000008000000021151E905000000020A0000FC115225070A0001081151E8FF0000000500000004115224FF0000000408A912F712073D0008A91303120700F8000000050000000112073CF80000000108A91307120700FC000000050000000312073CFC0000000308A912FF0000000912070108000000040000000900000000120701000000000008A913030000000900000009000000031151E907000000030A0001081151E8FF08A912F712073D0008A9130300000005000000060000000012070100000000000000000600000004115224FF0000000408A912F712073D0008A91303120700F808A912FF12073D08050000FA00000005135D450500000002050000FC0000000500000007000000041207010800000004000000080000000112073CF80000000108A912FF12073D08050000FA0000000800000009000000040000000800000000120701000000000008A91303120700F808A912FF000000091207010800000004000000080000000100000009000000011151E903000000010A0000FA115225050A0000FC115225070A0001081151E8FF0000000500000004115224FF0000000408A912F712073D0008A91305120700FA000000050000000212073CFA0000000208A913070000000912073CFC0000000308A912FF12073D08050000F800000005135D4503000000010CFD9BF700000005000000080000000412070108000000040000000900000000120701000000000008A91305120700FA08A9130700000006000000080000000212073CFA0000000208A913070000000600000008000000031151E907000000030A0001081151E8FF08A912F70000000812070100000000000000000600000004115224FF0000000408A912F712073D0008A913050000000812073CFA00000002000000080000000000000008000000021151E905000000020A0000FC115225070A0001081151E8FF0000000600000004115224FF0000000408A912F700000009120701000000000000000009000000031151E907000000030A0001081151E8FF0000000600000004115224FF0000000408A912F70000000800000009"
theorem small_6076834_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6076834_left_root small_6076834_left_fuel small_6076834_left_count small_6076834_left_encoded = true := by
  decide +kernel
theorem small_6076834_left_covered : CoveredBy scale carrier boxes small_6076834_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6076834_left_root small_6076834_left_fuel small_6076834_left_count small_6076834_left_encoded small_6076834_left_checked

theorem cover_6076834 : CoveredBy scale carrier boxes root_6076834 := by
  apply coveredBy_split_literal root_6076834 small_6076834_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0148.root_6077676 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact small_6076834_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0148.cover_6077676
#print axioms cover_6076834

def root_6036134 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6036134 : CoveredBy scale carrier boxes root_6036134 := by
  apply coveredBy_split_literal root_6036134 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0148.root_6036135 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0148.root_6076834 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0148.cover_6036135
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0148.cover_6076834
#print axioms cover_6036134

def root_6032470 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6032470 : CoveredBy scale carrier boxes root_6032470 := by
  apply coveredBy_split_literal root_6032470 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0146.root_6032471 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0148.root_6036134 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0146.cover_6032471
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0148.cover_6036134
#print axioms cover_6032470

def root_6082845 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6082845 : CoveredBy scale carrier boxes root_6082845 := by
  apply coveredBy_split_literal root_6082845 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2288.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2289.root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2288.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2289.covered
#print axioms cover_6082845

def root_6082840 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6082840_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6082840_right_fuel : Nat := 1
def small_6082840_right_count : Nat := 1
def small_6082840_right_encoded : String := "00000000"
theorem small_6082840_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6082840_right_root small_6082840_right_fuel small_6082840_right_count small_6082840_right_encoded = true := by
  decide +kernel
theorem small_6082840_right_covered : CoveredBy scale carrier boxes small_6082840_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6082840_right_root small_6082840_right_fuel small_6082840_right_count small_6082840_right_encoded small_6082840_right_checked

theorem cover_6082840 : CoveredBy scale carrier boxes root_6082840 := by
  apply coveredBy_split_literal root_6082840 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0148.root_6082845 small_6082840_right_root coord0 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0148.cover_6082845
  · exact small_6082840_right_covered
#print axioms cover_6082840

def root_6082839 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6082839 : CoveredBy scale carrier boxes root_6082839 := by
  apply coveredBy_split_literal root_6082839 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0148.root_6082840 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2290.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0148.cover_6082840
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2290.covered
#print axioms cover_6082839

def root_6089155 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6089155_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6089155_right_fuel : Nat := 1
def small_6089155_right_count : Nat := 1
def small_6089155_right_encoded : String := "00000001"
theorem small_6089155_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6089155_right_root small_6089155_right_fuel small_6089155_right_count small_6089155_right_encoded = true := by
  decide +kernel
theorem small_6089155_right_covered : CoveredBy scale carrier boxes small_6089155_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6089155_right_root small_6089155_right_fuel small_6089155_right_count small_6089155_right_encoded small_6089155_right_checked

theorem cover_6089155 : CoveredBy scale carrier boxes root_6089155 := by
  apply coveredBy_split_literal root_6089155 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2291.root small_6089155_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2291.covered
  · exact small_6089155_right_covered
#print axioms cover_6089155

def root_6089154 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6089154_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6089154_right_fuel : Nat := 21
def small_6089154_right_count : Nat := 255
def small_6089154_right_encoded : String := "1151E903000000010A0000FA115225050A0001061151E8FD0A0001081151E9090000000408A912F712073D0008A91305120700FA000000050000000212073CFA00000002050000F800000007135D45030000000105000106000000060000000700000000120701000000000008A91305120700FA0000000600000002000000061152250908A912F712073D0008A91305120700FA08A913090000000712073D08050000F80000000500000008000000040000000212073CFA0000000208A913090000000612073D08050000F800000007135D450300000001000000070000000400000000120701000000000008A91305120700FA08A913090000000612073D08050000F800000006135D450300000001000000060000000400000002000000060000000400000003115224FD000000030A0001081151E9090000000408A912F712073D0008A91305120700FA08A912FD12073D06050000F800000007000000080000000300000007000000020000000700000000120701000000000008A91305120700FA08A912FD12073D06050000F8135D810305000108135D450900000004000000080000000800000001135D45030000000100000008000000031207010600000003000000070000000212073CFA0000000208A912FD12073D06050000F8000000070000000A00000003000000071152250908A912F712073D0008A91305120700FA08A912FD00000007000000070000000212073CFA0000000208A912FD00000007120701060000000308A913091207010800000004050000F8135D81030CFD9BF70F350D0000000007000000000000000700000001000000070000000700000000120701000000000008A91305120700FA08A912FD12073D0608A913090000000712073D08050000F800000007135D450300000001045489F700000007138671000000000004548A05000000090000000700000004000000031207010600000003000000070000000212073CFA0000000208A912FD12073D0608A913090000000712073D08000000070000000400000003120701060000000308A91309000000070000000700000004000000021151E905000000020A0001061151E8FD0A0001081151E909000000040000000711522509000000070000000400000003115224FD000000030A0001081151E90900000004000000071152250908A912F712073D0008A912FD12073D0608A913091207010800000004000000070000000700000003120701060000000308A913091207010800000004050000F8135D8103050000FA135D81050CFD9BF70F350D000000000700000000000000070000000200000005000000010000000512073D08000000070000000400000000120701000000000008A912FD0000000712070106000000030000000500000004"
theorem small_6089154_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6089154_right_root small_6089154_right_fuel small_6089154_right_count small_6089154_right_encoded = true := by
  decide +kernel
theorem small_6089154_right_covered : CoveredBy scale carrier boxes small_6089154_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6089154_right_root small_6089154_right_fuel small_6089154_right_count small_6089154_right_encoded small_6089154_right_checked

theorem cover_6089154 : CoveredBy scale carrier boxes root_6089154 := by
  apply coveredBy_split_literal root_6089154 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0148.root_6089155 small_6089154_right_root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0148.cover_6089155
  · exact small_6089154_right_covered
#print axioms cover_6089154

def root_6089148 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6089148_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6089148_left_fuel : Nat := 1
def small_6089148_left_count : Nat := 1
def small_6089148_left_encoded : String := "00000000"
theorem small_6089148_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6089148_left_root small_6089148_left_fuel small_6089148_left_count small_6089148_left_encoded = true := by
  decide +kernel
theorem small_6089148_left_covered : CoveredBy scale carrier boxes small_6089148_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6089148_left_root small_6089148_left_fuel small_6089148_left_count small_6089148_left_encoded small_6089148_left_checked

theorem cover_6089148 : CoveredBy scale carrier boxes root_6089148 := by
  apply coveredBy_split_literal root_6089148 small_6089148_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0148.root_6089154 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6089148_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0148.cover_6089154
#print axioms cover_6089148

def root_6088292 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6088292_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6088292_left_fuel : Nat := 28
def small_6088292_left_count : Nat := 399
def small_6088292_left_encoded : String := "1151E8F70A0000F8115225030A0000FA115225050A0001061151E8FD0A0001081151E90900000004000000051152250908A91303120700F808A91305000000070000000500000001000000070000000400000003115224FD000000030A0001081151E90900000004000000071152250908A91303120700F808A91305120700FA08A912FD00000007000000050000000212073CFA0000000208A912FD12073D0608A9130912070108000000040500010000000005135D80F7000000000000000500000005000000031207010600000003000000090000000112073CF80000000108A91305120700FA08A912FD000000071207010600000003000000070000000212073CFA0000000208A912FD12073D0608A913091207010800000004000000070000000700000003120701060000000308A91309120701080000000405000100135D44F70CFD9C030F34D0F800000005000000010F350CF8000000010CFD9C05000000070000000700000000135D80F7000000000CFD9C030F34D0F80CFD9C050000000500000009000000010F350CF8000000010CFD9C05000000070F350CFA00000002045489FD0000000713867106000000030000000712073D08000000070000000400000004000000021151E905000000020A0001061151E8FD0A000108000000051152250908A91303120700F80000000500000001000000070000000400000003115224FD000000030A0001081151E90900000004000000091152250908A91303120700F808A912FD12073D0608A9130912070108000000040000000900000009000000031207010600000003000000090000000112073CF80000000108A912FD12073D0608A91309120701080000000405000100135D44F7050000FA135D81050CFD9C03000000070F350CF8000000010000000700000002135D4505000000020000000900000000135D80F700000000050000FA135D81050CFD9C030F34D0F800000009000000010F350CF8000000010000000700000002135D4505000000020CFD9C030F34D0F800000009000000010F350CF8000000010CFD9BFD000000070F34D106000000030000000912073D080500010000000007000000070000000400000003120701060000000308A91309120701080000000405000100135D44F70000000900000000135D80F700000000050000FA135D81050CFD9C03000000090F350CF800000001045489FD1386AD0604548A0913867108000000040C9A86F800000009000000070000000700000003138671060000000304548A0913867108000000040C9A86F8000000080F87510300000001000000090000000700000002135D4505000000020CFD9C03000000090F350CF800000001045489FD000000091386710600000003000000090000000900000004000000011151E903000000010A0000FA115225050A0001061151E8FD0A000108000000051152250908A91305120700FA0000000500000002000000070000000400000003115224FD000000030A0001081151E9090000000408A91305120700FA08A912FD000000050000000700000002000000071152250908A91305120700FA000000070000000212073CFA0000000208A912FD00000007120701060000000308A913091207010800000004000000070000000700000004000000021151E905000000020A0001061151E8FD0A0001081151E90900000004000000070000000700000003115224FD000000030A0001081151E90900000004000000071152250908A912FD12073D0608A9130912070108000000040500010000000007000000070000000700000003120701060000000308A91309120701080000000405000100135D44F7050000F8135D8103050000FA135D8105045489FD000000070000000700000002135D450500000002045489FD0000000913867106000000030000000900000001135D450300000001050000FA00000007135D450500000002045489FD000000070000000700000000135D80F700000000050000F8135D8103050000FA135D8105045489FD000000070000000700000002135D450500000002045489FD1386AD0604548A091386710800000004078001000000000700000005000000070000000313867106000000030000000500000001135D450300000001050000FA000000070000000512073D08050001000000000700000007000000040000000400000000"
theorem small_6088292_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6088292_left_root small_6088292_left_fuel small_6088292_left_count small_6088292_left_encoded = true := by
  decide +kernel
theorem small_6088292_left_covered : CoveredBy scale carrier boxes small_6088292_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6088292_left_root small_6088292_left_fuel small_6088292_left_count small_6088292_left_encoded small_6088292_left_checked

theorem cover_6088292 : CoveredBy scale carrier boxes root_6088292 := by
  apply coveredBy_split_literal root_6088292 small_6088292_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0148.root_6089148 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_6088292_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0148.cover_6089148
#print axioms cover_6088292

def root_6082838 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6082838 : CoveredBy scale carrier boxes root_6082838 := by
  apply coveredBy_split_literal root_6082838 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0148.root_6082839 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0148.root_6088292 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0148.cover_6082839
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0148.cover_6088292
#print axioms cover_6082838

def root_6081488 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6081488 : CoveredBy scale carrier boxes root_6081488 := by
  apply coveredBy_split_literal root_6081488 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2287.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0148.root_6082838 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2287.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0148.cover_6082838
#print axioms cover_6081488

def root_6095032 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6095032_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6095032_right_fuel : Nat := 23
def small_6095032_right_count : Nat := 247
def small_6095032_right_encoded : String := "1151E903000000010A0000FA115225050A0001061151E907000000030A0000FE1152250908A912F712073D0008A913050000000712073CFA0000000208A91309000000070000000700000000120701000000000008A913050000000712073CFA0000000200000007000000041151E9090000000408A912F712073D0008A913050000000712073CFA00000002050000F8135D8103050001060000000700000007000000010000000700000000120701000000000008A91305120700FA050000F800000007135D450300000001000000070000000200000005115225070A0000FE1152250908A912F712073D0008A91305120700FA08A91307120701060000000308A913090000000500000007000000070000000212073CFA0000000208A91307120701060000000308A91309120700FE050000F8135D81030CFD9BF7000000050000000700000001135D4503000000010CFD9BF70F350D000CFD9C0500000005000000070000000000000007000000040000000712073D0608A91309120700FE050000F8135D81030CFD9BF70F350D000CFD9C05000000070F350CFA000000020CFD9C070000000700000007000000000000000700000001135D4503000000010CFD9BF70F350D0000000007000000000000000700000004000000070000000300000000120701000000000008A91305120700FA08A91307120701060000000300000007000000070000000200000007000000041151E9090000000408A912F700000007120701000000000008A91305120700FA08A913070000000700000007000000020000000700000003000000021151E905000000020A0001061151E907000000030A0000FE1152250908A912F712073D0008A91309120700FE050000F8135D8103050000FA00000006000000060000000100000007000000040000000700000000120701000000000008A913090000000700000005000000041151E9090000000400000005115225070A0000FE1152250908A912F712073D0008A9130712070106000000030000000A12073D0608A91309120700FE050000F8135D81030000000A00000001135D450300000001050000FA135D81050CFD9BF70F350D000CFD9C07000000060F350D0600000006000000030000000000000007000000020000000A0000000412073CFE00000004050000F8135D8103050000FA135D81050CFD9BF70000000A00000007000000020000000A00000001135D450300000001050000FA000000070000000A0000000300000000120701000000000008A913070000000A12073D060000000A00000003000000041151E9090000000408A912F712073D0008A913070000000700000007000000000000000700000003"
theorem small_6095032_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6095032_right_root small_6095032_right_fuel small_6095032_right_count small_6095032_right_encoded = true := by
  decide +kernel
theorem small_6095032_right_covered : CoveredBy scale carrier boxes small_6095032_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6095032_right_root small_6095032_right_fuel small_6095032_right_count small_6095032_right_encoded small_6095032_right_checked

theorem cover_6095032 : CoveredBy scale carrier boxes root_6095032 := by
  apply coveredBy_split_literal root_6095032 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2293.root small_6095032_right_root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2293.covered
  · exact small_6095032_right_covered
#print axioms cover_6095032

def root_6095026 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6095026_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6095026_left_fuel : Nat := 1
def small_6095026_left_count : Nat := 1
def small_6095026_left_encoded : String := "00000000"
theorem small_6095026_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6095026_left_root small_6095026_left_fuel small_6095026_left_count small_6095026_left_encoded = true := by
  decide +kernel
theorem small_6095026_left_covered : CoveredBy scale carrier boxes small_6095026_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6095026_left_root small_6095026_left_fuel small_6095026_left_count small_6095026_left_encoded small_6095026_left_checked

theorem cover_6095026 : CoveredBy scale carrier boxes root_6095026 := by
  apply coveredBy_split_literal root_6095026 small_6095026_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0148.root_6095032 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6095026_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0148.cover_6095032
#print axioms cover_6095026

def root_6094392 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6094392_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6094392_left_fuel : Nat := 21
def small_6094392_left_count : Nat := 297
def small_6094392_left_encoded : String := "1151E8F70A0000F8115225030A0000FA115225050A0001061151E907000000030A0000FE1152250908A91303120700F808A91305120700FA08A91309000000070000000700000002000000090000000112073CF80000000108A91305120700FA000000070000000212073CFA0000000208A91309120700FE05000100135D44F705000106000000070000000900000000135D80F7000000000500010600000007000000090000000400000007000000041151E9090000000408A91303120700F8000000090000000112073CF80000000108A913050000000712073CFA000000020500010000000007135D80F70000000005000106135D450700000003050000FE00000007135D4509000000040000000700000007115225070A0000FE1152250908A91303120700F8000000090000000112073CF80000000108A91305120700FA08A913070000000512073D0608A913090000000500000007000000030000000212073CFA0000000208A9130712070106000000030000000512073D0608A91309120700FE00000009000000040000000900000003000000041151E909000000040000000900000003000000021151E905000000020A0001061151E907000000030A0000FE1152250908A91303120700F8000000090000000112073CF80000000108A91309120700FE05000100135D44F7050000FA00000009135D4505000000020000000900000000135D80F700000000050000FA135D810505000106135D4507000000030CFD9C0300000007000000060000000900000002135D4505000000020000000A0000000412073CFE000000040500010000000009135D80F700000000050000FA00000009135D45050000000200000009000000041151E9090000000400000009115225070A0000FE000000091151E909000000040000000900000003000000011151E903000000010A0000FA115225050A0001061151E907000000030A0000FE1152250908A91305120700FA000000070000000212073CFA0000000208A91309120700FE0500010000000007000000070000000400000007000000041151E9090000000400000007115225070A0000FE1152250908A91305120700FA08A913070000000512073D0608A913090000000500000007000000030000000212073CFA0000000208A91307120701060000000308A91309000000050000000912073D0608A91309120700FE05000100135D44F70000000500000000135D80F700000000050000F800000005135D4503000000010CFD9C0500000005000000090000000412073CFE0000000405000100000000090000000700000003000000041151E9090000000408A91305120700FA00000007000000020000000700000003000000021151E905000000020A0001061151E907000000030A0000FE1152250908A913090000000812073CFE00000004050001000000000800000007000000041151E9090000000400000005115225070A0000FE1152250908A9130712070106000000030000000912073D0608A91309120700FE0500010000000009135D80F700000000050000F800000009135D450300000001050000FA000000090000000A000000040000000900000003000000041151E90900000004000000090000000300000000"
theorem small_6094392_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6094392_left_root small_6094392_left_fuel small_6094392_left_count small_6094392_left_encoded = true := by
  decide +kernel
theorem small_6094392_left_covered : CoveredBy scale carrier boxes small_6094392_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6094392_left_root small_6094392_left_fuel small_6094392_left_count small_6094392_left_encoded small_6094392_left_checked

theorem cover_6094392 : CoveredBy scale carrier boxes root_6094392 := by
  apply coveredBy_split_literal root_6094392 small_6094392_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0148.root_6095026 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_6094392_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0148.cover_6095026
#print axioms cover_6094392

def root_6092916 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6092916 : CoveredBy scale carrier boxes root_6092916 := by
  apply coveredBy_split_literal root_6092916 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2292.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0148.root_6094392 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2292.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0148.cover_6094392
#print axioms cover_6092916

def root_6099204 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6099204 : CoveredBy scale carrier boxes root_6099204 := by
  apply coveredBy_split_literal root_6099204 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2294.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2295.root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2294.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2295.covered
#print axioms cover_6099204

def root_6099198 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6099198_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6099198_left_fuel : Nat := 1
def small_6099198_left_count : Nat := 1
def small_6099198_left_encoded : String := "00000000"
theorem small_6099198_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6099198_left_root small_6099198_left_fuel small_6099198_left_count small_6099198_left_encoded = true := by
  decide +kernel
theorem small_6099198_left_covered : CoveredBy scale carrier boxes small_6099198_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6099198_left_root small_6099198_left_fuel small_6099198_left_count small_6099198_left_encoded small_6099198_left_checked

theorem cover_6099198 : CoveredBy scale carrier boxes root_6099198 := by
  apply coveredBy_split_literal root_6099198 small_6099198_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0148.root_6099204 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6099198_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0148.cover_6099204
#print axioms cover_6099198

def root_6098320 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6098320_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6098320_left_fuel : Nat := 28
def small_6098320_left_count : Nat := 409
def small_6098320_left_encoded : String := "1151E8F70A0000F8115225030A0000FA115225050A0001061151E907000000030A00010800000005115224FF0000000400000008115225070A0001081151E8FF08A91303120700F808A91305120700FA0000000500000002000000050000000112073CF80000000108A91305120700FA00000005000000020000000500000004115224FF0000000408A91303120700F808A91305120700FA08A91307120701060000000308A912FF0000000800000005000000050000000212073CFA0000000208A9130700000008000000080000000112073CF80000000108A91305120700FA08A91307120701060000000308A912FF12073D080500010000000005135D80F7000000000000000500000004000000050000000A0000000212073CFA0000000208A91307120701060000000308A912FF12073D080000000800000004120701080000000405000100135D44F70CFD9C03000000080F350CF8000000010000000A00000000135D80F7000000000CFD9C030F34D0F800000008000000010F350CF8000000010CFD9C050F34D0FA0000000A000000020F350CFA0000000204548A07000000080000000812073D0608A912FF000000081207010800000004000000080000000300000003000000021151E905000000020A0001061151E907000000030A0001081151E8FF0000000500000004115224FF0000000408A91303120700F808A912FF00000005000000080000000100000008115225070A0001081151E8FF08A91303120700F800000005000000010000000800000004115224FF0000000408A91303120700F8000000080000000112073CF80000000108A91307120701060000000308A912FF00000008000000080000000800000003000000011151E903000000010A0000FA115225050A0001061151E907000000030A0001081151E8FF00000005000000040000000A115225070A0001081151E8FF08A91305120700FA00000005000000020000000800000004115224FF0000000408A91305120700FA08A91307120701060000000308A912FF0000000A12070108000000040000000A0000000A0000000212073CFA0000000208A91307120701060000000308A912FF12073D0805000100135D44F7050000F8135D81030CFD9C05000000080F350CFA000000020000000800000001135D4503000000010000000A00000000135D80F700000000050000F8135D81030CFD9C050F34D0FA0000000A000000020F350CFA000000020000000800000001135D4503000000010CFD9C050F34D0FA0000000A000000020F350CFA0000000204548A0713867106000000030CFD9BFF000000080F34D108000000040000000A0000000800000004120701080000000405000100135D44F70000000A00000000135D80F700000000050000F8135D81030CFD9C050000000A0F350CFA0000000204548A071386710600000003045489FF1386AD080C9A86FA0000000A000000080000000413867108000000040C9A86FA000000070F875105000000020000000A0000000A00000001135D4503000000010CFD9C050000000A0F350CFA0000000204548A071386710600000003045489FF0000000A000000070000000A12073D0608A912FF12073D080500010000000008000000080000000412070108000000040000000A0000000300000003000000021151E905000000020A0001061151E907000000030A00010800000008115224FF0000000400000008115225070A0001081151E8FF0000000800000004115224FF0000000408A91307120701060000000308A912FF12073D0805000100000000080000000800000004120701080000000405000100135D44F7050000F8135D8103050000FA135D810504548A0713867106000000030000000800000008000000020000000800000001135D450300000001050000FA135D810504548A0713867106000000030000000A0000000A00000002135D45050000000204548A071386710600000003045489FF00000008000000050000000800000000135D80F700000000050000F8135D8103050000FA135D810504548A0713867106000000030000000800000008000000020000000800000001135D450300000001050000FA135D810504548A071386710600000003045489FF1386AD0807800100000000080000000500000004000000051386AD060000000800000003000000020000000512073D0608A912FF000000081207010800000004050001000000000800000008000000030000000300000000"
theorem small_6098320_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6098320_left_root small_6098320_left_fuel small_6098320_left_count small_6098320_left_encoded = true := by
  decide +kernel
theorem small_6098320_left_covered : CoveredBy scale carrier boxes small_6098320_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6098320_left_root small_6098320_left_fuel small_6098320_left_count small_6098320_left_encoded small_6098320_left_checked

theorem cover_6098320 : CoveredBy scale carrier boxes root_6098320 := by
  apply coveredBy_split_literal root_6098320 small_6098320_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0148.root_6099198 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_6098320_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0148.cover_6099198
#print axioms cover_6098320

def root_6110563 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6110563 : CoveredBy scale carrier boxes root_6110563 := by
  apply coveredBy_split_literal root_6110563 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2299.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2300.root coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2299.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2300.covered
#print axioms cover_6110563

def root_6110557 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6110557_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6110557_left_fuel : Nat := 1
def small_6110557_left_count : Nat := 1
def small_6110557_left_encoded : String := "00000002"
theorem small_6110557_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6110557_left_root small_6110557_left_fuel small_6110557_left_count small_6110557_left_encoded = true := by
  decide +kernel
theorem small_6110557_left_covered : CoveredBy scale carrier boxes small_6110557_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6110557_left_root small_6110557_left_fuel small_6110557_left_count small_6110557_left_encoded small_6110557_left_checked

theorem cover_6110557 : CoveredBy scale carrier boxes root_6110557 := by
  apply coveredBy_split_literal root_6110557 small_6110557_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0148.root_6110563 coord2 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_6110557_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0148.cover_6110563
#print axioms cover_6110557

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0148
