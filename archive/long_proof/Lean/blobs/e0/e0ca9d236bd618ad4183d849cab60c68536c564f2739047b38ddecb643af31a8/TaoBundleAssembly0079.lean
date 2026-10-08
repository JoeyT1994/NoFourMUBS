import TaoBundleAssembly0078
import TaoBundleChunkBatch0316
import TaoBundleChunkBatch0317
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079
def root_3290123 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3290123_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3290123_right_fuel : Nat := 32
def small_3290123_right_count : Nat := 443
def small_3290123_right_encoded : String := "12073CFA0000000208A91307120701060000000308A91309120700FE0CFD9C010F34D0F60CFD9C03000000090F350CF8000000010CFD9C050F34D0FA04548A071386710600000003000000091386AD0604548A09138670FE000000090000000400000009000000030000000200000009000000000F350CF6000000000CFD9C030F34D0F80CFD9C050F34D0FA04548A07138671060000000300000009000000070000000200000009000000010F350CF8000000010CFD9C050F34D0FA04548A07138671060000000304548A09138670FE0C9A86F60F878D010C9A86F80F878D0300000009000000010F875103000000010AD3578510D100FA022A458713E1C50600000003022A4589000000080000000813E20106022A45890000000A00000009000000030000000200000009000000000F875101000000000C9A86F80F878D030AD3578510D100FA000000070000000200000007000000010F875103000000010AD3578510D100FA022A458713E1C50600000003022A458913E1C4FE0B4D43F610804D010B4D43F8000000070000000800000000000000070000000413E200FE000000040B4D43F610804D010B4D43F800000009000000080000000010801101000000000B4D43F800000007108011030000000109BE3545117740FA00000007000000020000000713E20106022A45890000000700000007000000030000000210D13CFA00000002022A458713E1C50600000003022A45890000000713E200FE000000040B4D43F6000000090000000700000007000000041386ACFE000000040C9A86F60F878D0100000009000000000F875101000000000C9A86F80F878D0300000009000000010F875103000000010AD3578510D100FA022A458713E1C50600000003067ECE8912EA58FE00000009000000040000000913E20106067ECE8900000007000000050000000300000002000000091386AD0604548A09138670FE0C9A86F60F878D010C9A86F80F878D0300000007000000010F875103000000010AD3578510D100FA067ECE8712EA590600000003022A45890000000700000007000000070000000210D13CFA0000000200000007000000000F8751010000000000000007000000041386ACFE000000040C9A86F60F878D010C9A86F8000000090F875103000000010AD357850000000600000005000000000F875101000000000C9A86F8000000070F875103000000010000000500000003000000020F350CFA0000000204548A07138671060000000304548A09138670FE0C9A86F60F878D010C9A86F8000000090F875103000000010C9A86FA0000000900000009000000000F875101000000000C9A86F80F878D0300000007000000010F875103000000010C9A86FA0F878D05022A458713E1C50600000003022A4589000000070000000700000007000000020F8751050000000200000007000000041386ACFE000000040C9A86F6000000090F875101000000000C9A86F8000000090F87510300000001000000051386AD0604548A09138670FE0C9A86F60F878D010C9A86F8000000070F875103000000010C9A86FA000000070F87510500000002000000050000000000000007000000041386ACFE000000040C9A86F60F878D01000000090000000000000007000000030000000412073CFE000000040CFD9C010F34D0F600000009000000000F350CF6000000000CFD9C030F34D0F800000009000000010F350CF8000000010CFD9C050F34D0FA04548A0713867106000000030CFD9C090F34D0FE0000000900000004000000091386AD060CFD9C090F34D0FE0C9A86F6000000050F8751010000000000000005000000040000000500000003000000020F350CFA0000000204548A0713867106000000030CFD9C090F34D0FE0000000900000004000000050000000512073D0608A91309120700FE0CFD9C010F34D0F60CFD9C030F34D0F80CFD9C050F34D0FA000000070000000200000007000000010F350CF8000000010CFD9C050F34D0FA0CFD9C070F34D1060000000304548A09138670FE0C9A86F80000000700000006000000040000000600000006000000020F350CFA000000020CFD9C070F34D1060000000304548A09138670FE0C9A86F80000000700000006000000040000000500000005000000000F350CF6000000000CFD9C030F34D0F800000007000000010F350CF8000000010CFD9C050F34D0FA0CFD9C070F34D1060000000304548A09000000070000000500000005000000020F350CFA000000020CFD9C070F34D1060000000300000007000000050000000412073CFE000000040CFD9C010F34D0F60CFD9C030F34D0F80CFD9C050000000600000005000000010F350CF8000000010CFD9C050000000600000005000000000F350CF6000000000CFD9C030F34D0F80CFD9C050F34D0FA000000050000000200000005000000010000000500000003"
theorem small_3290123_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3290123_right_root small_3290123_right_fuel small_3290123_right_count small_3290123_right_encoded = true := by
  decide +kernel
theorem small_3290123_right_covered : CoveredBy scale carrier boxes small_3290123_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3290123_right_root small_3290123_right_fuel small_3290123_right_count small_3290123_right_encoded small_3290123_right_checked

theorem cover_3290123 : CoveredBy scale carrier boxes root_3290123 := by
  apply coveredBy_split_literal root_3290123 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.root_3290124 small_3290123_right_root coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.cover_3290124
  · exact small_3290123_right_covered
#print axioms cover_3290123

def root_3290117 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3290117_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3290117_left_fuel : Nat := 1
def small_3290117_left_count : Nat := 1
def small_3290117_left_encoded : String := "00000001"
theorem small_3290117_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3290117_left_root small_3290117_left_fuel small_3290117_left_count small_3290117_left_encoded = true := by
  decide +kernel
theorem small_3290117_left_covered : CoveredBy scale carrier boxes small_3290117_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3290117_left_root small_3290117_left_fuel small_3290117_left_count small_3290117_left_encoded small_3290117_left_checked

theorem cover_3290117 : CoveredBy scale carrier boxes root_3290117 := by
  apply coveredBy_split_literal root_3290117 small_3290117_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.root_3290123 coord1 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_3290117_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.cover_3290123
#print axioms cover_3290117

def root_3289913 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3289913_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3289913_left_fuel : Nat := 17
def small_3289913_left_count : Nat := 95
def small_3289913_left_encoded : String := "120700F808A91305120700FA08A91307120701060000000308A91309120700FE0CFD9C01000000090F350CF60000000004548A03000000091386ACF80000000104548A05138670FA04548A071386710600000003000000091386AD0604548A090000000700000007000000030000000200000009000000040000000912073D0608A91309120700FE0CFD9C010F34D0F604548A03000000071386ACF80000000104548A05138670FA000000070000000200000007000000000F350CF600000000000000070000000412073CFE000000040CFD9C010F34D0F600000009000000000F350CF60000000004548A03138670F804548A050000000700000007000000011386ACF80000000104548A05138670FA0CFD9C070F34D1060000000300000007000000070000000200000007000000030000000212073CFA0000000208A91307120701060000000308A91309120700FE00000009000000040000000912073D0608A913090000000712073CFE00000004000000070000000300000001"
theorem small_3289913_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3289913_left_root small_3289913_left_fuel small_3289913_left_count small_3289913_left_encoded = true := by
  decide +kernel
theorem small_3289913_left_covered : CoveredBy scale carrier boxes small_3289913_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3289913_left_root small_3289913_left_fuel small_3289913_left_count small_3289913_left_encoded small_3289913_left_checked

theorem cover_3289913 : CoveredBy scale carrier boxes root_3289913 := by
  apply coveredBy_split_literal root_3289913 small_3289913_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.root_3290117 coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_3289913_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.cover_3290117
#print axioms cover_3289913

def root_3289907 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3289907_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3289907_left_fuel : Nat := 1
def small_3289907_left_count : Nat := 1
def small_3289907_left_encoded : String := "00000000"
theorem small_3289907_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3289907_left_root small_3289907_left_fuel small_3289907_left_count small_3289907_left_encoded = true := by
  decide +kernel
theorem small_3289907_left_covered : CoveredBy scale carrier boxes small_3289907_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3289907_left_root small_3289907_left_fuel small_3289907_left_count small_3289907_left_encoded small_3289907_left_checked

theorem cover_3289907 : CoveredBy scale carrier boxes root_3289907 := by
  apply coveredBy_split_literal root_3289907 small_3289907_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.root_3289913 coord0 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_3289907_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.cover_3289913
#print axioms cover_3289907

def root_3289667 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3289667_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3289667_left_fuel : Nat := 18
def small_3289667_left_count : Nat := 111
def small_3289667_left_encoded : String := "120700F608A91303120700F808A91305120700FA08A9130712070106000000030000000912073D0608A91309120700FE0000000900000004000000090000000300000002000000090000000112073CF80000000108A91305120700FA08A91307120701060000000308A91309120700FE04548A01000000091386ACF6000000000CFD9C03000000090F350CF80000000104548A05138670FA04548A07138671060000000300000009000000060000000200000009000000040000000912073D0608A91309120700FE04548A01138670F600000006000000001386ACF6000000000CFD9C030F34D0F804548A050000000600000006000000010F350CF800000001000000060000000400000006000000030000000212073CFA0000000208A91307120701060000000308A91309120700FE00000009000000040000000912073D0608A91309120700FE04548A01138670F60CFD9C03000000060F350CF8000000010CFD9C050000000600000009000000001386ACF6000000000CFD9C030F34D0F800000009000000010F350CF8000000010CFD9C05000000060F350CFA00000002000000060000000412073CFE00000004000000060000000300000000"
theorem small_3289667_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3289667_left_root small_3289667_left_fuel small_3289667_left_count small_3289667_left_encoded = true := by
  decide +kernel
theorem small_3289667_left_covered : CoveredBy scale carrier boxes small_3289667_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3289667_left_root small_3289667_left_fuel small_3289667_left_count small_3289667_left_encoded small_3289667_left_checked

theorem cover_3289667 : CoveredBy scale carrier boxes root_3289667 := by
  apply coveredBy_split_literal root_3289667 small_3289667_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.root_3289907 coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_3289667_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.cover_3289907
#print axioms cover_3289667

def root_3289662 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3289662_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3289662_right_fuel : Nat := 1
def small_3289662_right_count : Nat := 1
def small_3289662_right_encoded : String := "00000004"
theorem small_3289662_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3289662_right_root small_3289662_right_fuel small_3289662_right_count small_3289662_right_encoded = true := by
  decide +kernel
theorem small_3289662_right_covered : CoveredBy scale carrier boxes small_3289662_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3289662_right_root small_3289662_right_fuel small_3289662_right_count small_3289662_right_encoded small_3289662_right_checked

theorem cover_3289662 : CoveredBy scale carrier boxes root_3289662 := by
  apply coveredBy_split_literal root_3289662 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.root_3289667 small_3289662_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.cover_3289667
  · exact small_3289662_right_covered
#print axioms cover_3289662

def root_3289661 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3289661_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3289661_right_fuel : Nat := 25
def small_3289661_right_count : Nat := 191
def small_3289661_right_encoded : String := "1151E9090000000408A91301120700F608A913030000000912073CF80000000108A91305120700FA08A913071207010600000003000000090000000600000002000000090000000012073CF60000000008A91303120700F808A91305120700FA08A9130712070106000000030000000912073D06050000FE135D81090CFD9C01000000070F350CF60000000004548A03000000091386ACF80000000104548A05000000070000000500000004135D4509000000040CFD9C01000000090F350CF60000000004548A03000000091386ACF80000000104548A0500000007000000050000000300000002000000090000000112073CF80000000108A91305120700FA08A913071207010600000003050000FE135D81090CFD9C010F34D0F600000009000000000F350CF6000000000CFD9C030F34D0F800000009000000010F350CF80000000104548A05138670FA04548A0713867106000000030C9A86F6000000090F875101000000000C9A86F8000000090F87510300000001078000FE00000006000000061386AD060C9A86F6000000060F875101000000000000000500000003000000021386ACFA0000000204548A07000000090000000500000004135D4509000000040CFD9C010F34D0F600000009000000000F350CF6000000000CFD9C030F34D0F800000009000000010F350CF80000000104548A05138670FA04548A0713867106000000030C9A86F6000000090F875101000000000C9A86F8000000090F875103000000010000000500000005000000020000000512073D06050000FE135D81090CFD9C010F34D0F600000006000000000F350CF6000000000CFD9C030F34D0F804548A05138670FA000000050000000200000005000000010000000500000004135D4509000000040CFD9C010F34D0F6000000060000000000000005000000030000000212073CFA0000000208A913071207010600000003050000FE135D81090CFD9C01000000090F350CF6000000000CFD9C03000000090000000500000004135D4509000000040CFD9C01000000090000000500000005"
theorem small_3289661_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3289661_right_root small_3289661_right_fuel small_3289661_right_count small_3289661_right_encoded = true := by
  decide +kernel
theorem small_3289661_right_covered : CoveredBy scale carrier boxes small_3289661_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3289661_right_root small_3289661_right_fuel small_3289661_right_count small_3289661_right_encoded small_3289661_right_checked

theorem cover_3289661 : CoveredBy scale carrier boxes root_3289661 := by
  apply coveredBy_split_literal root_3289661 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.root_3289662 small_3289661_right_root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.cover_3289662
  · exact small_3289661_right_covered
#print axioms cover_3289661

def root_3289656 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3289656_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3289656_right_fuel : Nat := 1
def small_3289656_right_count : Nat := 1
def small_3289656_right_encoded : String := "00000003"
theorem small_3289656_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3289656_right_root small_3289656_right_fuel small_3289656_right_count small_3289656_right_encoded = true := by
  decide +kernel
theorem small_3289656_right_covered : CoveredBy scale carrier boxes small_3289656_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3289656_right_root small_3289656_right_fuel small_3289656_right_count small_3289656_right_encoded small_3289656_right_checked

theorem cover_3289656 : CoveredBy scale carrier boxes root_3289656 := by
  apply coveredBy_split_literal root_3289656 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.root_3289661 small_3289656_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.cover_3289661
  · exact small_3289656_right_covered
#print axioms cover_3289656

def root_3289422 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3289422_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3289422_left_fuel : Nat := 17
def small_3289422_left_count : Nat := 113
def small_3289422_left_encoded : String := "1151E907000000030A0000FE1152250908A91301120700F608A91303120700F808A9130500000006000000070000000112073CF80000000108A91305120700FA000000060000000212073CFA0000000208A91309120700FE0500010600000007000000070000000412073CFE000000040500010600000005000000060000000012073CF60000000008A91303120700F808A91305120700FA08A913090000000712073CFE000000040500010600000006000000060000000212073CFA0000000208A913090000000712073CFE000000040500010600000005000000060000000112073CF80000000108A91305120700FA08A91309120700FE05000106135D4507000000030CFD9C010000000700000005135D81070CFD9C010F34D0F600000006000000000F350CF6000000000CFD9C030000000700000005000000030000000412073CFE000000040500010600000005000000060000000212073CFA0000000208A91309120700FE0500010600000005000000070000000400000005000000041151E9090000000408A91301120700F6000000060000000012073CF60000000008A91303120700F808A91305120700FA0000000600000002000000050000000100000005"
theorem small_3289422_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3289422_left_root small_3289422_left_fuel small_3289422_left_count small_3289422_left_encoded = true := by
  decide +kernel
theorem small_3289422_left_covered : CoveredBy scale carrier boxes small_3289422_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3289422_left_root small_3289422_left_fuel small_3289422_left_count small_3289422_left_encoded small_3289422_left_checked

theorem cover_3289422 : CoveredBy scale carrier boxes root_3289422 := by
  apply coveredBy_split_literal root_3289422 small_3289422_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.root_3289656 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_3289422_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.cover_3289656
#print axioms cover_3289422

def root_3289417 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3289417_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3289417_right_fuel : Nat := 1
def small_3289417_right_count : Nat := 1
def small_3289417_right_encoded : String := "00000002"
theorem small_3289417_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3289417_right_root small_3289417_right_fuel small_3289417_right_count small_3289417_right_encoded = true := by
  decide +kernel
theorem small_3289417_right_covered : CoveredBy scale carrier boxes small_3289417_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3289417_right_root small_3289417_right_fuel small_3289417_right_count small_3289417_right_encoded small_3289417_right_checked

theorem cover_3289417 : CoveredBy scale carrier boxes root_3289417 := by
  apply coveredBy_split_literal root_3289417 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.root_3289422 small_3289417_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.cover_3289422
  · exact small_3289417_right_covered
#print axioms cover_3289417

def root_3289416 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3289416_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3289416_right_fuel : Nat := 29
def small_3289416_right_count : Nat := 237
def small_3289416_right_encoded : String := "1151E905000000020A0001061151E907000000030A0000FE1152250908A91301120700F608A913030000000712073CF80000000108A91309120700FE0000000700000004000000050000000012073CF60000000008A913030000000700000005000000041151E9090000000400000005115225070A0000FE1152250908A91301120700F608A913030000000912073CF80000000108A9130712070106000000030000000912073D0608A91309120700FE050000FA135D810504548A01000000091386ACF6000000000CFD9C03000000060F350CF8000000010CFD9C07000000060000000500000002135D45050000000204548A01000000091386ACF6000000000CFD9C03000000060F350CF8000000010CFD9C0700000006000000050000000400000009000000030000000012073CF60000000008A91303120700F808A9130712070106000000030000000912073D0608A913090000000700000007000000030000000112073CF80000000108A91307120701060000000308A91309120700FE050000FA135D81050CFD9C010F34D0F600000009000000000F350CF6000000000CFD9C030F34D0F800000007000000010F350CF80000000104548A07138671060000000304548A09138670FE0C9A86F6000000090F875101000000000C9A86F8000000070F87510300000001078000FA000000070000000700000004000000091386AD0604548A09138670FE0C9A86F60F878D0100000007000000000000000700000004000000050000000300000002135D4505000000020CFD9C010F34D0F600000009000000000F350CF6000000000CFD9C030F34D0F800000009000000010F350CF80000000104548A07138671060000000304548A09138670FE0C9A86F6000000090F875101000000000C9A86F8000000090F87510300000001000000050000000400000005000000050000000412073CFE00000004050000FA135D81050CFD9C01000000090F350CF6000000000CFD9C03000000090000000500000002135D4505000000020CFD9C01000000090000000512073D0608A91309120700FE050000FA135D81050CFD9C010F34D0F60CFD9C03000000060F350CF8000000010CFD9C070F34D106000000030000000600000005000000000F350CF6000000000000000700000002135D4505000000020CFD9C010F34D0F60CFD9C0300000006000000050000000000000005000000040000000500000003000000041151E9090000000408A91301120700F6000000060000000012073CF60000000008A91303120700F800000007000000010000000500000003"
theorem small_3289416_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3289416_right_root small_3289416_right_fuel small_3289416_right_count small_3289416_right_encoded = true := by
  decide +kernel
theorem small_3289416_right_covered : CoveredBy scale carrier boxes small_3289416_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3289416_right_root small_3289416_right_fuel small_3289416_right_count small_3289416_right_encoded small_3289416_right_checked

theorem cover_3289416 : CoveredBy scale carrier boxes root_3289416 := by
  apply coveredBy_split_literal root_3289416 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.root_3289417 small_3289416_right_root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.cover_3289417
  · exact small_3289416_right_covered
#print axioms cover_3289416

def root_3289411 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3289411_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3289411_right_fuel : Nat := 1
def small_3289411_right_count : Nat := 1
def small_3289411_right_encoded : String := "00000001"
theorem small_3289411_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3289411_right_root small_3289411_right_fuel small_3289411_right_count small_3289411_right_encoded = true := by
  decide +kernel
theorem small_3289411_right_covered : CoveredBy scale carrier boxes small_3289411_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3289411_right_root small_3289411_right_fuel small_3289411_right_count small_3289411_right_encoded small_3289411_right_checked

theorem cover_3289411 : CoveredBy scale carrier boxes root_3289411 := by
  apply coveredBy_split_literal root_3289411 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.root_3289416 small_3289411_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.cover_3289416
  · exact small_3289411_right_covered
#print axioms cover_3289411

def root_3306668 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3306668_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3306668_right_fuel : Nat := 22
def small_3306668_right_count : Nat := 129
def small_3306668_right_encoded : String := "12073CFE00000004050000F8135D81030CFD9C010F34D0F604548A050000000600000006000000000F350CF60000000004548A05138670FA04548A0713867106000000030CFD9C090F34D0FE0C9A86F6000000060F87510100000000078000F8128A7D03022A45850000000613E200FA00000002022A458713E1C506000000030AD3578910D100FE000000060000000400000006000000060000000100000006000000040F350CFE00000004000000061386AD060CFD9C090F34D0FE00000006000000040000000600000003000000021386ACFA0000000204548A0713867106000000030CFD9C090F34D0FE0C9A86F60F878D0100000006000000000F87510100000000078000F8128A7D03067ECE8512EA58FA022A458713E1C506000000030AD3578910D100FE00000006000000040000000500000005000000020000000500000001128A410300000001067ECE850000000600000005000000040F350CFE000000040C9A86F6000000060F87510100000000000000051386AD060CFD9C090F34D0FE0000000600000004000000050000000300000001135D4503000000010CFD9C010F34D0F600000006000000000F350CF60000000004548A05138670FA04548A0713867106000000030000000600000006000000021386ACFA0000000204548A0713867106000000030CFD9C090F34D0FE00000006000000040000000500000005"
theorem small_3306668_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3306668_right_root small_3306668_right_fuel small_3306668_right_count small_3306668_right_encoded = true := by
  decide +kernel
theorem small_3306668_right_covered : CoveredBy scale carrier boxes small_3306668_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3306668_right_root small_3306668_right_fuel small_3306668_right_count small_3306668_right_encoded small_3306668_right_checked

theorem cover_3306668 : CoveredBy scale carrier boxes root_3306668 := by
  apply coveredBy_split_literal root_3306668 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1262.root small_3306668_right_root coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1262.covered
  · exact small_3306668_right_covered
#print axioms cover_3306668

def root_3306662 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3306662_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3306662_left_fuel : Nat := 1
def small_3306662_left_count : Nat := 1
def small_3306662_left_encoded : String := "00000003"
theorem small_3306662_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3306662_left_root small_3306662_left_fuel small_3306662_left_count small_3306662_left_encoded = true := by
  decide +kernel
theorem small_3306662_left_covered : CoveredBy scale carrier boxes small_3306662_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3306662_left_root small_3306662_left_fuel small_3306662_left_count small_3306662_left_encoded small_3306662_left_checked

theorem cover_3306662 : CoveredBy scale carrier boxes root_3306662 := by
  apply coveredBy_split_literal root_3306662 small_3306662_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.root_3306668 coord3 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_3306662_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.cover_3306668
#print axioms cover_3306662

def root_3306661 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3306661_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3306661_right_fuel : Nat := 20
def small_3306661_right_count : Nat := 91
def small_3306661_right_encoded : String := "12073D0608A91309120700FE050000F8135D81030CFD9C010F34D0F604548A050000000600000006000000000F350CF60000000004548A05138670FA0CFD9C070F34D1060000000304548A09138670FE0C9A86F6000000060F87510100000000078000F8128A7D03022A458500000006000000060000000100000006000000040000000600000006000000021386ACFA000000020CFD9C070F34D1060000000304548A09138670FE0C9A86F60000000A0F87510100000000078000F8128A7D03067ECE8512EA58FA000000050000000200000005000000010000000A00000004000000050000000500000001135D4503000000010CFD9C010F34D0F600000006000000000F350CF60000000004548A05000000061386ACFA000000020CFD9C070F34D1060000000300000006000000050000000412073CFE00000004050000F8135D81030CFD9C01000000060F350CF60000000004548A050000000600000005000000010000000600000003"
theorem small_3306661_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3306661_right_root small_3306661_right_fuel small_3306661_right_count small_3306661_right_encoded = true := by
  decide +kernel
theorem small_3306661_right_covered : CoveredBy scale carrier boxes small_3306661_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3306661_right_root small_3306661_right_fuel small_3306661_right_count small_3306661_right_encoded small_3306661_right_checked

theorem cover_3306661 : CoveredBy scale carrier boxes root_3306661 := by
  apply coveredBy_split_literal root_3306661 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.root_3306662 small_3306661_right_root coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.cover_3306662
  · exact small_3306661_right_covered
#print axioms cover_3306661

def root_3306656 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3306656_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3306656_right_fuel : Nat := 1
def small_3306656_right_count : Nat := 1
def small_3306656_right_encoded : String := "00000002"
theorem small_3306656_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3306656_right_root small_3306656_right_fuel small_3306656_right_count small_3306656_right_encoded = true := by
  decide +kernel
theorem small_3306656_right_covered : CoveredBy scale carrier boxes small_3306656_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3306656_right_root small_3306656_right_fuel small_3306656_right_count small_3306656_right_encoded small_3306656_right_checked

theorem cover_3306656 : CoveredBy scale carrier boxes root_3306656 := by
  apply coveredBy_split_literal root_3306656 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.root_3306661 small_3306656_right_root coord2 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.cover_3306661
  · exact small_3306656_right_covered
#print axioms cover_3306656

def root_3306655 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3306655_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3306655_right_fuel : Nat := 30
def small_3306655_right_count : Nat := 373
def small_3306655_right_encoded : String := "12073CFA0000000208A91307120701060000000308A91309120700FE050000F8135D81030CFD9C010F34D0F60CFD9C050F34D0FA04548A07000000081386AD0604548A09138670FE078000F8128A7D03000000060000000100000006000000040000000600000003000000020F350CFA0000000204548A07000000081386AD0604548A09000000080000000600000003000000000F350CF6000000000CFD9C050F34D0FA04548A07138671060000000304548A09138670FE0C9A86F60F878D01078000F8128A7D030AD3578510D100FA0000000800000002000000080000000100000008000000000F87510100000000078000F8128A7D030AD3578510D100FA022A458713E1C50600000003022A45890000000813E200FE000000040B4D43F600000008108011010000000008C000F811FC250300000008000000010000000813E20106022A45890000000A13E200FE000000040B4D43F60000000A10801101000000000000000A000000030000000210D13CFA00000002022A45870000000813E20106022A45890000000A000000050000000300000001128A4103000000010000000A000000041386ACFE000000040C9A86F60F878D01078000F8128A7D030AD3578510D100FA0000000800000002000000080000000100000008000000000F87510100000000078000F8128A7D030AD3578510D100FA022A458713E1C50600000003067ECE8912EA58FE0B4D43F600000008108011010000000008C000F80000000500000008000000040000000500000005000000020000000500000001128A4103000000010AD3578510D100FA022A4587000000080000000500000002000000051386AD0604548A09138670FE0C9A86F60F878D01078000F8128A7D030AD3578510D100FA0000000A000000020000000A000000010000000A000000000F87510100000000078000F8128A7D030AD3578510D100FA067ECE8712EA5906000000030000000A000000050000000200000005000000010000000A000000041386ACFE000000040C9A86F60F878D0100000006000000000F875101000000000000000500000003000000020F350CFA0000000204548A07138671060000000304548A09138670FE0C9A86F60F878D0100000008000000000F875101000000000C9A86FA0F878D05078000F8128A7D03022A45870000000813E20106022A45890000000700000005000000030000000100000008000000020F8751050000000200000008000000041386ACFE000000040C9A86F60F878D0100000008000000000F87510100000000000000051386AD0604548A09138670FE0C9A86F60F878D010C9A86FA0F878D05078000F80000000500000008000000020F8751050000000200000005000000000F875101000000000000000500000004000000050000000300000001135D4503000000010CFD9C010F34D0F600000008000000000F350CF6000000000CFD9C050F34D0FA04548A07138671060000000304548A0900000008000000081386AD0604548A090000000A0000000500000003000000020F350CFA0000000204548A0700000008000000050000000412073CFE00000004050000F8135D81030CFD9C010F34D0F60CFD9C05000000060F350CFA0000000200000006000000000F350CF6000000000CFD9C050F34D0FA04548A0713867106000000030CFD9C090F34D0FE0C9A86F60F878D01078000F80000000900000006000000000F8751010000000000000005000000040000000500000005000000020000000500000001135D4503000000010CFD9C010F34D0F600000006000000000000000512073D0608A91309120700FE050000F8135D81030CFD9C010F34D0F60CFD9C05000000060F350CFA000000020CFD9C070F34D106000000030000000600000005000000000F350CF6000000000CFD9C050F34D0FA0CFD9C070F34D1060000000304548A09138670FE00000005000000040000000500000005000000020000000500000001135D4503000000010CFD9C010F34D0F60CFD9C0500000006000000050000000000000005000000040000000500000003"
theorem small_3306655_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3306655_right_root small_3306655_right_fuel small_3306655_right_count small_3306655_right_encoded = true := by
  decide +kernel
theorem small_3306655_right_covered : CoveredBy scale carrier boxes small_3306655_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3306655_right_root small_3306655_right_fuel small_3306655_right_count small_3306655_right_encoded small_3306655_right_checked

theorem cover_3306655 : CoveredBy scale carrier boxes root_3306655 := by
  apply coveredBy_split_literal root_3306655 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.root_3306656 small_3306655_right_root coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.cover_3306656
  · exact small_3306655_right_covered
#print axioms cover_3306655

def root_3306649 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3306649_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3306649_left_fuel : Nat := 1
def small_3306649_left_count : Nat := 1
def small_3306649_left_encoded : String := "00000000"
theorem small_3306649_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3306649_left_root small_3306649_left_fuel small_3306649_left_count small_3306649_left_encoded = true := by
  decide +kernel
theorem small_3306649_left_covered : CoveredBy scale carrier boxes small_3306649_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3306649_left_root small_3306649_left_fuel small_3306649_left_count small_3306649_left_encoded small_3306649_left_checked

theorem cover_3306649 : CoveredBy scale carrier boxes root_3306649 := by
  apply coveredBy_split_literal root_3306649 small_3306649_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.root_3306655 coord0 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_3306649_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.cover_3306655
#print axioms cover_3306649

def root_3306461 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3306461_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3306461_left_fuel : Nat := 15
def small_3306461_left_count : Nat := 91
def small_3306461_left_encoded : String := "120700F608A91305120700FA08A91307120701060000000308A91309120700FE050000F8135D810304548A01000000061386ACF60000000004548A05000000061386ACFA00000002000000060000000100000006000000040000000612073D0600000006000000030000000212073CFA0000000208A91307120701060000000308A91309120700FE050000F8135D810304548A01000000081386ACF6000000000CFD9C050F34D0FA0000000800000002000000080000000100000008000000040000000612073D0608A91309120700FE050000F8135D810304548A01138670F60CFD9C05000000060F350CFA000000020CFD9C070000000800000006000000001386ACF6000000000CFD9C05000000060F350CFA000000020CFD9C07000000060000000500000001135D45030000000104548A01000000081386ACF6000000000CFD9C0500000006000000080000000412073CFE00000004050000F800000006000000060000000300000000"
theorem small_3306461_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3306461_left_root small_3306461_left_fuel small_3306461_left_count small_3306461_left_encoded = true := by
  decide +kernel
theorem small_3306461_left_covered : CoveredBy scale carrier boxes small_3306461_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3306461_left_root small_3306461_left_fuel small_3306461_left_count small_3306461_left_encoded small_3306461_left_checked

theorem cover_3306461 : CoveredBy scale carrier boxes root_3306461 := by
  apply coveredBy_split_literal root_3306461 small_3306461_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.root_3306649 coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_3306461_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.cover_3306649
#print axioms cover_3306461

def root_3306456 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3306456_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3306456_right_fuel : Nat := 1
def small_3306456_right_count : Nat := 1
def small_3306456_right_encoded : String := "00000004"
theorem small_3306456_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3306456_right_root small_3306456_right_fuel small_3306456_right_count small_3306456_right_encoded = true := by
  decide +kernel
theorem small_3306456_right_covered : CoveredBy scale carrier boxes small_3306456_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3306456_right_root small_3306456_right_fuel small_3306456_right_count small_3306456_right_encoded small_3306456_right_checked

theorem cover_3306456 : CoveredBy scale carrier boxes root_3306456 := by
  apply coveredBy_split_literal root_3306456 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.root_3306461 small_3306456_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.cover_3306461
  · exact small_3306456_right_covered
#print axioms cover_3306456

def root_3306455 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3306455_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3306455_right_fuel : Nat := 15
def small_3306455_right_count : Nat := 35
def small_3306455_right_encoded : String := "1151E9090000000408A91301120700F6000000060000000012073CF60000000008A91305120700FA08A913071207010600000003050000F8135D8103050000FE135D81090CFD9C01000000060F350CF60000000004548A05000000060000000500000004135D4509000000040CFD9C0100000006000000050000000100000006000000050000000200000005"
theorem small_3306455_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3306455_right_root small_3306455_right_fuel small_3306455_right_count small_3306455_right_encoded = true := by
  decide +kernel
theorem small_3306455_right_covered : CoveredBy scale carrier boxes small_3306455_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3306455_right_root small_3306455_right_fuel small_3306455_right_count small_3306455_right_encoded small_3306455_right_checked

theorem cover_3306455 : CoveredBy scale carrier boxes root_3306455 := by
  apply coveredBy_split_literal root_3306455 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.root_3306456 small_3306455_right_root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.cover_3306456
  · exact small_3306455_right_covered
#print axioms cover_3306455

def root_3306450 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3306450_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3306450_right_fuel : Nat := 1
def small_3306450_right_count : Nat := 1
def small_3306450_right_encoded : String := "00000003"
theorem small_3306450_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3306450_right_root small_3306450_right_fuel small_3306450_right_count small_3306450_right_encoded = true := by
  decide +kernel
theorem small_3306450_right_covered : CoveredBy scale carrier boxes small_3306450_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3306450_right_root small_3306450_right_fuel small_3306450_right_count small_3306450_right_encoded small_3306450_right_checked

theorem cover_3306450 : CoveredBy scale carrier boxes root_3306450 := by
  apply coveredBy_split_literal root_3306450 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.root_3306455 small_3306450_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.cover_3306455
  · exact small_3306450_right_covered
#print axioms cover_3306450

def root_3306330 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3306330_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3306330_left_fuel : Nat := 17
def small_3306330_left_count : Nat := 59
def small_3306330_left_encoded : String := "1151E907000000030A0000FE1152250908A91301120700F608A91305120700FA08A9130900000006000000060000000212073CFA0000000208A91309120700FE050000F8135D81030500010600000005135D810704548A01138670F60CFD9C05000000060000000500000000000000050000000300000001135D4503000000010500010600000005135D810704548A0100000008000000050000000300000004000000050000000012073CF60000000008A91305120700FA08A91309120700FE050000F8000000060000000600000004000000050000000200000005000000041151E9090000000400000005"
theorem small_3306330_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3306330_left_root small_3306330_left_fuel small_3306330_left_count small_3306330_left_encoded = true := by
  decide +kernel
theorem small_3306330_left_covered : CoveredBy scale carrier boxes small_3306330_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3306330_left_root small_3306330_left_fuel small_3306330_left_count small_3306330_left_encoded small_3306330_left_checked

theorem cover_3306330 : CoveredBy scale carrier boxes root_3306330 := by
  apply coveredBy_split_literal root_3306330 small_3306330_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.root_3306450 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_3306330_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.cover_3306450
#print axioms cover_3306330

def root_3306325 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3306325_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3306325_right_fuel : Nat := 1
def small_3306325_right_count : Nat := 1
def small_3306325_right_encoded : String := "00000002"
theorem small_3306325_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3306325_right_root small_3306325_right_fuel small_3306325_right_count small_3306325_right_encoded = true := by
  decide +kernel
theorem small_3306325_right_covered : CoveredBy scale carrier boxes small_3306325_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3306325_right_root small_3306325_right_fuel small_3306325_right_count small_3306325_right_encoded small_3306325_right_checked

theorem cover_3306325 : CoveredBy scale carrier boxes root_3306325 := by
  apply coveredBy_split_literal root_3306325 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.root_3306330 small_3306325_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.cover_3306330
  · exact small_3306325_right_covered
#print axioms cover_3306325

def root_3306324 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3306324_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3306324_right_fuel : Nat := 24
def small_3306324_right_count : Nat := 141
def small_3306324_right_encoded : String := "1151E905000000020A0001061151E9070000000300000005115225070A0000FE1152250908A91301120700F608A91307120701060000000308A91309120700FE050000F8135D8103000000080000000100000008000000040000000812073D0608A91309120700FE050000F8135D8103050000FA135D810504548A01138670F60CFD9C07000000080F350D060000000500000003000000001386ACF6000000000CFD9C070F34D10600000003000000060000000500000002135D45050000000204548A01138670F60CFD9C070000000800000005000000000000000500000001135D450300000001050000FA135D810504548A01000000080000000500000002135D45050000000204548A0100000008000000050000000400000005000000030000000012073CF60000000008A91307120701060000000308A91309120700FE050000F8135D8103050000FA135D81050CFD9C010F34D0F604548A070000000800000006000000000F350CF60000000004548A07138671060000000304548A09138670FE0C9A86F60F878D0100000008000000000F875101000000000000000500000004000000050000000500000002135D4505000000020CFD9C010F34D0F604548A070000000800000005000000000000000500000001135D450300000001050000FA135D81050CFD9C01000000080000000500000002135D4505000000020CFD9C010F34D0F6000000080000000000000005000000040000000500000005000000041151E909000000040000000500000003"
theorem small_3306324_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3306324_right_root small_3306324_right_fuel small_3306324_right_count small_3306324_right_encoded = true := by
  decide +kernel
theorem small_3306324_right_covered : CoveredBy scale carrier boxes small_3306324_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3306324_right_root small_3306324_right_fuel small_3306324_right_count small_3306324_right_encoded small_3306324_right_checked

theorem cover_3306324 : CoveredBy scale carrier boxes root_3306324 := by
  apply coveredBy_split_literal root_3306324 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.root_3306325 small_3306324_right_root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.cover_3306325
  · exact small_3306324_right_covered
#print axioms cover_3306324

def root_3306318 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3306318_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3306318_left_fuel : Nat := 1
def small_3306318_left_count : Nat := 1
def small_3306318_left_encoded : String := "00000001"
theorem small_3306318_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3306318_left_root small_3306318_left_fuel small_3306318_left_count small_3306318_left_encoded = true := by
  decide +kernel
theorem small_3306318_left_covered : CoveredBy scale carrier boxes small_3306318_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3306318_left_root small_3306318_left_fuel small_3306318_left_count small_3306318_left_encoded small_3306318_left_checked

theorem cover_3306318 : CoveredBy scale carrier boxes root_3306318 := by
  apply coveredBy_split_literal root_3306318 small_3306318_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.root_3306324 coord1 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_3306318_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.cover_3306324
#print axioms cover_3306318

def root_3289410 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3289410 : CoveredBy scale carrier boxes root_3289410 := by
  apply coveredBy_split_literal root_3289410 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.root_3289411 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.root_3306318 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.cover_3289411
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.cover_3306318
#print axioms cover_3289410

def root_3289405 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3289405_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3289405_right_fuel : Nat := 1
def small_3289405_right_count : Nat := 1
def small_3289405_right_encoded : String := "00000000"
theorem small_3289405_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3289405_right_root small_3289405_right_fuel small_3289405_right_count small_3289405_right_encoded = true := by
  decide +kernel
theorem small_3289405_right_covered : CoveredBy scale carrier boxes small_3289405_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3289405_right_root small_3289405_right_fuel small_3289405_right_count small_3289405_right_encoded small_3289405_right_checked

theorem cover_3289405 : CoveredBy scale carrier boxes root_3289405 := by
  apply coveredBy_split_literal root_3289405 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.root_3289410 small_3289405_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.cover_3289410
  · exact small_3289405_right_covered
#print axioms cover_3289405

def root_3311586 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3311586_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3311586_right_fuel : Nat := 26
def small_3311586_right_count : Nat := 277
def small_3311586_right_encoded : String := "12073CFE00000004050000F6135D81010CFD9C030F34D0F804548A05138670FA04548A070000000A1386AD060CFD9C090F34D0FE078000F6128A7D01000000070000000000000007000000040000000A00000003000000021386ACFA0000000204548A070000000A00000007000000010F350CF80000000104548A05138670FA04548A0713867106000000030CFD9C090F34D0FE0C9A86F80F878D03078000F6128A7D01022A4585000000080000000A0000000000000008000000010F87510300000001078000F6128A7D01022A458513E1C4FA022A458713E1C506000000030AD3578910D100FE000000080000000400000008000000080000000213E200FA00000002022A458713E1C506000000030AD3578910D100FE0B4D43F800000008108011030000000108C000F611FC25010000000A0000000000000008000000040000000A13E201060AD3578910D100FE0B4D43F80000000810801103000000010000000800000004000000050000000300000000128A41010000000000000008000000040F350CFE000000040C9A86F80F878D030000000A000000010F875103000000010C9A86FE0F878D09078000F6128A7D01022A45850000000A0000000A000000000000000A000000040F875109000000040000000A1386AD060CFD9C090F34D0FE0C9A86F80F878D03078000F6128A7D01022A45850000000813E200FA00000002067ECE8712EA59060000000300000008000000050000000000000008000000010F87510300000001078000F6128A7D01022A458500000008000000050000000000000008000000040F350CFE000000040C9A86F80F878D030C9A86FE0F878D09078000F60000000500000008000000040F8751090000000400000005000000010F875103000000010000000500000003000000021386ACFA0000000204548A0713867106000000030CFD9C090F34D0FE0C9A86F80F878D03078000F6128A7D01067ECE850000000A00000009000000000000000A000000010F87510300000001078000F6128A7D01067ECE8512EA58FA022A458713E1C506000000030AD3578910D100FE0B4D43F80000000A108011030000000108C000F6000000050000000A000000040000000500000005000000020000000500000000128A410100000000067ECE8512EA58FA022A45870000000A000000050000000200000005000000040F350CFE000000040C9A86F80F878D030000000A000000010F87510300000001000000051386AD060CFD9C090F34D0FE0C9A86F80F878D0300000007000000010F875103000000010000000500000004000000050000000300000000135D4501000000000CFD9C030F34D0F80000000A000000010F350CF80000000104548A05138670FA04548A0713867106000000030CFD9C090F34D0FE00000008000000040000000A1386AD060CFD9C090F34D0FE00000008000000040000000500000003000000021386ACFA0000000204548A0713867106000000030CFD9C090F34D0FE0000000A000000040000000500000005"
theorem small_3311586_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3311586_right_root small_3311586_right_fuel small_3311586_right_count small_3311586_right_encoded = true := by
  decide +kernel
theorem small_3311586_right_covered : CoveredBy scale carrier boxes small_3311586_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3311586_right_root small_3311586_right_fuel small_3311586_right_count small_3311586_right_encoded small_3311586_right_checked

theorem cover_3311586 : CoveredBy scale carrier boxes root_3311586 := by
  apply coveredBy_split_literal root_3311586 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1263.root small_3311586_right_root coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1263.covered
  · exact small_3311586_right_covered
#print axioms cover_3311586

def root_3311580 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3311580_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3311580_left_fuel : Nat := 1
def small_3311580_left_count : Nat := 1
def small_3311580_left_encoded : String := "00000003"
theorem small_3311580_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3311580_left_root small_3311580_left_fuel small_3311580_left_count small_3311580_left_encoded = true := by
  decide +kernel
theorem small_3311580_left_covered : CoveredBy scale carrier boxes small_3311580_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3311580_left_root small_3311580_left_fuel small_3311580_left_count small_3311580_left_encoded small_3311580_left_checked

theorem cover_3311580 : CoveredBy scale carrier boxes root_3311580 := by
  apply coveredBy_split_literal root_3311580 small_3311580_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.root_3311586 coord3 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_3311580_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.cover_3311586
#print axioms cover_3311580

def root_3311579 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3311579_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3311579_right_fuel : Nat := 19
def small_3311579_right_count : Nat := 131
def small_3311579_right_encoded : String := "12073D0608A91309120700FE050000F6135D81010CFD9C030F34D0F804548A05138670FA000000070000000200000007000000010F350CF80000000104548A05138670FA0CFD9C070F34D1060000000304548A09138670FE0C9A86F8000000070F87510300000001078000F6128A7D01022A458500000008000000070000000000000007000000041386ACFE000000040C9A86F8000000080F87510300000001078000F6128A7D01022A4585000000060000000500000000000000080F350D0604548A09000000070000000500000003000000021386ACFA000000020CFD9C070F34D1060000000304548A0900000007000000050000000500000000135D4501000000000CFD9C030F34D0F800000007000000010F350CF80000000104548A05138670FA0CFD9C070F34D10600000003000000070000000700000002000000070000000412073CFE00000004050000F6135D81010CFD9C030F34D0F804548A05138670FA0CFD9C070F34D106000000030CFD9C090000000700000005000000050000000200000007000000010F350CF80000000104548A05138670FA0CFD9C070F34D106000000030CFD9C090F34D0FE00000005000000040000000500000005000000020000000500000000135D4501000000000CFD9C030F34D0F804548A05138670FA0CFD9C070F34D1060000000300000007000000050000000200000005000000010000000500000003"
theorem small_3311579_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3311579_right_root small_3311579_right_fuel small_3311579_right_count small_3311579_right_encoded = true := by
  decide +kernel
theorem small_3311579_right_covered : CoveredBy scale carrier boxes small_3311579_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3311579_right_root small_3311579_right_fuel small_3311579_right_count small_3311579_right_encoded small_3311579_right_checked

theorem cover_3311579 : CoveredBy scale carrier boxes root_3311579 := by
  apply coveredBy_split_literal root_3311579 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.root_3311580 small_3311579_right_root coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.cover_3311580
  · exact small_3311579_right_covered
#print axioms cover_3311579

def root_3311574 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3311574_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3311574_right_fuel : Nat := 1
def small_3311574_right_count : Nat := 1
def small_3311574_right_encoded : String := "00000002"
theorem small_3311574_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3311574_right_root small_3311574_right_fuel small_3311574_right_count small_3311574_right_encoded = true := by
  decide +kernel
theorem small_3311574_right_covered : CoveredBy scale carrier boxes small_3311574_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3311574_right_root small_3311574_right_fuel small_3311574_right_count small_3311574_right_encoded small_3311574_right_checked

theorem cover_3311574 : CoveredBy scale carrier boxes root_3311574 := by
  apply coveredBy_split_literal root_3311574 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.root_3311579 small_3311574_right_root coord2 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.cover_3311579
  · exact small_3311574_right_covered
#print axioms cover_3311574

def root_3311573 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3311573_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3311573_right_fuel : Nat := 25
def small_3311573_right_count : Nat := 179
def small_3311573_right_encoded : String := "12073CFA0000000208A91307120701060000000308A91309120700FE050000F6135D81010CFD9C030F34D0F80CFD9C050F34D0FA000000070000000200000007000000010F350CF8000000010CFD9C050F34D0FA04548A07138671060000000304548A09138670FE0C9A86F8000000070F87510300000001078000F6128A7D010AD3578510D100FA022A458713E1C50600000003022A458900000007000000070000000700000002000000070000000000000007000000041386ACFE000000040C9A86F80F878D0300000007000000010F87510300000001078000F6128A7D010AD3578510D100FA022A458713E1C50600000003067ECE89000000070000000500000005000000020000000500000000128A4101000000000AD3578510D100FA0000000700000002000000051386AD0604548A09000000070000000700000003000000020F350CFA0000000204548A07138671060000000304548A09000000071386ACFE000000040C9A86F8000000070F87510300000001000000050000000700000000135D4501000000000CFD9C030F34D0F800000007000000010F350CF8000000010CFD9C050F34D0FA04548A071386710600000003000000070000000700000002000000070000000412073CFE00000004050000F6135D81010CFD9C030F34D0F80CFD9C050F34D0FA04548A070000000A000000070000000200000007000000010F350CF8000000010CFD9C050F34D0FA04548A0713867106000000030CFD9C090F34D0FE0C9A86F80F878D03078000F60000000900000007000000010F8751030000000100000005000000040000000500000005000000020000000500000000135D4501000000000CFD9C030F34D0F800000007000000010000000512073D0608A91309120700FE050000F6135D81010CFD9C03000000070F350CF8000000010CFD9C050F34D0FA0000000700000002000000050000000000000007000000040000000500000003"
theorem small_3311573_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3311573_right_root small_3311573_right_fuel small_3311573_right_count small_3311573_right_encoded = true := by
  decide +kernel
theorem small_3311573_right_covered : CoveredBy scale carrier boxes small_3311573_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3311573_right_root small_3311573_right_fuel small_3311573_right_count small_3311573_right_encoded small_3311573_right_checked

theorem cover_3311573 : CoveredBy scale carrier boxes root_3311573 := by
  apply coveredBy_split_literal root_3311573 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.root_3311574 small_3311573_right_root coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.cover_3311574
  · exact small_3311573_right_covered
#print axioms cover_3311573

def root_3311567 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3311567_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3311567_left_fuel : Nat := 1
def small_3311567_left_count : Nat := 1
def small_3311567_left_encoded : String := "00000001"
theorem small_3311567_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3311567_left_root small_3311567_left_fuel small_3311567_left_count small_3311567_left_encoded = true := by
  decide +kernel
theorem small_3311567_left_covered : CoveredBy scale carrier boxes small_3311567_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3311567_left_root small_3311567_left_fuel small_3311567_left_count small_3311567_left_encoded small_3311567_left_checked

theorem cover_3311567 : CoveredBy scale carrier boxes root_3311567 := by
  apply coveredBy_split_literal root_3311567 small_3311567_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.root_3311573 coord1 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_3311567_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.cover_3311573
#print axioms cover_3311567

def root_3311367 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3311367_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3311367_left_fuel : Nat := 15
def small_3311367_left_count : Nat := 99
def small_3311367_left_encoded : String := "120700F808A91305120700FA08A91307120701060000000308A91309120700FE050000F6135D810104548A03000000071386ACF80000000104548A05138670FA04548A070000000A00000007000000020000000700000000000000070000000412073CFE00000004050000F6135D810104548A03000000091386ACF80000000104548A050000000A00000009000000000000000A12073D0608A913090000000712073CFE00000004050000F6135D810104548A03138670F804548A05138670FA0CFD9C070000000A000000070000000200000007000000011386ACF80000000104548A05138670FA0CFD9C070000000700000007000000020000000700000000135D45010000000004548A030000000A1386ACF80000000104548A05138670FA0CFD9C070000000A000000070000000200000007000000030000000212073CFA0000000208A91307120701060000000308A913090000000712073CFE000000040000000712073D0608A913090000000712073CFE00000004050000F600000007000000070000000300000001"
theorem small_3311367_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3311367_left_root small_3311367_left_fuel small_3311367_left_count small_3311367_left_encoded = true := by
  decide +kernel
theorem small_3311367_left_covered : CoveredBy scale carrier boxes small_3311367_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3311367_left_root small_3311367_left_fuel small_3311367_left_count small_3311367_left_encoded small_3311367_left_checked

theorem cover_3311367 : CoveredBy scale carrier boxes root_3311367 := by
  apply coveredBy_split_literal root_3311367 small_3311367_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.root_3311567 coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_3311367_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.cover_3311567
#print axioms cover_3311367

def root_3311362 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3311362_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3311362_right_fuel : Nat := 1
def small_3311362_right_count : Nat := 1
def small_3311362_right_encoded : String := "00000004"
theorem small_3311362_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3311362_right_root small_3311362_right_fuel small_3311362_right_count small_3311362_right_encoded = true := by
  decide +kernel
theorem small_3311362_right_covered : CoveredBy scale carrier boxes small_3311362_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3311362_right_root small_3311362_right_fuel small_3311362_right_count small_3311362_right_encoded small_3311362_right_checked

theorem cover_3311362 : CoveredBy scale carrier boxes root_3311362 := by
  apply coveredBy_split_literal root_3311362 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.root_3311367 small_3311362_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.cover_3311367
  · exact small_3311362_right_covered
#print axioms cover_3311362

def root_3311361 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3311361_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3311361_right_fuel : Nat := 20
def small_3311361_right_count : Nat := 141
def small_3311361_right_encoded : String := "1151E9090000000408A91303120700F808A91305120700FA08A913071207010600000003050000F6135D810100000009000000000000000A12073D06050000F6135D8101050000FE135D810904548A03138670F804548A05138670FA000000090000000200000009000000011386ACF80000000104548A05138670FA0CFD9C070F34D106000000030000000700000005000000020000000500000004135D45090000000404548A03138670F804548A05138670FA0CFD9C070000000A000000050000000200000005000000010000000500000000135D450100000000050000FE135D810904548A030000000A0000000500000004135D45090000000404548A030000000A00000005000000030000000212073CFA0000000208A913070000000A000000050000000112073CF80000000108A91305120700FA08A913071207010600000003050000F6135D8101050000FE135D81090CFD9C030F34D0F804548A050000000A00000007000000010F350CF80000000104548A05138670FA04548A0713867106000000030C9A86F80F878D030000000A000000010F875103000000010000000500000005000000020000000500000004135D4509000000040CFD9C030F34D0F804548A05138670FA04548A070000000A000000050000000200000005000000010000000500000000135D450100000000050000FE135D81090CFD9C030000000A0000000500000004135D4509000000040CFD9C030F34D0F80000000A0000000100000005000000050000000200000005"
theorem small_3311361_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3311361_right_root small_3311361_right_fuel small_3311361_right_count small_3311361_right_encoded = true := by
  decide +kernel
theorem small_3311361_right_covered : CoveredBy scale carrier boxes small_3311361_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3311361_right_root small_3311361_right_fuel small_3311361_right_count small_3311361_right_encoded small_3311361_right_checked

theorem cover_3311361 : CoveredBy scale carrier boxes root_3311361 := by
  apply coveredBy_split_literal root_3311361 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.root_3311362 small_3311361_right_root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.cover_3311362
  · exact small_3311361_right_covered
#print axioms cover_3311361

def root_3311356 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3311356_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3311356_right_fuel : Nat := 1
def small_3311356_right_count : Nat := 1
def small_3311356_right_encoded : String := "00000003"
theorem small_3311356_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3311356_right_root small_3311356_right_fuel small_3311356_right_count small_3311356_right_encoded = true := by
  decide +kernel
theorem small_3311356_right_covered : CoveredBy scale carrier boxes small_3311356_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3311356_right_root small_3311356_right_fuel small_3311356_right_count small_3311356_right_encoded small_3311356_right_checked

theorem cover_3311356 : CoveredBy scale carrier boxes root_3311356 := by
  apply coveredBy_split_literal root_3311356 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.root_3311361 small_3311356_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.cover_3311361
  · exact small_3311356_right_covered
#print axioms cover_3311356

def root_3311230 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3311230_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3311230_left_fuel : Nat := 17
def small_3311230_left_count : Nat := 61
def small_3311230_left_encoded : String := "1151E907000000030A0000FE1152250908A91303120700F808A91305120700FA08A91309120700FE000000070000000412073CFE00000004050000F6135D81010500010600000005135D810704548A03138670F804548A05000000060000000500000001000000050000000300000000135D4501000000000500010600000005135D810704548A030000000A00000005000000030000000212073CFA0000000208A9130900000007000000050000000112073CF80000000108A91305120700FA08A91309120700FE050000F6000000070000000700000004000000050000000200000005000000041151E9090000000400000005"
theorem small_3311230_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3311230_left_root small_3311230_left_fuel small_3311230_left_count small_3311230_left_encoded = true := by
  decide +kernel
theorem small_3311230_left_covered : CoveredBy scale carrier boxes small_3311230_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3311230_left_root small_3311230_left_fuel small_3311230_left_count small_3311230_left_encoded small_3311230_left_checked

theorem cover_3311230 : CoveredBy scale carrier boxes root_3311230 := by
  apply coveredBy_split_literal root_3311230 small_3311230_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.root_3311356 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_3311230_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.cover_3311356
#print axioms cover_3311230

def root_3311225 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3311225_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3311225_right_fuel : Nat := 1
def small_3311225_right_count : Nat := 1
def small_3311225_right_encoded : String := "00000002"
theorem small_3311225_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3311225_right_root small_3311225_right_fuel small_3311225_right_count small_3311225_right_encoded = true := by
  decide +kernel
theorem small_3311225_right_covered : CoveredBy scale carrier boxes small_3311225_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3311225_right_root small_3311225_right_fuel small_3311225_right_count small_3311225_right_encoded small_3311225_right_checked

theorem cover_3311225 : CoveredBy scale carrier boxes root_3311225 := by
  apply coveredBy_split_literal root_3311225 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.root_3311230 small_3311225_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.cover_3311230
  · exact small_3311225_right_covered
#print axioms cover_3311225

def root_3311224 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3311224_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3311224_right_fuel : Nat := 20
def small_3311224_right_count : Nat := 49
def small_3311224_right_encoded : String := "1151E905000000020A0001061151E9070000000300000005115225070A0000FE1152250908A91303120700F8000000070000000112073CF80000000108A91307120701060000000308A91309120700FE050000F6135D8101050000FA135D81050CFD9C03000000070F350CF80000000104548A071386710600000003000000070000000500000002135D4505000000020CFD9C0300000007000000050000000000000007000000040000000500000005000000041151E909000000040000000500000003"
theorem small_3311224_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3311224_right_root small_3311224_right_fuel small_3311224_right_count small_3311224_right_encoded = true := by
  decide +kernel
theorem small_3311224_right_covered : CoveredBy scale carrier boxes small_3311224_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3311224_right_root small_3311224_right_fuel small_3311224_right_count small_3311224_right_encoded small_3311224_right_checked

theorem cover_3311224 : CoveredBy scale carrier boxes root_3311224 := by
  apply coveredBy_split_literal root_3311224 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.root_3311225 small_3311224_right_root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.cover_3311225
  · exact small_3311224_right_covered
#print axioms cover_3311224

def root_3311219 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3311219_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3311219_right_fuel : Nat := 1
def small_3311219_right_count : Nat := 1
def small_3311219_right_encoded : String := "00000001"
theorem small_3311219_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3311219_right_root small_3311219_right_fuel small_3311219_right_count small_3311219_right_encoded = true := by
  decide +kernel
theorem small_3311219_right_covered : CoveredBy scale carrier boxes small_3311219_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3311219_right_root small_3311219_right_fuel small_3311219_right_count small_3311219_right_encoded small_3311219_right_checked

theorem cover_3311219 : CoveredBy scale carrier boxes root_3311219 := by
  apply coveredBy_split_literal root_3311219 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.root_3311224 small_3311219_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.cover_3311224
  · exact small_3311219_right_covered
#print axioms cover_3311219

def root_3316134 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3316134_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3316134_right_fuel : Nat := 18
def small_3316134_right_count : Nat := 73
def small_3316134_right_encoded : String := "135D45030000000104548A05138670FA04548A07138671060000000304548A09000000091386ACFE00000004000000091386AD0604548A09000000091386ACFE00000004078000F6000000060000000900000003000000021386ACFA0000000204548A07138671060000000304548A09000000091386ACFE00000004078000F6128A7D01028000F813D7ED03067ECE8512EA58FA022A458713E1C50600000003067ECE890000000912EA94FE0000000400000009000000090000000212EA94FA00000002022A458713E1C50600000003067ECE890000000900000005000000050000000113D7B10300000001067ECE85000000090000000A00000000128A410100000000028000F800000009000000091386AD0604548A090000000A0000000500000003"
theorem small_3316134_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3316134_right_root small_3316134_right_fuel small_3316134_right_count small_3316134_right_encoded = true := by
  decide +kernel
theorem small_3316134_right_covered : CoveredBy scale carrier boxes small_3316134_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3316134_right_root small_3316134_right_fuel small_3316134_right_count small_3316134_right_encoded small_3316134_right_checked

theorem cover_3316134 : CoveredBy scale carrier boxes root_3316134 := by
  apply coveredBy_split_literal root_3316134 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1264.root small_3316134_right_root coord1 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1264.covered
  · exact small_3316134_right_covered
#print axioms cover_3316134

def root_3316129 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3316129_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3316129_right_fuel : Nat := 1
def small_3316129_right_count : Nat := 1
def small_3316129_right_encoded : String := "00000000"
theorem small_3316129_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3316129_right_root small_3316129_right_fuel small_3316129_right_count small_3316129_right_encoded = true := by
  decide +kernel
theorem small_3316129_right_covered : CoveredBy scale carrier boxes small_3316129_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3316129_right_root small_3316129_right_fuel small_3316129_right_count small_3316129_right_encoded small_3316129_right_checked

theorem cover_3316129 : CoveredBy scale carrier boxes root_3316129 := by
  apply coveredBy_split_literal root_3316129 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.root_3316134 small_3316129_right_root coord0 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.cover_3316134
  · exact small_3316129_right_covered
#print axioms cover_3316129

def root_3316128 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3316128_right_root : ZRayBox := fun j => (#[⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3316128_right_fuel : Nat := 19
def small_3316128_right_count : Nat := 91
def small_3316128_right_encoded : String := "135D450100000000050000F8135D810304548A05138670FA04548A07138671060000000304548A09000000091386ACFE00000004000000091386AD0604548A09000000090000000800000003000000021386ACFA0000000204548A07138671060000000304548A09000000091386ACFE00000004028000F613D7ED01078000F8128A7D03067ECE8512EA58FA022A458713E1C5060000000300000008000000080000000212EA94FA00000002022A458713E1C50600000003067ECE8900000009000000050000000500000001128A410300000001000000090000000013D7B10100000000078000F8128A7D03067ECE85000000080000000700000001000000091386AD0604548A09138670FE028000F6000000090000000700000004000000050000000300000001135D45030000000104548A05000000091386ACFA0000000204548A07138671060000000304548A0900000009000000091386AD0604548A09000000090000000500000003"
theorem small_3316128_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3316128_right_root small_3316128_right_fuel small_3316128_right_count small_3316128_right_encoded = true := by
  decide +kernel
theorem small_3316128_right_covered : CoveredBy scale carrier boxes small_3316128_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3316128_right_root small_3316128_right_fuel small_3316128_right_count small_3316128_right_encoded small_3316128_right_checked

theorem cover_3316128 : CoveredBy scale carrier boxes root_3316128 := by
  apply coveredBy_split_literal root_3316128 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.root_3316129 small_3316128_right_root coord0 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.cover_3316129
  · exact small_3316128_right_covered
#print axioms cover_3316128

def root_3316123 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3316123_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3316123_right_fuel : Nat := 1
def small_3316123_right_count : Nat := 1
def small_3316123_right_encoded : String := "00000004"
theorem small_3316123_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3316123_right_root small_3316123_right_fuel small_3316123_right_count small_3316123_right_encoded = true := by
  decide +kernel
theorem small_3316123_right_covered : CoveredBy scale carrier boxes small_3316123_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3316123_right_root small_3316123_right_fuel small_3316123_right_count small_3316123_right_encoded small_3316123_right_checked

theorem cover_3316123 : CoveredBy scale carrier boxes root_3316123 := by
  apply coveredBy_split_literal root_3316123 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.root_3316128 small_3316123_right_root coord4 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.cover_3316128
  · exact small_3316123_right_covered
#print axioms cover_3316123

def root_3316122 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3316122_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3316122_right_fuel : Nat := 28
def small_3316122_right_count : Nat := 287
def small_3316122_right_encoded : String := "12073CFE00000004050000F6135D8101050000F8135D810304548A05138670FA04548A0713867106000000030CFD9C090F34D0FE078000F6128A7D01078000F8128A7D03022A458513E1C4FA022A458713E1C506000000030AD3578910D100FE000000080000000410D13CFE000000040000000613E201060AD3578910D100FE000000060000000400000006000000030000000213E200FA00000002022A458713E1C506000000030AD3578910D100FE08C000F611FC250108C000F811FC2503033F67C50000000613BC30FA000000020000000600000001000000060000000011FBE9010000000008C000F80000000811FBE90300000001033F67C500000006000000050000000410D13CFE0000000408C000F60000000611FBE901000000000000000513E201060AD3578910D100FE0000000600000004000000050000000300000001128A410300000001022A458513E1C4FA022A458713E1C506000000030AD3578910D100FE000000060000000400000006000000060000000213E200FA00000002022A458713E1C506000000030AD3578910D100FE0000000600000004000000050000000500000000128A410100000000078000F8128A7D03022A45850000000813E200FA00000002022A458713E1C506000000030AD3578910D100FE0000000800000004000000050000000500000001128A410300000001022A45850000000913E200FA00000002022A458713E1C506000000030AD35789000000090000000500000005000000040F350CFE000000040C9A86FE0F878D09078000F6128A7D01078000F8128A7D03022A45850000000600000005000000010000000600000000128A410100000000078000F800000005128A41030000000100000005000000040F87510900000004000000051386AD060CFD9C090F34D0FE078000F6128A7D01078000F8128A7D0300000006000000010000000600000000128A41010000000000000005000000040000000500000003000000021386ACFA0000000204548A0713867106000000030CFD9C090F34D0FE078000F6128A7D01078000F8128A7D03067ECE8512EA58FA022A458713E1C506000000030AD3578910D100FE08C000F60000000511FBE9010000000000000005000000040000000500000005000000020000000500000001128A4103000000010000000500000000128A410100000000078000F800000005128A4103000000010000000500000004000000050000000500000001135D45030000000104548A05138670FA04548A0713867106000000030CFD9C090F34D0FE078000F6128A7D010000000600000000128A41010000000000000009000000040000000500000005000000020000000500000000135D450100000000050000F8135D810304548A05138670FA04548A0713867106000000030CFD9C090F34D0FE028000F613D7ED01078000F800000008128A410300000001000000080000000000000008000000040000000500000005000000020000000500000001135D45030000000104548A05138670FA04548A0713867106000000030CFD9C090000000900000005000000050000000200000005"
theorem small_3316122_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3316122_right_root small_3316122_right_fuel small_3316122_right_count small_3316122_right_encoded = true := by
  decide +kernel
theorem small_3316122_right_covered : CoveredBy scale carrier boxes small_3316122_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3316122_right_root small_3316122_right_fuel small_3316122_right_count small_3316122_right_encoded small_3316122_right_checked

theorem cover_3316122 : CoveredBy scale carrier boxes root_3316122 := by
  apply coveredBy_split_literal root_3316122 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.root_3316123 small_3316122_right_root coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.cover_3316123
  · exact small_3316122_right_covered
#print axioms cover_3316122

def root_3316116 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3316116_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3316116_left_fuel : Nat := 1
def small_3316116_left_count : Nat := 1
def small_3316116_left_encoded : String := "00000003"
theorem small_3316116_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3316116_left_root small_3316116_left_fuel small_3316116_left_count small_3316116_left_encoded = true := by
  decide +kernel
theorem small_3316116_left_covered : CoveredBy scale carrier boxes small_3316116_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3316116_left_root small_3316116_left_fuel small_3316116_left_count small_3316116_left_encoded small_3316116_left_checked

theorem cover_3316116 : CoveredBy scale carrier boxes root_3316116 := by
  apply coveredBy_split_literal root_3316116 small_3316116_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.root_3316122 coord3 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_3316116_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.cover_3316122
#print axioms cover_3316116

def root_3316115 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3316115_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3316115_right_fuel : Nat := 17
def small_3316115_right_count : Nat := 95
def small_3316115_right_encoded : String := "12073D0608A91309120700FE050000F6135D8101050000F8135D810304548A05138670FA0CFD9C070F34D1060000000304548A09138670FE078000F6128A7D01078000F8000000090000000900000000128A41010000000000000009000000041386ACFE00000004078000F600000005128A410100000000000000050F350D060000000500000003000000021386ACFA000000020CFD9C070F34D1060000000304548A09138670FE078000F6000000050000000700000004000000050000000500000001135D45030000000104548A05138670FA0CFD9C070F34D1060000000304548A09000000090000000500000005000000020000000500000000135D450100000000050000F8135D810304548A05138670FA0CFD9C070F34D1060000000304548A09000000090000000500000005000000020000000500000001135D45030000000104548A05138670FA0CFD9C070F34D1060000000304548A090000000900000005000000050000000200000005000000040000000500000003"
theorem small_3316115_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3316115_right_root small_3316115_right_fuel small_3316115_right_count small_3316115_right_encoded = true := by
  decide +kernel
theorem small_3316115_right_covered : CoveredBy scale carrier boxes small_3316115_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3316115_right_root small_3316115_right_fuel small_3316115_right_count small_3316115_right_encoded small_3316115_right_checked

theorem cover_3316115 : CoveredBy scale carrier boxes root_3316115 := by
  apply coveredBy_split_literal root_3316115 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.root_3316116 small_3316115_right_root coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.cover_3316116
  · exact small_3316115_right_covered
#print axioms cover_3316115

def root_3316110 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3316110_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3316110_right_fuel : Nat := 1
def small_3316110_right_count : Nat := 1
def small_3316110_right_encoded : String := "00000002"
theorem small_3316110_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3316110_right_root small_3316110_right_fuel small_3316110_right_count small_3316110_right_encoded = true := by
  decide +kernel
theorem small_3316110_right_covered : CoveredBy scale carrier boxes small_3316110_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3316110_right_root small_3316110_right_fuel small_3316110_right_count small_3316110_right_encoded small_3316110_right_checked

theorem cover_3316110 : CoveredBy scale carrier boxes root_3316110 := by
  apply coveredBy_split_literal root_3316110 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.root_3316115 small_3316110_right_root coord2 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.cover_3316115
  · exact small_3316110_right_covered
#print axioms cover_3316110

def root_3316109 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3316109_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3316109_right_fuel : Nat := 32
def small_3316109_right_count : Nat := 273
def small_3316109_right_encoded : String := "12073CFA0000000208A91307120701060000000308A91309120700FE050000F6135D8101050000F8135D81030CFD9C050F34D0FA04548A07138671060000000304548A09138670FE078000F6128A7D01078000F8128A7D030AD3578510D100FA022A458713E1C50600000003022A45890000000A13E200FE0000000408C000F611FC250108C000F811FC250309BE3545117740FA000000070000000200000007000000010000000A0000000011FBE9010000000008C000F80000000711FBE9030000000109BE3545117740FA0000000A000000020000000513E20106022A45890000000713E200FE0000000400000007000000030000000210D13CFA00000002022A458713E1C50600000003022A45890000000713E200FE0000000408C000F611FC25010000000800000000000000070000000700000001128A4103000000010AD3578510D100FA0000000A000000020000000A00000000128A410100000000078000F8128A7D030AD3578510D100FA022A458713E1C50600000003022A4589000000070000000700000007000000020000000700000001128A4103000000010AD357850000000910D13CFA00000002022A458713E1C50600000003022A4589000000070000000500000005000000041386ACFE00000004078000F6128A7D01078000F8128A7D030AD3578510D100FA022A458713E1C50600000003067ECE8912EA58FE08C000F60000000511FBE9010000000000000005000000040000000500000005000000020000000500000001128A4103000000010000000500000000128A410100000000078000F800000005128A410300000001000000051386AD0604548A09138670FE078000F6128A7D01078000F8128A7D030000000700000001128A4103000000010000000500000000128A41010000000000000005000000040000000500000003000000020F350CFA0000000204548A07138671060000000304548A09138670FE0C9A86FA0F878D05078000F6128A7D01078000F8128A7D03022A458713E1C50600000003022A458900000007000000050000000500000001128A4103000000010000000500000000128A410100000000078000F800000005128A41030000000100000005000000020F875105000000020000000500000004000000050000000500000001135D4503000000010CFD9C050F34D0FA04548A07138671060000000304548A09138670FE078000F60000000A128A41010000000000000009000000040000000500000005000000020000000500000000135D450100000000050000F8135D81030CFD9C050F34D0FA04548A07138671060000000304548A09138670FE028000F613D7ED01078000F800000007128A410300000001000000090000000000000007000000040000000500000005000000020000000500000001135D4503000000010CFD9C050F34D0FA04548A07138671060000000304548A090000000900000005000000050000000200000005000000040000000500000005"
theorem small_3316109_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3316109_right_root small_3316109_right_fuel small_3316109_right_count small_3316109_right_encoded = true := by
  decide +kernel
theorem small_3316109_right_covered : CoveredBy scale carrier boxes small_3316109_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3316109_right_root small_3316109_right_fuel small_3316109_right_count small_3316109_right_encoded small_3316109_right_checked

theorem cover_3316109 : CoveredBy scale carrier boxes root_3316109 := by
  apply coveredBy_split_literal root_3316109 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.root_3316110 small_3316109_right_root coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.cover_3316110
  · exact small_3316109_right_covered
#print axioms cover_3316109

def root_3316104 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3316104_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3316104_right_fuel : Nat := 1
def small_3316104_right_count : Nat := 1
def small_3316104_right_encoded : String := "00000004"
theorem small_3316104_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3316104_right_root small_3316104_right_fuel small_3316104_right_count small_3316104_right_encoded = true := by
  decide +kernel
theorem small_3316104_right_covered : CoveredBy scale carrier boxes small_3316104_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3316104_right_root small_3316104_right_fuel small_3316104_right_count small_3316104_right_encoded small_3316104_right_checked

theorem cover_3316104 : CoveredBy scale carrier boxes root_3316104 := by
  apply coveredBy_split_literal root_3316104 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.root_3316109 small_3316104_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.cover_3316109
  · exact small_3316104_right_covered
#print axioms cover_3316104

def root_3316103 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3316103_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3316103_right_fuel : Nat := 2
def small_3316103_right_count : Nat := 3
def small_3316103_right_encoded : String := "1151E9090000000400000005"
theorem small_3316103_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3316103_right_root small_3316103_right_fuel small_3316103_right_count small_3316103_right_encoded = true := by
  decide +kernel
theorem small_3316103_right_covered : CoveredBy scale carrier boxes small_3316103_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3316103_right_root small_3316103_right_fuel small_3316103_right_count small_3316103_right_encoded small_3316103_right_checked

theorem cover_3316103 : CoveredBy scale carrier boxes root_3316103 := by
  apply coveredBy_split_literal root_3316103 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.root_3316104 small_3316103_right_root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.cover_3316104
  · exact small_3316103_right_covered
#print axioms cover_3316103

def root_3316098 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3316098_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3316098_right_fuel : Nat := 1
def small_3316098_right_count : Nat := 1
def small_3316098_right_encoded : String := "00000003"
theorem small_3316098_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3316098_right_root small_3316098_right_fuel small_3316098_right_count small_3316098_right_encoded = true := by
  decide +kernel
theorem small_3316098_right_covered : CoveredBy scale carrier boxes small_3316098_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3316098_right_root small_3316098_right_fuel small_3316098_right_count small_3316098_right_encoded small_3316098_right_checked

theorem cover_3316098 : CoveredBy scale carrier boxes root_3316098 := by
  apply coveredBy_split_literal root_3316098 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.root_3316103 small_3316098_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.cover_3316103
  · exact small_3316098_right_covered
#print axioms cover_3316098

def root_3316090 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3316090_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3316090_left_fuel : Nat := 2
def small_3316090_left_count : Nat := 3
def small_3316090_left_encoded : String := "1151E9070000000300000005"
theorem small_3316090_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3316090_left_root small_3316090_left_fuel small_3316090_left_count small_3316090_left_encoded = true := by
  decide +kernel
theorem small_3316090_left_covered : CoveredBy scale carrier boxes small_3316090_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3316090_left_root small_3316090_left_fuel small_3316090_left_count small_3316090_left_encoded small_3316090_left_checked

theorem cover_3316090 : CoveredBy scale carrier boxes root_3316090 := by
  apply coveredBy_split_literal root_3316090 small_3316090_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.root_3316098 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_3316090_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.cover_3316098
#print axioms cover_3316090

def root_3316085 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3316085_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3316085_right_fuel : Nat := 1
def small_3316085_right_count : Nat := 1
def small_3316085_right_encoded : String := "00000002"
theorem small_3316085_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3316085_right_root small_3316085_right_fuel small_3316085_right_count small_3316085_right_encoded = true := by
  decide +kernel
theorem small_3316085_right_covered : CoveredBy scale carrier boxes small_3316085_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3316085_right_root small_3316085_right_fuel small_3316085_right_count small_3316085_right_encoded small_3316085_right_checked

theorem cover_3316085 : CoveredBy scale carrier boxes root_3316085 := by
  apply coveredBy_split_literal root_3316085 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.root_3316090 small_3316085_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.cover_3316090
  · exact small_3316085_right_covered
#print axioms cover_3316085

def root_3316084 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3316084_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3316084_right_fuel : Nat := 2
def small_3316084_right_count : Nat := 3
def small_3316084_right_encoded : String := "1151E9050000000200000005"
theorem small_3316084_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3316084_right_root small_3316084_right_fuel small_3316084_right_count small_3316084_right_encoded = true := by
  decide +kernel
theorem small_3316084_right_covered : CoveredBy scale carrier boxes small_3316084_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3316084_right_root small_3316084_right_fuel small_3316084_right_count small_3316084_right_encoded small_3316084_right_checked

theorem cover_3316084 : CoveredBy scale carrier boxes root_3316084 := by
  apply coveredBy_split_literal root_3316084 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.root_3316085 small_3316084_right_root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.cover_3316085
  · exact small_3316084_right_covered
#print axioms cover_3316084

def root_3316078 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3316078_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3316078_left_fuel : Nat := 1
def small_3316078_left_count : Nat := 1
def small_3316078_left_encoded : String := "00000001"
theorem small_3316078_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3316078_left_root small_3316078_left_fuel small_3316078_left_count small_3316078_left_encoded = true := by
  decide +kernel
theorem small_3316078_left_covered : CoveredBy scale carrier boxes small_3316078_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3316078_left_root small_3316078_left_fuel small_3316078_left_count small_3316078_left_encoded small_3316078_left_checked

theorem cover_3316078 : CoveredBy scale carrier boxes root_3316078 := by
  apply coveredBy_split_literal root_3316078 small_3316078_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.root_3316084 coord1 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_3316078_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.cover_3316084
#print axioms cover_3316078

def root_3311218 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3311218 : CoveredBy scale carrier boxes root_3311218 := by
  apply coveredBy_split_literal root_3311218 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.root_3311219 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.root_3316078 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.cover_3311219
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.cover_3316078
#print axioms cover_3311218

def root_3311212 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3311212_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3311212_left_fuel : Nat := 1
def small_3311212_left_count : Nat := 1
def small_3311212_left_encoded : String := "00000000"
theorem small_3311212_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3311212_left_root small_3311212_left_fuel small_3311212_left_count small_3311212_left_encoded = true := by
  decide +kernel
theorem small_3311212_left_covered : CoveredBy scale carrier boxes small_3311212_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3311212_left_root small_3311212_left_fuel small_3311212_left_count small_3311212_left_encoded small_3311212_left_checked

theorem cover_3311212 : CoveredBy scale carrier boxes root_3311212 := by
  apply coveredBy_split_literal root_3311212 small_3311212_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.root_3311218 coord0 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_3311212_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.cover_3311218
#print axioms cover_3311212

def root_3289404 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3289404 : CoveredBy scale carrier boxes root_3289404 := by
  apply coveredBy_split_literal root_3289404 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.root_3289405 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.root_3311212 coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.cover_3289405
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.cover_3311212
#print axioms cover_3289404

def root_3272688 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3272688 : CoveredBy scale carrier boxes root_3272688 := by
  apply coveredBy_split_literal root_3272688 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.root_3272689 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.root_3289404 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.cover_3272689
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.cover_3289404
#print axioms cover_3272688

def root_3321980 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3321980 : CoveredBy scale carrier boxes root_3321980 := by
  apply coveredBy_split_literal root_3321980 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1266.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1267.root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1266.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1267.covered
#print axioms cover_3321980

def root_3321974 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3321974_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3321974_left_fuel : Nat := 1
def small_3321974_left_count : Nat := 1
def small_3321974_left_encoded : String := "00000002"
theorem small_3321974_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3321974_left_root small_3321974_left_fuel small_3321974_left_count small_3321974_left_encoded = true := by
  decide +kernel
theorem small_3321974_left_covered : CoveredBy scale carrier boxes small_3321974_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3321974_left_root small_3321974_left_fuel small_3321974_left_count small_3321974_left_encoded small_3321974_left_checked

theorem cover_3321974 : CoveredBy scale carrier boxes root_3321974 := by
  apply coveredBy_split_literal root_3321974 small_3321974_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.root_3321980 coord2 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_3321974_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.cover_3321980
#print axioms cover_3321974

def root_3320874 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3320874 : CoveredBy scale carrier boxes root_3320874 := by
  apply coveredBy_split_literal root_3320874 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1265.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.root_3321974 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1265.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.cover_3321974
#print axioms cover_3320874

def root_3320869 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3320869_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3320869_right_fuel : Nat := 1
def small_3320869_right_count : Nat := 1
def small_3320869_right_encoded : String := "00000001"
theorem small_3320869_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3320869_right_root small_3320869_right_fuel small_3320869_right_count small_3320869_right_encoded = true := by
  decide +kernel
theorem small_3320869_right_covered : CoveredBy scale carrier boxes small_3320869_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3320869_right_root small_3320869_right_fuel small_3320869_right_count small_3320869_right_encoded small_3320869_right_checked

theorem cover_3320869 : CoveredBy scale carrier boxes root_3320869 := by
  apply coveredBy_split_literal root_3320869 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.root_3320874 small_3320869_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079.cover_3320874
  · exact small_3320869_right_covered
#print axioms cover_3320869

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0079
