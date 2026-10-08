import TaoBundleAssembly0349
import TaoBundleChunkBatch0461
import TaoBundleChunkBatch0462
import TaoBundleChunkBatch0463
import TaoBundleChunkBatch0464
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0350
def root_4922615 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4922615_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4922615_left_fuel : Nat := 20
def small_4922615_left_count : Nat := 227
def small_4922615_left_encoded : String := "1151E905000000020A0001061151E8FD0A0000FE115224FF0000000408A91303120701020000000108A912FF00000009120700FE000000090000000412073D0208A912FF12073CFE00000004050000F6135D81010500010400000005135D81050500010600000005135D80FD0000000300000009000000020000000000000009120700FE050000F6135D81010500010400000008135D810505000106135D44FD00000005000000030000000800000002000000000000000800000004000000011151E8FF08A9130312070102000000010000000912073D02050000F6135D810105000104135D45050000000200000009135D810505000106135D44FD050000FE00000005135D44FF000000060000000400000003135D80FD00000003050000FE00000009135D44FF0CFD9C030000000900000006000000040000000200000000135D4501000000000500010400000006135D81050500010600000006135D80FD00000003050000FE00000006135D44FF000000060000000400000002000000010000000400000003115224FD000000030A0000FE115224FF0000000408A91303120701020000000108A912FD12073D0608A912FF12073CFE0000000400000009120700FE050000F6135D8101050001040000000A135D810504548A030000000A000000090000000200000000135D450100000000000000090000000400000003120701060000000308A912FF00000009120700FE050000F60000000A0000000A0000000412073D0208A912FD12073D0608A912FF12073CFE00000004050000F6135D810105000104135D4505000000020CFD9C030000000900000009135D81050CFD9C030F34D10200000001000000090F350D020CFD9BFD0F350D06000000090000000300000009000000010000000200000000135D45010000000000000009120700FE050000F6135D81010000000800000000000000080000000400000003120701060000000308A912FF12073CFE00000004050000F6135D8101000000090000000000000009120700FE050000F6135D81010500010400000008135D81050CFD9C030F34D1020000000100000008000000090000000200000000135D4501000000000000000900000004000000011151E8FF08A9130312070102000000010000000912073D0208A912FD12073D06050000F6135D81010500010400000009135D8105050000FE000000090000000900000002000000000000000900000003000000090000000100000004"
theorem small_4922615_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4922615_left_root small_4922615_left_fuel small_4922615_left_count small_4922615_left_encoded = true := by
  decide +kernel
theorem small_4922615_left_covered : CoveredBy scale carrier boxes small_4922615_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4922615_left_root small_4922615_left_fuel small_4922615_left_count small_4922615_left_encoded small_4922615_left_checked

theorem cover_4922615 : CoveredBy scale carrier boxes root_4922615 := by
  apply coveredBy_split_literal root_4922615 small_4922615_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0349.root_4923103 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_4922615_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0349.cover_4923103
#print axioms cover_4922615

def root_4922610 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4922610_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4922610_right_fuel : Nat := 1
def small_4922610_right_count : Nat := 1
def small_4922610_right_encoded : String := "00000001"
theorem small_4922610_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4922610_right_root small_4922610_right_fuel small_4922610_right_count small_4922610_right_encoded = true := by
  decide +kernel
theorem small_4922610_right_covered : CoveredBy scale carrier boxes small_4922610_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4922610_right_root small_4922610_right_fuel small_4922610_right_count small_4922610_right_encoded small_4922610_right_checked

theorem cover_4922610 : CoveredBy scale carrier boxes root_4922610 := by
  apply coveredBy_split_literal root_4922610 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0350.root_4922615 small_4922610_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0350.cover_4922615
  · exact small_4922610_right_covered
#print axioms cover_4922610

def root_4919842 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4919842 : CoveredBy scale carrier boxes root_4919842 := by
  apply coveredBy_split_literal root_4919842 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1843.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0350.root_4922610 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1843.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0350.cover_4922610
#print axioms cover_4919842

def root_4919836 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4919836_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4919836_left_fuel : Nat := 1
def small_4919836_left_count : Nat := 1
def small_4919836_left_encoded : String := "00000000"
theorem small_4919836_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4919836_left_root small_4919836_left_fuel small_4919836_left_count small_4919836_left_encoded = true := by
  decide +kernel
theorem small_4919836_left_covered : CoveredBy scale carrier boxes small_4919836_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4919836_left_root small_4919836_left_fuel small_4919836_left_count small_4919836_left_encoded small_4919836_left_checked

theorem cover_4919836 : CoveredBy scale carrier boxes root_4919836 := by
  apply coveredBy_split_literal root_4919836 small_4919836_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0350.root_4919842 coord0 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_4919836_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0350.cover_4919842
#print axioms cover_4919836

def root_4913432 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4913432 : CoveredBy scale carrier boxes root_4913432 := by
  apply coveredBy_split_literal root_4913432 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0349.root_4913433 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0350.root_4919836 coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0349.cover_4913433
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0350.cover_4919836
#print axioms cover_4913432

def root_4927859 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4927859 : CoveredBy scale carrier boxes root_4927859 := by
  apply coveredBy_split_literal root_4927859 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1845.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1846.root coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1845.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1846.covered
#print axioms cover_4927859

def root_4913431 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4913431 : CoveredBy scale carrier boxes root_4913431 := by
  apply coveredBy_split_literal root_4913431 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0350.root_4913432 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0350.root_4927859 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0350.cover_4913432
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0350.cover_4927859
#print axioms cover_4913431

def root_4936927 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4936927 : CoveredBy scale carrier boxes root_4936927 := by
  apply coveredBy_split_literal root_4936927 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1849.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1850.root coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1849.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1850.covered
#print axioms cover_4936927

def root_4936921 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4936921_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4936921_left_fuel : Nat := 1
def small_4936921_left_count : Nat := 1
def small_4936921_left_encoded : String := "00000003"
theorem small_4936921_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4936921_left_root small_4936921_left_fuel small_4936921_left_count small_4936921_left_encoded = true := by
  decide +kernel
theorem small_4936921_left_covered : CoveredBy scale carrier boxes small_4936921_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4936921_left_root small_4936921_left_fuel small_4936921_left_count small_4936921_left_encoded small_4936921_left_checked

theorem cover_4936921 : CoveredBy scale carrier boxes root_4936921 := by
  apply coveredBy_split_literal root_4936921 small_4936921_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0350.root_4936927 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_4936921_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0350.cover_4936927
#print axioms cover_4936921

def root_4934853 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4934853 : CoveredBy scale carrier boxes root_4934853 := by
  apply coveredBy_split_literal root_4934853 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1848.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0350.root_4936921 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1848.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0350.cover_4936921
#print axioms cover_4934853

def root_4934848 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4934848_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4934848_right_fuel : Nat := 1
def small_4934848_right_count : Nat := 1
def small_4934848_right_encoded : String := "00000002"
theorem small_4934848_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4934848_right_root small_4934848_right_fuel small_4934848_right_count small_4934848_right_encoded = true := by
  decide +kernel
theorem small_4934848_right_covered : CoveredBy scale carrier boxes small_4934848_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4934848_right_root small_4934848_right_fuel small_4934848_right_count small_4934848_right_encoded small_4934848_right_checked

theorem cover_4934848 : CoveredBy scale carrier boxes root_4934848 := by
  apply coveredBy_split_literal root_4934848 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0350.root_4934853 small_4934848_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0350.cover_4934853
  · exact small_4934848_right_covered
#print axioms cover_4934848

def root_4931774 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4931774 : CoveredBy scale carrier boxes root_4931774 := by
  apply coveredBy_split_literal root_4931774 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1847.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0350.root_4934848 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1847.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0350.cover_4934848
#print axioms cover_4931774

def root_4931768 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4931768_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4931768_left_fuel : Nat := 1
def small_4931768_left_count : Nat := 1
def small_4931768_left_encoded : String := "00000001"
theorem small_4931768_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4931768_left_root small_4931768_left_fuel small_4931768_left_count small_4931768_left_encoded = true := by
  decide +kernel
theorem small_4931768_left_covered : CoveredBy scale carrier boxes small_4931768_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4931768_left_root small_4931768_left_fuel small_4931768_left_count small_4931768_left_encoded small_4931768_left_checked

theorem cover_4931768 : CoveredBy scale carrier boxes root_4931768 := by
  apply coveredBy_split_literal root_4931768 small_4931768_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0350.root_4931774 coord1 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_4931768_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0350.cover_4931774
#print axioms cover_4931768

def root_4941135 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4941135 : CoveredBy scale carrier boxes root_4941135 := by
  apply coveredBy_split_literal root_4941135 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1851.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1852.root coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1851.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1852.covered
#print axioms cover_4941135

def root_4941130 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4941130_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4941130_right_fuel : Nat := 1
def small_4941130_right_count : Nat := 1
def small_4941130_right_encoded : String := "00000003"
theorem small_4941130_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4941130_right_root small_4941130_right_fuel small_4941130_right_count small_4941130_right_encoded = true := by
  decide +kernel
theorem small_4941130_right_covered : CoveredBy scale carrier boxes small_4941130_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4941130_right_root small_4941130_right_fuel small_4941130_right_count small_4941130_right_encoded small_4941130_right_checked

theorem cover_4941130 : CoveredBy scale carrier boxes root_4941130 := by
  apply coveredBy_split_literal root_4941130 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0350.root_4941135 small_4941130_right_root coord3 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0350.cover_4941135
  · exact small_4941130_right_covered
#print axioms cover_4941130

def root_4941129 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4941129 : CoveredBy scale carrier boxes root_4941129 := by
  apply coveredBy_split_literal root_4941129 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0350.root_4941130 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1853.root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0350.cover_4941130
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1853.covered
#print axioms cover_4941129

def root_4941123 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4941123_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4941123_left_fuel : Nat := 1
def small_4941123_left_count : Nat := 1
def small_4941123_left_encoded : String := "00000002"
theorem small_4941123_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4941123_left_root small_4941123_left_fuel small_4941123_left_count small_4941123_left_encoded = true := by
  decide +kernel
theorem small_4941123_left_covered : CoveredBy scale carrier boxes small_4941123_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4941123_left_root small_4941123_left_fuel small_4941123_left_count small_4941123_left_encoded small_4941123_left_checked

theorem cover_4941123 : CoveredBy scale carrier boxes root_4941123 := by
  apply coveredBy_split_literal root_4941123 small_4941123_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0350.root_4941129 coord2 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_4941123_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0350.cover_4941129
#print axioms cover_4941123

def root_4954209 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4954209_left_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(0), (2097152)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4954209_left_fuel : Nat := 16
def small_4954209_left_count : Nat := 109
def small_4954209_left_encoded : String := "13D7B0FD07800108128A40FF0B4D43F610804D010DE7CA02000000050E6015030DE7CA04000000050E601505014001060000000513F614FD0000000306400108000000050000000800000002000000010000000010801101000000000DE7CA020E5FD903000000010DE7CA04000000050E6015050000000A000000020E6015030DE7CA040E5FD90500000002014001060000000513F614FD00000003064001080000000512FFACFF000000040DAED883000000080E96610200000008000000010E601505014001060000000A13F614FD000000030640010812FF70FF0DAED8830E96250200000001000000080E9661020000000A000000010000000412FFACFF000000040000000A000000020000000100000004128A7CFF000000040B4D43F610804D010DE7CA020E5FD90300000001000000090E6015030DE7CA040E5FD90500000002000000080E6015050000000900000002000000010000000010801101000000000DE7CA020E5FD90300000001000000090E6015030DE7CA040E5FD90500000002014001060000000813F614FD0000000308C0010811FBE8FF0000000800000004000000070000000A0000000100000003"
theorem small_4954209_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4954209_left_root small_4954209_left_fuel small_4954209_left_count small_4954209_left_encoded = true := by
  decide +kernel
theorem small_4954209_left_covered : CoveredBy scale carrier boxes small_4954209_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4954209_left_root small_4954209_left_fuel small_4954209_left_count small_4954209_left_encoded small_4954209_left_checked

theorem cover_4954209 : CoveredBy scale carrier boxes root_4954209 := by
  apply coveredBy_split_literal root_4954209 small_4954209_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1855.root coord3 false (2097152)
  · decide +kernel
  · decide +kernel
  · exact small_4954209_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1855.covered
#print axioms cover_4954209

def root_4954204 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4954204_right_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(13027072), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4954204_right_fuel : Nat := 1
def small_4954204_right_count : Nat := 1
def small_4954204_right_encoded : String := "00000002"
theorem small_4954204_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4954204_right_root small_4954204_right_fuel small_4954204_right_count small_4954204_right_encoded = true := by
  decide +kernel
theorem small_4954204_right_covered : CoveredBy scale carrier boxes small_4954204_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4954204_right_root small_4954204_right_fuel small_4954204_right_count small_4954204_right_encoded small_4954204_right_checked

theorem cover_4954204 : CoveredBy scale carrier boxes root_4954204 := by
  apply coveredBy_split_literal root_4954204 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0350.root_4954209 small_4954204_right_root coord2 true (13027072)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0350.cover_4954209
  · exact small_4954204_right_covered
#print axioms cover_4954204

def root_4953482 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4953482_left_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(8388608), (10572672)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4953482_left_fuel : Nat := 25
def small_4953482_left_count : Nat := 341
def small_4953482_left_encoded : String := "0F875105000000020280010613D7B0FD07800108128A40FF0B4D43F60000000510801101000000000DE7CA02000000050E601503000000050000000100000004128A7CFF000000040B4D43F610804D010DE7CA020E5FD903000000010B4D440400000005000000090E60150300000008000000010000000010801101000000000DE7CA020E5FD903000000010B4D440400000007000000070E6015030B4D44040000000710804D0501400106000000070000000700000002000000010000000313D7ECFD0000000307800108128A40FF0B4D43F610804D010DE7CA020E5FD903000000010B4D44040000000510804D0500000005000000020E6015030B4D44040000000510804D0503C001060000000513A54CFD00000003064001080000000512FFACFF000000040DAED8830E96250200000001000000080E9661020BF3E576000000051008ED01000000000BF3E58400000005100929050460010600000005138418FD0000000306E001080000000500000007000000020000000100000002000000010000000010801101000000000DE7CA020E5FD903000000010B4D440410801105000000020000000610804D0503C0010613A510FD064001080000000512FFACFF000000040AA6A27600000005000000060000000313A54CFD000000030640010812FF70FF000000060000000412FFACFF000000040AA6A27610EDAD010D412882000000050EFA4D030BF3E5840000000500000007000000010000000010ED71010000000000000007000000020E6015030B4D4404108011050000000203C0010613A510FD000000050000000313A54CFD000000030640010812FF70FF00000005000000040000000710804D0503C0010613A510FD064001080000000512FFACFF000000040DAED883000000070E9661020AA6A2760000000500000007000000010000000313A54CFD000000030640010812FF70FF0DAED8830E962502000000010AA6A27610EDAD010BF3E584000000051009290504600106000000050000000A000000020000000010ED7101000000000BF3E5840000000710092905046001060000000700000007000000020E9661020AA6A2760000000510ED7101000000000BF3E58400000005100929050460010600000005138418FD000000030000000700000002000000010000000412FFACFF000000040DAED8830E962502000000010AA6A27610EDAD010000000700000000000000070E9661020AA6A27610EDAD010BF3E5840000000700000007000000000000000700000001000000020000000100000004128A7CFF000000040B4D43F610804D010DE7CA020E5FD903000000010B4D4404108011050000000203C00106000000070000000710804D0503C0010613A510FD08C0010811FBE8FF0000000500000004000000070000000313A54CFD0000000308C0010811FBE8FF0BF3E576100929010D412882000000050EFA4D030BF3E584000000050000000700000001000000001008ED0100000000000000070000000400000007000000020E6015030B4D4404108011050000000203C00106000000070000000710804D0503C0010613A510FD08C0010811FBE8FF0000000800000004000000070000000313A54CFD0000000308C0010811FBE8FF0DAED8830E96250200000001000000080E9661020BF3E5761009290100000008000000000000000700000001000000040000000700000002000000010000000010801101000000000DE7CA020E5FD903000000010B4D440410801105000000020000000710804D0503C001060000000713A54CFD0000000300000007000000020E6015030B4D440410801105000000020000000710804D0503C001060000000713A54CFD00000003000000070000000200000001"
theorem small_4953482_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4953482_left_root small_4953482_left_fuel small_4953482_left_count small_4953482_left_encoded = true := by
  decide +kernel
theorem small_4953482_left_covered : CoveredBy scale carrier boxes small_4953482_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4953482_left_root small_4953482_left_fuel small_4953482_left_count small_4953482_left_encoded small_4953482_left_checked

theorem cover_4953482 : CoveredBy scale carrier boxes root_4953482 := by
  apply coveredBy_split_literal root_4953482 small_4953482_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0350.root_4954204 coord2 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_4953482_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0350.cover_4954204
#print axioms cover_4953482

def root_4953477 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4953477_right_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(13027072), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4953477_right_fuel : Nat := 1
def small_4953477_right_count : Nat := 1
def small_4953477_right_encoded : String := "00000001"
theorem small_4953477_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4953477_right_root small_4953477_right_fuel small_4953477_right_count small_4953477_right_encoded = true := by
  decide +kernel
theorem small_4953477_right_covered : CoveredBy scale carrier boxes small_4953477_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4953477_right_root small_4953477_right_fuel small_4953477_right_count small_4953477_right_encoded small_4953477_right_checked

theorem cover_4953477 : CoveredBy scale carrier boxes root_4953477 := by
  apply coveredBy_split_literal root_4953477 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0350.root_4953482 small_4953477_right_root coord1 true (13027072)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0350.cover_4953482
  · exact small_4953477_right_covered
#print axioms cover_4953477

def root_4953193 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4953193_left_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(8388608), (10572672)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4953193_left_fuel : Nat := 18
def small_4953193_left_count : Nat := 135
def small_4953193_left_encoded : String := "0F875103000000010C9A87040F875105000000020280010613D7B0FD0780010800000005128A7CFF000000040B4D43F6000000051080110100000000000000090000000313D7ECFD0000000307800108128A40FF0B4D43F6000000050000000600000004128A7CFF000000040B4D43F610804D010B4D44020000000910804D030B4D4404108011050000000203C00106000000050000000700000009000000010000000010801101000000000B4D44020000000910804D030B4D44040000000700000009000000010F878D050280010613D7B0FD07800108128A40FF0B4D43F60000000510801101000000000B4D44020000000510804D030DE7CA0400000005000000090000000100000004000000090000000313D7ECFD0000000307800108128A40FF0B4D43F610804D010B4D440210801103000000010000000910804D030DE7CA04000000050E6015050000000900000002000000010000000010801101000000000B4D440210801103000000010DE7CA040E5FD90500000002000000060000000910804D030DE7CA040E5FD9050000000203C0010613A510FD0640010800000005000000090000000313A54CFD000000030640010812FF70FF0000000600000004000000090E60150503C001060000000913A54CFD000000030640010812FF70FF000000090000000400000009000000020000000100000004128A7CFF000000040B4D43F60000000910801101000000000000000900000002"
theorem small_4953193_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4953193_left_root small_4953193_left_fuel small_4953193_left_count small_4953193_left_encoded = true := by
  decide +kernel
theorem small_4953193_left_covered : CoveredBy scale carrier boxes small_4953193_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4953193_left_root small_4953193_left_fuel small_4953193_left_count small_4953193_left_encoded small_4953193_left_checked

theorem cover_4953193 : CoveredBy scale carrier boxes root_4953193 := by
  apply coveredBy_split_literal root_4953193 small_4953193_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0350.root_4953477 coord1 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_4953193_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0350.cover_4953477
#print axioms cover_4953193

def root_4953187 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4953187_left_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(10897344), (13026304)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4953187_left_fuel : Nat := 1
def small_4953187_left_count : Nat := 1
def small_4953187_left_encoded : String := "00000000"
theorem small_4953187_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4953187_left_root small_4953187_left_fuel small_4953187_left_count small_4953187_left_encoded = true := by
  decide +kernel
theorem small_4953187_left_covered : CoveredBy scale carrier boxes small_4953187_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4953187_left_root small_4953187_left_fuel small_4953187_left_count small_4953187_left_encoded small_4953187_left_checked

theorem cover_4953187 : CoveredBy scale carrier boxes root_4953187 := by
  apply coveredBy_split_literal root_4953187 small_4953187_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0350.root_4953193 coord0 true (13026304)
  · decide +kernel
  · decide +kernel
  · exact small_4953187_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0350.cover_4953193
#print axioms cover_4953187

def root_4952671 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4952671_left_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-10572672)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4952671_left_fuel : Nat := 22
def small_4952671_left_count : Nat := 247
def small_4952671_left_encoded : String := "0F878D010C9A87020F875103000000010C9A87040F87510500000002028001060000000513D7ECFD000000030780010800000005128A7CFF000000040DE7C9F6000000050E5FD901000000000B4D44020000000510804D030B4D44040000000500000009000000010F878D050280010613D7B0FD0780010800000005000000090000000313D7ECFD0000000307800108128A40FF0000000500000004128A7CFF0000000400000009000000020F878D030C9A87040F875105000000020280010613D7B0FD0780010800000005128A7CFF000000040DE7C9F6000000050E5FD901000000000DE7CA0200000005000000080000000313D7ECFD0000000307800108128A40FF0000000500000004128A7CFF000000040DE7C9F60E6015010DE7CA02000000050E6015030000000800000001000000000E5FD901000000000DE7CA020E5FD903000000010B4D4404108011050000000203C001060000000513A54CFD0000000308C00108000000050000000710804D0503C001060000000513A54CFD0000000308C001080000000500000009000000020E6015030B4D4404108011050000000203C001060000000513A54CFD0000000308C00108000000050000000710804D0503C001060000000813A54CFD0000000308C0010811FBE8FF00000008000000040000000800000002000000010F878D050280010613D7B0FD0780010800000005128A7CFF000000040DE7C9F60E6015010DE7CA020000000500000008000000000E5FD901000000000DE7CA020E5FD90300000001000000090E60150300000008000000010000000313D7ECFD0000000307800108128A40FF0DE7C9F60E6015010DE7CA02000000050E6015030DE7CA04000000050000000600000001000000000E5FD901000000000DE7CA020E5FD903000000010DE7CA04000000050E60150503C001060000000513A54CFD00000003064001080000000512FFACFF000000040DAED8850000000600000009000000020E6015030DE7CA040E5FD9050000000203C001060000000513A54CFD00000003064001080000000512FFACFF000000040DAED883000000060E96610200000005000000010E60150503C0010613A510FD0640010800000005000000060000000300000006000000020000000100000004128A7CFF000000040DE7C9F60E6015010DE7CA020E5FD903000000010DE7CA040E5FD9050000000200000009000000090E6015030000000600000001000000000E5FD901000000000DE7CA020E5FD903000000010DE7CA040E5FD9050000000200000009000000090E6015030DE7CA040E5FD9050000000203C0010600000008000000060000000600000001000000020000000100000000"
theorem small_4952671_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4952671_left_root small_4952671_left_fuel small_4952671_left_count small_4952671_left_encoded = true := by
  decide +kernel
theorem small_4952671_left_covered : CoveredBy scale carrier boxes small_4952671_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4952671_left_root small_4952671_left_fuel small_4952671_left_count small_4952671_left_encoded small_4952671_left_checked

theorem cover_4952671 : CoveredBy scale carrier boxes root_4952671 := by
  apply coveredBy_split_literal root_4952671 small_4952671_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0350.root_4953187 coord0 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact small_4952671_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0350.cover_4953187
#print axioms cover_4952671

def root_4952666 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4952666_right_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4952666_right_fuel : Nat := 1
def small_4952666_right_count : Nat := 1
def small_4952666_right_encoded : String := "00000002"
theorem small_4952666_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4952666_right_root small_4952666_right_fuel small_4952666_right_count small_4952666_right_encoded = true := by
  decide +kernel
theorem small_4952666_right_covered : CoveredBy scale carrier boxes small_4952666_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4952666_right_root small_4952666_right_fuel small_4952666_right_count small_4952666_right_encoded small_4952666_right_checked

theorem cover_4952666 : CoveredBy scale carrier boxes root_4952666 := by
  apply coveredBy_split_literal root_4952666 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0350.root_4952671 small_4952666_right_root coord2 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0350.cover_4952671
  · exact small_4952666_right_covered
#print axioms cover_4952666

def root_4952232 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4952232_left_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4952232_left_fuel : Nat := 25
def small_4952232_left_count : Nat := 213
def small_4952232_left_encoded : String := "0F34D104000000020C9A86F60F878D010C9A87020F87510300000001028001060000000A13D7ECFD0000000307800108128A40FF0AD357850000000A10D13D040DE7C9F6000000050000000A0000000200000004000000090F878D030280010613D7B0FD07800108128A40FF0AD357850000000610D13D040DE7C9F6000000050000000A0000000200000004128A7CFF000000040000000A0000000313D7ECFD0000000307800108128A40FF0AD357850000000610D13D040DE7C9F6000000060E5FD901000000000DE7CA020E5FD9030000000103C001060000000A000000060000000600000002000000040000000600000001000000000F875101000000000C9A87020F87510300000001028001060000000A13D7ECFD0000000307800108128A40FF0AD357850000000A10D13D040B4D43F6000000090000000A0000000200000004000000090F878D030280010613D7B0FD07800108128A40FF0AD357850000000A10D13D040B4D43F610804D010000000A000000000000000A00000002000000040000000A0000000313D7ECFD0000000307800108128A40FF0AD3578510D10104000000020B4D43F6000000060000000A10D13D040B4D43F610804D010DE7CA020E5FD9030000000103C001060000000A13A54CFD000000030640010812FF70FF0BE879C5000000061011AD040BF3E576000000090000000A0000000200000004000000090E60150303C001060000000600000006000000010000000010801101000000000DE7CA020E5FD9030000000103C001060000000A13A54CFD000000030640010812FF70FF0BE879C50000000A1011AD040AA6A276000000090000000A0000000200000004000000090E60150303C0010613A510FD0640010812FF70FF0BE879C50000000A1011AD040DAED8830000000A0000000A00000002000000040000000A0000000313A54CFD000000030640010812FF70FF0BE879C5000000061011AD040DAED883000000060E9661020AA6A276000000060000000A00000001000000020000000412FFACFF0000000400000006000000010000000200000004128A7CFF000000040AD357850000000A10D13D040B4D43F610804D010DE7CA0200000009000000060000000010801101000000000DE7CA02000000090E60150300000006000000010000000200000001"
theorem small_4952232_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4952232_left_root small_4952232_left_fuel small_4952232_left_count small_4952232_left_encoded = true := by
  decide +kernel
theorem small_4952232_left_covered : CoveredBy scale carrier boxes small_4952232_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4952232_left_root small_4952232_left_fuel small_4952232_left_count small_4952232_left_encoded small_4952232_left_checked

theorem cover_4952232 : CoveredBy scale carrier boxes root_4952232 := by
  apply coveredBy_split_literal root_4952232 small_4952232_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0350.root_4952666 coord2 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_4952232_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0350.cover_4952666
#print axioms cover_4952232

def root_4952227 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4952227_right_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4952227_right_fuel : Nat := 1
def small_4952227_right_count : Nat := 1
def small_4952227_right_encoded : String := "00000001"
theorem small_4952227_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4952227_right_root small_4952227_right_fuel small_4952227_right_count small_4952227_right_encoded = true := by
  decide +kernel
theorem small_4952227_right_covered : CoveredBy scale carrier boxes small_4952227_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4952227_right_root small_4952227_right_fuel small_4952227_right_count small_4952227_right_encoded small_4952227_right_checked

theorem cover_4952227 : CoveredBy scale carrier boxes root_4952227 := by
  apply coveredBy_split_literal root_4952227 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0350.root_4952232 small_4952227_right_root coord1 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0350.cover_4952232
  · exact small_4952227_right_covered
#print axioms cover_4952227

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0350
