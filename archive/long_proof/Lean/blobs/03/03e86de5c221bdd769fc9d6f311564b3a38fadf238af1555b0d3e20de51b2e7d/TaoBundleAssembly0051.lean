import TaoBundleAssembly0047
import TaoBundleAssembly0049
import TaoBundleAssembly0050
import TaoBundleChunkBatch0205
import TaoBundleChunkBatch0206
import TaoBundleChunkBatch0207
import TaoBundleChunkBatch0208
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051
def root_2123150 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2123150_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2123150_left_fuel : Nat := 28
def small_2123150_left_count : Nat := 225
def small_2123150_left_encoded : String := "0F34D108000000040C9A87020F87510300000001078000F6128A7CF700000000078000FC128A7CFD00000003022A457B13E201040AD3578910D10108000000040000000610D13D080B4D44020000000610804D0308C000F60000000611FBE8F708C000FC0000000A000000050000000000000001000000040000000213E1C504000000020AD3578910D10108000000040B4D44020000000610804D03000000060000000110D13D080B4D4402108011030000000108C000F611FC24F7000000000000000911FBE8F708C000FC0000000A11FBE8FD00000006000000030000000010804D0308C000F611FC24F70000000008C000FC11FC24FD000000030115233B0000000613F85904000000020BE879C91011710800000004000000061011AD080BF3E5820000000610092903096000F60000000611AA80F70000000A0000000000000001000000040000000611FBE8F708C000FC11FC24FD000000030115233B0000000A13F85904000000020BE879C91011710800000004000000050000000A00000005000000000000000100000004128A40FD022A457B0000000613E1C504000000020AD35789000000060000000600000003128A40F7078000FC128A7CFD00000003022A457B13E201040AD3578910D10108000000040000000510D13D080B4D44020000000A00000005000000040000000213E1C504000000020AD3578910D10108000000040000000510D13D080B4D44021080110300000001064000F60000000A00000005000000050000000400000005000000000F878D03078000F6128A7CF700000000078000FC128A7CFD00000003022A457B13E201040AD3578910D10108000000040000000510D13D080DE7CA020E5FD9030000000108C000F611FC24F700000000000000060000000500000005000000040000000213E1C504000000020AD3578910D10108000000040000000510D13D080DE7CA020E5FD9030000000108C000F611FC24F70000000008C000FC11FC24FD000000030115233B13F895040BE879C900000006000000060000000213F85904000000020BE879C91011710800000004000000051011AD080D4128820EFA110300000001096000F611AABCF7000000000000000611AA80F7096000FC11AABCFD000000030000000A00000005000000000EFA4D03096000F611AABCF7000000000000000600000005000000010000000400000005000000050000000500000004000000050000000500000001"
theorem small_2123150_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2123150_left_root small_2123150_left_fuel small_2123150_left_count small_2123150_left_encoded = true := by
  decide +kernel
theorem small_2123150_left_covered : CoveredBy scale carrier boxes small_2123150_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2123150_left_root small_2123150_left_fuel small_2123150_left_count small_2123150_left_encoded small_2123150_left_checked

theorem cover_2123150 : CoveredBy scale carrier boxes root_2123150 := by
  apply coveredBy_split_literal root_2123150 small_2123150_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0050.root_2123632 coord4 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_2123150_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0050.cover_2123632
#print axioms cover_2123150

def root_2123144 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2123144_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2123144_left_fuel : Nat := 1
def small_2123144_left_count : Nat := 1
def small_2123144_left_encoded : String := "00000002"
theorem small_2123144_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2123144_left_root small_2123144_left_fuel small_2123144_left_count small_2123144_left_encoded = true := by
  decide +kernel
theorem small_2123144_left_covered : CoveredBy scale carrier boxes small_2123144_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2123144_left_root small_2123144_left_fuel small_2123144_left_count small_2123144_left_encoded small_2123144_left_checked

theorem cover_2123144 : CoveredBy scale carrier boxes root_2123144 := by
  apply coveredBy_split_literal root_2123144 small_2123144_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.root_2123150 coord2 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_2123144_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.cover_2123150
#print axioms cover_2123144

def root_2122698 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2122698_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2122698_left_fuel : Nat := 20
def small_2122698_left_count : Nat := 213
def small_2122698_left_encoded : String := "1386AD040CFD9C090F34D108000000040C9A87020F87510300000001078000F6128A7CF700000000078000FC128A7CFD000000030000000600000006128A40F7078000FC128A7CFD000000030000000A00000005000000000F878D03078000F6128A7CF700000000078000FC128A7CFD00000003067ECE7B0000000612EA5904000000020AD3578900000006000000060000000500000005000000010F350D080C9A87020F875103000000010C9A87080F87510900000004078000F6128A7CF700000000078000FC0000000800000008128A40F7078000FC0000000800000008000000000F878D09078000F6128A7CF700000000078000FC128A7CFD00000003067ECE7B0000000812EA5904000000020B4D44020000000810804D030DE7CA08000000080000000A00000001128A40FD0000000600000003128A40F7078000FC128A7CFD000000030000000A128A40FD067ECE7B0000000612EA5904000000020B4D44020000000610804D030DE7CA080000000800000005000000010000000300000000000000040F878D030C9A87080F87510900000004078000F6128A7CF700000000078000FC128A7CFD00000003067ECE7B0000000712EA5904000000020DE7CA020000000800000007128A40FD0000000700000003128A40F7078000FC128A7CFD0000000300000009128A40FD067ECE7B0000000712EA5904000000020DE7CA02000000080000000900000003000000000F878D09078000F6128A7CF700000000078000FC128A7CFD00000003067ECE7B12EA95040DE7CA020E5FD903000000010DE7CA080000000800000006000000090000000212EA5904000000020DE7CA020E5FD903000000010DE7CA080E5FD9090000000408C000F600000008000000080E60150908C000F60000000611FBE8F70000000A00000000000000040E6015030DE7CA080E5FD9090000000408C000F600000007000000090E60150908C000F611FC24F70000000000000006000000050000000400000001128A40FD067ECE7B0000000612EA5904000000020DE7CA02000000060E601503000000050000000100000003128A40F7078000FC128A7CFD00000003067ECE7B0000000912EA5904000000020DE7CA020E5FD903000000010000000900000009000000050000000000000004000000010000000400000002"
theorem small_2122698_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2122698_left_root small_2122698_left_fuel small_2122698_left_count small_2122698_left_encoded = true := by
  decide +kernel
theorem small_2122698_left_covered : CoveredBy scale carrier boxes small_2122698_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2122698_left_root small_2122698_left_fuel small_2122698_left_count small_2122698_left_encoded small_2122698_left_checked

theorem cover_2122698 : CoveredBy scale carrier boxes root_2122698 := by
  apply coveredBy_split_literal root_2122698 small_2122698_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.root_2123144 coord2 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact small_2122698_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.cover_2123144
#print axioms cover_2122698

def root_2122693 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2122693_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2122693_right_fuel : Nat := 1
def small_2122693_right_count : Nat := 1
def small_2122693_right_encoded : String := "00000001"
theorem small_2122693_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2122693_right_root small_2122693_right_fuel small_2122693_right_count small_2122693_right_encoded = true := by
  decide +kernel
theorem small_2122693_right_covered : CoveredBy scale carrier boxes small_2122693_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2122693_right_root small_2122693_right_fuel small_2122693_right_count small_2122693_right_encoded small_2122693_right_checked

theorem cover_2122693 : CoveredBy scale carrier boxes root_2122693 := by
  apply coveredBy_split_literal root_2122693 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.root_2122698 small_2122693_right_root coord1 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.cover_2122698
  · exact small_2122693_right_covered
#print axioms cover_2122693

def root_2122177 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2122177_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2122177_left_fuel : Nat := 32
def small_2122177_left_count : Nat := 243
def small_2122177_left_encoded : String := "0F34D10200000001045489FB1386AD040CFD9C090F34D10800000004000000050F350D080C9A87080F87510900000004078000F6128A7CF700000000078000FC128A7CFD0000000300000009128A40FD0000000700000003000000090F878D09078000F6128A7CF700000000078000FC128A7CFD000000030AD357830000000900000009000000050000000500000004000000040000000213867104000000020CFD9C090F34D10800000004000000050F350D080C9A87080F87510900000004078000F6128A7CF700000000078000FC128A7CFD000000030AD3578310D1010200000001022A457B0000000913E1C504000000020B4D44080000000910804D09000000090000000410D13D02022A457B13E201040B4D44080000000910804D0908C000F611FC24F7000000000000000700000009000000040000000213E1C504000000020B4D4408108011090000000408C000F611FC24F70000000008C000FC000000070000000711FBE8F7000000090000000010804D0908C000F611FC24F70000000008C000FC11FC24FD000000030BE879C31011710200000001000000091011AD020115233B0000000713F85904000000020BF3E5880000000610092909096000F611AABCF7000000000000000700000009000000040000000111FBE8FD0BE879C3101171020000000100000007000000070000000311FBE8F708C000FC0000000900000005000000000000000400000001128A40FD0AD3578310D10102000000010000000510D13D02022A457B13E201040B4D440800000007000000050000000213E1C504000000020B4D4408108011090000000408C000F60000000700000005000000050000000100000003128A40F7078000FC128A7CFD000000030AD35783000000090000000900000005000000000F878D09078000F6128A7CF700000000078000FC128A7CFD000000030AD3578310D10102000000010000000510D13D02022A457B13E201040DE7CA080E5FD9090000000408C000F611FC24F70000000008C000FC000000090000000500000005000000050000000213E1C504000000020DE7CA080E5FD9090000000408C000F611FC24F70000000008C000FC11FC24FD000000030BE879C31011710200000001000000051011AD020115233B0000000913F85904000000020D4128880EFA110900000004096000F611AABCF700000000096000FC0000000911AA80FD0000000700000003000000090EFA4D09096000F611AABCF700000000096000FC11AABCFD0000000300000009000000050000000500000004000000010000000500000005000000050000000100000005000000050000000400000004"
theorem small_2122177_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2122177_left_root small_2122177_left_fuel small_2122177_left_count small_2122177_left_encoded = true := by
  decide +kernel
theorem small_2122177_left_covered : CoveredBy scale carrier boxes small_2122177_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2122177_left_root small_2122177_left_fuel small_2122177_left_count small_2122177_left_encoded small_2122177_left_checked

theorem cover_2122177 : CoveredBy scale carrier boxes root_2122177 := by
  apply coveredBy_split_literal root_2122177 small_2122177_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.root_2122693 coord1 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_2122177_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.cover_2122693
#print axioms cover_2122177

def root_2122171 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2122171_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2122171_left_fuel : Nat := 1
def small_2122171_left_count : Nat := 1
def small_2122171_left_encoded : String := "00000003"
theorem small_2122171_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2122171_left_root small_2122171_left_fuel small_2122171_left_count small_2122171_left_encoded = true := by
  decide +kernel
theorem small_2122171_left_covered : CoveredBy scale carrier boxes small_2122171_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2122171_left_root small_2122171_left_fuel small_2122171_left_count small_2122171_left_encoded small_2122171_left_checked

theorem cover_2122171 : CoveredBy scale carrier boxes root_2122171 := by
  apply coveredBy_split_literal root_2122171 small_2122171_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.root_2122177 coord3 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_2122171_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.cover_2122177
#print axioms cover_2122171

def root_2122170 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2122170_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2122170_right_fuel : Nat := 22
def small_2122170_right_count : Nat := 137
def small_2122170_right_encoded : String := "135D44FD0CFD9C030F34D10200000001045489FB000000051386710400000002000000050F350D02045489FB1386AD040CFD9C090F34D10800000004000000050F350D080C9A87020F875103000000010C9A87080F87510900000004078000F6128A7CF7000000000000000600000008000000060F878D030C9A87080F87510900000004078000F600000007128A40F700000005000000000000000600000001000000040000000213867104000000020CFD9C090F34D10800000004000000050F350D080C9A87020F875103000000010C9A87080F87510900000004078000F6128A7CF700000000028000FC13D7ECFD00000003022A457B0000000813E1C504000000020B4D44020000000810804D03000000080000000100000008128A40F7028000FC13D7ECFD00000003022A457B0000000813E1C504000000020B4D44020000000810804D03000000080000000100000005000000000F878D09078000F6128A7CF700000000028000FC13D7ECFD00000003022A457B0000000613E1C504000000020B4D44020000000610804D0300000005000000010000000500000005000000040F878D030C9A87080F87510900000004078000F6128A7CF700000000028000FC13D7ECFD00000003022A457B0000000713E1C504000000020DE7CA020E5FD903000000010B4D44080000000710804D0900000005000000040E601503000000050000000100000005000000050000000500000001000000040000000100000003"
theorem small_2122170_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2122170_right_root small_2122170_right_fuel small_2122170_right_count small_2122170_right_encoded = true := by
  decide +kernel
theorem small_2122170_right_covered : CoveredBy scale carrier boxes small_2122170_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2122170_right_root small_2122170_right_fuel small_2122170_right_count small_2122170_right_encoded small_2122170_right_checked

theorem cover_2122170 : CoveredBy scale carrier boxes root_2122170 := by
  apply coveredBy_split_literal root_2122170 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.root_2122171 small_2122170_right_root coord3 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.cover_2122171
  · exact small_2122170_right_covered
#print axioms cover_2122170

def root_2122164 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2122164_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2122164_left_fuel : Nat := 1
def small_2122164_left_count : Nat := 1
def small_2122164_left_encoded : String := "00000000"
theorem small_2122164_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2122164_left_root small_2122164_left_fuel small_2122164_left_count small_2122164_left_encoded = true := by
  decide +kernel
theorem small_2122164_left_covered : CoveredBy scale carrier boxes small_2122164_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2122164_left_root small_2122164_left_fuel small_2122164_left_count small_2122164_left_encoded small_2122164_left_checked

theorem cover_2122164 : CoveredBy scale carrier boxes root_2122164 := by
  apply coveredBy_split_literal root_2122164 small_2122164_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.root_2122170 coord0 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_2122164_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.cover_2122170
#print axioms cover_2122164

def root_2122163 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2122163_right_root : ZRayBox := fun j => (#[⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2122163_right_fuel : Nat := 22
def small_2122163_right_count : Nat := 175
def small_2122163_right_encoded : String := "135D44F7050000FC135D80FD000000030CFD9C030F34D10200000001045489FB000000051386710400000002000000050F350D02045489FB1386AD040CFD9C090F34D10800000004000000050F350D080C9A87020F875103000000010C9A87080F87510900000004028000F613D7ECF700000000078000FC0000000800000008000000080F878D09028000F613D7ECF700000000078000FC0000000A128A40FD000000050000000300000009000000040F878D030C9A8708000000090F878D09000000050000000400000001000000040000000213867104000000020CFD9C090F34D10800000004000000050F350D080C9A87020F875103000000010C9A87080F87510900000004028000F613D7ECF700000000078000FC128A7CFD00000003022A457B0000000813E1C504000000020B4D44020000000810804D030000000800000001128A40FD022A457B0000000813E1C504000000020B4D44020000000810804D0300000008000000010000000313D7B0F7078000FC128A7CFD000000030000000800000005000000000F878D09028000F613D7ECF700000000078000FC128A7CFD00000003022A457B0000000A13E1C504000000020B4D440210801103000000010000000A10804D0300000005000000010000000500000005000000040F878D030C9A87080F87510900000004028000F613D7ECF700000000078000FC128A7CFD00000003022A457B0000000913E1C504000000020DE7CA020E5FD903000000010000000900000009000000050000000500000005000000010000000400000001135D44FD0CFD9C030F34D10200000001000000050F350D02045489FB1386AD040CFD9C09000000050F350D080C9A87020F875103000000010C9A87080F87510900000004028000F6000000080000000500000005000000050000000400000002138671040000000200000005000000010000000300000000"
theorem small_2122163_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2122163_right_root small_2122163_right_fuel small_2122163_right_count small_2122163_right_encoded = true := by
  decide +kernel
theorem small_2122163_right_covered : CoveredBy scale carrier boxes small_2122163_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2122163_right_root small_2122163_right_fuel small_2122163_right_count small_2122163_right_encoded small_2122163_right_checked

theorem cover_2122163 : CoveredBy scale carrier boxes root_2122163 := by
  apply coveredBy_split_literal root_2122163 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.root_2122164 small_2122163_right_root coord0 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.cover_2122164
  · exact small_2122163_right_covered
#print axioms cover_2122163

def root_2122158 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2122158_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2122158_right_fuel : Nat := 1
def small_2122158_right_count : Nat := 1
def small_2122158_right_encoded : String := "00000004"
theorem small_2122158_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2122158_right_root small_2122158_right_fuel small_2122158_right_count small_2122158_right_encoded = true := by
  decide +kernel
theorem small_2122158_right_covered : CoveredBy scale carrier boxes small_2122158_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2122158_right_root small_2122158_right_fuel small_2122158_right_count small_2122158_right_encoded small_2122158_right_checked

theorem cover_2122158 : CoveredBy scale carrier boxes root_2122158 := by
  apply coveredBy_split_literal root_2122158 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.root_2122163 small_2122158_right_root coord4 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.cover_2122163
  · exact small_2122158_right_covered
#print axioms cover_2122158

def root_2122064 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2122064_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2122064_left_fuel : Nat := 18
def small_2122064_left_count : Nat := 45
def small_2122064_left_encoded : String := "1207010800000004050000F6135D80F700000000050000FC135D80FD000000030CFD9C030F34D10200000001000000050F350D02045489FB1386AD0404548A09000000051386AD080C9A870200000006000000050000000400000002138671040000000204548A09000000051386AD080C9A87020F87510300000001078000F6128A7CF700000000078000FC128A7CFD000000030000000600000005000000050000000500000004000000010000000500000005"
theorem small_2122064_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2122064_left_root small_2122064_left_fuel small_2122064_left_count small_2122064_left_encoded = true := by
  decide +kernel
theorem small_2122064_left_covered : CoveredBy scale carrier boxes small_2122064_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2122064_left_root small_2122064_left_fuel small_2122064_left_count small_2122064_left_encoded small_2122064_left_checked

theorem cover_2122064 : CoveredBy scale carrier boxes root_2122064 := by
  apply coveredBy_split_literal root_2122064 small_2122064_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.root_2122158 coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_2122064_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.cover_2122158
#print axioms cover_2122064

def root_2122058 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2122058_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2122058_left_fuel : Nat := 1
def small_2122058_left_count : Nat := 1
def small_2122058_left_encoded : String := "00000002"
theorem small_2122058_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2122058_left_root small_2122058_left_fuel small_2122058_left_count small_2122058_left_encoded = true := by
  decide +kernel
theorem small_2122058_left_covered : CoveredBy scale carrier boxes small_2122058_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2122058_left_root small_2122058_left_fuel small_2122058_left_count small_2122058_left_encoded small_2122058_left_checked

theorem cover_2122058 : CoveredBy scale carrier boxes root_2122058 := by
  apply coveredBy_split_literal root_2122058 small_2122058_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.root_2122064 coord2 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_2122058_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.cover_2122064
#print axioms cover_2122058

def root_2121624 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2121624_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2121624_left_fuel : Nat := 20
def small_2121624_left_count : Nat := 201
def small_2121624_left_encoded : String := "12073D0408A913091207010800000004050000F6135D80F700000000050000FC135D80FD000000030CFD9C03000000060F350D02000000060000000100000006135D44F7050000FC135D80FD000000030CFD9C03000000050F350D020CFD9BFB000000050F34D104000000020000000500000001000000050000000012073D08050000F6135D80F700000000050000FC135D80FD000000030CFD9C030F34D102000000010CFD9BFB0F350D0400000009000000020F34D104000000020CFD9C09000000090F350D0800000009000000040F350D020CFD9BFB0F350D040CFD9C090F34D10800000004000000060F350D080C9A8702000000060000000900000004000000020F34D104000000020CFD9C090F34D10800000004000000060F350D080C9A87020F875103000000010C9A87080F87510900000004078000F600000007000000080F878D09078000F600000006128A40F70000000A00000000000000040F878D030C9A87080F87510900000004078000F600000007000000090F878D09078000F6128A7CF700000000000000060000000900000004000000010000000400000001135D44FD0CFD9C030F34D102000000010CFD9BFB0F350D0400000006000000020F34D104000000020CFD9C09000000050F350D080C9A87080F875109000000040000000700000005000000040F350D020CFD9BFB000000060F34D104000000020CFD9C09000000060F350D080C9A87020000000600000006000000040000000100000003135D44F7050000FC135D80FD000000030CFD9C030F34D10200000001000000090F350D020CFD9BFB0F350D040CFD9C090000000900000009000000020F34D104000000020CFD9C090F34D108000000040C9A87020F875103000000010000000A000000050F350D080C9A87020F8751030000000100000009000000090000000400000001135D44FD0CFD9C030F34D10200000001000000090F350D020CFD9BFB0F350D0400000006000000020F34D104000000020CFD9C090F34D10800000004000000050F350D080C9A87020F875103000000010C9A8708000000090000000500000005000000040000000100000003000000000000000400000002"
theorem small_2121624_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2121624_left_root small_2121624_left_fuel small_2121624_left_count small_2121624_left_encoded = true := by
  decide +kernel
theorem small_2121624_left_covered : CoveredBy scale carrier boxes small_2121624_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2121624_left_root small_2121624_left_fuel small_2121624_left_count small_2121624_left_encoded small_2121624_left_checked

theorem cover_2121624 : CoveredBy scale carrier boxes root_2121624 := by
  apply coveredBy_split_literal root_2121624 small_2121624_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.root_2122058 coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_2121624_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.cover_2122058
#print axioms cover_2121624

def root_2121619 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2121619_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2121619_right_fuel : Nat := 1
def small_2121619_right_count : Nat := 1
def small_2121619_right_encoded : String := "00000001"
theorem small_2121619_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2121619_right_root small_2121619_right_fuel small_2121619_right_count small_2121619_right_encoded = true := by
  decide +kernel
theorem small_2121619_right_covered : CoveredBy scale carrier boxes small_2121619_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2121619_right_root small_2121619_right_fuel small_2121619_right_count small_2121619_right_encoded small_2121619_right_checked

theorem cover_2121619 : CoveredBy scale carrier boxes root_2121619 := by
  apply coveredBy_split_literal root_2121619 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.root_2121624 small_2121619_right_root coord1 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.cover_2121624
  · exact small_2121619_right_covered
#print axioms cover_2121619

def root_2121449 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2121449_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2121449_left_fuel : Nat := 22
def small_2121449_left_count : Nat := 81
def small_2121449_left_encoded : String := "120701020000000108A912FB12073D0408A9130912070108000000040000000512073D08050000F6135D80F700000000050000FC135D80FD0000000304548A030000000900000009135D44FD04548A03000000051386AD020CFD9BFB000000050F34D10400000002000000050000000100000003000000090000000400000002120701040000000208A913090000000512073D08050000F6135D80F700000000050000FC135D80FD0000000304548A031386710200000001000000051386AD02045489FB1386AD040CFD9C09000000050F350D080C9A87080000000900000005000000040000000213867104000000020CFD9C09000000050F350D080C9A87080F87510900000004078000F6128A7CF700000000078000FC128A7CFD00000003000000090000000500000005000000050000000400000001000000050000000500000004"
theorem small_2121449_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2121449_left_root small_2121449_left_fuel small_2121449_left_count small_2121449_left_encoded = true := by
  decide +kernel
theorem small_2121449_left_covered : CoveredBy scale carrier boxes small_2121449_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2121449_left_root small_2121449_left_fuel small_2121449_left_count small_2121449_left_encoded small_2121449_left_checked

theorem cover_2121449 : CoveredBy scale carrier boxes root_2121449 := by
  apply coveredBy_split_literal root_2121449 small_2121449_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.root_2121619 coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_2121449_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.cover_2121619
#print axioms cover_2121449

def root_2121444 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2121444_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2121444_right_fuel : Nat := 1
def small_2121444_right_count : Nat := 1
def small_2121444_right_encoded : String := "00000004"
theorem small_2121444_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2121444_right_root small_2121444_right_fuel small_2121444_right_count small_2121444_right_encoded = true := by
  decide +kernel
theorem small_2121444_right_covered : CoveredBy scale carrier boxes small_2121444_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2121444_right_root small_2121444_right_fuel small_2121444_right_count small_2121444_right_encoded small_2121444_right_checked

theorem cover_2121444 : CoveredBy scale carrier boxes root_2121444 := by
  apply coveredBy_split_literal root_2121444 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.root_2121449 small_2121444_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.cover_2121449
  · exact small_2121444_right_covered
#print axioms cover_2121444

def root_2120022 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2120022 : CoveredBy scale carrier boxes root_2120022 := by
  apply coveredBy_split_literal root_2120022 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0820.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.root_2121444 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0820.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.cover_2121444
#print axioms cover_2120022

def root_2120017 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2120017_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2120017_right_fuel : Nat := 1
def small_2120017_right_count : Nat := 1
def small_2120017_right_encoded : String := "00000003"
theorem small_2120017_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2120017_right_root small_2120017_right_fuel small_2120017_right_count small_2120017_right_encoded = true := by
  decide +kernel
theorem small_2120017_right_covered : CoveredBy scale carrier boxes small_2120017_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2120017_right_root small_2120017_right_fuel small_2120017_right_count small_2120017_right_encoded small_2120017_right_checked

theorem cover_2120017 : CoveredBy scale carrier boxes root_2120017 := by
  apply coveredBy_split_literal root_2120017 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.root_2120022 small_2120017_right_root coord3 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.cover_2120022
  · exact small_2120017_right_covered
#print axioms cover_2120017

def root_2115055 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2115055 : CoveredBy scale carrier boxes root_2115055 := by
  apply coveredBy_split_literal root_2115055 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0050.root_2115056 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.root_2120017 coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0050.cover_2115056
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.cover_2120017
#print axioms cover_2115055

def root_2115049 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2115049_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2115049_left_fuel : Nat := 1
def small_2115049_left_count : Nat := 1
def small_2115049_left_encoded : String := "00000002"
theorem small_2115049_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2115049_left_root small_2115049_left_fuel small_2115049_left_count small_2115049_left_encoded = true := by
  decide +kernel
theorem small_2115049_left_covered : CoveredBy scale carrier boxes small_2115049_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2115049_left_root small_2115049_left_fuel small_2115049_left_count small_2115049_left_encoded small_2115049_left_checked

theorem cover_2115049 : CoveredBy scale carrier boxes root_2115049 := by
  apply coveredBy_split_literal root_2115049 small_2115049_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.root_2115055 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_2115049_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.cover_2115055
#print axioms cover_2115049

def root_2114883 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2114883_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2114883_left_fuel : Nat := 17
def small_2114883_left_count : Nat := 77
def small_2114883_left_encoded : String := "1151E8FB0A0000FC115224FD000000030A0001081151E90900000004000000091152250908A9130312070102000000010000000912073D0208A912FD12073CFC0000000308A9130912070108000000040000000A12073D08050000F6135D80F7000000000500010400000009135D80FB000000020CFD9C03000000090000000A00000009000000040000000A00000001000000041151E8FD0A0001081151E9090000000408A9130312070102000000010000000712073D02050000F60000000700000009000000011152250908A9130312070102000000010000000912073D0208A9130912070108000000040000000612073D08050000F6135D80F7000000000500010400000006135D80FB00000002050000FC0000000600000006000000090000000400000001000000040000000300000002"
theorem small_2114883_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2114883_left_root small_2114883_left_fuel small_2114883_left_count small_2114883_left_encoded = true := by
  decide +kernel
theorem small_2114883_left_covered : CoveredBy scale carrier boxes small_2114883_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2114883_left_root small_2114883_left_fuel small_2114883_left_count small_2114883_left_encoded small_2114883_left_checked

theorem cover_2114883 : CoveredBy scale carrier boxes root_2114883 := by
  apply coveredBy_split_literal root_2114883 small_2114883_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.root_2115049 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_2114883_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.cover_2115049
#print axioms cover_2114883

def root_2114878 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2114878_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2114878_right_fuel : Nat := 1
def small_2114878_right_count : Nat := 1
def small_2114878_right_encoded : String := "00000001"
theorem small_2114878_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2114878_right_root small_2114878_right_fuel small_2114878_right_count small_2114878_right_encoded = true := by
  decide +kernel
theorem small_2114878_right_covered : CoveredBy scale carrier boxes small_2114878_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2114878_right_root small_2114878_right_fuel small_2114878_right_count small_2114878_right_encoded small_2114878_right_checked

theorem cover_2114878 : CoveredBy scale carrier boxes root_2114878 := by
  apply coveredBy_split_literal root_2114878 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.root_2114883 small_2114878_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.cover_2114883
  · exact small_2114878_right_covered
#print axioms cover_2114878

def root_2112466 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2112466 : CoveredBy scale carrier boxes root_2112466 := by
  apply coveredBy_split_literal root_2112466 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0818.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.root_2114878 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0818.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.cover_2114878
#print axioms cover_2112466

def root_2112461 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2112461_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2112461_right_fuel : Nat := 1
def small_2112461_right_count : Nat := 1
def small_2112461_right_encoded : String := "00000000"
theorem small_2112461_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2112461_right_root small_2112461_right_fuel small_2112461_right_count small_2112461_right_encoded = true := by
  decide +kernel
theorem small_2112461_right_covered : CoveredBy scale carrier boxes small_2112461_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2112461_right_root small_2112461_right_fuel small_2112461_right_count small_2112461_right_encoded small_2112461_right_checked

theorem cover_2112461 : CoveredBy scale carrier boxes root_2112461 := by
  apply coveredBy_split_literal root_2112461 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.root_2112466 small_2112461_right_root coord0 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.cover_2112466
  · exact small_2112461_right_covered
#print axioms cover_2112461

def root_2086969 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2086969 : CoveredBy scale carrier boxes root_2086969 := by
  apply coveredBy_split_literal root_2086969 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0050.root_2086970 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.root_2112461 coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0050.cover_2086970
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.cover_2112461
#print axioms cover_2086969

def root_2033637 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2033637 : CoveredBy scale carrier boxes root_2033637 := by
  apply coveredBy_split_literal root_2033637 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0049.root_2033638 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.root_2086969 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0049.cover_2033638
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.cover_2086969
#print axioms cover_2033637

def root_2023937 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2023937 : CoveredBy scale carrier boxes root_2023937 := by
  apply coveredBy_split_literal root_2023937 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0047.root_2023938 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.root_2033637 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0047.cover_2023938
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.cover_2033637
#print axioms cover_2023937

def root_2132086 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2132086 : CoveredBy scale carrier boxes root_2132086 := by
  apply coveredBy_split_literal root_2132086 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0824.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0825.root coord3 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0824.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0825.covered
#print axioms cover_2132086

def root_2132080 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2132080_left_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2132080_left_fuel : Nat := 1
def small_2132080_left_count : Nat := 1
def small_2132080_left_encoded : String := "00000001"
theorem small_2132080_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2132080_left_root small_2132080_left_fuel small_2132080_left_count small_2132080_left_encoded = true := by
  decide +kernel
theorem small_2132080_left_covered : CoveredBy scale carrier boxes small_2132080_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2132080_left_root small_2132080_left_fuel small_2132080_left_count small_2132080_left_encoded small_2132080_left_checked

theorem cover_2132080 : CoveredBy scale carrier boxes root_2132080 := by
  apply coveredBy_split_literal root_2132080 small_2132080_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.root_2132086 coord1 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_2132080_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.cover_2132086
#print axioms cover_2132080

def root_2132079 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2132079_right_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2132079_right_fuel : Nat := 21
def small_2132079_right_count : Nat := 197
def small_2132079_right_encoded : String := "1386AD0204548A07138670FC0C9A86F60F878CF70000000007800104128A40FB078000FE128A7CFF00000004067ECE8312EA590200000001022A4587000000070000000500000005128A40FF067ECE8312EA590200000001022A45870000000900000005000000050000000400000002128A7CFB00000002078000FE128A7CFF00000004067ECE830000000900000005128A40FF067ECE830000000900000005000000040F8750F707800104128A40FB078000FE128A7CFF00000004067ECE8312EA590200000001022A458713E1C4FC0B4D43F600000007108010F7064001040000000700000007000000000000000313E200FC000000030B4D43F610804CF70000000000000005108010F70640010412FF70FB08C000FE11FC24FF00000004000000050000000A0000000212FFACFB0000000208C000FE11FC24FF000000040000000511FBE8FF0569AC430000000900000005000000040000000012EA9502022A458713E1C4FC00000007000000030000000500000001128A40FF067ECE8312EA590200000001022A458713E1C4FC0B4D43F600000009108010F706400104000000090000000900000000000000030000000A0000000A0000000400000002128A7CFB00000002078000FE128A7CFF00000004067ECE8312EA590200000001022A45870000000913E200FC000000030B4D43F600000009108010F708C0010411FBE8FB08C000FE000000050000000900000002000000090000000012EA9502022A4587000000090000000500000001128A40FF067ECE8312EA590200000001022A45870000000913E200FC000000030B4D43F600000009108010F708C0010400000009000000090000000012EA9502022A45870000000900000005000000010000000400000000000000031386ACFC000000030C9A86F60F878CF700000000000000050F8750F707800104128A40FB078000FE000000050000000A00000002128A7CFB00000002078000FE00000005128A40FF067ECE8312EA590200000001067ECE8712EA58FC0B4D43F600000005108010F70000000A00000000000000030000000500000005000000040000000000000001"
theorem small_2132079_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2132079_right_root small_2132079_right_fuel small_2132079_right_count small_2132079_right_encoded = true := by
  decide +kernel
theorem small_2132079_right_covered : CoveredBy scale carrier boxes small_2132079_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2132079_right_root small_2132079_right_fuel small_2132079_right_count small_2132079_right_encoded small_2132079_right_checked

theorem cover_2132079 : CoveredBy scale carrier boxes root_2132079 := by
  apply coveredBy_split_literal root_2132079 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.root_2132080 small_2132079_right_root coord1 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.cover_2132080
  · exact small_2132079_right_covered
#print axioms cover_2132079

def root_2132073 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2132073_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2132073_left_fuel : Nat := 1
def small_2132073_left_count : Nat := 1
def small_2132073_left_encoded : String := "00000000"
theorem small_2132073_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2132073_left_root small_2132073_left_fuel small_2132073_left_count small_2132073_left_encoded = true := by
  decide +kernel
theorem small_2132073_left_covered : CoveredBy scale carrier boxes small_2132073_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2132073_left_root small_2132073_left_fuel small_2132073_left_count small_2132073_left_encoded small_2132073_left_checked

theorem cover_2132073 : CoveredBy scale carrier boxes root_2132073 := by
  apply coveredBy_split_literal root_2132073 small_2132073_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.root_2132079 coord0 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_2132073_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.cover_2132079
#print axioms cover_2132073

def root_2132072 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2132072_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2132072_right_fuel : Nat := 9
def small_2132072_right_count : Nat := 21
def small_2132072_right_encoded : String := "0F34D0F604548A03138671020000000104548A07138670FC07800104128A40FB078000FE000000070000000600000002128A7CFB00000002078000FE000000090000000900000003000000050000000500000000"
theorem small_2132072_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2132072_right_root small_2132072_right_fuel small_2132072_right_count small_2132072_right_encoded = true := by
  decide +kernel
theorem small_2132072_right_covered : CoveredBy scale carrier boxes small_2132072_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2132072_right_root small_2132072_right_fuel small_2132072_right_count small_2132072_right_encoded small_2132072_right_checked

theorem cover_2132072 : CoveredBy scale carrier boxes root_2132072 := by
  apply coveredBy_split_literal root_2132072 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.root_2132073 small_2132072_right_root coord0 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.cover_2132073
  · exact small_2132072_right_covered
#print axioms cover_2132072

def root_2132066 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2132066_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2132066_left_fuel : Nat := 1
def small_2132066_left_count : Nat := 1
def small_2132066_left_encoded : String := "00000004"
theorem small_2132066_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2132066_left_root small_2132066_left_fuel small_2132066_left_count small_2132066_left_encoded = true := by
  decide +kernel
theorem small_2132066_left_covered : CoveredBy scale carrier boxes small_2132066_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2132066_left_root small_2132066_left_fuel small_2132066_left_count small_2132066_left_encoded small_2132066_left_checked

theorem cover_2132066 : CoveredBy scale carrier boxes root_2132066 := by
  apply coveredBy_split_literal root_2132066 small_2132066_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.root_2132072 coord4 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_2132066_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.cover_2132072
#print axioms cover_2132066

def root_2132065 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2132065_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2132065_right_fuel : Nat := 20
def small_2132065_right_count : Nat := 215
def small_2132065_right_encoded : String := "135D44FF0CFD9BF70F350CF60000000004548A03138671020000000104548A07138670FC0C9A86F60F878CF7000000000780010400000006128A7CFB00000002028000FE00000009000000060F8750F707800104128A40FB028000FE13D7ECFF00000004022A45830000000613E20102022A458713E1C4FC0B4D43F600000006108010F70000000900000000000000030000000A000000010000000600000002128A7CFB00000002028000FE13D7ECFF00000004022A458313E1C50200000001022A4587000000090000000813E20102022A45870000000913E200FC000000030B4D43F600000009108010F700000009000000000000000113D7B0FF022A458300000006000000090000000400000000000000031386ACFC000000030C9A86F60F878CF70000000007800104128A40FB0000000600000002128A7CFB00000002028000FE13D7ECFF00000004022A45830000000813E20102067ECE8700000009000000050000000113D7B0FF00000008000000040F8750F707800104128A40FB028000FE13D7ECFF00000004022A458313E1C50200000001067ECE87000000060000000A0000000A0000000600000002128A7CFB00000002028000FE13D7ECFF00000004022A458313E1C50200000001067ECE8712EA58FC00000008000000030000000813E20102067ECE8712EA58FC0B4D43F60000000A108010F70000000A00000000000000030000000A0000000113D7B0FF022A458313E1C50200000001067ECE8700000006000000070000000A00000004000000001386AD0204548A07138670FC0C9A86F60F878CF70000000007800104128A40FB0000000A00000002128A7CFB00000002028000FE13D7ECFF00000004067ECE8300000009000000090000000A0F8750F707800104128A40FB0000000A00000002128A7CFB00000002028000FE13D7ECFF00000004067ECE8312EA590200000001022A4587000000090000000A0000000A0000000A00000000000000031386ACFC000000030C9A86F60000000A0F8750F70000000A00000000000000010F34D0F604548A03138671020000000104548A07000000061386ACFC000000030780010400000006000000081386AD0204548A07138670FC0780010400000006128A7CFB00000002028000FE00000005000000060000000300000005000000010000000000000004"
theorem small_2132065_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2132065_right_root small_2132065_right_fuel small_2132065_right_count small_2132065_right_encoded = true := by
  decide +kernel
theorem small_2132065_right_covered : CoveredBy scale carrier boxes small_2132065_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2132065_right_root small_2132065_right_fuel small_2132065_right_count small_2132065_right_encoded small_2132065_right_checked

theorem cover_2132065 : CoveredBy scale carrier boxes root_2132065 := by
  apply coveredBy_split_literal root_2132065 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.root_2132066 small_2132065_right_root coord4 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.cover_2132066
  · exact small_2132065_right_covered
#print axioms cover_2132065

def root_2132059 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2132059_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2132059_left_fuel : Nat := 1
def small_2132059_left_count : Nat := 1
def small_2132059_left_encoded : String := "00000002"
theorem small_2132059_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2132059_left_root small_2132059_left_fuel small_2132059_left_count small_2132059_left_encoded = true := by
  decide +kernel
theorem small_2132059_left_covered : CoveredBy scale carrier boxes small_2132059_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2132059_left_root small_2132059_left_fuel small_2132059_left_count small_2132059_left_encoded small_2132059_left_checked

theorem cover_2132059 : CoveredBy scale carrier boxes root_2132059 := by
  apply coveredBy_split_literal root_2132059 small_2132059_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.root_2132065 coord2 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_2132059_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.cover_2132065
#print axioms cover_2132059

def root_2130101 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2130101 : CoveredBy scale carrier boxes root_2130101 := by
  apply coveredBy_split_literal root_2130101 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0823.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.root_2132059 coord2 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0823.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.cover_2132059
#print axioms cover_2130101

def root_2130096 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2130096_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2130096_right_fuel : Nat := 1
def small_2130096_right_count : Nat := 1
def small_2130096_right_encoded : String := "00000003"
theorem small_2130096_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2130096_right_root small_2130096_right_fuel small_2130096_right_count small_2130096_right_encoded = true := by
  decide +kernel
theorem small_2130096_right_covered : CoveredBy scale carrier boxes small_2130096_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2130096_right_root small_2130096_right_fuel small_2130096_right_count small_2130096_right_encoded small_2130096_right_checked

theorem cover_2130096 : CoveredBy scale carrier boxes root_2130096 := by
  apply coveredBy_split_literal root_2130096 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.root_2130101 small_2130096_right_root coord3 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.cover_2130101
  · exact small_2130096_right_covered
#print axioms cover_2130096

def root_2130095 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2130095_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2130095_right_fuel : Nat := 24
def small_2130095_right_count : Nat := 175
def small_2130095_right_encoded : String := "12073CFC0000000305000104135D44FB050000FE135D80FF000000040CFD9BF70F350CF60000000004548A0313867102000000010CFD9C070F34D0FC0C9A86F60F878CF700000000000000050F8750F7028001040000000A13D7ECFB00000002078000FE128A7CFF00000004000000050000000A0000000000000003000000050000000500000005135D44FF0CFD9BF70F350CF60000000004548A0313867102000000010000000A0000000A0F34D0F600000005000000000000000400000002135D80FB00000002050000FE135D80FF000000040CFD9BF70F350CF60000000004548A0313867102000000010CFD9C070F34D0FC0C9A86F60F878CF700000000000000050F8750F707800104128A40FB078000FE128A7CFF0000000400000005128A40FF0000000A0000000400000002128A7CFB00000002078000FE128A7CFF0000000400000005128A40FF022A458313E1C502000000010AD3578710D100FC0B4D43F610804CF70000000000000005108010F700000007000000000000000300000005000000050000000400000000000000030F350CFC000000030C9A86F6000000050F8750F70C9A86FC000000050F8751070000000300000005000000001386AD020CFD9C070F34D0FC000000050000000300000005000000010F34D0F60000000500000000135D44FF0CFD9BF70F350CF60000000004548A0313867102000000010CFD9C070F34D0FC0C9A86F60F878CF700000000078001040000000A128A7CFB00000002028000FE13D7ECFF00000004022A458300000008000000050000000A0F8750F70000000A00000000000000030F350CFC000000030C9A86F60000000A0F8750F70000000A000000001386AD020CFD9C070F34D0FC0000000A000000030000000A000000010F34D0F604548A0313867102000000010CFD9C070F34D0FC000000050000000300000005000000050000000000000004"
theorem small_2130095_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2130095_right_root small_2130095_right_fuel small_2130095_right_count small_2130095_right_encoded = true := by
  decide +kernel
theorem small_2130095_right_covered : CoveredBy scale carrier boxes small_2130095_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2130095_right_root small_2130095_right_fuel small_2130095_right_count small_2130095_right_encoded small_2130095_right_checked

theorem cover_2130095 : CoveredBy scale carrier boxes root_2130095 := by
  apply coveredBy_split_literal root_2130095 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.root_2130096 small_2130095_right_root coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.cover_2130096
  · exact small_2130095_right_covered
#print axioms cover_2130095

def root_2130089 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2130089_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2130089_left_fuel : Nat := 1
def small_2130089_left_count : Nat := 1
def small_2130089_left_encoded : String := "00000001"
theorem small_2130089_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2130089_left_root small_2130089_left_fuel small_2130089_left_count small_2130089_left_encoded = true := by
  decide +kernel
theorem small_2130089_left_covered : CoveredBy scale carrier boxes small_2130089_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2130089_left_root small_2130089_left_fuel small_2130089_left_count small_2130089_left_encoded small_2130089_left_checked

theorem cover_2130089 : CoveredBy scale carrier boxes root_2130089 := by
  apply coveredBy_split_literal root_2130089 small_2130089_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.root_2130095 coord1 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_2130089_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.cover_2130095
#print axioms cover_2130089

def root_2130088 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2130088_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2130088_right_fuel : Nat := 18
def small_2130088_right_count : Nat := 69
def small_2130088_right_encoded : String := "12073D0208A91307120700FC05000104135D44FB050000FE135D80FF000000040CFD9BF70F350CF6000000000CFD9C030F34D1020000000104548A07138670FC0C9A86F60000000A00000005000000030000000500000005000000050000000A00000002135D80FB00000002050000FE135D80FF000000040CFD9BF70F350CF6000000000CFD9C030F34D1020000000104548A07138670FC0C9A86F6000000050F8750F70780010400000005128A7CFB00000002000000050000000000000003000000050000000500000005135D44FF0CFD9BF70F350CF6000000000CFD9C030F34D1020000000104548A07138670FC0000000A0000000300000005000000050000000500000004000000030000000500000001"
theorem small_2130088_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2130088_right_root small_2130088_right_fuel small_2130088_right_count small_2130088_right_encoded = true := by
  decide +kernel
theorem small_2130088_right_covered : CoveredBy scale carrier boxes small_2130088_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2130088_right_root small_2130088_right_fuel small_2130088_right_count small_2130088_right_encoded small_2130088_right_checked

theorem cover_2130088 : CoveredBy scale carrier boxes root_2130088 := by
  apply coveredBy_split_literal root_2130088 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.root_2130089 small_2130088_right_root coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.cover_2130089
  · exact small_2130088_right_covered
#print axioms cover_2130088

def root_2130082 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2130082_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2130082_left_fuel : Nat := 1
def small_2130082_left_count : Nat := 1
def small_2130082_left_encoded : String := "00000000"
theorem small_2130082_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2130082_left_root small_2130082_left_fuel small_2130082_left_count small_2130082_left_encoded = true := by
  decide +kernel
theorem small_2130082_left_covered : CoveredBy scale carrier boxes small_2130082_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2130082_left_root small_2130082_left_fuel small_2130082_left_count small_2130082_left_encoded small_2130082_left_checked

theorem cover_2130082 : CoveredBy scale carrier boxes root_2130082 := by
  apply coveredBy_split_literal root_2130082 small_2130082_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.root_2130088 coord0 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_2130082_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.cover_2130088
#print axioms cover_2130082

def root_2130081 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2130081_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2130081_right_fuel : Nat := 13
def small_2130081_right_count : Nat := 31
def small_2130081_right_encoded : String := "120700F608A91303120701020000000108A91307120700FC05000104135D44FB050000FE135D80FF00000004045489F71386ACF60000000004548A030000000600000005000000050000000600000002135D80FB00000002050000FE00000005135D44FF000000060000000400000003000000050000000500000000"
theorem small_2130081_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2130081_right_root small_2130081_right_fuel small_2130081_right_count small_2130081_right_encoded = true := by
  decide +kernel
theorem small_2130081_right_covered : CoveredBy scale carrier boxes small_2130081_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2130081_right_root small_2130081_right_fuel small_2130081_right_count small_2130081_right_encoded small_2130081_right_checked

theorem cover_2130081 : CoveredBy scale carrier boxes root_2130081 := by
  apply coveredBy_split_literal root_2130081 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.root_2130082 small_2130081_right_root coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.cover_2130082
  · exact small_2130081_right_covered
#print axioms cover_2130081

def root_2130076 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2130076_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2130076_right_fuel : Nat := 1
def small_2130076_right_count : Nat := 1
def small_2130076_right_encoded : String := "00000004"
theorem small_2130076_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2130076_right_root small_2130076_right_fuel small_2130076_right_count small_2130076_right_encoded = true := by
  decide +kernel
theorem small_2130076_right_covered : CoveredBy scale carrier boxes small_2130076_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2130076_right_root small_2130076_right_fuel small_2130076_right_count small_2130076_right_encoded small_2130076_right_checked

theorem cover_2130076 : CoveredBy scale carrier boxes root_2130076 := by
  apply coveredBy_split_literal root_2130076 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.root_2130081 small_2130076_right_root coord4 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.cover_2130081
  · exact small_2130076_right_covered
#print axioms cover_2130076

def root_2127882 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2127882 : CoveredBy scale carrier boxes root_2127882 := by
  apply coveredBy_split_literal root_2127882 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0822.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.root_2130076 coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0822.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.cover_2130076
#print axioms cover_2127882

def root_2127877 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2127877_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2127877_right_fuel : Nat := 1
def small_2127877_right_count : Nat := 1
def small_2127877_right_encoded : String := "00000003"
theorem small_2127877_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2127877_right_root small_2127877_right_fuel small_2127877_right_count small_2127877_right_encoded = true := by
  decide +kernel
theorem small_2127877_right_covered : CoveredBy scale carrier boxes small_2127877_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2127877_right_root small_2127877_right_fuel small_2127877_right_count small_2127877_right_encoded small_2127877_right_checked

theorem cover_2127877 : CoveredBy scale carrier boxes root_2127877 := by
  apply coveredBy_split_literal root_2127877 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.root_2127882 small_2127877_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.cover_2127882
  · exact small_2127877_right_covered
#print axioms cover_2127877

def root_2127876 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2127876_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2127876_right_fuel : Nat := 22
def small_2127876_right_count : Nat := 89
def small_2127876_right_encoded : String := "1151E907000000030A0000FE115224FF00000004000000051151E8FF08A912F712073CF60000000008A91303120701020000000105000104135D44FB050000FC135D8107050000FE000000050000000A00000003135D4507000000030000000A00000002135D80FB00000002050000FC135D8107050000FE135D80FF000000040CFD9BF70F350CF60000000004548A0313867102000000010C9A86F6000000050F8750F70780010400000005128A7CFB0000000200000005000000000000000500000005135D44FF0CFD9BF70000000A0F34D0F600000005000000000000000400000003135D450700000003050000FE135D80FF000000040CFD9BF70F350CF60000000004548A0313867102000000010C9A86F6000000050F8750F70000000A000000000000000500000005135D44FF0000000A0000000412073D020500010400000005135D80FB000000020000000500000001120700F6000000050000000000000004"
theorem small_2127876_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2127876_right_root small_2127876_right_fuel small_2127876_right_count small_2127876_right_encoded = true := by
  decide +kernel
theorem small_2127876_right_covered : CoveredBy scale carrier boxes small_2127876_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2127876_right_root small_2127876_right_fuel small_2127876_right_count small_2127876_right_encoded small_2127876_right_checked

theorem cover_2127876 : CoveredBy scale carrier boxes root_2127876 := by
  apply coveredBy_split_literal root_2127876 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.root_2127877 small_2127876_right_root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.cover_2127877
  · exact small_2127876_right_covered
#print axioms cover_2127876

def root_2127871 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2127871_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2127871_right_fuel : Nat := 1
def small_2127871_right_count : Nat := 1
def small_2127871_right_encoded : String := "00000002"
theorem small_2127871_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2127871_right_root small_2127871_right_fuel small_2127871_right_count small_2127871_right_encoded = true := by
  decide +kernel
theorem small_2127871_right_covered : CoveredBy scale carrier boxes small_2127871_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2127871_right_root small_2127871_right_fuel small_2127871_right_count small_2127871_right_encoded small_2127871_right_checked

theorem cover_2127871 : CoveredBy scale carrier boxes root_2127871 := by
  apply coveredBy_split_literal root_2127871 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.root_2127876 small_2127871_right_root coord2 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.cover_2127876
  · exact small_2127871_right_covered
#print axioms cover_2127871

def root_2127870 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2127870 : CoveredBy scale carrier boxes root_2127870 := by
  apply coveredBy_split_literal root_2127870 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.root_2127871 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0826.root coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.cover_2127871
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0826.covered
#print axioms cover_2127870

def root_2127865 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2127865_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2127865_right_fuel : Nat := 1
def small_2127865_right_count : Nat := 1
def small_2127865_right_encoded : String := "00000001"
theorem small_2127865_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2127865_right_root small_2127865_right_fuel small_2127865_right_count small_2127865_right_encoded = true := by
  decide +kernel
theorem small_2127865_right_covered : CoveredBy scale carrier boxes small_2127865_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2127865_right_root small_2127865_right_fuel small_2127865_right_count small_2127865_right_encoded small_2127865_right_checked

theorem cover_2127865 : CoveredBy scale carrier boxes root_2127865 := by
  apply coveredBy_split_literal root_2127865 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.root_2127870 small_2127865_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.cover_2127870
  · exact small_2127865_right_covered
#print axioms cover_2127865

def root_2127715 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2127715_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2127715_left_fuel : Nat := 17
def small_2127715_left_count : Nat := 69
def small_2127715_left_encoded : String := "1151E903000000010A0001041151E8FB0A0000FC115225070A0000FE115224FF0000000408A912F712073CF60000000008A91307120700FC08A912FF12073CFE0000000405000102135D450300000001050001040000000A0000000500000005000000050000000300000005120700F608A91307120700FC08A912FF12073CFE0000000400000005000000050000000300000005000000001151E8FF08A912F712073CF600000000000000050000000500000004000000031151E907000000030000000500000002115224FB000000020A0000FC1152250700000005000000031151E907000000030A0000FE115224FF0000000408A912F700000005120700F600000005000000001151E8FF0000000500000004"
theorem small_2127715_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2127715_left_root small_2127715_left_fuel small_2127715_left_count small_2127715_left_encoded = true := by
  decide +kernel
theorem small_2127715_left_covered : CoveredBy scale carrier boxes small_2127715_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2127715_left_root small_2127715_left_fuel small_2127715_left_count small_2127715_left_encoded small_2127715_left_checked

theorem cover_2127715 : CoveredBy scale carrier boxes root_2127715 := by
  apply coveredBy_split_literal root_2127715 small_2127715_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.root_2127865 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_2127715_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.cover_2127865
#print axioms cover_2127715

def root_2127709 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2127709_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2127709_left_fuel : Nat := 1
def small_2127709_left_count : Nat := 1
def small_2127709_left_encoded : String := "00000000"
theorem small_2127709_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2127709_left_root small_2127709_left_fuel small_2127709_left_count small_2127709_left_encoded = true := by
  decide +kernel
theorem small_2127709_left_covered : CoveredBy scale carrier boxes small_2127709_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2127709_left_root small_2127709_left_fuel small_2127709_left_count small_2127709_left_encoded small_2127709_left_checked

theorem cover_2127709 : CoveredBy scale carrier boxes root_2127709 := by
  apply coveredBy_split_literal root_2127709 small_2127709_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.root_2127715 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_2127709_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.cover_2127715
#print axioms cover_2127709

def root_2144903 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2144903_right_root : ZRayBox := fun j => (#[⟨⟨(-6291456), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2144903_right_fuel : Nat := 19
def small_2144903_right_count : Nat := 203
def small_2144903_right_encoded : String := "128A40F707800104128A40FB078000FE128A7CFF00000004022A458313E1C50200000001022A45870000000513E200FC00000003064000F612FFACF7000000000640010412FF70FB08C000FE11FC24FF00000004011523430000000500000008000000050000000212FFACFB0000000208C000FE11FC24FF0000000401152343000000050000000611FBE8FF000000050000000412FF70F7000000050000000013E20102022A458713E1C4FC064000F612FFACF700000000064001040000000812FFACFB0000000208C000FE0000000611FBE8FF0000000500000004000000080000000313E200FC00000003064000F612FFACF7000000000640010412FF70FB000000080000000212FFACFB0000000208C000FE0000000611FBE8FF033F67C313BBF50200000001033F67C70000000500000006000000060000000412FF70F7000000080000000000000001128A40FF022A45830000000513E20102022A45870000000513E200FC00000003064000F612FFACF7000000000640010412FF70FB064000FE12FFACFF00000004033F67C300000005000000080000000A0000000212FFACFB00000002064000FE12FFACFF00000004033F67C30000000513BC3102033F67C700000005000000080000000112FF70FF000000070000000412FF70F70640010412FF70FB000000050000000212FFACFB000000020000000700000000000000010000000400000002128A7CFB00000002078000FE128A7CFF00000004022A458313E1C50200000001022A45870000000513E200FC00000003064000F612FFACF70000000008C0010411FBE8FB08C000FE0000000611FBE8FF0000000500000004000000020000000612FF70F7000000060000000013E20102022A458713E1C4FC00000006000000030000000600000001128A40FF022A45830000000513E20102022A45870000000513E200FC00000003064000F612FFACF70000000008C0010411FBE8FB064000FE12FFACFF00000004033F67C3000000050000000612FF70FF00000007000000040000000211FC24FB00000002064000FE000000060000000712FF70F708C001040000000711FC24FB000000020000000600000000000000010000000400000000"
theorem small_2144903_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2144903_right_root small_2144903_right_fuel small_2144903_right_count small_2144903_right_encoded = true := by
  decide +kernel
theorem small_2144903_right_covered : CoveredBy scale carrier boxes small_2144903_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2144903_right_root small_2144903_right_fuel small_2144903_right_count small_2144903_right_encoded small_2144903_right_checked

theorem cover_2144903 : CoveredBy scale carrier boxes root_2144903 := by
  apply coveredBy_split_literal root_2144903 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0829.root small_2144903_right_root coord0 false (-6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0829.covered
  · exact small_2144903_right_covered
#print axioms cover_2144903

def root_2144898 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2144898_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16378880), (-15122432)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2144898_right_fuel : Nat := 1
def small_2144898_right_count : Nat := 1
def small_2144898_right_encoded : String := "00000003"
theorem small_2144898_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2144898_right_root small_2144898_right_fuel small_2144898_right_count small_2144898_right_encoded = true := by
  decide +kernel
theorem small_2144898_right_covered : CoveredBy scale carrier boxes small_2144898_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2144898_right_root small_2144898_right_fuel small_2144898_right_count small_2144898_right_encoded small_2144898_right_checked

theorem cover_2144898 : CoveredBy scale carrier boxes root_2144898 := by
  apply coveredBy_split_literal root_2144898 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.root_2144903 small_2144898_right_root coord3 false (-16378880)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.cover_2144903
  · exact small_2144898_right_covered
#print axioms cover_2144898

def root_2148234 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-6291456)⟩, ⟨(-15553280), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2148234_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-6291456)⟩, ⟨(-15553280), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(6291456), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2148234_right_fuel : Nat := 23
def small_2148234_right_count : Nat := 307
def small_2148234_right_encoded : String := "128A7CFB00000002078000FE128A7CFF00000004022A458313E1C50200000001067ECE8712EA58FC08C000F611FC24F70000000008C0010411FBE8FB08C000FE11FC24FF000000040115234313F8590200000001000000060000000611FBE8FF0115234313F85902000000010569AC471340D4FC096000F611AABCF7000000000000000811AA80F70820010400000007000000060000000000000003134110FC00000003096000F6000000080000000713F895020569AC471340D4FC096000F611AABCF70000000008200104000000090000000611AA80F7000000060000000000000003134110FC00000003096000F611AABCF7000000000820010412465CFB082000FE0000000600000007000000020000000611AA80F7000000060000000000000001000000040000000211FC24FB0000000208C000FE0000000611FBE8FF0115234300000008000000060000000411FBE8F708C0010411FBE8FB08C000FE0000000611FBE8FF011523430000000713F895020569AC47000000060000000600000001000000040000000200000006000000000000000312EA94FC0000000308C000F611FC24F70000000008C0010411FBE8FB08C000FE11FC24FF000000040000000611FBE8FF011523430000000713F895020793F0C7128220FC00000007000000030000000500000001000000040000000211FC24FB000000020000000611FBE8F708C0010411FBE8FB08C000FE000000060000000700000002000000060000000013E20102067ECE8712EA58FC08C000F611FC24F70000000008C0010411FBE8FB08C000FE0000000611FBE8FF033F67C313BBF502000000010569AC471340D4FC0000000600000003000000060000000600000004000000020000000611FBE8F700000006000000000000000312EA94FC0000000308C000F611FC24F7000000000000000511FBE8F7000000060000000000000001128A40FF022A458313E1C50200000001067ECE8712EA58FC08C000F611FC24F70000000008C0010411FBE8FB064000FE12FFACFF00000004011523430000000713F895020569AC471340D4FC096000F60000000900000007000000030000000700000001000000070000000211FC24FB00000002064000FE12FFACFF00000004011523430000000713F895020569AC470000000800000007000000010000000711FBE8F708C001040000000700000007000000000000000312EA94FC000000030000000713E20102067ECE8712EA58FC08C000F611FC24F70000000008C0010411FBE8FB064000FE12FFACFF00000004033F67C313BBF502000000010569AC471340D4FC096000F60000000911AA80F708200104000000070000000900000000000000030000000A0000000A0000000A0000000211FC24FB00000002064000FE12FFACFF00000004033F67C313BBF502000000010569AC4700000009000000060000000612FF70FF033F67C3000000070000000A0000000411FBE8F708C0010411FBE8FB064000FE12FFACFF00000004033F67C3000000070000000A000000070000000211FC24FB00000002064000FE0000000600000007000000000000000312EA94FC0000000308C000F611FC24F70000000008C001040000000A11FC24FB00000002064000FE12FFACFF00000004033F67C300000007000000050000000711FBE8F700000007000000000000000100000004"
theorem small_2148234_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2148234_right_root small_2148234_right_fuel small_2148234_right_count small_2148234_right_encoded = true := by
  decide +kernel
theorem small_2148234_right_covered : CoveredBy scale carrier boxes small_2148234_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2148234_right_root small_2148234_right_fuel small_2148234_right_count small_2148234_right_encoded small_2148234_right_checked

theorem cover_2148234 : CoveredBy scale carrier boxes root_2148234 := by
  apply coveredBy_split_literal root_2148234 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0830.root small_2148234_right_root coord2 false (6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0830.covered
  · exact small_2148234_right_covered
#print axioms cover_2148234

def root_2148228 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-6291456)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2148228_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-6291456)⟩, ⟨(-16244736), (-15553280)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2148228_left_fuel : Nat := 1
def small_2148228_left_count : Nat := 1
def small_2148228_left_encoded : String := "00000000"
theorem small_2148228_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2148228_left_root small_2148228_left_fuel small_2148228_left_count small_2148228_left_encoded = true := by
  decide +kernel
theorem small_2148228_left_covered : CoveredBy scale carrier boxes small_2148228_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2148228_left_root small_2148228_left_fuel small_2148228_left_count small_2148228_left_encoded small_2148228_left_checked

theorem cover_2148228 : CoveredBy scale carrier boxes root_2148228 := by
  apply coveredBy_split_literal root_2148228 small_2148228_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.root_2148234 coord0 true (-15553280)
  · decide +kernel
  · decide +kernel
  · exact small_2148228_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.cover_2148234
#print axioms cover_2148228

def root_2148227 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2148227_right_root : ZRayBox := fun j => (#[⟨⟨(-6291456), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2148227_right_fuel : Nat := 19
def small_2148227_right_count : Nat := 163
def small_2148227_right_encoded : String := "128A40F707800104128A40FB078000FE128A7CFF00000004022A458313E1C50200000001067ECE8712EA58FC064000F612FFACF7000000000640010412FF70FB08C000FE11FC24FF000000040115234313F85902000000010569AC47000000050000000713F895020569AC47000000080000000600000001000000070000000212FFACFB0000000208C000FE11FC24FF00000004000000060000000712FF70F7064001040000000700000007000000000000000312EA94FC00000003064000F612FFACF700000000000000070000000713E20102067ECE8712EA58FC064000F612FFACF7000000000640010412FF70FB08C000FE00000008000000080000000212FFACFB0000000208C000FE0000000611FBE8FF033F67C313BBF502000000010569AC470000000600000006000000060000000412FF70F7064001040000000800000006000000000000000312EA94FC00000003064000F612FFACF7000000000640010412FF70FB0000000A0000000212FFACFB0000000208C000FE000000060000000712FF70F70640010400000007000000060000000000000001128A40FF022A45830000000713E20102067ECE8712EA58FC064000F60000000A000000070000000300000007000000010000000400000002128A7CFB00000002078000FE128A7CFF00000004022A458313E1C50200000001067ECE8712EA58FC064000F612FFACF70000000008C0010411FBE8FB08C000FE0000000600000007000000020000000600000006000000030000000613E20102067ECE87000000060000000600000001128A40FF022A45830000000713E20102067ECE8712EA58FC064000F612FFACF70000000008C001040000000700000007000000070000000300000007000000010000000400000000"
theorem small_2148227_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2148227_right_root small_2148227_right_fuel small_2148227_right_count small_2148227_right_encoded = true := by
  decide +kernel
theorem small_2148227_right_covered : CoveredBy scale carrier boxes small_2148227_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2148227_right_root small_2148227_right_fuel small_2148227_right_count small_2148227_right_encoded small_2148227_right_checked

theorem cover_2148227 : CoveredBy scale carrier boxes root_2148227 := by
  apply coveredBy_split_literal root_2148227 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.root_2148228 small_2148227_right_root coord0 false (-6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.cover_2148228
  · exact small_2148227_right_covered
#print axioms cover_2148227

def root_2148221 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2148221_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-16379648)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2148221_left_fuel : Nat := 1
def small_2148221_left_count : Nat := 1
def small_2148221_left_encoded : String := "00000003"
theorem small_2148221_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2148221_left_root small_2148221_left_fuel small_2148221_left_count small_2148221_left_encoded = true := by
  decide +kernel
theorem small_2148221_left_covered : CoveredBy scale carrier boxes small_2148221_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2148221_left_root small_2148221_left_fuel small_2148221_left_count small_2148221_left_encoded small_2148221_left_checked

theorem cover_2148221 : CoveredBy scale carrier boxes root_2148221 := by
  apply coveredBy_split_literal root_2148221 small_2148221_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.root_2148227 coord3 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_2148221_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.cover_2148227
#print axioms cover_2148221

def root_2144897 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2144897 : CoveredBy scale carrier boxes root_2144897 := by
  apply coveredBy_split_literal root_2144897 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.root_2144898 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.root_2148221 coord3 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.cover_2144898
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.cover_2148221
#print axioms cover_2144897

def root_2144891 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2144891_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2144891_left_fuel : Nat := 1
def small_2144891_left_count : Nat := 1
def small_2144891_left_encoded : String := "00000001"
theorem small_2144891_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2144891_left_root small_2144891_left_fuel small_2144891_left_count small_2144891_left_encoded = true := by
  decide +kernel
theorem small_2144891_left_covered : CoveredBy scale carrier boxes small_2144891_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2144891_left_root small_2144891_left_fuel small_2144891_left_count small_2144891_left_encoded small_2144891_left_checked

theorem cover_2144891 : CoveredBy scale carrier boxes root_2144891 := by
  apply coveredBy_split_literal root_2144891 small_2144891_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.root_2144897 coord1 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_2144891_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.cover_2144897
#print axioms cover_2144891

def root_2144890 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2144890_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2144890_right_fuel : Nat := 23
def small_2144890_right_count : Nat := 465
def small_2144890_right_encoded : String := "1386AD0204548A07138670FC078000F6128A7CF70000000007800104128A40FB078000FE128A7CFF00000004067ECE8312EA590200000001022A458713E1C4FC08C000F611FC24F7000000000640010412FF70FB08C000FE00000007000000080000000212FFACFB0000000208C000FE000000070000000911FBE8F700000008000000000000000313E200FC0000000308C000F611FC24F7000000000640010412FF70FB08C000FE11FC24FF00000004000000080000000A0000000212FFACFB0000000208C000FE11FC24FF000000040000000611FBE8FF0569AC431340D50200000001033F67C7000000090000000A0000000A0000000411FBE8F7064001040000000812FFACFB0000000208C000FE0000000611FBE8FF0569AC431340D502000000010000000600000006000000040000000012EA9502022A45870000000813E200FC0000000308C000F6000000050000000800000001128A40FF067ECE8312EA590200000001022A458713E1C4FC08C000F611FC24F7000000000640010412FF70FB0000000A0000000212FFACFB00000002064000FE000000090000000911FBE8F70640010412FF70FB0000000A0000000212FFACFB00000002064000FE12FFACFF000000040569AC431340D50200000001011523470000000500000008000000080000000A00000000000000030000000A0000000A0000000400000002128A7CFB00000002078000FE128A7CFF00000004067ECE8312EA590200000001022A458713E1C4FC08C000F611FC24F7000000000000000911FBE8F700000006000000000000000313E200FC0000000308C000F611FC24F70000000008C0010400000006000000060000000612EA9502022A458713E1C4FC00000006000000030000000600000001128A40FF067ECE8312EA590200000001022A458713E1C4FC08C000F60000000911FBE8F708C0010411FBE8FB064000FE12FFACFF0000000400000009000000090000000200000009000000000000000313E200FC0000000308C000F611FC24F70000000008C0010411FBE8FB064000FE12FFACFF000000040569AC4300000009000000090000000A0000000211FC24FB000000020000000911FBE8F708C0010411FBE8FB064000FE12FFACFF000000040569AC431340D50200000001033F67C70000000600000006000000060000000A0000000211FC24FB00000002064000FE0000000612FF70FF0569AC430000000900000006000000040000000012EA9502022A458713E1C4FC08C000F60000000911FBE8F708C0010411FBE8FB0000000A000000020000000900000000000000030000000A0000000100000004128A40F707800104128A40FB078000FE128A7CFF00000004067ECE8312EA590200000001022A4587000000080000000800000008128A40FF067ECE8312EA590200000001022A458713E1C4FC064000F612FFACF70000000000000008000000080000000313E200FC00000003064000F60000000A00000008000000080000000400000002128A7CFB00000002078000FE128A7CFF00000004067ECE8312EA5902000000010000000600000006128A40FF067ECE8312EA590200000001022A458713E1C4FC064000F612FFACF70000000008C0010411FBE8FB064000FE0000000612FF70FF0569AC430000000500000008000000040000000211FC24FB000000020000000612FF70F708C0010411FBE8FB000000080000000200000006000000000000000313E200FC00000003064000F612FFACF70000000008C0010411FBE8FB064000FE000000060000000A000000020000000612FF70F708C0010411FBE8FB064000FE000000060000000700000002000000060000000012EA9502022A458713E1C4FC064000F612FFACF70000000008C001040000000800000006000000060000000313E200FC00000003064000F60000000A00000006000000010000000400000000000000031386ACFC00000003078000F6128A7CF70000000007800104128A40FB078000FE128A7CFF00000004067ECE8312EA590200000001067ECE8712EA58FC08C000F611FC24F7000000000000000511FBE8F7064001040000000A12FFACFB0000000208C000FE000000050000000A000000000000000300000005000000050000000A00000002128A7CFB00000002078000FE128A7CFF00000004067ECE8312EA590200000001067ECE8712EA58FC00000006000000030000000500000005128A40FF067ECE8312EA590200000001067ECE8712EA58FC08C000F60000000A11FBE8F70000000A00000000000000030000000A0000000A00000004128A40F707800104128A40FB078000FE128A7CFF00000004067ECE8312EA590200000001067ECE87000000080000000A000000080000000A00000002128A7CFB00000002078000FE128A7CFF00000004067ECE8312EA5902000000010000000600000006128A40FF067ECE8312EA590200000001067ECE8712EA58FC064000F612FFACF70000000008C001040000000A0000000612FF70F708C00104000000070000000600000000000000030000000A0000000A000000040000000000000001"
theorem small_2144890_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2144890_right_root small_2144890_right_fuel small_2144890_right_count small_2144890_right_encoded = true := by
  decide +kernel
theorem small_2144890_right_covered : CoveredBy scale carrier boxes small_2144890_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2144890_right_root small_2144890_right_fuel small_2144890_right_count small_2144890_right_encoded small_2144890_right_checked

theorem cover_2144890 : CoveredBy scale carrier boxes root_2144890 := by
  apply coveredBy_split_literal root_2144890 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.root_2144891 small_2144890_right_root coord1 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.cover_2144891
  · exact small_2144890_right_covered
#print axioms cover_2144890

def root_2144884 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2144884_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2144884_left_fuel : Nat := 1
def small_2144884_left_count : Nat := 1
def small_2144884_left_encoded : String := "00000004"
theorem small_2144884_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2144884_left_root small_2144884_left_fuel small_2144884_left_count small_2144884_left_encoded = true := by
  decide +kernel
theorem small_2144884_left_covered : CoveredBy scale carrier boxes small_2144884_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2144884_left_root small_2144884_left_fuel small_2144884_left_count small_2144884_left_encoded small_2144884_left_checked

theorem cover_2144884 : CoveredBy scale carrier boxes root_2144884 := by
  apply coveredBy_split_literal root_2144884 small_2144884_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.root_2144890 coord4 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_2144884_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.cover_2144890
#print axioms cover_2144884

def root_2144883 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2144883_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2144883_right_fuel : Nat := 21
def small_2144883_right_count : Nat := 191
def small_2144883_right_encoded : String := "135D44FF04548A03138671020000000104548A07138670FC078000F6128A7CF70000000007800104128A40FB028000FE13D7ECFF00000004022A45830000000513E20102022A4587000000050000000A0000000113D7B0FF022A4583000000050000000A0000000400000002128A7CFB00000002028000FE13D7ECFF00000004022A45830000000513E20102022A45870000000513E200FC0000000308C000F611FC24F70000000008C0010411FBE8FB0000000A0000000211FC24FB000000020000000911FBE8F708C001040000000711FC24FB0000000200000007000000000000000113D7B0FF022A45830000000513E20102022A458700000005000000070000000100000004128A40F707800104128A40FB0000000500000002128A7CFB00000002028000FE13D7ECFF00000004022A45830000000513E20102022A45870000000500000007000000010000000500000000000000031386ACFC00000003078000F6128A7CF70000000007800104128A40FB028000FE13D7ECFF00000004022A4583000000070000000A0000000700000002128A7CFB00000002028000FE13D7ECFF00000004022A45830000000713E20102067ECE8712EA58FC08C000F60000000A0000000700000003000000070000000100000007128A40F700000007000000001386AD0204548A07138670FC078000F6128A7CF70000000007800104128A40FB0000000A00000002128A7CFB00000002028000FE13D7ECFF00000004067ECE8312EA590200000001022A458713E1C4FC08C000F60000000911FBE8F708C00104000000090000000900000000000000030000000A0000000A0000000A128A40F707800104128A40FB0000000A00000002128A7CFB00000002028000FE13D7ECFF00000004067ECE8312EA590200000001022A458713E1C4FC064000F612FFACF70000000008C0010411FBE8FB000000050000000211FC24FB0000000203C000FE000000090000000512FF70F70000000500000000000000030000000A0000000A0000000A00000000000000030000000A0000000100000004"
theorem small_2144883_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2144883_right_root small_2144883_right_fuel small_2144883_right_count small_2144883_right_encoded = true := by
  decide +kernel
theorem small_2144883_right_covered : CoveredBy scale carrier boxes small_2144883_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2144883_right_root small_2144883_right_fuel small_2144883_right_count small_2144883_right_encoded small_2144883_right_checked

theorem cover_2144883 : CoveredBy scale carrier boxes root_2144883 := by
  apply coveredBy_split_literal root_2144883 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.root_2144884 small_2144883_right_root coord4 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.cover_2144884
  · exact small_2144883_right_covered
#print axioms cover_2144883

def root_2144877 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2144877_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2144877_left_fuel : Nat := 1
def small_2144877_left_count : Nat := 1
def small_2144877_left_encoded : String := "00000002"
theorem small_2144877_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2144877_left_root small_2144877_left_fuel small_2144877_left_count small_2144877_left_encoded = true := by
  decide +kernel
theorem small_2144877_left_covered : CoveredBy scale carrier boxes small_2144877_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2144877_left_root small_2144877_left_fuel small_2144877_left_count small_2144877_left_encoded small_2144877_left_checked

theorem cover_2144877 : CoveredBy scale carrier boxes root_2144877 := by
  apply coveredBy_split_literal root_2144877 small_2144877_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.root_2144883 coord2 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_2144877_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.cover_2144883
#print axioms cover_2144877

def root_2143155 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2143155 : CoveredBy scale carrier boxes root_2143155 := by
  apply coveredBy_split_literal root_2143155 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0828.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.root_2144877 coord2 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0828.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.cover_2144877
#print axioms cover_2143155

def root_2143149 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2143149_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2143149_left_fuel : Nat := 1
def small_2143149_left_count : Nat := 1
def small_2143149_left_encoded : String := "00000000"
theorem small_2143149_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2143149_left_root small_2143149_left_fuel small_2143149_left_count small_2143149_left_encoded = true := by
  decide +kernel
theorem small_2143149_left_covered : CoveredBy scale carrier boxes small_2143149_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2143149_left_root small_2143149_left_fuel small_2143149_left_count small_2143149_left_encoded small_2143149_left_checked

theorem cover_2143149 : CoveredBy scale carrier boxes root_2143149 := by
  apply coveredBy_split_literal root_2143149 small_2143149_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.root_2143155 coord0 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_2143149_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.cover_2143155
#print axioms cover_2143149

def root_2143148 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2143148_right_root : ZRayBox := fun j => (#[⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2143148_right_fuel : Nat := 19
def small_2143148_right_count : Nat := 261
def small_2143148_right_encoded : String := "135D44F705000104135D44FB050000FE135D80FF0000000404548A03138671020000000104548A07138670FC028000F613D7ECF700000000028001040000000813D7ECFB00000002078000FE128A7CFF0000000400000008128A40FF000000050000000400000008000000031386ACFC00000003028000F613D7ECF7000000000280010413D7B0FB078000FE00000008000000070000000213D7ECFB00000002078000FE128A7CFF00000004022A458300000007000000080000000713D7B0F700000007000000001386AD0204548A07000000080000000800000001135D44FF04548A03138671020000000104548A0700000005000000071386AD020000000A000000010000000400000002135D80FB00000002050000FE135D80FF0000000404548A03138671020000000104548A07138670FC028000F613D7ECF70000000007800104128A40FB078000FE128A7CFF00000004022A45830000000500000008128A40FF000000050000000400000002128A7CFB00000002078000FE128A7CFF00000004022A45830000000500000006128A40FF022A45830000000513E20102022A45870000000500000007000000010000000413D7B0F707800104128A40FB078000FE000000080000000500000002128A7CFB00000002078000FE000000060000000700000000000000031386ACFC00000003028000F613D7ECF70000000007800104128A40FB078000FE128A7CFF00000004022A45830000000713E20102067ECE870000000800000007000000010000000700000002128A7CFB00000002078000FE128A7CFF00000004022A458300000007000000060000000713D7B0F7078001040000000700000007000000001386AD0204548A07138670FC028000F613D7ECF70000000007800104128A40FB0000000800000002128A7CFB00000002078000FE00000006128A40FF067ECE8312EA590200000001022A45870000000800000006000000060000000413D7B0F70000000800000000000000031386ACFC00000003028000F613D7ECF70000000007800104128A40FB078000FE000000080000000800000002128A7CFB00000002078000FE00000006128A40FF067ECE83000000070000000A0000000413D7B0F70780010400000008128A7CFB00000002078000FE00000006000000070000000000000001135D44FF04548A03138671020000000104548A0700000005000000071386AD0204548A07138670FC028000F613D7ECF70000000007800104128A40FB0000000A00000002128A7CFB00000002028000FE13D7ECFF00000004067ECE8312EA590200000001022A4587000000050000000712EA9502022A45870000000800000007000000010000000713D7B0F707800104000000070000000700000000000000031386ACFC00000003028000F60000000A00000007000000010000000400000000"
theorem small_2143148_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2143148_right_root small_2143148_right_fuel small_2143148_right_count small_2143148_right_encoded = true := by
  decide +kernel
theorem small_2143148_right_covered : CoveredBy scale carrier boxes small_2143148_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2143148_right_root small_2143148_right_fuel small_2143148_right_count small_2143148_right_encoded small_2143148_right_checked

theorem cover_2143148 : CoveredBy scale carrier boxes root_2143148 := by
  apply coveredBy_split_literal root_2143148 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.root_2143149 small_2143148_right_root coord0 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.cover_2143149
  · exact small_2143148_right_covered
#print axioms cover_2143148

def root_2143143 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2143143_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2143143_right_fuel : Nat := 1
def small_2143143_right_count : Nat := 1
def small_2143143_right_encoded : String := "00000003"
theorem small_2143143_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2143143_right_root small_2143143_right_fuel small_2143143_right_count small_2143143_right_encoded = true := by
  decide +kernel
theorem small_2143143_right_covered : CoveredBy scale carrier boxes small_2143143_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2143143_right_root small_2143143_right_fuel small_2143143_right_count small_2143143_right_encoded small_2143143_right_checked

theorem cover_2143143 : CoveredBy scale carrier boxes root_2143143 := by
  apply coveredBy_split_literal root_2143143 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.root_2143148 small_2143143_right_root coord3 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.cover_2143148
  · exact small_2143143_right_covered
#print axioms cover_2143143

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051
