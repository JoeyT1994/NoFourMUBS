import TaoBundleAssembly0278
import TaoBundleChunkBatch0363
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0279
def root_3856280 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3856280_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3856280_right_fuel : Nat := 16
def small_3856280_right_count : Nat := 91
def small_3856280_right_encoded : String := "12073D06050000F8135D810305000108135D44FF0CFD9C010F34D0F600000006000000000F350CF6000000000CFD9C050F34D10400000002000000060F350D040CFD9C070F34D106000000030C9A86F60F878D01000000060000000000000009000000090000000200000004135D80FF000000040CFD9C010F34D0F600000006000000000F350CF6000000000CFD9C050F34D10400000002000000060F350D040CFD9C070F34D106000000030C9A86F60F878D0100000006000000000F875101000000000C9A87040F875105000000020000000A0F878D0500000006000000020F350D0600000006000000030000000200000001135D45030000000105000108135D44FF0CFD9C010F34D0F600000006000000000F350CF6000000000CFD9C05000000060000000900000004135D80FF000000040CFD9C01000000060F350CF6000000000CFD9C05000000060F350D040CFD9C070F34D1060000000300000006000000060000000200000003"
theorem small_3856280_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3856280_right_root small_3856280_right_fuel small_3856280_right_count small_3856280_right_encoded = true := by
  decide +kernel
theorem small_3856280_right_covered : CoveredBy scale carrier boxes small_3856280_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3856280_right_root small_3856280_right_fuel small_3856280_right_count small_3856280_right_encoded small_3856280_right_checked

theorem cover_3856280 : CoveredBy scale carrier boxes root_3856280 := by
  apply coveredBy_split_literal root_3856280 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0278.root_3856281 small_3856280_right_root coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0278.cover_3856281
  · exact small_3856280_right_covered
#print axioms cover_3856280

def root_3856275 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3856275_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3856275_right_fuel : Nat := 1
def small_3856275_right_count : Nat := 1
def small_3856275_right_encoded : String := "00000002"
theorem small_3856275_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3856275_right_root small_3856275_right_fuel small_3856275_right_count small_3856275_right_encoded = true := by
  decide +kernel
theorem small_3856275_right_covered : CoveredBy scale carrier boxes small_3856275_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3856275_right_root small_3856275_right_fuel small_3856275_right_count small_3856275_right_encoded small_3856275_right_checked

theorem cover_3856275 : CoveredBy scale carrier boxes root_3856275 := by
  apply coveredBy_split_literal root_3856275 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0279.root_3856280 small_3856275_right_root coord2 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0279.cover_3856280
  · exact small_3856275_right_covered
#print axioms cover_3856275

def root_3856151 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3856151_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3856151_left_fuel : Nat := 18
def small_3856151_left_count : Nat := 59
def small_3856151_left_encoded : String := "120701040000000208A913071207010600000003050000F8135D810305000108135D44FF0CFD9C01000000060F350CF60000000004548A05000000061386AD0404548A0713867106000000030C9A86F6000000060F87510100000000078000F80000000700000006000000060000000200000004135D80FF000000040CFD9C01000000060F350CF60000000004548A051386710400000002000000061386AD0404548A0713867106000000030C9A86F6000000060F87510100000000078000F8128A7D03000000060000000100000006000000060000000200000001135D4503000000010000000600000006"
theorem small_3856151_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3856151_left_root small_3856151_left_fuel small_3856151_left_count small_3856151_left_encoded = true := by
  decide +kernel
theorem small_3856151_left_covered : CoveredBy scale carrier boxes small_3856151_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3856151_left_root small_3856151_left_fuel small_3856151_left_count small_3856151_left_encoded small_3856151_left_checked

theorem cover_3856151 : CoveredBy scale carrier boxes root_3856151 := by
  apply coveredBy_split_literal root_3856151 small_3856151_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0279.root_3856275 coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_3856151_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0279.cover_3856275
#print axioms cover_3856151

def root_3856145 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3856145_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3856145_left_fuel : Nat := 1
def small_3856145_left_count : Nat := 1
def small_3856145_left_encoded : String := "00000000"
theorem small_3856145_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3856145_left_root small_3856145_left_fuel small_3856145_left_count small_3856145_left_encoded = true := by
  decide +kernel
theorem small_3856145_left_covered : CoveredBy scale carrier boxes small_3856145_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3856145_left_root small_3856145_left_fuel small_3856145_left_count small_3856145_left_encoded small_3856145_left_checked

theorem cover_3856145 : CoveredBy scale carrier boxes root_3856145 := by
  apply coveredBy_split_literal root_3856145 small_3856145_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0279.root_3856151 coord0 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_3856145_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0279.cover_3856151
#print axioms cover_3856145

def root_3856065 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3856065_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3856065_left_fuel : Nat := 15
def small_3856065_left_count : Nat := 39
def small_3856065_left_encoded : String := "120700F608A9130512070104000000020000000612073D0408A913071207010600000003050000F8135D810305000108135D44FF04548A01000000061386ACF6000000000CFD9C05000000060F350D0404548A0700000005000000060000000200000004135D80FF0000000404548A01000000061386ACF6000000000CFD9C0500000006000000060000000100000006000000060000000200000000"
theorem small_3856065_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3856065_left_root small_3856065_left_fuel small_3856065_left_count small_3856065_left_encoded = true := by
  decide +kernel
theorem small_3856065_left_covered : CoveredBy scale carrier boxes small_3856065_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3856065_left_root small_3856065_left_fuel small_3856065_left_count small_3856065_left_encoded small_3856065_left_checked

theorem cover_3856065 : CoveredBy scale carrier boxes root_3856065 := by
  apply coveredBy_split_literal root_3856065 small_3856065_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0279.root_3856145 coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_3856065_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0279.cover_3856145
#print axioms cover_3856065

def root_3856060 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3856060_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3856060_right_fuel : Nat := 1
def small_3856060_right_count : Nat := 1
def small_3856060_right_encoded : String := "00000004"
theorem small_3856060_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3856060_right_root small_3856060_right_fuel small_3856060_right_count small_3856060_right_encoded = true := by
  decide +kernel
theorem small_3856060_right_covered : CoveredBy scale carrier boxes small_3856060_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3856060_right_root small_3856060_right_fuel small_3856060_right_count small_3856060_right_encoded small_3856060_right_checked

theorem cover_3856060 : CoveredBy scale carrier boxes root_3856060 := by
  apply coveredBy_split_literal root_3856060 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0279.root_3856065 small_3856060_right_root coord4 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0279.cover_3856065
  · exact small_3856060_right_covered
#print axioms cover_3856060

def root_3856059 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3856059_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3856059_right_fuel : Nat := 31
def small_3856059_right_count : Nat := 397
def small_3856059_right_encoded : String := "115224FF0000000408A91301120700F608A9130512070104000000020000000612073D0408A91307120701060000000308A912FF12073D08050000F8135D810304548A01000000061386ACF6000000000CFD9C05000000060F350D0404548A0713867106000000030000000600000006000000020000000100000006000000040000000600000006000000020000000012073CF60000000008A91305120701040000000208A91307120701060000000308A912FF12073D08050000F8135D81030CFD9C010F34D0F600000006000000000F350CF60000000004548A05138671040000000204548A0713867106000000030CFD9BFF0F350D08000000060000000400000006000000061386AD0404548A0713867106000000030CFD9BFF0F350D080C9A86F6000000060F8751010000000000000005000000040000000600000006000000020000000100000006000000040000000612073D06000000060000000312073D0408A91307120701060000000308A912FF12073D08050000F8135D81030CFD9C010F34D0F60CFD9C050F34D10400000002000000060F350D0404548A0713867106000000030CFD9BFF0F350D080C9A87040F875105000000020C9A87080F8750FF078000F8128A7D030AD35781000000060000000A0000000100000006000000040F878CFF00000004000000060F878D050000000600000002000000040F34D10800000004000000061386AD060CFD9BFF0F350D080000000600000004000000060000000300000002000000000F350CF6000000000CFD9C050F34D1040000000204548A0713867106000000030CFD9BFF0F350D080C9A86F60F878D010C9A87080000000600000006000000000F875101000000000C9A87080F8750FF078000F8128A7D030AD3578510D1010400000002000000050000000500000001000000050000000400000005000000040F34D10800000004000000051386AD060CFD9BFF0F350D08000000060000000400000006000000030F350D0404548A0713867106000000030CFD9BFF0F350D080C9A86F60F878D010C9A87040F875105000000020C9A87080F8750FF078000F8128A7D03022A458700000008000000080000000100000008000000040F878CFF00000004000000080F878D050C9A87080F8750FF078000F8128A7D03022A458713E1C506000000030DE7C9F60000000900000008000000060000000100000006000000040F878CFF00000004078000F8000000080000000500000002000000000F875101000000000C9A87040F875105000000020C9A870800000008000000050F878D050C9A87080F8750FF078000F8128A7D03022A458713E1C5060000000300000005000000050000000100000005000000040000000500000002000000040F34D10800000004000000051386AD060CFD9BFF0F350D080C9A86F60F878D010C9A87040F875105000000020C9A87080F8750FF0000000A000000040F878CFF00000004000000050F878D050000000600000002000000000F875101000000000C9A87040F875105000000020000000500000005000000040F34D1080000000400000005000000030000000200000001135D4503000000010CFD9C010F34D0F60CFD9C05000000060F350D0404548A071386710600000003000000060000000600000002000000000F350CF6000000000CFD9C050F34D10400000002000000050F350D0404548A0713867106000000030CFD9BFF0F350D080C9A86F60F878D010C9A87040000000800000005000000000000000500000004000000050000000500000002000000041207010800000004050000F8135D81030CFD9C010F34D0F600000006000000000F350CF60000000000000005000000010000000512073D0608A912FF12073D08050000F8135D81030CFD9C010F34D0F60CFD9C050000000600000006000000000F350CF6000000000CFD9C050F34D10400000002000000060F350D040CFD9C070F34D106000000030CFD9BFF0F350D080C9A86F60F878D0100000006000000000F875101000000000000000500000004000000050F350D0600000006000000030000000200000001135D4503000000010CFD9C01000000060F350CF6000000000CFD9C05000000060F350D040CFD9C070F34D10600000003000000050000000500000002000000041207010800000004000000060000000300000002"
theorem small_3856059_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3856059_right_root small_3856059_right_fuel small_3856059_right_count small_3856059_right_encoded = true := by
  decide +kernel
theorem small_3856059_right_covered : CoveredBy scale carrier boxes small_3856059_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3856059_right_root small_3856059_right_fuel small_3856059_right_count small_3856059_right_encoded small_3856059_right_checked

theorem cover_3856059 : CoveredBy scale carrier boxes root_3856059 := by
  apply coveredBy_split_literal root_3856059 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0279.root_3856060 small_3856059_right_root coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0279.cover_3856060
  · exact small_3856059_right_covered
#print axioms cover_3856059

def root_3856054 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3856054_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3856054_right_fuel : Nat := 1
def small_3856054_right_count : Nat := 1
def small_3856054_right_encoded : String := "00000003"
theorem small_3856054_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3856054_right_root small_3856054_right_fuel small_3856054_right_count small_3856054_right_encoded = true := by
  decide +kernel
theorem small_3856054_right_covered : CoveredBy scale carrier boxes small_3856054_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3856054_right_root small_3856054_right_fuel small_3856054_right_count small_3856054_right_encoded small_3856054_right_checked

theorem cover_3856054 : CoveredBy scale carrier boxes root_3856054 := by
  apply coveredBy_split_literal root_3856054 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0279.root_3856059 small_3856054_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0279.cover_3856059
  · exact small_3856054_right_covered
#print axioms cover_3856054

def root_3855960 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3855960_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3855960_left_fuel : Nat := 12
def small_3855960_left_count : Nat := 45
def small_3855960_left_encoded : String := "1151E907000000030A0001081151E8FF08A91301120700F608A913050000000612073D04050000F80000000600000009000000020000000012073CF60000000008A913050000000612073D04050000F8135D810305000106000000080000000600000001135D45030000000105000106135D45070000000300000006000000060000000200000004115224FF0000000408A91301120700F6000000060000000012073CF60000000008A913050000000600000006"
theorem small_3855960_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3855960_left_root small_3855960_left_fuel small_3855960_left_count small_3855960_left_encoded = true := by
  decide +kernel
theorem small_3855960_left_covered : CoveredBy scale carrier boxes small_3855960_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3855960_left_root small_3855960_left_fuel small_3855960_left_count small_3855960_left_encoded small_3855960_left_checked

theorem cover_3855960 : CoveredBy scale carrier boxes root_3855960 := by
  apply coveredBy_split_literal root_3855960 small_3855960_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0279.root_3856054 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_3855960_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0279.cover_3856054
#print axioms cover_3855960

def root_3855955 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3855955_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3855955_right_fuel : Nat := 1
def small_3855955_right_count : Nat := 1
def small_3855955_right_encoded : String := "00000002"
theorem small_3855955_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3855955_right_root small_3855955_right_fuel small_3855955_right_count small_3855955_right_encoded = true := by
  decide +kernel
theorem small_3855955_right_covered : CoveredBy scale carrier boxes small_3855955_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3855955_right_root small_3855955_right_fuel small_3855955_right_count small_3855955_right_encoded small_3855955_right_checked

theorem cover_3855955 : CoveredBy scale carrier boxes root_3855955 := by
  apply coveredBy_split_literal root_3855955 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0279.root_3855960 small_3855955_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0279.cover_3855960
  · exact small_3855955_right_covered
#print axioms cover_3855955

def root_3855035 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3855035_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3855035_left_fuel : Nat := 26
def small_3855035_left_count : Nat := 431
def small_3855035_left_encoded : String := "1151E905000000020A0001061151E907000000030A0001081151E8FF08A91301120700F6050000F80000000A000000090000000012073CF600000000050000F8135D8103050001040000000900000009000000010000000900000004115224FF0000000408A91301120700F6000000060000000012073CF60000000008A912FF12073D08050000F8135D810305000104135D4505000000020500010600000007135D81070CFD9C010000000A0000000500000003135D81050500010600000006000000060000000200000001135D4503000000010500010400000007000000060000000400000005115225070A0001081151E8FF08A91301120700F608A913071207010600000003050000F80000000A0000000A12073D06050000F8135D8103050001040000000A135D810505000108000000060000000600000002000000010000000A000000030000000012073CF60000000008A913071207010600000003050000F8135D8103050001040000000A135D810505000108135D44FF0CFD9C010F34D0F60000000A000000000000000A00000004135D80FF000000040CFD9C010F34D0F60000000A000000000F350CF60000000004548A0713867106000000030000000A0000000A00000002000000010000000A12073D06050000F8135D810305000104135D4505000000020000000A135D810505000108135D44FF0CFD9C010F34D0F60000000A000000000F350CF6000000000CFD9C070F34D106000000030000000A0000000900000004135D80FF000000040CFD9C010F34D0F60000000A000000000F350CF6000000000CFD9C070F34D106000000030000000A0000000A0000000200000001135D450300000001050001040000000A135D810505000108135D44FF00000009000000040000000A000000020000000300000004115224FF0000000408A91301120700F608A91307120701060000000308A912FF12073D08050000F8135D810305000104135D4505000000020000000A135D810504548A01138670F604548A0713867106000000030000000800000006000000001386ACF60000000004548A0713867106000000030CFD9BFF0000000A000000081386AD060000000A000000030000000200000001135D450300000001050001040000000A135D810500000006000000020000000412070108000000040000000812073D0608A912FF12073D08050000F8135D8103050001040000000A0000000600000001000000060000000400000006000000030000000012073CF60000000008A91307120701060000000308A912FF12073D08050000F8135D810305000104135D4505000000020CFD9C010F34D0F60000000A000000000F350CF60000000004548A07000000081386AD060CFD9BFF0000000A0000000700000003135D81050CFD9C010F34D0F604548A0713867106000000030CFD9BFF0F350D080C9A8708000000080000000800000004000000081386AD060CFD9BFF0000000A0F34D108000000040000000600000003000000000F350CF60000000004548A0713867106000000030CFD9BFF0F350D080C9A86F60F878D0100000008000000000000000800000004000000081386AD060CFD9BFF0F350D080C9A86F60000000A0F875101000000000C9A87080F8750FF0000000A0000000400000005000000040F34D1080000000400000005000000030000000200000001135D45030000000105000104135D4505000000020CFD9C010000000A0000000A135D81050CFD9C010F34D0F604548A0713867106000000030000000A0000000A000000000F350CF60000000004548A071386710600000003000000080000000500000002000000041207010800000004050000F8000000080000000712073D0608A912FF12073D08050000F8135D810305000104135D4505000000020CFD9C010F34D0F60000000A000000000F350CF6000000000CFD9C070F34D106000000030000000A0F350D060000000700000003135D81050CFD9C010F34D0F60CFD9C070F34D106000000030CFD9BFF0000000A0000000600000006000000000F350CF6000000000CFD9C070F34D106000000030CFD9BFF0F350D080C9A86F60000000A0F875101000000000000000500000004000000050F350D060CFD9BFF0F350D080C9A86F60000000A0F87510100000000000000050000000400000005000000030000000200000001135D45030000000105000104135D4505000000020CFD9C010000000A0000000A135D81050CFD9C010F34D0F600000006000000000F350CF6000000000CFD9C070F34D10600000003000000050000000500000002000000041207010800000004050000F8135D810305000104000000070000000500000001000000050000000300000003"
theorem small_3855035_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3855035_left_root small_3855035_left_fuel small_3855035_left_count small_3855035_left_encoded = true := by
  decide +kernel
theorem small_3855035_left_covered : CoveredBy scale carrier boxes small_3855035_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3855035_left_root small_3855035_left_fuel small_3855035_left_count small_3855035_left_encoded small_3855035_left_checked

theorem cover_3855035 : CoveredBy scale carrier boxes root_3855035 := by
  apply coveredBy_split_literal root_3855035 small_3855035_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0279.root_3855955 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_3855035_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0279.cover_3855955
#print axioms cover_3855035

def root_3855029 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3855029_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3855029_left_fuel : Nat := 1
def small_3855029_left_count : Nat := 1
def small_3855029_left_encoded : String := "00000001"
theorem small_3855029_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3855029_left_root small_3855029_left_fuel small_3855029_left_count small_3855029_left_encoded = true := by
  decide +kernel
theorem small_3855029_left_covered : CoveredBy scale carrier boxes small_3855029_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3855029_left_root small_3855029_left_fuel small_3855029_left_count small_3855029_left_encoded small_3855029_left_checked

theorem cover_3855029 : CoveredBy scale carrier boxes root_3855029 := by
  apply coveredBy_split_literal root_3855029 small_3855029_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0279.root_3855035 coord1 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_3855029_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0279.cover_3855035
#print axioms cover_3855029

def root_3822433 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3822433 : CoveredBy scale carrier boxes root_3822433 := by
  apply coveredBy_split_literal root_3822433 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0278.root_3822434 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0279.root_3855029 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0278.cover_3822434
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0279.cover_3855029
#print axioms cover_3822433

def root_3822428 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3822428_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3822428_right_fuel : Nat := 1
def small_3822428_right_count : Nat := 1
def small_3822428_right_encoded : String := "00000000"
theorem small_3822428_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3822428_right_root small_3822428_right_fuel small_3822428_right_count small_3822428_right_encoded = true := by
  decide +kernel
theorem small_3822428_right_covered : CoveredBy scale carrier boxes small_3822428_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3822428_right_root small_3822428_right_fuel small_3822428_right_count small_3822428_right_encoded small_3822428_right_checked

theorem cover_3822428 : CoveredBy scale carrier boxes root_3822428 := by
  apply coveredBy_split_literal root_3822428 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0279.root_3822433 small_3822428_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0279.cover_3822433
  · exact small_3822428_right_covered
#print axioms cover_3822428

def root_3861052 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3861052_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3861052_right_fuel : Nat := 1
def small_3861052_right_count : Nat := 1
def small_3861052_right_encoded : String := "00000003"
theorem small_3861052_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3861052_right_root small_3861052_right_fuel small_3861052_right_count small_3861052_right_encoded = true := by
  decide +kernel
theorem small_3861052_right_covered : CoveredBy scale carrier boxes small_3861052_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3861052_right_root small_3861052_right_fuel small_3861052_right_count small_3861052_right_encoded small_3861052_right_checked

theorem cover_3861052 : CoveredBy scale carrier boxes root_3861052 := by
  apply coveredBy_split_literal root_3861052 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1450.root small_3861052_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1450.covered
  · exact small_3861052_right_covered
#print axioms cover_3861052

def root_3860562 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3860562_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3860562_left_fuel : Nat := 24
def small_3860562_left_count : Nat := 237
def small_3860562_left_encoded : String := "1151E907000000030A0001081151E8FF08A913030000000812073CF800000001050000F6135D8101050001040000000900000008000000000000000900000004115224FF0000000408A91303120700F808A912FF12073D08050000F6135D810105000104135D4505000000020500010600000008135D810704548A03000000081386ACF8000000010CFD9BFF000000080F34D10800000004078000F6128A7D0102800104000000070000000700000000128A4101000000000280010413D7B1050000000207800106000000070000000500000005000000030000000800000000135D45010000000005000104135D4505000000020500010600000008135D810704548A03000000081386ACF8000000010CFD9BFF000000080F34D10800000004000000050000000300000008000000041207010800000004050000F6135D810105000104135D45050000000205000106135D45070000000304548A03138670F8045489FF00000008000000050000000100000005135D810704548A03138670F8045489FF1386AD08078000F6128A7D010280010413D7B105000000020780010600000008128A7D0700000007000000030000000800000000128A410100000000000000050000000400000005000000010000000500000003135D810505000106135D45070000000304548A030000000600000005135D810704548A03138670F8045489FF00000008000000050000000100000005000000030000000200000000135D45010000000005000104135D45050000000200000005135D810505000106135D4507000000030000000500000005000000020000000112073CF80000000108A912FF12073D08050000F6135D810105000104135D45050000000205000106135D4507000000030CFD9C030F34D0F80CFD9BFF00000008000000050000000100000005135D81070CFD9C030F34D0F80CFD9BFF0F350D08000000070000000400000005000000010000000500000003135D810505000106135D4507000000030CFD9C030000000800000005135D81070CFD9C030F34D0F80CFD9BFF00000008000000050000000100000005000000030000000200000000135D45010000000005000104135D45050000000205000106135D45070000000300000005135D81070CFD9C030F34D0F80CFD9BFF0000000900000005000000010000000500000003135D810505000106135D4507000000030CFD9C030F34D0F8000000080000000100000005135D81070CFD9C030F34D0F80CFD9BFF0000000800000005000000010000000500000003000000020000000400000005"
theorem small_3860562_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3860562_left_root small_3860562_left_fuel small_3860562_left_count small_3860562_left_encoded = true := by
  decide +kernel
theorem small_3860562_left_covered : CoveredBy scale carrier boxes small_3860562_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3860562_left_root small_3860562_left_fuel small_3860562_left_count small_3860562_left_encoded small_3860562_left_checked

theorem cover_3860562 : CoveredBy scale carrier boxes root_3860562 := by
  apply coveredBy_split_literal root_3860562 small_3860562_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0279.root_3861052 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_3860562_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0279.cover_3861052
#print axioms cover_3860562

def root_3860556 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3860556_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3860556_left_fuel : Nat := 1
def small_3860556_left_count : Nat := 1
def small_3860556_left_encoded : String := "00000002"
theorem small_3860556_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3860556_left_root small_3860556_left_fuel small_3860556_left_count small_3860556_left_encoded = true := by
  decide +kernel
theorem small_3860556_left_covered : CoveredBy scale carrier boxes small_3860556_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3860556_left_root small_3860556_left_fuel small_3860556_left_count small_3860556_left_encoded small_3860556_left_checked

theorem cover_3860556 : CoveredBy scale carrier boxes root_3860556 := by
  apply coveredBy_split_literal root_3860556 small_3860556_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0279.root_3860562 coord2 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_3860556_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0279.cover_3860562
#print axioms cover_3860556

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0279
