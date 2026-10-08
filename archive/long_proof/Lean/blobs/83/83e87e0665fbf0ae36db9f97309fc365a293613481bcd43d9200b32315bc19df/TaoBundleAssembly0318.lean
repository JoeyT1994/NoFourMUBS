import TaoBundleAssembly0317
import TaoBundleChunkBatch0412
import TaoBundleChunkBatch0415
import TaoBundleChunkBatch0416
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0318
def root_4402756 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4402756_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4402756_left_fuel : Nat := 26
def small_4402756_left_count : Nat := 421
def small_4402756_left_encoded : String := "120701060000000308A91309120700FE04548A01138670F6045489F91386AD020CFD9C050F34D1040000000204548A07000000051386AD0604548A09000000050000000900000003000000090000000113867102000000010CFD9C050F34D1040000000204548A071386710600000003000000071386AD0604548A09138670FE022A45810000000500000007000000041386ACFE00000004022A458113E1C4F6022A457900000009000000070000000013E200F600000000022A457913E201020AD3578500000007000000090000000100000007000000030F350D0404548A07138671060000000304548A0900000005000000081386AD0604548A09138670FE0C9A8704000000050F878D05000000050000000200000004000000090000000300000002000000001386ACF600000000045489F91386AD020CFD9C050F34D1040000000204548A07138671060000000304548A09000000051386ACFE00000004067ECE8112EA58F6067ECE79000000050000000600000000000000061386AD0604548A09138670FE067ECE810000000500000006000000041386ACFE00000004067ECE8112EA58F6067ECE7912EA9502000000090000000112EA5902000000010AD3578510D1010400000002067ECE870000000712EA9506067ECE8900000005000000070000000310D13D0400000009000000020000000012EA94F600000000067ECE7912EA95020AD3578510D1010400000002067ECE870000000612EA9506067ECE890000000512EA94FE000000040793F0C100000009000000060000000310D13D0400000006000000020000000112EA5902000000010AD3578510D1010400000002067ECE870000000612EA9506067ECE8900000006000000070000000310D13D040000000600000002000000030F350D0404548A07000000061386AD0604548A09000000060000000900000003000000020000000113867102000000010CFD9C050F34D1040000000204548A07138671060000000304548A0900000006000000071386AD0604548A09138670FE067ECE8112EA58F6022A457913E201020AD35785000000050000000600000001000000070000000000000006000000041386ACFE00000004067ECE8112EA58F6022A457913E201020AD357850000000710D13D04067ECE870000000712EA9506067ECE8912EA58FE00000006000000040000000900000003000000020000000113E1C50200000001000000070000000012EA94F600000000022A457913E201020AD3578510D10104000000020000000710D13D04067ECE870000000612EA95060000000600000003000000020000000113E1C502000000010AD357850000000710D13D04067ECE870000000612EA9506000000060000000300000002000000030F350D0404548A07000000061386AD0604548A09000000061386ACFE000000040C9A8704000000060F878D05067ECE8112EA58F6022A45790000000913E1C502000000010000000800000000000000060000000200000003000000020000000412073CFE0000000404548A01138670F6045489F91386AD02000000090000000113867102000000010CFD9C050F34D1040000000204548A07000000081386AD060CFD9C090F34D0FE000000080000000400000008000000030F350D040000000900000002000000001386ACF600000000045489F91386AD020CFD9C050F34D1040000000204548A0713867106000000030CFD9C090F34D0FE067ECE810000000912EA94F600000000067ECE79000000090000000800000004000000081386AD060CFD9C090F34D0FE067ECE810000000912EA94F600000000067ECE790000000912EA5902000000010AD3578510D1010400000002067ECE8712EA5906000000030AD35789000000070000000712EA95060AD3578910D100FE0793F0C1128220F600000007000000000000000700000004000000090000000300000009000000040F350CFE000000040C9A86FE000000090F8751090000000400000008000000030F350D0400000009000000020000000113867102000000010CFD9C050F34D1040000000204548A071386710600000003000000081386AD060CFD9C090F34D0FE067ECE810000000812EA94F600000000022A457913E201020AD3578510D1010400000002067ECE870000000712EA95060AD3578910D100FE0000000700000004000000070000000310D13D04000000080000000200000001000000080000000400000008000000030F350D0404548A07000000081386AD060CFD9C090F34D0FE0C9A8704000000080F878D05000000080000000200000004000000080000000300000002"
theorem small_4402756_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4402756_left_root small_4402756_left_fuel small_4402756_left_count small_4402756_left_encoded = true := by
  decide +kernel
theorem small_4402756_left_covered : CoveredBy scale carrier boxes small_4402756_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4402756_left_root small_4402756_left_fuel small_4402756_left_count small_4402756_left_encoded small_4402756_left_checked

theorem cover_4402756 : CoveredBy scale carrier boxes root_4402756 := by
  apply coveredBy_split_literal root_4402756 small_4402756_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0317.root_4403642 coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_4402756_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0317.cover_4403642
#print axioms cover_4402756

def root_4402751 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4402751_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4402751_right_fuel : Nat := 1
def small_4402751_right_count : Nat := 1
def small_4402751_right_encoded : String := "00000002"
theorem small_4402751_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4402751_right_root small_4402751_right_fuel small_4402751_right_count small_4402751_right_encoded = true := by
  decide +kernel
theorem small_4402751_right_covered : CoveredBy scale carrier boxes small_4402751_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4402751_right_root small_4402751_right_fuel small_4402751_right_count small_4402751_right_encoded small_4402751_right_checked

theorem cover_4402751 : CoveredBy scale carrier boxes root_4402751 := by
  apply coveredBy_split_literal root_4402751 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0318.root_4402756 small_4402751_right_root coord2 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0318.cover_4402756
  · exact small_4402751_right_covered
#print axioms cover_4402751

def root_4401527 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4401527 : CoveredBy scale carrier boxes root_4401527 := by
  apply coveredBy_split_literal root_4401527 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1648.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0318.root_4402751 coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1648.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0318.cover_4402751
#print axioms cover_4401527

def root_4401521 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4401521_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4401521_left_fuel : Nat := 1
def small_4401521_left_count : Nat := 1
def small_4401521_left_encoded : String := "00000001"
theorem small_4401521_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4401521_left_root small_4401521_left_fuel small_4401521_left_count small_4401521_left_encoded = true := by
  decide +kernel
theorem small_4401521_left_covered : CoveredBy scale carrier boxes small_4401521_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4401521_left_root small_4401521_left_fuel small_4401521_left_count small_4401521_left_encoded small_4401521_left_checked

theorem cover_4401521 : CoveredBy scale carrier boxes root_4401521 := by
  apply coveredBy_split_literal root_4401521 small_4401521_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0318.root_4401527 coord1 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_4401521_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0318.cover_4401527
#print axioms cover_4401521

def root_4400643 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4400643_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4400643_left_fuel : Nat := 26
def small_4400643_left_count : Nat := 417
def small_4400643_left_encoded : String := "12073D0208A91305120701040000000208A91307120701060000000308A91309120700FE04548A01000000051386ACF6000000000CFD9BF9000000050F34D1020000000104548A05000000051386AD0400000005000000020000000412073CFE0000000404548A01138670F60CFD9BF90F350D0200000009000000010F34D1020000000104548A050000000A1386AD040000000900000002000000001386ACF6000000000CFD9BF90F350D0204548A05138671040000000204548A0713867106000000030CFD9C090F34D0FE0000000500000004000000090000000A00000009000000010F34D1020000000104548A05138671040000000204548A0713867106000000030CFD9C090F34D0FE00000007000000040000000A0000000A1386AD0404548A0713867106000000030CFD9C090F34D0FE067ECE810000000912EA94F6000000000AD357790000000910D1010200000001067ECE85000000070000000900000004000000091386AD060CFD9C090F34D0FE067ECE810000000912EA94F6000000000AD357790000000910D1010200000001067ECE850000000A00000009000000040F350CFE000000040000000A000000030000000212073D0608A91309120700FE04548A01138670F60CFD9BF9000000050F34D1020000000104548A05000000051386AD04000000050000000200000000000000080000000412073CFE0000000404548A01138670F60CFD9BF90000000A0000000A000000001386ACF6000000000CFD9BF90F350D0204548A050000000A1386AD040CFD9C070000000A0000000A00000002000000010F34D1020000000104548A050000000A1386AD040CFD9C070F34D106000000030CFD9C090F34D0FE067ECE810000000A12EA94F6000000000AD357790000000A0000000A000000040000000A0000000A000000020000000312073D0408A91307120701060000000308A91309120700FE04548A01000000091386ACF6000000000CFD9BF9000000090F34D102000000010CFD9C050F34D1040000000204548A07000000051386AD0604548A0900000005000000090000000300000009000000040000000912073D0608A91309120700FE04548A01138670F60CFD9BF90F350D0200000005000000010F34D102000000010CFD9C050F34D104000000020CFD9C07000000050F350D0600000005000000030F350D040CFD9C07000000050F350D0604548A0900000005000000090000000300000002000000001386ACF6000000000CFD9BF90F350D020CFD9C050F34D10400000002000000080F350D040CFD9C07000000050000000800000002000000010F34D102000000010CFD9C050F34D104000000020CFD9C070F34D1060000000304548A09000000051386ACFE00000004067ECE8112EA58F60AD357790000000510D10102000000010AD3578500000005000000090000000012EA94F6000000000AD357790000000810D10102000000010AD3578510D10104000000020000000810D13D040AD3578710D1010600000003000000090000000800000002000000080F350D040CFD9C070F34D1060000000304548A09138670FE0000000500000004000000090F350D0604548A09000000081386ACFE000000040C9A87040F87510500000002000000070000000800000003000000020000000412073CFE0000000404548A01138670F60CFD9BF9000000090F34D102000000010CFD9C050F34D104000000020CFD9C070F34D10600000003000000090F350D060000000A0000000300000009000000001386ACF6000000000CFD9BF90F350D020CFD9C050F34D104000000020CFD9C070F34D10600000003000000090F350D060CFD9C0900000008000000090000000300000009000000010F34D102000000010CFD9C050F34D104000000020CFD9C070F34D106000000030CFD9C090F34D0FE067ECE810000000912EA94F6000000000AD357790000000910D10102000000010AD3578510D10104000000020AD3578710D10106000000030000000910D13D060000000A000000030000000900000004000000090F350D060CFD9C090F34D0FE0C9A87060000000A0F878D07067ECE810000000A12EA94F6000000000AD357790000000810D10102000000010AD357850000000A10D13D040000000A0000000200000003000000040000000A000000030F350D040CFD9C070F34D10600000003000000090F350D060CFD9C090F34D0FE0C9A8704000000090F878D050C9A87060F8751070000000300000007000000090000000200000004000000090000000300000002000000030000000200000001"
theorem small_4400643_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4400643_left_root small_4400643_left_fuel small_4400643_left_count small_4400643_left_encoded = true := by
  decide +kernel
theorem small_4400643_left_covered : CoveredBy scale carrier boxes small_4400643_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4400643_left_root small_4400643_left_fuel small_4400643_left_count small_4400643_left_encoded small_4400643_left_checked

theorem cover_4400643 : CoveredBy scale carrier boxes root_4400643 := by
  apply coveredBy_split_literal root_4400643 small_4400643_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0318.root_4401521 coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_4400643_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0318.cover_4401521
#print axioms cover_4400643

def root_4400638 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4400638_right_root : ZRayBox := fun j => (#[⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4400638_right_fuel : Nat := 1
def small_4400638_right_count : Nat := 1
def small_4400638_right_encoded : String := "00000000"
theorem small_4400638_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4400638_right_root small_4400638_right_fuel small_4400638_right_count small_4400638_right_encoded = true := by
  decide +kernel
theorem small_4400638_right_covered : CoveredBy scale carrier boxes small_4400638_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4400638_right_root small_4400638_right_fuel small_4400638_right_count small_4400638_right_encoded small_4400638_right_checked

theorem cover_4400638 : CoveredBy scale carrier boxes root_4400638 := by
  apply coveredBy_split_literal root_4400638 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0318.root_4400643 small_4400638_right_root coord0 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0318.cover_4400643
  · exact small_4400638_right_covered
#print axioms cover_4400638

def root_4433207 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4433207 : CoveredBy scale carrier boxes root_4433207 := by
  apply coveredBy_split_literal root_4433207 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1660.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1661.root coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1660.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1661.covered
#print axioms cover_4433207

def root_4433202 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4433202_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4433202_right_fuel : Nat := 1
def small_4433202_right_count : Nat := 1
def small_4433202_right_encoded : String := "00000001"
theorem small_4433202_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4433202_right_root small_4433202_right_fuel small_4433202_right_count small_4433202_right_encoded = true := by
  decide +kernel
theorem small_4433202_right_covered : CoveredBy scale carrier boxes small_4433202_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4433202_right_root small_4433202_right_fuel small_4433202_right_count small_4433202_right_encoded small_4433202_right_checked

theorem cover_4433202 : CoveredBy scale carrier boxes root_4433202 := by
  apply coveredBy_split_literal root_4433202 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0318.root_4433207 small_4433202_right_root coord1 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0318.cover_4433207
  · exact small_4433202_right_covered
#print axioms cover_4433202

def root_4441019 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4441019 : CoveredBy scale carrier boxes root_4441019 := by
  apply coveredBy_split_literal root_4441019 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1663.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1664.root coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1663.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1664.covered
#print axioms cover_4441019

def root_4441014 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4441014_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4441014_right_fuel : Nat := 1
def small_4441014_right_count : Nat := 1
def small_4441014_right_encoded : String := "00000003"
theorem small_4441014_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4441014_right_root small_4441014_right_fuel small_4441014_right_count small_4441014_right_encoded = true := by
  decide +kernel
theorem small_4441014_right_covered : CoveredBy scale carrier boxes small_4441014_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4441014_right_root small_4441014_right_fuel small_4441014_right_count small_4441014_right_encoded small_4441014_right_checked

theorem cover_4441014 : CoveredBy scale carrier boxes root_4441014 := by
  apply coveredBy_split_literal root_4441014 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0318.root_4441019 small_4441014_right_root coord3 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0318.cover_4441019
  · exact small_4441014_right_covered
#print axioms cover_4441014

def root_4440084 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4440084_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4440084_left_fuel : Nat := 29
def small_4440084_left_count : Nat := 441
def small_4440084_left_encoded : String := "120701060000000308A91309120700FE0CFD9C010F34D0F6045489F91386AD020CFD9C050F34D1040000000204548A07000000061386AD0604548A09000000061386ACFE000000040AD3578110D100F6067ECE7912EA95020000000600000001000000060000000000000006000000030F350D0400000006000000020000000113867102000000010CFD9C050F34D1040000000204548A07000000061386AD0604548A09000000061386ACFE000000040AD3578110D100F6022A457913E201020AD35785000000060000000600000001000000060000000000000006000000030F350D040000000600000002000000000F350CF600000000045489F900000006000000060000000412073CFE000000040CFD9C010F34D0F6045489F91386AD020CFD9C050F34D1040000000204548A0713867106000000030CFD9C090F34D0FE0AD3578110D100F6067ECE7900000006000000060000000000000006000000040F350CFE000000040C9A86FE00000008000000081386AD060CFD9C090F34D0FE0AD3578110D100F6067ECE7912EA95020AD3578510D1010400000002067ECE8712EA5906000000030AD35789000000060000000912EA95060AD3578910D100FE09BE3541117740F60793F0B9000000060000000600000000000000060000000410D13CFE0000000409BE35410000000911777CF6000000000793F0B900000009128221020000000109BE35450000000A000000060000000310D13D0400000009000000020000000112EA5902000000010AD3578510D1010400000002067ECE8712EA5906000000030AD35789000000060000000712EA95060AD3578910D100FE09BE3541117740F60569AC39000000060000000600000000000000060000000410D13CFE0000000409BE3541117740F60569AC39134111020000000A00000001000000080000000011777CF600000000000000050000000310D13D04067ECE870000000612EA95060AD35789000000060000000900000003000000020000000010D13CF600000000067ECE7912EA95020AD3578510D1010400000002067ECE870000000612EA95060AD357890000000610D13CFE00000004000000060000000310D13D0400000006000000020000000112EA5902000000010AD3578510D1010400000002067ECE870000000612EA95060AD3578900000006000000050000000310D13D040000000600000002000000040F350CFE000000040C9A86FE0F878D090AD3578110D100F6067ECE7912EA95020000000900000001000000080000000010D13CF600000000067ECE7912EA95020AD3578510D101040000000200000005000000050000000100000005000000040F8751090000000400000005000000030F350D0404548A0713867106000000030CFD9C0900000006000000091386AD060CFD9C090F34D0FE0C9A8704000000060F878D050AD35781000000090000000600000002000000040F350CFE000000040C9A8704000000090F878D050C9A86FE000000090F87510900000004000000050000000200000003000000020000000113867102000000010CFD9C050F34D1040000000204548A0713867106000000030CFD9C090F34D0FE0000000600000004000000081386AD060CFD9C090F34D0FE0AD3578110D100F6022A457913E201020AD3578510D1010400000002067ECE870000000712EA95060AD3578910D100FE000000070000000410D13CFE00000004000000050000000310D13D04067ECE870000000612EA95060AD35789000000060000000500000003000000020000000113E1C502000000010AD3578510D101040000000200000007000000080000000010D13CF600000000022A457913E201020AD3578510D1010400000002067ECE87000000060000000510D13D0400000006000000020000000113E1C502000000010AD3578510D10104000000020000000500000005000000040F350CFE0000000400000005000000030F350D0404548A071386710600000003000000081386AD060CFD9C090F34D0FE0C9A8704000000060F878D050AD3578100000008000000060000000200000004000000080000000300000002000000000F350CF600000000045489F91386AD020CFD9C050F34D1040000000204548A0713867106000000030CFD9C09000000060F350CFE00000004000000051386AD060CFD9C090F34D0FE0C9A86F60F878D01067ECE7900000006000000060000000000000006000000040F350CFE0000000400000005000000030F350D0404548A07000000061386AD060CFD9C09000000060F350CFE000000040000000500000003000000020000000113867102000000010CFD9C050F34D1040000000204548A0713867106000000030CFD9C090000000600000005000000050F350D0404548A07000000061386AD060CFD9C0900000006000000050000000300000002"
theorem small_4440084_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4440084_left_root small_4440084_left_fuel small_4440084_left_count small_4440084_left_encoded = true := by
  decide +kernel
theorem small_4440084_left_covered : CoveredBy scale carrier boxes small_4440084_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4440084_left_root small_4440084_left_fuel small_4440084_left_count small_4440084_left_encoded small_4440084_left_checked

theorem cover_4440084 : CoveredBy scale carrier boxes root_4440084 := by
  apply coveredBy_split_literal root_4440084 small_4440084_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0318.root_4441014 coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_4440084_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0318.cover_4441014
#print axioms cover_4440084

def root_4440079 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4440079_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4440079_right_fuel : Nat := 1
def small_4440079_right_count : Nat := 1
def small_4440079_right_encoded : String := "00000002"
theorem small_4440079_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4440079_right_root small_4440079_right_fuel small_4440079_right_count small_4440079_right_encoded = true := by
  decide +kernel
theorem small_4440079_right_covered : CoveredBy scale carrier boxes small_4440079_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4440079_right_root small_4440079_right_fuel small_4440079_right_count small_4440079_right_encoded small_4440079_right_checked

theorem cover_4440079 : CoveredBy scale carrier boxes root_4440079 := by
  apply coveredBy_split_literal root_4440079 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0318.root_4440084 small_4440079_right_root coord2 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0318.cover_4440084
  · exact small_4440079_right_covered
#print axioms cover_4440079

def root_4438041 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4438041 : CoveredBy scale carrier boxes root_4438041 := by
  apply coveredBy_split_literal root_4438041 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1662.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0318.root_4440079 coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1662.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0318.cover_4440079
#print axioms cover_4438041

def root_4438035 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4438035_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4438035_left_fuel : Nat := 1
def small_4438035_left_count : Nat := 1
def small_4438035_left_encoded : String := "00000001"
theorem small_4438035_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4438035_left_root small_4438035_left_fuel small_4438035_left_count small_4438035_left_encoded = true := by
  decide +kernel
theorem small_4438035_left_covered : CoveredBy scale carrier boxes small_4438035_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4438035_left_root small_4438035_left_fuel small_4438035_left_count small_4438035_left_encoded small_4438035_left_checked

theorem cover_4438035 : CoveredBy scale carrier boxes root_4438035 := by
  apply coveredBy_split_literal root_4438035 small_4438035_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0318.root_4438041 coord1 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_4438035_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0318.cover_4438041
#print axioms cover_4438035

def root_4433201 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4433201 : CoveredBy scale carrier boxes root_4433201 := by
  apply coveredBy_split_literal root_4433201 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0318.root_4433202 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0318.root_4438035 coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0318.cover_4433202
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0318.cover_4438035
#print axioms cover_4433201

def root_4433195 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4433195_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4433195_left_fuel : Nat := 1
def small_4433195_left_count : Nat := 1
def small_4433195_left_encoded : String := "00000000"
theorem small_4433195_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4433195_left_root small_4433195_left_fuel small_4433195_left_count small_4433195_left_encoded = true := by
  decide +kernel
theorem small_4433195_left_covered : CoveredBy scale carrier boxes small_4433195_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4433195_left_root small_4433195_left_fuel small_4433195_left_count small_4433195_left_encoded small_4433195_left_checked

theorem cover_4433195 : CoveredBy scale carrier boxes root_4433195 := by
  apply coveredBy_split_literal root_4433195 small_4433195_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0318.root_4433201 coord0 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_4433195_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0318.cover_4433201
#print axioms cover_4433195

def root_4400637 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4400637 : CoveredBy scale carrier boxes root_4400637 := by
  apply coveredBy_split_literal root_4400637 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0318.root_4400638 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0318.root_4433195 coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0318.cover_4400638
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0318.cover_4433195
#print axioms cover_4400637

def root_4400632 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4400632_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4400632_right_fuel : Nat := 1
def small_4400632_right_count : Nat := 1
def small_4400632_right_encoded : String := "00000004"
theorem small_4400632_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4400632_right_root small_4400632_right_fuel small_4400632_right_count small_4400632_right_encoded = true := by
  decide +kernel
theorem small_4400632_right_covered : CoveredBy scale carrier boxes small_4400632_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4400632_right_root small_4400632_right_fuel small_4400632_right_count small_4400632_right_encoded small_4400632_right_checked

theorem cover_4400632 : CoveredBy scale carrier boxes root_4400632 := by
  apply coveredBy_split_literal root_4400632 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0318.root_4400637 small_4400632_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0318.cover_4400637
  · exact small_4400632_right_covered
#print axioms cover_4400632

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0318
