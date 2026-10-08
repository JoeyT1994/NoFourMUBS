import TaoBundleAssembly0031
import TaoBundleChunkBatch0126
import TaoBundleChunkBatch0130
import TaoBundleChunkBatch0131
import TaoBundleChunkBatch0132
import TaoBundleChunkBatch0133
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0032
def root_1338206 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1338206_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1338206_right_fuel : Nat := 29
def small_1338206_right_count : Nat := 449
def small_1338206_right_encoded : String := "120701020000000108A912FB12073D0408A912FD12073CFC0000000308A9130912070108000000040CFD9BF70F350CF600000000000000090F34D0F6045489F91386AD020CFD9BFB00000009000000090000000113867102000000010CFD9BFB0F350D0400000009000000020F34D104000000020CFD9BFD0F350CFC0000000304548A090000000600000009000000090000000012073D080CFD9BF70F350CF600000000045489F91386AD020CFD9BFB000000090F34D104000000020CFD9BFD0F350CFC000000030CFD9C09000000090F350D08000000090000000400000009000000011386710200000001000000090F34D0F6045489F91386AD020CFD9BFB0F350D0400000007000000020F34D104000000020CFD9BFD0F350CFC000000030CFD9C090000000900000007000000090000000113867102000000010CFD9BFB000000070F34D104000000020CFD9BFD00000007000000090000000000000004120700FC08A9130900000009000000090000000300000002120701040000000208A912FD12073CFC0000000308A9130912070108000000040CFD9BF70F350CF600000000045489F91386AD02045489FB0000000900000008000000011386710200000001045489FB00000009000000080F34D0F6045489F9000000081386710200000001000000080000000012073D080CFD9BF70F350CF600000000045489F91386AD02045489FB1386AD040CFD9BFD0F350CFC000000030CFD9C090F34D10800000004000000090F350D080C9A86F60F878CF7000000000C9A86FC0F878CFD00000003000000090F8750FD0C9A8708000000090F878D0900000009000000040000000300000009000000040F34D0FC00000009000000030000000213867104000000020CFD9BFD0F350CFC000000030CFD9C090F34D10800000004000000080F350D080C9A86F60F878CF7000000000C9A86FC0F878CFD000000030C9A87080F87510900000004067ECE790000000800000009000000080F8750FD0C9A87080F87510900000004067ECE7912EA9502022A457B13E201040DE7C9F6000000070000000900000002000000080000000112EA5902000000010000000A00000008000000030F8750F70C9A86FC0F878CFD00000003000000090F8750FD0C9A87080F87510900000004067ECE7900000009000000090F878D0900000005000000040000000300000000000000040F34D0FC0CFD9C09000000090F350D08000000090000000400000003000000011386710200000001045489FB1386AD040CFD9BFD0F350CFC000000030CFD9C09000000090F350D080C9A86F60F878CF7000000000C9A86FC000000090F8750FD0C9A87080000000700000009000000030000000900000004000000090000000213867104000000020CFD9BFD0F350CFC000000030CFD9C090F34D10800000004000000080F350D080C9A86F60F878CF7000000000C9A86FC0F878CFD000000030C9A870800000009000000080F8750FD0C9A87080F87510900000004022A45790000000A0000000A0F878D090000000800000004000000030F8750F70C9A86FC000000090F8750FD0C9A8708000000090F878D0900000009000000040000000300000000000000040F34D0FC0CFD9C09000000090F350D080000000900000004000000030F34D0F6045489F91386AD02045489FB1386AD040CFD9BFD0F350CFC000000030CFD9C090F34D108000000040C9A86FC000000080F8750FD00000008000000030F350D080C9A86FC000000070F8750FD0000000700000003000000040F34D0FC0CFD9C09000000090F350D080000000900000004000000030000000213867104000000020CFD9BFD0F350CFC000000030CFD9C090F34D10800000004000000080F350D080C9A86FC0F878CFD000000030C9A87080F8751090000000400000007000000080F8750FD0000000A00000003000000040F34D0FC0CFD9C09000000080F350D080C9A87080F8751090000000400000005000000080000000400000003000000011386710200000001045489FB1386AD040CFD9BFD0F350CFC000000030CFD9C090F34D108000000040C9A86FC000000080F8750FD0AD357770000000800000007000000030F350D0800000007000000040F34D0FC0CFD9C09000000090F350D080000000900000004000000030000000213867104000000020CFD9BFD0F350CFC000000030CFD9C090F34D10800000004000000080F350D080C9A86FC0F878CFD000000030C9A87080F8751090000000400000007000000080F8750FD0000000A00000003000000040F34D0FC0CFD9C09000000080F350D080C9A8708000000050000000800000004000000030000000000000004120700FC08A9130912070108000000040CFD9BF7000000080F34D0F6000000080000000012073D080CFD9BF70F350CF600000000000000090F34D0F6045489F900000009138671020000000100000009000000000000000400000003"
theorem small_1338206_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1338206_right_root small_1338206_right_fuel small_1338206_right_count small_1338206_right_encoded = true := by
  decide +kernel
theorem small_1338206_right_covered : CoveredBy scale carrier boxes small_1338206_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1338206_right_root small_1338206_right_fuel small_1338206_right_count small_1338206_right_encoded small_1338206_right_checked

theorem cover_1338206 : CoveredBy scale carrier boxes root_1338206 := by
  apply coveredBy_split_literal root_1338206 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0031.root_1338207 small_1338206_right_root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0031.cover_1338207
  · exact small_1338206_right_covered
#print axioms cover_1338206

def root_1338200 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1338200_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1338200_left_fuel : Nat := 1
def small_1338200_left_count : Nat := 1
def small_1338200_left_encoded : String := "00000000"
theorem small_1338200_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1338200_left_root small_1338200_left_fuel small_1338200_left_count small_1338200_left_encoded = true := by
  decide +kernel
theorem small_1338200_left_covered : CoveredBy scale carrier boxes small_1338200_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1338200_left_root small_1338200_left_fuel small_1338200_left_count small_1338200_left_encoded small_1338200_left_checked

theorem cover_1338200 : CoveredBy scale carrier boxes root_1338200 := by
  apply coveredBy_split_literal root_1338200 small_1338200_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0032.root_1338206 coord0 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_1338200_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0032.cover_1338206
#print axioms cover_1338200

def root_1338199 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1338199 : CoveredBy scale carrier boxes root_1338199 := by
  apply coveredBy_split_literal root_1338199 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0032.root_1338200 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0520.root coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0032.cover_1338200
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0520.covered
#print axioms cover_1338199

def root_1338194 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1338194_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1338194_right_fuel : Nat := 1
def small_1338194_right_count : Nat := 1
def small_1338194_right_encoded : String := "00000004"
theorem small_1338194_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1338194_right_root small_1338194_right_fuel small_1338194_right_count small_1338194_right_encoded = true := by
  decide +kernel
theorem small_1338194_right_covered : CoveredBy scale carrier boxes small_1338194_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1338194_right_root small_1338194_right_fuel small_1338194_right_count small_1338194_right_encoded small_1338194_right_checked

theorem cover_1338194 : CoveredBy scale carrier boxes root_1338194 := by
  apply coveredBy_split_literal root_1338194 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0032.root_1338199 small_1338194_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0032.cover_1338199
  · exact small_1338194_right_covered
#print axioms cover_1338194

def root_1323238 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1323238 : CoveredBy scale carrier boxes root_1323238 := by
  apply coveredBy_split_literal root_1323238 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0031.root_1323239 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0032.root_1338194 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0031.cover_1323239
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0032.cover_1338194
#print axioms cover_1323238

def root_1323232 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1323232_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1323232_left_fuel : Nat := 1
def small_1323232_left_count : Nat := 1
def small_1323232_left_encoded : String := "00000003"
theorem small_1323232_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1323232_left_root small_1323232_left_fuel small_1323232_left_count small_1323232_left_encoded = true := by
  decide +kernel
theorem small_1323232_left_covered : CoveredBy scale carrier boxes small_1323232_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1323232_left_root small_1323232_left_fuel small_1323232_left_count small_1323232_left_encoded small_1323232_left_checked

theorem cover_1323232 : CoveredBy scale carrier boxes root_1323232 := by
  apply coveredBy_split_literal root_1323232 small_1323232_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0032.root_1323238 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_1323232_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0032.cover_1323238
#print axioms cover_1323232

def root_1347599 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1347599_left_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1347599_left_fuel : Nat := 19
def small_1347599_left_count : Nat := 247
def small_1347599_left_encoded : String := "1386AD040C9A86F60F878CF7000000000C9A87020F8750F9078000FC128A7CFD0000000307800108128A410900000004067ECE7B0000000712EA5904000000020DE7C9F60E6014F700000000000000070E5FD8F70B4D4402108010F900000006000000010000000700000000128A7D09067ECE7B12EA95040DE7C9F60E6014F70000000000000006000000060000000212EA5904000000020DE7C9F60E6014F700000000000000060000000600000004128A40FD07800108128A410900000004067ECE7B0000000712EA5904000000020DE7C9F60E6014F7000000000000000600000006128A7D09067ECE7B00000006000000060000000400000003000000010F878CF900000001078000FC128A7CFD000000030780010800000007128A7D09067ECE7B0000000712EA5904000000020DE7C9F60E6014F700000000000000070E5FD8F70DE7CA020E5FD8F908C000FC11FC24FD0000000308C0010800000006000000060000000600000001000000070000000000000004128A40FD0780010800000007128A7D09067ECE7B0000000712EA5904000000020DE7C9F6000000070E5FD8F7000000050000000000000004000000030F8750F70C9A87020F8750F9078000FC128A7CFD0000000307800108128A410900000004067ECE7B12EA95040B4D43F610804CF7000000000B4D44020000000600000007000000080000000212EA5904000000020B4D43F610804CF7000000000B4D4402108010F9000000060000000110804CF90000000108C000FC11FC24FD0000000306400108000000070000000611FBE8FD0000000600000003108010F70B4D4402108010F9000000060000000110804CF90000000108C000FC0000000A0000000500000000128A7D09067ECE7B0000000512EA5904000000020B4D43F610804CF700000000000000060000000500000004128A40FD07800108128A410900000004067ECE7B0000000512EA5904000000020B4D43F610804CF70000000000000006000000050000000500000003000000010F878CF900000001078000FC128A7CFD0000000307800108128A410900000004067ECE7B0000000712EA5904000000020B4D43F610804CF70000000000000007108010F70DE7CA020E5FD8F908C000FC11FC24FD0000000306400108000000070000000500000005000000010000000700000000128A7D09067ECE7B0000000512EA5904000000020B4D43F610804CF7000000000DE7CA020E5FD8F90000000500000001000000050000000500000004128A40FD07800108128A410900000004067ECE7B0000000512EA5904000000020B4D43F610804CF700000000000000070000000500000005000000030000000000000002"
theorem small_1347599_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1347599_left_root small_1347599_left_fuel small_1347599_left_count small_1347599_left_encoded = true := by
  decide +kernel
theorem small_1347599_left_covered : CoveredBy scale carrier boxes small_1347599_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1347599_left_root small_1347599_left_fuel small_1347599_left_count small_1347599_left_encoded small_1347599_left_checked

theorem cover_1347599 : CoveredBy scale carrier boxes root_1347599 := by
  apply coveredBy_split_literal root_1347599 small_1347599_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0522.root coord2 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact small_1347599_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0522.covered
#print axioms cover_1347599

def root_1347594 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1347594_right_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1347594_right_fuel : Nat := 1
def small_1347594_right_count : Nat := 1
def small_1347594_right_encoded : String := "00000001"
theorem small_1347594_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1347594_right_root small_1347594_right_fuel small_1347594_right_count small_1347594_right_encoded = true := by
  decide +kernel
theorem small_1347594_right_covered : CoveredBy scale carrier boxes small_1347594_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1347594_right_root small_1347594_right_fuel small_1347594_right_count small_1347594_right_encoded small_1347594_right_checked

theorem cover_1347594 : CoveredBy scale carrier boxes root_1347594 := by
  apply coveredBy_split_literal root_1347594 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0032.root_1347599 small_1347594_right_root coord1 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0032.cover_1347599
  · exact small_1347594_right_covered
#print axioms cover_1347594

def root_1347593 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1347593_right_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1347593_right_fuel : Nat := 30
def small_1347593_right_count : Nat := 257
def small_1347593_right_encoded : String := "0F34D10200000001045489FB1386AD040C9A86F60F878CF700000000000000070F8750F7078000FC128A7CFD000000030780010800000007128A7D090AD3577910D13D02067ECE7B0000000512EA5904000000020B4D43F610804CF70000000000000007000000050000000110D10102000000010000000700000004128A40FD07800108000000070000000500000003000000000000000213867104000000020C9A86F60F878CF700000000078000FC128A7CFD0000000307800108128A41090000000400000007128A7D090AD3577910D13D02022A457B13E201040DE7C9F6000000070E5FD8F70000000700000000000000020000000A0000000110D10102000000010000000A000000040000000A0F8750F7078000FC128A7CFD0000000307800108128A4109000000040AD3577910D13D02022A457B13E201040B4D43F600000007108010F708C000FC0000000711FBE8FD0000000700000003000000000000000213E1C504000000020B4D43F610804CF70000000008C000FC11FC24FD000000030000000A0000000A108010F708C000FC11FC24FD000000030640010812FF7109000000040BE879B91011AD020115233B0000000713F85904000000020AA6A2760000000A10ED70F7096000FC11AABCFD0000000305A0010800000007133171090000000A000000040000000A000000000000000110117102000000010000000712FFAD090BE879B91011AD020115233B13F895040AA6A27610EDACF700000000096000FC0000000700000005000000050000000213F85904000000020AA6A2760000000A10ED70F700000005000000000000000110117102000000010000000A0000000411FBE8FD0640010812FF7109000000040BE879B90000000A0000000A12FFAD090BE879B9000000050000000A0000000400000003000000000000000110D1010200000001022A457B000000070000000A128A7D090AD3577910D13D02022A457B13E201040B4D43F610804CF70000000008C000FC11FC24FD0000000308C0010811FBE90900000004000000070000000500000005000000050000000213E1C504000000020B4D43F610804CF70000000008C000FC11FC24FD000000030000000A0000000A108010F708C000FC11FC24FD0000000308C0010811FBE909000000040BE879B9000000051011710200000001000000050000000500000005000000000000000110D1010200000001022A457B13E201040B4D43F610804CF7000000000000000700000005000000020000000A00000004128A40FD07800108128A4109000000040AD3577910D13D02022A457B13E201040B4D43F60000000700000005000000020000000A0000000110D10102000000010000000A128A7D090AD357790000000510D101020000000100000005000000040000000300000000"
theorem small_1347593_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1347593_right_root small_1347593_right_fuel small_1347593_right_count small_1347593_right_encoded = true := by
  decide +kernel
theorem small_1347593_right_covered : CoveredBy scale carrier boxes small_1347593_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1347593_right_root small_1347593_right_fuel small_1347593_right_count small_1347593_right_encoded small_1347593_right_checked

theorem cover_1347593 : CoveredBy scale carrier boxes root_1347593 := by
  apply coveredBy_split_literal root_1347593 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0032.root_1347594 small_1347593_right_root coord1 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0032.cover_1347594
  · exact small_1347593_right_covered
#print axioms cover_1347593

def root_1347587 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1347587_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1347587_left_fuel : Nat := 1
def small_1347587_left_count : Nat := 1
def small_1347587_left_encoded : String := "00000000"
theorem small_1347587_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1347587_left_root small_1347587_left_fuel small_1347587_left_count small_1347587_left_encoded = true := by
  decide +kernel
theorem small_1347587_left_covered : CoveredBy scale carrier boxes small_1347587_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1347587_left_root small_1347587_left_fuel small_1347587_left_count small_1347587_left_encoded small_1347587_left_checked

theorem cover_1347587 : CoveredBy scale carrier boxes root_1347587 := by
  apply coveredBy_split_literal root_1347587 small_1347587_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0032.root_1347593 coord0 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_1347587_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0032.cover_1347593
#print axioms cover_1347587

def root_1347586 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1347586_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1347586_right_fuel : Nat := 17
def small_1347586_right_count : Nat := 91
def small_1347586_right_encoded : String := "0F34D0F60CFD9BF90F350D02045489FB1386AD040C9A87020F8750F9078000FC00000007128A40FD0780010800000007128A7D090AD357770000000700000006000000040000000300000001000000070000000213867104000000020C9A87020F8750F9078000FC128A7CFD0000000307800108128A4109000000040AD3577710D13CF600000000022A457B0000000713E1C504000000020B4D4402000000050000000A00000007128A7D090AD3577710D13CF600000000022A457B13E2010400000006000000020000000610D100F60000000A0000000000000004128A40FD07800108128A4109000000040AD3577710D13CF600000000022A457B000000060000000600000006128A7D09000000060000000400000003000000010F878CF900000001078000FC128A7CFD000000030780010800000007128A7D090AD3577710D13CF6000000000000000A00000007000000040000000A000000010F34D102000000010000000700000000"
theorem small_1347586_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1347586_right_root small_1347586_right_fuel small_1347586_right_count small_1347586_right_encoded = true := by
  decide +kernel
theorem small_1347586_right_covered : CoveredBy scale carrier boxes small_1347586_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1347586_right_root small_1347586_right_fuel small_1347586_right_count small_1347586_right_encoded small_1347586_right_checked

theorem cover_1347586 : CoveredBy scale carrier boxes root_1347586 := by
  apply coveredBy_split_literal root_1347586 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0032.root_1347587 small_1347586_right_root coord0 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0032.cover_1347587
  · exact small_1347586_right_covered
#print axioms cover_1347586

def root_1347581 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1347581_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(16244736), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1347581_right_fuel : Nat := 1
def small_1347581_right_count : Nat := 1
def small_1347581_right_encoded : String := "00000004"
theorem small_1347581_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1347581_right_root small_1347581_right_fuel small_1347581_right_count small_1347581_right_encoded = true := by
  decide +kernel
theorem small_1347581_right_covered : CoveredBy scale carrier boxes small_1347581_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1347581_right_root small_1347581_right_fuel small_1347581_right_count small_1347581_right_encoded small_1347581_right_checked

theorem cover_1347581 : CoveredBy scale carrier boxes root_1347581 := by
  apply coveredBy_split_literal root_1347581 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0032.root_1347586 small_1347581_right_root coord4 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0032.cover_1347586
  · exact small_1347581_right_covered
#print axioms cover_1347581

def root_1345573 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1345573 : CoveredBy scale carrier boxes root_1345573 := by
  apply coveredBy_split_literal root_1345573 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0521.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0032.root_1347581 coord4 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0521.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0032.cover_1347581
#print axioms cover_1345573

def root_1345567 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1345567_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1345567_left_fuel : Nat := 1
def small_1345567_left_count : Nat := 1
def small_1345567_left_encoded : String := "00000003"
theorem small_1345567_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1345567_left_root small_1345567_left_fuel small_1345567_left_count small_1345567_left_encoded = true := by
  decide +kernel
theorem small_1345567_left_covered : CoveredBy scale carrier boxes small_1345567_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1345567_left_root small_1345567_left_fuel small_1345567_left_count small_1345567_left_encoded small_1345567_left_checked

theorem cover_1345567 : CoveredBy scale carrier boxes root_1345567 := by
  apply coveredBy_split_literal root_1345567 small_1345567_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0032.root_1345573 coord3 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_1345567_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0032.cover_1345573
#print axioms cover_1345567

def root_1345566 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1345566_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1345566_right_fuel : Nat := 21
def small_1345566_right_count : Nat := 245
def small_1345566_right_encoded : String := "135D44FD05000108135D4509000000040CFD9BF70F350CF6000000000CFD9BF90F350D02045489FB1386AD040C9A86F60F878CF7000000000C9A87020000000800000007000000080000000213867104000000020C9A86F60F878CF7000000000C9A87020F8750F9028000FC13D7ECFD0000000302800108000000090000000900000009000000010F878CF9000000010000000A0F8750F70C9A87020F8750F9028000FC13D7ECFD00000003028001080000000813D7ED09022A457B00000006000000060000000400000008000000010F878CF900000001028000FC13D7ECFD00000003028001080000000813D7ED09022A457B0000000813E1C504000000020B4D43F60000000A00000008000000040000000800000000000000010F34D10200000001045489FB000000070000000A0F34D0F60CFD9BF90F350D02045489FB0000000713867104000000020C9A87020F8750F9028000FC00000007000000090000000100000007000000010F34D102000000010000000700000000135D81090CFD9BF70F350CF6000000000CFD9BF90F350D02045489FB1386AD040C9A86F60F878CF7000000000C9A87020F8750F9028000FC13D7ECFD0000000307800108128A410900000004067ECE7B00000006000000060000000613D7B0FD07800108000000060000000500000003000000010F878CF900000001028000FC13D7ECFD000000030780010800000007128A7D09000000050000000413D7B0FD078001080000000700000005000000030F8750F70C9A87020F8750F9000000050000000100000005000000000000000213867104000000020C9A86F60F878CF7000000000C9A87020F8750F9028000FC13D7ECFD0000000307800108000000060000000600000006000000010F878CF9000000010000000A0F8750F70C9A87020F8750F9028000FC13D7ECFD0000000307800108000000060000000500000005000000010F878CF900000001028000FC13D7ECFD0000000307800108128A410900000004022A457B0000000513E1C5040000000200000005000000050000000500000000000000010F34D10200000001045489FB1386AD040C9A86F60F878CF700000000000000070F8750F700000005000000000000000213867104000000020C9A86F60000000A0F8750F7028000FC13D7ECFD00000003078001080000000A0000000500000005000000000F34D0F60CFD9BF90F350D02045489FB1386AD040C9A87020F8750F9028000FC13D7ECFD000000030780010800000007128A7D0900000006000000040000000A0000000100000007000000020000000A000000010F34D102000000010000000A000000000000000400000003"
theorem small_1345566_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1345566_right_root small_1345566_right_fuel small_1345566_right_count small_1345566_right_encoded = true := by
  decide +kernel
theorem small_1345566_right_covered : CoveredBy scale carrier boxes small_1345566_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1345566_right_root small_1345566_right_fuel small_1345566_right_count small_1345566_right_encoded small_1345566_right_checked

theorem cover_1345566 : CoveredBy scale carrier boxes root_1345566 := by
  apply coveredBy_split_literal root_1345566 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0032.root_1345567 small_1345566_right_root coord3 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0032.cover_1345567
  · exact small_1345566_right_covered
#print axioms cover_1345566

def root_1345560 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1345560_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1345560_left_fuel : Nat := 1
def small_1345560_left_count : Nat := 1
def small_1345560_left_encoded : String := "00000002"
theorem small_1345560_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1345560_left_root small_1345560_left_fuel small_1345560_left_count small_1345560_left_encoded = true := by
  decide +kernel
theorem small_1345560_left_covered : CoveredBy scale carrier boxes small_1345560_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1345560_left_root small_1345560_left_fuel small_1345560_left_count small_1345560_left_encoded small_1345560_left_checked

theorem cover_1345560 : CoveredBy scale carrier boxes root_1345560 := by
  apply coveredBy_split_literal root_1345560 small_1345560_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0032.root_1345566 coord2 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_1345560_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0032.cover_1345566
#print axioms cover_1345560

def root_1345376 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1345376_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1345376_left_fuel : Nat := 21
def small_1345376_left_count : Nat := 87
def small_1345376_left_encoded : String := "12073D04050000FC135D80FD0000000305000108135D45090000000400000007135D81090CFD9BF70F350CF6000000000CFD9BF90F350D020CFD9BFB000000070F34D104000000020C9A86F60F878CF7000000000C9A87020F8750F9078000FC00000007128A40FD000000070000000300000001000000070F8750F70C9A87020F8750F9078000FC128A7CFD000000030780010800000008128A7D090AD3577B00000005000000060000000400000008000000010F878CF900000001078000FC000000070000000800000000000000010F34D10200000001000000070000000700000004135D44FD05000108135D45090000000400000007135D81090CFD9BF70F350CF6000000000CFD9BF90F350D020CFD9BFB000000070F34D104000000020C9A86F60F878CF7000000000C9A8702000000080000000700000008000000010F34D102000000010000000700000007000000040000000300000002"
theorem small_1345376_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1345376_left_root small_1345376_left_fuel small_1345376_left_count small_1345376_left_encoded = true := by
  decide +kernel
theorem small_1345376_left_covered : CoveredBy scale carrier boxes small_1345376_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1345376_left_root small_1345376_left_fuel small_1345376_left_count small_1345376_left_encoded small_1345376_left_checked

theorem cover_1345376 : CoveredBy scale carrier boxes root_1345376 := by
  apply coveredBy_split_literal root_1345376 small_1345376_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0032.root_1345560 coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_1345376_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0032.cover_1345560
#print axioms cover_1345376

def root_1345371 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1345371_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1345371_right_fuel : Nat := 1
def small_1345371_right_count : Nat := 1
def small_1345371_right_encoded : String := "00000001"
theorem small_1345371_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1345371_right_root small_1345371_right_fuel small_1345371_right_count small_1345371_right_encoded = true := by
  decide +kernel
theorem small_1345371_right_covered : CoveredBy scale carrier boxes small_1345371_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1345371_right_root small_1345371_right_fuel small_1345371_right_count small_1345371_right_encoded small_1345371_right_checked

theorem cover_1345371 : CoveredBy scale carrier boxes root_1345371 := by
  apply coveredBy_split_literal root_1345371 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0032.root_1345376 small_1345371_right_root coord1 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0032.cover_1345376
  · exact small_1345371_right_covered
#print axioms cover_1345371

def root_1345370 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1345370_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1345370_right_fuel : Nat := 23
def small_1345370_right_count : Nat := 85
def small_1345370_right_encoded : String := "120701020000000108A912FB000000071207010400000002050000FC135D80FD0000000305000108135D45090000000400000007135D81090CFD9BF70F350CF600000000045489F91386AD02045489FB0000000713867104000000020C9A86F60F878CF7000000000000000A0F8750F7078000FC128A7CFD0000000307800108128A41090000000400000007128A7D09067ECE7912EA9502022A457B000000070000000A0000000112EA5902000000010000000A000000040000000A00000000000000011386710200000001045489FB0000000713867104000000020C9A86F6000000070F8750F7078000FC000000070000000A000000000000000700000004135D44FD05000108135D45090000000400000007135D81090CFD9BF70F350CF600000000045489F91386AD02045489FB000000070000000A0000000113867102000000010000000A000000070000000400000003"
theorem small_1345370_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1345370_right_root small_1345370_right_fuel small_1345370_right_count small_1345370_right_encoded = true := by
  decide +kernel
theorem small_1345370_right_covered : CoveredBy scale carrier boxes small_1345370_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1345370_right_root small_1345370_right_fuel small_1345370_right_count small_1345370_right_encoded small_1345370_right_checked

theorem cover_1345370 : CoveredBy scale carrier boxes root_1345370 := by
  apply coveredBy_split_literal root_1345370 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0032.root_1345371 small_1345370_right_root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0032.cover_1345371
  · exact small_1345370_right_covered
#print axioms cover_1345370

def root_1345364 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1345364_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1345364_left_fuel : Nat := 1
def small_1345364_left_count : Nat := 1
def small_1345364_left_encoded : String := "00000000"
theorem small_1345364_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1345364_left_root small_1345364_left_fuel small_1345364_left_count small_1345364_left_encoded = true := by
  decide +kernel
theorem small_1345364_left_covered : CoveredBy scale carrier boxes small_1345364_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1345364_left_root small_1345364_left_fuel small_1345364_left_count small_1345364_left_encoded small_1345364_left_checked

theorem cover_1345364 : CoveredBy scale carrier boxes root_1345364 := by
  apply coveredBy_split_literal root_1345364 small_1345364_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0032.root_1345370 coord0 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_1345364_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0032.cover_1345370
#print axioms cover_1345364

def root_1345363 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1345363_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1345363_right_fuel : Nat := 9
def small_1345363_right_count : Nat := 19
def small_1345363_right_encoded : String := "120700F608A912F912073D0208A912FB000000071207010400000002050000FC00000007135D44FD05000108000000070000000A000000030000000112070102000000010000000700000000"
theorem small_1345363_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1345363_right_root small_1345363_right_fuel small_1345363_right_count small_1345363_right_encoded = true := by
  decide +kernel
theorem small_1345363_right_covered : CoveredBy scale carrier boxes small_1345363_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1345363_right_root small_1345363_right_fuel small_1345363_right_count small_1345363_right_encoded small_1345363_right_checked

theorem cover_1345363 : CoveredBy scale carrier boxes root_1345363 := by
  apply coveredBy_split_literal root_1345363 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0032.root_1345364 small_1345363_right_root coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0032.cover_1345364
  · exact small_1345363_right_covered
#print axioms cover_1345363

def root_1345357 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1345357_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1345357_left_fuel : Nat := 1
def small_1345357_left_count : Nat := 1
def small_1345357_left_encoded : String := "00000004"
theorem small_1345357_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1345357_left_root small_1345357_left_fuel small_1345357_left_count small_1345357_left_encoded = true := by
  decide +kernel
theorem small_1345357_left_covered : CoveredBy scale carrier boxes small_1345357_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1345357_left_root small_1345357_left_fuel small_1345357_left_count small_1345357_left_encoded small_1345357_left_checked

theorem cover_1345357 : CoveredBy scale carrier boxes root_1345357 := by
  apply coveredBy_split_literal root_1345357 small_1345357_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0032.root_1345363 coord4 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_1345357_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0032.cover_1345363
#print axioms cover_1345357

def root_1345356 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1345356 : CoveredBy scale carrier boxes root_1345356 := by
  apply coveredBy_split_literal root_1345356 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0032.root_1345357 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0523.root coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0032.cover_1345357
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0523.covered
#print axioms cover_1345356

def root_1345351 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1345351_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1345351_right_fuel : Nat := 1
def small_1345351_right_count : Nat := 1
def small_1345351_right_encoded : String := "00000003"
theorem small_1345351_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1345351_right_root small_1345351_right_fuel small_1345351_right_count small_1345351_right_encoded = true := by
  decide +kernel
theorem small_1345351_right_covered : CoveredBy scale carrier boxes small_1345351_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1345351_right_root small_1345351_right_fuel small_1345351_right_count small_1345351_right_encoded small_1345351_right_checked

theorem cover_1345351 : CoveredBy scale carrier boxes root_1345351 := by
  apply coveredBy_split_literal root_1345351 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0032.root_1345356 small_1345351_right_root coord3 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0032.cover_1345356
  · exact small_1345351_right_covered
#print axioms cover_1345351

def root_1323231 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1323231 : CoveredBy scale carrier boxes root_1323231 := by
  apply coveredBy_split_literal root_1323231 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0032.root_1323232 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0032.root_1345351 coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0032.cover_1323232
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0032.cover_1345351
#print axioms cover_1323231

def root_1323225 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1323225_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1323225_left_fuel : Nat := 1
def small_1323225_left_count : Nat := 1
def small_1323225_left_encoded : String := "00000002"
theorem small_1323225_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1323225_left_root small_1323225_left_fuel small_1323225_left_count small_1323225_left_encoded = true := by
  decide +kernel
theorem small_1323225_left_covered : CoveredBy scale carrier boxes small_1323225_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1323225_left_root small_1323225_left_fuel small_1323225_left_count small_1323225_left_encoded small_1323225_left_checked

theorem cover_1323225 : CoveredBy scale carrier boxes root_1323225 := by
  apply coveredBy_split_literal root_1323225 small_1323225_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0032.root_1323231 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_1323225_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0032.cover_1323231
#print axioms cover_1323225

def root_1322819 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1322819_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1322819_left_fuel : Nat := 21
def small_1322819_left_count : Nat := 189
def small_1322819_left_encoded : String := "1151E8FB0A0000FC115224FD000000030A0001081151E9090000000408A912F712073CF60000000008A912F912073D0208A912FD00000007120700FC000000070000000300000001120701020000000100000007000000071152250908A912F712073CF60000000008A912F912073D0208A912FD12073CFC0000000308A913090000000912073D0805000104135D44FB0CFD9BF70F350CF600000000000000090000000700000002135D80FB000000020CFD9BF70F350CF6000000000CFD9BF900000009000000090F34D0F60CFD9BF90F350D020CFD9BFD0000000700000009000000010F34D10200000001000000070000000000000004120700FC000000090000000300000001120701020000000108A912FD12073CFC000000030000000900000009120700F608A912F912073D0208A912FD12073CFC0000000308A9130912070108000000040000000900000007120700FC000000090000000300000001120701020000000108A912FD00000007120700FC08A9130900000009000000070000000300000000000000041151E8FD0A0001081151E90900000004000000071152250908A912F712073CF60000000008A912F912073D0208A91309120701080000000405000104135D44FB00000005000000020000000512073D0805000104135D44FB050000FC00000007135D44FD000000070000000300000002135D80FB00000002050000FC135D80FD000000030CFD9BF70F350CF6000000000CFD9BF90F350D020CFD9C090000000500000007000000010F34D102000000010000000700000007135D44FD0CFD9BF70F350CF6000000000CFD9BF9000000050F34D102000000010000000500000007000000030000000400000001120701020000000108A913090000000900000007120700F608A912F912073D0208A9130912070108000000040500010400000007135D80FB00000002050000FC00000007135D44FD045489F7000000050000000700000003000000070000000112070102000000010000000700000000000000040000000300000002"
theorem small_1322819_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1322819_left_root small_1322819_left_fuel small_1322819_left_count small_1322819_left_encoded = true := by
  decide +kernel
theorem small_1322819_left_covered : CoveredBy scale carrier boxes small_1322819_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1322819_left_root small_1322819_left_fuel small_1322819_left_count small_1322819_left_encoded small_1322819_left_checked

theorem cover_1322819 : CoveredBy scale carrier boxes root_1322819 := by
  apply coveredBy_split_literal root_1322819 small_1322819_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0032.root_1323225 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_1322819_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0032.cover_1323225
#print axioms cover_1322819

def root_1322813 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1322813_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1322813_left_fuel : Nat := 1
def small_1322813_left_count : Nat := 1
def small_1322813_left_encoded : String := "00000001"
theorem small_1322813_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1322813_left_root small_1322813_left_fuel small_1322813_left_count small_1322813_left_encoded = true := by
  decide +kernel
theorem small_1322813_left_covered : CoveredBy scale carrier boxes small_1322813_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1322813_left_root small_1322813_left_fuel small_1322813_left_count small_1322813_left_encoded small_1322813_left_checked

theorem cover_1322813 : CoveredBy scale carrier boxes root_1322813 := by
  apply coveredBy_split_literal root_1322813 small_1322813_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0032.root_1322819 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_1322813_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0032.cover_1322819
#print axioms cover_1322813

def root_1310905 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1310905 : CoveredBy scale carrier boxes root_1310905 := by
  apply coveredBy_split_literal root_1310905 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0031.root_1310906 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0032.root_1322813 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0031.cover_1310906
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0032.cover_1322813
#print axioms cover_1310905

def root_1310899 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1310899_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1310899_left_fuel : Nat := 1
def small_1310899_left_count : Nat := 1
def small_1310899_left_encoded : String := "00000000"
theorem small_1310899_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1310899_left_root small_1310899_left_fuel small_1310899_left_count small_1310899_left_encoded = true := by
  decide +kernel
theorem small_1310899_left_covered : CoveredBy scale carrier boxes small_1310899_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1310899_left_root small_1310899_left_fuel small_1310899_left_count small_1310899_left_encoded small_1310899_left_checked

theorem cover_1310899 : CoveredBy scale carrier boxes root_1310899 := by
  apply coveredBy_split_literal root_1310899 small_1310899_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0032.root_1310905 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_1310899_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0032.cover_1310905
#print axioms cover_1310899

def root_1356839 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1356839_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1356839_right_fuel : Nat := 20
def small_1356839_right_count : Nat := 63
def small_1356839_right_encoded : String := "120701020000000108A912FB00000009120701040000000208A912FD12073CFC00000003050000F6135D80F70000000005000108135D450900000004045489F91386AD02045489FB0000000913867104000000020CFD9BFD0F350CFC000000030C9A86FC000000060F8750FD078000F6000000060000000900000003000000060000000100000009135D8109045489F91386AD02045489FB0000000913867104000000020CFD9BFD0F350CFC000000030C9A86FC000000090F8750FD078000F6128A7CF700000000000000090000000900000003000000090000000113867102000000010000000900000004135D44F7000000090000000000000009"
theorem small_1356839_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1356839_right_root small_1356839_right_fuel small_1356839_right_count small_1356839_right_encoded = true := by
  decide +kernel
theorem small_1356839_right_covered : CoveredBy scale carrier boxes small_1356839_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1356839_right_root small_1356839_right_fuel small_1356839_right_count small_1356839_right_encoded small_1356839_right_checked

theorem cover_1356839 : CoveredBy scale carrier boxes root_1356839 := by
  apply coveredBy_split_literal root_1356839 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0525.root small_1356839_right_root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0525.covered
  · exact small_1356839_right_covered
#print axioms cover_1356839

def root_1356833 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1356833_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1356833_left_fuel : Nat := 1
def small_1356833_left_count : Nat := 1
def small_1356833_left_encoded : String := "00000004"
theorem small_1356833_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1356833_left_root small_1356833_left_fuel small_1356833_left_count small_1356833_left_encoded = true := by
  decide +kernel
theorem small_1356833_left_covered : CoveredBy scale carrier boxes small_1356833_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1356833_left_root small_1356833_left_fuel small_1356833_left_count small_1356833_left_encoded small_1356833_left_checked

theorem cover_1356833 : CoveredBy scale carrier boxes root_1356833 := by
  apply coveredBy_split_literal root_1356833 small_1356833_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0032.root_1356839 coord4 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_1356833_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0032.cover_1356839
#print axioms cover_1356833

def root_1356832 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1356832_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1356832_right_fuel : Nat := 31
def small_1356832_right_count : Nat := 399
def small_1356832_right_encoded : String := "1152250908A912F912073D0208A912FB12073D0408A912FD12073CFC0000000308A9130912070108000000040000000912073D08050000F6135D80F7000000000CFD9BF90F350D020CFD9BFB0F350D0400000009000000020F34D104000000020CFD9BFD0F350CFC000000030CFD9C09000000050F350D080C9A87020F8750F90C9A86FC00000009000000050000000100000009000000040F34D0FC0000000900000003000000010F34D1020000000100000009135D44F70CFD9BF90F350D020CFD9BFB000000090F34D104000000020000000900000001000000090000000000000004120700FC000000090000000300000002120701040000000208A912FD12073CFC0000000308A913091207010800000004050000F6135D80F7000000000CFD9BF90F350D02045489FB0000000500000007000000010F34D10200000001000000050000000512073D08050000F6135D80F7000000000CFD9BF90F350D02045489FB1386AD040CFD9BFD0F350CFC000000030CFD9C090F34D10800000004000000050F350D080C9A87020F8750F90C9A86FC0F878CFD000000030C9A87080F875109000000040000000A0F878D0900000005000000040F8750FD0000000500000003000000010F878CF9000000010C9A86FC0F878CFD00000003000000090F8750FD0000000500000003000000040F34D0FC0CFD9C09000000090F350D080000000900000004000000030000000213867104000000020CFD9BFD0F350CFC000000030CFD9C090F34D10800000004000000050F350D080C9A87020F8750F90C9A86FC0F878CFD000000030C9A87080F87510900000004078000F6128A7CF700000000022A457B0000000700000007000000070F878D0900000007000000040F8750FD0C9A8708000000070000000500000003000000010F878CF9000000010C9A86FC0F878CFD000000030C9A87080F87510900000004078000F6128A7CF700000000022A457B0000000913E1C504000000020DE7CA020000000700000008000000090F878D09078000F60000000700000005000000040F8750FD0C9A87080F87510900000004078000F6128A7CF700000000022A457B0000000513E1C5040000000200000005000000050000000500000003000000040F34D0FC0CFD9C090F34D10800000004000000070F350D080C9A87020F8750F90C9A87080F87510900000004078000F6128A7CF700000000022A457B0000000900000007000000090F878D090000000700000004000000010F878CF900000001000000090000000400000003000000010F34D10200000001045489FB1386AD040CFD9BFD0F350CFC000000030CFD9C09000000090F350D080000000900000004000000090000000213867104000000020CFD9BFD0F350CFC000000030CFD9C090F34D10800000004000000050F350D080C9A86FC0F878CFD000000030C9A870800000009000000090F8750FD0C9A87080F87510900000004078000F6128A7CF7000000000AD357790000000510D101020000000100000005000000050000000500000003000000040F34D0FC0000000900000003135D44F70CFD9BF90F350D02045489FB1386AD040CFD9BFD0F350CFC0000000300000005000000090000000213867104000000020CFD9BFD0F350CFC000000030CFD9C09000000050F350D080C9A87020000000700000005000000040F34D0FC0000000900000003000000010F34D10200000001045489FB0000000913867104000000020CFD9BFD0F350CFC0000000300000005000000090000000000000004120700FC08A913090000000912073D08050000F6135D80F7000000000CFD9BF90F350D02045489FB00000009138671040000000200000009000000010000000900000009000000040000000300000001120701020000000108A912FB12073D040000000900000002120701040000000208A912FD12073CFC0000000308A913090000000912073D08050000F6135D80F700000000045489F91386AD02045489FB0000000913867104000000020CFD9BFD0F350CFC000000030CFD9C09000000090F350D080C9A86FC000000090F8750FD00000005000000030000000400000009000000011386710200000001045489FB0000000913867104000000020CFD9BFD0F350CFC000000030CFD9C09000000090F350D0800000009000000040000000900000009000000040000000900000004"
theorem small_1356832_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1356832_right_root small_1356832_right_fuel small_1356832_right_count small_1356832_right_encoded = true := by
  decide +kernel
theorem small_1356832_right_covered : CoveredBy scale carrier boxes small_1356832_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1356832_right_root small_1356832_right_fuel small_1356832_right_count small_1356832_right_encoded small_1356832_right_checked

theorem cover_1356832 : CoveredBy scale carrier boxes root_1356832 := by
  apply coveredBy_split_literal root_1356832 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0032.root_1356833 small_1356832_right_root coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0032.cover_1356833
  · exact small_1356832_right_covered
#print axioms cover_1356832

def root_1356826 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1356826_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1356826_left_fuel : Nat := 1
def small_1356826_left_count : Nat := 1
def small_1356826_left_encoded : String := "00000003"
theorem small_1356826_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1356826_left_root small_1356826_left_fuel small_1356826_left_count small_1356826_left_encoded = true := by
  decide +kernel
theorem small_1356826_left_covered : CoveredBy scale carrier boxes small_1356826_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1356826_left_root small_1356826_left_fuel small_1356826_left_count small_1356826_left_encoded small_1356826_left_checked

theorem cover_1356826 : CoveredBy scale carrier boxes root_1356826 := by
  apply coveredBy_split_literal root_1356826 small_1356826_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0032.root_1356832 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_1356826_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0032.cover_1356832
#print axioms cover_1356826

def root_1356825 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1356825 : CoveredBy scale carrier boxes root_1356825 := by
  apply coveredBy_split_literal root_1356825 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0032.root_1356826 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0526.root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0032.cover_1356826
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0526.covered
#print axioms cover_1356825

def root_1356819 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1356819_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1356819_left_fuel : Nat := 1
def small_1356819_left_count : Nat := 1
def small_1356819_left_encoded : String := "00000002"
theorem small_1356819_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1356819_left_root small_1356819_left_fuel small_1356819_left_count small_1356819_left_encoded = true := by
  decide +kernel
theorem small_1356819_left_covered : CoveredBy scale carrier boxes small_1356819_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1356819_left_root small_1356819_left_fuel small_1356819_left_count small_1356819_left_encoded small_1356819_left_checked

theorem cover_1356819 : CoveredBy scale carrier boxes root_1356819 := by
  apply coveredBy_split_literal root_1356819 small_1356819_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0032.root_1356825 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_1356819_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0032.cover_1356825
#print axioms cover_1356819

def root_1356629 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1356629_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1356629_left_fuel : Nat := 14
def small_1356629_left_count : Nat := 89
def small_1356629_left_encoded : String := "1151E8FB0A0000FC115224FD000000030A0001081151E9090000000408A912F912073D0208A912FD12073CFC00000003050000F6135D80F700000000050001040000000700000009135D44F705000104135D44FB00000007000000020000000900000000120700FC050000F6000000090000000800000003000000011207010200000001000000091152250908A912F912073D0208A912FD00000009120700FC00000009000000030000000100000009000000041151E8FD0A0001081151E9090000000408A912F912073D02050000F600000007135D44F70500010400000007135D80FB00000002050000FC000000070000000500000000000000011207010200000001000000071152250908A912F912073D0208A913090000000512073D08050000F6135D80F70000000005000104135D44FB000000050000000200000005000000050000000400000001120701020000000100000009000000040000000300000002"
theorem small_1356629_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1356629_left_root small_1356629_left_fuel small_1356629_left_count small_1356629_left_encoded = true := by
  decide +kernel
theorem small_1356629_left_covered : CoveredBy scale carrier boxes small_1356629_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1356629_left_root small_1356629_left_fuel small_1356629_left_count small_1356629_left_encoded small_1356629_left_checked

theorem cover_1356629 : CoveredBy scale carrier boxes root_1356629 := by
  apply coveredBy_split_literal root_1356629 small_1356629_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0032.root_1356819 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_1356629_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0032.cover_1356819
#print axioms cover_1356629

def root_1356623 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1356623_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1356623_left_fuel : Nat := 1
def small_1356623_left_count : Nat := 1
def small_1356623_left_encoded : String := "00000001"
theorem small_1356623_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1356623_left_root small_1356623_left_fuel small_1356623_left_count small_1356623_left_encoded = true := by
  decide +kernel
theorem small_1356623_left_covered : CoveredBy scale carrier boxes small_1356623_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1356623_left_root small_1356623_left_fuel small_1356623_left_count small_1356623_left_encoded small_1356623_left_checked

theorem cover_1356623 : CoveredBy scale carrier boxes root_1356623 := by
  apply coveredBy_split_literal root_1356623 small_1356623_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0032.root_1356629 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_1356623_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0032.cover_1356629
#print axioms cover_1356623

def root_1355363 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1355363 : CoveredBy scale carrier boxes root_1355363 := by
  apply coveredBy_split_literal root_1355363 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0524.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0032.root_1356623 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0524.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0032.cover_1356623
#print axioms cover_1355363

def root_1355358 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1355358_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1355358_right_fuel : Nat := 1
def small_1355358_right_count : Nat := 1
def small_1355358_right_encoded : String := "00000000"
theorem small_1355358_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1355358_right_root small_1355358_right_fuel small_1355358_right_count small_1355358_right_encoded = true := by
  decide +kernel
theorem small_1355358_right_covered : CoveredBy scale carrier boxes small_1355358_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1355358_right_root small_1355358_right_fuel small_1355358_right_count small_1355358_right_encoded small_1355358_right_checked

theorem cover_1355358 : CoveredBy scale carrier boxes root_1355358 := by
  apply coveredBy_split_literal root_1355358 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0032.root_1355363 small_1355358_right_root coord0 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0032.cover_1355363
  · exact small_1355358_right_covered
#print axioms cover_1355358

def root_1310898 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1310898 : CoveredBy scale carrier boxes root_1310898 := by
  apply coveredBy_split_literal root_1310898 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0032.root_1310899 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0032.root_1355358 coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0032.cover_1310899
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0032.cover_1355358
#print axioms cover_1310898

def root_1308858 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1308858 : CoveredBy scale carrier boxes root_1308858 := by
  apply coveredBy_split_literal root_1308858 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0504.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0032.root_1310898 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0504.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0032.cover_1310898
#print axioms cover_1308858

def root_1267588 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1267588 : CoveredBy scale carrier boxes root_1267588 := by
  apply coveredBy_split_literal root_1267588 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0031.root_1267589 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0032.root_1308858 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0031.cover_1267589
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0032.cover_1308858
#print axioms cover_1267588

def root_1369751 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16645888), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1369751_left_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (-1816224)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16645888), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1369751_left_fuel : Nat := 23
def small_1369751_left_count : Nat := 429
def small_1369751_left_encoded : String := "13E20102067ECE8712EA58FC0B4D43F610804CF7000000000B4D43FE10804CFF0000000403C0010413A510FB033F67B913BC3102000000060000000113BBF502000000010569AC471340D4FC0000000A00000003134110FC000000030BF3E576100928F700000000000000061008ECF70BF3E57E0000000A00000006000000000000000213A54CFB00000002033F67B90000000A13BBF502000000010569AC470000000A134110FC000000030000000A108010FF03C001040000000613A54CFB00000002033F67B90000000613BBF502000000010569AC47000000060000000800000004108010F70B4D43FE10804CFF0000000403C0010413A510FB033F67B90000000A13BBF502000000010569AC470000000A134110FC000000030AA6A27610EDACF7000000000BF3E57E0000000A1008ECFF000000060000000410ED70F70BF3E57E0000000A1008ECFF03200104000000060000000A00000004000000000000000213A54CFB000000020000000A108010FF03C0010413A510FB033F67B90000000513BBF502000000010569AC4700000005000000060000000213A54CFB00000002033F67B90000000513BBF502000000010569AC4700000005134110FC000000030AA6A27610EDACF7000000000AA6A27E10EDACFF000000040460010400000006000000080000000610ED70F70AA6A27E10EDACFF000000040000000A10ED70FF046001040000000600000005000000040000000000000004000000000000000312EA94FC000000030B4D43F610804CF7000000000B4D43FE10804CFF0000000403C0010413A510FB033F67B913BC31020793F0C70000000612825CFC000000030BF3E576100928F700000000000000061008ECF70BF3E57E0000000900000006000000000000000113BBF502000000010793F0C7128220FC0BF3E576100928F700000000000000061008ECF70BF3E57E100928FF00000004032001040000000613C144FB0000000202B4D6990000000A00000005000000060000000000000003000000050000000213A54CFB00000002033F67B913BC31020793F0C70000000A000000080000000113BBF502000000010793F0C7128220FC0BF3E576100928F700000000000000081008ECF70BF3E57E0000000A1008ECFF0000000800000004000000000000000300000005108010FF03C001040000000613A54CFB00000002033F67B90000000813BBF502000000010793F0C7128220FC00000008000000030000000800000004108010F70B4D43FE10804CFF0000000403C0010413A510FB033F67B913BC31020793F0C7128220FC0AA6A27610EDACF7000000000BF3E57E00000009000000060000000900000003000000090000000113BBF502000000010793F0C7128220FC0AA6A27610EDACF7000000000BF3E57E000000091008ECFF032001040000000613C144FB0000000202B4D6990000000600000009000000040000000900000003000000090000000213A54CFB00000002033F67B913BC31020793F0C70000000A12825CFC000000030AA6A27610EDACF7000000000BF3E57E0000000A1008ECFF000000080000000410ED70F700000009000000000000000113BBF502000000010793F0C7128220FC0AA6A27610EDACF7000000000BF3E57E0000000A1008ECFF046001041383DCFB02B4D6990000000A13D0D1020000000107095FA70000000A00000005000000020000000A0000000410ED70F70BF3E57E0000000A1008ECFF04600104000000090000000A00000004000000000000000312825CFC000000030AA6A27610EDACF7000000000BF3E57E000000051008ECFF0460010400000005138418FB00000002000000050000000410ED70F70000000900000000108010FF03C0010413A510FB033F67B90000000613BBF502000000010793F0C700000006000000090000000213A54CFB00000002033F67B913BC31020793F0C7128220FC0AA6A2760000000810ED70F70AA6A27E0000000800000006000000000000000312825CFC000000030AA6A27600000008000000070000000113BBF502000000010793F0C7128220FC0AA6A27610EDACF7000000000AA6A27E10EDACFF000000040460010400000006000000080000000610ED70F70AA6A27E10EDACFF00000004046001041383DCFB0000000900000002138418FB0000000202B4D6990000000813D0D1020000000107095FA70000000A0000000810ED70FF04600104000000060000000800000004000000000000000312825CFC000000030AA6A27610EDACF7000000000AA6A27E10EDACFF0000000404600104000000090000000810ED70FF000000060000000410ED70F70AA6A27E000000090000000700000000000000040000000000000001"
theorem small_1369751_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1369751_left_root small_1369751_left_fuel small_1369751_left_count small_1369751_left_encoded = true := by
  decide +kernel
theorem small_1369751_left_covered : CoveredBy scale carrier boxes small_1369751_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1369751_left_root small_1369751_left_fuel small_1369751_left_count small_1369751_left_encoded small_1369751_left_checked

theorem cover_1369751 : CoveredBy scale carrier boxes root_1369751 := by
  apply coveredBy_split_literal root_1369751 small_1369751_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0529.root coord1 true (-1816224)
  · decide +kernel
  · decide +kernel
  · exact small_1369751_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0529.covered
#print axioms cover_1369751

def root_1369745 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1369745_left_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16777216), (-16645888)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1369745_left_fuel : Nat := 1
def small_1369745_left_count : Nat := 1
def small_1369745_left_encoded : String := "00000002"
theorem small_1369745_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1369745_left_root small_1369745_left_fuel small_1369745_left_count small_1369745_left_encoded = true := by
  decide +kernel
theorem small_1369745_left_covered : CoveredBy scale carrier boxes small_1369745_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1369745_left_root small_1369745_left_fuel small_1369745_left_count small_1369745_left_encoded small_1369745_left_checked

theorem cover_1369745 : CoveredBy scale carrier boxes root_1369745 := by
  apply coveredBy_split_literal root_1369745 small_1369745_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0032.root_1369751 coord2 true (-16645888)
  · decide +kernel
  · decide +kernel
  · exact small_1369745_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0032.cover_1369751
#print axioms cover_1369745

def root_1369281 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1369281_left_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(0), (2097152)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1369281_left_fuel : Nat := 21
def small_1369281_left_count : Nat := 219
def small_1369281_left_encoded : String := "13D7B0FB022A457913E20102067ECE8712EA58FC0B4D43F610804CF70000000000000006108010F70B4D43FE10804CFF00000004014001040000000613F614FB00000002033F67B90000000613BBF502000000010569AC4700000006134110FC000000030AA6A27610EDACF700000000000000060000000900000006000000000000000312EA94FC000000030B4D43F610804CF7000000000B4D43FE10804CFF000000040000000600000006108010F70B4D43FE10804CFF00000004014001040000000613F614FB00000002033F67B9000000090000000900000006000000000000000113E1C50200000001067ECE8712EA58FC0B4D43F610804CF7000000000B4D43FE10804CFF00000004014001040000000613F614FB000000020115233913F895020569AC4700000006134110FC0000000300000006000000010000000700000006108010F70B4D43FE10804CFF000000040140010413F5D8FB0115233913F895020569AC4700000006000000090000000113F85902000000010569AC4700000008000000090000000213F614FB000000020115233913F895020569AC471340D4FC0AA6A27610EDACF7000000000000000710ED70F70BF3E57E100928FF00000004000000071008ECFF00000006000000040000000000000003134110FC000000030AA6A27610EDACF7000000000BF3E57E100928FF0000000401E0010400000006000000070000000610ED70F700000009000000000000000113F85902000000010569AC471340D4FC0AA6A2760000000710ED70F7000000070000000000000003134110FC000000030AA6A27610EDACF7000000000BF3E57E000000071008ECFF01E0010400000006000000070000000410ED70F70000000800000000108010FF014001040000000613F614FB00000002011523390000000613F85902000000010569AC4700000006134110FC000000030000000600000004000000000000000312EA94FC000000030B4D43F610804CF7000000000B4D43FE10804CFF0000000400000005108010FF0000000600000004108010F70B4D43FE10804CFF00000004014001040000000913F614FB00000002011523390000000900000005108010FF014001040000000613F614FB00000002011523390000000613F85902000000010793F0C7128220FC0AA6A27600000006000000090000000300000005000000040000000000000002"
theorem small_1369281_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1369281_left_root small_1369281_left_fuel small_1369281_left_count small_1369281_left_encoded = true := by
  decide +kernel
theorem small_1369281_left_covered : CoveredBy scale carrier boxes small_1369281_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1369281_left_root small_1369281_left_fuel small_1369281_left_count small_1369281_left_encoded small_1369281_left_checked

theorem cover_1369281 : CoveredBy scale carrier boxes root_1369281 := by
  apply coveredBy_split_literal root_1369281 small_1369281_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0032.root_1369745 coord2 false (2097152)
  · decide +kernel
  · decide +kernel
  · exact small_1369281_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0032.cover_1369745
#print axioms cover_1369281

def root_1369276 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1369276_right_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-13026304), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1369276_right_fuel : Nat := 1
def small_1369276_right_count : Nat := 1
def small_1369276_right_encoded : String := "00000004"
theorem small_1369276_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1369276_right_root small_1369276_right_fuel small_1369276_right_count small_1369276_right_encoded = true := by
  decide +kernel
theorem small_1369276_right_covered : CoveredBy scale carrier boxes small_1369276_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1369276_right_root small_1369276_right_fuel small_1369276_right_count small_1369276_right_encoded small_1369276_right_checked

theorem cover_1369276 : CoveredBy scale carrier boxes root_1369276 := by
  apply coveredBy_split_literal root_1369276 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0032.root_1369281 small_1369276_right_root coord4 true (-13026304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0032.cover_1369281
  · exact small_1369276_right_covered
#print axioms cover_1369276

def root_1368686 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1368686_left_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-12756736), (-10572672)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1368686_left_fuel : Nat := 20
def small_1368686_left_count : Nat := 281
def small_1368686_left_encoded : String := "0F878CFF000000040280010413D7B0FB022A457913E20102067ECE8712EA58FC0B4D43F610804CF7000000000DE7C9FE000000070E5FD8FF0140010413F5D8FB000000070000000213F614FB00000002033F67B90000000A0000000700000004108010F70DE7C9FE0000000A0E5FD8FF0140010413F5D8FB033F67B913BC31020569AC4700000006000000090000000113BBF502000000010569AC4700000007000000090000000213F614FB00000002033F67B90000000A13BBF502000000010569AC4700000007134110FC000000030AA6A27610EDACF7000000000000000A0000000900000004000000000000000312EA94FC000000030B4D43F610804CF7000000000DE7C9FE0E6014FF000000040140010413F5D8FB033F67B900000009000000050000000213F614FB00000002033F67B90000000A000000050E5FD8FF0140010413F5D8FB033F67B90000000613BBF50200000001000000090000000213F614FB00000002033F67B913BC31020793F0C7128220FC0BF3E576100928F700000000000000060000000A0000000300000005000000010000000500000004108010F70DE7C9FE000000090E5FD8FF0000000900000004000000000000000113E1C50200000001067ECE8712EA58FC0B4D43F610804CF70000000000000007108010F70DE7C9FE0E6014FF00000004000000070E5FD8FF0140010413F5D8FB0115233913F895020569AC47000000070000000900000001000000070000000213F614FB000000020115233913F895020569AC4700000007134110FC000000030AA6A2760000000700000009000000010000000700000004000000000000000312EA94FC000000030B4D43F610804CF70000000000000005000000050000000213D7ECFB00000002022A457913E20102067ECE8712EA58FC0B4D43F610804CF7000000000000000A0000000A0000000312EA94FC000000030B4D43F610804CF7000000000DE7C9FE0E6014FF00000004000000050E5FD8FF03C0010413A510FB033F67B913BC31020793F0C70000000A0000000500000001000000050000000213A54CFB00000002033F67B90000000A0000000500000004108010F70DE7C9FE0E6014FF000000040000000A0E5FD8FF03C0010413A510FB033F67B913BC31020793F0C70000000A000000090000000113BBF502000000010793F0C7128220FC0AA6A27610EDACF7000000000000000A0000000900000003000000050000000213A54CFB00000002033F67B90000000A13BBF502000000010793F0C70000000A0000000500000004000000000000000113E1C50200000001067ECE8712EA58FC0B4D43F610804CF7000000000DE7C9FE000000070E5FD8FF0000000700000004108010F70DE7C9FE0E6014FF00000004000000070E5FD8FF03C0010413A510FB0115233913F895020569AC4700000007134110FC000000030AA6A276000000070000000A00000001000000070000000213A54CFB00000002011523390000000A13F85902000000010569AC47000000070000000500000004000000000000000300000005"
theorem small_1368686_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1368686_left_root small_1368686_left_fuel small_1368686_left_count small_1368686_left_encoded = true := by
  decide +kernel
theorem small_1368686_left_covered : CoveredBy scale carrier boxes small_1368686_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1368686_left_root small_1368686_left_fuel small_1368686_left_count small_1368686_left_encoded small_1368686_left_checked

theorem cover_1368686 : CoveredBy scale carrier boxes root_1368686 := by
  apply coveredBy_split_literal root_1368686 small_1368686_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0032.root_1369276 coord4 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact small_1368686_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0032.cover_1369276
#print axioms cover_1368686

def root_1368681 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1368681_right_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(-13026304), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1368681_right_fuel : Nat := 1
def small_1368681_right_count : Nat := 1
def small_1368681_right_encoded : String := "00000000"
theorem small_1368681_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1368681_right_root small_1368681_right_fuel small_1368681_right_count small_1368681_right_encoded = true := by
  decide +kernel
theorem small_1368681_right_covered : CoveredBy scale carrier boxes small_1368681_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1368681_right_root small_1368681_right_fuel small_1368681_right_count small_1368681_right_encoded small_1368681_right_checked

theorem cover_1368681 : CoveredBy scale carrier boxes root_1368681 := by
  apply coveredBy_split_literal root_1368681 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0032.root_1368686 small_1368681_right_root coord0 true (-13026304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0032.cover_1368686
  · exact small_1368681_right_covered
#print axioms cover_1368681

def root_1368279 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1368279_left_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-10572672)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1368279_left_fuel : Nat := 19
def small_1368279_left_count : Nat := 189
def small_1368279_left_encoded : String := "0F878CF7000000000C9A86FE0F878CFF000000040280010413D7B0FB022A457913E20102067ECE8712EA58FC000000070000000312EA94FC000000030DE7C9F60E6014F700000000000000050E5FD8F70DE7C9FE0E6014FF00000004000000050E5FD8FF014001040000000613F614FB00000002033F67B913BC31020793F0C70000000600000005000000010000000500000004000000000000000113E1C50200000001067ECE8700000007000000050000000213D7ECFB00000002022A457913E20102067ECE8712EA58FC0DE7C9F6000000070E5FD8F700000007000000000000000312EA94FC000000030DE7C9F60E6014F700000000000000050E5FD8F70DE7C9FE0E6014FF000000040000000500000005000000000000000113E1C50200000001067ECE8700000007000000050F8750FF0280010413D7B0FB022A457913E20102000000060000000113E1C50200000001067ECE8712EA58FC0DE7C9F6000000060E5FD8F70B4D43FE0000000700000006000000000000000312EA94FC000000030DE7C9F60E6014F70000000000000005000000050000000213D7ECFB00000002022A457913E20102067ECE8712EA58FC0DE7C9F60E6014F700000000000000060E5FD8F70B4D43FE10804CFF0000000403C001040000000613A54CFB00000002033F67B90000000813BBF502000000010000000700000006000000000000000312EA94FC000000030DE7C9F60E6014F7000000000B4D43FE00000008000000060E5FD8F70B4D43FE10804CFF0000000403C0010413A510FB033F67B900000006000000050000000213A54CFB00000002033F67B90000000800000005108010FF03C00104000000060000000800000004000000000000000113E1C50200000001067ECE8712EA58FC0DE7C9F60E6014F700000000000000070E5FD8F70B4D43FE10804CFF0000000400000007108010FF03C001040000000613A54CFB00000002011523390000000613F85902000000010569AC4700000006000000050000000400000000000000030000000500000004"
theorem small_1368279_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1368279_left_root small_1368279_left_fuel small_1368279_left_count small_1368279_left_encoded = true := by
  decide +kernel
theorem small_1368279_left_covered : CoveredBy scale carrier boxes small_1368279_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1368279_left_root small_1368279_left_fuel small_1368279_left_count small_1368279_left_encoded small_1368279_left_checked

theorem cover_1368279 : CoveredBy scale carrier boxes root_1368279 := by
  apply coveredBy_split_literal root_1368279 small_1368279_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0032.root_1368681 coord0 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact small_1368279_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0032.cover_1368681
#print axioms cover_1368279

def root_1368273 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1368273_left_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1368273_left_fuel : Nat := 1
def small_1368273_left_count : Nat := 1
def small_1368273_left_encoded : String := "00000004"
theorem small_1368273_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1368273_left_root small_1368273_left_fuel small_1368273_left_count small_1368273_left_encoded = true := by
  decide +kernel
theorem small_1368273_left_covered : CoveredBy scale carrier boxes small_1368273_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1368273_left_root small_1368273_left_fuel small_1368273_left_count small_1368273_left_encoded small_1368273_left_checked

theorem cover_1368273 : CoveredBy scale carrier boxes root_1368273 := by
  apply coveredBy_split_literal root_1368273 small_1368273_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0032.root_1368279 coord4 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_1368273_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0032.cover_1368279
#print axioms cover_1368273

def root_1368272 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1368272_right_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-10897344), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1368272_right_fuel : Nat := 12
def small_1368272_right_count : Nat := 35
def small_1368272_right_encoded : String := "0F34D0FE0C9A86F60F878CF7000000000280010400000007000000070F8750F70280010413D7B0FB022A457913E20102067ECE870000000712EA94FC000000030AD3577F10D13CFE0000000400000005000000050000000113E1C50200000001067ECE8700000007000000050000000213D7ECFB00000002022A45790000000A000000050000000000000004"
theorem small_1368272_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1368272_right_root small_1368272_right_fuel small_1368272_right_count small_1368272_right_encoded = true := by
  decide +kernel
theorem small_1368272_right_covered : CoveredBy scale carrier boxes small_1368272_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1368272_right_root small_1368272_right_fuel small_1368272_right_count small_1368272_right_encoded small_1368272_right_checked

theorem cover_1368272 : CoveredBy scale carrier boxes root_1368272 := by
  apply coveredBy_split_literal root_1368272 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0032.root_1368273 small_1368272_right_root coord4 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0032.cover_1368273
  · exact small_1368272_right_covered
#print axioms cover_1368272

def root_1368266 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1368266_left_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-16379648)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1368266_left_fuel : Nat := 1
def small_1368266_left_count : Nat := 1
def small_1368266_left_encoded : String := "00000003"
theorem small_1368266_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1368266_left_root small_1368266_left_fuel small_1368266_left_count small_1368266_left_encoded = true := by
  decide +kernel
theorem small_1368266_left_covered : CoveredBy scale carrier boxes small_1368266_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1368266_left_root small_1368266_left_fuel small_1368266_left_count small_1368266_left_encoded small_1368266_left_checked

theorem cover_1368266 : CoveredBy scale carrier boxes root_1368266 := by
  apply coveredBy_split_literal root_1368266 small_1368266_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0032.root_1368272 coord3 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_1368266_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0032.cover_1368272
#print axioms cover_1368266

def root_1367754 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1367754_left_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1367754_left_fuel : Nat := 30
def small_1367754_left_count : Nat := 239
def small_1367754_left_encoded : String := "138670FC0CFD9BFF0F350CFE000000040C9A86F60F878CF7000000000C9A86FE0F878CFF00000004000000070F8750FF0280010413D7B0FB022A457900000006000000070000000213D7ECFB00000002022A457913E20102022A45870000000613E200FC000000030DE7C9F6000000070E5FD8F70B4D43FE0000000700000006000000000000000113E1C5020000000100000007000000040F8750F70C9A86FE0F878CFF000000040280010413D7B0FB022A457913E20102022A45870000000713E200FC000000030B4D43F6000000070000000A00000001000000070000000213D7ECFB00000002022A45790000000A13E1C50200000001000000070F8750FF0280010413D7B0FB022A457913E20102022A45870000000513E200FC000000030B4D43F610804CF70000000000000006108010F700000005000000000000000113E1C50200000001022A45870000000713E200FC000000030B4D43F610804CF7000000000B4D43FE0000000700000006108010F70B4D43FE10804CFF00000004014001040000000700000007108010FF014001040000000613F614FB00000002011523390000000513F8590200000001033F67C7000000050000000600000004000000000000000213D7ECFB00000002022A457913E20102022A45870000000513E200FC000000030B4D43F610804CF7000000000B4D43FE0000000A108010FF0000000500000004108010F700000005000000000000000113E1C50200000001022A458713E1C4FC0B4D43F600000007108010F700000005000000000000000313E200FC000000030B4D43F610804CF7000000000B4D43FE00000007108010FF03C0010413A510FB000000070000000213A54CFB000000020115233913F89502033F67C70000000513BC30FC000000030BF3E576000000070000000A000000010000000700000004108010F70B4D43FE10804CFF0000000403C0010413A510FB000000070000000213A54CFB000000020000000A108010FF03C0010413A510FB011523390000000513F8590200000001033F67C70000000513BC30FC000000030AA6A27610EDACF7000000000000000710ED70F70AA6A27E0000000710ED70FF0000000500000004000000000000000213A54CFB00000002011523390000000513F8590200000001033F67C70000000513BC30FC000000030AA6A27610EDACF7000000000000000710ED70F70AA6A27E10EDACFF000000040000000710ED70FF046001041383DCFB0000000500000002000000050000000400000000000000040000000000000004000000000F34D0FE000000070000000400000003"
theorem small_1367754_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1367754_left_root small_1367754_left_fuel small_1367754_left_count small_1367754_left_encoded = true := by
  decide +kernel
theorem small_1367754_left_covered : CoveredBy scale carrier boxes small_1367754_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1367754_left_root small_1367754_left_fuel small_1367754_left_count small_1367754_left_encoded small_1367754_left_checked

theorem cover_1367754 : CoveredBy scale carrier boxes root_1367754 := by
  apply coveredBy_split_literal root_1367754 small_1367754_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0032.root_1368266 coord3 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact small_1367754_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0032.cover_1368266
#print axioms cover_1367754

def root_1367748 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1367748_left_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1367748_left_fuel : Nat := 1
def small_1367748_left_count : Nat := 1
def small_1367748_left_encoded : String := "00000001"
theorem small_1367748_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1367748_left_root small_1367748_left_fuel small_1367748_left_count small_1367748_left_encoded = true := by
  decide +kernel
theorem small_1367748_left_covered : CoveredBy scale carrier boxes small_1367748_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1367748_left_root small_1367748_left_fuel small_1367748_left_count small_1367748_left_encoded small_1367748_left_checked

theorem cover_1367748 : CoveredBy scale carrier boxes root_1367748 := by
  apply coveredBy_split_literal root_1367748 small_1367748_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0032.root_1367754 coord1 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_1367748_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0032.cover_1367754
#print axioms cover_1367748

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0032
