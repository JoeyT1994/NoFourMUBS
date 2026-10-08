import TaoBundleChunkBatch0349
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0261
def root_3687064 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3687064_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3687064_right_fuel : Nat := 28
def small_3687064_right_count : Nat := 317
def small_3687064_right_encoded : String := "12073CFC0000000308A91309120700FE050000F8135D810304548A01000000090000000800000001000000090000000412073CFE00000004050000F8135D810304548A01138670F604548A0513867104000000020CFD9C070F34D0FC0CFD9C090F34D0FE00000009000000040F350CFE000000040C9A86FE0F878D09078000F8128A7D03022A458100000006000000090000000100000006000000040F87510900000004078000F8128A7D03022A458113E1C4F6022A458513E1C504000000020AD3578710D100FC000000060000000300000006000000060000000013E200F600000000022A458513E1C504000000020AD3578710D100FC0B4D43FE00000006108011090000000408C000F811FC2503000000090000000100000006000000030000000913E201040AD3578710D100FC0B4D43FE0000000610801109000000040000000600000003000000050000000200000001128A41030000000100000006000000030F350CFC000000030CFD9C09000000090F350CFE000000040C9A86FC0F878D070C9A86FE000000090F87510900000004078000F8128A7D03022A458100000009000000090000000100000009000000030F875107000000030C9A86FE00000009000000091386AD040CFD9C070F34D0FC0CFD9C090F34D0FE078000F8128A7D030000000A0000000100000006000000040F350CFE000000040C9A86FE0F878D09078000F8128A7D03022A45810000000613E200F600000000067ECE8512EA59040000000200000006000000050000000100000006000000040F87510900000004078000F8128A7D03022A458100000006000000050000000100000006000000030F350CFC000000030CFD9C090F34D0FE00000009000000040F350CFE000000040C9A86FC0F878D070C9A86FE0F878D09078000F80000000500000006000000040F8751090000000400000005000000030F875107000000030000000500000002000000001386ACF60000000004548A0513867104000000020CFD9C070F34D0FC0CFD9C090F34D0FE00000008000000040F350CFE000000040C9A86FE0F878D09078000F8128A7D03067ECE8100000009000000080000000100000009000000040F87510900000004078000F8128A7D03067ECE8112EA58F6022A458513E1C504000000020AD3578710D100FC0B4D43FE00000009108011090000000408C000F80000000500000009000000030000000500000005000000000000000500000001128A410300000001067ECE8112EA58F6022A458500000009000000050000000000000005000000030F350CFC000000030CFD9C09000000090F350CFE000000040C9A86FC0F878D070C9A86FE000000090F8751090000000400000005000000030F87510700000003000000051386AD040CFD9C070F34D0FC0CFD9C090F34D0FE0000000A000000040F350CFE000000040C9A86FE0F878D090000000A000000040F8751090000000400000005000000030F350CFC000000030CFD9C090F34D0FE0000000800000004000000050000000200000001135D45030000000104548A01138670F604548A0513867104000000020CFD9C070F34D0FC0000000900000003000000091386AD040CFD9C070F34D0FC00000006000000030F350CFC000000030CFD9C09000000090000000500000002000000001386ACF60000000004548A0513867104000000020CFD9C070F34D0FC0000000900000003000000091386AD040CFD9C070000000A0000000500000002"
theorem small_3687064_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3687064_right_root small_3687064_right_fuel small_3687064_right_count small_3687064_right_encoded = true := by
  decide +kernel
theorem small_3687064_right_covered : CoveredBy scale carrier boxes small_3687064_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3687064_right_root small_3687064_right_fuel small_3687064_right_count small_3687064_right_encoded small_3687064_right_checked

theorem cover_3687064 : CoveredBy scale carrier boxes root_3687064 := by
  apply coveredBy_split_literal root_3687064 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1394.root small_3687064_right_root coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1394.covered
  · exact small_3687064_right_covered
#print axioms cover_3687064

def root_3687058 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3687058_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3687058_left_fuel : Nat := 1
def small_3687058_left_count : Nat := 1
def small_3687058_left_encoded : String := "00000002"
theorem small_3687058_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3687058_left_root small_3687058_left_fuel small_3687058_left_count small_3687058_left_encoded = true := by
  decide +kernel
theorem small_3687058_left_covered : CoveredBy scale carrier boxes small_3687058_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3687058_left_root small_3687058_left_fuel small_3687058_left_count small_3687058_left_encoded small_3687058_left_checked

theorem cover_3687058 : CoveredBy scale carrier boxes root_3687058 := by
  apply coveredBy_split_literal root_3687058 small_3687058_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0261.root_3687064 coord2 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_3687058_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0261.cover_3687064
#print axioms cover_3687058

def root_3687057 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3687057_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3687057_right_fuel : Nat := 21
def small_3687057_right_count : Nat := 173
def small_3687057_right_encoded : String := "12073D0408A91307120700FC08A91309120700FE0000000A0000000412073CFE00000004050000F8135D810304548A01138670F60CFD9C050F34D1040000000204548A07138670FC0CFD9C090000000A0F350CFE000000040C9A86FE000000060F87510900000004078000F8128A7D03022A4581000000060000000A0000000100000006000000031386ACFC000000030CFD9C090F34D0FE00000006000000040F350CFE000000040C9A86FE000000060F87510900000004078000F8128A7D03022A4581000000060000000500000001000000060F350D0404548A070000000A0000000A00000002000000001386ACF6000000000CFD9C050F34D1040000000204548A070000000A0000000A0000000A00000001135D45030000000104548A01138670F60CFD9C050F34D104000000020000000A0000000A000000000000000A0000000312073CFC0000000308A91309120700FE050000F8135D810304548A01138670F60CFD9C050F34D104000000020000000A0000000A000000001386ACF6000000000CFD9C050000000A0000000A00000001135D45030000000104548A01138670F60CFD9C05000000090F350D040000000900000002000000001386ACF6000000000CFD9C05000000090000000A0000000412073CFE00000004050000F8135D810304548A01138670F60CFD9C050F34D104000000020CFD9C070F34D0FC0CFD9C090F34D0FE0000000A0000000400000005000000030F350CFC000000030CFD9C090F34D0FE0000000500000004000000050F350D040CFD9C070F34D0FC00000005000000030000000500000002000000001386ACF6000000000CFD9C050F34D104000000020CFD9C070000000A000000050000000500000001135D45030000000104548A01138670F60CFD9C050F34D104000000020CFD9C070000000A0000000500000005000000000000000500000002"
theorem small_3687057_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3687057_right_root small_3687057_right_fuel small_3687057_right_count small_3687057_right_encoded = true := by
  decide +kernel
theorem small_3687057_right_covered : CoveredBy scale carrier boxes small_3687057_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3687057_right_root small_3687057_right_fuel small_3687057_right_count small_3687057_right_encoded small_3687057_right_checked

theorem cover_3687057 : CoveredBy scale carrier boxes root_3687057 := by
  apply coveredBy_split_literal root_3687057 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0261.root_3687058 small_3687057_right_root coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0261.cover_3687058
  · exact small_3687057_right_covered
#print axioms cover_3687057

def root_3687052 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3687052_right_root : ZRayBox := fun j => (#[⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3687052_right_fuel : Nat := 1
def small_3687052_right_count : Nat := 1
def small_3687052_right_encoded : String := "00000000"
theorem small_3687052_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3687052_right_root small_3687052_right_fuel small_3687052_right_count small_3687052_right_encoded = true := by
  decide +kernel
theorem small_3687052_right_covered : CoveredBy scale carrier boxes small_3687052_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3687052_right_root small_3687052_right_fuel small_3687052_right_count small_3687052_right_encoded small_3687052_right_checked

theorem cover_3687052 : CoveredBy scale carrier boxes root_3687052 := by
  apply coveredBy_split_literal root_3687052 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0261.root_3687057 small_3687052_right_root coord0 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0261.cover_3687057
  · exact small_3687052_right_covered
#print axioms cover_3687052

def root_3687051 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3687051_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3687051_right_fuel : Nat := 27
def small_3687051_right_count : Nat := 213
def small_3687051_right_encoded : String := "12073CF60000000008A91305120701040000000208A91307120700FC08A91309120700FE0000000A0000000412073CFE00000004050000F8135D81030CFD9C010F34D0F604548A05138671040000000204548A07138670FC0CFD9C090000000A0F350CFE000000040C9A86FE0000000A0F87510900000004078000F8128A7D030AD3578110D100F6022A458513E1C50400000002022A45870000000A0000000A0000000A000000000000000A000000010000000A000000031386ACFC000000030CFD9C090F34D0FE00000008000000040F350CFE000000040C9A86FE0F878D090000000A000000040F87510900000004078000F8128A7D030AD3578110D100F6022A458513E1C50400000002067ECE870000000A0000000500000005000000000000000500000001128A4103000000010AD3578110D100F60000000A00000000000000051386AD0404548A070000000A0000000A00000002000000000F350CF60000000004548A05138671040000000204548A070000000A1386ACFC000000030CFD9C090000000A0F350CFE000000040C9A86F60000000A0000000A0000000A00000001135D4503000000010CFD9C010F34D0F604548A0513867104000000020000000A0000000A000000000000000A0000000312073CFC0000000308A91309120700FE0000000A0000000412073CFE00000004050000F8135D81030CFD9C010F34D0F604548A0513867104000000020CFD9C070F34D0FC0CFD9C09000000080F350CFE000000040C9A86FE0F878D09078000F80000000800000009000000040F8751090000000400000005000000030F350CFC000000030CFD9C0900000008000000051386AD040CFD9C070000000A0000000500000002000000000F350CF60000000004548A0513867104000000020CFD9C070F34D0FC0CFD9C09000000080000000500000003000000050000000500000001135D4503000000010CFD9C010F34D0F604548A0513867104000000020CFD9C070000000A0000000500000005000000000000000512073D0408A91307120700FC08A913090000000A12073CFE00000004050000F8135D81030CFD9C010F34D0F60000000A000000000000000A000000010000000A0000000312073CFC0000000308A91309120700FE050000F80000000A0000000A000000040000000500000002"
theorem small_3687051_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3687051_right_root small_3687051_right_fuel small_3687051_right_count small_3687051_right_encoded = true := by
  decide +kernel
theorem small_3687051_right_covered : CoveredBy scale carrier boxes small_3687051_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3687051_right_root small_3687051_right_fuel small_3687051_right_count small_3687051_right_encoded small_3687051_right_checked

theorem cover_3687051 : CoveredBy scale carrier boxes root_3687051 := by
  apply coveredBy_split_literal root_3687051 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0261.root_3687052 small_3687051_right_root coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0261.cover_3687052
  · exact small_3687051_right_covered
#print axioms cover_3687051

def root_3687046 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3687046_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3687046_right_fuel : Nat := 1
def small_3687046_right_count : Nat := 1
def small_3687046_right_encoded : String := "00000004"
theorem small_3687046_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3687046_right_root small_3687046_right_fuel small_3687046_right_count small_3687046_right_encoded = true := by
  decide +kernel
theorem small_3687046_right_covered : CoveredBy scale carrier boxes small_3687046_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3687046_right_root small_3687046_right_fuel small_3687046_right_count small_3687046_right_encoded small_3687046_right_checked

theorem cover_3687046 : CoveredBy scale carrier boxes root_3687046 := by
  apply coveredBy_split_literal root_3687046 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0261.root_3687051 small_3687046_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0261.cover_3687051
  · exact small_3687046_right_covered
#print axioms cover_3687046

def root_3691514 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3691514_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3691514_right_fuel : Nat := 18
def small_3691514_right_count : Nat := 73
def small_3691514_right_encoded : String := "135D45090000000404548A01138670F604548A05138671040000000204548A07000000081386ACFC00000003000000081386AD0404548A07000000081386ACFC00000003078000F8000000070000000800000002000000001386ACF60000000004548A05138671040000000204548A07000000081386ACFC00000003078000F8128A7D03028000FE13D7ED09067ECE8112EA58F6022A458513E1C50400000002067ECE870000000812EA94FC0000000300000008000000080000000012EA94F600000000022A458513E1C50400000002067ECE870000000800000005000000050000000413D7B10900000004067ECE81000000080000000900000001128A410300000001028000FE00000008000000081386AD0404548A07000000090000000500000002"
theorem small_3691514_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3691514_right_root small_3691514_right_fuel small_3691514_right_count small_3691514_right_encoded = true := by
  decide +kernel
theorem small_3691514_right_covered : CoveredBy scale carrier boxes small_3691514_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3691514_right_root small_3691514_right_fuel small_3691514_right_count small_3691514_right_encoded small_3691514_right_checked

theorem cover_3691514 : CoveredBy scale carrier boxes root_3691514 := by
  apply coveredBy_split_literal root_3691514 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1395.root small_3691514_right_root coord4 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1395.covered
  · exact small_3691514_right_covered
#print axioms cover_3691514

def root_3691509 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3691509_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3691509_right_fuel : Nat := 1
def small_3691509_right_count : Nat := 1
def small_3691509_right_encoded : String := "00000001"
theorem small_3691509_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3691509_right_root small_3691509_right_fuel small_3691509_right_count small_3691509_right_encoded = true := by
  decide +kernel
theorem small_3691509_right_covered : CoveredBy scale carrier boxes small_3691509_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3691509_right_root small_3691509_right_fuel small_3691509_right_count small_3691509_right_encoded small_3691509_right_checked

theorem cover_3691509 : CoveredBy scale carrier boxes root_3691509 := by
  apply coveredBy_split_literal root_3691509 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0261.root_3691514 small_3691509_right_root coord1 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0261.cover_3691514
  · exact small_3691509_right_covered
#print axioms cover_3691509

def root_3691508 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3691508_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3691508_right_fuel : Nat := 19
def small_3691508_right_count : Nat := 91
def small_3691508_right_encoded : String := "135D450300000001050000FE135D810904548A01138670F604548A05138671040000000204548A07000000081386ACFC00000003000000081386AD0404548A07000000080000000600000002000000001386ACF60000000004548A05138671040000000204548A07000000081386ACFC00000003028000F813D7ED03078000FE128A7D09067ECE8112EA58F6022A458513E1C5040000000200000006000000060000000012EA94F600000000022A458513E1C50400000002067ECE8700000008000000050000000500000004128A410900000004000000080000000113D7B10300000001078000FE128A7D09067ECE81000000060000000A00000004000000081386AD0404548A07138670FC028000F8000000080000000800000003000000050000000200000004135D45090000000404548A01000000081386ACF60000000004548A05138671040000000204548A0700000008000000081386AD0404548A07000000080000000500000002"
theorem small_3691508_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3691508_right_root small_3691508_right_fuel small_3691508_right_count small_3691508_right_encoded = true := by
  decide +kernel
theorem small_3691508_right_covered : CoveredBy scale carrier boxes small_3691508_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3691508_right_root small_3691508_right_fuel small_3691508_right_count small_3691508_right_encoded small_3691508_right_checked

theorem cover_3691508 : CoveredBy scale carrier boxes root_3691508 := by
  apply coveredBy_split_literal root_3691508 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0261.root_3691509 small_3691508_right_root coord1 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0261.cover_3691509
  · exact small_3691508_right_covered
#print axioms cover_3691508

def root_3691503 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3691503_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3691503_right_fuel : Nat := 1
def small_3691503_right_count : Nat := 1
def small_3691503_right_encoded : String := "00000003"
theorem small_3691503_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3691503_right_root small_3691503_right_fuel small_3691503_right_count small_3691503_right_encoded = true := by
  decide +kernel
theorem small_3691503_right_covered : CoveredBy scale carrier boxes small_3691503_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3691503_right_root small_3691503_right_fuel small_3691503_right_count small_3691503_right_encoded small_3691503_right_checked

theorem cover_3691503 : CoveredBy scale carrier boxes root_3691503 := by
  apply coveredBy_split_literal root_3691503 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0261.root_3691508 small_3691503_right_root coord3 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0261.cover_3691508
  · exact small_3691503_right_covered
#print axioms cover_3691503

def root_3691502 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3691502_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3691502_right_fuel : Nat := 28
def small_3691502_right_count : Nat := 287
def small_3691502_right_encoded : String := "12073CFC00000003050000F8135D8103050000FE135D810904548A01138670F604548A0513867104000000020CFD9C070F34D0FC078000F8128A7D03078000FE128A7D09022A458113E1C4F6022A458513E1C504000000020AD3578710D100FC000000060000000310D13CFC000000030000000713E201040AD3578710D100FC000000060000000300000006000000020000000013E200F600000000022A458513E1C504000000020AD3578710D100FC08C000F811FC250308C000FE11FC2509033F67C10000000613BC30F6000000000000000700000004000000070000000111FBE9030000000108C000FE0000000611FBE90900000004033F67C100000006000000050000000310D13CFC0000000308C000F80000000711FBE903000000010000000513E201040AD3578710D100FC0000000700000003000000050000000200000004128A410900000004022A458113E1C4F6022A458513E1C504000000020AD3578710D100FC000000070000000300000007000000070000000013E200F600000000022A458513E1C504000000020AD3578710D100FC0000000700000003000000050000000500000001128A410300000001078000FE128A7D09022A45810000000613E200F600000000022A458513E1C504000000020AD3578710D100FC0000000600000003000000050000000500000004128A410900000004022A45810000000813E200F600000000022A458513E1C504000000020AD35787000000080000000500000005000000030F350CFC000000030C9A86FC0F878D07078000F8128A7D03078000FE128A7D09022A45810000000700000005000000040000000700000001128A410300000001078000FE00000005128A41090000000400000005000000030F87510700000003000000051386AD040CFD9C070F34D0FC078000F8128A7D03078000FE128A7D0900000007000000040000000700000001128A41030000000100000005000000030000000500000002000000001386ACF60000000004548A0513867104000000020CFD9C070F34D0FC078000F8128A7D03078000FE128A7D09067ECE8112EA58F6022A458513E1C504000000020AD3578710D100FC08C000F80000000511FBE9030000000100000005000000030000000500000005000000000000000500000004128A4109000000040000000500000001128A410300000001078000FE00000005128A4109000000040000000500000003000000050000000500000004135D45090000000404548A01138670F604548A0513867104000000020CFD9C070F34D0FC078000F8128A7D030000000700000001128A41030000000100000008000000030000000500000005000000000000000500000001135D450300000001050000FE135D810904548A01138670F604548A0513867104000000020CFD9C070F34D0FC028000F813D7ED03078000FE00000006128A410900000004000000060000000100000006000000030000000500000005000000000000000500000004135D45090000000404548A01138670F604548A0513867104000000020CFD9C070000000800000005000000050000000000000005"
theorem small_3691502_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3691502_right_root small_3691502_right_fuel small_3691502_right_count small_3691502_right_encoded = true := by
  decide +kernel
theorem small_3691502_right_covered : CoveredBy scale carrier boxes small_3691502_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3691502_right_root small_3691502_right_fuel small_3691502_right_count small_3691502_right_encoded small_3691502_right_checked

theorem cover_3691502 : CoveredBy scale carrier boxes root_3691502 := by
  apply coveredBy_split_literal root_3691502 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0261.root_3691503 small_3691502_right_root coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0261.cover_3691503
  · exact small_3691502_right_covered
#print axioms cover_3691502

def root_3691496 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3691496_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3691496_left_fuel : Nat := 1
def small_3691496_left_count : Nat := 1
def small_3691496_left_encoded : String := "00000002"
theorem small_3691496_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3691496_left_root small_3691496_left_fuel small_3691496_left_count small_3691496_left_encoded = true := by
  decide +kernel
theorem small_3691496_left_covered : CoveredBy scale carrier boxes small_3691496_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3691496_left_root small_3691496_left_fuel small_3691496_left_count small_3691496_left_encoded small_3691496_left_checked

theorem cover_3691496 : CoveredBy scale carrier boxes root_3691496 := by
  apply coveredBy_split_literal root_3691496 small_3691496_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0261.root_3691502 coord2 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_3691496_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0261.cover_3691502
#print axioms cover_3691496

def root_3691495 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3691495_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3691495_right_fuel : Nat := 17
def small_3691495_right_count : Nat := 95
def small_3691495_right_encoded : String := "12073D0408A91307120700FC050000F8135D8103050000FE135D810904548A01138670F60CFD9C050F34D1040000000204548A07138670FC078000F8128A7D03078000FE000000080000000800000001128A41030000000100000008000000031386ACFC00000003078000F800000005128A410300000001000000050F350D040000000500000002000000001386ACF6000000000CFD9C050F34D1040000000204548A07138670FC078000F8000000050000000A00000003000000050000000500000004135D45090000000404548A01138670F60CFD9C050F34D1040000000204548A07000000080000000500000005000000000000000500000001135D450300000001050000FE135D810904548A01138670F60CFD9C050F34D1040000000204548A07000000080000000500000005000000000000000500000004135D45090000000404548A01138670F60CFD9C050F34D1040000000204548A070000000800000005000000050000000000000005000000030000000500000002"
theorem small_3691495_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3691495_right_root small_3691495_right_fuel small_3691495_right_count small_3691495_right_encoded = true := by
  decide +kernel
theorem small_3691495_right_covered : CoveredBy scale carrier boxes small_3691495_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3691495_right_root small_3691495_right_fuel small_3691495_right_count small_3691495_right_encoded small_3691495_right_checked

theorem cover_3691495 : CoveredBy scale carrier boxes root_3691495 := by
  apply coveredBy_split_literal root_3691495 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0261.root_3691496 small_3691495_right_root coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0261.cover_3691496
  · exact small_3691495_right_covered
#print axioms cover_3691495

def root_3691490 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3691490_right_root : ZRayBox := fun j => (#[⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3691490_right_fuel : Nat := 1
def small_3691490_right_count : Nat := 1
def small_3691490_right_encoded : String := "00000000"
theorem small_3691490_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3691490_right_root small_3691490_right_fuel small_3691490_right_count small_3691490_right_encoded = true := by
  decide +kernel
theorem small_3691490_right_covered : CoveredBy scale carrier boxes small_3691490_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3691490_right_root small_3691490_right_fuel small_3691490_right_count small_3691490_right_encoded small_3691490_right_checked

theorem cover_3691490 : CoveredBy scale carrier boxes root_3691490 := by
  apply coveredBy_split_literal root_3691490 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0261.root_3691495 small_3691490_right_root coord0 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0261.cover_3691495
  · exact small_3691490_right_covered
#print axioms cover_3691490

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0261
