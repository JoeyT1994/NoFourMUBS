import TaoBundleAssembly0610
import TaoBundleChunkBatch0836
import TaoBundleChunkBatch0837
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0611
def root_8934406 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8934406_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8934406_right_fuel : Nat := 25
def small_8934406_right_count : Nat := 335
def small_8934406_right_encoded : String := "1386AD04045489FD1386ACFC000000030CFD9C090F34D0FE0C9A86F80F878D030280010013D7B10100000000067ECE8512EA590400000002067ECE7D12EA94FC000000030AD3578900000005000000080000000812EA95040000000A0000000213D7ED01067ECE8512EA590400000002067ECE7D00000006000000070000000600000000000000010F87510300000001028001000000000A00000006000000040F350CFE000000040C9A86F80F878D030C9A86FE0F878D090280010013D7B10100000000067ECE8512EA590400000002067ECE7D12EA94FC000000030DE7C9F80E6015030DE7C9FE0E60150900000008000000040E5FD909000000040140010013F5D901000000000569AC451340D50400000002000000080000000700000007000000010E5FD903000000010000000A12EA58FC0DE7C9F8000000070000000A0000000312EA9504067ECE7D12EA94FC000000030DE7C9F8000000070000000A000000070000000213D7ED01067ECE8512EA590400000002067ECE7D12EA94FC000000030DE7C9F8000000070E5FD903000000010DE7C9FE000000060E5FD9090000000400000007000000070000000700000000000000040F875109000000040280010013D7B10100000000067ECE8512EA590400000002067ECE7D12EA94FC000000030DE7C9F80E6015030B4D43FE10804D090140010000000009000000070000000400000007000000010E5FD903000000010B4D43FE10804D09014001000000000913F615010569AC451340D504000000020793F0BD00000009000000070000000700000000000000040000000912EA58FC0DE7C9F8000000070E5FD903000000010B4D43FE10804D090000000700000004000000070000000312EA9504067ECE7D12EA94FC000000030DE7C9F8000000070E5FD903000000010000000A000000070000000213D7ED01067ECE8512EA590400000002067ECE7D12EA94FC000000030DE7C9F8000000070E5FD903000000010B4D43FE10804D09000000070000000400000007000000070000000700000000000000010F875103000000010C9A86FE0F878D09028001000000000A13D7ED01067ECE8512EA590400000002067ECE7D12EA94FC000000030B4D43F800000006000000060000000A0000000600000000000000040F875109000000040280010013D7B10100000000067ECE8512EA590400000002067ECE7D12EA94FC000000030000000A0000000A0000000A13D7ED01067ECE8512EA590400000002067ECE7D12EA94FC000000030B4D43F810804D030B4D43FE10804D0903C0010013A51101000000000000000A0000000600000004108011090000000403C0010013A51101000000000569AC451340D504000000020793F0BD00000009000000070000000713A54D010569AC451340D504000000020000000700000007000000000000000110801103000000010B4D43FE10804D090000000600000004108011090000000403C001000000000A13A54D010569AC451340D5040000000200000006000000050000000012EA58FC0B4D43F810804D030B4D43FE10804D09000000070000000400000007000000011080110300000001000000050000000312EA9504067ECE7D12EA94FC000000030B4D43F810804D030B4D43FE0000000600000007000000010000000A000000050000000200000000138670FC0CFD9C090F34D0FE0C9A86F80F878D0300000008000000010000000A000000040F350CFE000000040C9A86F80F878D030C9A86FE0F878D09000000070000000400000007000000010F875103000000010C9A86FE0F878D090000000A000000040F87510900000004000000050000000300000002"
theorem small_8934406_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8934406_right_root small_8934406_right_fuel small_8934406_right_count small_8934406_right_encoded = true := by
  decide +kernel
theorem small_8934406_right_covered : CoveredBy scale carrier boxes small_8934406_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8934406_right_root small_8934406_right_fuel small_8934406_right_count small_8934406_right_encoded small_8934406_right_checked

theorem cover_8934406 : CoveredBy scale carrier boxes root_8934406 := by
  apply coveredBy_split_literal root_8934406 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0610.root_8934407 small_8934406_right_root coord2 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0610.cover_8934407
  · exact small_8934406_right_covered
#print axioms cover_8934406

def root_8934400 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8934400_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8934400_left_fuel : Nat := 1
def small_8934400_left_count : Nat := 1
def small_8934400_left_encoded : String := "00000001"
theorem small_8934400_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8934400_left_root small_8934400_left_fuel small_8934400_left_count small_8934400_left_encoded = true := by
  decide +kernel
theorem small_8934400_left_covered : CoveredBy scale carrier boxes small_8934400_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8934400_left_root small_8934400_left_fuel small_8934400_left_count small_8934400_left_encoded small_8934400_left_checked

theorem cover_8934400 : CoveredBy scale carrier boxes root_8934400 := by
  apply coveredBy_split_literal root_8934400 small_8934400_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0611.root_8934406 coord1 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_8934400_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0611.cover_8934406
#print axioms cover_8934400

def root_8934206 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8934206_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8934206_left_fuel : Nat := 18
def small_8934206_left_count : Nat := 93
def small_8934206_left_encoded : String := "0F34D0F804548A051386710400000002045489FD1386ACFC000000030CFD9C09000000050F350CFE000000040C9A86FE0F878D09028001000000000800000008000000040F875109000000040280010013D7B101000000000AD3578310D100F8000000080000000110D13CF800000001022A458513E1C50400000002067ECE7D000000050000000813E20104067ECE7D12EA94FC0000000300000005000000070000000213D7ED010AD357830000000510D13CF800000001022A4585000000050000000700000000138670FC0CFD9C090000000800000008000000031386AD04045489FD1386ACFC000000030CFD9C090F34D0FE028001000000000800000007000000040F350CFE000000040C9A86FE0F878D090280010013D7B101000000000AD357830000000710D13CF800000001067ECE8512EA590400000002000000080000000700000007000000040F8751090000000400000007138670FC0CFD9C090000000700000007000000030000000200000001"
theorem small_8934206_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8934206_left_root small_8934206_left_fuel small_8934206_left_count small_8934206_left_encoded = true := by
  decide +kernel
theorem small_8934206_left_covered : CoveredBy scale carrier boxes small_8934206_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8934206_left_root small_8934206_left_fuel small_8934206_left_count small_8934206_left_encoded small_8934206_left_checked

theorem cover_8934206 : CoveredBy scale carrier boxes root_8934206 := by
  apply coveredBy_split_literal root_8934206 small_8934206_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0611.root_8934400 coord1 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_8934206_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0611.cover_8934400
#print axioms cover_8934206

def root_8934200 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8934200_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(14529024), (16243968)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8934200_left_fuel : Nat := 1
def small_8934200_left_count : Nat := 1
def small_8934200_left_encoded : String := "00000000"
theorem small_8934200_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8934200_left_root small_8934200_left_fuel small_8934200_left_count small_8934200_left_encoded = true := by
  decide +kernel
theorem small_8934200_left_covered : CoveredBy scale carrier boxes small_8934200_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8934200_left_root small_8934200_left_fuel small_8934200_left_count small_8934200_left_encoded small_8934200_left_checked

theorem cover_8934200 : CoveredBy scale carrier boxes root_8934200 := by
  apply coveredBy_split_literal root_8934200 small_8934200_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0611.root_8934206 coord0 true (16243968)
  · decide +kernel
  · decide +kernel
  · exact small_8934200_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0611.cover_8934206
#print axioms cover_8934200

def root_8934199 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8934199 : CoveredBy scale carrier boxes root_8934199 := by
  apply coveredBy_split_literal root_8934199 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0611.root_8934200 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3343.root coord0 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0611.cover_8934200
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3343.covered
#print axioms cover_8934199

def root_8934193 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8934193_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8934193_left_fuel : Nat := 1
def small_8934193_left_count : Nat := 1
def small_8934193_left_encoded : String := "00000004"
theorem small_8934193_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8934193_left_root small_8934193_left_fuel small_8934193_left_count small_8934193_left_encoded = true := by
  decide +kernel
theorem small_8934193_left_covered : CoveredBy scale carrier boxes small_8934193_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8934193_left_root small_8934193_left_fuel small_8934193_left_count small_8934193_left_encoded small_8934193_left_checked

theorem cover_8934193 : CoveredBy scale carrier boxes root_8934193 := by
  apply coveredBy_split_literal root_8934193 small_8934193_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0611.root_8934199 coord4 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_8934193_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0611.cover_8934199
#print axioms cover_8934193

def root_8934107 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8934107_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8934107_left_fuel : Nat := 13
def small_8934107_left_count : Nat := 41
def small_8934107_left_encoded : String := "120700FE05000100135D4501000000000CFD9C03000000080F350CF80000000104548A051386710400000002000000081386AD04045489FD1386ACFC0000000304548A09000000051386ACFE000000040C9A86F800000006000000060000000800000002135D81010CFD9C030F34D0F800000008000000010F350CF80000000104548A051386710400000002045489FD0000000500000008000000060000000000000004"
theorem small_8934107_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8934107_left_root small_8934107_left_fuel small_8934107_left_count small_8934107_left_encoded = true := by
  decide +kernel
theorem small_8934107_left_covered : CoveredBy scale carrier boxes small_8934107_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8934107_left_root small_8934107_left_fuel small_8934107_left_count small_8934107_left_encoded small_8934107_left_checked

theorem cover_8934107 : CoveredBy scale carrier boxes root_8934107 := by
  apply coveredBy_split_literal root_8934107 small_8934107_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0611.root_8934193 coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_8934107_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0611.cover_8934193
#print axioms cover_8934107

def root_8934102 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8934102_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8934102_right_fuel : Nat := 1
def small_8934102_right_count : Nat := 1
def small_8934102_right_encoded : String := "00000003"
theorem small_8934102_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8934102_right_root small_8934102_right_fuel small_8934102_right_count small_8934102_right_encoded = true := by
  decide +kernel
theorem small_8934102_right_covered : CoveredBy scale carrier boxes small_8934102_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8934102_right_root small_8934102_right_fuel small_8934102_right_count small_8934102_right_encoded small_8934102_right_checked

theorem cover_8934102 : CoveredBy scale carrier boxes root_8934102 := by
  apply coveredBy_split_literal root_8934102 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0611.root_8934107 small_8934102_right_root coord3 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0611.cover_8934107
  · exact small_8934102_right_covered
#print axioms cover_8934102

def root_8932166 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8932166 : CoveredBy scale carrier boxes root_8932166 := by
  apply coveredBy_split_literal root_8932166 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3341.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0611.root_8934102 coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3341.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0611.cover_8934102
#print axioms cover_8932166

def root_8932160 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8932160_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8932160_left_fuel : Nat := 1
def small_8932160_left_count : Nat := 1
def small_8932160_left_encoded : String := "00000002"
theorem small_8932160_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8932160_left_root small_8932160_left_fuel small_8932160_left_count small_8932160_left_encoded = true := by
  decide +kernel
theorem small_8932160_left_covered : CoveredBy scale carrier boxes small_8932160_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8932160_left_root small_8932160_left_fuel small_8932160_left_count small_8932160_left_encoded small_8932160_left_checked

theorem cover_8932160 : CoveredBy scale carrier boxes root_8932160 := by
  apply coveredBy_split_literal root_8932160 small_8932160_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0611.root_8932166 coord2 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_8932160_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0611.cover_8932166
#print axioms cover_8932160

def root_8932159 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8932159 : CoveredBy scale carrier boxes root_8932159 := by
  apply coveredBy_split_literal root_8932159 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0611.root_8932160 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3344.root coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0611.cover_8932160
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3344.covered
#print axioms cover_8932159

def root_8932153 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8932153_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8932153_left_fuel : Nat := 1
def small_8932153_left_count : Nat := 1
def small_8932153_left_encoded : String := "00000001"
theorem small_8932153_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8932153_left_root small_8932153_left_fuel small_8932153_left_count small_8932153_left_encoded = true := by
  decide +kernel
theorem small_8932153_left_covered : CoveredBy scale carrier boxes small_8932153_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8932153_left_root small_8932153_left_fuel small_8932153_left_count small_8932153_left_encoded small_8932153_left_checked

theorem cover_8932153 : CoveredBy scale carrier boxes root_8932153 := by
  apply coveredBy_split_literal root_8932153 small_8932153_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0611.root_8932159 coord1 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_8932153_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0611.cover_8932159
#print axioms cover_8932153

def root_8931215 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8931215_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8931215_left_fuel : Nat := 22
def small_8931215_left_count : Nat := 441
def small_8931215_left_encoded : String := "120700F808A91305120701040000000208A912FD12073CFC0000000308A913090000000512073CFE0000000405000100135D45010000000004548A03000000051386ACF80000000104548A05000000051386AD040CFD9BFD000000050F34D0FC0CFD9C09000000050F350CFE0000000400000005000000030000000200000005120700FC08A91309120700FE000000080000000412073CFE0000000405000100135D45010000000004548A03000000081386ACF80000000104548A051386710400000002000000081386AD04045489FD1386ACFC000000030CFD9C09000000070F350CFE00000004000000070000000700000002135D810104548A03138670F804548A05000000051386AD04045489FD000000050000000700000002000000011386ACF80000000104548A051386710400000002045489FD00000005000000071386AD04045489FD000000070000000700000002000000000000000312073D0408A912FD12073CFC0000000308A91309120700FE05000100135D45010000000004548A03138670F80CFD9C050000000500000007000000011386ACF8000000010CFD9C050F34D104000000020000000500000006135D810104548A030000000500000006000000000000000412073CFE0000000405000100135D45010000000004548A03138670F80CFD9C050F34D104000000020CFD9BFD000000050F34D0FC0CFD9C09000000050F350CFE000000040C9A86FE0000000700000005000000030F350D040CFD9BFD0F350CFC000000030CFD9C09000000050F350CFE000000040C9A87040F875105000000020C9A86FC0F878CFD0000000300000007000000070F878D0500000005000000020F34D0FC0CFD9C09000000070F350CFE000000040C9A87040F875105000000020C9A86FE00000007000000070F878D0500000007000000020000000300000002000000011386ACF8000000010CFD9C050F34D104000000020CFD9BFD0F350CFC000000030CFD9C09000000050F350CFE00000004000000050F34D0FC0CFD9C09000000070F350CFE000000040C9A86FE0000000700000007000000030F350D040CFD9BFD0F350CFC000000030CFD9C09000000070F350CFE000000040C9A87040F87510500000002000000070F878D0500000007000000020F34D0FC0CFD9C09000000070F350CFE000000040C9A87040F8751050000000200000007000000070000000300000002135D810104548A03138670F80CFD9C050F34D10400000002000000050F350D040CFD9BFD0F350CFC00000003000000050F34D0FC0CFD9C09000000070F350CFE000000040C9A87040F875105000000020C9A86FE0000000700000007000000070000000300000002000000011386ACF8000000010CFD9C050F34D104000000020CFD9BFD000000050F34D0FC0CFD9C09000000050F350CFE0000000400000007000000030F350D040CFD9BFD0F350CFC000000030CFD9C09000000050F350CFE000000040C9A87040F8751050000000200000006000000070F34D0FC0CFD9C09000000060F350CFE000000040C9A87040F875105000000020000000600000007000000030000000200000000120700FC08A91309120700FE000000070000000412073CFE0000000405000100135D45010000000004548A03138670F80CFD9C050F34D10400000002045489FD1386ACFC000000030CFD9C09000000070F350CFE0000000400000007000000070F350D04045489FD1386ACFC000000030CFD9C09000000070F350CFE000000040C9A87040F875105000000020000000700000007138670FC0CFD9C09000000070F350CFE000000040C9A87040F8751050000000200000007000000070000000300000002000000011386ACF8000000010CFD9C050F34D10400000002045489FD1386ACFC0000000300000007000000070F350D04045489FD1386ACFC000000030CFD9C09000000070F350CFE000000040C9A87040F875105000000020000000700000007138670FC0CFD9C09000000070F350CFE00000004000000070000000300000002135D810104548A03138670F80CFD9C050F34D10400000002045489FD1386ACFC0000000300000007000000070F350D04045489FD1386ACFC000000030CFD9C09000000070F350CFE000000040C9A87040F875105000000020C9A86FE000000070000000700000007138670FC0CFD9C09000000070F350CFE000000040C9A87040F8751050000000200000007000000070000000300000002000000011386ACF8000000010CFD9C050F34D10400000002045489FD00000007000000070F350D04045489FD1386ACFC000000030CFD9C09000000070F350CFE000000040C9A87040F875105000000020000000700000007138670FC0CFD9C09000000070F350CFE0000000400000007000000030000000200000000000000030000000200000001"
theorem small_8931215_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8931215_left_root small_8931215_left_fuel small_8931215_left_count small_8931215_left_encoded = true := by
  decide +kernel
theorem small_8931215_left_covered : CoveredBy scale carrier boxes small_8931215_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8931215_left_root small_8931215_left_fuel small_8931215_left_count small_8931215_left_encoded small_8931215_left_checked

theorem cover_8931215 : CoveredBy scale carrier boxes root_8931215 := by
  apply coveredBy_split_literal root_8931215 small_8931215_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0611.root_8932153 coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_8931215_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0611.cover_8932153
#print axioms cover_8931215

def root_8931210 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8931210_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8931210_right_fuel : Nat := 1
def small_8931210_right_count : Nat := 1
def small_8931210_right_encoded : String := "00000004"
theorem small_8931210_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8931210_right_root small_8931210_right_fuel small_8931210_right_count small_8931210_right_encoded = true := by
  decide +kernel
theorem small_8931210_right_covered : CoveredBy scale carrier boxes small_8931210_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8931210_right_root small_8931210_right_fuel small_8931210_right_count small_8931210_right_encoded small_8931210_right_checked

theorem cover_8931210 : CoveredBy scale carrier boxes root_8931210 := by
  apply coveredBy_split_literal root_8931210 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0611.root_8931215 small_8931210_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0611.cover_8931215
  · exact small_8931210_right_covered
#print axioms cover_8931210

def root_8947786 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8947786_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8947786_left_fuel : Nat := 15
def small_8947786_left_count : Nat := 69
def small_8947786_left_encoded : String := "0F34D0F804548A051386710400000002045489FD1386ACFC000000030280010013D7B10100000000078000FE128A7D090AD357830000000610D13CF800000001022A45850000000613E20104067ECE7D000000090000000600000002000000040000000613D7ED01078000FE128A7D090AD357830000000A10D13CF800000001022A45850000000A0000000700000004128A4109000000040000000A00000000138670FC0280010013D7B10100000000078000FE000000070000000600000007000000031386AD04045489FD1386ACFC000000030280010013D7B10100000000078000FE128A7D0900000007000000040000000713D7ED01078000FE000000070000000700000000000000070000000200000001"
theorem small_8947786_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8947786_left_root small_8947786_left_fuel small_8947786_left_count small_8947786_left_encoded = true := by
  decide +kernel
theorem small_8947786_left_covered : CoveredBy scale carrier boxes small_8947786_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8947786_left_root small_8947786_left_fuel small_8947786_left_count small_8947786_left_encoded small_8947786_left_checked

theorem cover_8947786 : CoveredBy scale carrier boxes root_8947786 := by
  apply coveredBy_split_literal root_8947786 small_8947786_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3346.root coord1 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_8947786_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3346.covered
#print axioms cover_8947786

def root_8947781 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8947781_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8947781_right_fuel : Nat := 1
def small_8947781_right_count : Nat := 1
def small_8947781_right_encoded : String := "00000004"
theorem small_8947781_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8947781_right_root small_8947781_right_fuel small_8947781_right_count small_8947781_right_encoded = true := by
  decide +kernel
theorem small_8947781_right_covered : CoveredBy scale carrier boxes small_8947781_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8947781_right_root small_8947781_right_fuel small_8947781_right_count small_8947781_right_encoded small_8947781_right_checked

theorem cover_8947781 : CoveredBy scale carrier boxes root_8947781 := by
  apply coveredBy_split_literal root_8947781 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0611.root_8947786 small_8947781_right_root coord4 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0611.cover_8947786
  · exact small_8947781_right_covered
#print axioms cover_8947781

def root_8947780 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8947780_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8947780_right_fuel : Nat := 10
def small_8947780_right_count : Nat := 49
def small_8947780_right_encoded : String := "135D4509000000040CFD9C030F34D0F804548A051386710400000002045489FD00000006000000061386AD04045489FD000000090000000700000002000000010F350CF80000000104548A051386710400000002045489FD1386ACFC000000030C9A86F8000000090F8751030000000100000009138670FC0C9A86F80F878D0300000006000000010F8751030000000100000005000000031386AD04045489FD1386ACFC000000030C9A86F8000000090F87510300000001000000050000000500000002"
theorem small_8947780_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8947780_right_root small_8947780_right_fuel small_8947780_right_count small_8947780_right_encoded = true := by
  decide +kernel
theorem small_8947780_right_covered : CoveredBy scale carrier boxes small_8947780_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8947780_right_root small_8947780_right_fuel small_8947780_right_count small_8947780_right_encoded small_8947780_right_checked

theorem cover_8947780 : CoveredBy scale carrier boxes root_8947780 := by
  apply coveredBy_split_literal root_8947780 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0611.root_8947781 small_8947780_right_root coord4 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0611.cover_8947781
  · exact small_8947780_right_covered
#print axioms cover_8947780

def root_8947774 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8947774_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(14529024), (16243968)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8947774_left_fuel : Nat := 1
def small_8947774_left_count : Nat := 1
def small_8947774_left_encoded : String := "00000000"
theorem small_8947774_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8947774_left_root small_8947774_left_fuel small_8947774_left_count small_8947774_left_encoded = true := by
  decide +kernel
theorem small_8947774_left_covered : CoveredBy scale carrier boxes small_8947774_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8947774_left_root small_8947774_left_fuel small_8947774_left_count small_8947774_left_encoded small_8947774_left_checked

theorem cover_8947774 : CoveredBy scale carrier boxes root_8947774 := by
  apply coveredBy_split_literal root_8947774 small_8947774_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0611.root_8947780 coord0 true (16243968)
  · decide +kernel
  · decide +kernel
  · exact small_8947774_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0611.cover_8947780
#print axioms cover_8947774

def root_8947773 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8947773 : CoveredBy scale carrier boxes root_8947773 := by
  apply coveredBy_split_literal root_8947773 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0611.root_8947774 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3347.root coord0 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0611.cover_8947774
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3347.covered
#print axioms cover_8947773

def root_8947768 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8947768_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8947768_right_fuel : Nat := 1
def small_8947768_right_count : Nat := 1
def small_8947768_right_encoded : String := "00000003"
theorem small_8947768_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8947768_right_root small_8947768_right_fuel small_8947768_right_count small_8947768_right_encoded = true := by
  decide +kernel
theorem small_8947768_right_covered : CoveredBy scale carrier boxes small_8947768_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8947768_right_root small_8947768_right_fuel small_8947768_right_count small_8947768_right_encoded small_8947768_right_checked

theorem cover_8947768 : CoveredBy scale carrier boxes root_8947768 := by
  apply coveredBy_split_literal root_8947768 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0611.root_8947773 small_8947768_right_root coord3 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0611.cover_8947773
  · exact small_8947768_right_covered
#print axioms cover_8947768

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0611
