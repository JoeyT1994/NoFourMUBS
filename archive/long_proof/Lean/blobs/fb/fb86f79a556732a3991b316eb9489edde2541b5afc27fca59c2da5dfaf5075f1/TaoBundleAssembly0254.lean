import TaoBundleAssembly0253
import TaoBundleChunkBatch0339
import TaoBundleChunkBatch0340
import TaoBundleChunkBatch0341
import TaoBundleChunkBatch0342
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0254
def root_3590899 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3590899_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3590899_left_fuel : Nat := 23
def small_3590899_left_count : Nat := 157
def small_3590899_left_encoded : String := "0F34D0F60CFD9C030F34D0F804548A07000000051386AD060CFD9C09000000050F350D08000000050000000400000003000000010F350CF80000000104548A0713867106000000030CFD9C090F34D108000000040C9A86F80000000A0F875103000000010000000A0F350D080C9A86F80F878D030C9A8708000000050F878D090000000500000004000000010F875103000000010C9A87080F8751090000000407800104128A40FB0000000500000002128A7CFB000000020AD3578110D100F6000000050000000010D13CF600000000022A458713E1C506000000030B4D43F80000000510801103000000010B4D4408000000050000000913E201060B4D43F810804D030B4D44080000000510804D0900000005000000040000000110801103000000010B4D44080000000610804D0908C00104000000060000000600000004000000030F878D0907800104128A40FB0000000A00000002128A7CFB000000020AD357810000000A10D13CF600000000022A458713E1C506000000030B4D43F800000009000000080000000A00000004000000041386AD060CFD9C090F34D108000000040000000A0F350D080C9A86F80F878D030C9A87080F875109000000040780010400000005128A7CFB000000020AD357810000000A10D13CF600000000067ECE8712EA5906000000030DE7C9F8000000050E5FD903000000010000000A0000000A0000000A000000010F875103000000010C9A87080F87510900000004078001040000000A128A7CFB000000020AD357810000000A10D13CF600000000067ECE8712EA5906000000030B4D43F80000000A10801103000000010000000A0000000A0000000A000000040000000300000000"
theorem small_3590899_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3590899_left_root small_3590899_left_fuel small_3590899_left_count small_3590899_left_encoded = true := by
  decide +kernel
theorem small_3590899_left_covered : CoveredBy scale carrier boxes small_3590899_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3590899_left_root small_3590899_left_fuel small_3590899_left_count small_3590899_left_encoded small_3590899_left_checked

theorem cover_3590899 : CoveredBy scale carrier boxes root_3590899 := by
  apply coveredBy_split_literal root_3590899 small_3590899_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0253.root_3591233 coord0 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_3590899_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0253.cover_3591233
#print axioms cover_3590899

def root_3590893 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3590893_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3590893_left_fuel : Nat := 1
def small_3590893_left_count : Nat := 1
def small_3590893_left_encoded : String := "00000002"
theorem small_3590893_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3590893_left_root small_3590893_left_fuel small_3590893_left_count small_3590893_left_encoded = true := by
  decide +kernel
theorem small_3590893_left_covered : CoveredBy scale carrier boxes small_3590893_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3590893_left_root small_3590893_left_fuel small_3590893_left_count small_3590893_left_encoded small_3590893_left_checked

theorem cover_3590893 : CoveredBy scale carrier boxes root_3590893 := by
  apply coveredBy_split_literal root_3590893 small_3590893_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0254.root_3590899 coord2 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_3590893_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0254.cover_3590899
#print axioms cover_3590893

def root_3589003 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3589003 : CoveredBy scale carrier boxes root_3589003 := by
  apply coveredBy_split_literal root_3589003 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1357.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0254.root_3590893 coord2 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1357.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0254.cover_3590893
#print axioms cover_3589003

def root_3588998 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3588998_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3588998_right_fuel : Nat := 1
def small_3588998_right_count : Nat := 1
def small_3588998_right_encoded : String := "00000004"
theorem small_3588998_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3588998_right_root small_3588998_right_fuel small_3588998_right_count small_3588998_right_encoded = true := by
  decide +kernel
theorem small_3588998_right_covered : CoveredBy scale carrier boxes small_3588998_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3588998_right_root small_3588998_right_fuel small_3588998_right_count small_3588998_right_encoded small_3588998_right_checked

theorem cover_3588998 : CoveredBy scale carrier boxes root_3588998 := by
  apply coveredBy_split_literal root_3588998 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0254.root_3589003 small_3588998_right_root coord4 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0254.cover_3589003
  · exact small_3588998_right_covered
#print axioms cover_3588998

def root_3588716 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3588716_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3588716_left_fuel : Nat := 21
def small_3588716_left_count : Nat := 133
def small_3588716_left_encoded : String := "120701080000000405000104135D44FB0CFD9C010F34D0F600000005000000000F350CF6000000000CFD9C030F34D0F800000005000000010F350CF80000000104548A07138671060000000304548A090000000A1386AD080C9A86F60000000A0F875101000000000C9A86F8000000060F875103000000010000000A000000040000000A00000002135D80FB000000020CFD9C010F34D0F60CFD9C030F34D0F800000005000000010000000A000000000F350CF6000000000CFD9C030F34D0F804548A07138671060000000304548A09000000070000000700000007000000010F350CF80000000104548A07138671060000000304548A0913867108000000040C9A86F60F878D010C9A86F80000000A0000000A000000000F875101000000000C9A86F8000000070F875103000000010780010400000007000000071386AD080C9A86F60F878D010C9A86F80F878D03078001040000000A128A7CFB00000002022A458713E1C50600000003067ECE89000000070000000700000007000000010F875103000000010000000A000000000F875101000000000C9A86F80F878D0300000007000000010F8751030000000107800104128A40FB0000000A00000002128A7CFB00000002022A458713E1C50600000003067ECE89000000070000000700000007000000041386AD0604548A0913867108000000040000000A1386AD080C9A86F60000000A000000070000000400000003"
theorem small_3588716_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3588716_left_root small_3588716_left_fuel small_3588716_left_count small_3588716_left_encoded = true := by
  decide +kernel
theorem small_3588716_left_covered : CoveredBy scale carrier boxes small_3588716_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3588716_left_root small_3588716_left_fuel small_3588716_left_count small_3588716_left_encoded small_3588716_left_checked

theorem cover_3588716 : CoveredBy scale carrier boxes root_3588716 := by
  apply coveredBy_split_literal root_3588716 small_3588716_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0254.root_3588998 coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_3588716_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0254.cover_3588998
#print axioms cover_3588716

def root_3588710 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3588710_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3588710_left_fuel : Nat := 1
def small_3588710_left_count : Nat := 1
def small_3588710_left_encoded : String := "00000003"
theorem small_3588710_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3588710_left_root small_3588710_left_fuel small_3588710_left_count small_3588710_left_encoded = true := by
  decide +kernel
theorem small_3588710_left_covered : CoveredBy scale carrier boxes small_3588710_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3588710_left_root small_3588710_left_fuel small_3588710_left_count small_3588710_left_encoded small_3588710_left_checked

theorem cover_3588710 : CoveredBy scale carrier boxes root_3588710 := by
  apply coveredBy_split_literal root_3588710 small_3588710_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0254.root_3588716 coord3 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_3588710_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0254.cover_3588716
#print axioms cover_3588710

def root_3588709 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3588709_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3588709_right_fuel : Nat := 28
def small_3588709_right_count : Nat := 135
def small_3588709_right_encoded : String := "12073D0608A9130912070108000000040000000A12073D0805000104135D44FB0CFD9C010000000A0F350CF6000000000CFD9C030F34D0F80CFD9C070F34D106000000030CFD9C09000000070F350D080C9A86F60000000A000000070000000400000007000000010000000A00000002135D80FB000000020CFD9C010F34D0F60CFD9C030F34D0F80000000A000000010000000A000000000F350CF6000000000CFD9C030F34D0F80CFD9C070F34D106000000030CFD9C09000000070F350D080C9A86F60F878D01000000070000000000000007000000040F350D060000000700000003000000010F350CF8000000010CFD9C070F34D106000000030CFD9C090F34D108000000040000000A0F350D080C9A86F60F878D010C9A86F80F878D030C9A87080F87510900000004078001040000000A128A7CFB000000020AD3578710D10106000000030DE7C9F60000000A00000007000000070000000A000000010F875103000000010000000A000000000F875101000000000C9A86F80F878D030C9A87080F8751090000000407800104000000070000000700000007000000010F875103000000010C9A87080F8751090000000407800104128A40FB0000000A00000002128A7CFB000000020AD3578710D10106000000030B4D43F610804D010B4D43F80000000710801103000000010000000A0000000000000008000000070000000A000000040F350D060000000A000000030000000400000003"
theorem small_3588709_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3588709_right_root small_3588709_right_fuel small_3588709_right_count small_3588709_right_encoded = true := by
  decide +kernel
theorem small_3588709_right_covered : CoveredBy scale carrier boxes small_3588709_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3588709_right_root small_3588709_right_fuel small_3588709_right_count small_3588709_right_encoded small_3588709_right_checked

theorem cover_3588709 : CoveredBy scale carrier boxes root_3588709 := by
  apply coveredBy_split_literal root_3588709 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0254.root_3588710 small_3588709_right_root coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0254.cover_3588710
  · exact small_3588709_right_covered
#print axioms cover_3588709

def root_3588703 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3588703_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3588703_left_fuel : Nat := 1
def small_3588703_left_count : Nat := 1
def small_3588703_left_encoded : String := "00000001"
theorem small_3588703_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3588703_left_root small_3588703_left_fuel small_3588703_left_count small_3588703_left_encoded = true := by
  decide +kernel
theorem small_3588703_left_covered : CoveredBy scale carrier boxes small_3588703_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3588703_left_root small_3588703_left_fuel small_3588703_left_count small_3588703_left_encoded small_3588703_left_checked

theorem cover_3588703 : CoveredBy scale carrier boxes root_3588703 := by
  apply coveredBy_split_literal root_3588703 small_3588703_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0254.root_3588709 coord1 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_3588703_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0254.cover_3588709
#print axioms cover_3588703

def root_3588515 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3588515_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3588515_left_fuel : Nat := 17
def small_3588515_left_count : Nat := 87
def small_3588515_left_encoded : String := "120700F808A91307120701060000000308A9130912070108000000040500010400000005135D80FB000000020CFD9C01000000050000000712073D0805000104135D44FB0000000500000002135D80FB000000020CFD9C010F34D0F600000005000000000F350CF60000000004548A03138670F804548A070000000500000007000000011386ACF80000000104548A0713867106000000030CFD9C09000000050F350D0800000005000000041386AD060CFD9C09000000070F350D080C9A86F6000000050000000700000004000000030000000412073D0608A9130912070108000000040000000712073D0805000104135D44FB0CFD9C010F34D0F600000005000000000F350CF6000000000000000700000002135D80FB000000020CFD9C010F34D0F604548A03000000051386ACF8000000010CFD9C070000000500000007000000000F350CF60000000000000007000000040000000300000001"
theorem small_3588515_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3588515_left_root small_3588515_left_fuel small_3588515_left_count small_3588515_left_encoded = true := by
  decide +kernel
theorem small_3588515_left_covered : CoveredBy scale carrier boxes small_3588515_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3588515_left_root small_3588515_left_fuel small_3588515_left_count small_3588515_left_encoded small_3588515_left_checked

theorem cover_3588515 : CoveredBy scale carrier boxes root_3588515 := by
  apply coveredBy_split_literal root_3588515 small_3588515_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0254.root_3588703 coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_3588515_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0254.cover_3588703
#print axioms cover_3588515

def root_3588509 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3588509_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3588509_left_fuel : Nat := 1
def small_3588509_left_count : Nat := 1
def small_3588509_left_encoded : String := "00000000"
theorem small_3588509_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3588509_left_root small_3588509_left_fuel small_3588509_left_count small_3588509_left_encoded = true := by
  decide +kernel
theorem small_3588509_left_covered : CoveredBy scale carrier boxes small_3588509_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3588509_left_root small_3588509_left_fuel small_3588509_left_count small_3588509_left_encoded small_3588509_left_checked

theorem cover_3588509 : CoveredBy scale carrier boxes root_3588509 := by
  apply coveredBy_split_literal root_3588509 small_3588509_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0254.root_3588515 coord0 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_3588509_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0254.cover_3588515
#print axioms cover_3588509

def root_3588405 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3588405_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3588405_left_fuel : Nat := 18
def small_3588405_left_count : Nat := 47
def small_3588405_left_encoded : String := "120700F608A91303120700F8000000050000000112073CF80000000108A91307120701060000000308A9130912070108000000040000000A12073D0805000104135D44FB0000000500000002135D80FB0000000204548A01138670F60CFD9C03000000050000000A000000001386ACF6000000000CFD9C030F34D0F800000005000000010F350CF80000000104548A0713867106000000030CFD9C09000000050F350D0800000005000000040000000A000000040000000A00000000"
theorem small_3588405_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3588405_left_root small_3588405_left_fuel small_3588405_left_count small_3588405_left_encoded = true := by
  decide +kernel
theorem small_3588405_left_covered : CoveredBy scale carrier boxes small_3588405_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3588405_left_root small_3588405_left_fuel small_3588405_left_count small_3588405_left_encoded small_3588405_left_checked

theorem cover_3588405 : CoveredBy scale carrier boxes root_3588405 := by
  apply coveredBy_split_literal root_3588405 small_3588405_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0254.root_3588509 coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_3588405_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0254.cover_3588509
#print axioms cover_3588405

def root_3588400 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3588400_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3588400_right_fuel : Nat := 1
def small_3588400_right_count : Nat := 1
def small_3588400_right_encoded : String := "00000004"
theorem small_3588400_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3588400_right_root small_3588400_right_fuel small_3588400_right_count small_3588400_right_encoded = true := by
  decide +kernel
theorem small_3588400_right_covered : CoveredBy scale carrier boxes small_3588400_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3588400_right_root small_3588400_right_fuel small_3588400_right_count small_3588400_right_encoded small_3588400_right_checked

theorem cover_3588400 : CoveredBy scale carrier boxes root_3588400 := by
  apply coveredBy_split_literal root_3588400 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0254.root_3588405 small_3588400_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0254.cover_3588405
  · exact small_3588400_right_covered
#print axioms cover_3588400

def root_3586092 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3586092 : CoveredBy scale carrier boxes root_3586092 := by
  apply coveredBy_split_literal root_3586092 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1356.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0254.root_3588400 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1356.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0254.cover_3588400
#print axioms cover_3586092

def root_3586087 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3586087_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3586087_right_fuel : Nat := 1
def small_3586087_right_count : Nat := 1
def small_3586087_right_encoded : String := "00000003"
theorem small_3586087_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3586087_right_root small_3586087_right_fuel small_3586087_right_count small_3586087_right_encoded = true := by
  decide +kernel
theorem small_3586087_right_covered : CoveredBy scale carrier boxes small_3586087_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3586087_right_root small_3586087_right_fuel small_3586087_right_count small_3586087_right_encoded small_3586087_right_checked

theorem cover_3586087 : CoveredBy scale carrier boxes root_3586087 := by
  apply coveredBy_split_literal root_3586087 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0254.root_3586092 small_3586087_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0254.cover_3586092
  · exact small_3586087_right_covered
#print axioms cover_3586087

def root_3585839 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3585839_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3585839_left_fuel : Nat := 18
def small_3585839_left_count : Nat := 115
def small_3585839_left_encoded : String := "1151E907000000030A0001081151E9090000000408A91301120700F608A91303000000050000000A0000000012073CF60000000008A91303120700F805000104135D44FB05000106135D45070000000300000007135D81070500010800000005000000070000000300000002135D80FB0000000205000106135D45070000000300000007135D810705000108135D4509000000040000000800000007000000030000000112073CF80000000105000104135D44FB050001060000000A135D810705000108135D4509000000040CFD9C010000000A0F350CF600000000000000090000000A0000000300000002135D80FB0000000205000106135D45070000000305000108135D4509000000040CFD9C010000000A0F350CF600000000000000090000000A135D810705000108135D4509000000040CFD9C010F34D0F60CFD9C030F34D0F800000008000000010000000A000000000F350CF6000000000CFD9C030F34D0F8000000080000000100000008135D81090CFD9C010000000A0F350CF6000000000CFD9C030F34D0F800000007000000010000000A00000004000000031152250908A913010000000A12073CF60000000008A91303120700F800000007000000010000000A00000004"
theorem small_3585839_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3585839_left_root small_3585839_left_fuel small_3585839_left_count small_3585839_left_encoded = true := by
  decide +kernel
theorem small_3585839_left_covered : CoveredBy scale carrier boxes small_3585839_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3585839_left_root small_3585839_left_fuel small_3585839_left_count small_3585839_left_encoded small_3585839_left_checked

theorem cover_3585839 : CoveredBy scale carrier boxes root_3585839 := by
  apply coveredBy_split_literal root_3585839 small_3585839_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0254.root_3586087 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_3585839_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0254.cover_3586087
#print axioms cover_3585839

def root_3585834 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3585834_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3585834_right_fuel : Nat := 1
def small_3585834_right_count : Nat := 1
def small_3585834_right_encoded : String := "00000002"
theorem small_3585834_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3585834_right_root small_3585834_right_fuel small_3585834_right_count small_3585834_right_encoded = true := by
  decide +kernel
theorem small_3585834_right_covered : CoveredBy scale carrier boxes small_3585834_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3585834_right_root small_3585834_right_fuel small_3585834_right_count small_3585834_right_encoded small_3585834_right_checked

theorem cover_3585834 : CoveredBy scale carrier boxes root_3585834 := by
  apply coveredBy_split_literal root_3585834 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0254.root_3585839 small_3585834_right_root coord2 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0254.cover_3585839
  · exact small_3585834_right_covered
#print axioms cover_3585834

def root_3607411 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3607411_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3607411_left_fuel : Nat := 21
def small_3607411_left_count : Nat := 263
def small_3607411_left_encoded : String := "120700F808A912FB12073D0408A91307120701060000000305000108135D4509000000040CFD9C010F34D0F604548A03000000051386ACF8000000010CFD9BFB000000050F34D1040000000200000009000000000F350CF60000000004548A03138670F80CFD9BFB000000080F34D104000000020000000A000000011386ACF8000000010CFD9BFB0F350D0404548A0713867106000000030000000800000008000000020F34D104000000020000000A135D81090CFD9C010F34D0F604548A03138670F80CFD9BFB0000000500000009000000011386ACF8000000010CFD9BFB0F350D04000000050000000200000009000000000F350CF60000000004548A03138670F80CFD9BFB0F350D0404548A07000000051386AD060000000700000003000000020F34D1040000000200000009000000011386ACF8000000010CFD9BFB0F350D0404548A0713867106000000030C9A86F60F878D010C9A87040000000500000009000000000F875101000000000C9A87040000000A000000081386AD060C9A86F60F878D010C9A87040F8750FB00000005000000020F878CFB00000002078001080000000800000007000000000F875101000000000000000800000003000000020F34D1040000000204548A07000000091386AD060C9A86F60000000900000007000000030000000412073D0605000108135D4509000000040CFD9C010F34D0F604548A03138670F80CFD9BFB0F350D0400000005000000020F34D1040000000200000007000000011386ACF8000000010CFD9BFB0F350D040CFD9C070000000500000008000000020F34D104000000020CFD9C070F34D10600000003028001080000000813D7ED090AD3578100000007000000070000000400000008000000000F350CF60000000004548A03138670F80CFD9BFB0000000800000007000000011386ACF8000000010CFD9BFB000000080F34D1040000000200000008135D81090CFD9C010F34D0F604548A03138670F80CFD9BFB0F350D04000000070000000200000007000000011386ACF8000000010CFD9BFB0F350D040CFD9C070F34D106000000030C9A87040F8750FB00000005000000020F878CFB000000020000000700000007000000020F34D1040000000200000007000000000F350CF60000000004548A03138670F800000007000000011386ACF8000000010CFD9BFB0F350D040CFD9C070F34D1060000000300000007000000070000000200000007000000040000000300000002120701040000000208A91307120701060000000305000108135D4509000000040CFD9C0100000009000000090000000912073D0605000108135D4509000000040CFD9C010F34D0F604548A03000000071386ACF800000001045489FB1386AD040CFD9C0700000006000000070000000200000006000000000F350CF60000000000000007000000070000000300000001"
theorem small_3607411_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3607411_left_root small_3607411_left_fuel small_3607411_left_count small_3607411_left_encoded = true := by
  decide +kernel
theorem small_3607411_left_covered : CoveredBy scale carrier boxes small_3607411_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3607411_left_root small_3607411_left_fuel small_3607411_left_count small_3607411_left_encoded small_3607411_left_checked

theorem cover_3607411 : CoveredBy scale carrier boxes root_3607411 := by
  apply coveredBy_split_literal root_3607411 small_3607411_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1365.root coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_3607411_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1365.covered
#print axioms cover_3607411

def root_3607405 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3607405_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3607405_left_fuel : Nat := 1
def small_3607405_left_count : Nat := 1
def small_3607405_left_encoded : String := "00000000"
theorem small_3607405_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3607405_left_root small_3607405_left_fuel small_3607405_left_count small_3607405_left_encoded = true := by
  decide +kernel
theorem small_3607405_left_covered : CoveredBy scale carrier boxes small_3607405_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3607405_left_root small_3607405_left_fuel small_3607405_left_count small_3607405_left_encoded small_3607405_left_checked

theorem cover_3607405 : CoveredBy scale carrier boxes root_3607405 := by
  apply coveredBy_split_literal root_3607405 small_3607405_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0254.root_3607411 coord0 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_3607405_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0254.cover_3607411
#print axioms cover_3607405

def root_3605961 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3605961 : CoveredBy scale carrier boxes root_3605961 := by
  apply coveredBy_split_literal root_3605961 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1364.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0254.root_3607405 coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1364.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0254.cover_3607405
#print axioms cover_3605961

def root_3605955 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3605955_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3605955_left_fuel : Nat := 1
def small_3605955_left_count : Nat := 1
def small_3605955_left_encoded : String := "00000004"
theorem small_3605955_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3605955_left_root small_3605955_left_fuel small_3605955_left_count small_3605955_left_encoded = true := by
  decide +kernel
theorem small_3605955_left_covered : CoveredBy scale carrier boxes small_3605955_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3605955_left_root small_3605955_left_fuel small_3605955_left_count small_3605955_left_encoded small_3605955_left_checked

theorem cover_3605955 : CoveredBy scale carrier boxes root_3605955 := by
  apply coveredBy_split_literal root_3605955 small_3605955_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0254.root_3605961 coord4 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_3605955_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0254.cover_3605961
#print axioms cover_3605955

def root_3613539 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3613539_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3613539_left_fuel : Nat := 25
def small_3613539_left_count : Nat := 459
def small_3613539_left_encoded : String := "0F34D0F60CFD9C030F34D0F80CFD9BFB0F350D0404548A0713867106000000030CFD9C090F34D108000000040C9A870400000009000000090F350D080C9A87040F8750FB0C9A870800000005000000090000000200000009000000041386AD060CFD9C090F34D108000000040C9A8704000000070F878CFB00000002000000070F350D080C9A87040F8750FB0C9A87080F875109000000040AD357810000000510D13CF6000000000AD357830000000510D13CF800000001067ECE870000000512EA950600000007000000030F878D090AD3578110D100F6000000050000000010D13CF6000000000000000700000004000000020F878CFB000000020C9A87080F875109000000040AD3578100000009000000090F878D090AD357810000000900000009000000040000000400000003000000020F34D1040000000204548A07000000091386AD060CFD9C090F34D10800000004000000070000000900000003000000010F350CF8000000010CFD9BFB0F350D0404548A0713867106000000030CFD9C090F34D108000000040C9A86F80F878D030C9A87040F8750FB0AD3578110D100F60000000900000000000000090000000200000009000000010F875103000000010C9A87040F8750FB0AD357810000000810D13CF600000000022A4587000000080000000A00000002000000090F350D080C9A86F80F878D030C9A87040F8750FB0C9A87080F875109000000040000000900000009000000020F878CFB0000000200000009000000010F875103000000010C9A87040F8750FB0C9A87080F875109000000040AD3578110D100F6000000090000000010D13CF600000000022A45870000000913E201060B4D43F80000000900000006000000030F878D090AD3578110D100F6000000080000000010D13CF600000000022A45870000000913E201060B4D43F8000000091080110300000001000000090000000300000004000000020F878CFB000000020C9A87080F875109000000040000000600000009000000041386AD060CFD9C090F34D108000000040C9A86F80F878D030C9A87040F8750FB0000000A000000020F878CFB000000020AD3578110D100F60000000A0000000010D13CF600000000067ECE870000000900000007000000010F875103000000010C9A87040F8750FB0000000A000000020F878CFB000000020AD357810000000A10D13CF600000000067ECE87000000090000000A0F350D080C9A86F80F878D030C9A87040F8750FB0C9A87080F875109000000040AD3578110D100F6067ECE8712EA590600000003000000090000000A0000000010D13CF600000000067ECE8712EA5906000000030DE7C9F8000000090E5FD903000000010B4D4404108010FB0B4D44080000000900000009000000020000000912EA95060DE7C9F80E6015030B4D4404108010FB0000000A0000000210804CFB000000020B4D44080000000900000007000000010E5FD903000000010B4D44040000000A10804CFB000000020B4D44080000000600000009000000030F878D090AD357810000000A10D13CF600000000067ECE8712EA5906000000030DE7C9F8000000090E5FD903000000010B4D44040000000A000000090000000A00000004000000020F878CFB000000020C9A87080F875109000000040AD3578110D100F6000000090000000010D13CF600000000067ECE870000000912EA95060DE7C9F8000000090E5FD9030000000100000006000000030F878D090AD3578110D100F6000000090000000010D13CF600000000067ECE870000000912EA95060DE7C9F8000000070E5FD90300000001000000090000000300000004000000010F875103000000010C9A87040F8750FB0C9A87080F875109000000040AD3578110D100F6067ECE8712EA5906000000030B4D43F800000006000000060000000A0000000010D13CF600000000067ECE8712EA5906000000030B4D43F810804D030B4D440400000006000000060000000110801103000000010000000612EA95060B4D43F810804D030B4D4404000000060000000600000001108011030000000100000006000000030F878D090AD357810000000A10D13CF600000000067ECE8712EA5906000000030B4D43F80000000A10801103000000010000000A0000000A00000004000000020F878CFB000000020C9A87080F875109000000040AD357810000000610D13CF600000000000000060F878D090AD3578110D100F6067ECE87000000090000000A0000000010D13CF600000000067ECE870000000912EA95060B4D43F810804D030DE7CA0400000006000000060000000110801103000000010000000600000003000000040000000400000003000000020F34D1040000000204548A0713867106000000030CFD9C090F34D1080000000400000009000000091386AD060CFD9C090F34D108000000040C9A86F8000000090F87510300000001000000090F350D080C9A86F80F878D0300000009000000010F875103000000010C9A87080000000600000009000000040000000300000000"
theorem small_3613539_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3613539_left_root small_3613539_left_fuel small_3613539_left_count small_3613539_left_encoded = true := by
  decide +kernel
theorem small_3613539_left_covered : CoveredBy scale carrier boxes small_3613539_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3613539_left_root small_3613539_left_fuel small_3613539_left_count small_3613539_left_encoded small_3613539_left_checked

theorem cover_3613539 : CoveredBy scale carrier boxes root_3613539 := by
  apply coveredBy_split_literal root_3613539 small_3613539_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1367.root coord0 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_3613539_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1367.covered
#print axioms cover_3613539

def root_3613534 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3613534_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3613534_right_fuel : Nat := 1
def small_3613534_right_count : Nat := 1
def small_3613534_right_encoded : String := "00000004"
theorem small_3613534_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3613534_right_root small_3613534_right_fuel small_3613534_right_count small_3613534_right_encoded = true := by
  decide +kernel
theorem small_3613534_right_covered : CoveredBy scale carrier boxes small_3613534_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3613534_right_root small_3613534_right_fuel small_3613534_right_count small_3613534_right_encoded small_3613534_right_checked

theorem cover_3613534 : CoveredBy scale carrier boxes root_3613534 := by
  apply coveredBy_split_literal root_3613534 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0254.root_3613539 small_3613534_right_root coord4 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0254.cover_3613539
  · exact small_3613534_right_covered
#print axioms cover_3613534

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0254
