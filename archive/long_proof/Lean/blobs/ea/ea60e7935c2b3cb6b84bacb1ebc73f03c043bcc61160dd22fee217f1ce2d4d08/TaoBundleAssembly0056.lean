import TaoBundleAssembly0054
import TaoBundleAssembly0055
import TaoBundleChunkBatch0215
import TaoBundleChunkBatch0220
import TaoBundleChunkBatch0221
import TaoBundleChunkBatch0222
import TaoBundleChunkBatch0223
import TaoBundleChunkBatch0224
import TaoBundleChunkBatch0225
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0056
def root_2299404 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2299404_right_root : ZRayBox := fun j => (#[⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2299404_right_fuel : Nat := 27
def small_2299404_right_count : Nat := 315
def small_2299404_right_encoded : String := "135D44F7050000FC135D80FD000000030CFD9C030F34D1020000000104548A051386710400000002000000051386AD040CFD9C090F34D10800000004000000050F350D080C9A87080F87510900000004028000F613D7ECF700000000078000FC128A7CFD000000030AD3578310D1010200000001000000050000000600000005000000050000000500000004000000020F350D0204548A0513867104000000020CFD9C090F34D10800000004000000050F350D080C9A87020F875103000000010C9A87080F87510900000004028000F613D7ECF700000000078000FC128A7CFD00000003022A458513E1C504000000020B4D440210801103000000010B4D44080000000610804D0900000006000000040000000600000006128A40FD022A458513E1C504000000020B4D440210801103000000010B4D44080000000810804D09000000080000000410804D030B4D4408108011090000000400000008000000050000000113E201040B4D440210801103000000010B4D440810801109000000040000000610804D0903C000F613A54CF700000000064000FC0000000700000005000000050000000410804D030B4D4408000000060000000500000001000000020000000313D7B0F7078000FC128A7CFD00000003022A458513E1C50400000002000000060000000600000005000000000F878D09028000F613D7ECF700000000078000FC128A7CFD00000003022A458513E1C504000000020B4D440210801103000000010DE7CA080E5FD90900000004000000070000000710804D030DE7CA080E5FD9090000000403C000F613A54CF70000000008C000FC0000000700000005000000050000000500000001000000070000000500000005000000040F878D030C9A87080F87510900000004028000F613D7ECF700000000078000FC128A7CFD00000003022A458513E1C504000000020DE7CA020E5FD9030000000100000006000000060000000600000005000000050000000500000001000000041386AD040CFD9C090F34D10800000004000000070F350D080C9A87020F875103000000010C9A87080F87510900000004028000F613D7ECF700000000078000FC00000006128A40FD067ECE8512EA5904000000020B4D440210801103000000010B4D4408000000060000000710804D030B4D4408000000060000000500000001000000070000000313D7B0F700000007000000000F878D0900000007000000040F878D030C9A87080F87510900000004028000F613D7ECF700000000078000FC00000006128A40FD067ECE8512EA5904000000020000000512EA950400000007000000020000000313D7B0F7078000FC0000000600000005000000000F878D09028000F613D7ECF700000000078000FC0000000700000005000000050000000400000001000000040000000200000001135D44FD0CFD9C030F34D10200000001000000050F350D0204548A051386710400000002000000051386AD040CFD9C090F34D10800000004000000050F350D080C9A87020F875103000000010C9A87080F87510900000004028000F613D7ECF700000000028000FC13D7ECFD00000003067ECE8512EA5904000000020B4D440210801103000000010B4D4408108011090000000403C000F60000000900000005000000050000000512EA95040B4D4402000000070000000500000002000000050000000500000005000000050000000400000002000000010000000300000000"
theorem small_2299404_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2299404_right_root small_2299404_right_fuel small_2299404_right_count small_2299404_right_encoded = true := by
  decide +kernel
theorem small_2299404_right_covered : CoveredBy scale carrier boxes small_2299404_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2299404_right_root small_2299404_right_fuel small_2299404_right_count small_2299404_right_encoded small_2299404_right_checked

theorem cover_2299404 : CoveredBy scale carrier boxes root_2299404 := by
  apply coveredBy_split_literal root_2299404 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0055.root_2299405 small_2299404_right_root coord0 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0055.cover_2299405
  · exact small_2299404_right_covered
#print axioms cover_2299404

def root_2299399 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2299399_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2299399_right_fuel : Nat := 1
def small_2299399_right_count : Nat := 1
def small_2299399_right_encoded : String := "00000004"
theorem small_2299399_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2299399_right_root small_2299399_right_fuel small_2299399_right_count small_2299399_right_encoded = true := by
  decide +kernel
theorem small_2299399_right_covered : CoveredBy scale carrier boxes small_2299399_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2299399_right_root small_2299399_right_fuel small_2299399_right_count small_2299399_right_encoded small_2299399_right_checked

theorem cover_2299399 : CoveredBy scale carrier boxes root_2299399 := by
  apply coveredBy_split_literal root_2299399 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0056.root_2299404 small_2299399_right_root coord4 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0056.cover_2299404
  · exact small_2299399_right_covered
#print axioms cover_2299399

def root_2299277 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2299277_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2299277_left_fuel : Nat := 21
def small_2299277_left_count : Nat := 57
def small_2299277_left_encoded : String := "1207010800000004050000F6135D80F700000000050000FC135D80FD000000030CFD9C030F34D10200000001000000050F350D0204548A05138671040000000204548A091386710800000004000000051386AD080C9A87020F87510300000001078000F6128A7CF700000000078000FC128A7CFD00000003022A458513E1C50400000002067ECE89000000070000000700000007000000050000000500000005000000041386AD0404548A091386710800000004000000071386AD080C9A8702000000070F878D0300000007000000010000000400000002000000010000000500000005"
theorem small_2299277_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2299277_left_root small_2299277_left_fuel small_2299277_left_count small_2299277_left_encoded = true := by
  decide +kernel
theorem small_2299277_left_covered : CoveredBy scale carrier boxes small_2299277_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2299277_left_root small_2299277_left_fuel small_2299277_left_count small_2299277_left_encoded small_2299277_left_checked

theorem cover_2299277 : CoveredBy scale carrier boxes root_2299277 := by
  apply coveredBy_split_literal root_2299277 small_2299277_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0056.root_2299399 coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_2299277_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0056.cover_2299399
#print axioms cover_2299277

def root_2299271 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2299271_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2299271_left_fuel : Nat := 1
def small_2299271_left_count : Nat := 1
def small_2299271_left_encoded : String := "00000002"
theorem small_2299271_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2299271_left_root small_2299271_left_fuel small_2299271_left_count small_2299271_left_encoded = true := by
  decide +kernel
theorem small_2299271_left_covered : CoveredBy scale carrier boxes small_2299271_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2299271_left_root small_2299271_left_fuel small_2299271_left_count small_2299271_left_encoded small_2299271_left_checked

theorem cover_2299271 : CoveredBy scale carrier boxes root_2299271 := by
  apply coveredBy_split_literal root_2299271 small_2299271_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0056.root_2299277 coord2 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_2299271_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0056.cover_2299277
#print axioms cover_2299271

def root_2299270 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2299270_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2299270_right_fuel : Nat := 25
def small_2299270_right_count : Nat := 273
def small_2299270_right_encoded : String := "12073D0408A913091207010800000004050000F6135D80F700000000050000FC135D80FD000000030CFD9C03000000070F350D020CFD9C050F34D10400000002000000070000000700000001135D44FD0CFD9C030F34D10200000001000000080F350D020CFD9C050F34D104000000020000000A000000070000000100000003135D44F7050000FC00000007000000070000000012073D08050000F6135D80F700000000050000FC135D80FD000000030CFD9C030F34D102000000010CFD9C050F34D104000000020CFD9C090000000A0F350D080C9A87080000000A0F878D090000000A00000004000000040F350D040000000A000000020F350D020CFD9C050F34D104000000020CFD9C090F34D108000000040C9A8702000000070F878D0300000007000000010F350D080C9A87020F875103000000010C9A87080F87510900000004078000F6128A7CF700000000078000FC128A7CFD000000030AD3578510D10104000000020B4D44020000000500000006000000070000000A128A40F7078000FC00000007128A40FD0AD3578510D1010400000002000000070000000700000003000000000F878D09078000F6128A7CF700000000078000FC00000007128A40FD000000090000000300000007000000040F878D030C9A87080F87510900000004078000F60000000A128A40F7078000FC128A7CFD00000003000000060000000A000000000F878D09078000F6128A7CF7000000000000000A000000070000000400000001000000040F350D040CFD9C090F34D10800000004000000070F350D080C9A87020F875103000000010C9A8704000000070F878D050C9A87080000000A00000007000000020F878D030000000A00000001000000040000000200000001135D44FD0CFD9C030F34D102000000010000000A0F350D020CFD9C050F34D104000000020CFD9C090F34D108000000040C9A87020F875103000000010000000A0000000A0F350D080C9A87020F875103000000010C9A87080000000A0F878D090000000A000000040000000A000000040F350D040000000A000000020000000100000003135D44F7050000FC135D80FD000000030CFD9C030F34D102000000010CFD9C050F34D104000000020CFD9C09000000070F350D080C9A87080F87510900000004000000070000000700000004000000070F350D020CFD9C050F34D104000000020CFD9C09000000070F350D080C9A8702000000070F878D030000000700000001000000040F350D04000000070000000200000001135D44FD0CFD9C030F34D102000000010CFD9C050F34D10400000002000000050000000A0F350D020CFD9C050F34D104000000020CFD9C090F34D10800000004000000050F350D080C9A87020F875103000000010C9A87080F87510900000004028000F60000000A00000007000000070F878D030000000A00000001000000040F350D040CFD9C090000000700000007000000020000000100000003000000000000000400000002"
theorem small_2299270_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2299270_right_root small_2299270_right_fuel small_2299270_right_count small_2299270_right_encoded = true := by
  decide +kernel
theorem small_2299270_right_covered : CoveredBy scale carrier boxes small_2299270_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2299270_right_root small_2299270_right_fuel small_2299270_right_count small_2299270_right_encoded small_2299270_right_checked

theorem cover_2299270 : CoveredBy scale carrier boxes root_2299270 := by
  apply coveredBy_split_literal root_2299270 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0056.root_2299271 small_2299270_right_root coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0056.cover_2299271
  · exact small_2299270_right_covered
#print axioms cover_2299270

def root_2299265 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2299265_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2299265_right_fuel : Nat := 1
def small_2299265_right_count : Nat := 1
def small_2299265_right_encoded : String := "00000001"
theorem small_2299265_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2299265_right_root small_2299265_right_fuel small_2299265_right_count small_2299265_right_encoded = true := by
  decide +kernel
theorem small_2299265_right_covered : CoveredBy scale carrier boxes small_2299265_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2299265_right_root small_2299265_right_fuel small_2299265_right_count small_2299265_right_encoded small_2299265_right_checked

theorem cover_2299265 : CoveredBy scale carrier boxes root_2299265 := by
  apply coveredBy_split_literal root_2299265 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0056.root_2299270 small_2299265_right_root coord1 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0056.cover_2299270
  · exact small_2299265_right_covered
#print axioms cover_2299265

def root_2299013 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2299013_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2299013_left_fuel : Nat := 23
def small_2299013_left_count : Nat := 119
def small_2299013_left_encoded : String := "120701020000000108A91305120701040000000208A9130912070108000000040000000512073D08050000F6135D80F700000000050000FC135D80FD0000000304548A03138671020000000104548A051386710400000002000000051386AD040CFD9C090000000A0F350D080000000A00000004000000021386AD0204548A0513867104000000020CFD9C090F34D10800000004000000050F350D080C9A87080F87510900000004078000F6128A7CF700000000078000FC128A7CFD00000003067ECE830000000A0000000A000000050000000500000005000000041386AD040CFD9C090000000A0F350D080C9A87080000000A0F878D090000000A0000000400000004000000020000000100000005000000050000000412073D0408A913091207010800000004050000F6000000080000000512073D08050000F6135D80F700000000050000FC135D80FD0000000304548A030000000A1386AD020CFD9C050F34D104000000020000000A00000008000000010000000A135D44F7050000FC135D80FD0000000304548A0313867102000000010CFD9C050F34D1040000000200000005000000071386AD020CFD9C050F34D104000000020CFD9C09000000070000000700000007000000010000000A000000000000000400000002"
theorem small_2299013_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2299013_left_root small_2299013_left_fuel small_2299013_left_count small_2299013_left_encoded = true := by
  decide +kernel
theorem small_2299013_left_covered : CoveredBy scale carrier boxes small_2299013_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2299013_left_root small_2299013_left_fuel small_2299013_left_count small_2299013_left_encoded small_2299013_left_checked

theorem cover_2299013 : CoveredBy scale carrier boxes root_2299013 := by
  apply coveredBy_split_literal root_2299013 small_2299013_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0056.root_2299265 coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_2299013_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0056.cover_2299265
#print axioms cover_2299013

def root_2299008 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2299008_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2299008_right_fuel : Nat := 1
def small_2299008_right_count : Nat := 1
def small_2299008_right_encoded : String := "00000004"
theorem small_2299008_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2299008_right_root small_2299008_right_fuel small_2299008_right_count small_2299008_right_encoded = true := by
  decide +kernel
theorem small_2299008_right_covered : CoveredBy scale carrier boxes small_2299008_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2299008_right_root small_2299008_right_fuel small_2299008_right_count small_2299008_right_encoded small_2299008_right_checked

theorem cover_2299008 : CoveredBy scale carrier boxes root_2299008 := by
  apply coveredBy_split_literal root_2299008 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0056.root_2299013 small_2299008_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0056.cover_2299013
  · exact small_2299008_right_covered
#print axioms cover_2299008

def root_2296830 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2296830 : CoveredBy scale carrier boxes root_2296830 := by
  apply coveredBy_split_literal root_2296830 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0880.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0056.root_2299008 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0880.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0056.cover_2299008
#print axioms cover_2296830

def root_2296825 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2296825_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2296825_right_fuel : Nat := 1
def small_2296825_right_count : Nat := 1
def small_2296825_right_encoded : String := "00000003"
theorem small_2296825_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2296825_right_root small_2296825_right_fuel small_2296825_right_count small_2296825_right_encoded = true := by
  decide +kernel
theorem small_2296825_right_covered : CoveredBy scale carrier boxes small_2296825_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2296825_right_root small_2296825_right_fuel small_2296825_right_count small_2296825_right_encoded small_2296825_right_checked

theorem cover_2296825 : CoveredBy scale carrier boxes root_2296825 := by
  apply coveredBy_split_literal root_2296825 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0056.root_2296830 small_2296825_right_root coord3 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0056.cover_2296830
  · exact small_2296825_right_covered
#print axioms cover_2296825

def root_2291923 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2291923 : CoveredBy scale carrier boxes root_2291923 := by
  apply coveredBy_split_literal root_2291923 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0055.root_2291924 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0056.root_2296825 coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0055.cover_2291924
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0056.cover_2296825
#print axioms cover_2291923

def root_2291918 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2291918_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2291918_right_fuel : Nat := 1
def small_2291918_right_count : Nat := 1
def small_2291918_right_encoded : String := "00000002"
theorem small_2291918_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2291918_right_root small_2291918_right_fuel small_2291918_right_count small_2291918_right_encoded = true := by
  decide +kernel
theorem small_2291918_right_covered : CoveredBy scale carrier boxes small_2291918_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2291918_right_root small_2291918_right_fuel small_2291918_right_count small_2291918_right_encoded small_2291918_right_checked

theorem cover_2291918 : CoveredBy scale carrier boxes root_2291918 := by
  apply coveredBy_split_literal root_2291918 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0056.root_2291923 small_2291918_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0056.cover_2291923
  · exact small_2291918_right_covered
#print axioms cover_2291918

def root_2291452 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2291452_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2291452_left_fuel : Nat := 19
def small_2291452_left_count : Nat := 217
def small_2291452_left_encoded : String := "1151E905000000020A0000FC115224FD000000030A0001081151E9090000000408A91303120701020000000108A912FD12073CFC00000003050000F6135D80F70000000005000104000000050000000A135D44F7050001040000000A135D81050500010800000006135D810904548A030000000A00000006000000040000000200000000120700FC000000060000000312073D0208A912FD12073CFC00000003050000F6135D80F70000000005000104135D4505000000020500010800000005135D81090000000500000004135D81050500010800000005135D81090CFD9C030F34D102000000010CFD9BFD00000005000000060F350D020CFD9BFD0000000500000006000000010000000400000002135D44F705000104135D4505000000020500010800000005135D81090CFD9C030F34D10200000001000000060000000600000004135D81050500010800000006000000070000000200000000120700FC0000000600000003000000011152250908A91303120701020000000108A912FD00000008120700FC000000080000000312073D0208A912FD12073CFC0000000308A913090000000712073D08050000F6135D80F70000000005000104135D4505000000020CFD9C030F34D10200000001000000080F350D020000000700000001135D81050CFD9C03000000070F350D02000000070000000100000002135D44F705000104135D4505000000020CFD9C030F34D102000000010000000800000007000000070000000000000004120700FC08A913090000000712073D08050000F6135D80F70000000005000104135D4505000000020000000700000007135D44F705000104135D450500000002000000070000000700000000000000040000000300000001000000041151E8FD0A0001081151E9090000000408A9130312070102000000010000000A12073D02050000F60000000A135D44F7050001040000000A0000000A00000000000000011152250908A9130312070102000000010000000A12073D0208A9130912070108000000040000000712073D08050000F6135D80F70000000005000104135D4505000000020000000A135D8105050000FC135D80FD000000030CFD9C03000000070F350D0200000007000000010000000A00000002135D44F70500010400000007000000070000000000000004000000010000000400000003"
theorem small_2291452_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2291452_left_root small_2291452_left_fuel small_2291452_left_count small_2291452_left_encoded = true := by
  decide +kernel
theorem small_2291452_left_covered : CoveredBy scale carrier boxes small_2291452_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2291452_left_root small_2291452_left_fuel small_2291452_left_count small_2291452_left_encoded small_2291452_left_checked

theorem cover_2291452 : CoveredBy scale carrier boxes root_2291452 := by
  apply coveredBy_split_literal root_2291452 small_2291452_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0056.root_2291918 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_2291452_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0056.cover_2291918
#print axioms cover_2291452

def root_2291447 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2291447_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2291447_right_fuel : Nat := 1
def small_2291447_right_count : Nat := 1
def small_2291447_right_encoded : String := "00000001"
theorem small_2291447_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2291447_right_root small_2291447_right_fuel small_2291447_right_count small_2291447_right_encoded = true := by
  decide +kernel
theorem small_2291447_right_covered : CoveredBy scale carrier boxes small_2291447_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2291447_right_root small_2291447_right_fuel small_2291447_right_count small_2291447_right_encoded small_2291447_right_checked

theorem cover_2291447 : CoveredBy scale carrier boxes root_2291447 := by
  apply coveredBy_split_literal root_2291447 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0056.root_2291452 small_2291447_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0056.cover_2291452
  · exact small_2291447_right_covered
#print axioms cover_2291447

def root_2287001 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2287001 : CoveredBy scale carrier boxes root_2287001 := by
  apply coveredBy_split_literal root_2287001 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0055.root_2287002 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0056.root_2291447 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0055.cover_2287002
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0056.cover_2291447
#print axioms cover_2287001

def root_2286996 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2286996_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2286996_right_fuel : Nat := 1
def small_2286996_right_count : Nat := 1
def small_2286996_right_encoded : String := "00000000"
theorem small_2286996_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2286996_right_root small_2286996_right_fuel small_2286996_right_count small_2286996_right_encoded = true := by
  decide +kernel
theorem small_2286996_right_covered : CoveredBy scale carrier boxes small_2286996_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2286996_right_root small_2286996_right_fuel small_2286996_right_count small_2286996_right_encoded small_2286996_right_checked

theorem cover_2286996 : CoveredBy scale carrier boxes root_2286996 := by
  apply coveredBy_split_literal root_2286996 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0056.root_2287001 small_2286996_right_root coord0 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0056.cover_2287001
  · exact small_2286996_right_covered
#print axioms cover_2286996

def root_2264304 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2264304 : CoveredBy scale carrier boxes root_2264304 := by
  apply coveredBy_split_literal root_2264304 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0055.root_2264305 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0056.root_2286996 coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0055.cover_2264305
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0056.cover_2286996
#print axioms cover_2264304

def root_2234414 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2234414 : CoveredBy scale carrier boxes root_2234414 := by
  apply coveredBy_split_literal root_2234414 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0054.root_2234415 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0056.root_2264304 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0054.cover_2234415
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0056.cover_2264304
#print axioms cover_2234414

def root_2231374 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2231374 : CoveredBy scale carrier boxes root_2231374 := by
  apply coveredBy_split_literal root_2231374 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0860.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0056.root_2234414 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0860.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0056.cover_2234414
#print axioms cover_2231374

def root_2310398 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2310398 : CoveredBy scale carrier boxes root_2310398 := by
  apply coveredBy_split_literal root_2310398 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0884.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0885.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0884.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0885.covered
#print axioms cover_2310398

def root_2320430 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2320430_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2320430_left_fuel : Nat := 24
def small_2320430_left_count : Nat := 419
def small_2320430_left_encoded : String := "1151E9090000000408A912F712073CF60000000008A91303120701020000000108A91305120701040000000208A91307120700FC00000006000000030000000612073D0408A91307120700FC0000000600000003000000060000000212073D0208A91305120701040000000208A91307120700FC00000006000000030000000612073D0408A91307120700FC000000060000000312073CFC000000030500010800000006135D81090CFD9BF7000000060F34D0F60CFD9C03000000070000000600000000000000040000000200000001120700F608A91303120701020000000108A91305120701040000000208A91307120700FC0500010800000006135D8109045489F700000006138670F604548A03000000090000000600000000000000040000000312073CFC000000030500010800000006135D8109000000090000000412073D0408A91307120700FC05000108135D45090000000400000006135D8109045489F71386ACF60000000004548A0313867102000000010000000600000006138670F604548A030000000A1386AD020CFD9C050F34D10400000002000000060000000A0000000100000000000000040000000312073CFC0000000305000108135D450900000004045489F700000006138670F604548A030000000A0000000600000000135D8109045489F71386ACF60000000004548A0313867102000000010CFD9C0500000006000000061386AD020CFD9C050F34D10400000002000000060000000600000001138670F604548A0313867102000000010CFD9C05000000090F350D040CFD9C070000000A00000006000000021386AD020CFD9C050F34D10400000002000000060F350D040CFD9C070F34D0FC000000060000000300000006000000020000000100000000000000040000000212073D0208A91305120701040000000208A91307120700FC05000108135D45090000000400000006135D8109045489F71386ACF6000000000CFD9C030F34D102000000010000000600000006138670F60CFD9C030F34D1020000000104548A0500000006000000060F350D0204548A05138671040000000204548A07138670FC0000000600000003000000061386AD0404548A07138670FC000000060000000300000006000000020000000100000000000000040000000312073CFC0000000305000108135D450900000004045489F700000006138670F60CFD9C030F34D10200000001000000060000000600000000135D8109045489F71386ACF6000000000CFD9C030F34D10200000001000000060F350D0204548A05000000090000000600000001138670F60CFD9C030F34D10200000001000000090F350D0204548A0513867104000000020CFD9C070F34D0FC0000000600000003000000061386AD040CFD9C070F34D0FC0000000600000003000000060000000200000001000000000000000412073D0408A91307120700FC05000108135D450900000004045489F700000006138670F60CFD9C030F34D10200000001000000060000000600000000135D8109045489F71386ACF6000000000CFD9C030F34D10200000001000000060F350D020CFD9C050F34D10400000002000000060000000600000001138670F60CFD9C030F34D102000000010CFD9C050F34D10400000002000000060F350D0404548A070000000A00000006000000020F350D020CFD9C050F34D1040000000204548A07138670FC0000000600000003000000060F350D0404548A07138670FC0C9A87020F875103000000010C9A87040F87510500000002000000060000000600000006000000031386ACFC000000030C9A87020000000700000006000000020000000100000000000000040000000312073CFC0000000305000108135D450900000004045489F71386ACF6000000000CFD9C030F34D102000000010000000600000006138670F60CFD9C030F34D102000000010CFD9C0500000006000000060F350D020CFD9C050F34D1040000000200000006000000050000000100000000135D8109045489F71386ACF6000000000CFD9C030F34D102000000010CFD9C050F34D1040000000200000006000000060F350D020CFD9C050F34D10400000002000000060000000700000001138670F60CFD9C030F34D102000000010CFD9C050F34D104000000020CFD9C070F34D0FC0000000600000003000000060F350D040CFD9C070F34D0FC000000060000000300000005000000020F350D020CFD9C050F34D104000000020CFD9C070F34D0FC00000006000000030000000500000007000000010000000000000004000000020000000100000000"
theorem small_2320430_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2320430_left_root small_2320430_left_fuel small_2320430_left_count small_2320430_left_encoded = true := by
  decide +kernel
theorem small_2320430_left_covered : CoveredBy scale carrier boxes small_2320430_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2320430_left_root small_2320430_left_fuel small_2320430_left_count small_2320430_left_encoded small_2320430_left_checked

theorem cover_2320430 : CoveredBy scale carrier boxes root_2320430 := by
  apply coveredBy_split_literal root_2320430 small_2320430_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0889.root coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_2320430_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0889.covered
#print axioms cover_2320430

def root_2320425 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2320425_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2320425_right_fuel : Nat := 1
def small_2320425_right_count : Nat := 1
def small_2320425_right_encoded : String := "00000003"
theorem small_2320425_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2320425_right_root small_2320425_right_fuel small_2320425_right_count small_2320425_right_encoded = true := by
  decide +kernel
theorem small_2320425_right_covered : CoveredBy scale carrier boxes small_2320425_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2320425_right_root small_2320425_right_fuel small_2320425_right_count small_2320425_right_encoded small_2320425_right_checked

theorem cover_2320425 : CoveredBy scale carrier boxes root_2320425 := by
  apply coveredBy_split_literal root_2320425 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0056.root_2320430 small_2320425_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0056.cover_2320430
  · exact small_2320425_right_covered
#print axioms cover_2320425

def root_2320424 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2320424_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2320424_right_fuel : Nat := 17
def small_2320424_right_count : Nat := 175
def small_2320424_right_encoded : String := "1151E907000000030A0001081151E9090000000408A912F712073CF60000000008A91303120701020000000108A913051207010400000002000000060000000712073D0208A913051207010400000002050000FC00000006135D45070000000305000108000000060000000712073D04050000FC00000007000000070000000200000001120700F608A91303120701020000000108A913051207010400000002050000FC000000060000000612073D04050000FC135D810705000108135D450900000004000000060000000700000003000000070000000212073D0208A913051207010400000002050000FC135D810705000108135D45090000000400000006135D8109045489F71386ACF6000000000CFD9C030000000600000006138670F60CFD9C030000000900000005000000000000000400000003135D45070000000305000108135D450900000004045489F700000006138670F60CFD9C03000000060000000500000000135D8109045489F700000007000000050000000412073D04050000FC135D810705000108135D450900000004045489F700000007000000050000000700000003135D45070000000305000108135D45090000000400000005000000050000000200000001000000001152250908A912F712073CF60000000008A91303120701020000000108A913051207010400000002000000070000000712073D0208A91305120701040000000208A91309000000070000000712073D04000000070000000200000001120700F608A91303120701020000000108A91305120701040000000208A9130900000007000000070000000712073D0208A91305120701040000000208A9130912070108000000040000000712073D08050000FC135D8107045489F7000000070000000700000003135D450700000003000000070000000412073D040000000700000002000000010000000000000004"
theorem small_2320424_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2320424_right_root small_2320424_right_fuel small_2320424_right_count small_2320424_right_encoded = true := by
  decide +kernel
theorem small_2320424_right_covered : CoveredBy scale carrier boxes small_2320424_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2320424_right_root small_2320424_right_fuel small_2320424_right_count small_2320424_right_encoded small_2320424_right_checked

theorem cover_2320424 : CoveredBy scale carrier boxes root_2320424 := by
  apply coveredBy_split_literal root_2320424 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0056.root_2320425 small_2320424_right_root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0056.cover_2320425
  · exact small_2320424_right_covered
#print axioms cover_2320424

def root_2320419 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2320419_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2320419_right_fuel : Nat := 1
def small_2320419_right_count : Nat := 1
def small_2320419_right_encoded : String := "00000002"
theorem small_2320419_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2320419_right_root small_2320419_right_fuel small_2320419_right_count small_2320419_right_encoded = true := by
  decide +kernel
theorem small_2320419_right_covered : CoveredBy scale carrier boxes small_2320419_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2320419_right_root small_2320419_right_fuel small_2320419_right_count small_2320419_right_encoded small_2320419_right_checked

theorem cover_2320419 : CoveredBy scale carrier boxes root_2320419 := by
  apply coveredBy_split_literal root_2320419 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0056.root_2320424 small_2320419_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0056.cover_2320424
  · exact small_2320419_right_covered
#print axioms cover_2320419

def root_2318615 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2318615 : CoveredBy scale carrier boxes root_2318615 := by
  apply coveredBy_split_literal root_2318615 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0888.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0056.root_2320419 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0888.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0056.cover_2320419
#print axioms cover_2318615

def root_2318610 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2318610_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2318610_right_fuel : Nat := 1
def small_2318610_right_count : Nat := 1
def small_2318610_right_encoded : String := "00000001"
theorem small_2318610_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2318610_right_root small_2318610_right_fuel small_2318610_right_count small_2318610_right_encoded = true := by
  decide +kernel
theorem small_2318610_right_covered : CoveredBy scale carrier boxes small_2318610_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2318610_right_root small_2318610_right_fuel small_2318610_right_count small_2318610_right_encoded small_2318610_right_checked

theorem cover_2318610 : CoveredBy scale carrier boxes root_2318610 := by
  apply coveredBy_split_literal root_2318610 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0056.root_2318615 small_2318610_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0056.cover_2318615
  · exact small_2318610_right_covered
#print axioms cover_2318610

def root_2316814 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2316814 : CoveredBy scale carrier boxes root_2316814 := by
  apply coveredBy_split_literal root_2316814 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0887.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0056.root_2318610 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0887.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0056.cover_2318610
#print axioms cover_2316814

def root_2316808 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2316808_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2316808_left_fuel : Nat := 1
def small_2316808_left_count : Nat := 1
def small_2316808_left_encoded : String := "00000000"
theorem small_2316808_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2316808_left_root small_2316808_left_fuel small_2316808_left_count small_2316808_left_encoded = true := by
  decide +kernel
theorem small_2316808_left_covered : CoveredBy scale carrier boxes small_2316808_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2316808_left_root small_2316808_left_fuel small_2316808_left_count small_2316808_left_encoded small_2316808_left_checked

theorem cover_2316808 : CoveredBy scale carrier boxes root_2316808 := by
  apply coveredBy_split_literal root_2316808 small_2316808_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0056.root_2316814 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_2316808_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0056.cover_2316814
#print axioms cover_2316808

def root_2316807 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2316807_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2316807_right_fuel : Nat := 24
def small_2316807_right_count : Nat := 303
def small_2316807_right_encoded : String := "1151E8F70A0001021151E903000000010A0001041151E905000000020A0000FC115225070A000108000000071152250908A913070000000712073CFC0000000308A9130912070108000000040000000A0000000700000004000000031151E907000000030A0001081151E90900000004000000051152250908A9130912070108000000040000000A0000000700000004115225050A0000FC115225070A0001081151E9090000000408A91305120701040000000200000006000000071152250908A91305120701040000000208A91307120700FC00000007000000030000000712073D0408A913070000000712073CFC0000000308A91309120701080000000400000007000000070000000200000004000000031151E907000000030A0001081151E90900000004000000071152250908A913050000000A12073D0408A9130912070108000000040000000A12073D08050000F6000000070000000700000004000000020000000400000002115225030A0001041151E905000000020A0000FC115225070A0001081151E9090000000408A9130312070102000000010000000612073D0208A91307120700FC000000060000000300000006000000011152250908A91303120701020000000108A91307120700FC08A913090000000812073D08050000F60000000800000009000000040000000312073CFC0000000308A9130912070108000000040000000912073D08050000F6135D80F70000000005000104135D45050000000204548A0313867102000000010CFD9C07000000080F350CFC00000003000000070000000700000007135D44F705000104135D45050000000204548A0313867102000000010CFD9C070F34D0FC0000000600000003000000060000000900000006000000000000000412073D0208A91307120700FC08A913090000000712073D08050000F600000007135D44F70000000700000000000000040000000312073CFC0000000308A913090000000712073D0800000007000000040000000100000004000000031151E907000000030A0001081151E90900000004000000071152250908A91303120701020000000108A913091207010800000004050000F600000007135D44F70500010400000007000000070000000012073D08000000070000000412073D0208A913091207010800000004050000F60000000700000009000000070000000100000004115225050A0000FC115225070A0001081151E9090000000408A9130312070102000000010000000612073D0208A9130512070104000000020000000600000006000000011152250908A91303120701020000000108A9130512070104000000020000000912073D0408A91307120700FC08A913090000000712073D0800000006000000040000000312073CFC0000000308A913090000000712073D08050000F60000000700000007000000040000000212073D0208A91305120701040000000208A91307120700FC00000007000000030000000712073D0408A913070000000700000007000000020000000100000004000000031151E907000000030A0001081151E90900000004000000071152250908A9130312070102000000010000000712073D0208A913050000000712073D0400000007000000020000000100000004000000020000000100000000"
theorem small_2316807_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2316807_right_root small_2316807_right_fuel small_2316807_right_count small_2316807_right_encoded = true := by
  decide +kernel
theorem small_2316807_right_covered : CoveredBy scale carrier boxes small_2316807_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2316807_right_root small_2316807_right_fuel small_2316807_right_count small_2316807_right_encoded small_2316807_right_checked

theorem cover_2316807 : CoveredBy scale carrier boxes root_2316807 := by
  apply coveredBy_split_literal root_2316807 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0056.root_2316808 small_2316807_right_root coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0056.cover_2316808
  · exact small_2316807_right_covered
#print axioms cover_2316807

def root_2314589 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2314589 : CoveredBy scale carrier boxes root_2314589 := by
  apply coveredBy_split_literal root_2314589 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0886.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0056.root_2316807 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0886.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0056.cover_2316807
#print axioms cover_2314589

def root_2310397 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2310397 : CoveredBy scale carrier boxes root_2310397 := by
  apply coveredBy_split_literal root_2310397 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0056.root_2310398 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0056.root_2314589 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0056.cover_2310398
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0056.cover_2314589
#print axioms cover_2310397

def root_2231373 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2231373 : CoveredBy scale carrier boxes root_2231373 := by
  apply coveredBy_split_literal root_2231373 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0056.root_2231374 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0056.root_2310397 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0056.cover_2231374
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0056.cover_2310397
#print axioms cover_2231373

def root_2329465 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2329465 : CoveredBy scale carrier boxes root_2329465 := by
  apply coveredBy_split_literal root_2329465 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0891.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0892.root coord2 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0891.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0892.covered
#print axioms cover_2329465

def root_2329460 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2329460_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2329460_right_fuel : Nat := 1
def small_2329460_right_count : Nat := 1
def small_2329460_right_encoded : String := "00000003"
theorem small_2329460_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2329460_right_root small_2329460_right_fuel small_2329460_right_count small_2329460_right_encoded = true := by
  decide +kernel
theorem small_2329460_right_covered : CoveredBy scale carrier boxes small_2329460_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2329460_right_root small_2329460_right_fuel small_2329460_right_count small_2329460_right_encoded small_2329460_right_checked

theorem cover_2329460 : CoveredBy scale carrier boxes root_2329460 := by
  apply coveredBy_split_literal root_2329460 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0056.root_2329465 small_2329460_right_root coord3 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0056.cover_2329465
  · exact small_2329460_right_covered
#print axioms cover_2329460

def root_2329459 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2329459_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2329459_right_fuel : Nat := 21
def small_2329459_right_count : Nat := 143
def small_2329459_right_encoded : String := "120701060000000305000104135D4505000000020000000A135D8105050000FE135D80FF000000040CFD9BF70F350CF60000000004548A031386710200000001045489FD1386AD060C9A86F60F878CF700000000078001040000000A128A7D0500000006000000020F8750F707800104128A410500000002078000FE128A7CFF00000004022A458313E1C50200000001067ECE7D00000006000000060000000A128A40FF0000000A00000004128A7D05078000FE128A7CFF00000004022A458313E1C50200000001067ECE7D000000060000000613E20102067ECE7D000000070000000800000001128A40FF022A45830000000613E20102067ECE7D0000000600000006000000010000000400000002000000000000000313867106000000030C9A86F60000000A0F8750F7078001040000000A128A7D05078000FE128A7CFF00000004022A458300000006000000080000000600000002000000001386AD02045489FD1386AD060C9A86F60F878CF7000000000000000A0F8750F707800104128A4105000000020000000A128A7D05078000FE00000007128A40FF000000070000000400000002000000000000000313867106000000030000000A000000010F34D0F60000000A00000000135D44FF0CFD9BF70F350CF60000000004548A031386710200000001045489FD00000006000000061386AD02045489FD1386AD060C9A86F60000000A0F8750F7078001040000000A0000000900000000000000030000000A000000010F34D0F600000006000000000000000400000002"
theorem small_2329459_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2329459_right_root small_2329459_right_fuel small_2329459_right_count small_2329459_right_encoded = true := by
  decide +kernel
theorem small_2329459_right_covered : CoveredBy scale carrier boxes small_2329459_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2329459_right_root small_2329459_right_fuel small_2329459_right_count small_2329459_right_encoded small_2329459_right_checked

theorem cover_2329459 : CoveredBy scale carrier boxes root_2329459 := by
  apply coveredBy_split_literal root_2329459 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0056.root_2329460 small_2329459_right_root coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0056.cover_2329460
  · exact small_2329459_right_covered
#print axioms cover_2329459

def root_2329453 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2329453_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2329453_left_fuel : Nat := 1
def small_2329453_left_count : Nat := 1
def small_2329453_left_encoded : String := "00000001"
theorem small_2329453_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2329453_left_root small_2329453_left_fuel small_2329453_left_count small_2329453_left_encoded = true := by
  decide +kernel
theorem small_2329453_left_covered : CoveredBy scale carrier boxes small_2329453_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2329453_left_root small_2329453_left_fuel small_2329453_left_count small_2329453_left_encoded small_2329453_left_checked

theorem cover_2329453 : CoveredBy scale carrier boxes root_2329453 := by
  apply coveredBy_split_literal root_2329453 small_2329453_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0056.root_2329459 coord1 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_2329453_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0056.cover_2329459
#print axioms cover_2329453

def root_2329452 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2329452_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2329452_right_fuel : Nat := 21
def small_2329452_right_count : Nat := 317
def small_2329452_right_encoded : String := "12073D0208A912FD12073D0605000104135D450500000002050000FE135D80FF000000040CFD9BF70F350CF6000000000CFD9C030F34D102000000010CFD9BFD0F350D060C9A86F6000000050F8750F70C9A8706000000050F878CFD00000003028001040000000513D7ED05078000FE00000005000000090000000200000000000000030F34D106000000030C9A86F6000000050F8750F7028001040000000513D7ED05078000FE00000005128A40FF000000090000000400000002000000000F350D0200000005000000010F34D0F60000000500000000135D44FF0CFD9BF70F350CF6000000000CFD9C030F34D102000000010CFD9BFD0F350D060C9A86F60F878CF7000000000C9A8706000000090F878CFD000000030000000900000009000000030F34D106000000030C9A86F60000000A0F8750F7028001040000000900000009000000000F350D020CFD9BFD0F350D060C9A86F6000000050F8750F70C9A8702000000050000000900000000000000030F34D106000000030C9A86F60F878CF700000000000000050F8750F70C9A87020F87510300000001000000050000000900000000000000010F34D0F60CFD9C030F34D102000000010CFD9BFD0F350D0600000005000000030000000A0F350D0200000005000000010000000000000004135D8105050000FE135D80FF000000040CFD9BF70F350CF6000000000CFD9C030F34D102000000010CFD9BFD0F350D060C9A86F60F878CF7000000000C9A870600000009000000070F8750F70C9A8706000000090000000700000000000000030F34D106000000030C9A86F6000000070F8750F700000007000000000F350D020CFD9BFD000000070F34D1060000000300000007000000010F34D0F60CFD9C030F34D102000000010CFD9BFD0F350D060C9A87060000000500000007000000030F34D10600000003000000070000000700000000135D44FF0CFD9BF70F350CF6000000000CFD9C030F34D102000000010CFD9BFD0F350D060C9A86F60F878CF7000000000000000900000009000000030F34D106000000030C9A86F60F878CF700000000078001040000000900000007000000090F350D020CFD9BFD0F350D060C9A86F6000000070F8750F70C9A87020F87510300000001000000070000000900000000000000030F34D1060000000300000007000000010F34D0F60CFD9C030F34D102000000010CFD9BFD0F350D060C9A8706000000090F878CFD00000003078001040000000900000007000000030F34D106000000030000000A0F350D020CFD9BFD000000070F34D10600000003000000070000000100000000000000040000000200000003120701060000000305000104135D450500000002050000FE135D80FF000000040CFD9BF70F350CF6000000000CFD9C030F34D102000000010000000A000000080000000A135D44FF0CFD9BF70F350CF6000000000CFD9C030F34D102000000010000000A0000000A0000000A00000004135D8105050000FE135D80FF000000040CFD9BF70F350CF6000000000CFD9C030F34D10200000001045489FD00000007138671060000000300000008000000070F34D0F60000000700000000135D44FF0CFD9BF70F350CF6000000000CFD9C030F34D10200000001045489FD1386AD060C9A86F60000000A00000009000000030000000A0F350D02045489FD00000007138671060000000300000007000000010F34D0F60000000A00000000000000040000000200000001"
theorem small_2329452_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2329452_right_root small_2329452_right_fuel small_2329452_right_count small_2329452_right_encoded = true := by
  decide +kernel
theorem small_2329452_right_covered : CoveredBy scale carrier boxes small_2329452_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2329452_right_root small_2329452_right_fuel small_2329452_right_count small_2329452_right_encoded small_2329452_right_checked

theorem cover_2329452 : CoveredBy scale carrier boxes root_2329452 := by
  apply coveredBy_split_literal root_2329452 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0056.root_2329453 small_2329452_right_root coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0056.cover_2329453
  · exact small_2329452_right_covered
#print axioms cover_2329452

def root_2329446 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2329446_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2329446_left_fuel : Nat := 1
def small_2329446_left_count : Nat := 1
def small_2329446_left_encoded : String := "00000000"
theorem small_2329446_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2329446_left_root small_2329446_left_fuel small_2329446_left_count small_2329446_left_encoded = true := by
  decide +kernel
theorem small_2329446_left_covered : CoveredBy scale carrier boxes small_2329446_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2329446_left_root small_2329446_left_fuel small_2329446_left_count small_2329446_left_encoded small_2329446_left_checked

theorem cover_2329446 : CoveredBy scale carrier boxes root_2329446 := by
  apply coveredBy_split_literal root_2329446 small_2329446_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0056.root_2329452 coord0 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_2329446_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0056.cover_2329452
#print axioms cover_2329446

def root_2329445 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2329445_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2329445_right_fuel : Nat := 18
def small_2329445_right_count : Nat := 111
def small_2329445_right_encoded : String := "120700F608A91303120701020000000108A912FD12073D0605000104135D4505000000020000000A135D8105050000FE135D80FF00000004045489F71386ACF60000000004548A0313867102000000010CFD9BFD0F350D060C9A8706000000050F878CFD0000000300000006000000030F34D10600000003000000061386AD020CFD9BFD0F350D0600000005000000030000000500000001138670F604548A0313867102000000010000000A0000000500000000135D44FF045489F71386ACF60000000004548A031386710200000001000000061386AD020CFD9BFD0F350D060C9A8706000000090000000A000000030000000A00000001138670F60000000A0000000000000004000000020000000312070106000000030000000A12073D0208A912FD12073D060500010400000005135D8105050000FE00000005135D44FF045489F71386ACF6000000000CFD9C030F34D102000000010CFD9BFD0F350D060C9A8706000000050000000A000000030000000A0F350D020000000500000001138670F60CFD9C030F34D102000000010000000A000000050000000000000004000000020000000312070106000000030000000A0000000100000000"
theorem small_2329445_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2329445_right_root small_2329445_right_fuel small_2329445_right_count small_2329445_right_encoded = true := by
  decide +kernel
theorem small_2329445_right_covered : CoveredBy scale carrier boxes small_2329445_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2329445_right_root small_2329445_right_fuel small_2329445_right_count small_2329445_right_encoded small_2329445_right_checked

theorem cover_2329445 : CoveredBy scale carrier boxes root_2329445 := by
  apply coveredBy_split_literal root_2329445 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0056.root_2329446 small_2329445_right_root coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0056.cover_2329446
  · exact small_2329445_right_covered
#print axioms cover_2329445

def root_2329440 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2329440_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2329440_right_fuel : Nat := 1
def small_2329440_right_count : Nat := 1
def small_2329440_right_encoded : String := "00000004"
theorem small_2329440_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2329440_right_root small_2329440_right_fuel small_2329440_right_count small_2329440_right_encoded = true := by
  decide +kernel
theorem small_2329440_right_covered : CoveredBy scale carrier boxes small_2329440_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2329440_right_root small_2329440_right_fuel small_2329440_right_count small_2329440_right_encoded small_2329440_right_checked

theorem cover_2329440 : CoveredBy scale carrier boxes root_2329440 := by
  apply coveredBy_split_literal root_2329440 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0056.root_2329445 small_2329440_right_root coord4 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0056.cover_2329445
  · exact small_2329440_right_covered
#print axioms cover_2329440

def root_2326408 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2326408 : CoveredBy scale carrier boxes root_2326408 := by
  apply coveredBy_split_literal root_2326408 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0890.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0056.root_2329440 coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0890.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0056.cover_2329440
#print axioms cover_2326408

def root_2326402 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2326402_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2326402_left_fuel : Nat := 1
def small_2326402_left_count : Nat := 1
def small_2326402_left_encoded : String := "00000003"
theorem small_2326402_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2326402_left_root small_2326402_left_fuel small_2326402_left_count small_2326402_left_encoded = true := by
  decide +kernel
theorem small_2326402_left_covered : CoveredBy scale carrier boxes small_2326402_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2326402_left_root small_2326402_left_fuel small_2326402_left_count small_2326402_left_encoded small_2326402_left_checked

theorem cover_2326402 : CoveredBy scale carrier boxes root_2326402 := by
  apply coveredBy_split_literal root_2326402 small_2326402_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0056.root_2326408 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_2326402_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0056.cover_2326408
#print axioms cover_2326402

def root_2325618 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2325618_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2325618_left_fuel : Nat := 31
def small_2325618_left_count : Nat := 363
def small_2325618_left_encoded : String := "1151E8FD0A0000FE115224FF0000000408A912F712073CF60000000008A91303120701020000000108A912FF12073CFE0000000405000104135D4505000000020500010600000005135D80FD000000030CFD9BF70F350CF60000000004548A0313867102000000010CFD9BFF0F350CFE000000040C9A86F6000000050F8750F70C9A86FE000000050F8750FF028001040000000513D7ED050780010600000005128A7CFD0000000300000005000000020000000400000000000000050000000500000005135D810505000106135D44FD0CFD9BF70F350CF60000000004548A0313867102000000010CFD9BFF0F350CFE000000040C9A86F60F878CF700000000000000050000000900000005000000050000000500000003135D80FD000000030CFD9BF70F350CF60000000004548A0313867102000000010CFD9BFF0F350CFE000000040C9A86F60F878CF7000000000C9A86FE0F878CFF00000004000000050F8750FF07800104128A4105000000020000000500000009000000040F8750F70C9A86FE0F878CFF0000000407800104128A41050000000200000005128A7D050780010600000006128A7CFD00000003022A458313E1C502000000010B4D43F60000000A0000000600000006000000020F8750FF07800104128A4105000000020780010600000006128A7CFD00000003022A458313E1C5020000000100000009000000060000000900000004000000000F34D0FE00000005000000041386AD020CFD9BFF0F350CFE000000040C9A86F60F878CF700000000000000050F8750F70C9A86FE000000060F8750FF00000009000000040000000000000005000000010F34D0F6000000050000000000000002120700FE000000050000000412073D020000000500000001120700F600000005000000001151E8FF08A912F712073CF60000000008A91303120701020000000105000104135D45050000000205000106135D44FD050000FE135D80FF000000040CFD9BF700000008000000050000000800000003135D80FD00000003050000FE135D80FF000000040CFD9BF70F350CF60000000004548A031386710200000001000000081386AD020C9A86F60F878CF7000000000000000500000009000000010F34D0F60000000500000000135D44FF0CFD9BF7000000080F34D0F6000000080000000000000004135D810505000106135D44FD050000FE135D80FF000000040CFD9BF700000008000000090000000800000003135D80FD00000003050000FE135D80FF000000040CFD9BF70F350CF60000000004548A0313867102000000010C9A86F60000000800000009000000090F34D0F604548A031386710200000001000000080000000900000000135D44FF0CFD9BF7000000080F34D0F60000000800000000000000040000000212073D0205000104135D4505000000020500010600000005135D80FD00000003050000FE00000005135D44FF0CFD9BF70F350CF6000000000CFD9C030F34D1020000000100000009000000060F34D0F6000000050000000000000004135D810505000106135D44FD050000FE135D80FF0000000400000005135D44FF0CFD9BF70F350CF6000000000CFD9C0300000009000000060F34D0F600000005000000000000000400000003135D80FD00000003050000FE135D80FF000000040CFD9BF70F350CF6000000000CFD9C030F34D10200000001000000090F350D0200000005000000010F34D0F60000000500000000135D44FF0CFD9BF70F350CF6000000000CFD9C030F34D10200000001000000090F350D020C9A86F60F878CF7000000000C9A8702000000050000000900000006000000010F34D0F60CFD9C030F34D10200000001000000090000000500000000000000040000000200000001120700F608A9130312070102000000010500010400000005135D81050500010600000005135D80FD00000003050000FE00000005135D44FF00000008000000040000000200000005000000000000000400000003"
theorem small_2325618_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2325618_left_root small_2325618_left_fuel small_2325618_left_count small_2325618_left_encoded = true := by
  decide +kernel
theorem small_2325618_left_covered : CoveredBy scale carrier boxes small_2325618_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2325618_left_root small_2325618_left_fuel small_2325618_left_count small_2325618_left_encoded small_2325618_left_checked

theorem cover_2325618 : CoveredBy scale carrier boxes root_2325618 := by
  apply coveredBy_split_literal root_2325618 small_2325618_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0056.root_2326402 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_2325618_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0056.cover_2326402
#print axioms cover_2325618

def root_2325612 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2325612_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2325612_left_fuel : Nat := 1
def small_2325612_left_count : Nat := 1
def small_2325612_left_encoded : String := "00000002"
theorem small_2325612_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2325612_left_root small_2325612_left_fuel small_2325612_left_count small_2325612_left_encoded = true := by
  decide +kernel
theorem small_2325612_left_covered : CoveredBy scale carrier boxes small_2325612_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2325612_left_root small_2325612_left_fuel small_2325612_left_count small_2325612_left_encoded small_2325612_left_checked

theorem cover_2325612 : CoveredBy scale carrier boxes root_2325612 := by
  apply coveredBy_split_literal root_2325612 small_2325612_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0056.root_2325618 coord2 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_2325612_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0056.cover_2325618
#print axioms cover_2325612

def root_2335910 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2335910 : CoveredBy scale carrier boxes root_2335910 := by
  apply coveredBy_split_literal root_2335910 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0893.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0894.root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0893.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0894.covered
#print axioms cover_2335910

def root_2335905 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2335905_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2335905_right_fuel : Nat := 1
def small_2335905_right_count : Nat := 1
def small_2335905_right_encoded : String := "00000002"
theorem small_2335905_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2335905_right_root small_2335905_right_fuel small_2335905_right_count small_2335905_right_encoded = true := by
  decide +kernel
theorem small_2335905_right_covered : CoveredBy scale carrier boxes small_2335905_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2335905_right_root small_2335905_right_fuel small_2335905_right_count small_2335905_right_encoded small_2335905_right_checked

theorem cover_2335905 : CoveredBy scale carrier boxes root_2335905 := by
  apply coveredBy_split_literal root_2335905 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0056.root_2335910 small_2335905_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0056.cover_2335910
  · exact small_2335905_right_covered
#print axioms cover_2335905

def root_2325611 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2325611 : CoveredBy scale carrier boxes root_2325611 := by
  apply coveredBy_split_literal root_2325611 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0056.root_2325612 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0056.root_2335905 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0056.cover_2325612
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0056.cover_2335905
#print axioms cover_2325611

def root_2325606 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2325606_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2325606_right_fuel : Nat := 1
def small_2325606_right_count : Nat := 1
def small_2325606_right_encoded : String := "00000001"
theorem small_2325606_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2325606_right_root small_2325606_right_fuel small_2325606_right_count small_2325606_right_encoded = true := by
  decide +kernel
theorem small_2325606_right_covered : CoveredBy scale carrier boxes small_2325606_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2325606_right_root small_2325606_right_fuel small_2325606_right_count small_2325606_right_encoded small_2325606_right_checked

theorem cover_2325606 : CoveredBy scale carrier boxes root_2325606 := by
  apply coveredBy_split_literal root_2325606 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0056.root_2325611 small_2325606_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0056.cover_2325611
  · exact small_2325606_right_covered
#print axioms cover_2325606

def root_2325272 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2325272_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2325272_left_fuel : Nat := 20
def small_2325272_left_count : Nat := 153
def small_2325272_left_encoded : String := "1151E903000000010A0001041151E905000000020A0001061151E8FD0000000500000003115224FD000000030A0000FE115224FF0000000408A912F712073CF60000000008A912FD00000005120701060000000300000008120700F608A912FD00000005120701060000000308A912FF0000000500000008000000001151E8FF08A912F712073CF60000000008A912FD12073D060500010200000005135D81030500010400000005135D8105050000FE00000005135D44FF0CFD9BF7000000070F34D0F600000005000000000000000400000002000000010000000312070106000000030500010200000005135D81030500010400000005135D8105000000070000000200000001120700F6000000050000000000000004115225050A0001061151E8FD0A0000FE115224FF0000000408A912F712073CF60000000008A913050000000712073D040000000500000002120700F600000005000000001151E8FF08A912F712073CF60000000008A913050000000712073D0405000102135D45030000000100000007135D810305000106135D44FD050000FE00000007135D44FF000000070000000400000003000000070000000100000002120700F600000007000000000000000400000003115224FD000000030A0000FE115224FF0000000408A912F712073CF60000000008A913050000000712073D0408A912FD0000000712070106000000030000000700000002120700F600000007000000001151E8FF08A912F712073CF60000000008A913050000000712073D0408A912FD0000000712070106000000030000000700000002120700F600000007000000000000000400000002"
theorem small_2325272_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2325272_left_root small_2325272_left_fuel small_2325272_left_count small_2325272_left_encoded = true := by
  decide +kernel
theorem small_2325272_left_covered : CoveredBy scale carrier boxes small_2325272_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2325272_left_root small_2325272_left_fuel small_2325272_left_count small_2325272_left_encoded small_2325272_left_checked

theorem cover_2325272 : CoveredBy scale carrier boxes root_2325272 := by
  apply coveredBy_split_literal root_2325272 small_2325272_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0056.root_2325606 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_2325272_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0056.cover_2325606
#print axioms cover_2325272

def root_2325266 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2325266_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2325266_left_fuel : Nat := 1
def small_2325266_left_count : Nat := 1
def small_2325266_left_encoded : String := "00000000"
theorem small_2325266_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2325266_left_root small_2325266_left_fuel small_2325266_left_count small_2325266_left_encoded = true := by
  decide +kernel
theorem small_2325266_left_covered : CoveredBy scale carrier boxes small_2325266_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2325266_left_root small_2325266_left_fuel small_2325266_left_count small_2325266_left_encoded small_2325266_left_checked

theorem cover_2325266 : CoveredBy scale carrier boxes root_2325266 := by
  apply coveredBy_split_literal root_2325266 small_2325266_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0056.root_2325272 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_2325266_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0056.cover_2325272
#print axioms cover_2325266

def root_2343429 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-6291456)⟩, ⟨(-15553280), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2343429_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-6291456)⟩, ⟨(-15553280), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(0), (2097152)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2343429_left_fuel : Nat := 23
def small_2343429_left_count : Nat := 373
def small_2343429_left_encoded : String := "13D7B10500000002078000FE128A7CFF00000004022A458313E1C502000000010DE7CA060E5FD8FD08C000F611FC24F7000000000140010413F5D9050000000208C000FE11FC24FF000000040115234300000007000000050000000713F6150508C000FE11FC24FF000000040115234313F85902000000010D412886000000070EFA4CFD000000030000000713F895020D412886000000050EFA4CFD00000003096000F600000005000000060000000111FBE8FF011523430000000713F895020D412886000000070EFA4CFD000000030000000700000001000000040000000211FBE8F7014001040000000713F6150508C000FE11FC24FF00000004011523430000000700000006000000070000000200000000000000030E6014FD0000000308C000F611FC24F7000000000140010413F5D9050000000208C000FE11FC24FF000000040115234300000007000000050000000713F6150508C000FE11FC24FF000000040115234313F85902000000010DAED87D0E966106096000F611AABCF7000000000000000700000007000000030E96250600000003096000F60000000A0000000713F895020DAED87D0E966106096000F60000000511AA80F701E001040000000513E99505096000FE00000005000000070000000200000000000000030E96250600000003096000F60000000511AA80F701E00104000000050000000A000000000000000111FBE8FF011523430000000713F895020DAED87D0E966106096000F611AABCF7000000000000000A00000007000000030E962506000000030000000A00000001000000040000000211FBE8F7014001040000000713F6150508C000FE11FC24FF00000004011523430000000713F895020DAED87D0E96610600000006000000030E96250600000003082000F6124698F70000000001E001040000000713E99505096000FE000000060000000700000002000000070000000100000007000000020000000013E201020DE7CA060E5FD8FD08C000F611FC24F7000000000140010413F5D9050000000208C000FE0000000511FBE8FF000000060000000413F6150508C000FE0000000611FBE8FF033F67C313BBF502000000010D412886000000060EFA4CFD000000030000000600000006000000040000000211FBE8F70000000600000000000000030E6014FD0000000308C000F611FC24F7000000000140010413F5D9050000000208C000FE0000000511FBE8FF0000000A0000000413F6150508C000FE11FC24FF00000004033F67C313BBF502000000010DAED87D0E9661060000000500000003000000050000000511FBE8FF033F67C313BBF502000000010DAED87D0E966106096000F60000000A11AA80F701E00104000000060000000600000000000000030E962506000000030000000A13BC31020DAED87D0E96610600000006000000030E962506000000030000000A00000001000000040000000211FBE8F70140010413F5D9050000000208C000FE0000000611FBE8FF033F67C300000007000000060000000413F6150508C000FE11FC24FF000000040000000611FBE8FF033F67C313BBF502000000010DAED87D0E96610600000006000000030E96250600000003082000F6124698F70000000001E001040000000713E99505082000FE000000060000000700000002000000060000000600000004000000020000000000000001128A40FF022A458313E1C502000000010DE7CA06000000070E6014FD0000000308C000F611FC24F700000000000000070000000713E201020DE7CA060E5FD8FD08C000F611FC24F7000000000000000900000009000000030E6014FD0000000308C000F611FC24F700000000014001040000000A13F61505064000FE12FFACFF00000004033F67C313BBF502000000010DAED87D0E96610600000009000000030000000A00000009000000090000000211FBE8F70140010413F5D90500000002064000FE12FFACFF00000004000000070000000713F61505064000FE12FFACFF00000004033F67C300000007000000090000000900000002000000000000000100000004"
theorem small_2343429_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2343429_left_root small_2343429_left_fuel small_2343429_left_count small_2343429_left_encoded = true := by
  decide +kernel
theorem small_2343429_left_covered : CoveredBy scale carrier boxes small_2343429_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2343429_left_root small_2343429_left_fuel small_2343429_left_count small_2343429_left_encoded small_2343429_left_checked

theorem cover_2343429 : CoveredBy scale carrier boxes root_2343429 := by
  apply coveredBy_split_literal root_2343429 small_2343429_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0896.root coord2 false (2097152)
  · decide +kernel
  · decide +kernel
  · exact small_2343429_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0896.covered
#print axioms cover_2343429

def root_2343423 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-6291456)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2343423_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-6291456)⟩, ⟨(-16244736), (-15553280)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2343423_left_fuel : Nat := 1
def small_2343423_left_count : Nat := 1
def small_2343423_left_encoded : String := "00000000"
theorem small_2343423_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2343423_left_root small_2343423_left_fuel small_2343423_left_count small_2343423_left_encoded = true := by
  decide +kernel
theorem small_2343423_left_covered : CoveredBy scale carrier boxes small_2343423_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2343423_left_root small_2343423_left_fuel small_2343423_left_count small_2343423_left_encoded small_2343423_left_checked

theorem cover_2343423 : CoveredBy scale carrier boxes root_2343423 := by
  apply coveredBy_split_literal root_2343423 small_2343423_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0056.root_2343429 coord0 true (-15553280)
  · decide +kernel
  · decide +kernel
  · exact small_2343423_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0056.cover_2343429
#print axioms cover_2343423

def root_2343422 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2343422_right_root : ZRayBox := fun j => (#[⟨⟨(-6291456), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2343422_right_fuel : Nat := 18
def small_2343422_right_count : Nat := 165
def small_2343422_right_encoded : String := "128A40F70280010413D7B10500000002078000FE128A7CFF00000004022A458313E1C502000000010DE7CA06000000070E6014FD00000003064000F612FFACF7000000000140010400000007000000070000000713E201020DE7CA06000000060E6014FD00000003064000F612FFACF7000000000140010400000006000000060000000600000001128A40FF022A45830000000713E201020DE7CA060E5FD8FD00000006000000030E6014FD00000003064000F612FFACF700000000014001040000000713F61505064000FE12FFACFF00000004033F67C30000000700000006000000070000000200000007000000010000000413D7ED05078000FE128A7CFF00000004022A458313E1C502000000010DE7CA060E5FD8FD064000F612FFACF70000000003C0010413A511050000000208C000FE000000060000000713A54D0508C000FE00000006000000050000000200000006000000030E6014FD00000003064000F612FFACF70000000003C0010413A511050000000208C000FE11FC24FF000000040115234300000007000000060000000713A54D0508C000FE11FC24FF000000040115234313F85902000000010000000500000006000000050000000212FF70F703C0010413A511050000000208C000FE0000000600000005000000050000000013E201020DE7CA06000000060E6014FD00000003064000F612FFACF70000000003C0010413A51105000000020000000613A54D0508C000FE0000000611FBE8FF0000000600000004000000020000000600000001128A40FF022A458313E1C502000000010DE7CA060E5FD8FD00000005000000030000000513E201020DE7CA06000000090E6014FD00000003064000F612FFACF700000000000000090000000500000001000000040000000200000000"
theorem small_2343422_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2343422_right_root small_2343422_right_fuel small_2343422_right_count small_2343422_right_encoded = true := by
  decide +kernel
theorem small_2343422_right_covered : CoveredBy scale carrier boxes small_2343422_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2343422_right_root small_2343422_right_fuel small_2343422_right_count small_2343422_right_encoded small_2343422_right_checked

theorem cover_2343422 : CoveredBy scale carrier boxes root_2343422 := by
  apply coveredBy_split_literal root_2343422 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0056.root_2343423 small_2343422_right_root coord0 false (-6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0056.cover_2343423
  · exact small_2343422_right_covered
#print axioms cover_2343422

def root_2343416 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2343416_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-13027072)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2343416_left_fuel : Nat := 1
def small_2343416_left_count : Nat := 1
def small_2343416_left_encoded : String := "00000003"
theorem small_2343416_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2343416_left_root small_2343416_left_fuel small_2343416_left_count small_2343416_left_encoded = true := by
  decide +kernel
theorem small_2343416_left_covered : CoveredBy scale carrier boxes small_2343416_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2343416_left_root small_2343416_left_fuel small_2343416_left_count small_2343416_left_encoded small_2343416_left_checked

theorem cover_2343416 : CoveredBy scale carrier boxes root_2343416 := by
  apply coveredBy_split_literal root_2343416 small_2343416_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0056.root_2343422 coord3 true (-13027072)
  · decide +kernel
  · decide +kernel
  · exact small_2343416_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0056.cover_2343422
#print axioms cover_2343416

def root_2343218 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2343218_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (10572672)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2343218_left_fuel : Nat := 19
def small_2343218_left_count : Nat := 93
def small_2343218_left_encoded : String := "0F8750FD078000F6128A7CF7000000000280010413D7B10500000002078000FE128A7CFF00000004022A458313E1C502000000010B4D44060000000810804CFD0000000308C000F60000000811FBE8F70140010400000006000000060000000000000006128A40FF000000080000000413D7ED05078000FE128A7CFF00000004022A458313E1C502000000010B4D4406108010FD000000080000000310804CFD0000000308C000F611FC24F70000000003C0010413A511050000000208C000FE11FC24FF00000004000000060000000813A54D0508C000FE11FC24FF00000004011523430000000800000006000000080000000211FBE8F703C0010413A511050000000200000006000000060000000000000009128A40FF000000090000000400000002128A40F70280010413D7B10500000002078000FE00000006128A40FF022A458300000007000000060000000413D7ED05078000FE00000006128A40FF0000000900000004000000020000000000000003"
theorem small_2343218_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2343218_left_root small_2343218_left_fuel small_2343218_left_count small_2343218_left_encoded = true := by
  decide +kernel
theorem small_2343218_left_covered : CoveredBy scale carrier boxes small_2343218_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2343218_left_root small_2343218_left_fuel small_2343218_left_count small_2343218_left_encoded small_2343218_left_checked

theorem cover_2343218 : CoveredBy scale carrier boxes root_2343218 := by
  apply coveredBy_split_literal root_2343218 small_2343218_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0056.root_2343416 coord3 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_2343218_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0056.cover_2343416
#print axioms cover_2343218

def root_2343213 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2343213_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2343213_right_fuel : Nat := 1
def small_2343213_right_count : Nat := 1
def small_2343213_right_encoded : String := "00000003"
theorem small_2343213_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2343213_right_root small_2343213_right_fuel small_2343213_right_count small_2343213_right_encoded = true := by
  decide +kernel
theorem small_2343213_right_covered : CoveredBy scale carrier boxes small_2343213_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2343213_right_root small_2343213_right_fuel small_2343213_right_count small_2343213_right_encoded small_2343213_right_checked

theorem cover_2343213 : CoveredBy scale carrier boxes root_2343213 := by
  apply coveredBy_split_literal root_2343213 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0056.root_2343218 small_2343213_right_root coord3 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0056.cover_2343218
  · exact small_2343213_right_covered
#print axioms cover_2343213

def root_2343212 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2343212 : CoveredBy scale carrier boxes root_2343212 := by
  apply coveredBy_split_literal root_2343212 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0056.root_2343213 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0897.root coord3 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0056.cover_2343213
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0897.covered
#print axioms cover_2343212

def root_2343206 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2343206_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2343206_left_fuel : Nat := 1
def small_2343206_left_count : Nat := 1
def small_2343206_left_encoded : String := "00000001"
theorem small_2343206_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2343206_left_root small_2343206_left_fuel small_2343206_left_count small_2343206_left_encoded = true := by
  decide +kernel
theorem small_2343206_left_covered : CoveredBy scale carrier boxes small_2343206_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2343206_left_root small_2343206_left_fuel small_2343206_left_count small_2343206_left_encoded small_2343206_left_checked

theorem cover_2343206 : CoveredBy scale carrier boxes root_2343206 := by
  apply coveredBy_split_literal root_2343206 small_2343206_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0056.root_2343212 coord1 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_2343206_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0056.cover_2343212
#print axioms cover_2343206

def root_2343205 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2343205_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2343205_right_fuel : Nat := 21
def small_2343205_right_count : Nat := 305
def small_2343205_right_encoded : String := "1386AD020CFD9BFD0F350D060C9A87060F8750FD078000F6128A7CF7000000000280010413D7B10500000002078000FE00000006000000090000000900000006000000030F878CFD00000003078000F6128A7CF7000000000280010413D7B10500000002078000FE128A7CFF00000004067ECE8312EA5902000000010DE7CA060E5FD8FD00000006000000030E6014FD0000000308C000F611FC24F700000000000000050000000600000006128A40FF067ECE8312EA5902000000010DE7CA06000000090E6014FD0000000308C000F611FC24F7000000000000000900000009000000090000000413D7ED05078000FE128A7CFF00000004067ECE8312EA5902000000010DE7CA06000000090E6014FD0000000308C000F611FC24F70000000003C0010413A511050000000208C000FE00000006000000090000000911FBE8F703C0010400000006000000060000000000000009128A40FF000000090000000400000002128A40F70280010413D7B10500000002078000FE00000006128A40FF067ECE8312EA59020000000100000006000000060000000413D7ED05078000FE00000006128A40FF00000009000000040000000200000000000000030F34D10600000003078000F6128A7CF7000000000280010413D7B10500000002078000FE128A7CFF00000004067ECE8312EA5902000000010AD3577D10D13D0608C000F611FC24F7000000000000000A00000008000000030000000800000008128A40FF067ECE8312EA5902000000010AD3577D10D13D0608C000F60000000A11FBE8F7014001040000000A13F61505064000FE12FFACFF000000040569AC430000000A00000008000000090000000200000000000000030000000A0000000A0000000413D7ED05078000FE128A7CFF00000004067ECE8312EA5902000000010AD3577D10D13D0608C000F60000000800000008000000030000000800000008128A40FF067ECE8312EA5902000000010AD3577D10D13D0608C000F611FC24F70000000000000009000000090000000310D101060000000308C000F60000000A0000000812EA95020AD3577D0000000900000008000000010000000400000002128A40F70280010413D7B10500000002078000FE128A7CFF0000000400000008128A40FF067ECE8312EA5902000000010AD3577D10D13D06064000F612FFACF7000000000140010413F5D90500000002064000FE12FFACFF000000040569AC43000000080000000612FF70FF0000000A0000000413F61505064000FE0000000812FF70FF00000009000000040000000212FF70F70140010413F5D90500000002064000FE0000000612FF70FF000000060000000413F61505064000FE0000000612FF70FF000000090000000400000002000000000000000310D10106000000030000000812EA95020AD3577D10D13D06064000F612FFACF700000000014001040000000600000006000000060000000300000008000000010000000413D7ED05078000FE00000008128A40FF067ECE8312EA5902000000010AD3577D10D13D06064000F612FFACF70000000003C0010413A5110500000002000000090000000912FF70F703C0010413A5110500000002064000FE00000006000000050000000500000000000000030000000812EA9502000000080000000100000004000000020000000000000001"
theorem small_2343205_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2343205_right_root small_2343205_right_fuel small_2343205_right_count small_2343205_right_encoded = true := by
  decide +kernel
theorem small_2343205_right_covered : CoveredBy scale carrier boxes small_2343205_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2343205_right_root small_2343205_right_fuel small_2343205_right_count small_2343205_right_encoded small_2343205_right_checked

theorem cover_2343205 : CoveredBy scale carrier boxes root_2343205 := by
  apply coveredBy_split_literal root_2343205 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0056.root_2343206 small_2343205_right_root coord1 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0056.cover_2343206
  · exact small_2343205_right_covered
#print axioms cover_2343205

def root_2343199 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2343199_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2343199_left_fuel : Nat := 1
def small_2343199_left_count : Nat := 1
def small_2343199_left_encoded : String := "00000004"
theorem small_2343199_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2343199_left_root small_2343199_left_fuel small_2343199_left_count small_2343199_left_encoded = true := by
  decide +kernel
theorem small_2343199_left_covered : CoveredBy scale carrier boxes small_2343199_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2343199_left_root small_2343199_left_fuel small_2343199_left_count small_2343199_left_encoded small_2343199_left_checked

theorem cover_2343199 : CoveredBy scale carrier boxes root_2343199 := by
  apply coveredBy_split_literal root_2343199 small_2343199_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0056.root_2343205 coord4 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_2343199_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0056.cover_2343205
#print axioms cover_2343199

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0056
