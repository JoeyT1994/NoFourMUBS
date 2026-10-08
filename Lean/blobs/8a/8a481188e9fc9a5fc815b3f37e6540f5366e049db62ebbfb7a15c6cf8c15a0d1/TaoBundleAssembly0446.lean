import TaoBundleAssembly0408
import TaoBundleAssembly0426
import TaoBundleAssembly0436
import TaoBundleAssembly0437
import TaoBundleAssembly0442
import TaoBundleAssembly0445
import TaoBundleChunkBatch0604
import TaoBundleChunkBatch0606
import TaoBundleChunkBatch0607
import TaoBundleChunkBatch0608
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0446
def root_6438991 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6438991_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6438991_left_fuel : Nat := 16
def small_6438991_left_count : Nat := 89
def small_6438991_left_encoded : String := "120700FE0CFD9BF70F350D000CFD9C030F34D0F804548A0513867104000000020CFD9C07000000050F350D0600000005000000031386AD040CFD9C070F34D106000000030000000A0F350D0604548A09000000051386ACFE000000040C9A8700000000050F878CF7000000000000000A0000000300000002000000010F350CF80000000104548A0513867104000000020CFD9C070F34D106000000030000000A0F350D0604548A09138670FE0000000A000000041386ACFE000000040C9A87000F8750F70C9A86F80F878D0300000005000000010000000A000000000F878CF7000000000C9A86F8000000080000000A000000031386AD040CFD9C070000000A0000000A00000002000000000F34D100000000000CFD9C030F34D0F804548A05000000081386AD040CFD9C070000000A0000000800000002000000010F350CF80000000104548A0513867104000000020CFD9C070000000A000000080000000A00000004"
theorem small_6438991_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6438991_left_root small_6438991_left_fuel small_6438991_left_count small_6438991_left_encoded = true := by
  decide +kernel
theorem small_6438991_left_covered : CoveredBy scale carrier boxes small_6438991_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6438991_left_root small_6438991_left_fuel small_6438991_left_count small_6438991_left_encoded small_6438991_left_checked

theorem cover_6438991 : CoveredBy scale carrier boxes root_6438991 := by
  apply coveredBy_split_literal root_6438991 small_6438991_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0445.root_6439181 coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_6438991_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0445.cover_6439181
#print axioms cover_6438991

def root_6438986 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6438986_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6438986_right_fuel : Nat := 1
def small_6438986_right_count : Nat := 1
def small_6438986_right_encoded : String := "00000003"
theorem small_6438986_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6438986_right_root small_6438986_right_fuel small_6438986_right_count small_6438986_right_encoded = true := by
  decide +kernel
theorem small_6438986_right_covered : CoveredBy scale carrier boxes small_6438986_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6438986_right_root small_6438986_right_fuel small_6438986_right_count small_6438986_right_encoded small_6438986_right_checked

theorem cover_6438986 : CoveredBy scale carrier boxes root_6438986 := by
  apply coveredBy_split_literal root_6438986 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0446.root_6438991 small_6438986_right_root coord3 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0446.cover_6438991
  · exact small_6438986_right_covered
#print axioms cover_6438986

def root_6438384 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6438384_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6438384_left_fuel : Nat := 25
def small_6438384_left_count : Nat := 285
def small_6438384_left_encoded : String := "120701060000000308A91309120700FE0CFD9BF70F350D000CFD9C030000000A0000000A000000000000000A0000000412073CFE000000040CFD9BF70F350D000CFD9C030F34D0F804548A05138671040000000204548A0713867106000000030CFD9C090F34D0FE0C9A87000000000500000008000000040F350CFE000000040C9A87000F8750F700000009000000000F878CF7000000000C9A86FE00000008000000061386AD060CFD9C090F34D0FE0C9A87000F8750F7000000050000000000000008000000040F350CFE000000040C9A87000F8750F70C9A86FE0000000900000006000000000F878CF70000000000000008000000031386AD0404548A0713867106000000030CFD9C090000000A000000091386AD060CFD9C090F34D0FE0000000A000000040F350CFE000000040C9A8700000000090F878CF7000000000C9A86FE000000090F87510900000004000000090000000300000002000000010F350CF80000000104548A05138671040000000204548A0713867106000000030CFD9C090F34D0FE0000000A000000040F350CFE000000040C9A87000F8750F70C9A86F80F878D030C9A86FE0F878D090000000A000000040F87510900000004022A45850000000600000009000000010000000A000000000F878CF7000000000C9A86F80F878D030C9A86FE000000080F8751090000000400000008000000010000000A1386AD060CFD9C090F34D0FE0000000A000000040F350CFE000000040C9A87000F8750F70C9A86F80F878D030C9A86FE0F878D09022A4585000000080000000A000000040F87510900000004022A45850000000613E20104067ECE8712EA5906000000030000000612EA95060B4D440000000006000000080000000300000002000000010F875103000000010C9A86FE0000000A0F87510900000004022A458513E1C50400000002067ECE870000000A000000080000000A000000000F878CF7000000000C9A86F8000000080F875103000000010C9A86FE000000080F8751090000000400000005000000031386AD0404548A0713867106000000030CFD9C090000000A0F350CFE000000040C9A87000000000A0F878CF7000000000000000A1386AD060CFD9C090000000A0F350CFE000000040C9A87000F8750F70C9A86F80F878D030000000A000000010000000A000000000F878CF7000000000C9A86F80F878D030000000A000000010000000A0000000300000002000000000F34D100000000000CFD9C030F34D0F804548A05138671040000000204548A07138671060000000300000008000000081386AD0404548A0713867106000000030CFD9C090000000A0F350CFE000000040C9A86FE000000080F875109000000040AD3577700000009000000081386AD060CFD9C090000000A0F350CFE000000040C9A86FE000000080F87510900000004000000080000000300000002000000010F350CF80000000104548A05138671040000000204548A0713867106000000030CFD9C090000000A000000081386AD060CFD9C090000000A00000008000000031386AD0404548A070000000A0000000A00000002"
theorem small_6438384_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6438384_left_root small_6438384_left_fuel small_6438384_left_count small_6438384_left_encoded = true := by
  decide +kernel
theorem small_6438384_left_covered : CoveredBy scale carrier boxes small_6438384_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6438384_left_root small_6438384_left_fuel small_6438384_left_count small_6438384_left_encoded small_6438384_left_checked

theorem cover_6438384 : CoveredBy scale carrier boxes root_6438384 := by
  apply coveredBy_split_literal root_6438384 small_6438384_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0446.root_6438986 coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_6438384_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0446.cover_6438986
#print axioms cover_6438384

def root_6438378 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6438378_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6438378_left_fuel : Nat := 1
def small_6438378_left_count : Nat := 1
def small_6438378_left_encoded : String := "00000002"
theorem small_6438378_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6438378_left_root small_6438378_left_fuel small_6438378_left_count small_6438378_left_encoded = true := by
  decide +kernel
theorem small_6438378_left_covered : CoveredBy scale carrier boxes small_6438378_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6438378_left_root small_6438378_left_fuel small_6438378_left_count small_6438378_left_encoded small_6438378_left_checked

theorem cover_6438378 : CoveredBy scale carrier boxes root_6438378 := by
  apply coveredBy_split_literal root_6438378 small_6438378_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0446.root_6438384 coord2 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_6438378_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0446.cover_6438384
#print axioms cover_6438378

def root_6438377 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6438377_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6438377_right_fuel : Nat := 29
def small_6438377_right_count : Nat := 453
def small_6438377_right_encoded : String := "12073D0408A91307120701060000000308A91309120700FE0000000A0000000412073CFE000000040CFD9BF70F350D000CFD9C030F34D0F800000009000000010F350CF8000000010CFD9C050F34D104000000020000000A0000000A000000000F34D100000000000CFD9C030F34D0F80CFD9C050F34D1040000000204548A070000000A0000000A0000000A000000010F350CF8000000010000000A12073D0608A91309120700FE0CFD9BF70F350D000CFD9C030F34D0F80CFD9C050F34D104000000020000000A0000000A000000010F350CF8000000010000000A000000000F34D100000000000000000A0000000412073CFE000000040CFD9BF70F350D000CFD9C030F34D0F80CFD9C050F34D104000000020CFD9C070F34D106000000030CFD9C090F34D0FE0000000A00000004000000090F350D060CFD9C090F34D0FE0C9A87000F8750F70C9A87060F875107000000030000000A00000009000000000F878CF7000000000C9A87060F875107000000030000000A0000000A000000040F350CFE000000040C9A87000F8750F70C9A87060F875107000000030C9A86FE000000090F875109000000040000000900000009000000000F878CF7000000000C9A87060F875107000000030C9A86FE0F878D090AD3578310D100F80AD3578510D10104000000020DE7CA00000000090E6014F70000000000000007000000090000000110D13CF8000000010AD3578510D10104000000020DE7CA000000000A0E6014F700000000000000070000000A000000040F875109000000040AD3578310D100F8000000090000000110D13CF8000000010AD3578500000007000000070F878D070C9A86FE0F878D090AD35783000000090000000A000000040F875109000000040000000900000003000000030F350D040CFD9C070F34D10600000003000000090F350D060CFD9C090F34D0FE0000000A00000004000000090000000300000002000000010F350CF8000000010CFD9C050F34D104000000020CFD9C070F34D106000000030CFD9C090000000A0F350CFE000000040C9A87000000000A0F878CF7000000000000000A0F350D060CFD9C090F34D0FE0C9A87000000000A0000000A000000040F350CFE000000040C9A87000F8750F70C9A86F80F878D030C9A87060F875107000000030C9A86FE0F878D090AD3578510D10104000000020B4D44000000000A0000000A0000000A000000040F875109000000040AD3578510D10104000000020B4D4400108010F70DE7C9F800000009000000070000000010804CF7000000000000000710D13D0400000009000000020F878D070C9A86FE0000000A0F875109000000040000000900000003000000010F875103000000010C9A87060F875107000000030C9A86FE0000000A0F875109000000040AD3578510D101040000000200000005000000050000000A000000000F878CF7000000000C9A86F80F878D030C9A87060F875107000000030C9A86FE0F878D090000000A000000040F875109000000040AD3578500000007000000050F878D070C9A86FE0000000A0F875109000000040AD3578510D10104000000020000000A0000000500000003000000010F875103000000010C9A87060F875107000000030C9A86FE0000000A000000050000000A000000030F350D040CFD9C070F34D106000000030000000A0F350D060CFD9C090F34D0FE0000000A000000040F350CFE000000040C9A87000F8750F70C9A86F80F878D0300000009000000010000000A000000000F878CF7000000000C9A86F80F878D030000000A000000010000000A0000000300000002000000000F34D100000000000CFD9C030F34D0F80CFD9C050F34D104000000020CFD9C070F34D106000000030CFD9C090000000A0F350CFE000000040C9A86FE0000000A0F875109000000040AD3577710D13D0000000009000000000000000A0F350D060CFD9C090F34D0FE0000000A000000040F350CFE000000040C9A87060F875107000000030C9A86FE0F878D090AD3577710D13D000AD357830000000710D13CF800000001000000070000000000000007000000040F87510900000004000000070F878D070C9A86FE0F878D090000000A000000040F875109000000040AD3577710D13D0000000007000000000000000700000003000000030F350D040CFD9C070F34D106000000030000000A0F350D060CFD9C090000000A0F350CFE000000040C9A87040000000A0F878D050C9A87060F875107000000030000000A0000000A000000020000000300000002000000010F350CF8000000010CFD9C050F34D104000000020CFD9C070F34D106000000030000000A0F350D060CFD9C090F34D0FE0000000A000000040F350CFE000000040C9A86F80F878D030C9A87060F875107000000030C9A86FE0F878D090000000A00000004000000050000000A000000010F8751030000000100000005000000030F350D040CFD9C070000000A0000000A000000020000000300000002"
theorem small_6438377_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6438377_right_root small_6438377_right_fuel small_6438377_right_count small_6438377_right_encoded = true := by
  decide +kernel
theorem small_6438377_right_covered : CoveredBy scale carrier boxes small_6438377_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6438377_right_root small_6438377_right_fuel small_6438377_right_count small_6438377_right_encoded small_6438377_right_checked

theorem cover_6438377 : CoveredBy scale carrier boxes root_6438377 := by
  apply coveredBy_split_literal root_6438377 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0446.root_6438378 small_6438377_right_root coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0446.cover_6438378
  · exact small_6438377_right_covered
#print axioms cover_6438377

def root_6438371 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6438371_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6438371_left_fuel : Nat := 1
def small_6438371_left_count : Nat := 1
def small_6438371_left_encoded : String := "00000001"
theorem small_6438371_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6438371_left_root small_6438371_left_fuel small_6438371_left_count small_6438371_left_encoded = true := by
  decide +kernel
theorem small_6438371_left_covered : CoveredBy scale carrier boxes small_6438371_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6438371_left_root small_6438371_left_fuel small_6438371_left_count small_6438371_left_encoded small_6438371_left_checked

theorem cover_6438371 : CoveredBy scale carrier boxes root_6438371 := by
  apply coveredBy_split_literal root_6438371 small_6438371_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0446.root_6438377 coord1 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_6438371_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0446.cover_6438377
#print axioms cover_6438371

def root_6437307 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6437307_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6437307_left_fuel : Nat := 24
def small_6437307_left_count : Nat := 495
def small_6437307_left_encoded : String := "120700F808A91305120701040000000208A91307120701060000000308A91309120700FE0CFD9BF7000000050F34D1000000000004548A03000000051386ACF80000000104548A05000000050000000A0000000412073CFE000000040CFD9BF70F350D0004548A03000000091386ACF80000000104548A05138671040000000204548A0713867106000000030CFD9C090F34D0FE0000000500000004000000091386AD060CFD9C090F34D0FE0000000500000004000000090000000300000009000000000F34D1000000000004548A03138670F804548A05138671040000000204548A0700000006000000061386AD040000000900000002000000011386ACF80000000104548A05138671040000000204548A07138671060000000300000008000000081386AD0404548A0713867106000000030CFD9C090F34D0FE0000000800000004000000091386AD060CFD9C090F34D0FE00000008000000040F350CFE000000040C9A86FE0000000800000006000000030000000212073D0608A91309120700FE0CFD9BF70F350D0000000005000000000F34D1000000000004548A03138670F800000008000000011386ACF80000000104548A05000000081386AD040CFD9C070F34D106000000030000000800000008000000020000000412073CFE000000040CFD9BF70F350D0004548A03138670F804548A0513867104000000020CFD9C070F34D106000000030CFD9C0900000005000000060F350D060CFD9C09000000050F350CFE000000040C9A8700000000050F878CF70000000000000006000000031386AD040CFD9C070F34D10600000003000000090F350D060CFD9C090F34D0FE0000000500000004000000090000000300000002000000011386ACF80000000104548A0513867104000000020CFD9C070F34D106000000030CFD9C090F34D0FE00000005000000040F350CFE000000040C9A8700000000060F878CF700000000000000060F350D060CFD9C090F34D0FE00000005000000040F350CFE000000040C9A87000F8750F70C9A87060F875107000000030C9A86FE000000050F87510900000004000000060F878D070C9A86FE000000050000000600000003000000000F878CF7000000000C9A87060000000800000008000000031386AD040CFD9C070F34D106000000030CFD9C090F34D0FE0000000900000004000000090F350D060CFD9C090F34D0FE0C9A8700000000050F878CF7000000000C9A87060000000500000008000000040F350CFE000000040C9A87000F8750F70C9A87060F875107000000030C9A86FE000000090F875109000000040000000900000009000000000F878CF7000000000C9A87060F875107000000030C9A86FE000000080F87510900000004000000070F878D070C9A86FE000000090F8751090000000400000009000000030000000300000002000000000F34D1000000000004548A03138670F804548A0513867104000000020CFD9C070F34D1060000000300000006000000081386AD040CFD9C070F34D106000000030CFD9C090F34D0FE0000000800000004000000080F350D060CFD9C090F34D0FE00000008000000040F350CFE000000040C9A870600000007000000060000000300000002000000011386ACF80000000104548A0513867104000000020CFD9C070F34D1060000000300000008000000081386AD040CFD9C070F34D106000000030CFD9C090F34D0FE0000000800000004000000080F350D060CFD9C090F34D0FE00000008000000040F350CFE000000040C9A87060F87510700000003000000080000000800000003000000020000000312073D0408A91307120701060000000308A91309120700FE0CFD9BF7000000090F34D1000000000004548A03000000090000000A000000040000000912073D0608A91309120700FE0CFD9BF70F350D0004548A03138670F800000005000000011386ACF8000000010CFD9C050F34D104000000020CFD9C07000000050000000A0000000A000000000F34D1000000000004548A03138670F80CFD9C050F34D104000000020000000A0000000A000000010000000A0000000412073CFE000000040CFD9BF70F350D0004548A03000000091386ACF8000000010CFD9C050F34D104000000020CFD9C070F34D10600000003000000090F350D060CFD9C090F34D0FE0C9A8700000000090F878CF7000000000C9A87060F87510700000003067ECE83000000090000000A0000000900000004000000090000000300000009000000000F34D1000000000004548A03138670F80CFD9C050F34D104000000020CFD9C070F34D10600000003000000090F350D060CFD9C090F34D0FE0C9A87060F87510700000003000000080000000800000004000000090000000300000009000000011386ACF8000000010CFD9C050F34D104000000020CFD9C070F34D106000000030CFD9C090000000A000000090F350D060CFD9C090F34D0FE0C9A87060F875107000000030000000800000008000000040F350CFE000000040C9A87060F875107000000030C9A86FE0F878D090AD3577710D13D00000000070000000000000007000000040F87510900000004000000070F878D070C9A86FE0F878D090AD357770000000900000007000000040F875109000000040000000700000003000000030F350D040CFD9C070F34D10600000003000000090F350D060CFD9C090000000A000000090000000300000002000000030000000200000001"
theorem small_6437307_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6437307_left_root small_6437307_left_fuel small_6437307_left_count small_6437307_left_encoded = true := by
  decide +kernel
theorem small_6437307_left_covered : CoveredBy scale carrier boxes small_6437307_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6437307_left_root small_6437307_left_fuel small_6437307_left_count small_6437307_left_encoded small_6437307_left_checked

theorem cover_6437307 : CoveredBy scale carrier boxes root_6437307 := by
  apply coveredBy_split_literal root_6437307 small_6437307_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0446.root_6438371 coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_6437307_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0446.cover_6438371
#print axioms cover_6437307

def root_6437302 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6437302_right_root : ZRayBox := fun j => (#[⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6437302_right_fuel : Nat := 1
def small_6437302_right_count : Nat := 1
def small_6437302_right_encoded : String := "00000000"
theorem small_6437302_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6437302_right_root small_6437302_right_fuel small_6437302_right_count small_6437302_right_encoded = true := by
  decide +kernel
theorem small_6437302_right_covered : CoveredBy scale carrier boxes small_6437302_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6437302_right_root small_6437302_right_fuel small_6437302_right_count small_6437302_right_encoded small_6437302_right_checked

theorem cover_6437302 : CoveredBy scale carrier boxes root_6437302 := by
  apply coveredBy_split_literal root_6437302 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0446.root_6437307 small_6437302_right_root coord0 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0446.cover_6437307
  · exact small_6437302_right_covered
#print axioms cover_6437302

def root_6437301 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6437301 : CoveredBy scale carrier boxes root_6437301 := by
  apply coveredBy_split_literal root_6437301 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0446.root_6437302 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2422.root coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0446.cover_6437302
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2422.covered
#print axioms cover_6437301

def root_6437296 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6437296_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6437296_right_fuel : Nat := 1
def small_6437296_right_count : Nat := 1
def small_6437296_right_encoded : String := "00000004"
theorem small_6437296_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6437296_right_root small_6437296_right_fuel small_6437296_right_count small_6437296_right_encoded = true := by
  decide +kernel
theorem small_6437296_right_covered : CoveredBy scale carrier boxes small_6437296_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6437296_right_root small_6437296_right_fuel small_6437296_right_count small_6437296_right_encoded small_6437296_right_checked

theorem cover_6437296 : CoveredBy scale carrier boxes root_6437296 := by
  apply coveredBy_split_literal root_6437296 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0446.root_6437301 small_6437296_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0446.cover_6437301
  · exact small_6437296_right_covered
#print axioms cover_6437296

def root_6437295 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6437295 : CoveredBy scale carrier boxes root_6437295 := by
  apply coveredBy_split_literal root_6437295 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0446.root_6437296 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2423.root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0446.cover_6437296
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2423.covered
#print axioms cover_6437295

def root_6437290 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6437290_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6437290_right_fuel : Nat := 1
def small_6437290_right_count : Nat := 1
def small_6437290_right_encoded : String := "00000003"
theorem small_6437290_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6437290_right_root small_6437290_right_fuel small_6437290_right_count small_6437290_right_encoded = true := by
  decide +kernel
theorem small_6437290_right_covered : CoveredBy scale carrier boxes small_6437290_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6437290_right_root small_6437290_right_fuel small_6437290_right_count small_6437290_right_encoded small_6437290_right_checked

theorem cover_6437290 : CoveredBy scale carrier boxes root_6437290 := by
  apply coveredBy_split_literal root_6437290 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0446.root_6437295 small_6437290_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0446.cover_6437295
  · exact small_6437290_right_covered
#print axioms cover_6437290

def root_6430608 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6430608 : CoveredBy scale carrier boxes root_6430608 := by
  apply coveredBy_split_literal root_6430608 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0445.root_6430609 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0446.root_6437290 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0445.cover_6430609
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0446.cover_6437290
#print axioms cover_6430608

def root_6430603 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6430603_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6430603_right_fuel : Nat := 1
def small_6430603_right_count : Nat := 1
def small_6430603_right_encoded : String := "00000002"
theorem small_6430603_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6430603_right_root small_6430603_right_fuel small_6430603_right_count small_6430603_right_encoded = true := by
  decide +kernel
theorem small_6430603_right_covered : CoveredBy scale carrier boxes small_6430603_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6430603_right_root small_6430603_right_fuel small_6430603_right_count small_6430603_right_encoded small_6430603_right_checked

theorem cover_6430603 : CoveredBy scale carrier boxes root_6430603 := by
  apply coveredBy_split_literal root_6430603 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0446.root_6430608 small_6430603_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0446.cover_6430608
  · exact small_6430603_right_covered
#print axioms cover_6430603

def root_6429147 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6429147 : CoveredBy scale carrier boxes root_6429147 := by
  apply coveredBy_split_literal root_6429147 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2416.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0446.root_6430603 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2416.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0446.cover_6430603
#print axioms cover_6429147

def root_6429142 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6429142_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6429142_right_fuel : Nat := 1
def small_6429142_right_count : Nat := 1
def small_6429142_right_encoded : String := "00000001"
theorem small_6429142_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6429142_right_root small_6429142_right_fuel small_6429142_right_count small_6429142_right_encoded = true := by
  decide +kernel
theorem small_6429142_right_covered : CoveredBy scale carrier boxes small_6429142_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6429142_right_root small_6429142_right_fuel small_6429142_right_count small_6429142_right_encoded small_6429142_right_checked

theorem cover_6429142 : CoveredBy scale carrier boxes root_6429142 := by
  apply coveredBy_split_literal root_6429142 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0446.root_6429147 small_6429142_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0446.cover_6429147
  · exact small_6429142_right_covered
#print axioms cover_6429142

def root_6429141 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6429141 : CoveredBy scale carrier boxes root_6429141 := by
  apply coveredBy_split_literal root_6429141 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0446.root_6429142 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2424.root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0446.cover_6429142
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2424.covered
#print axioms cover_6429141

def root_6429135 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6429135_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6429135_left_fuel : Nat := 1
def small_6429135_left_count : Nat := 1
def small_6429135_left_encoded : String := "00000000"
theorem small_6429135_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6429135_left_root small_6429135_left_fuel small_6429135_left_count small_6429135_left_encoded = true := by
  decide +kernel
theorem small_6429135_left_covered : CoveredBy scale carrier boxes small_6429135_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6429135_left_root small_6429135_left_fuel small_6429135_left_count small_6429135_left_encoded small_6429135_left_checked

theorem cover_6429135 : CoveredBy scale carrier boxes root_6429135 := by
  apply coveredBy_split_literal root_6429135 small_6429135_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0446.root_6429141 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6429135_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0446.cover_6429141
#print axioms cover_6429135

def root_6392155 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6392155 : CoveredBy scale carrier boxes root_6392155 := by
  apply coveredBy_split_literal root_6392155 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0445.root_6392156 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0446.root_6429135 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0445.cover_6392156
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0446.cover_6429135
#print axioms cover_6392155

def root_6388037 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6388037 : CoveredBy scale carrier boxes root_6388037 := by
  apply coveredBy_split_literal root_6388037 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0442.root_6388038 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0446.root_6392155 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0442.cover_6388038
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0446.cover_6392155
#print axioms cover_6388037

def root_6451556 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6451556 : CoveredBy scale carrier boxes root_6451556 := by
  apply coveredBy_split_literal root_6451556 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2426.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2427.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2426.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2427.covered
#print axioms cover_6451556

def root_6449258 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6449258 : CoveredBy scale carrier boxes root_6449258 := by
  apply coveredBy_split_literal root_6449258 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2425.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0446.root_6451556 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2425.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0446.cover_6451556
#print axioms cover_6449258

def root_6388036 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6388036 : CoveredBy scale carrier boxes root_6388036 := by
  apply coveredBy_split_literal root_6388036 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0446.root_6388037 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0446.root_6449258 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0446.cover_6388037
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0446.cover_6449258
#print axioms cover_6388036

def root_6331460 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6331460 : CoveredBy scale carrier boxes root_6331460 := by
  apply coveredBy_split_literal root_6331460 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0442.root_6331461 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0446.root_6388036 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0442.cover_6331461
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0446.cover_6388036
#print axioms cover_6331460

def root_6302582 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6302582 : CoveredBy scale carrier boxes root_6302582 := by
  apply coveredBy_split_literal root_6302582 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0437.root_6302583 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0446.root_6331460 coord3 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0437.cover_6302583
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0446.cover_6331460
#print axioms cover_6302582

def root_6161046 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6161046 : CoveredBy scale carrier boxes root_6161046 := by
  apply coveredBy_split_literal root_6161046 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0436.root_6161047 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0446.root_6302582 coord2 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0436.cover_6161047
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0446.cover_6302582
#print axioms cover_6161046

def root_5870924 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5870924 : CoveredBy scale carrier boxes root_5870924 := by
  apply coveredBy_split_literal root_5870924 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0426.root_5870925 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0446.root_6161046 coord2 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0426.cover_5870925
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0446.cover_6161046
#print axioms cover_5870924

def root_5076038 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5076038 : CoveredBy scale carrier boxes root_5076038 := by
  apply coveredBy_split_literal root_5076038 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0408.root_5076039 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0446.root_5870924 coord1 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0408.cover_5076039
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0446.cover_5870924
#print axioms cover_5076038

def root_6455936 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6455936 : CoveredBy scale carrier boxes root_6455936 := by
  apply coveredBy_split_literal root_6455936 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2428.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2429.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2428.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2429.covered
#print axioms cover_6455936

def root_6455935 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6455935 : CoveredBy scale carrier boxes root_6455935 := by
  apply coveredBy_split_literal root_6455935 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0446.root_6455936 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2430.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0446.cover_6455936
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2430.covered
#print axioms cover_6455935

def root_6462329 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6462329 : CoveredBy scale carrier boxes root_6462329 := by
  apply coveredBy_split_literal root_6462329 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2431.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2432.root coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2431.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2432.covered
#print axioms cover_6462329

def root_6462323 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6462323_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6462323_left_fuel : Nat := 1
def small_6462323_left_count : Nat := 1
def small_6462323_left_encoded : String := "00000003"
theorem small_6462323_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6462323_left_root small_6462323_left_fuel small_6462323_left_count small_6462323_left_encoded = true := by
  decide +kernel
theorem small_6462323_left_covered : CoveredBy scale carrier boxes small_6462323_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6462323_left_root small_6462323_left_fuel small_6462323_left_count small_6462323_left_encoded small_6462323_left_checked

theorem cover_6462323 : CoveredBy scale carrier boxes root_6462323 := by
  apply coveredBy_split_literal root_6462323 small_6462323_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0446.root_6462329 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6462323_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0446.cover_6462329
#print axioms cover_6462323

def root_6462322 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6462322_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6462322_right_fuel : Nat := 16
def small_6462322_right_count : Nat := 63
def small_6462322_right_encoded : String := "1151E8FD0A0001081151E8FF0000000500000004115224FF0000000408A912F912073D0208A912FB00000005120700FA08A912FF00000005120701080000000405000100135D44F7050000FC135D80FD000000030CFD9BF9000000050F34D10200000001000000050000000500000000000000050000000200000001120701020000000108A912FB12073CFA0000000208A912FF00000005120701080000000400000005120700FA08A912FF12073D0805000100135D44F7050000FC135D80FD00000003045489F900000005000000090000000500000000000000050000000412070108000000040500010000000009000000090000000200000003"
theorem small_6462322_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6462322_right_root small_6462322_right_fuel small_6462322_right_count small_6462322_right_encoded = true := by
  decide +kernel
theorem small_6462322_right_covered : CoveredBy scale carrier boxes small_6462322_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6462322_right_root small_6462322_right_fuel small_6462322_right_count small_6462322_right_encoded small_6462322_right_checked

theorem cover_6462322 : CoveredBy scale carrier boxes root_6462322 := by
  apply coveredBy_split_literal root_6462322 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0446.root_6462323 small_6462322_right_root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0446.cover_6462323
  · exact small_6462322_right_covered
#print axioms cover_6462322

def root_6462316 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6462316_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6462316_left_fuel : Nat := 1
def small_6462316_left_count : Nat := 1
def small_6462316_left_encoded : String := "00000002"
theorem small_6462316_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6462316_left_root small_6462316_left_fuel small_6462316_left_count small_6462316_left_encoded = true := by
  decide +kernel
theorem small_6462316_left_covered : CoveredBy scale carrier boxes small_6462316_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6462316_left_root small_6462316_left_fuel small_6462316_left_count small_6462316_left_encoded small_6462316_left_checked

theorem cover_6462316 : CoveredBy scale carrier boxes root_6462316 := by
  apply coveredBy_split_literal root_6462316 small_6462316_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0446.root_6462322 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6462316_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0446.cover_6462322
#print axioms cover_6462316

def root_6462315 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6462315_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6462315_right_fuel : Nat := 13
def small_6462315_right_count : Nat := 37
def small_6462315_right_encoded : String := "1151E8FB0A0000FC115224FD000000030A0001081151E8FF0000000500000004115224FF0000000408A912F912073D0208A912FD000000050000000600000001120701020000000108A912FD12073CFC0000000308A912FF0000000500000006120700FC08A912FF12073D080500010000000006000000050000000400000006000000031151E8FD000000050000000300000002"
theorem small_6462315_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6462315_right_root small_6462315_right_fuel small_6462315_right_count small_6462315_right_encoded = true := by
  decide +kernel
theorem small_6462315_right_covered : CoveredBy scale carrier boxes small_6462315_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6462315_right_root small_6462315_right_fuel small_6462315_right_count small_6462315_right_encoded small_6462315_right_checked

theorem cover_6462315 : CoveredBy scale carrier boxes root_6462315 := by
  apply coveredBy_split_literal root_6462315 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0446.root_6462316 small_6462315_right_root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0446.cover_6462316
  · exact small_6462315_right_covered
#print axioms cover_6462315

def root_6462309 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6462309_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6462309_left_fuel : Nat := 1
def small_6462309_left_count : Nat := 1
def small_6462309_left_encoded : String := "00000001"
theorem small_6462309_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6462309_left_root small_6462309_left_fuel small_6462309_left_count small_6462309_left_encoded = true := by
  decide +kernel
theorem small_6462309_left_covered : CoveredBy scale carrier boxes small_6462309_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6462309_left_root small_6462309_left_fuel small_6462309_left_count small_6462309_left_encoded small_6462309_left_checked

theorem cover_6462309 : CoveredBy scale carrier boxes root_6462309 := by
  apply coveredBy_split_literal root_6462309 small_6462309_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0446.root_6462315 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6462309_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0446.cover_6462315
#print axioms cover_6462309

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0446
