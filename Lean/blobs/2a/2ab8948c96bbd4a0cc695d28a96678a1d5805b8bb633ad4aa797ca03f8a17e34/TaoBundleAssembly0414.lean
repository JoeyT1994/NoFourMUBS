import TaoBundleAssembly0411
import TaoBundleAssembly0413
import TaoBundleChunkBatch0563
import TaoBundleChunkBatch0564
import TaoBundleChunkBatch0565
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0414
def root_5961747 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5961747_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5961747_right_fuel : Nat := 25
def small_5961747_right_count : Nat := 401
def small_5961747_right_encoded : String := "135D44FB05000106135D44FD04548A03138670F804548A09138670FE07800100128A40F70000000500000000128A7CF70000000000000009000000041386ACFE0000000407800100128A40F7028000FA13D7ECFB00000002028001060000000A13D7ECFD00000003022A45830000000613E200F800000001067ECE8912EA58FE06400100000000060000000900000004000000060000000A00000000128A7CF700000000028000FA13D7ECFB00000002028001060000000913D7ECFD00000003022A45830000000A0000000A0000000A000000011386ACF80000000104548A09000000091386ACFE0000000407800100000000090000000900000003135D80FD0000000304548A03138670F804548A09138670FE07800100128A40F7028000FA13D7ECFB0000000207800106128A40FD022A45830000000513E200F800000001022A45890000000513E200FE000000040640010012FF70F7000000060000000012FFACF70000000003C000FA13A54CFB00000002064001060000000912FFACFD00000003033F67C300000005000000090000000900000003128A7CFD00000003022A458313E1C4F8022A458900000005000000060000000113E200F800000001022A458913E1C4FE064001000000000512FFACF70000000003C000FA0000000513A510FB0000000500000002000000040000000613D7B0FB07800106128A40FD022A4583000000050000000900000003128A7CFD00000003022A458300000005000000060000000200000000128A7CF700000000028000FA13D7ECFB0000000207800106128A40FD022A458313E1C4F8022A45890000000513E200FE0000000408C001000000000511FC24F70000000003C000FA00000005000000090000000113E200F800000001022A4589000000090000000900000003128A7CFD00000003022A458313E1C4F8022A458900000005000000080000000113E200F800000001022A458913E1C4FE00000008000000040000000813D7B0FB07800106128A40FD022A4583000000050000000900000003128A7CFD00000003022A458313E1C4F8022A45890000000500000006000000010000000800000002000000041386ACFE0000000407800100128A40F7028000FA13D7ECFB000000020780010600000006000000060000000600000000128A7CF700000000028000FA13D7ECFB0000000207800106128A40FD022A458313E1C4F8067ECE8912EA58FE08C001000000000611FC24F70000000003C000FA13A54CFB00000002064001060000000A000000060000000600000004000000060000000113E200F800000001067ECE8912EA58FE08C0010011FBE8F703C000FA13A54CFB00000002064001060000000900000006000000060000000000000008000000040000000600000003128A7CFD00000003022A4583000000060000000813D7B0FB07800106128A40FD022A45830000000613E200F80000000100000006000000030000000600000002000000011386ACF80000000104548A09138670FE07800100128A40F7028000FA13D7ECFB000000020780010600000009128A7CFD00000003067ECE8312EA58F8022A458913E1C4FE0640010012FF70F703C000FA13A54CFB0000000208C0010600000007000000070000000700000000000000090000000413E200FE000000040640010000000006000000080000000112EA94F8000000010000000913D7B0FB0780010600000009128A7CFD00000003067ECE8312EA58F8022A4589000000090000000600000001000000070000000200000000128A7CF700000000028000FA13D7ECFB000000020780010600000009128A7CFD00000003067ECE8312EA58F800000008000000010000000800000009000000041386ACFE0000000407800100128A40F7028000FA13D7ECFB0000000207800106128A40FD067ECE8312EA58F8067ECE8912EA58FE06400100000000060000000900000004000000060000000112EA94F800000001067ECE89000000090000000500000003128A7CFD00000003067ECE83000000060000000513D7B0FB07800106128A40FD067ECE83000000060000000900000003000000060000000200000000128A7CF700000000028000FA13D7ECFB0000000207800106128A40FD067ECE8312EA58F8067ECE8900000009000000050000000100000005000000030000000813D7B0FB0780010600000009000000080000000200000002"
theorem small_5961747_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5961747_right_root small_5961747_right_fuel small_5961747_right_count small_5961747_right_encoded = true := by
  decide +kernel
theorem small_5961747_right_covered : CoveredBy scale carrier boxes small_5961747_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5961747_right_root small_5961747_right_fuel small_5961747_right_count small_5961747_right_encoded small_5961747_right_checked

theorem cover_5961747 : CoveredBy scale carrier boxes root_5961747 := by
  apply coveredBy_split_literal root_5961747 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0413.root_5961748 small_5961747_right_root coord2 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0413.cover_5961748
  · exact small_5961747_right_covered
#print axioms cover_5961747

def root_5961741 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5961741_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5961741_left_fuel : Nat := 1
def small_5961741_left_count : Nat := 1
def small_5961741_left_encoded : String := "00000000"
theorem small_5961741_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5961741_left_root small_5961741_left_fuel small_5961741_left_count small_5961741_left_encoded = true := by
  decide +kernel
theorem small_5961741_left_covered : CoveredBy scale carrier boxes small_5961741_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5961741_left_root small_5961741_left_fuel small_5961741_left_count small_5961741_left_encoded small_5961741_left_checked

theorem cover_5961741 : CoveredBy scale carrier boxes root_5961741 := by
  apply coveredBy_split_literal root_5961741 small_5961741_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0414.root_5961747 coord0 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_5961741_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0414.cover_5961747
#print axioms cover_5961741

def root_5955881 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5955881 : CoveredBy scale carrier boxes root_5955881 := by
  apply coveredBy_split_literal root_5955881 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0413.root_5955882 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0414.root_5961741 coord0 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0413.cover_5955882
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0414.cover_5961741
#print axioms cover_5955881

def root_5955876 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5955876_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5955876_right_fuel : Nat := 1
def small_5955876_right_count : Nat := 1
def small_5955876_right_encoded : String := "00000004"
theorem small_5955876_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5955876_right_root small_5955876_right_fuel small_5955876_right_count small_5955876_right_encoded = true := by
  decide +kernel
theorem small_5955876_right_covered : CoveredBy scale carrier boxes small_5955876_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5955876_right_root small_5955876_right_fuel small_5955876_right_count small_5955876_right_encoded small_5955876_right_checked

theorem cover_5955876 : CoveredBy scale carrier boxes root_5955876 := by
  apply coveredBy_split_literal root_5955876 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0414.root_5955881 small_5955876_right_root coord4 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0414.cover_5955881
  · exact small_5955876_right_covered
#print axioms cover_5955876

def root_5955875 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5955875_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5955875_right_fuel : Nat := 24
def small_5955875_right_count : Nat := 285
def small_5955875_right_encoded : String := "12073CFE0000000405000100135D44F7050000FA135D80FB0000000205000106135D44FD04548A03138670F80CFD9C090F34D0FE028001000000000613D7ECF700000000078000FA128A7CFB00000002028001060000000600000006000000060000000400000006000000011386ACF8000000010CFD9C090F34D0FE0280010013D7B0F7078000FA128A7CFB000000020280010613D7B0FD067ECE83000000060000000A0000000300000006000000060000000013D7ECF700000000078000FA128A7CFB000000020280010613D7B0FD0000000A0000000313D7ECFD00000003067ECE830000000600000005128A40FB028001060000000A0000000600000002000000040F350CFE000000040000000500000003135D80FD0000000304548A03138670F80CFD9C090F34D0FE000000060000000400000006000000011386ACF8000000010CFD9C090F34D0FE028001000000000613D7ECF700000000078000FA128A7CFB0000000207800106128A40FD067ECE8300000006000000050000000300000005000000050000000400000005135D44FB05000106135D44FD04548A03000000061386ACF8000000010000000600000003000000060000000200000000135D80F700000000050000FA135D80FB0000000205000106135D44FD04548A03138670F80CFD9C090F34D0FE07800100128A40F7078000FA128A7CFB00000002028001060000000A13D7ECFD00000003022A4583000000060000000A0000000A00000000128A7CF700000000078000FA128A7CFB00000002028001060000000A13D7ECFD00000003022A45830000000A0000000A0000000A000000040000000A000000011386ACF8000000010CFD9C090F34D0FE07800100128A40F7078000FA128A7CFB00000002028001060000000A13D7ECFD00000003067ECE8312EA58F80AD3578910D100FE0640010012FF70F70000000A000000000000000500000004000000050000000100000005128A40FB0000000A0000000200000000128A7CF700000000078000FA128A7CFB000000020000000500000005000000040000000500000003135D80FD0000000304548A03138670F80CFD9C090F34D0FE07800100128A40F7078000FA128A7CFB0000000207800106128A40FD022A45830000000613E200F8000000010AD3578910D100FE00000006000000040000000500000003128A7CFD00000003000000060000000600000000128A7CF700000000078000FA128A7CFB0000000207800106128A40FD022A458313E1C4F80AD3578910D100FE08C0010000000006000000070000000400000005000000010000000500000003128A7CFD0000000300000005128A40FB07800106128A40FD022A4583000000060000000500000003128A7CFD00000003000000050000000200000004000000050000000100000005135D44FB05000106135D44FD04548A030000000A1386ACF8000000010CFD9C090F34D0FE078001000000000A00000005000000040000000500000003135D80FD0000000304548A03138670F80CFD9C090F34D0FE000000060000000400000005000000010000000500000002"
theorem small_5955875_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5955875_right_root small_5955875_right_fuel small_5955875_right_count small_5955875_right_encoded = true := by
  decide +kernel
theorem small_5955875_right_covered : CoveredBy scale carrier boxes small_5955875_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5955875_right_root small_5955875_right_fuel small_5955875_right_count small_5955875_right_encoded small_5955875_right_checked

theorem cover_5955875 : CoveredBy scale carrier boxes root_5955875 := by
  apply coveredBy_split_literal root_5955875 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0414.root_5955876 small_5955875_right_root coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0414.cover_5955876
  · exact small_5955875_right_covered
#print axioms cover_5955875

def root_5955870 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5955870_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5955870_right_fuel : Nat := 1
def small_5955870_right_count : Nat := 1
def small_5955870_right_encoded : String := "00000001"
theorem small_5955870_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5955870_right_root small_5955870_right_fuel small_5955870_right_count small_5955870_right_encoded = true := by
  decide +kernel
theorem small_5955870_right_covered : CoveredBy scale carrier boxes small_5955870_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5955870_right_root small_5955870_right_fuel small_5955870_right_count small_5955870_right_encoded small_5955870_right_checked

theorem cover_5955870 : CoveredBy scale carrier boxes root_5955870 := by
  apply coveredBy_split_literal root_5955870 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0414.root_5955875 small_5955870_right_root coord1 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0414.cover_5955875
  · exact small_5955870_right_covered
#print axioms cover_5955870

def root_5955869 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5955869_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5955869_right_fuel : Nat := 26
def small_5955869_right_count : Nat := 319
def small_5955869_right_encoded : String := "12073CF80000000108A91309120700FE05000100135D44F7050000FA135D80FB0000000205000106135D44FD0CFD9C030F34D0F804548A09138670FE028001000000000900000009000000041386ACFE000000040280010013D7B0F7078000FA128A7CFB000000020280010613D7B0FD0AD3578310D100F80000000900000001000000070000000300000007128A40FB00000007000000020000000013D7ECF700000000078000FA128A7CFB00000002028001060000000913D7ECFD000000030AD3578310D100F8067ECE8900000009000000050000000100000005128A40FB0000000900000002000000010F350CF8000000010000000900000003135D80FD000000030CFD9C030F34D0F804548A09138670FE0280010013D7B0F7078000FA00000007000000070000000013D7ECF700000000078000FA128A7CFB0000000207800106128A40FD0AD3578310D100F8022A45890000000700000007000000010000000700000003128A7CFD000000030AD3578310D100F8022A458900000007000000070000000100000007128A40FB0000000700000002000000041386ACFE000000040280010013D7B0F7078000FA128A7CFB0000000207800106128A40FD000000070000000300000007128A40FB00000007000000020000000013D7ECF700000000078000FA128A7CFB0000000207800106128A40FD0AD3578310D100F8067ECE8912EA58FE03C00100000000070000000500000004000000050000000100000005000000030000000500000005000000010F350CF80000000104548A090000000700000005135D44FB05000106135D44FD0CFD9C030F34D0F800000009000000010000000700000003135D80FD000000030CFD9C030F34D0F804548A09000000071386ACFE0000000402800100000000070000000500000001000000070000000200000000135D80F700000000050000FA135D80FB0000000205000106135D44FD0CFD9C030F34D0F804548A09000000091386ACFE0000000407800100128A40F7078000FA128A7CFB00000002028001060000000913D7ECFD000000030AD3578310D100F8067ECE89000000090000000500000001000000050000000900000000128A7CF70000000000000009000000010000000900000003135D80FD000000030CFD9C030F34D0F804548A09138670FE07800100128A40F7078000FA128A7CFB0000000207800106128A40FD0AD3578310D100F8022A45890000000900000009000000010000000900000003128A7CFD000000030AD3578310D100F8022A458913E1C4FE064001000000000A12FFACF7000000000000000A00000004000000050000000100000005128A40FB0780010600000009128A7CFD000000030AD3578310D100F8022A4589000000070000000500000001000000050000000200000000128A7CF700000000078000FA128A7CFB000000020780010600000009128A7CFD0000000300000005128A40FB000000090000000200000004000000050000000100000005135D44FB0500010600000009135D80FD000000030CFD9C030F34D0F804548A0900000009000000050000000100000005000000020000000412073CFE0000000405000100135D44F7050000FA135D80FB0000000205000106135D44FD0CFD9C030F34D0F80CFD9C090F34D0FE0280010013D7B0F7078000FA128A7CFB0000000200000005000000050000000000000005000000040000000500000001000000050000000300000005000000050000000000000005"
theorem small_5955869_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5955869_right_root small_5955869_right_fuel small_5955869_right_count small_5955869_right_encoded = true := by
  decide +kernel
theorem small_5955869_right_covered : CoveredBy scale carrier boxes small_5955869_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5955869_right_root small_5955869_right_fuel small_5955869_right_count small_5955869_right_encoded small_5955869_right_checked

theorem cover_5955869 : CoveredBy scale carrier boxes root_5955869 := by
  apply coveredBy_split_literal root_5955869 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0414.root_5955870 small_5955869_right_root coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0414.cover_5955870
  · exact small_5955869_right_covered
#print axioms cover_5955869

def root_5955864 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5955864_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5955864_right_fuel : Nat := 1
def small_5955864_right_count : Nat := 1
def small_5955864_right_encoded : String := "00000004"
theorem small_5955864_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5955864_right_root small_5955864_right_fuel small_5955864_right_count small_5955864_right_encoded = true := by
  decide +kernel
theorem small_5955864_right_covered : CoveredBy scale carrier boxes small_5955864_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5955864_right_root small_5955864_right_fuel small_5955864_right_count small_5955864_right_encoded small_5955864_right_checked

theorem cover_5955864 : CoveredBy scale carrier boxes root_5955864 := by
  apply coveredBy_split_literal root_5955864 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0414.root_5955869 small_5955864_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0414.cover_5955869
  · exact small_5955864_right_covered
#print axioms cover_5955864

def root_5955863 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5955863_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5955863_right_fuel : Nat := 4
def small_5955863_right_count : Nat := 7
def small_5955863_right_encoded : String := "1151E9090000000408A91303120700F8000000050000000100000005"
theorem small_5955863_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5955863_right_root small_5955863_right_fuel small_5955863_right_count small_5955863_right_encoded = true := by
  decide +kernel
theorem small_5955863_right_covered : CoveredBy scale carrier boxes small_5955863_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5955863_right_root small_5955863_right_fuel small_5955863_right_count small_5955863_right_encoded small_5955863_right_checked

theorem cover_5955863 : CoveredBy scale carrier boxes root_5955863 := by
  apply coveredBy_split_literal root_5955863 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0414.root_5955864 small_5955863_right_root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0414.cover_5955864
  · exact small_5955863_right_covered
#print axioms cover_5955863

def root_5955858 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5955858_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5955858_right_fuel : Nat := 1
def small_5955858_right_count : Nat := 1
def small_5955858_right_encoded : String := "00000003"
theorem small_5955858_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5955858_right_root small_5955858_right_fuel small_5955858_right_count small_5955858_right_encoded = true := by
  decide +kernel
theorem small_5955858_right_covered : CoveredBy scale carrier boxes small_5955858_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5955858_right_root small_5955858_right_fuel small_5955858_right_count small_5955858_right_encoded small_5955858_right_checked

theorem cover_5955858 : CoveredBy scale carrier boxes root_5955858 := by
  apply coveredBy_split_literal root_5955858 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0414.root_5955863 small_5955858_right_root coord3 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0414.cover_5955863
  · exact small_5955858_right_covered
#print axioms cover_5955858

def root_5955857 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5955857 : CoveredBy scale carrier boxes root_5955857 := by
  apply coveredBy_split_literal root_5955857 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0414.root_5955858 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2249.root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0414.cover_5955858
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2249.covered
#print axioms cover_5955857

def root_5955852 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5955852_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5955852_right_fuel : Nat := 1
def small_5955852_right_count : Nat := 1
def small_5955852_right_encoded : String := "00000002"
theorem small_5955852_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5955852_right_root small_5955852_right_fuel small_5955852_right_count small_5955852_right_encoded = true := by
  decide +kernel
theorem small_5955852_right_covered : CoveredBy scale carrier boxes small_5955852_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5955852_right_root small_5955852_right_fuel small_5955852_right_count small_5955852_right_encoded small_5955852_right_checked

theorem cover_5955852 : CoveredBy scale carrier boxes root_5955852 := by
  apply coveredBy_split_literal root_5955852 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0414.root_5955857 small_5955852_right_root coord2 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0414.cover_5955857
  · exact small_5955852_right_covered
#print axioms cover_5955852

def root_5931702 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5931702 : CoveredBy scale carrier boxes root_5931702 := by
  apply coveredBy_split_literal root_5931702 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0413.root_5931703 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0414.root_5955852 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0413.cover_5931703
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0414.cover_5955852
#print axioms cover_5931702

def root_5931697 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5931697_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5931697_right_fuel : Nat := 1
def small_5931697_right_count : Nat := 1
def small_5931697_right_encoded : String := "00000001"
theorem small_5931697_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5931697_right_root small_5931697_right_fuel small_5931697_right_count small_5931697_right_encoded = true := by
  decide +kernel
theorem small_5931697_right_covered : CoveredBy scale carrier boxes small_5931697_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5931697_right_root small_5931697_right_fuel small_5931697_right_count small_5931697_right_encoded small_5931697_right_checked

theorem cover_5931697 : CoveredBy scale carrier boxes root_5931697 := by
  apply coveredBy_split_literal root_5931697 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0414.root_5931702 small_5931697_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0414.cover_5931702
  · exact small_5931697_right_covered
#print axioms cover_5931697

def root_5931696 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5931696_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5931696_right_fuel : Nat := 16
def small_5931696_right_count : Nat := 89
def small_5931696_right_encoded : String := "1151E903000000010A0000FA115224FB000000020A0001061151E8FD0A0000FE1152250908A912FB12073CFA000000020000000500000005000000041151E909000000040000000500000003115224FD000000030A0000FE000000051151E90900000004000000051151E8FB0A0001061151E8FD0A0000FE1152250908A91309120700FE000000050000000400000005000000041151E909000000040000000500000003115224FD000000030A0000FE1152250908A912FD12073D0608A91309120700FE0500010000000005135D80F700000000050000F800000005135D450300000001000000050000000412073CFE000000040500010000000005135D80F7000000000000000500000003120701060000000308A91309120700FE000000050000000400000005000000041151E9090000000408A912FD12073D060500010000000005135D80F700000000050000F80000000500000006000000030000000600000002"
theorem small_5931696_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5931696_right_root small_5931696_right_fuel small_5931696_right_count small_5931696_right_encoded = true := by
  decide +kernel
theorem small_5931696_right_covered : CoveredBy scale carrier boxes small_5931696_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5931696_right_root small_5931696_right_fuel small_5931696_right_count small_5931696_right_encoded small_5931696_right_checked

theorem cover_5931696 : CoveredBy scale carrier boxes root_5931696 := by
  apply coveredBy_split_literal root_5931696 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0414.root_5931697 small_5931696_right_root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0414.cover_5931697
  · exact small_5931696_right_covered
#print axioms cover_5931696

def root_5931691 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5931691_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5931691_right_fuel : Nat := 1
def small_5931691_right_count : Nat := 1
def small_5931691_right_encoded : String := "00000000"
theorem small_5931691_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5931691_right_root small_5931691_right_fuel small_5931691_right_count small_5931691_right_encoded = true := by
  decide +kernel
theorem small_5931691_right_covered : CoveredBy scale carrier boxes small_5931691_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5931691_right_root small_5931691_right_fuel small_5931691_right_count small_5931691_right_encoded small_5931691_right_checked

theorem cover_5931691 : CoveredBy scale carrier boxes root_5931691 := by
  apply coveredBy_split_literal root_5931691 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0414.root_5931696 small_5931691_right_root coord0 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0414.cover_5931696
  · exact small_5931691_right_covered
#print axioms cover_5931691

def root_5978696 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5978696_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5978696_right_fuel : Nat := 21
def small_5978696_right_count : Nat := 259
def small_5978696_right_encoded : String := "1151E903000000010A0000FA115224FB000000020A0001061151E8FD0A0000FE000000051151E909000000040000000500000003115224FD000000030A0000FE1152250908A912F712073D0008A912FB12073CFA0000000208A912FD12073D0608A91309120700FE00000005000000040000000500000003000000050000000500000000120701000000000008A912FB12073CFA0000000208A912FD00000005120701060000000300000008120700FA08A912FD0000000512070106000000030000000A00000002000000041151E9090000000408A912F712073D0008A912FB12073CFA0000000208A912FD12073D06050000F800000005135D45030000000100000005000000031207010600000003050000F80000000500000008120700FA08A912FD000000051207010600000003050000F800000005000000080000000200000000120701000000000008A912FB12073CFA0000000208A912FD12073D06050000F8000000050000000800000003120701060000000300000008120700FA08A912FD12073D06050000F8000000050000000800000003120701060000000300000008000000021151E8FB0A0001061151E8FD0A0000FE1152250908A912F712073D0008A91309120700FE050000F800000005000000090000000412073CFE00000004050000F800000005135D4503000000010000000500000000120701000000000000000009000000041151E9090000000408A912F712073D00050000F80000000500000009000000000000000900000003115224FD000000030A0000FE1152250908A912F712073D0008A912FD12073D0608A91309120700FE050000F8135D8103050000FA00000005135D44FB0CFD9BF70F350D000000000500000000000000050000000200000001135D450300000001050000FA00000005135D44FB0CFD9BF70F350D000CFD9BFD00000009000000050000000000000009000000020000000412073CFE00000004050000F8135D8103050000FA00000005135D44FB0CFD9BF70F350D000000000500000000000000050000000200000001135D450300000001050000FA00000005135D44FB0CFD9BF70F350D000CFD9BFD0000000800000005000000000F34D10000000000000000080000000200000003120701060000000308A91309120700FE00000008000000040000000800000000120701000000000008A912FD12073D0608A91309120700FE0000000800000004000000080000000300000008000000041151E9090000000408A912F712073D0008A912FD12073D06050000F8135D8103050000FA00000008135D44FB050000FE00000008000000060000000200000001135D450300000001050000FA00000008000000090000000312070106000000030000000600000000120701000000000008A912FD000000080000000800000002"
theorem small_5978696_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5978696_right_root small_5978696_right_fuel small_5978696_right_count small_5978696_right_encoded = true := by
  decide +kernel
theorem small_5978696_right_covered : CoveredBy scale carrier boxes small_5978696_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5978696_right_root small_5978696_right_fuel small_5978696_right_count small_5978696_right_encoded small_5978696_right_checked

theorem cover_5978696 : CoveredBy scale carrier boxes root_5978696 := by
  apply coveredBy_split_literal root_5978696 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2250.root small_5978696_right_root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2250.covered
  · exact small_5978696_right_covered
#print axioms cover_5978696

def root_5978690 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5978690_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5978690_left_fuel : Nat := 1
def small_5978690_left_count : Nat := 1
def small_5978690_left_encoded : String := "00000000"
theorem small_5978690_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5978690_left_root small_5978690_left_fuel small_5978690_left_count small_5978690_left_encoded = true := by
  decide +kernel
theorem small_5978690_left_covered : CoveredBy scale carrier boxes small_5978690_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5978690_left_root small_5978690_left_fuel small_5978690_left_count small_5978690_left_encoded small_5978690_left_checked

theorem cover_5978690 : CoveredBy scale carrier boxes root_5978690 := by
  apply coveredBy_split_literal root_5978690 small_5978690_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0414.root_5978696 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5978690_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0414.cover_5978696
#print axioms cover_5978690

def root_5931690 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5931690 : CoveredBy scale carrier boxes root_5931690 := by
  apply coveredBy_split_literal root_5931690 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0414.root_5931691 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0414.root_5978690 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0414.cover_5931691
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0414.cover_5978690
#print axioms cover_5931690

def root_5895112 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5895112 : CoveredBy scale carrier boxes root_5895112 := by
  apply coveredBy_split_literal root_5895112 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0411.root_5895113 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0414.root_5931690 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0411.cover_5895113
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0414.cover_5931690
#print axioms cover_5895112

def root_5985379 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5985379 : CoveredBy scale carrier boxes root_5985379 := by
  apply coveredBy_split_literal root_5985379 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2252.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2253.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2252.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2253.covered
#print axioms cover_5985379

def root_5982215 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5982215 : CoveredBy scale carrier boxes root_5982215 := by
  apply coveredBy_split_literal root_5982215 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2251.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0414.root_5985379 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2251.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0414.cover_5985379
#print axioms cover_5982215

def root_5895111 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5895111 : CoveredBy scale carrier boxes root_5895111 := by
  apply coveredBy_split_literal root_5895111 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0414.root_5895112 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0414.root_5982215 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0414.cover_5895112
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0414.cover_5982215
#print axioms cover_5895111

def root_5993688 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5993688 : CoveredBy scale carrier boxes root_5993688 := by
  apply coveredBy_split_literal root_5993688 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2256.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2257.root coord1 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2256.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2257.covered
#print axioms cover_5993688

def root_5993682 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5993682_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5993682_left_fuel : Nat := 1
def small_5993682_left_count : Nat := 1
def small_5993682_left_encoded : String := "00000004"
theorem small_5993682_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5993682_left_root small_5993682_left_fuel small_5993682_left_count small_5993682_left_encoded = true := by
  decide +kernel
theorem small_5993682_left_covered : CoveredBy scale carrier boxes small_5993682_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5993682_left_root small_5993682_left_fuel small_5993682_left_count small_5993682_left_encoded small_5993682_left_checked

theorem cover_5993682 : CoveredBy scale carrier boxes root_5993682 := by
  apply coveredBy_split_literal root_5993682 small_5993682_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0414.root_5993688 coord4 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_5993682_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0414.cover_5993688
#print axioms cover_5993682

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0414
