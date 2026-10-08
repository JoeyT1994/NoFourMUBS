import TaoBundleAssembly0619
import TaoBundleChunkBatch0851
import TaoBundleChunkBatch0852
import TaoBundleChunkBatch0853
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0620
def root_9085545 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9085545_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9085545_right_fuel : Nat := 22
def small_9085545_right_count : Nat := 259
def small_9085545_right_encoded : String := "1151E9090000000408A91303120700F808A91305120701040000000208A912FD12073D0605000100135D450100000000050000FE0000000900000009135D8101050000FE135D810904548A03138670F804548A0513867104000000020000000600000007000000011386ACF80000000104548A0513867104000000020CFD9BFD00000009000000061386AD04000000090000000200000004135D45090000000400000007000000000000000312070106000000030000000612073D0408A912FD12073D0605000100135D45010000000000000009000000070000000300000007000000020000000112073CF80000000108A91305120701040000000208A912FD12073D0605000100135D450100000000050000FE135D81090CFD9C030F34D0F800000009000000010F350CF80000000104548A05000000061386AD040CFD9BFD00000009000000060000000200000004135D4509000000040CFD9C030000000900000009135D8101050000FE135D81090CFD9C030F34D0F804548A0513867104000000020CFD9BFD0F350D060C9A8706000000060000000600000003000000061386AD040CFD9BFD000000090F34D106000000030000000600000002000000010F350CF80000000104548A0513867104000000020CFD9BFD0F350D060C9A86F80F878D0300000006000000010000000600000003000000061386AD040CFD9BFD0F350D060C9A86F8000000090F875103000000010C9A87060F8750FD000000090000000300000005000000030F34D10600000003000000050000000200000004135D4509000000040CFD9C030F34D0F804548A0513867104000000020000000900000009000000010F350CF80000000104548A0513867104000000020000000600000005000000000000000312070106000000030500010000000006135D8101050000FE00000006000000050000000012073D0408A912FD12073D0605000100135D450100000000050000FE135D81090CFD9C030F34D0F800000009000000010F350CF8000000010CFD9C050F34D10400000002000000090F350D04000000090000000200000004135D4509000000040CFD9C030000000900000009135D8101050000FE135D81090CFD9C030F34D0F80CFD9C050F34D104000000020CFD9BFD000000090000000700000007000000010F350CF8000000010CFD9C050F34D104000000020CFD9BFD0F350D060C9A86F8000000090F875103000000010000000500000003000000050F350D040CFD9BFD0F350D060C9A86F8000000090F875103000000010000000500000003000000050000000200000004135D4509000000040CFD9C030F34D0F800000007000000010F350CF8000000010CFD9C050F34D10400000002000000050000000500000000000000031207010600000003050001000000000A0000000500000002"
theorem small_9085545_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9085545_right_root small_9085545_right_fuel small_9085545_right_count small_9085545_right_encoded = true := by
  decide +kernel
theorem small_9085545_right_covered : CoveredBy scale carrier boxes small_9085545_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9085545_right_root small_9085545_right_fuel small_9085545_right_count small_9085545_right_encoded small_9085545_right_checked

theorem cover_9085545 : CoveredBy scale carrier boxes root_9085545 := by
  apply coveredBy_split_literal root_9085545 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0619.root_9085546 small_9085545_right_root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0619.cover_9085546
  · exact small_9085545_right_covered
#print axioms cover_9085545

def root_9085539 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9085539_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9085539_left_fuel : Nat := 1
def small_9085539_left_count : Nat := 1
def small_9085539_left_encoded : String := "00000003"
theorem small_9085539_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9085539_left_root small_9085539_left_fuel small_9085539_left_count small_9085539_left_encoded = true := by
  decide +kernel
theorem small_9085539_left_covered : CoveredBy scale carrier boxes small_9085539_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9085539_left_root small_9085539_left_fuel small_9085539_left_count small_9085539_left_encoded small_9085539_left_checked

theorem cover_9085539 : CoveredBy scale carrier boxes root_9085539 := by
  apply coveredBy_split_literal root_9085539 small_9085539_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0620.root_9085545 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_9085539_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0620.cover_9085545
#print axioms cover_9085539

def root_9082871 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9082871 : CoveredBy scale carrier boxes root_9082871 := by
  apply coveredBy_split_literal root_9082871 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3401.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0620.root_9085539 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3401.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0620.cover_9085539
#print axioms cover_9082871

def root_9082866 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9082866_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9082866_right_fuel : Nat := 1
def small_9082866_right_count : Nat := 1
def small_9082866_right_encoded : String := "00000002"
theorem small_9082866_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9082866_right_root small_9082866_right_fuel small_9082866_right_count small_9082866_right_encoded = true := by
  decide +kernel
theorem small_9082866_right_covered : CoveredBy scale carrier boxes small_9082866_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9082866_right_root small_9082866_right_fuel small_9082866_right_count small_9082866_right_encoded small_9082866_right_checked

theorem cover_9082866 : CoveredBy scale carrier boxes root_9082866 := by
  apply coveredBy_split_literal root_9082866 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0620.root_9082871 small_9082866_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0620.cover_9082871
  · exact small_9082866_right_covered
#print axioms cover_9082866

def root_9081934 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9081934_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9081934_left_fuel : Nat := 27
def small_9081934_left_count : Nat := 435
def small_9081934_left_encoded : String := "1151E905000000020A0001061151E8FD0A0000FE1152250908A91303120700F808A913090000000512073CFE0000000405000100135D45010000000005000104135D450500000002050001060000000700000007135D810505000106135D44FD00000005000000030000000900000002135D8101050001040000000700000007000000000000000112073CF80000000108A913090000000612073CFE0000000405000100135D45010000000005000104135D4505000000020500010600000006135D80FD000000030CFD9C030F34D0F8000000060000000100000006135D810505000106135D44FD0CFD9C030F34D0F800000006000000010000000600000003135D80FD000000030CFD9C030F34D0F80CFD9C090F34D0FE000000060000000400000009000000010F350CF8000000010CFD9C09000000060F350CFE000000040000000800000002135D81010500010400000006135D81050500010600000006135D80FD000000030CFD9C030F34D0F80000000600000001000000060000000200000000000000041151E9090000000408A91303120700F80500010000000009135D8101050001040000000800000007000000000000000112073CF8000000010500010000000008135D8101000000080000000000000003115224FD000000030A0000FE1152250908A91303120700F808A912FD12073D0608A91309120700FE05000100135D4501000000000500010400000007135D810504548A03000000051386ACF8000000010CFD9BFD000000050000000700000002000000070000000412073CFE0000000405000100135D4501000000000500010400000007135D810504548A03000000071386ACF8000000010CFD9BFD00000009000000070000000200000007000000031207010600000003000000070000000112073CF80000000108A912FD12073D0608A91309120700FE05000100135D45010000000005000104135D4505000000020CFD9C030F34D0F8000000060000000100000006135D81050CFD9C030F34D0F80CFD9BFD0F350D0600000006000000030F34D1060000000304548A090000000600000007000000010F350CF8000000010CFD9BFD000000060F34D1060000000304548A09000000061386ACFE000000040C9A86F80000000A0F875103000000010000000A00000002135D81010500010400000006135D81050CFD9C030F34D0F800000006000000010000000600000002000000000000000412073CFE0000000405000100135D45010000000005000104135D4505000000020CFD9C030F34D0F80CFD9BFD0F350D060000000A0000000300000007000000010F350CF8000000010CFD9BFD0F350D060000000A000000030000000A135D81050CFD9C030F34D0F80CFD9BFD0F350D060CFD9C090F34D0FE000000090000000400000009000000030F34D1060000000300000007000000010F350CF8000000010CFD9BFD0F350D060CFD9C090000000A0F350CFE000000040000000A000000030000000A00000002135D810105000104135D4505000000020CFD9C030F34D0F800000007000000010F350CF8000000010CFD9BFD0F350D0600000006000000030000000A135D81050CFD9C030F34D0F80CFD9BFD0F350D06000000070000000300000007000000010F350CF8000000010CFD9BFD0F350D060CFD9C090F34D0FE00000006000000040F350CFE000000040C9A86F80F878D0300000007000000010F875103000000010000000A000000030F34D106000000030000000A000000020000000000000003120701060000000308A91309120700FE05000100135D45010000000005000104135D4505000000020CFD9C03000000070F350CF800000001045489FD1386AD06000000070000000300000007135D81050CFD9C030F34D0F800000007000000010F350CF800000001045489FD1386AD0604548A09138670FE0C9A86F80F878D0300000007000000010F875103000000010280010013D7B1010000000007800104000000060000000A00000006000000041386ACFE000000040C9A86F80000000A0F875103000000010000000500000003138671060000000304548A09000000070000000500000002135D8101050001040000000700000007000000000000000412073CFE0000000405000100135D45010000000005000104135D45050000000200000007135D81050CFD9C03000000070000000500000002135D81010000000700000000000000041151E9090000000408A91303120700F8000000070000000112073CF80000000108A912FD12073D0605000100135D450100000000050001040000000A135D8105050000FE135D81090CFD9C030000000900000005000000040000000700000002135D8101050001040000000700000007000000000000000300000005"
theorem small_9081934_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9081934_left_root small_9081934_left_fuel small_9081934_left_count small_9081934_left_encoded = true := by
  decide +kernel
theorem small_9081934_left_covered : CoveredBy scale carrier boxes small_9081934_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9081934_left_root small_9081934_left_fuel small_9081934_left_count small_9081934_left_encoded small_9081934_left_checked

theorem cover_9081934 : CoveredBy scale carrier boxes root_9081934 := by
  apply coveredBy_split_literal root_9081934 small_9081934_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0620.root_9082866 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_9081934_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0620.cover_9082866
#print axioms cover_9081934

def root_9081929 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9081929_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9081929_right_fuel : Nat := 1
def small_9081929_right_count : Nat := 1
def small_9081929_right_encoded : String := "00000001"
theorem small_9081929_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9081929_right_root small_9081929_right_fuel small_9081929_right_count small_9081929_right_encoded = true := by
  decide +kernel
theorem small_9081929_right_covered : CoveredBy scale carrier boxes small_9081929_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9081929_right_root small_9081929_right_fuel small_9081929_right_count small_9081929_right_encoded small_9081929_right_checked

theorem cover_9081929 : CoveredBy scale carrier boxes root_9081929 := by
  apply coveredBy_split_literal root_9081929 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0620.root_9081934 small_9081929_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0620.cover_9081934
  · exact small_9081929_right_covered
#print axioms cover_9081929

def root_9091481 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9091481 : CoveredBy scale carrier boxes root_9091481 := by
  apply coveredBy_split_literal root_9091481 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3404.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3405.root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3404.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3405.covered
#print axioms cover_9091481

def root_9091476 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9091476_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9091476_right_fuel : Nat := 1
def small_9091476_right_count : Nat := 1
def small_9091476_right_encoded : String := "00000002"
theorem small_9091476_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9091476_right_root small_9091476_right_fuel small_9091476_right_count small_9091476_right_encoded = true := by
  decide +kernel
theorem small_9091476_right_covered : CoveredBy scale carrier boxes small_9091476_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9091476_right_root small_9091476_right_fuel small_9091476_right_count small_9091476_right_encoded small_9091476_right_checked

theorem cover_9091476 : CoveredBy scale carrier boxes root_9091476 := by
  apply coveredBy_split_literal root_9091476 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0620.root_9091481 small_9091476_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0620.cover_9091481
  · exact small_9091476_right_covered
#print axioms cover_9091476

def root_9091014 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9091014_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9091014_left_fuel : Nat := 26
def small_9091014_left_count : Nat := 221
def small_9091014_left_encoded : String := "1151E905000000020A0001061151E8FD0A0000FE1152250908A913090000000612073CFE00000004050001000000000800000006000000040000000800000003115224FD000000030A0000FE1152250908A912FD12073D0608A91309120700FE05000100135D450100000000050000F8135D81030500010400000006135D81050CFD9BFD000000060F34D1060000000304548A09000000061386ACFE000000040280010013D7B10100000000078000F80000000A128A410300000001078001040000000600000005000000060000000200000001135D4503000000010500010400000006135D81050CFD9BFD000000060F34D1060000000304548A09000000060000000500000002000000060000000412073CFE0000000405000100135D450100000000050000F8135D810305000104135D4505000000020CFD9BFD0F350D06000000080000000300000005135D81050CFD9BFD0F350D060000000A00000003000000050000000200000001135D45030000000105000104135D45050000000200000005135D81050CFD9BFD000000080000000500000002135D8101050000F8135D810305000104135D4505000000020CFD9BFD0000000600000005135D81050CFD9BFD0F350D060CFD9C09000000060000000500000003000000050000000200000001135D45030000000105000104135D4505000000020CFD9BFD0F350D06000000060000000300000005135D81050CFD9BFD0F350D06000000080000000300000005000000020000000000000003120701060000000308A91309120700FE05000100135D450100000000050000F8135D810305000104135D450500000002045489FD1386AD0604548A0900000006000000050000000300000005135D8105045489FD1386AD0604548A09138670FE0280010013D7B10100000000078000F8128A7D030780010400000006128A7D050000000A0000000200000001128A4103000000010000000500000006000000040000000500000003000000050000000200000001135D45030000000100000005135D8101050000F8135D810305000104135D450500000002045489FD0000000600000005135D8105045489FD1386AD0604548A09000000060000000500000003000000050000000200000001135D45030000000105000104135D4505000000020000000500000005000000000000000400000005000000041151E9090000000400000005"
theorem small_9091014_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9091014_left_root small_9091014_left_fuel small_9091014_left_count small_9091014_left_encoded = true := by
  decide +kernel
theorem small_9091014_left_covered : CoveredBy scale carrier boxes small_9091014_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9091014_left_root small_9091014_left_fuel small_9091014_left_count small_9091014_left_encoded small_9091014_left_checked

theorem cover_9091014 : CoveredBy scale carrier boxes root_9091014 := by
  apply coveredBy_split_literal root_9091014 small_9091014_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0620.root_9091476 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_9091014_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0620.cover_9091476
#print axioms cover_9091014

def root_9091008 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9091008_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9091008_left_fuel : Nat := 1
def small_9091008_left_count : Nat := 1
def small_9091008_left_encoded : String := "00000001"
theorem small_9091008_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9091008_left_root small_9091008_left_fuel small_9091008_left_count small_9091008_left_encoded = true := by
  decide +kernel
theorem small_9091008_left_covered : CoveredBy scale carrier boxes small_9091008_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9091008_left_root small_9091008_left_fuel small_9091008_left_count small_9091008_left_encoded small_9091008_left_checked

theorem cover_9091008 : CoveredBy scale carrier boxes root_9091008 := by
  apply coveredBy_split_literal root_9091008 small_9091008_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0620.root_9091014 coord1 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_9091008_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0620.cover_9091014
#print axioms cover_9091008

def root_9081928 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9081928 : CoveredBy scale carrier boxes root_9081928 := by
  apply coveredBy_split_literal root_9081928 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0620.root_9081929 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0620.root_9091008 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0620.cover_9081929
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0620.cover_9091008
#print axioms cover_9081928

def root_9081922 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9081922_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9081922_left_fuel : Nat := 1
def small_9081922_left_count : Nat := 1
def small_9081922_left_encoded : String := "00000000"
theorem small_9081922_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9081922_left_root small_9081922_left_fuel small_9081922_left_count small_9081922_left_encoded = true := by
  decide +kernel
theorem small_9081922_left_covered : CoveredBy scale carrier boxes small_9081922_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9081922_left_root small_9081922_left_fuel small_9081922_left_count small_9081922_left_encoded small_9081922_left_checked

theorem cover_9081922 : CoveredBy scale carrier boxes root_9081922 := by
  apply coveredBy_split_literal root_9081922 small_9081922_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0620.root_9081928 coord0 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_9081922_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0620.cover_9081928
#print axioms cover_9081922

def root_9102663 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(16678144), (16777216)⟩, ⟨(0), (1816224)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9102663 : CoveredBy scale carrier boxes root_9102663 := by
  apply coveredBy_split_literal root_9102663 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3409.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3410.root coord0 false (11664704)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3409.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3410.covered
#print axioms cover_9102663

def root_9102657 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (1816224)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9102657_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(16378880), (16678144)⟩, ⟨(0), (1816224)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9102657_left_fuel : Nat := 1
def small_9102657_left_count : Nat := 1
def small_9102657_left_encoded : String := "00000002"
theorem small_9102657_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9102657_left_root small_9102657_left_fuel small_9102657_left_count small_9102657_left_encoded = true := by
  decide +kernel
theorem small_9102657_left_covered : CoveredBy scale carrier boxes small_9102657_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9102657_left_root small_9102657_left_fuel small_9102657_left_count small_9102657_left_encoded small_9102657_left_checked

theorem cover_9102657 : CoveredBy scale carrier boxes root_9102657 := by
  apply coveredBy_split_literal root_9102657 small_9102657_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0620.root_9102663 coord2 false (16678144)
  · decide +kernel
  · decide +kernel
  · exact small_9102657_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0620.cover_9102663
#print axioms cover_9102657

def root_9102656 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9102656_right_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(1816224), (3632448)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-15552512)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9102656_right_fuel : Nat := 24
def small_9102656_right_count : Nat := 443
def small_9102656_right_encoded : String := "13E201040DE7CA000E5FD901000000000B4D43F810804D030B4D43FE10804D090640010612FF70FD033F67C513BBF504000000020D4128800EFA1101000000000BF3E578000000051008ED03000000010BF3E57E000000051008ED09000000040000000900000006000000060000000312FFACFD00000003033F67C513BBF504000000020D4128800EFA1101000000000BF3E578100929030BF3E57E10092909000000050000000400000009000000011008ED03000000010BF3E57E1009290906E0010612C7E4FD000000060000000312C820FD0000000302B4D6A50000000800000006000000041008ED0900000004000000090EFA4D010BF3E578100929030BF3E57E10092909000000060000000400000007000000011008ED03000000010BF3E57E1009290900000006000000041008ED090000000406E0010600000007000000070000000013BC31040D4128800EFA1101000000000BF3E578000000091008ED03000000010BF3E57E00000006000000070EFA4D010000000600000000000000020000000410801109000000040640010612FF70FD033F67C513BBF504000000020D412880000000090EFA4D010000000700000000000000070000000312FFACFD00000003033F67C513BBF504000000020D412880000000090EFA4D010000000700000000000000070000000110801103000000010B4D43FE10804D090640010612FF70FD033F67C513BBF504000000020D4128800EFA1101000000000AA6A27810EDAD030BF3E57E000000061008ED090000000405A0010600000006133170FD00000003000000060000000110ED7103000000010000000600000006000000060000000312FFACFD00000003033F67C513BBF504000000020D4128800EFA1101000000000AA6A27810EDAD030BF3E57E1009290906E00106000000060000000A000000041008ED090000000406E0010612C7E4FD02B4D6A50000000A00000009000000030000000A0000000110ED7103000000010000000A0EFA4D010AA6A27810EDAD030BF3E57E1009290900000006000000041008ED090000000406E0010612C7E4FD000000060000000312C820FD0000000302B4D6A513D0D104000000020D9479400000000A0EAEE9010000000700000000000000060000000110ED7103000000010BF3E57E000000061008ED090000000406E00106000000060000000A0000000013BC31040D4128800EFA1101000000000AA6A27810EDAD030BF3E57E000000061008ED0900000004000000090000000110ED7103000000010000000600000006000000020000000410801109000000040640010612FF70FD033F67C513BBF504000000020D4128800EFA1101000000000AA6A2780000000910ED710300000001000000090EFA4D010AA6A27810EDAD030AA6A27E10EDAD0905A0010600000006133170FD0000000302B4D6A513D0D104000000020D94794000000009000000060000000600000004000000090000000110ED7103000000010AA6A27E10EDAD09000000060000000410ED710900000004000000090000000013BC31040D412880000000090EFA4D010AA6A278000000060000000600000000000000020000000312FFACFD00000003033F67C513BBF504000000020D4128800EFA1101000000000AA6A2780000000910ED7103000000010000000A0EFA4D010AA6A27810EDAD030AA6A27E10EDAD0906E001060000000712C820FD000000030000000700000004000000070000000110ED7103000000010AA6A27E10EDAD0906E0010612C7E4FD02B4D6A50000000A00000006000000030000000A0000000410ED710900000004000000050000000013BC31040D4128800EFA110100000000000000090EFA4D010AA6A2780000000710ED7103000000010000000500000000000000020E6015010B4D43F810804D030B4D43FE10804D09064001060000000612FFACFD00000003033F67C513BBF504000000020DAED881000000070E9661000BF3E578000000071008ED03000000010000000600000000000000060000000410801109000000040640010600000007000000070000000110801103000000010B4D43FE10804D09064001060000000612FFACFD00000003033F67C513BBF504000000020DAED881000000060E9661000AA6A278000000060000000600000000000000060000000410801109000000040640010612FF70FD033F67C513BBF504000000020DAED8810E96250000000000000000060E9661000AA6A27810EDAD03000000070000000110ED7103000000010000000600000000000000060000000312FFACFD00000003033F67C513BBF504000000020DAED8810E96250000000000000000070E9661000AA6A27810EDAD03000000070000000110ED7103000000010AA6A27E10EDAD0906E001060000000600000005000000040000000500000000000000070000000000000002"
theorem small_9102656_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9102656_right_root small_9102656_right_fuel small_9102656_right_count small_9102656_right_encoded = true := by
  decide +kernel
theorem small_9102656_right_covered : CoveredBy scale carrier boxes small_9102656_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9102656_right_root small_9102656_right_fuel small_9102656_right_count small_9102656_right_encoded small_9102656_right_checked

theorem cover_9102656 : CoveredBy scale carrier boxes root_9102656 := by
  apply coveredBy_split_literal root_9102656 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0620.root_9102657 small_9102656_right_root coord2 true (1816224)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0620.cover_9102657
  · exact small_9102656_right_covered
#print axioms cover_9102656

def root_9102651 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9102651_right_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(-15552512), (-14529024)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9102651_right_fuel : Nat := 1
def small_9102651_right_count : Nat := 1
def small_9102651_right_encoded : String := "00000003"
theorem small_9102651_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9102651_right_root small_9102651_right_fuel small_9102651_right_count small_9102651_right_encoded = true := by
  decide +kernel
theorem small_9102651_right_covered : CoveredBy scale carrier boxes small_9102651_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9102651_right_root small_9102651_right_fuel small_9102651_right_count small_9102651_right_encoded small_9102651_right_checked

theorem cover_9102651 : CoveredBy scale carrier boxes root_9102651 := by
  apply coveredBy_split_literal root_9102651 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0620.root_9102656 small_9102651_right_root coord3 true (-15552512)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0620.cover_9102656
  · exact small_9102651_right_covered
#print axioms cover_9102651

def root_9102650 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9102650 : CoveredBy scale carrier boxes root_9102650 := by
  apply coveredBy_split_literal root_9102650 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0620.root_9102651 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3411.root coord3 false (6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0620.cover_9102651
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3411.covered
#print axioms cover_9102650

def root_9102644 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9102644_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(10897344), (13026304)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9102644_left_fuel : Nat := 1
def small_9102644_left_count : Nat := 1
def small_9102644_left_encoded : String := "00000004"
theorem small_9102644_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9102644_left_root small_9102644_left_fuel small_9102644_left_count small_9102644_left_encoded = true := by
  decide +kernel
theorem small_9102644_left_covered : CoveredBy scale carrier boxes small_9102644_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9102644_left_root small_9102644_left_fuel small_9102644_left_count small_9102644_left_encoded small_9102644_left_checked

theorem cover_9102644 : CoveredBy scale carrier boxes root_9102644 := by
  apply coveredBy_split_literal root_9102644 small_9102644_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0620.root_9102650 coord4 true (13026304)
  · decide +kernel
  · decide +kernel
  · exact small_9102644_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0620.cover_9102650
#print axioms cover_9102644

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0620
