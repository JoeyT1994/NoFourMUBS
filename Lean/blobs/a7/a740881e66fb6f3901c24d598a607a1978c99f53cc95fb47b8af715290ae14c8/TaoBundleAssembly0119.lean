import TaoBundleAssembly0112
import TaoBundleAssembly0116
import TaoBundleAssembly0117
import TaoBundleAssembly0118
import TaoBundleChunkBatch0440
import TaoBundleChunkBatch0441
import TaoBundleChunkBatch0442
import TaoBundleChunkBatch0443
import TaoBundleChunkBatch0444
import TaoBundleChunkBatch0445
import TaoBundleChunkBatch0446
import TaoBundleChunkBatch0447
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119
def root_4700122 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4700122_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4700122_right_fuel : Nat := 33
def small_4700122_right_count : Nat := 395
def small_4700122_right_encoded : String := "115224FD000000030A0001081151E9090000000408A91301120700F6000000060000000012073CF60000000008A9130300000006000000061152250908A91301120700F608A9130312070102000000010000000612073D0208A912FD12073D0608A913091207010800000004050000FA135D810504548A01000000061386ACF6000000000CFD9C03000000060F350D020CFD9BFD0F350D06000000060000000300000006000000010000000200000006000000060000000300000006000000010000000012073CF60000000008A91303120701020000000108A912FD12073D0608A913091207010800000004050000FA135D81050CFD9C010F34D0F600000006000000000F350CF60000000004548A0313867102000000010CFD9BFD0F350D060000000600000003000000061386AD020CFD9BFD0F350D0604548A0913867108000000040C9A86F6000000060F87510100000000000000050000000600000003000000060000000100000002000000060000000600000003120701060000000308A91309000000060000000612073D0208A912FD12073D0608A913091207010800000004050000FA135D81050CFD9C010F34D0F60CFD9C030F34D10200000001000000060F350D020CFD9BFD0F350D0604548A0913867108000000040C9A87020F875103000000010C9A87060F8750FD078000FA128A7D050AD3578100000006000000090000000200000006000000030F878CFD00000003000000060F878D03000000060000000100000006000000030F34D106000000030000000600000001000000000F350CF6000000000CFD9C030F34D102000000010CFD9BFD0F350D0604548A0913867108000000040C9A86F60F878D010C9A87060000000600000006000000000F875101000000000C9A87060F8750FD078000FA128A7D050AD3578310D10102000000010000000500000005000000020000000500000003000000051386AD080000000600000004000000030F34D10600000003000000050F350D020CFD9BFD0F350D0604548A0913867108000000040C9A86F60F878D010C9A87020F875103000000010C9A87060F8750FD078000FA128A7D05022A458900000007000000070000000200000007000000030F878CFD00000003000000070F878D030C9A87060F8750FD078000FA128A7D05022A458913E1C508000000040DE7C9F60000000A00000007000000060000000200000006000000030F878CFD00000003078000FA000000070000000500000001000000000F875101000000000C9A87020F875103000000010C9A870600000007000000050F878D030C9A87060F8750FD078000FA128A7D05022A458913E1C50800000004000000050000000500000002000000050000000300000005000000011386AD080C9A86F60F878D010C9A87020F875103000000010C9A87060F8750FD00000009000000030F878CFD00000003000000050F878D030000000600000001000000000F875101000000000C9A87020F87510300000001000000050000000500000004000000030F34D1060000000304548A09138671080000000400000005000000050000000100000002135D4505000000020CFD9C010F34D0F60CFD9C03000000060F350D020CFD9BFD0F350D0600000006000000030000000600000001000000000F350CF6000000000CFD9C030F34D10200000001000000050F350D020CFD9BFD0F350D0604548A0913867108000000040C9A86F60F878D010C9A8702000000070000000500000000000000050000000500000003000000050000000112073D08050000FA135D81050CFD9C010F34D0F60CFD9C030000000600000006000000000F350CF6000000000CFD9C030F34D10200000001000000060F350D020CFD9BFD0F350D060CFD9C090F34D108000000040C9A86F60F878D0100000006000000000F875101000000000000000500000006000000030F34D10600000003000000050000000100000002135D4505000000020CFD9C01000000060F350CF6000000000CFD9C03000000060F350D020CFD9BFD0F350D06000000060000000300000005000000010000000400000003120701060000000308A913091207010800000004050000FA135D81050CFD9C010F34D0F600000006000000000F350CF600000000000000050000000200000005000000060000000100000004"
theorem small_4700122_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4700122_right_root small_4700122_right_fuel small_4700122_right_count small_4700122_right_encoded = true := by
  decide +kernel
theorem small_4700122_right_covered : CoveredBy scale carrier boxes small_4700122_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4700122_right_root small_4700122_right_fuel small_4700122_right_count small_4700122_right_encoded small_4700122_right_checked

theorem cover_4700122 : CoveredBy scale carrier boxes root_4700122 := by
  apply coveredBy_split_literal root_4700122 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0118.root_4700123 small_4700122_right_root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0118.cover_4700123
  · exact small_4700122_right_covered
#print axioms cover_4700122

def root_4700116 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4700116_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4700116_left_fuel : Nat := 1
def small_4700116_left_count : Nat := 1
def small_4700116_left_encoded : String := "00000002"
theorem small_4700116_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4700116_left_root small_4700116_left_fuel small_4700116_left_count small_4700116_left_encoded = true := by
  decide +kernel
theorem small_4700116_left_covered : CoveredBy scale carrier boxes small_4700116_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4700116_left_root small_4700116_left_fuel small_4700116_left_count small_4700116_left_encoded small_4700116_left_checked

theorem cover_4700116 : CoveredBy scale carrier boxes root_4700116 := by
  apply coveredBy_split_literal root_4700116 small_4700116_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.root_4700122 coord2 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_4700116_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.cover_4700122
#print axioms cover_4700116

def root_4675994 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4675994 : CoveredBy scale carrier boxes root_4675994 := by
  apply coveredBy_split_literal root_4675994 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0118.root_4675995 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.root_4700116 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0118.cover_4675995
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.cover_4700116
#print axioms cover_4675994

def root_4675989 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4675989_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4675989_right_fuel : Nat := 1
def small_4675989_right_count : Nat := 1
def small_4675989_right_encoded : String := "00000001"
theorem small_4675989_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4675989_right_root small_4675989_right_fuel small_4675989_right_count small_4675989_right_encoded = true := by
  decide +kernel
theorem small_4675989_right_covered : CoveredBy scale carrier boxes small_4675989_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4675989_right_root small_4675989_right_fuel small_4675989_right_count small_4675989_right_encoded small_4675989_right_checked

theorem cover_4675989 : CoveredBy scale carrier boxes root_4675989 := by
  apply coveredBy_split_literal root_4675989 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.root_4675994 small_4675989_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.cover_4675994
  · exact small_4675989_right_covered
#print axioms cover_4675989

def root_4666993 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4666993 : CoveredBy scale carrier boxes root_4666993 := by
  apply coveredBy_split_literal root_4666993 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0117.root_4666994 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.root_4675989 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0117.cover_4666994
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.cover_4675989
#print axioms cover_4666993

def root_4666988 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4666988_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4666988_right_fuel : Nat := 1
def small_4666988_right_count : Nat := 1
def small_4666988_right_encoded : String := "00000000"
theorem small_4666988_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4666988_right_root small_4666988_right_fuel small_4666988_right_count small_4666988_right_encoded = true := by
  decide +kernel
theorem small_4666988_right_covered : CoveredBy scale carrier boxes small_4666988_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4666988_right_root small_4666988_right_fuel small_4666988_right_count small_4666988_right_encoded small_4666988_right_checked

theorem cover_4666988 : CoveredBy scale carrier boxes root_4666988 := by
  apply coveredBy_split_literal root_4666988 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.root_4666993 small_4666988_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.cover_4666993
  · exact small_4666988_right_covered
#print axioms cover_4666988

def root_4704684 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4704684 : CoveredBy scale carrier boxes root_4704684 := by
  apply coveredBy_split_literal root_4704684 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1758.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1759.root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1758.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1759.covered
#print axioms cover_4704684

def root_4704679 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4704679_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4704679_right_fuel : Nat := 1
def small_4704679_right_count : Nat := 1
def small_4704679_right_encoded : String := "00000002"
theorem small_4704679_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4704679_right_root small_4704679_right_fuel small_4704679_right_count small_4704679_right_encoded = true := by
  decide +kernel
theorem small_4704679_right_covered : CoveredBy scale carrier boxes small_4704679_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4704679_right_root small_4704679_right_fuel small_4704679_right_count small_4704679_right_encoded small_4704679_right_checked

theorem cover_4704679 : CoveredBy scale carrier boxes root_4704679 := by
  apply coveredBy_split_literal root_4704679 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.root_4704684 small_4704679_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.cover_4704684
  · exact small_4704679_right_covered
#print axioms cover_4704679

def root_4704678 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4704678_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4704678_right_fuel : Nat := 20
def small_4704678_right_count : Nat := 139
def small_4704678_right_encoded : String := "1151E905000000020A0001061151E8FD0A0001081151E90900000004000000051152250908A913091207010800000004050000F6135D81010500010200000009135D8103050000FA135D810505000106135D44FD04548A091386710800000004000000090000000900000003135D80FD0000000304548A091386710800000004078000F600000009128A410100000000000000081386AD08078000F600000009128A410100000000000000080000000400000002000000090000000100000000135D45010000000005000102135D450300000001050000FA135D8105000000080000000200000008135D8103050000FA135D810505000106135D44FD0000000A00000003135D80FD0000000304548A090000000800000005000000020000000A0000000112073D08050000F6135D8101050001020000000A135D8103050000FA135D8105050001060000000A0000000A000000020000000A00000001000000000000000A000000040000000400000003115224FD000000030A0001081151E90900000004000000051152250908A912FD12073D0608A913091207010800000004050000F6135D81010500010200000008135D8103050000FA135D81050CFD9BFD0F350D0604548A090000000700000005000000030000000500000002000000050000000100000000135D4501000000000000000512073D08050000F6135D81010500010200000008000000050000000000000005000000040000000312070106000000030000000500000004"
theorem small_4704678_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4704678_right_root small_4704678_right_fuel small_4704678_right_count small_4704678_right_encoded = true := by
  decide +kernel
theorem small_4704678_right_covered : CoveredBy scale carrier boxes small_4704678_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4704678_right_root small_4704678_right_fuel small_4704678_right_count small_4704678_right_encoded small_4704678_right_checked

theorem cover_4704678 : CoveredBy scale carrier boxes root_4704678 := by
  apply coveredBy_split_literal root_4704678 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.root_4704679 small_4704678_right_root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.cover_4704679
  · exact small_4704678_right_covered
#print axioms cover_4704678

def root_4704672 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4704672_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4704672_left_fuel : Nat := 1
def small_4704672_left_count : Nat := 1
def small_4704672_left_encoded : String := "00000001"
theorem small_4704672_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4704672_left_root small_4704672_left_fuel small_4704672_left_count small_4704672_left_encoded = true := by
  decide +kernel
theorem small_4704672_left_covered : CoveredBy scale carrier boxes small_4704672_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4704672_left_root small_4704672_left_fuel small_4704672_left_count small_4704672_left_encoded small_4704672_left_checked

theorem cover_4704672 : CoveredBy scale carrier boxes root_4704672 := by
  apply coveredBy_split_literal root_4704672 small_4704672_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.root_4704678 coord1 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_4704672_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.cover_4704678
#print axioms cover_4704672

def root_4712165 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4712165_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (10572672)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4712165_left_fuel : Nat := 22
def small_4712165_left_count : Nat := 267
def small_4712165_left_encoded : String := "0F875103000000010C9A86FA0F878D05078000F6128A7D0107800106128A40FD022A458913E1C508000000040B4D440210801103000000010DE7C9FA000000060000000810804D030DE7C9FA0E60150508C000F611FC25010640010600000005000000060000000000000006000000020E5FD9050000000208C000F611FC25010640010612FF70FD01152349000000060000000800000003000000080000000011FBE90100000000000000060000000113E201080B4D440210801103000000010DE7C9FA0E60150500000008000000020000000810804D030DE7C9FA0E60150508C000F60000000700000007000000020E5FD9050000000208C000F611FC25010640010612FF70FD0000000700000003000000080000000011FBE9010000000000000008000000010000000400000003128A7CFD00000003022A458913E1C508000000040B4D44020000000810804D030DE7C9FA0E6015050000000800000002000000080000000113E201080B4D44020000000810804D030DE7C9FA0E601505000000080000000200000008000000010000000400000000128A41010000000007800106128A40FD022A45890000000613E201080B4D44020000000810804D0300000008000000010000000400000003128A7CFD0000000300000008000000020F87510500000002078000F6128A7D0107800106128A40FD022A458913E1C508000000040B4D440210801103000000010B4D43FA10804D0500000008000000020000000810804D030B4D43FA10804D0508C000F611FC25010640010612FF70FD011523490000000613F89508000000080000000400000003000000080000000011FBE901000000000000000800000002108011050000000208C000F611FC25010640010612FF70FD0115234913F85908000000040BF3E5820000000810092903000000080000000113F895080BF3E582000000081009290300000008000000010000000400000003000000080000000011FBE90100000000000000080000000113E201080B4D440210801103000000010B4D43FA10804D0500000008000000020000000810804D030B4D43FA10804D0508C000F611FC25010640010612FF70FD033F67C9000000080000000800000003000000080000000011FBE901000000000000000800000002108011050000000208C000F611FC25010640010612FF70FD033F67C9000000080000000800000003000000080000000011FBE9010000000000000008000000010000000400000003128A7CFD00000003022A458913E1C508000000040B4D44020000000810804D03000000080000000113E201080B4D44020000000810804D030B4D43FA10804D05000000080000000200000008000000010000000400000000128A41010000000007800106128A40FD022A45890000000813E201080B4D44020000000810804D0300000008000000010000000400000003128A7CFD0000000300000008"
theorem small_4712165_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4712165_left_root small_4712165_left_fuel small_4712165_left_count small_4712165_left_encoded = true := by
  decide +kernel
theorem small_4712165_left_covered : CoveredBy scale carrier boxes small_4712165_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4712165_left_root small_4712165_left_fuel small_4712165_left_count small_4712165_left_encoded small_4712165_left_checked

theorem cover_4712165 : CoveredBy scale carrier boxes root_4712165 := by
  apply coveredBy_split_literal root_4712165 small_4712165_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1761.root coord1 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_4712165_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1761.covered
#print axioms cover_4712165

def root_4712159 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4712159_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4712159_left_fuel : Nat := 1
def small_4712159_left_count : Nat := 1
def small_4712159_left_encoded : String := "00000004"
theorem small_4712159_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4712159_left_root small_4712159_left_fuel small_4712159_left_count small_4712159_left_encoded = true := by
  decide +kernel
theorem small_4712159_left_covered : CoveredBy scale carrier boxes small_4712159_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4712159_left_root small_4712159_left_fuel small_4712159_left_count small_4712159_left_encoded small_4712159_left_checked

theorem cover_4712159 : CoveredBy scale carrier boxes root_4712159 := by
  apply coveredBy_split_literal root_4712159 small_4712159_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.root_4712165 coord4 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_4712159_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.cover_4712165
#print axioms cover_4712159

def root_4712158 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4712158_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4712158_right_fuel : Nat := 19
def small_4712158_right_count : Nat := 233
def small_4712158_right_encoded : String := "1386AD080C9A87020F875103000000010C9A86FA0F878D05078000F6128A7D0107800106128A40FD067ECE8912EA5908000000040B4D440210801103000000010DE7C9FA0E601505000000070000000200000008000000070000000700000003128A7CFD00000003067ECE8912EA5908000000040B4D44020000000810804D030DE7C9FA0E6015050000000800000002000000080000000112EA95080B4D440200000008000000070000000400000000128A41010000000007800106128A40FD067ECE8912EA5908000000040B4D440200000008000000070000000700000003128A7CFD00000003067ECE890000000800000008000000020F87510500000002078000F6128A7D0107800106128A40FD067ECE8912EA5908000000040B4D440210801103000000010B4D43FA10804D0500000008000000020000000810804D030B4D43FA10804D0508C000F611FC25010640010600000007000000080000000011FBE901000000000000000800000002108011050000000208C000F600000009000000050000000112EA95080B4D44020000000A10804D030000000A000000010000000400000003128A7CFD00000003067ECE8912EA5908000000040B4D440200000008000000050000000500000000128A41010000000007800106128A40FD067ECE8912EA5908000000040B4D440200000008000000050000000500000003000000050F878D030C9A86FA0F878D05078000F6128A7D010780010600000007128A7CFD00000003067ECE8912EA5908000000040DE7CA020E5FD903000000010DE7C9FA0E60150500000007000000020E5FD9050000000208C000F611FC250108C0010600000007000000080000000000000008000000070000000700000000128A4101000000000780010600000007128A7CFD00000003067ECE8912EA5908000000040DE7CA020E5FD90300000001000000080000000700000007000000020F87510500000002078000F6128A7D0107800106128A40FD067ECE8912EA5908000000040DE7CA020E5FD903000000010B4D43FA10804D050000000700000002108011050000000208C000F611FC25010640010600000007000000050000000000000005000000070000000700000003128A7CFD00000003067ECE8912EA5908000000040DE7CA020E5FD9030000000100000005000000050000000500000000128A41010000000007800106128A40FD067ECE8912EA5908000000040DE7CA020E5FD9030000000100000005000000050000000500000003000000050000000100000004"
theorem small_4712158_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4712158_right_root small_4712158_right_fuel small_4712158_right_count small_4712158_right_encoded = true := by
  decide +kernel
theorem small_4712158_right_covered : CoveredBy scale carrier boxes small_4712158_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4712158_right_root small_4712158_right_fuel small_4712158_right_count small_4712158_right_encoded small_4712158_right_checked

theorem cover_4712158 : CoveredBy scale carrier boxes root_4712158 := by
  apply coveredBy_split_literal root_4712158 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.root_4712159 small_4712158_right_root coord4 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.cover_4712159
  · exact small_4712158_right_covered
#print axioms cover_4712158

def root_4712152 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4712152_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4712152_left_fuel : Nat := 1
def small_4712152_left_count : Nat := 1
def small_4712152_left_encoded : String := "00000002"
theorem small_4712152_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4712152_left_root small_4712152_left_fuel small_4712152_left_count small_4712152_left_encoded = true := by
  decide +kernel
theorem small_4712152_left_covered : CoveredBy scale carrier boxes small_4712152_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4712152_left_root small_4712152_left_fuel small_4712152_left_count small_4712152_left_encoded small_4712152_left_checked

theorem cover_4712152 : CoveredBy scale carrier boxes root_4712152 := by
  apply coveredBy_split_literal root_4712152 small_4712152_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.root_4712158 coord2 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_4712152_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.cover_4712158
#print axioms cover_4712152

def root_4711974 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4711974_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4711974_left_fuel : Nat := 15
def small_4711974_left_count : Nat := 85
def small_4711974_left_encoded : String := "0F34D0FA04548A0913867108000000040C9A87020F87510300000001078000F6128A7D0107800106128A40FD0AD357850000000710D13CFA00000002022A458913E1C508000000040B4D440200000005000000090000000700000003128A7CFD000000030AD3578510D100FA000000090000000210D13CFA00000002022A45890000000813E20108000000080000000400000000128A41010000000007800106128A40FD0AD357850000000710D13CFA00000002022A4589000000060000000700000003128A7CFD00000003000000080F878D03078000F6128A7D010780010600000007128A7CFD000000030AD357850000000710D13CFA00000002000000090000000000000009000000011386AD080C9A87020F87510300000001078000F600000007128A4101000000000780010600000007128A7CFD000000030AD357850000000700000007000000070000000400000002"
theorem small_4711974_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4711974_left_root small_4711974_left_fuel small_4711974_left_count small_4711974_left_encoded = true := by
  decide +kernel
theorem small_4711974_left_covered : CoveredBy scale carrier boxes small_4711974_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4711974_left_root small_4711974_left_fuel small_4711974_left_count small_4711974_left_encoded small_4711974_left_checked

theorem cover_4711974 : CoveredBy scale carrier boxes root_4711974 := by
  apply coveredBy_split_literal root_4711974 small_4711974_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.root_4712152 coord2 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_4711974_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.cover_4712152
#print axioms cover_4711974

def root_4711969 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4711969_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4711969_right_fuel : Nat := 1
def small_4711969_right_count : Nat := 1
def small_4711969_right_encoded : String := "00000001"
theorem small_4711969_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4711969_right_root small_4711969_right_fuel small_4711969_right_count small_4711969_right_encoded = true := by
  decide +kernel
theorem small_4711969_right_covered : CoveredBy scale carrier boxes small_4711969_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4711969_right_root small_4711969_right_fuel small_4711969_right_count small_4711969_right_encoded small_4711969_right_checked

theorem cover_4711969 : CoveredBy scale carrier boxes root_4711969 := by
  apply coveredBy_split_literal root_4711969 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.root_4711974 small_4711969_right_root coord1 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.cover_4711974
  · exact small_4711969_right_covered
#print axioms cover_4711969

def root_4711405 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4711405_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4711405_left_fuel : Nat := 32
def small_4711405_left_count : Nat := 263
def small_4711405_left_encoded : String := "0F34D102000000010CFD9C050F34D0FA00000007000000020F350CFA0000000204548A0913867108000000040C9A86FA0F878D05078000F6128A7D0107800106128A40FD0000000700000003128A7CFD000000030AD3578310D10102000000010000000910D13D02022A45890000000913E201080DE7C9FA000000070E5FD905000000020000000700000004000000010000000000000009000000020F87510500000002078000F6128A7D0107800106128A40FD0AD3578310D1010200000001022A4589000000090000000710D13D02022A458913E1C508000000040B4D43FA10804D0508C000F611FC250100000009000000000000000900000002108011050000000208C000F611FC25010640010612FF70FD0BE879C31011710200000001000000071011AD020115234913F85908000000040AA6A27A0000000910ED710500000002096000F611AABD0105A0010600000007133170FD0000000300000009000000000000000900000007000000010000000312FFACFD000000030BE879C31011710200000001000000091011AD020115234913F85908000000040AA6A27A0000000910ED7105000000020000000513F895080AA6A27A10EDAD05096000F60000000700000005000000020000000500000004000000010000000011FBE901000000000640010612FF70FD0BE879C300000009000000090000000312FFACFD000000030BE879C3000000090000000513E201080B4D43FA00000007108011050000000208C000F60000000711FBE9010000000000000007000000040000000100000003128A7CFD000000030AD3578310D1010200000001022A45890000000913E201080B4D43FA10804D050000000700000002000000050000000410D13D02022A458913E1C508000000040B4D43FA10804D0508C000F611FC250100000009000000000000000900000002108011050000000208C000F611FC250108C0010611FBE8FD0BE879C3101171020000000100000005000000050000000300000005000000000000000513E201080B4D43FA10804D0508C000F611FC250108C0010611FBE8FD00000007000000030000000500000000000000050000000200000005000000040000000100000000128A41010000000007800106128A40FD0AD3578310D10102000000010000000910D13D02022A45890000000913E201080B4D43FA0000000700000005000000040000000100000003128A7CFD000000030AD3578310D101020000000100000005000000051386AD080C9A86FA0F878D0500000007000000020F87510500000002078000F6128A7D010780010600000007128A7CFD000000030AD3578310D10102000000010000000710D13D02067ECE8912EA5908000000040B4D43FA10804D05000000070000000200000005000000050000000100000000128A41010000000007800106000000070000000500000004"
theorem small_4711405_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4711405_left_root small_4711405_left_fuel small_4711405_left_count small_4711405_left_encoded = true := by
  decide +kernel
theorem small_4711405_left_covered : CoveredBy scale carrier boxes small_4711405_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4711405_left_root small_4711405_left_fuel small_4711405_left_count small_4711405_left_encoded small_4711405_left_checked

theorem cover_4711405 : CoveredBy scale carrier boxes root_4711405 := by
  apply coveredBy_split_literal root_4711405 small_4711405_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.root_4711969 coord1 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_4711405_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.cover_4711969
#print axioms cover_4711405

def root_4711399 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4711399_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4711399_left_fuel : Nat := 1
def small_4711399_left_count : Nat := 1
def small_4711399_left_encoded : String := "00000003"
theorem small_4711399_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4711399_left_root small_4711399_left_fuel small_4711399_left_count small_4711399_left_encoded = true := by
  decide +kernel
theorem small_4711399_left_covered : CoveredBy scale carrier boxes small_4711399_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4711399_left_root small_4711399_left_fuel small_4711399_left_count small_4711399_left_encoded small_4711399_left_checked

theorem cover_4711399 : CoveredBy scale carrier boxes root_4711399 := by
  apply coveredBy_split_literal root_4711399 small_4711399_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.root_4711405 coord3 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_4711399_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.cover_4711405
#print axioms cover_4711399

def root_4708945 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4708945 : CoveredBy scale carrier boxes root_4708945 := by
  apply coveredBy_split_literal root_4708945 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1760.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.root_4711399 coord3 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1760.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.cover_4711399
#print axioms cover_4708945

def root_4708940 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4708940_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4708940_right_fuel : Nat := 1
def small_4708940_right_count : Nat := 1
def small_4708940_right_encoded : String := "00000000"
theorem small_4708940_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4708940_right_root small_4708940_right_fuel small_4708940_right_count small_4708940_right_encoded = true := by
  decide +kernel
theorem small_4708940_right_covered : CoveredBy scale carrier boxes small_4708940_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4708940_right_root small_4708940_right_fuel small_4708940_right_count small_4708940_right_encoded small_4708940_right_checked

theorem cover_4708940 : CoveredBy scale carrier boxes root_4708940 := by
  apply coveredBy_split_literal root_4708940 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.root_4708945 small_4708940_right_root coord0 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.cover_4708945
  · exact small_4708940_right_covered
#print axioms cover_4708940

def root_4708939 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4708939_right_root : ZRayBox := fun j => (#[⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4708939_right_fuel : Nat := 21
def small_4708939_right_count : Nat := 243
def small_4708939_right_encoded : String := "135D45010000000005000106135D44FD0CFD9C030F34D102000000010CFD9C05000000070F350CFA0000000204548A0900000009000000070F350D020CFD9C050F34D0FA04548A0913867108000000040C9A87020F87510300000001028000F600000007000000060000000700000007000000020F350CFA0000000204548A0913867108000000040C9A87020F875103000000010C9A86FA0F878D05028000F613D7ED010280010600000006000000060000000000000006000000020F87510500000002028000F613D7ED01028001060000000A13D7ECFD00000003022A4589000000060000000800000000000000060F878D030C9A86FA0F878D0500000009000000020F87510500000002028000F613D7ED01028001060000000A13D7ECFD00000003022A458913E1C508000000040DE7CA020000000A000000090000000A000000000000000A000000011386AD080C9A87020000000A0F878D030000000A00000001000000040000000100000003135D80FD000000030CFD9C030F34D102000000010CFD9C050F34D0FA00000009000000020F350CFA0000000204548A0913867108000000040C9A86FA000000090F87510500000002028000F613D7ED0107800106000000090000000500000000000000051386AD080C9A86FA0F878D0500000007000000020F8751050000000200000005000000040F350D020CFD9C050F34D0FA04548A09000000091386AD080C9A87020F87510300000001028000F613D7ED010780010600000007128A7CFD000000030000000800000000000000090000000700000004000000020F350CFA0000000204548A0913867108000000040C9A87020F875103000000010C9A86FA0F878D05028000F613D7ED010780010600000008000000080000000000000006000000020F87510500000002028000F613D7ED0107800106000000080000000500000000000000050F878D030C9A86FA0F878D0500000009000000020F87510500000002028000F613D7ED0107800106128A40FD022A458913E1C50800000004000000050000000500000003000000050000000000000005000000011386AD080C9A87020F875103000000010C9A86FA0F878D05028000F613D7ED0107800106128A40FD067ECE89000000080000000700000003000000080000000013D7B10100000000078001060000000800000005000000020F87510500000002000000050F878D030C9A86FA0F878D05028000F613D7ED010780010600000007128A7CFD00000003000000050000000013D7B10100000000078001060000000700000005000000020F8751050000000200000005000000010000000400000001"
theorem small_4708939_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4708939_right_root small_4708939_right_fuel small_4708939_right_count small_4708939_right_encoded = true := by
  decide +kernel
theorem small_4708939_right_covered : CoveredBy scale carrier boxes small_4708939_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4708939_right_root small_4708939_right_fuel small_4708939_right_count small_4708939_right_encoded small_4708939_right_checked

theorem cover_4708939 : CoveredBy scale carrier boxes root_4708939 := by
  apply coveredBy_split_literal root_4708939 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.root_4708940 small_4708939_right_root coord0 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.cover_4708940
  · exact small_4708939_right_covered
#print axioms cover_4708939

def root_4708933 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4708933_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4708933_left_fuel : Nat := 1
def small_4708933_left_count : Nat := 1
def small_4708933_left_encoded : String := "00000004"
theorem small_4708933_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4708933_left_root small_4708933_left_fuel small_4708933_left_count small_4708933_left_encoded = true := by
  decide +kernel
theorem small_4708933_left_covered : CoveredBy scale carrier boxes small_4708933_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4708933_left_root small_4708933_left_fuel small_4708933_left_count small_4708933_left_encoded small_4708933_left_checked

theorem cover_4708933 : CoveredBy scale carrier boxes root_4708933 := by
  apply coveredBy_split_literal root_4708933 small_4708933_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.root_4708939 coord4 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_4708933_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.cover_4708939
#print axioms cover_4708933

def root_4708932 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4708932_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4708932_right_fuel : Nat := 21
def small_4708932_right_count : Nat := 87
def small_4708932_right_encoded : String := "12073D08050000F6135D810105000106135D44FD0000000700000003135D80FD000000030CFD9C030F34D10200000001000000070F350D020CFD9C05000000070F350CFA000000020CFD9C090F34D108000000040C9A87020F875103000000010C9A86FA0F878D05078000F600000007128A41010000000000000007000000020F87510500000002078000F6128A7D01078001060000000A128A7CFD000000030AD357890000000800000005000000000000000A0F878D030C9A86FA000000070F87510500000002078000F6000000070000000A00000001000000070000000100000000135D45010000000005000106135D44FD0000000700000003135D80FD000000030CFD9C030F34D10200000001000000070F350D020CFD9C05000000070F350CFA000000020CFD9C090F34D108000000040C9A87020000000A0F878D030C9A86FA000000070000000500000001000000070000000100000004"
theorem small_4708932_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4708932_right_root small_4708932_right_fuel small_4708932_right_count small_4708932_right_encoded = true := by
  decide +kernel
theorem small_4708932_right_covered : CoveredBy scale carrier boxes small_4708932_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4708932_right_root small_4708932_right_fuel small_4708932_right_count small_4708932_right_encoded small_4708932_right_checked

theorem cover_4708932 : CoveredBy scale carrier boxes root_4708932 := by
  apply coveredBy_split_literal root_4708932 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.root_4708933 small_4708932_right_root coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.cover_4708933
  · exact small_4708932_right_covered
#print axioms cover_4708932

def root_4708926 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4708926_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4708926_left_fuel : Nat := 1
def small_4708926_left_count : Nat := 1
def small_4708926_left_encoded : String := "00000002"
theorem small_4708926_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4708926_left_root small_4708926_left_fuel small_4708926_left_count small_4708926_left_encoded = true := by
  decide +kernel
theorem small_4708926_left_covered : CoveredBy scale carrier boxes small_4708926_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4708926_left_root small_4708926_left_fuel small_4708926_left_count small_4708926_left_encoded small_4708926_left_checked

theorem cover_4708926 : CoveredBy scale carrier boxes root_4708926 := by
  apply coveredBy_split_literal root_4708926 small_4708926_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.root_4708932 coord2 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_4708926_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.cover_4708932
#print axioms cover_4708926

def root_4708900 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4708900_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4708900_left_fuel : Nat := 7
def small_4708900_left_count : Nat := 13
def small_4708900_left_encoded : String := "120700FA08A913091207010800000004050000F600000007135D4501000000000500010600000007000000090000000700000002"
theorem small_4708900_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4708900_left_root small_4708900_left_fuel small_4708900_left_count small_4708900_left_encoded = true := by
  decide +kernel
theorem small_4708900_left_covered : CoveredBy scale carrier boxes small_4708900_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4708900_left_root small_4708900_left_fuel small_4708900_left_count small_4708900_left_encoded small_4708900_left_checked

theorem cover_4708900 : CoveredBy scale carrier boxes root_4708900 := by
  apply coveredBy_split_literal root_4708900 small_4708900_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.root_4708926 coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_4708900_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.cover_4708926
#print axioms cover_4708900

def root_4708895 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4708895_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4708895_right_fuel : Nat := 1
def small_4708895_right_count : Nat := 1
def small_4708895_right_encoded : String := "00000001"
theorem small_4708895_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4708895_right_root small_4708895_right_fuel small_4708895_right_count small_4708895_right_encoded = true := by
  decide +kernel
theorem small_4708895_right_covered : CoveredBy scale carrier boxes small_4708895_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4708895_right_root small_4708895_right_fuel small_4708895_right_count small_4708895_right_encoded small_4708895_right_checked

theorem cover_4708895 : CoveredBy scale carrier boxes root_4708895 := by
  apply coveredBy_split_literal root_4708895 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.root_4708900 small_4708895_right_root coord1 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.cover_4708900
  · exact small_4708895_right_covered
#print axioms cover_4708895

def root_4708689 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4708689_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4708689_left_fuel : Nat := 25
def small_4708689_left_count : Nat := 97
def small_4708689_left_encoded : String := "120701020000000108A913050000000712073CFA0000000208A913091207010800000004050000F6135D810105000106135D44FD0000000700000003135D80FD0000000304548A0313867102000000010CFD9C05000000070F350CFA0000000204548A0913867108000000040C9A86FA000000070F87510500000002078000F60000000700000009000000071386AD020CFD9C05000000070F350CFA0000000204548A0913867108000000040C9A86FA0F878D0500000009000000020F87510500000002078000F6128A7D0107800106128A40FD0000000700000003128A7CFD00000003067ECE8312EA5902000000010000000912EA9502022A45890000000900000007000000010000000000000009000000070000000100000000135D45010000000005000106135D44FD0000000700000003135D80FD0000000304548A0313867102000000010CFD9C05000000070F350CFA00000002000000091386AD020CFD9C05000000070F350CFA0000000204548A0900000009000000070000000100000007"
theorem small_4708689_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4708689_left_root small_4708689_left_fuel small_4708689_left_count small_4708689_left_encoded = true := by
  decide +kernel
theorem small_4708689_left_covered : CoveredBy scale carrier boxes small_4708689_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4708689_left_root small_4708689_left_fuel small_4708689_left_count small_4708689_left_encoded small_4708689_left_checked

theorem cover_4708689 : CoveredBy scale carrier boxes root_4708689 := by
  apply coveredBy_split_literal root_4708689 small_4708689_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.root_4708895 coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_4708689_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.cover_4708895
#print axioms cover_4708689

def root_4708684 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4708684_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4708684_right_fuel : Nat := 1
def small_4708684_right_count : Nat := 1
def small_4708684_right_encoded : String := "00000004"
theorem small_4708684_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4708684_right_root small_4708684_right_fuel small_4708684_right_count small_4708684_right_encoded = true := by
  decide +kernel
theorem small_4708684_right_covered : CoveredBy scale carrier boxes small_4708684_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4708684_right_root small_4708684_right_fuel small_4708684_right_count small_4708684_right_encoded small_4708684_right_checked

theorem cover_4708684 : CoveredBy scale carrier boxes root_4708684 := by
  apply coveredBy_split_literal root_4708684 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.root_4708689 small_4708684_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.cover_4708689
  · exact small_4708684_right_covered
#print axioms cover_4708684

def root_4708676 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4708676_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4708676_left_fuel : Nat := 2
def small_4708676_left_count : Nat := 3
def small_4708676_left_encoded : String := "1151E9090000000400000007"
theorem small_4708676_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4708676_left_root small_4708676_left_fuel small_4708676_left_count small_4708676_left_encoded = true := by
  decide +kernel
theorem small_4708676_left_covered : CoveredBy scale carrier boxes small_4708676_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4708676_left_root small_4708676_left_fuel small_4708676_left_count small_4708676_left_encoded small_4708676_left_checked

theorem cover_4708676 : CoveredBy scale carrier boxes root_4708676 := by
  apply coveredBy_split_literal root_4708676 small_4708676_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.root_4708684 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_4708676_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.cover_4708684
#print axioms cover_4708676

def root_4708671 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4708671_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4708671_right_fuel : Nat := 1
def small_4708671_right_count : Nat := 1
def small_4708671_right_encoded : String := "00000003"
theorem small_4708671_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4708671_right_root small_4708671_right_fuel small_4708671_right_count small_4708671_right_encoded = true := by
  decide +kernel
theorem small_4708671_right_covered : CoveredBy scale carrier boxes small_4708671_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4708671_right_root small_4708671_right_fuel small_4708671_right_count small_4708671_right_encoded small_4708671_right_checked

theorem cover_4708671 : CoveredBy scale carrier boxes root_4708671 := by
  apply coveredBy_split_literal root_4708671 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.root_4708676 small_4708671_right_root coord3 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.cover_4708676
  · exact small_4708671_right_covered
#print axioms cover_4708671

def root_4708670 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4708670 : CoveredBy scale carrier boxes root_4708670 := by
  apply coveredBy_split_literal root_4708670 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.root_4708671 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1762.root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.cover_4708671
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1762.covered
#print axioms cover_4708670

def root_4708665 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4708665_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4708665_right_fuel : Nat := 1
def small_4708665_right_count : Nat := 1
def small_4708665_right_encoded : String := "00000002"
theorem small_4708665_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4708665_right_root small_4708665_right_fuel small_4708665_right_count small_4708665_right_encoded = true := by
  decide +kernel
theorem small_4708665_right_covered : CoveredBy scale carrier boxes small_4708665_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4708665_right_root small_4708665_right_fuel small_4708665_right_count small_4708665_right_encoded small_4708665_right_checked

theorem cover_4708665 : CoveredBy scale carrier boxes root_4708665 := by
  apply coveredBy_split_literal root_4708665 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.root_4708670 small_4708665_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.cover_4708670
  · exact small_4708665_right_covered
#print axioms cover_4708665

def root_4719650 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4719650_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4719650_right_fuel : Nat := 20
def small_4719650_right_count : Nat := 109
def small_4719650_right_encoded : String := "115224FD000000030A0001081151E9090000000408A9130312070102000000010000000612073D0208A912FD12073D06050000F6135D8101050000FA135D8105050001080000000800000005000000020000000500000000000000050000000300000005000000011152250908A91303120701020000000108A912FD12073D0608A9130912070108000000040000000512073D08050000F6135D8101050000FA135D810504548A03000000061386AD020CFD9BFD0F350D060000000600000003000000050000000100000002000000050000000000000005000000040000000312070106000000030000000512073D0208A912FD12073D0608A913091207010800000004050000F6135D8101050000FA135D81050CFD9C030F34D10200000001000000050F350D020CFD9BFD0F350D0604548A09138671080000000400000005000000050000000300000005000000010000000200000005000000000000000512073D08050000F6135D8101050000FA135D81050CFD9C030F34D1020000000100000005000000050000000200000005000000000000000500000004000000031207010600000003000000050000000100000004"
theorem small_4719650_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4719650_right_root small_4719650_right_fuel small_4719650_right_count small_4719650_right_encoded = true := by
  decide +kernel
theorem small_4719650_right_covered : CoveredBy scale carrier boxes small_4719650_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4719650_right_root small_4719650_right_fuel small_4719650_right_count small_4719650_right_encoded small_4719650_right_checked

theorem cover_4719650 : CoveredBy scale carrier boxes root_4719650 := by
  apply coveredBy_split_literal root_4719650 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1763.root small_4719650_right_root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1763.covered
  · exact small_4719650_right_covered
#print axioms cover_4719650

def root_4719644 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4719644_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4719644_left_fuel : Nat := 1
def small_4719644_left_count : Nat := 1
def small_4719644_left_encoded : String := "00000002"
theorem small_4719644_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4719644_left_root small_4719644_left_fuel small_4719644_left_count small_4719644_left_encoded = true := by
  decide +kernel
theorem small_4719644_left_covered : CoveredBy scale carrier boxes small_4719644_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4719644_left_root small_4719644_left_fuel small_4719644_left_count small_4719644_left_encoded small_4719644_left_checked

theorem cover_4719644 : CoveredBy scale carrier boxes root_4719644 := by
  apply coveredBy_split_literal root_4719644 small_4719644_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.root_4719650 coord2 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_4719644_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.cover_4719650
#print axioms cover_4719644

def root_4708664 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4708664 : CoveredBy scale carrier boxes root_4708664 := by
  apply coveredBy_split_literal root_4708664 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.root_4708665 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.root_4719644 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.cover_4708665
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.cover_4719644
#print axioms cover_4708664

def root_4708659 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4708659_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4708659_right_fuel : Nat := 1
def small_4708659_right_count : Nat := 1
def small_4708659_right_encoded : String := "00000001"
theorem small_4708659_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4708659_right_root small_4708659_right_fuel small_4708659_right_count small_4708659_right_encoded = true := by
  decide +kernel
theorem small_4708659_right_covered : CoveredBy scale carrier boxes small_4708659_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4708659_right_root small_4708659_right_fuel small_4708659_right_count small_4708659_right_encoded small_4708659_right_checked

theorem cover_4708659 : CoveredBy scale carrier boxes root_4708659 := by
  apply coveredBy_split_literal root_4708659 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.root_4708664 small_4708659_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.cover_4708664
  · exact small_4708659_right_covered
#print axioms cover_4708659

def root_4704671 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4704671 : CoveredBy scale carrier boxes root_4704671 := by
  apply coveredBy_split_literal root_4704671 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.root_4704672 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.root_4708659 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.cover_4704672
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.cover_4708659
#print axioms cover_4704671

def root_4704665 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4704665_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4704665_left_fuel : Nat := 1
def small_4704665_left_count : Nat := 1
def small_4704665_left_encoded : String := "00000000"
theorem small_4704665_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4704665_left_root small_4704665_left_fuel small_4704665_left_count small_4704665_left_encoded = true := by
  decide +kernel
theorem small_4704665_left_covered : CoveredBy scale carrier boxes small_4704665_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4704665_left_root small_4704665_left_fuel small_4704665_left_count small_4704665_left_encoded small_4704665_left_checked

theorem cover_4704665 : CoveredBy scale carrier boxes root_4704665 := by
  apply coveredBy_split_literal root_4704665 small_4704665_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.root_4704671 coord0 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_4704665_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.cover_4704671
#print axioms cover_4704665

def root_4666987 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4666987 : CoveredBy scale carrier boxes root_4666987 := by
  apply coveredBy_split_literal root_4666987 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.root_4666988 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.root_4704665 coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.cover_4666988
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.cover_4704665
#print axioms cover_4666987

def root_4636553 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4636553 : CoveredBy scale carrier boxes root_4636553 := by
  apply coveredBy_split_literal root_4636553 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0117.root_4636554 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.root_4666987 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0117.cover_4636554
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.cover_4666987
#print axioms cover_4636553

def root_4631421 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4631421 : CoveredBy scale carrier boxes root_4631421 := by
  apply coveredBy_split_literal root_4631421 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.root_4631422 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.root_4636553 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.cover_4631422
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.cover_4636553
#print axioms cover_4631421

def root_4725025 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4725025 : CoveredBy scale carrier boxes root_4725025 := by
  apply coveredBy_split_literal root_4725025 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1765.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1766.root coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1765.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1766.covered
#print axioms cover_4725025

def root_4722833 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4722833 : CoveredBy scale carrier boxes root_4722833 := by
  apply coveredBy_split_literal root_4722833 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1764.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.root_4725025 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1764.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.cover_4725025
#print axioms cover_4722833

def root_4722832 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4722832 : CoveredBy scale carrier boxes root_4722832 := by
  apply coveredBy_split_literal root_4722832 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.root_4722833 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1767.root coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.cover_4722833
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1767.covered
#print axioms cover_4722832

def root_4631420 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4631420 : CoveredBy scale carrier boxes root_4631420 := by
  apply coveredBy_split_literal root_4631420 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.root_4631421 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.root_4722832 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.cover_4631421
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.cover_4722832
#print axioms cover_4631420

def root_4493202 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4493202 : CoveredBy scale carrier boxes root_4493202 := by
  apply coveredBy_split_literal root_4493202 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.root_4493203 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.root_4631420 coord3 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0116.cover_4493203
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.cover_4631420
#print axioms cover_4493202

def root_4456818 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4456818 : CoveredBy scale carrier boxes root_4456818 := by
  apply coveredBy_split_literal root_4456818 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0112.root_4456819 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.root_4493202 coord2 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0112.cover_4456819
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.cover_4493202
#print axioms cover_4456818

def root_4732953 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4732953 : CoveredBy scale carrier boxes root_4732953 := by
  apply coveredBy_split_literal root_4732953 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1769.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1770.root coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1769.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1770.covered
#print axioms cover_4732953

def root_4732952 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4732952 : CoveredBy scale carrier boxes root_4732952 := by
  apply coveredBy_split_literal root_4732952 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.root_4732953 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1771.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.cover_4732953
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1771.covered
#print axioms cover_4732952

def root_4731074 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4731074 : CoveredBy scale carrier boxes root_4731074 := by
  apply coveredBy_split_literal root_4731074 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1768.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.root_4732952 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1768.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.cover_4732952
#print axioms cover_4731074

def root_4741262 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4741262 : CoveredBy scale carrier boxes root_4741262 := by
  apply coveredBy_split_literal root_4741262 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1773.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1774.root coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1773.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1774.covered
#print axioms cover_4741262

def root_4739728 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4739728 : CoveredBy scale carrier boxes root_4739728 := by
  apply coveredBy_split_literal root_4739728 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1772.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.root_4741262 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1772.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.cover_4741262
#print axioms cover_4739728

def root_4745387 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4745387_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4745387_left_fuel : Nat := 24
def small_4745387_left_count : Nat := 243
def small_4745387_left_encoded : String := "1151E8FB0A0000FC115225070A0001081151E8FF08A91301120700F608A91303120701020000000108A91307000000060000000500000005000000000000000600000004115224FF0000000408A91301120700F608A91303120701020000000108A91307120700FC08A912FF00000006000000050000000312073CFC0000000308A912FF12073D080500010400000005135D80FB0000000200000005000000040000000512073D0208A91307120700FC000000050000000300000005000000010000000012073CF60000000008A91303120701020000000108A91307120700FC000000060000000312073CFC0000000308A912FF12073D080000000600000004120701080000000405000104135D44FB0CFD9C010F34D0F600000005000000000F350CF60000000004548A031386710200000001000000060000000600000002135D80FB000000020CFD9C010F34D0F604548A03000000050000000A000000000F350CF60000000004548A0313867102000000010CFD9C07000000060F350CFC00000003000000060000000612073D0208A913070000000612073CFC0000000308A912FF0000000612070108000000040000000600000001000000031151E907000000030A0001081151E8FF08A91301120700F600000005000000000000000600000004115224FF0000000408A91301120700F608A91303120701020000000108A912FF0000000A12070108000000040000000A0000000A0000000012073CF60000000008A91303120701020000000108A912FF12073D0805000104135D44FB050000FC135D81070CFD9C01000000060F350CF6000000000000000600000003135D4507000000030000000A00000002135D80FB00000002050000FC135D81070CFD9C010F34D0F60000000A000000000F350CF6000000000000000600000003135D4507000000030CFD9C010F34D0F60000000A000000000F350CF60000000004548A0313867102000000010CFD9BFF000000060F34D108000000040000000A0000000600000004120701080000000405000104135D44FB0000000A00000002135D80FB00000002050000FC135D81070CFD9C010000000A0F350CF60000000004548A031386710200000001045489FF1386AD080C9A86F60000000A000000060000000413867108000000040C9A86F6000000090F875101000000000000000A0000000A00000003135D4507000000030CFD9C010000000A0F350CF60000000004548A031386710200000001045489FF0000000A000000090000000A12073D0208A912FF12073D080500010400000006000000060000000412070108000000040000000A0000000100000002"
theorem small_4745387_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4745387_left_root small_4745387_left_fuel small_4745387_left_count small_4745387_left_encoded = true := by
  decide +kernel
theorem small_4745387_left_covered : CoveredBy scale carrier boxes small_4745387_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4745387_left_root small_4745387_left_fuel small_4745387_left_count small_4745387_left_encoded small_4745387_left_checked

theorem cover_4745387 : CoveredBy scale carrier boxes root_4745387 := by
  apply coveredBy_split_literal root_4745387 small_4745387_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1775.root coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_4745387_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1775.covered
#print axioms cover_4745387

def root_4745382 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4745382_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4745382_right_fuel : Nat := 1
def small_4745382_right_count : Nat := 1
def small_4745382_right_encoded : String := "00000001"
theorem small_4745382_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4745382_right_root small_4745382_right_fuel small_4745382_right_count small_4745382_right_encoded = true := by
  decide +kernel
theorem small_4745382_right_covered : CoveredBy scale carrier boxes small_4745382_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4745382_right_root small_4745382_right_fuel small_4745382_right_count small_4745382_right_encoded small_4745382_right_checked

theorem cover_4745382 : CoveredBy scale carrier boxes root_4745382 := by
  apply coveredBy_split_literal root_4745382 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.root_4745387 small_4745382_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.cover_4745387
  · exact small_4745382_right_covered
#print axioms cover_4745382

def root_4744996 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4744996_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4744996_left_fuel : Nat := 21
def small_4744996_left_count : Nat := 177
def small_4744996_left_encoded : String := "1151E903000000010A0001041151E8FB0A0000FC115225070A00010800000005115224FF0000000400000006000000031151E907000000030A0001081151E8FF00000005000000040000000A00000002115224FB000000020A0000FC115225070A0001081151E8FF08A91301120700F6000000050000000012073CF60000000008A912FB12073D040000000500000002120701040000000208A91307120700FC00000005000000030000000800000004115224FF0000000408A91301120700F608A912FB12073D0408A91307120700FC00000005000000030000000A00000002120701040000000208A91307120700FC08A912FF000000051207010800000004000000060000000312073CFC0000000308A912FF12073D080500010200000006135D810304548A01138670F6045489FB000000050000000A0000000000000006000000010000000412070108000000040000000A0000000012073CF60000000008A912FB12073D0408A913070000000612073CFC000000030000000600000002120701040000000208A91307120700FC08A912FF12073D0805000102135D4503000000010CFD9C010000000500000006135D81030CFD9C010F34D0F600000005000000000000000600000001000000041207010800000004000000060000000312073CFC0000000308A912FF00000006120701080000000400000006000000031151E907000000030A0001081151E8FF08A91301120700F608A912FB00000005120701040000000200000008000000000000000600000004115224FF0000000408A91301120700F608A912FB0000000A120701040000000208A912FF12073D0805000102000000060000000A000000041207010800000004000000070000000012073CF60000000008A912FB12073D0408A912FF0000000612070108000000040000000600000002120701040000000208A912FF00000006120701080000000400000006"
theorem small_4744996_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4744996_left_root small_4744996_left_fuel small_4744996_left_count small_4744996_left_encoded = true := by
  decide +kernel
theorem small_4744996_left_covered : CoveredBy scale carrier boxes small_4744996_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4744996_left_root small_4744996_left_fuel small_4744996_left_count small_4744996_left_encoded small_4744996_left_checked

theorem cover_4744996 : CoveredBy scale carrier boxes root_4744996 := by
  apply coveredBy_split_literal root_4744996 small_4744996_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.root_4745382 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_4744996_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.cover_4745382
#print axioms cover_4744996

def root_4744991 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4744991_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4744991_right_fuel : Nat := 1
def small_4744991_right_count : Nat := 1
def small_4744991_right_encoded : String := "00000000"
theorem small_4744991_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4744991_right_root small_4744991_right_fuel small_4744991_right_count small_4744991_right_encoded = true := by
  decide +kernel
theorem small_4744991_right_covered : CoveredBy scale carrier boxes small_4744991_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4744991_right_root small_4744991_right_fuel small_4744991_right_count small_4744991_right_encoded small_4744991_right_checked

theorem cover_4744991 : CoveredBy scale carrier boxes root_4744991 := by
  apply coveredBy_split_literal root_4744991 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.root_4744996 small_4744991_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.cover_4744996
  · exact small_4744991_right_covered
#print axioms cover_4744991

def root_4744990 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4744990_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4744990_right_fuel : Nat := 26
def small_4744990_right_count : Nat := 439
def small_4744990_right_encoded : String := "1151E901000000000A0001021151E903000000010A0001041151E8FB0A0000FC115225070A0001081151E8FF0000000500000004115224FF0000000408A91307120700FC08A912FF00000005000000060000000300000006000000031151E907000000030A00010800000006115224FF000000040000000600000002115224FB000000020A0000FC115225070A0001081151E8FF08A912FB12073D0408A91307120700FC000000050000000312073CFC00000003050000F600000006135D45010000000005000102000000060000000600000002120701040000000208A91307120700FC00000008000000030000000800000004115224FF0000000408A912FB12073D0408A91307120700FC08A912FF12073D08050000F600000006000000090000000400000006000000030000000600000002120701040000000208A91307120700FC08A912FF12073D08050000F6135D810105000102135D450300000001000000090000000900000000135D45010000000000000009000000041207010800000004000000060000000312073CFC0000000308A912FF12073D08050000F600000006000000070000000400000006000000031151E907000000030A0001081151E8FF000000060000000400000006115225030A0001041151E8FB0A0000FC115225070A0001081151E8FF08A913030000000612073D0208A91307120700FC0000000500000003000000060000000100000004115224FF0000000408A91303120701020000000108A913070000000612073CFC0000000308A912FF000000060000000612073D0208A91307120700FC00000006000000030000000600000001000000031151E907000000030A0001081151E8FF0000000600000004115224FF0000000408A91303120701020000000108A912FF12073D08050000F6135D81010500010400000006000000060000000000000006000000041207010800000004050000F6135D810105000104135D44FB050000FC135D810704548A031386710200000001000000060000000600000003135D45070000000304548A0313867102000000010000000A0000000A00000002135D80FB00000002050000FC135D810704548A031386710200000001000000060000000600000003135D45070000000304548A031386710200000001045489FF1386AD08078000F6128A7D0100000006000000000000000500000004000000051386AD02000000060000000100000000135D45010000000005000104135D44FB050000FC00000006135D45070000000304548A031386710200000001045489FF00000006000000050000000600000002135D80FB00000002050000FC000000060000000512073D0208A912FF000000061207010800000004050000F6135D810105000104000000060000000600000000000000060000000100000002115224FB000000020A0000FC115225070A0001081151E8FF08A91303120701020000000108A912FB0000000612070104000000020000000812073D0208A912FB12073D0408A91307120700FC050000F600000005000000090000000312073CFC00000003050000F600000006135D4501000000000000000600000002120701040000000208A91307120700FC050000F600000008135D4501000000000000000800000003000000080000000100000004115224FF0000000408A91303120701020000000108A912FB12073D0408A913070000000612073CFC0000000308A912FF000000061207010800000004050000F6135D810104548A0313867102000000010CFD9BFB000000060000000600000006000000000000000600000002120701040000000208A913070000000612073CFC0000000308A912FF0000000612070108000000040000000612073D0208A912FB12073D0408A913070000000612073CFC0000000308A912FF0000000612070108000000040000000600000002120701040000000208A91307120700FC08A912FF12073D08050000F600000006135D4501000000000CFD9C030000000600000009000000041207010800000004000000060000000312073CFC0000000308A912FF0000000612070108000000040000000600000001000000031151E907000000030A0001081151E8FF0000000600000004115224FF0000000408A91303120701020000000108A912FB12073D0408A912FF000000061207010800000004050000F6135D8101050000FC135D810704548A0313867102000000010CFD9BFB0F350D04000000060000000200000005000000060000000300000005000000000000000500000002120701040000000208A912FF000000060000000512073D0208A912FB12073D0408A912FF0000000612070108000000040000000600000002120701040000000208A912FF000000061207010800000004000000050000000100000001"
theorem small_4744990_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4744990_right_root small_4744990_right_fuel small_4744990_right_count small_4744990_right_encoded = true := by
  decide +kernel
theorem small_4744990_right_covered : CoveredBy scale carrier boxes small_4744990_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4744990_right_root small_4744990_right_fuel small_4744990_right_count small_4744990_right_encoded small_4744990_right_checked

theorem cover_4744990 : CoveredBy scale carrier boxes root_4744990 := by
  apply coveredBy_split_literal root_4744990 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.root_4744991 small_4744990_right_root coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.cover_4744991
  · exact small_4744990_right_covered
#print axioms cover_4744990

def root_4750116 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4750116_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4750116_right_fuel : Nat := 18
def small_4750116_right_count : Nat := 191
def small_4750116_right_encoded : String := "1151E907000000030A0001081151E9090000000408A91301120700F608A912FB12073D0405000102135D4503000000010000000A0000000900000002120701040000000205000102135D450300000001050000FC135D810705000108000000090000000800000003135D45070000000300000005135D8103050000FC135D810705000108000000090000000800000003135D45070000000300000009000000010000000012073CF60000000008A912FB12073D0405000102135D450300000001050000FC135D810705000108135D4509000000040CFD9C010000000900000005135D81090CFD9C010000000A000000050000000400000003135D4507000000030500010800000009135D81090CFD9C010F34D0F600000009000000000000000500000004135D8103050000FC135D810705000108135D4509000000040CFD9C010000000900000005135D81090CFD9C010F34D0F60CFD9BFB000000090000000500000000000000050000000400000003135D4507000000030500010800000009135D81090CFD9C010000000900000005000000040000000100000002000000051152250908A91301120700F608A912FB0000000A120701040000000208A9130912070108000000040000000712073D08050001020000000A135D8103050000FC0000000A135D45070000000304548A010000000A0000000500000001000000040000000012073CF60000000008A912FB12073D0408A9130912070108000000040000000A12073D0805000102135D450300000001050000FC0000000A135D4507000000030000000A135D8103050000FC135D81070CFD9C010000000A0F350CF6000000000CFD9BFB0000000A0F34D104000000020000000500000003135D4507000000030CFD9C010000000A0F350CF6000000000CFD9BFB0000000A00000005000000010000000400000002120701040000000208A9130912070108000000040500010200000006135D8103050000FC00000007000000050000000112073D0805000102135D45030000000100000005000000050000000400000004"
theorem small_4750116_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4750116_right_root small_4750116_right_fuel small_4750116_right_count small_4750116_right_encoded = true := by
  decide +kernel
theorem small_4750116_right_covered : CoveredBy scale carrier boxes small_4750116_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4750116_right_root small_4750116_right_fuel small_4750116_right_count small_4750116_right_encoded small_4750116_right_checked

theorem cover_4750116 : CoveredBy scale carrier boxes root_4750116 := by
  apply coveredBy_split_literal root_4750116 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1776.root small_4750116_right_root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1776.covered
  · exact small_4750116_right_covered
#print axioms cover_4750116

def root_4750110 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4750110_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4750110_left_fuel : Nat := 1
def small_4750110_left_count : Nat := 1
def small_4750110_left_encoded : String := "00000002"
theorem small_4750110_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4750110_left_root small_4750110_left_fuel small_4750110_left_count small_4750110_left_encoded = true := by
  decide +kernel
theorem small_4750110_left_covered : CoveredBy scale carrier boxes small_4750110_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4750110_left_root small_4750110_left_fuel small_4750110_left_count small_4750110_left_encoded small_4750110_left_checked

theorem cover_4750110 : CoveredBy scale carrier boxes root_4750110 := by
  apply coveredBy_split_literal root_4750110 small_4750110_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.root_4750116 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_4750110_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.cover_4750116
#print axioms cover_4750110

def root_4749966 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4749966_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4749966_left_fuel : Nat := 17
def small_4749966_left_count : Nat := 71
def small_4749966_left_encoded : String := "1151E8FB0A0000FC115225070A0001081151E9090000000408A91301120700F608A91307000000050000000A0000000012073CF60000000008A913070000000712073CFC0000000305000102135D450300000001050001040000000A135D80FB0000000205000108135D4509000000040CFD9C010000000A000000070000000A135D81030500010400000007135D80FB000000020500010800000007135D81090CFD9C01000000080000000700000004000000011152250908A913010000000A12073CF60000000008A91307120700FC00000006000000030000000A00000004000000031151E907000000030A0001081151E9090000000408A913010000000912073CF6000000000500010200000009000000090000000A00000002"
theorem small_4749966_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4749966_left_root small_4749966_left_fuel small_4749966_left_count small_4749966_left_encoded = true := by
  decide +kernel
theorem small_4749966_left_covered : CoveredBy scale carrier boxes small_4749966_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4749966_left_root small_4749966_left_fuel small_4749966_left_count small_4749966_left_encoded small_4749966_left_checked

theorem cover_4749966 : CoveredBy scale carrier boxes root_4749966 := by
  apply coveredBy_split_literal root_4749966 small_4749966_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.root_4750110 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_4749966_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.cover_4750110
#print axioms cover_4749966

def root_4749960 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4749960_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4749960_left_fuel : Nat := 1
def small_4749960_left_count : Nat := 1
def small_4749960_left_encoded : String := "00000001"
theorem small_4749960_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4749960_left_root small_4749960_left_fuel small_4749960_left_count small_4749960_left_encoded = true := by
  decide +kernel
theorem small_4749960_left_covered : CoveredBy scale carrier boxes small_4749960_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4749960_left_root small_4749960_left_fuel small_4749960_left_count small_4749960_left_encoded small_4749960_left_checked

theorem cover_4749960 : CoveredBy scale carrier boxes root_4749960 := by
  apply coveredBy_split_literal root_4749960 small_4749960_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.root_4749966 coord1 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_4749960_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.cover_4749966
#print axioms cover_4749960

def root_4762963 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4762963 : CoveredBy scale carrier boxes root_4762963 := by
  apply coveredBy_split_literal root_4762963 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1781.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1782.root coord0 true (5448672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1781.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1782.covered
#print axioms cover_4762963

def root_4762957 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4762957_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(8388608), (12755968)⟩, ⟨(7264896), (10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4762957_left_fuel : Nat := 1
def small_4762957_left_count : Nat := 1
def small_4762957_left_encoded : String := "00000004"
theorem small_4762957_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4762957_left_root small_4762957_left_fuel small_4762957_left_count small_4762957_left_encoded = true := by
  decide +kernel
theorem small_4762957_left_covered : CoveredBy scale carrier boxes small_4762957_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4762957_left_root small_4762957_left_fuel small_4762957_left_count small_4762957_left_encoded small_4762957_left_checked

theorem cover_4762957 : CoveredBy scale carrier boxes root_4762957 := by
  apply coveredBy_split_literal root_4762957 small_4762957_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.root_4762963 coord4 false (12755968)
  · decide +kernel
  · decide +kernel
  · exact small_4762957_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.cover_4762963
#print axioms cover_4762957

def root_4762956 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4762956 : CoveredBy scale carrier boxes root_4762956 := by
  apply coveredBy_split_literal root_4762956 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.root_4762957 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1783.root coord4 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.cover_4762957
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1783.covered
#print axioms cover_4762956

def root_4762950 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4762950_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-16379648)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4762950_left_fuel : Nat := 1
def small_4762950_left_count : Nat := 1
def small_4762950_left_encoded : String := "00000003"
theorem small_4762950_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4762950_left_root small_4762950_left_fuel small_4762950_left_count small_4762950_left_encoded = true := by
  decide +kernel
theorem small_4762950_left_covered : CoveredBy scale carrier boxes small_4762950_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4762950_left_root small_4762950_left_fuel small_4762950_left_count small_4762950_left_encoded small_4762950_left_checked

theorem cover_4762950 : CoveredBy scale carrier boxes root_4762950 := by
  apply coveredBy_split_literal root_4762950 small_4762950_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.root_4762956 coord3 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_4762950_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.cover_4762956
#print axioms cover_4762950

def root_4762368 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4762368_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4762368_left_fuel : Nat := 26
def small_4762368_left_count : Nat := 277
def small_4762368_left_encoded : String := "138670FC0CFD9C090F34D10800000004067ECE8112EA58F60AD3578310D1010200000001022A457B13E20104022A45870000000513E200FC000000030AD357890000000510D13D0800000005000000040000000213E1C50400000002022A4587000000080000000810D13D02022A457B13E20104022A45870000000513E200FC000000030AD357890000000510D13D080569AC4100000005134110F6000000000BE879C3000000051011AD020000000500000001000000040000000213E1C50400000002022A458713E1C4FC0AD357890000000510D13D080569AC4100000005134110F6000000000BE879C3000000051011AD020000000500000001000000040000000313E200FC000000030AD3578910D10108000000040000000810D13D080569AC411340D4F60BE879C310117102000000010115233B00000005000000081011AD020115233B0000000513F8590400000002033F67C700000005000000080000000100000000134110F6000000000BE879C310117102000000010115233B13F89504033F67C7000000050000000800000002000000081011AD020115233B13F89504033F67C70000000513BC30FC000000030BE879C9000000051011AD0805F43D610000000500000007000000040000000213F8590400000002033F67C713BBF4FC0BE879C9000000051011AD0800000005000000040000000313BC30FC000000030BE879C9000000061011AD0800000008000000040000000100000004000000010000000012EA94F6000000000AD3578310D1010200000001022A457B13E20104022A45870000000713E200FC000000030AD3578910D101080000000400000006000000070000000213E1C50400000002022A45870000000A13E200FC000000030AD357890000000810D13D080000000A0000000410D13D02022A457B13E20104022A45870000000613E200FC000000030AD357890000000610D13D080793F0C1128220F6000000070000000000000007000000040000000213E1C50400000002022A45870000000613E200FC000000030AD357890000000610D13D080793F0C1128220F60BE879C310117102000000010115233B13F89504033F67C70000000613BC30FC000000030BE879C9000000060000000700000002000000081011AD020115233B0000000600000006000000010000000012825CF6000000000BE879C3000000060000000600000004000000010F350D080C9A87080F87510900000004000000070F878D09067ECE8112EA58F60AD3578310D10102000000010000000710D13D02022A457B0000000713E1C50400000002022A45870000000713E200FC000000030DE7CA080E5FD90900000004000000070E6015090569AC411340D4F60BE879C31011710200000001000000071011AD020115233B0000000513F8590400000002033F67C70000000513BC30FC000000030DAED889000000050E966108000000050000000400000001000000000000000700000004000000010000000000000007000000040000000400000003"
theorem small_4762368_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4762368_left_root small_4762368_left_fuel small_4762368_left_count small_4762368_left_encoded = true := by
  decide +kernel
theorem small_4762368_left_covered : CoveredBy scale carrier boxes small_4762368_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4762368_left_root small_4762368_left_fuel small_4762368_left_count small_4762368_left_encoded small_4762368_left_checked

theorem cover_4762368 : CoveredBy scale carrier boxes root_4762368 := by
  apply coveredBy_split_literal root_4762368 small_4762368_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.root_4762950 coord3 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact small_4762368_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.cover_4762950
#print axioms cover_4762368

def root_4762362 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4762362_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4762362_left_fuel : Nat := 1
def small_4762362_left_count : Nat := 1
def small_4762362_left_encoded : String := "00000002"
theorem small_4762362_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4762362_left_root small_4762362_left_fuel small_4762362_left_count small_4762362_left_encoded = true := by
  decide +kernel
theorem small_4762362_left_covered : CoveredBy scale carrier boxes small_4762362_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4762362_left_root small_4762362_left_fuel small_4762362_left_count small_4762362_left_encoded small_4762362_left_checked

theorem cover_4762362 : CoveredBy scale carrier boxes root_4762362 := by
  apply coveredBy_split_literal root_4762362 small_4762362_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.root_4762368 coord2 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_4762362_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.cover_4762368
#print axioms cover_4762362

def root_4761248 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4761248 : CoveredBy scale carrier boxes root_4761248 := by
  apply coveredBy_split_literal root_4761248 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1780.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.root_4762362 coord2 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1780.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.cover_4762362
#print axioms cover_4761248

def root_4761242 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4761242_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(8388608), (12755968)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4761242_left_fuel : Nat := 1
def small_4761242_left_count : Nat := 1
def small_4761242_left_encoded : String := "00000001"
theorem small_4761242_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4761242_left_root small_4761242_left_fuel small_4761242_left_count small_4761242_left_encoded = true := by
  decide +kernel
theorem small_4761242_left_covered : CoveredBy scale carrier boxes small_4761242_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4761242_left_root small_4761242_left_fuel small_4761242_left_count small_4761242_left_encoded small_4761242_left_checked

theorem cover_4761242 : CoveredBy scale carrier boxes root_4761242 := by
  apply coveredBy_split_literal root_4761242 small_4761242_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.root_4761248 coord1 false (12755968)
  · decide +kernel
  · decide +kernel
  · exact small_4761242_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.cover_4761248
#print axioms cover_4761242

def root_4777291 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15867392)⟩, ⟨(3632448), (5448672)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16678144), (16777216)⟩, ⟨(-1816224), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4777291 : CoveredBy scale carrier boxes root_4777291 := by
  apply coveredBy_split_literal root_4777291 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1786.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1787.root coord3 true (5448672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1786.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1787.covered
#print axioms cover_4777291

def root_4777285 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15867392)⟩, ⟨(3632448), (5448672)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-1816224), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4777285_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15867392)⟩, ⟨(3632448), (5448672)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16378880), (16678144)⟩, ⟨(-1816224), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4777285_left_fuel : Nat := 1
def small_4777285_left_count : Nat := 1
def small_4777285_left_encoded : String := "00000002"
theorem small_4777285_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4777285_left_root small_4777285_left_fuel small_4777285_left_count small_4777285_left_encoded = true := by
  decide +kernel
theorem small_4777285_left_covered : CoveredBy scale carrier boxes small_4777285_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4777285_left_root small_4777285_left_fuel small_4777285_left_count small_4777285_left_encoded small_4777285_left_checked

theorem cover_4777285 : CoveredBy scale carrier boxes root_4777285 := by
  apply coveredBy_split_literal root_4777285 small_4777285_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.root_4777291 coord2 false (16678144)
  · decide +kernel
  · decide +kernel
  · exact small_4777285_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.cover_4777291
#print axioms cover_4777285

def root_4776651 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15867392)⟩, ⟨(3632448), (5448672)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4776651_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15867392)⟩, ⟨(3632448), (5448672)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (-1816224)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4776651_left_fuel : Nat := 26
def small_4776651_left_count : Nat := 297
def small_4776651_left_encoded : String := "13E20104067ECE8712EA58FC0DE7CA020E5FD903000000010DE7CA080E5FD909000000040569AC411340D4F6033F67BB0000000813BBF504000000020569AC47000000080000000800000000134110F600000000033F67BB0000000713BBF504000000020569AC4700000007000000080E6015090569AC410000000A134110F600000000033F67BB0000000A13BBF504000000020569AC471340D4FC0DAED8890E962508000000040000000A0E9661080D412882000000080000000700000004000000030000000A000000040E6015030DE7CA080E5FD909000000040569AC411340D4F6033F67BB0000000713BBF504000000020569AC4700000007134110FC000000030DAED8830E96250200000001000000070E9661020D41288800000007000000080000000100000000000000070E6015090569AC411340D4F6033F67BB13BC31040569AC47000000050000000A0000000213BBF504000000020569AC471340D4FC0DAED883000000050E966102000000050000000100000003134110FC000000030DAED8830E962502000000010DAED8890E962508000000040000000A0E96610804DF1B210000000500000007000000040000000A00000000134110F600000000033F67BB13BC31040569AC4700000007134110FC000000030DAED8830E96250200000001000000070000000A0000000213BBF504000000020569AC471340D4FC0DAED8830E96250200000001000000070E9661020DAED8890E9625080000000405F43D610000000500000007000000070000000100000003134110FC000000030DAED8830E962502000000010DAED8890E9625080000000405F43D611317BCF602B4D69B0000000A13D0D1040000000205F43D671317BCFC00000007000000030000000A000000001317F8F60000000002B4D69B0000000713D0D1040000000205F43D67000000071317F8FC000000030D563A430EE7510200000001000000070000000A0E96610800000007000000040E9661020DAED8890E962508000000040000000A0E96610805F43D610000000A00000007000000040000000100000004000000010000000312EA94FC000000030DE7CA020E5FD903000000010DE7CA080E5FD909000000040569AC4100000008134110F600000000000000080000000A0E6015030DE7CA080E5FD909000000040569AC411340D4F6033F67BB13BC3104000000090000000213BBF504000000020793F0C7128220FC0DAED883000000090E9661020000000800000001000000030000000900000000134110F600000000033F67BB13BC31040793F0C700000007000000090000000213BBF504000000020793F0C7128220FC0DAED8830E96250200000001000000070E966102000000080000000100000003000000090E6015090569AC411340D4F60000000A00000000134110F600000000033F67BB13BC31040000000A0000000213BBF504000000020793F0C7128220FC0DAED8830E962502000000010DAED8890E962508000000040000000A0E96610805F43D61000000091317F8F60000000002B4D69B0000000700000009000000040E9661020000000A000000010000000312825CFC000000030DAED8830E96250200000001000000090000000A000000040000000100000002"
theorem small_4776651_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4776651_left_root small_4776651_left_fuel small_4776651_left_count small_4776651_left_encoded = true := by
  decide +kernel
theorem small_4776651_left_covered : CoveredBy scale carrier boxes small_4776651_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4776651_left_root small_4776651_left_fuel small_4776651_left_count small_4776651_left_encoded small_4776651_left_checked

theorem cover_4776651 : CoveredBy scale carrier boxes root_4776651 := by
  apply coveredBy_split_literal root_4776651 small_4776651_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.root_4777285 coord2 true (-1816224)
  · decide +kernel
  · decide +kernel
  · exact small_4776651_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.cover_4777285
#print axioms cover_4776651

def root_4776646 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (5448672)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4776646_right_root : ZRayBox := fun j => (#[⟨⟨(-15867392), (-15122432)⟩, ⟨(3632448), (5448672)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4776646_right_fuel : Nat := 1
def small_4776646_right_count : Nat := 1
def small_4776646_right_encoded : String := "00000000"
theorem small_4776646_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4776646_right_root small_4776646_right_fuel small_4776646_right_count small_4776646_right_encoded = true := by
  decide +kernel
theorem small_4776646_right_covered : CoveredBy scale carrier boxes small_4776646_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4776646_right_root small_4776646_right_fuel small_4776646_right_count small_4776646_right_encoded small_4776646_right_checked

theorem cover_4776646 : CoveredBy scale carrier boxes root_4776646 := by
  apply coveredBy_split_literal root_4776646 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.root_4776651 small_4776646_right_root coord0 false (-15867392)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119.cover_4776651
  · exact small_4776646_right_covered
#print axioms cover_4776646

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0119
