import TaoBundleAssembly0388
import TaoBundleChunkBatch0515
import TaoBundleChunkBatch0516
import TaoBundleChunkBatch0517
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0389
def root_5500769 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5500769_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5500769_left_fuel : Nat := 29
def small_5500769_left_count : Nat := 475
def small_5500769_left_encoded : String := "138670FC0C9A86F80F878CF9000000010280010013D7B0F707800108128A40FF067ECE850000000912EA94FA00000002022A45870000000913E200FC000000030DE7C9F8000000090000000900000004000000090000000013D7ECF70000000007800108128A40FF067ECE8512EA58FA022A45870000000613E200FC000000030DE7C9F800000009000000090000000212EA94FA00000002022A45870000000613E200FC000000030DE7C9F8000000060000000900000004128A7CFF00000004000000090F8750F90280010013D7B0F707800108128A40FF067ECE8512EA58FA022A458713E1C4FC000000050000000313E200FC000000030B4D43F810804CF900000001014001000000000913F614F7000000000640010812FF70FF000000090000000400000009108010F90140010013F5D8F70640010800000007000000090000000013F614F7000000000640010812FF70FF0569AC4500000005134110FA00000002033F67C70000000513BC30FC00000003000000070000000412FFACFF000000040569AC450000000900000009000000010000000212EA94FA00000002022A458713E1C4FC0B4D43F800000009108010F9014001000000000800000009000000010000000313E200FC000000030B4D43F810804CF9000000010140010013F5D8F70640010812FF70FF0000000800000004000000080000000013F614F7000000000640010812FF70FF000000090000000400000009108010F9014001000000000813F614F7000000000640010812FF70FF0000000800000004000000080000000100000004128A7CFF00000004067ECE8512EA58FA022A45870000000913E200FC000000030B4D43F800000009000000090000000212EA94FA00000002022A45870000000913E200FC000000030B4D43F800000009000000090000000013D7ECF70000000007800108128A40FF067ECE8512EA58FA022A458713E1C4FC0B4D43F810804CF90000000100000009108010F903C001000000000513A54CF70000000000000009000000010000000313E200FC000000030B4D43F810804CF90000000103C0010013A510F70640010812FF70FF0569AC45000000090000000900000004000000090000000013A54CF7000000000640010812FF70FF0569AC4500000009000000090000000400000009108010F903C0010013A510F70640010812FF70FF0569AC4500000005134110FA00000002033F67C70000000513BC30FC000000030AA6A27810EDACF9000000010000000910ED70F90320010013C108F705A0010800000007000000080000000013C144F70000000005A00108133134FF05F43D6500000005000000080000000400000009000000010000000412FFACFF000000040569AC4500000009000000090000000013A54CF7000000000640010812FF70FF0569AC451340D4FA033F67C70000000513BC30FC000000030AA6A27810EDACF90000000104600100000000090000000910ED70F90460010000000005138418F70000000005A0010800000005000000090000000100000002134110FA00000002033F67C713BBF4FC000000090000000313BC30FC000000030AA6A27810EDACF90000000104600100000000090000000910ED70F9046001001383DCF705A00108133134FF05F43D650000000900000009000000040000000900000000138418F70000000005A00108133134FF05F43D6500000009000000060000000400000009000000010000000412FFACFF000000040569AC4500000009134110FA0000000200000009000000010000000212EA94FA00000002022A458713E1C4FC0B4D43F810804CF90000000100000006108010F903C001000000000913A54CF70000000000000009000000010000000313E200FC000000030B4D43F810804CF90000000103C0010013A510F70640010812FF70FF0793F0C5000000090000000900000004000000090000000013A54CF7000000000640010812FF70FF000000060000000400000009108010F903C0010013A510F70640010812FF70FF0793F0C5128220FA033F67C70000000913BC30FC000000030AA6A27810EDACF9000000010000000910ED70F900000008000000010000000212825CFA00000002000000080000000412FFACFF000000040793F0C500000009000000080000000013A54CF7000000000640010812FF70FF0793F0C5128220FA033F67C70000000613BC30FC000000030AA6A27810EDACF9000000010000000910ED70F9046001001383DCF705A00108133134FF00000008000000040000000800000000138418F70000000005A001080000000600000009000000010000000212825CFA00000002033F67C70000000613BC30FC000000030AA6A2780000000610ED70F900000008000000010000000412FFACFF000000040793F0C500000009000000090000000100000004128A7CFF00000004067ECE8512EA58FA022A45870000000913E200FC000000030B4D43F810804CF90000000100000009108010F903C001000000000900000009000000010000000212EA94FA00000002022A45870000000913E200FC000000030B4D43F810804CF90000000100000009108010F903C001000000000900000009000000010000000100000003"
theorem small_5500769_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5500769_left_root small_5500769_left_fuel small_5500769_left_count small_5500769_left_encoded = true := by
  decide +kernel
theorem small_5500769_left_covered : CoveredBy scale carrier boxes small_5500769_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5500769_left_root small_5500769_left_fuel small_5500769_left_count small_5500769_left_encoded small_5500769_left_checked

theorem cover_5500769 : CoveredBy scale carrier boxes root_5500769 := by
  apply coveredBy_split_literal root_5500769 small_5500769_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2058.root coord3 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact small_5500769_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2058.covered
#print axioms cover_5500769

def root_5500763 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5500763_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16777216), (-16379648)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5500763_left_fuel : Nat := 1
def small_5500763_left_count : Nat := 1
def small_5500763_left_encoded : String := "00000002"
theorem small_5500763_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5500763_left_root small_5500763_left_fuel small_5500763_left_count small_5500763_left_encoded = true := by
  decide +kernel
theorem small_5500763_left_covered : CoveredBy scale carrier boxes small_5500763_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5500763_left_root small_5500763_left_fuel small_5500763_left_count small_5500763_left_encoded small_5500763_left_checked

theorem cover_5500763 : CoveredBy scale carrier boxes root_5500763 := by
  apply coveredBy_split_literal root_5500763 small_5500763_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0389.root_5500769 coord2 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_5500763_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0389.cover_5500769
#print axioms cover_5500763

def root_5500495 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5500495_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5500495_left_fuel : Nat := 27
def small_5500495_left_count : Nat := 131
def small_5500495_left_encoded : String := "138670FA04548A07138670FC0C9A86F80F878CF900000001028001000000000A13D7ECF70000000007800108128A40FF022A45850000000913E200FA00000002022A4587000000090000000A00000004000000090F8750F90280010013D7B0F707800108128A40FF00000005000000040000000A0000000013D7ECF70000000007800108128A40FF022A45850000000513E200FA00000002022A45870000000513E200FC000000030B4D43F810804CF90000000103C001000000000A13A54CF7000000000640010812FF70FF000000050000000400000009108010F903C001000000000513A54CF700000000064001080000000512FFACFF00000004033F67C50000000513BC30FA00000002000000090000000100000004128A7CFF00000004022A45850000000A13E200FA00000002022A4587000000090000000A00000001000000031386ACFC000000030C9A86F80000000A0F8750F9028001000000000A13D7ECF70000000007800108128A40FF022A45850000000A13E200FA00000002067ECE8712EA58FC0B4D43F80000000A108010F903C001000000000A13A54CF7000000000640010812FF70FF033F67C50000000A13BC30FA000000020569AC471340D4FC0AA6A2780000000A10ED70F904600100000000050000000A00000001000000030000000A000000040000000A00000001000000030000000A000000040000000A0000000100000002"
theorem small_5500495_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5500495_left_root small_5500495_left_fuel small_5500495_left_count small_5500495_left_encoded = true := by
  decide +kernel
theorem small_5500495_left_covered : CoveredBy scale carrier boxes small_5500495_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5500495_left_root small_5500495_left_fuel small_5500495_left_count small_5500495_left_encoded small_5500495_left_checked

theorem cover_5500495 : CoveredBy scale carrier boxes root_5500495 := by
  apply coveredBy_split_literal root_5500495 small_5500495_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0389.root_5500763 coord2 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact small_5500495_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0389.cover_5500763
#print axioms cover_5500495

def root_5500489 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5500489_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5500489_left_fuel : Nat := 1
def small_5500489_left_count : Nat := 1
def small_5500489_left_encoded : String := "00000001"
theorem small_5500489_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5500489_left_root small_5500489_left_fuel small_5500489_left_count small_5500489_left_encoded = true := by
  decide +kernel
theorem small_5500489_left_covered : CoveredBy scale carrier boxes small_5500489_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5500489_left_root small_5500489_left_fuel small_5500489_left_count small_5500489_left_encoded small_5500489_left_checked

theorem cover_5500489 : CoveredBy scale carrier boxes root_5500489 := by
  apply coveredBy_split_literal root_5500489 small_5500489_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0389.root_5500495 coord1 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_5500489_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0389.cover_5500495
#print axioms cover_5500489

def root_5500488 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5500488_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5500488_right_fuel : Nat := 7
def small_5500488_right_count : Nat := 13
def small_5500488_right_encoded : String := "0F34D0F804548A050000000A1386ACFA0000000204548A07138670FC028001000000000900000009000000030000000A00000001"
theorem small_5500488_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5500488_right_root small_5500488_right_fuel small_5500488_right_count small_5500488_right_encoded = true := by
  decide +kernel
theorem small_5500488_right_covered : CoveredBy scale carrier boxes small_5500488_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5500488_right_root small_5500488_right_fuel small_5500488_right_count small_5500488_right_encoded small_5500488_right_checked

theorem cover_5500488 : CoveredBy scale carrier boxes root_5500488 := by
  apply coveredBy_split_literal root_5500488 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0389.root_5500489 small_5500488_right_root coord1 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0389.cover_5500489
  · exact small_5500488_right_covered
#print axioms cover_5500488

def root_5500482 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5500482_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5500482_left_fuel : Nat := 1
def small_5500482_left_count : Nat := 1
def small_5500482_left_encoded : String := "00000004"
theorem small_5500482_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5500482_left_root small_5500482_left_fuel small_5500482_left_count small_5500482_left_encoded = true := by
  decide +kernel
theorem small_5500482_left_covered : CoveredBy scale carrier boxes small_5500482_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5500482_left_root small_5500482_left_fuel small_5500482_left_count small_5500482_left_encoded small_5500482_left_checked

theorem cover_5500482 : CoveredBy scale carrier boxes root_5500482 := by
  apply coveredBy_split_literal root_5500482 small_5500482_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0389.root_5500488 coord4 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_5500482_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0389.cover_5500488
#print axioms cover_5500482

def root_5491270 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5491270 : CoveredBy scale carrier boxes root_5491270 := by
  apply coveredBy_split_literal root_5491270 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0388.root_5491271 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0389.root_5500482 coord4 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0388.cover_5491271
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0389.cover_5500482
#print axioms cover_5491270

def root_5491265 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5491265_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16243968), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5491265_right_fuel : Nat := 1
def small_5491265_right_count : Nat := 1
def small_5491265_right_encoded : String := "00000000"
theorem small_5491265_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5491265_right_root small_5491265_right_fuel small_5491265_right_count small_5491265_right_encoded = true := by
  decide +kernel
theorem small_5491265_right_covered : CoveredBy scale carrier boxes small_5491265_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5491265_right_root small_5491265_right_fuel small_5491265_right_count small_5491265_right_encoded small_5491265_right_checked

theorem cover_5491265 : CoveredBy scale carrier boxes root_5491265 := by
  apply coveredBy_split_literal root_5491265 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0389.root_5491270 small_5491265_right_root coord0 true (-16243968)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0389.cover_5491270
  · exact small_5491265_right_covered
#print axioms cover_5491265

def root_5503967 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5503967 : CoveredBy scale carrier boxes root_5503967 := by
  apply coveredBy_split_literal root_5503967 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2059.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2060.root coord2 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2059.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2060.covered
#print axioms cover_5503967

def root_5503961 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5503961_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5503961_left_fuel : Nat := 1
def small_5503961_left_count : Nat := 1
def small_5503961_left_encoded : String := "00000001"
theorem small_5503961_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5503961_left_root small_5503961_left_fuel small_5503961_left_count small_5503961_left_encoded = true := by
  decide +kernel
theorem small_5503961_left_covered : CoveredBy scale carrier boxes small_5503961_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5503961_left_root small_5503961_left_fuel small_5503961_left_count small_5503961_left_encoded small_5503961_left_checked

theorem cover_5503961 : CoveredBy scale carrier boxes root_5503961 := by
  apply coveredBy_split_literal root_5503961 small_5503961_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0389.root_5503967 coord1 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_5503961_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0389.cover_5503967
#print axioms cover_5503961

def root_5503960 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5503960_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5503960_right_fuel : Nat := 8
def small_5503960_right_count : Nat := 15
def small_5503960_right_encoded : String := "0F34D0F804548A05138670FA04548A07000000061386ACFC0000000307800100128A40F7000000080000000000000006000000020000000600000001"
theorem small_5503960_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5503960_right_root small_5503960_right_fuel small_5503960_right_count small_5503960_right_encoded = true := by
  decide +kernel
theorem small_5503960_right_covered : CoveredBy scale carrier boxes small_5503960_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5503960_right_root small_5503960_right_fuel small_5503960_right_count small_5503960_right_encoded small_5503960_right_checked

theorem cover_5503960 : CoveredBy scale carrier boxes root_5503960 := by
  apply coveredBy_split_literal root_5503960 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0389.root_5503961 small_5503960_right_root coord1 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0389.cover_5503961
  · exact small_5503960_right_covered
#print axioms cover_5503960

def root_5503955 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5503955_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16243968), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5503955_right_fuel : Nat := 1
def small_5503955_right_count : Nat := 1
def small_5503955_right_encoded : String := "00000004"
theorem small_5503955_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5503955_right_root small_5503955_right_fuel small_5503955_right_count small_5503955_right_encoded = true := by
  decide +kernel
theorem small_5503955_right_covered : CoveredBy scale carrier boxes small_5503955_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5503955_right_root small_5503955_right_fuel small_5503955_right_count small_5503955_right_encoded small_5503955_right_checked

theorem cover_5503955 : CoveredBy scale carrier boxes root_5503955 := by
  apply coveredBy_split_literal root_5503955 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0389.root_5503960 small_5503955_right_root coord4 true (-16243968)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0389.cover_5503960
  · exact small_5503955_right_covered
#print axioms cover_5503955

def root_5503954 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5503954 : CoveredBy scale carrier boxes root_5503954 := by
  apply coveredBy_split_literal root_5503954 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0389.root_5503955 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2061.root coord4 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0389.cover_5503955
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2061.covered
#print axioms cover_5503954

def root_5503948 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5503948_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5503948_left_fuel : Nat := 1
def small_5503948_left_count : Nat := 1
def small_5503948_left_encoded : String := "00000000"
theorem small_5503948_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5503948_left_root small_5503948_left_fuel small_5503948_left_count small_5503948_left_encoded = true := by
  decide +kernel
theorem small_5503948_left_covered : CoveredBy scale carrier boxes small_5503948_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5503948_left_root small_5503948_left_fuel small_5503948_left_count small_5503948_left_encoded small_5503948_left_checked

theorem cover_5503948 : CoveredBy scale carrier boxes root_5503948 := by
  apply coveredBy_split_literal root_5503948 small_5503948_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0389.root_5503954 coord0 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_5503948_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0389.cover_5503954
#print axioms cover_5503948

def root_5491264 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5491264 : CoveredBy scale carrier boxes root_5491264 := by
  apply coveredBy_split_literal root_5491264 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0389.root_5491265 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0389.root_5503948 coord0 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0389.cover_5491265
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0389.cover_5503948
#print axioms cover_5491264

def root_5491259 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5491259_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5491259_right_fuel : Nat := 1
def small_5491259_right_count : Nat := 1
def small_5491259_right_encoded : String := "00000003"
theorem small_5491259_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5491259_right_root small_5491259_right_fuel small_5491259_right_count small_5491259_right_encoded = true := by
  decide +kernel
theorem small_5491259_right_covered : CoveredBy scale carrier boxes small_5491259_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5491259_right_root small_5491259_right_fuel small_5491259_right_count small_5491259_right_encoded small_5491259_right_checked

theorem cover_5491259 : CoveredBy scale carrier boxes root_5491259 := by
  apply coveredBy_split_literal root_5491259 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0389.root_5491264 small_5491259_right_root coord3 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0389.cover_5491264
  · exact small_5491259_right_covered
#print axioms cover_5491259

def root_5491258 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5491258 : CoveredBy scale carrier boxes root_5491258 := by
  apply coveredBy_split_literal root_5491258 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0389.root_5491259 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2062.root coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0389.cover_5491259
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2062.covered
#print axioms cover_5491258

def root_5491253 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5491253_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5491253_right_fuel : Nat := 1
def small_5491253_right_count : Nat := 1
def small_5491253_right_encoded : String := "00000002"
theorem small_5491253_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5491253_right_root small_5491253_right_fuel small_5491253_right_count small_5491253_right_encoded = true := by
  decide +kernel
theorem small_5491253_right_covered : CoveredBy scale carrier boxes small_5491253_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5491253_right_root small_5491253_right_fuel small_5491253_right_count small_5491253_right_encoded small_5491253_right_checked

theorem cover_5491253 : CoveredBy scale carrier boxes root_5491253 := by
  apply coveredBy_split_literal root_5491253 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0389.root_5491258 small_5491253_right_root coord2 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0389.cover_5491258
  · exact small_5491253_right_covered
#print axioms cover_5491253

def root_5491252 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5491252 : CoveredBy scale carrier boxes root_5491252 := by
  apply coveredBy_split_literal root_5491252 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0389.root_5491253 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2063.root coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0389.cover_5491253
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2063.covered
#print axioms cover_5491252

def root_5491246 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5491246_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5491246_left_fuel : Nat := 1
def small_5491246_left_count : Nat := 1
def small_5491246_left_encoded : String := "00000001"
theorem small_5491246_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5491246_left_root small_5491246_left_fuel small_5491246_left_count small_5491246_left_encoded = true := by
  decide +kernel
theorem small_5491246_left_covered : CoveredBy scale carrier boxes small_5491246_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5491246_left_root small_5491246_left_fuel small_5491246_left_count small_5491246_left_encoded small_5491246_left_checked

theorem cover_5491246 : CoveredBy scale carrier boxes root_5491246 := by
  apply coveredBy_split_literal root_5491246 small_5491246_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0389.root_5491252 coord1 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_5491246_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0389.cover_5491252
#print axioms cover_5491246

def root_5491245 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5491245_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5491245_right_fuel : Nat := 13
def small_5491245_right_count : Nat := 79
def small_5491245_right_encoded : String := "120700F808A91305120700FA08A91307120700FC05000100135D44F705000108135D44FF045489F91386ACF80000000104548A050000000A0000000600000006000000040000000A00000000135D80F7000000000500010800000006135D80FF00000004045489F91386ACF80000000104548A050000000800000006000000060000000312073CFC0000000305000100135D44F70000000A00000000135D80F70000000005000108135D44FF045489F91386ACF80000000104548A050000000A000000050000000500000004000000050000000212073CFA0000000208A91307120700FC05000100135D44F705000108135D44FF0000000600000004135D80FF00000004045489F91386ACF8000000010CFD9C0500000009000000050000000500000000000000060000000312073CFC000000030000000500000001"
theorem small_5491245_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5491245_right_root small_5491245_right_fuel small_5491245_right_count small_5491245_right_encoded = true := by
  decide +kernel
theorem small_5491245_right_covered : CoveredBy scale carrier boxes small_5491245_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5491245_right_root small_5491245_right_fuel small_5491245_right_count small_5491245_right_encoded small_5491245_right_checked

theorem cover_5491245 : CoveredBy scale carrier boxes root_5491245 := by
  apply coveredBy_split_literal root_5491245 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0389.root_5491246 small_5491245_right_root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0389.cover_5491246
  · exact small_5491245_right_covered
#print axioms cover_5491245

def root_5491240 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5491240_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5491240_right_fuel : Nat := 1
def small_5491240_right_count : Nat := 1
def small_5491240_right_encoded : String := "00000004"
theorem small_5491240_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5491240_right_root small_5491240_right_fuel small_5491240_right_count small_5491240_right_encoded = true := by
  decide +kernel
theorem small_5491240_right_covered : CoveredBy scale carrier boxes small_5491240_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5491240_right_root small_5491240_right_fuel small_5491240_right_count small_5491240_right_encoded small_5491240_right_checked

theorem cover_5491240 : CoveredBy scale carrier boxes root_5491240 := by
  apply coveredBy_split_literal root_5491240 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0389.root_5491245 small_5491240_right_root coord4 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0389.cover_5491245
  · exact small_5491240_right_covered
#print axioms cover_5491240

def root_5491239 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5491239_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5491239_right_fuel : Nat := 27
def small_5491239_right_count : Nat := 323
def small_5491239_right_encoded : String := "115224FF0000000408A912F912073CF80000000108A91305120700FA08A91307120700FC08A912FF12073D0805000100135D44F70CFD9BF90F350CF80000000104548A05138670FA0000000A000000021386ACFA0000000204548A07138670FC0CFD9BFF0F350D080C9A86F80F878CF9000000010C9A87080F8750FF0000000900000004000000090F8750F90C9A87080F8750FF0280010013D7B0F7067ECE8500000009000000090000000013D7ECF700000000067ECE850000000900000009000000040F878CFF0000000402800100000000090000000900000001000000040F34D108000000040000000A000000031386ACFC000000030CFD9BFF0F350D080C9A86F80000000A0F8750F90C9A87080F8750FF028001000000000A13D7ECF700000000067ECE850000000A00000005000000040000000A0000000100000004000000050F34D0F80000000A0000000100000000135D80F7000000000CFD9BF90F350CF80000000104548A05138670FA04548A07138670FC0CFD9BFF0F350D080C9A86F80F878CF9000000010000000A0F8750F90C9A87080F8750FF07800100128A40F7022A4585000000090000000900000000128A7CF700000000022A45850000000900000009000000040F878CFF000000040000000900000001000000040F34D108000000040000000A000000031386ACFC000000030CFD9BFF0F350D080C9A86F80000000A0F8750F90C9A87080F8750FF078001000000000A0000000A000000040000000A00000001000000040000000A000000021386ACFA0000000204548A07138670FC0CFD9BFF0F350D080C9A86F80F878CF9000000010C9A87080F8750FF0000000900000004000000090F8750F90C9A87080F8750FF07800100128A40F7067ECE85000000090000000900000000128A7CF700000000067ECE850000000900000005000000040F878CFF0000000407800100000000090000000700000001000000040F34D1080000000400000005000000031386ACFC000000030CFD9BFF0F350D080C9A86F80F878CF900000001000000050000000500000004000000050F34D0F804548A050000000A1386ACFA0000000204548A07138670FC0CFD9BFF0000000900000005000000030000000500000001000000041207010800000004050001000000000A000000050000000312073CFC0000000308A912FF12073D0805000100135D44F70CFD9BF90F350CF80000000104548A050000000A000000050000000A00000000135D80F7000000000CFD9BF90F350CF800000001000000050000000500000004000000050000000212073CFA0000000208A91307120700FC08A912FF12073D0805000100135D44F70CFD9BF90F350CF8000000010CFD9C050F34D0FA04548A07138670FC0CFD9BFF0F350D080C9A86F80F878CF9000000010C9A87080F8750FF0000000900000004000000050F8750F90C9A87080F8750FF0280010013D7B0F70AD3578500000009000000050000000013D7ECF7000000000AD357850000000900000005000000040F878CFF0000000400000005000000010000000400000005000000030000000500000002000000050F34D0F80CFD9C050F34D0FA04548A07138670FC0CFD9BFF0000000900000005000000030000000500000002000000050000000100000000135D80F7000000000CFD9BF90F350CF800000001000000050000000500000004000000050000000300000005120700F808A91305120700FA08A91307120700FC0000000A0000000300000005000000020000000500000001"
theorem small_5491239_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5491239_right_root small_5491239_right_fuel small_5491239_right_count small_5491239_right_encoded = true := by
  decide +kernel
theorem small_5491239_right_covered : CoveredBy scale carrier boxes small_5491239_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5491239_right_root small_5491239_right_fuel small_5491239_right_count small_5491239_right_encoded small_5491239_right_checked

theorem cover_5491239 : CoveredBy scale carrier boxes root_5491239 := by
  apply coveredBy_split_literal root_5491239 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0389.root_5491240 small_5491239_right_root coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0389.cover_5491240
  · exact small_5491239_right_covered
#print axioms cover_5491239

def root_5491234 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5491234_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5491234_right_fuel : Nat := 1
def small_5491234_right_count : Nat := 1
def small_5491234_right_encoded : String := "00000003"
theorem small_5491234_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5491234_right_root small_5491234_right_fuel small_5491234_right_count small_5491234_right_encoded = true := by
  decide +kernel
theorem small_5491234_right_covered : CoveredBy scale carrier boxes small_5491234_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5491234_right_root small_5491234_right_fuel small_5491234_right_count small_5491234_right_encoded small_5491234_right_checked

theorem cover_5491234 : CoveredBy scale carrier boxes root_5491234 := by
  apply coveredBy_split_literal root_5491234 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0389.root_5491239 small_5491234_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0389.cover_5491239
  · exact small_5491234_right_covered
#print axioms cover_5491234

def root_5491233 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5491233_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5491233_right_fuel : Nat := 6
def small_5491233_right_count : Nat := 13
def small_5491233_right_encoded : String := "1151E907000000030A0001081151E8FF08A912F912073CF800000001000000050000000500000004115224FF0000000400000005"
theorem small_5491233_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5491233_right_root small_5491233_right_fuel small_5491233_right_count small_5491233_right_encoded = true := by
  decide +kernel
theorem small_5491233_right_covered : CoveredBy scale carrier boxes small_5491233_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5491233_right_root small_5491233_right_fuel small_5491233_right_count small_5491233_right_encoded small_5491233_right_checked

theorem cover_5491233 : CoveredBy scale carrier boxes root_5491233 := by
  apply coveredBy_split_literal root_5491233 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0389.root_5491234 small_5491233_right_root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0389.cover_5491234
  · exact small_5491233_right_covered
#print axioms cover_5491233

def root_5491228 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5491228_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5491228_right_fuel : Nat := 1
def small_5491228_right_count : Nat := 1
def small_5491228_right_encoded : String := "00000002"
theorem small_5491228_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5491228_right_root small_5491228_right_fuel small_5491228_right_count small_5491228_right_encoded = true := by
  decide +kernel
theorem small_5491228_right_covered : CoveredBy scale carrier boxes small_5491228_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5491228_right_root small_5491228_right_fuel small_5491228_right_count small_5491228_right_encoded small_5491228_right_checked

theorem cover_5491228 : CoveredBy scale carrier boxes root_5491228 := by
  apply coveredBy_split_literal root_5491228 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0389.root_5491233 small_5491228_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0389.cover_5491233
  · exact small_5491228_right_covered
#print axioms cover_5491228

def root_5491227 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5491227_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5491227_right_fuel : Nat := 8
def small_5491227_right_count : Nat := 19
def small_5491227_right_encoded : String := "1151E905000000020A0000FC115225070A0001081151E8FF08A912F912073CF800000001000000050000000500000004115224FF0000000400000005000000031151E9070000000300000005"
theorem small_5491227_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5491227_right_root small_5491227_right_fuel small_5491227_right_count small_5491227_right_encoded = true := by
  decide +kernel
theorem small_5491227_right_covered : CoveredBy scale carrier boxes small_5491227_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5491227_right_root small_5491227_right_fuel small_5491227_right_count small_5491227_right_encoded small_5491227_right_checked

theorem cover_5491227 : CoveredBy scale carrier boxes root_5491227 := by
  apply coveredBy_split_literal root_5491227 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0389.root_5491228 small_5491227_right_root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0389.cover_5491228
  · exact small_5491227_right_covered
#print axioms cover_5491227

def root_5491221 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5491221_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5491221_left_fuel : Nat := 1
def small_5491221_left_count : Nat := 1
def small_5491221_left_encoded : String := "00000001"
theorem small_5491221_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5491221_left_root small_5491221_left_fuel small_5491221_left_count small_5491221_left_encoded = true := by
  decide +kernel
theorem small_5491221_left_covered : CoveredBy scale carrier boxes small_5491221_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5491221_left_root small_5491221_left_fuel small_5491221_left_count small_5491221_left_encoded small_5491221_left_checked

theorem cover_5491221 : CoveredBy scale carrier boxes root_5491221 := by
  apply coveredBy_split_literal root_5491221 small_5491221_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0389.root_5491227 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5491221_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0389.cover_5491227
#print axioms cover_5491221

def root_5517506 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5517506_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5517506_left_fuel : Nat := 29
def small_5517506_left_count : Nat := 253
def small_5517506_left_encoded : String := "138670FA04548A07138670FC0280010013D7B0F7078000F8128A7CF90000000107800108128A40FF0000000500000004128A7CFF00000004022A45850000000513E200FA00000002022A45870000000500000006128A40F90780010800000005128A7CFF0000000400000006000000010000000013D7ECF700000000078000F8128A7CF90000000107800108128A40FF022A45850000000513E200FA00000002022A45870000000513E200FC0000000303C001000000000513A54CF70000000008C000F80000000511FBE8F9000000050000000100000004128A7CFF00000004022A458513E1C4FA022A4587000000050000000A0000000213E200FA00000002022A458713E1C4FC03C001000000000513A54CF70000000008C000F800000005000000090000000313E200FC0000000303C0010013A510F708C000F811FC24F9000000010000000A11FBE8F900000006000000010000000013A54CF70000000008C000F811FC24F90000000108C0010811FBE8FF033F67C50000000500000009000000040000000911FBE8F908C0010811FBE8FF033F67C50000000513BC30FA00000002033F67C700000005000000060000000411FC24FF000000040000000600000001128A40F907800108128A40FF0000000500000004128A7CFF00000004022A45850000000513E200FA00000002022A4587000000050000000600000001000000031386ACFC000000030280010013D7B0F7078000F8128A7CF900000001078001080000000600000006000000060000000013D7ECF700000000078000F8128A7CF90000000107800108128A40FF022A458513E1C4FA067ECE8712EA58FC03C001000000000613A54CF70000000008C000F80000000A0000000600000003000000060000000213E200FA00000002067ECE8712EA58FC03C0010013A510F708C000F811FC24F900000001064001080000000600000006000000060000000013A54CF70000000008C000F811FC24F9000000010640010812FF70FF033F67C513BBF4FA0569AC4700000005000000060000000213BC30FA000000020569AC471340D4FC046001001383DCF70000000500000000138418F700000000096000F811AABCF90000000105A00108000000050000000A11AA80F9000000050000000100000003000000060000000412FFACFF00000004033F67C50000000613BC30FA000000020569AC471340D4FC04600100000000060000000A000000030000000611FBE8F906400108000000060000000600000001000000030000000600000004128A7CFF00000004022A45850000000613E200FA00000002067ECE8712EA58FC03C001000000000613A54CF70000000008C000F80000000A000000060000000300000006128A40F9000000060000000100000002"
theorem small_5517506_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5517506_left_root small_5517506_left_fuel small_5517506_left_count small_5517506_left_encoded = true := by
  decide +kernel
theorem small_5517506_left_covered : CoveredBy scale carrier boxes small_5517506_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5517506_left_root small_5517506_left_fuel small_5517506_left_count small_5517506_left_encoded small_5517506_left_checked

theorem cover_5517506 : CoveredBy scale carrier boxes root_5517506 := by
  apply coveredBy_split_literal root_5517506 small_5517506_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2065.root coord2 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact small_5517506_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2065.covered
#print axioms cover_5517506

def root_5517500 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5517500_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5517500_left_fuel : Nat := 1
def small_5517500_left_count : Nat := 1
def small_5517500_left_encoded : String := "00000004"
theorem small_5517500_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5517500_left_root small_5517500_left_fuel small_5517500_left_count small_5517500_left_encoded = true := by
  decide +kernel
theorem small_5517500_left_covered : CoveredBy scale carrier boxes small_5517500_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5517500_left_root small_5517500_left_fuel small_5517500_left_count small_5517500_left_encoded small_5517500_left_checked

theorem cover_5517500 : CoveredBy scale carrier boxes root_5517500 := by
  apply coveredBy_split_literal root_5517500 small_5517500_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0389.root_5517506 coord4 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_5517500_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0389.cover_5517506
#print axioms cover_5517500

def root_5515462 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5515462 : CoveredBy scale carrier boxes root_5515462 := by
  apply coveredBy_split_literal root_5515462 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2064.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0389.root_5517500 coord4 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2064.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0389.cover_5517500
#print axioms cover_5515462

def root_5515456 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5515456_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5515456_left_fuel : Nat := 1
def small_5515456_left_count : Nat := 1
def small_5515456_left_encoded : String := "00000001"
theorem small_5515456_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5515456_left_root small_5515456_left_fuel small_5515456_left_count small_5515456_left_encoded = true := by
  decide +kernel
theorem small_5515456_left_covered : CoveredBy scale carrier boxes small_5515456_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5515456_left_root small_5515456_left_fuel small_5515456_left_count small_5515456_left_encoded small_5515456_left_checked

theorem cover_5515456 : CoveredBy scale carrier boxes root_5515456 := by
  apply coveredBy_split_literal root_5515456 small_5515456_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0389.root_5515462 coord1 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_5515456_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0389.cover_5515462
#print axioms cover_5515456

def root_5515455 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5515455_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5515455_right_fuel : Nat := 19
def small_5515455_right_count : Nat := 127
def small_5515455_right_encoded : String := "135D44F905000108135D44FF04548A05138670FA04548A070000000500000006000000021386ACFA0000000204548A070000000A1386ACFC000000030280010013D7B0F7028000F813D7ECF9000000010280010813D7B0FF067ECE8500000006000000080000000400000006000000060000000013D7ECF700000000028000F813D7ECF900000001028001080000000A13D7ECFF00000004067ECE85000000060000000A13D7B0F90000000A0000000100000004135D80FF0000000404548A05138670FA04548A07138670FC028001000000000613D7ECF700000000028000F813D7ECF90000000107800108128A40FF0000000500000004128A7CFF0000000400000006000000060000000300000006000000021386ACFA0000000204548A07138670FC0280010013D7B0F7028000F800000008000000080000000013D7ECF700000000028000F813D7ECF90000000107800108128A40FF067ECE8512EA58FA022A45870000000513E200FC0000000303C00100000000060000000A000000020000000800000004128A7CFF00000004067ECE8512EA58FA022A45870000000800000006000000020000000813D7B0F907800108000000080000000800000001000000031386ACFC00000003028001000000000613D7ECF700000000028000F813D7ECF9000000010780010800000006000000060000000600000001"
theorem small_5515455_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5515455_right_root small_5515455_right_fuel small_5515455_right_count small_5515455_right_encoded = true := by
  decide +kernel
theorem small_5515455_right_covered : CoveredBy scale carrier boxes small_5515455_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5515455_right_root small_5515455_right_fuel small_5515455_right_count small_5515455_right_encoded small_5515455_right_checked

theorem cover_5515455 : CoveredBy scale carrier boxes root_5515455 := by
  apply coveredBy_split_literal root_5515455 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0389.root_5515456 small_5515455_right_root coord1 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0389.cover_5515456
  · exact small_5515455_right_covered
#print axioms cover_5515455

def root_5515450 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5515450_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16243968), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5515450_right_fuel : Nat := 1
def small_5515450_right_count : Nat := 1
def small_5515450_right_encoded : String := "00000000"
theorem small_5515450_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5515450_right_root small_5515450_right_fuel small_5515450_right_count small_5515450_right_encoded = true := by
  decide +kernel
theorem small_5515450_right_covered : CoveredBy scale carrier boxes small_5515450_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5515450_right_root small_5515450_right_fuel small_5515450_right_count small_5515450_right_encoded small_5515450_right_checked

theorem cover_5515450 : CoveredBy scale carrier boxes root_5515450 := by
  apply coveredBy_split_literal root_5515450 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0389.root_5515455 small_5515450_right_root coord0 true (-16243968)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0389.cover_5515455
  · exact small_5515450_right_covered
#print axioms cover_5515450

def root_5521328 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5521328 : CoveredBy scale carrier boxes root_5521328 := by
  apply coveredBy_split_literal root_5521328 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2066.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2067.root coord2 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2066.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2067.covered
#print axioms cover_5521328

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0389
