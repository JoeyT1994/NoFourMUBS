import TaoBundleAssembly0210
import TaoBundleChunkBatch0822
import TaoBundleChunkBatch0823
import TaoBundleChunkBatch0824
import TaoBundleChunkBatch0825
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0211
def root_8782739 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8782739_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8782739_left_fuel : Nat := 24
def small_8782739_left_count : Nat := 479
def small_8782739_left_encoded : String := "1151E901000000000A0000F8115225030A0001041151E8FB0A0000FC115225070A0001081151E9090000000408A913030000000612073CF800000001000000061152250908A91303120700F808A91307120700FC000000050000000312073CFC0000000308A91309120701080000000405000100000000050000000A12073D0805000100135D45010000000005000104135D44FB0000000500000002135D80FB0000000200000006135D810105000104135D44FB0000000A000000020000000600000000000000040000000112073CF80000000108A91307120700FC08A91309120701080000000405000100000000050000000A12073D080500010000000006135D810105000104135D44FB0000000A000000020000000600000000000000040000000312073CFC0000000308A9130912070108000000040000000A12073D08000000060000000400000004000000031151E907000000030A0001081151E9090000000408A9130300000009000000061152250908A91303120700F808A9130912070108000000040000000A12073D0805000100135D4501000000000500010400000009135D80FB00000002050000FC0000000A0000000900000009000000040000000112073CF80000000108A9130912070108000000040000000A12073D0805000100135D450100000000050001040000000A135D80FB00000002050000FC00000006135D45070000000300000006135D810105000104135D44FB0000000A000000020000000600000000000000040000000400000002115224FB000000020A0000FC115225070A0001081151E9090000000408A91303120700F8000000060000000112073CF80000000108A912FB00000006120701040000000208A91307120700FC0500010000000006135D810105000108135D4509000000040CFD9C03000000060F350CF80000000100000006000000060000000000000003000000061152250908A91303120700F808A912FB12073D0408A91307120700FC08A9130912070108000000040500010000000005135D81010000000500000000000000060000000312073CFC0000000308A9130912070108000000040500010000000006135D810104548A030000000600000006000000000000000600000002120701040000000208A91307120700FC08A913091207010800000004000000060000000600000003000000060000000112073CF80000000108A912FB12073D0408A91307120700FC08A91309120701080000000405000100135D4501000000000CFD9C030000000600000006135D81010CFD9C030F34D0F80CFD9BFB000000060F34D1040000000200000006000000010F350CF8000000010CFD9BFB000000060000000600000000000000060000000312073CFC0000000308A9130912070108000000040500010000000006135D810100000006000000000000000600000002120701040000000208A91307120700FC08A9130912070108000000040500010000000006135D81010000000700000000000000060000000312073CFC000000030000000600000004000000031151E907000000030A0001081151E90900000004000000061152250908A91303120700F808A912FB12073D0408A9130912070108000000040500010000000007135D8101050000FC00000006000000070000000012073D0805000100135D450100000000050000FC135D8107000000060000000300000007135D8101050000FC00000006135D45070000000304548A0300000008000000060000000000000004000000021207010400000002000000060000000112073CF80000000108A912FB12073D0408A913090000000612073D0800000006000000040000000212070104000000020000000600000004000000011151E903000000010A0001041151E8FB0A0000FC115225070A0001081151E90900000004000000061152250908A91307120700FC08A9130912070108000000040000000A00000006000000030000000600000004000000031151E907000000030A0001080000000611522509000000060000000400000002115224FB000000020A0000FC115225070A0001081151E9090000000408A912FB12073D0408A91307120700FC0500010000000006135D8101050000F8000000060000000600000000000000030000000600000002120701040000000208A91307120700FC05000100135D450100000000050000F800000006135D45030000000100000005135D8101050000F8135D810305000108135D450900000004045489FB00000006000000050000000600000001135D45030000000105000108135D45090000000400000005000000050000000000000003000000051152250908A912FB12073D0408A91307120700FC08A9130912070108000000040000000600000006000000030000000600000002120701040000000208A91307120700FC08A9130912070108000000040000000612073D080500010000000006135D8101050000F8135D81030000000600000001135D450300000001045489FB000000060000000500000000000000040000000312073CFC0000000308A913091207010800000004000000060000000600000004000000031151E907000000030A0001081151E909000000040000000500000006"
theorem small_8782739_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8782739_left_root small_8782739_left_fuel small_8782739_left_count small_8782739_left_encoded = true := by
  decide +kernel
theorem small_8782739_left_covered : CoveredBy scale carrier boxes small_8782739_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8782739_left_root small_8782739_left_fuel small_8782739_left_count small_8782739_left_encoded small_8782739_left_checked

theorem cover_8782739 : CoveredBy scale carrier boxes root_8782739 := by
  apply coveredBy_split_literal root_8782739 small_8782739_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3288.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_8782739_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3288.covered
#print axioms cover_8782739

def root_8777615 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8777615 : CoveredBy scale carrier boxes root_8777615 := by
  apply coveredBy_split_literal root_8777615 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0210.root_8777616 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0211.root_8782739 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0210.cover_8777616
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0211.cover_8782739
#print axioms cover_8777615

def root_8767153 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8767153 : CoveredBy scale carrier boxes root_8767153 := by
  apply coveredBy_split_literal root_8767153 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0210.root_8767154 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0211.root_8777615 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0210.cover_8767154
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0211.cover_8777615
#print axioms cover_8767153

def root_8711295 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8711295 : CoveredBy scale carrier boxes root_8711295 := by
  apply coveredBy_split_literal root_8711295 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0210.root_8711296 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0211.root_8767153 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0210.cover_8711296
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0211.cover_8767153
#print axioms cover_8711295

def root_8791835 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8791835_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8791835_left_fuel : Nat := 26
def small_8791835_left_count : Nat := 213
def small_8791835_left_encoded : String := "120701000000000008A91303120700F808A912FB12073D0408A91309120700FE000000090000000412073CFE000000040500010600000005135D80FD000000030000000500000002120701040000000208A91309120700FE0000000500000004000000050000000112073CF80000000108A912FB12073D0408A913090000000912073CFE000000040500010600000005135D80FD0000000304548A0113867100000000000CFD9C030F34D0F800000005000000010F350CF800000001000000091386AD000CFD9C030F34D0F80000000500000001000000080000000000000002120701040000000208A91309120700FE000000050000000412073CFE0000000405000106135D44FD04548A0113867100000000000CFD9C03000000050F350CF800000001045489FB0000000513867104000000020CFD9C09000000050000000A1386AD000CFD9C03000000050F350CF800000001045489FB0000000513867104000000020CFD9C09000000050F350CFE000000040C9A86F8000000050F875103000000010C9A86FE00000005000000090000000000000003135D80FD0000000304548A0113867100000000000CFD9C030F34D0F800000005000000010F350CF800000001045489FB1386AD040CFD9C09000000090F350CFE00000004000000090000000213867104000000020CFD9C090F34D0FE00000005000000040F350CFE000000040C9A86F80F878D030C9A86FE0F878D0900000005000000040F875109000000040000000A000000010F87510300000001000000091386AD000CFD9C030F34D0F8045489FB0000000513867104000000020CFD9C09000000050F350CFE000000040C9A86FE000000050F8751090000000400000007000000010F350CF800000001045489FB1386AD040CFD9C09000000090F350CFE000000040C9A86F800000008000000090000000213867104000000020CFD9C090F34D0FE00000009000000040F350CFE000000040C9A86F80F878D030C9A86FE0F878D09078001060000000500000008000000040F87510900000004078001060000000A128A7CFD00000003067ECE8112EA5900000000000000000700000008000000010F875103000000010C9A86FE000000090F875109000000040780010600000009128A7CFD00000003067ECE81000000090000000900000000"
theorem small_8791835_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8791835_left_root small_8791835_left_fuel small_8791835_left_count small_8791835_left_encoded = true := by
  decide +kernel
theorem small_8791835_left_covered : CoveredBy scale carrier boxes small_8791835_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8791835_left_root small_8791835_left_fuel small_8791835_left_count small_8791835_left_encoded small_8791835_left_checked

theorem cover_8791835 : CoveredBy scale carrier boxes root_8791835 := by
  apply coveredBy_split_literal root_8791835 small_8791835_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3291.root coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_8791835_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3291.covered
#print axioms cover_8791835

def root_8791830 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8791830_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8791830_right_fuel : Nat := 1
def small_8791830_right_count : Nat := 1
def small_8791830_right_encoded : String := "00000004"
theorem small_8791830_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8791830_right_root small_8791830_right_fuel small_8791830_right_count small_8791830_right_encoded = true := by
  decide +kernel
theorem small_8791830_right_covered : CoveredBy scale carrier boxes small_8791830_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8791830_right_root small_8791830_right_fuel small_8791830_right_count small_8791830_right_encoded small_8791830_right_checked

theorem cover_8791830 : CoveredBy scale carrier boxes root_8791830 := by
  apply coveredBy_split_literal root_8791830 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0211.root_8791835 small_8791830_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0211.cover_8791835
  · exact small_8791830_right_covered
#print axioms cover_8791830

def root_8796572 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8796572 : CoveredBy scale carrier boxes root_8796572 := by
  apply coveredBy_split_literal root_8796572 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3292.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3293.root coord3 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3292.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3293.covered
#print axioms cover_8796572

def root_8796566 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8796566_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8796566_left_fuel : Nat := 1
def small_8796566_left_count : Nat := 1
def small_8796566_left_encoded : String := "00000002"
theorem small_8796566_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8796566_left_root small_8796566_left_fuel small_8796566_left_count small_8796566_left_encoded = true := by
  decide +kernel
theorem small_8796566_left_covered : CoveredBy scale carrier boxes small_8796566_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8796566_left_root small_8796566_left_fuel small_8796566_left_count small_8796566_left_encoded small_8796566_left_checked

theorem cover_8796566 : CoveredBy scale carrier boxes root_8796566 := by
  apply coveredBy_split_literal root_8796566 small_8796566_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0211.root_8796572 coord2 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_8796566_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0211.cover_8796572
#print axioms cover_8796566

def root_8796046 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8796046_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8796046_left_fuel : Nat := 19
def small_8796046_left_count : Nat := 247
def small_8796046_left_encoded : String := "12073D0405000106135D44FD050000FE135D81090CFD9C010F34D100000000000CFD9C030F34D0F800000005000000010F350CF8000000010CFD9BFB0F350D0400000005000000020F34D104000000020C9A86F8000000050F87510300000001028001060000000513D7ECFD00000003078000FE00000005128A410900000004000000060F350D000CFD9C03000000050F350CF8000000010CFD9BFB000000050F34D104000000020C9A8700000000050F878D010C9A86F8000000050F87510300000001028001060000000513D7ECFD00000003078000FE0000000500000006000000000000000000000004135D4509000000040CFD9C010F34D100000000000CFD9C030F34D0F80000000A000000010F350CF8000000010CFD9BFB0F350D040C9A86F80F878D0300000005000000010F875103000000010C9A87040F8750FB000000050000000200000006000000020F34D104000000020C9A86F80000000A0F875103000000010280010600000006000000060F350D000CFD9C030F34D0F800000005000000010F350CF8000000010CFD9BFB0F350D040C9A8700000000050F878D010C9A86F8000000050F875103000000010C9A8704000000050000000600000000000000020F34D104000000020C9A8700000000060F878D010C9A86F80F878D03000000060000000100000006000000000000000000000003135D80FD00000003050000FE135D81090CFD9C010F34D100000000000CFD9C030F34D0F800000008000000010F350CF8000000010CFD9BFB000000080F34D104000000020C9A86F8000000080F87510300000001000000080F350D000CFD9C030F34D0F80CFD9BFB000000050F34D104000000020C9A87000000000500000008000000010F350CF8000000010CFD9BFB000000080F34D104000000020C9A87000F875101000000000C9A86F800000008000000060F878D010C9A86F8000000080F8751030000000100000006000000000000000000000004135D4509000000040CFD9C010F34D100000000000CFD9C030F34D0F80CFD9BFB000000080F34D104000000020000000A000000010F350CF8000000010CFD9BFB000000080F34D104000000020C9A86F80F878D0307800106000000060000000600000001000000060F350D000CFD9C030F34D0F80CFD9BFB000000080F34D104000000020C9A8700000000060F878D0107800106000000060000000600000000000000010F350CF8000000010CFD9BFB0F350D040C9A87000F875101000000000C9A86F8000000080000000600000008000000020F34D104000000020C9A8700000000060F878D010C9A86F80F878D03000000060000000100000006000000000000000000000002"
theorem small_8796046_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8796046_left_root small_8796046_left_fuel small_8796046_left_count small_8796046_left_encoded = true := by
  decide +kernel
theorem small_8796046_left_covered : CoveredBy scale carrier boxes small_8796046_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8796046_left_root small_8796046_left_fuel small_8796046_left_count small_8796046_left_encoded small_8796046_left_checked

theorem cover_8796046 : CoveredBy scale carrier boxes root_8796046 := by
  apply coveredBy_split_literal root_8796046 small_8796046_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0211.root_8796566 coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_8796046_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0211.cover_8796566
#print axioms cover_8796046

def root_8796040 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8796040_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8796040_left_fuel : Nat := 1
def small_8796040_left_count : Nat := 1
def small_8796040_left_encoded : String := "00000001"
theorem small_8796040_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8796040_left_root small_8796040_left_fuel small_8796040_left_count small_8796040_left_encoded = true := by
  decide +kernel
theorem small_8796040_left_covered : CoveredBy scale carrier boxes small_8796040_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8796040_left_root small_8796040_left_fuel small_8796040_left_count small_8796040_left_encoded small_8796040_left_checked

theorem cover_8796040 : CoveredBy scale carrier boxes root_8796040 := by
  apply coveredBy_split_literal root_8796040 small_8796040_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0211.root_8796046 coord1 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_8796040_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0211.cover_8796046
#print axioms cover_8796040

def root_8795866 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8795866_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8795866_left_fuel : Nat := 16
def small_8795866_left_count : Nat := 81
def small_8795866_left_encoded : String := "120700F808A912FB12073D040500010600000005135D80FD00000003050000FE00000005135D4509000000040CFD9C010F34D100000000000000000A0F350D0004548A03000000051386ACF8000000010CFD9BFB000000050F34D104000000020C9A8700000000050000000A0000000000000002120701040000000205000106135D44FD0000000A00000003135D80FD00000003050000FE135D81090CFD9C010F34D100000000000000000A0F350D0004548A03000000051386ACF800000001045489FB0000000513867104000000020C9A8700000000050F878D0100000007000000000000000000000004135D4509000000040CFD9C010F34D10000000000000000070F350D0004548A03138670F80000000A000000011386ACF800000001045489FB1386AD040C9A8700000000060000000A00000002000000070000000000000001"
theorem small_8795866_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8795866_left_root small_8795866_left_fuel small_8795866_left_count small_8795866_left_encoded = true := by
  decide +kernel
theorem small_8795866_left_covered : CoveredBy scale carrier boxes small_8795866_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8795866_left_root small_8795866_left_fuel small_8795866_left_count small_8795866_left_encoded small_8795866_left_checked

theorem cover_8795866 : CoveredBy scale carrier boxes root_8795866 := by
  apply coveredBy_split_literal root_8795866 small_8795866_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0211.root_8796040 coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_8795866_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0211.cover_8796040
#print axioms cover_8795866

def root_8795861 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8795861_right_root : ZRayBox := fun j => (#[⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8795861_right_fuel : Nat := 1
def small_8795861_right_count : Nat := 1
def small_8795861_right_encoded : String := "00000000"
theorem small_8795861_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8795861_right_root small_8795861_right_fuel small_8795861_right_count small_8795861_right_encoded = true := by
  decide +kernel
theorem small_8795861_right_covered : CoveredBy scale carrier boxes small_8795861_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8795861_right_root small_8795861_right_fuel small_8795861_right_count small_8795861_right_encoded small_8795861_right_checked

theorem cover_8795861 : CoveredBy scale carrier boxes root_8795861 := by
  apply coveredBy_split_literal root_8795861 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0211.root_8795866 small_8795861_right_root coord0 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0211.cover_8795866
  · exact small_8795861_right_covered
#print axioms cover_8795861

def root_8795335 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8795335_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8795335_left_fuel : Nat := 25
def small_8795335_left_count : Nat := 245
def small_8795335_left_encoded : String := "120701000000000008A91303120700F808A912FB0000000A12070104000000020000000A0000000112073CF80000000108A912FB12073D0405000106135D44FD050000FE135D810904548A010000000A1386AD000CFD9C030000000A0F350CF8000000010CFD9BFB000000090F34D104000000020000000A0000000000000004135D45090000000404548A010000000A1386AD000CFD9C030000000A0F350CF8000000010CFD9BFB0000000A0F34D104000000020000000A0000000000000003135D80FD00000003050000FE135D810904548A0113867100000000000CFD9C030F34D0F800000008000000010F350CF8000000010CFD9BFB000000080F34D10400000002000000091386AD000CFD9C030F34D0F80000000800000001000000080000000000000004135D45090000000404548A0113867100000000000CFD9C030000000A0F350CF8000000010CFD9BFB000000080F34D104000000020000000A1386AD000CFD9C030F34D0F80000000A000000010F350CF8000000010CFD9BFB000000080F34D104000000020C9A86F80000000A000000060000000000000002120701040000000205000106135D44FD0000000A00000003135D80FD00000003050000FE135D810904548A0113867100000000000CFD9C030000000A0F350CF800000001045489FB0000000A13867104000000020C9A86F80000000A0F87510300000001078001060000000A128A7CFD00000003078000FE128A7D09022A4581000000070000000700000004000000071386AD000CFD9C030F34D0F80000000A000000010F350CF800000001045489FB1386AD040C9A86F80F878D030000000A000000010F8751030000000107800106128A40FD0000000A00000003128A7CFD00000003078000FE00000008128A410900000004000000080000000213867104000000020C9A86F80F878D03078001060000000A128A7CFD0000000300000007000000010F8751030000000107800106128A40FD078000FE128A7D09067ECE810000000A12EA9500022A457B0000000A000000070000000000000004128A4109000000040000000A00000003128A7CFD00000003078000FE128A7D09067ECE8112EA590000000000022A457B000000080000000712EA9500022A457B00000008000000070000000000000004128A410900000004067ECE8100000007000000070000000000000004135D45090000000404548A0113867100000000000000000A1386AD000CFD9C030F34D0F800000007000000010F350CF800000001045489FB1386AD040C9A86F80000000A0F87510300000001078001060000000A000000060000000213867104000000020000000700000000"
theorem small_8795335_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8795335_left_root small_8795335_left_fuel small_8795335_left_count small_8795335_left_encoded = true := by
  decide +kernel
theorem small_8795335_left_covered : CoveredBy scale carrier boxes small_8795335_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8795335_left_root small_8795335_left_fuel small_8795335_left_count small_8795335_left_encoded small_8795335_left_checked

theorem cover_8795335 : CoveredBy scale carrier boxes root_8795335 := by
  apply coveredBy_split_literal root_8795335 small_8795335_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0211.root_8795861 coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_8795335_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0211.cover_8795861
#print axioms cover_8795335

def root_8795329 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8795329_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8795329_left_fuel : Nat := 1
def small_8795329_left_count : Nat := 1
def small_8795329_left_encoded : String := "00000004"
theorem small_8795329_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8795329_left_root small_8795329_left_fuel small_8795329_left_count small_8795329_left_encoded = true := by
  decide +kernel
theorem small_8795329_left_covered : CoveredBy scale carrier boxes small_8795329_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8795329_left_root small_8795329_left_fuel small_8795329_left_count small_8795329_left_encoded small_8795329_left_checked

theorem cover_8795329 : CoveredBy scale carrier boxes root_8795329 := by
  apply coveredBy_split_literal root_8795329 small_8795329_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0211.root_8795335 coord4 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_8795329_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0211.cover_8795335
#print axioms cover_8795329

def root_8791829 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8791829 : CoveredBy scale carrier boxes root_8791829 := by
  apply coveredBy_split_literal root_8791829 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0211.root_8791830 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0211.root_8795329 coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0211.cover_8791830
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0211.cover_8795329
#print axioms cover_8791829

def root_8791824 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8791824_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8791824_right_fuel : Nat := 1
def small_8791824_right_count : Nat := 1
def small_8791824_right_encoded : String := "00000003"
theorem small_8791824_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8791824_right_root small_8791824_right_fuel small_8791824_right_count small_8791824_right_encoded = true := by
  decide +kernel
theorem small_8791824_right_covered : CoveredBy scale carrier boxes small_8791824_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8791824_right_root small_8791824_right_fuel small_8791824_right_count small_8791824_right_encoded small_8791824_right_checked

theorem cover_8791824 : CoveredBy scale carrier boxes root_8791824 := by
  apply coveredBy_split_literal root_8791824 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0211.root_8791829 small_8791824_right_root coord3 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0211.cover_8791829
  · exact small_8791824_right_covered
#print axioms cover_8791824

def root_8791823 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8791823 : CoveredBy scale carrier boxes root_8791823 := by
  apply coveredBy_split_literal root_8791823 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0211.root_8791824 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3294.root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0211.cover_8791824
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3294.covered
#print axioms cover_8791823

def root_8791817 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8791817_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8791817_left_fuel : Nat := 1
def small_8791817_left_count : Nat := 1
def small_8791817_left_encoded : String := "00000002"
theorem small_8791817_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8791817_left_root small_8791817_left_fuel small_8791817_left_count small_8791817_left_encoded = true := by
  decide +kernel
theorem small_8791817_left_covered : CoveredBy scale carrier boxes small_8791817_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8791817_left_root small_8791817_left_fuel small_8791817_left_count small_8791817_left_encoded small_8791817_left_checked

theorem cover_8791817 : CoveredBy scale carrier boxes root_8791817 := by
  apply coveredBy_split_literal root_8791817 small_8791817_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0211.root_8791823 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_8791817_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0211.cover_8791823
#print axioms cover_8791817

def root_8791601 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8791601_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8791601_left_fuel : Nat := 18
def small_8791601_left_count : Nat := 99
def small_8791601_left_encoded : String := "1151E8FB0A0001061151E8FD0A0000FE1152250908A91301120701000000000008A91303120700F808A913090000000900000005000000010000000912073D0008A91303120700F800000005000000010000000500000000000000041151E9090000000408A91301120701000000000008A91303120700F8000000050000000112073CF8000000010500010400000005135D80FB000000020500010600000005135D80FD000000030000000812073D0008A91303120700F8000000050000000112073CF8000000010500010400000005135D80FB000000020500010600000005135D80FD00000003050000FE00000005135D4509000000040CFD9C010F34D1000000000000000008000000080000000000000003115224FD000000030A0000FE1152250908A9130112070100000000000000000812073D0008A91303120700F800000008000000010000000800000000000000041151E9090000000408A9130112070100000000000000000812073D0008A91303120700F80000000800000001000000080000000000000002"
theorem small_8791601_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8791601_left_root small_8791601_left_fuel small_8791601_left_count small_8791601_left_encoded = true := by
  decide +kernel
theorem small_8791601_left_covered : CoveredBy scale carrier boxes small_8791601_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8791601_left_root small_8791601_left_fuel small_8791601_left_count small_8791601_left_encoded small_8791601_left_checked

theorem cover_8791601 : CoveredBy scale carrier boxes root_8791601 := by
  apply coveredBy_split_literal root_8791601 small_8791601_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0211.root_8791817 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_8791601_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0211.cover_8791817
#print axioms cover_8791601

def root_8791596 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8791596_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8791596_right_fuel : Nat := 1
def small_8791596_right_count : Nat := 1
def small_8791596_right_encoded : String := "00000001"
theorem small_8791596_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8791596_right_root small_8791596_right_fuel small_8791596_right_count small_8791596_right_encoded = true := by
  decide +kernel
theorem small_8791596_right_covered : CoveredBy scale carrier boxes small_8791596_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8791596_right_root small_8791596_right_fuel small_8791596_right_count small_8791596_right_encoded small_8791596_right_checked

theorem cover_8791596 : CoveredBy scale carrier boxes root_8791596 := by
  apply coveredBy_split_literal root_8791596 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0211.root_8791601 small_8791596_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0211.cover_8791601
  · exact small_8791596_right_covered
#print axioms cover_8791596

def root_8804972 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8804972_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8804972_left_fuel : Nat := 18
def small_8804972_left_count : Nat := 105
def small_8804972_left_encoded : String := "12073D0408A91309120700FE050000F800000005135D4503000000010500010600000005000000090000000412073CFE00000004050000F8135D810305000106135D44FD0CFD9C010F34D100000000000CFD9BFB00000009000000090F350D000CFD9BFB000000050F34D104000000020CFD9C09000000050F350CFE000000040C9A8700000000050F878D010C9A86FE000000050F8751090000000400000007000000000000000000000003135D80FD000000030CFD9C010F34D10000000000000000090F350D000CFD9BFB0F350D040CFD9C090000000900000007000000020F34D104000000020CFD9C090F34D0FE00000007000000040F350CFE000000040C9A87000F87510100000000000000070F878D0100000009000000000000000000000001135D45030000000105000106135D44FD0CFD9C010F34D10000000000000000090F350D000CFD9BFB000000070F34D10400000002000000070000000000000003135D80FD000000030CFD9C010F34D10000000000000000090F350D000CFD9BFB000000070F34D104000000020CFD9C0900000007000000070000000000000002"
theorem small_8804972_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8804972_left_root small_8804972_left_fuel small_8804972_left_count small_8804972_left_encoded = true := by
  decide +kernel
theorem small_8804972_left_covered : CoveredBy scale carrier boxes small_8804972_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8804972_left_root small_8804972_left_fuel small_8804972_left_count small_8804972_left_encoded small_8804972_left_checked

theorem cover_8804972 : CoveredBy scale carrier boxes root_8804972 := by
  apply coveredBy_split_literal root_8804972 small_8804972_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3295.root coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_8804972_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3295.covered
#print axioms cover_8804972

def root_8804967 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8804967_right_root : ZRayBox := fun j => (#[⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8804967_right_fuel : Nat := 1
def small_8804967_right_count : Nat := 1
def small_8804967_right_encoded : String := "00000000"
theorem small_8804967_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8804967_right_root small_8804967_right_fuel small_8804967_right_count small_8804967_right_encoded = true := by
  decide +kernel
theorem small_8804967_right_covered : CoveredBy scale carrier boxes small_8804967_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8804967_right_root small_8804967_right_fuel small_8804967_right_count small_8804967_right_encoded small_8804967_right_checked

theorem cover_8804967 : CoveredBy scale carrier boxes root_8804967 := by
  apply coveredBy_split_literal root_8804967 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0211.root_8804972 small_8804967_right_root coord0 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0211.cover_8804972
  · exact small_8804967_right_covered
#print axioms cover_8804967

def root_8804889 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8804889_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8804889_left_fuel : Nat := 14
def small_8804889_left_count : Nat := 37
def small_8804889_left_encoded : String := "120701000000000008A912FB12073D0408A91309000000090000000900000002120701040000000208A913090000000912073CFE00000004050000F8135D810305000106135D44FD04548A01000000090000000900000003135D80FD0000000304548A011386710000000000000000091386AD00045489FB00000009138671040000000200000009000000000000000100000009"
theorem small_8804889_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8804889_left_root small_8804889_left_fuel small_8804889_left_count small_8804889_left_encoded = true := by
  decide +kernel
theorem small_8804889_left_covered : CoveredBy scale carrier boxes small_8804889_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8804889_left_root small_8804889_left_fuel small_8804889_left_count small_8804889_left_encoded small_8804889_left_checked

theorem cover_8804889 : CoveredBy scale carrier boxes root_8804889 := by
  apply coveredBy_split_literal root_8804889 small_8804889_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0211.root_8804967 coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_8804889_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0211.cover_8804967
#print axioms cover_8804889

def root_8804884 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8804884_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8804884_right_fuel : Nat := 1
def small_8804884_right_count : Nat := 1
def small_8804884_right_encoded : String := "00000004"
theorem small_8804884_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8804884_right_root small_8804884_right_fuel small_8804884_right_count small_8804884_right_encoded = true := by
  decide +kernel
theorem small_8804884_right_covered : CoveredBy scale carrier boxes small_8804884_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8804884_right_root small_8804884_right_fuel small_8804884_right_count small_8804884_right_encoded small_8804884_right_checked

theorem cover_8804884 : CoveredBy scale carrier boxes root_8804884 := by
  apply coveredBy_split_literal root_8804884 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0211.root_8804889 small_8804884_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0211.cover_8804889
  · exact small_8804884_right_covered
#print axioms cover_8804884

def root_8813140 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16645888), (-16243968)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8813140_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (-1816224)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16645888), (-16243968)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8813140_left_fuel : Nat := 20
def small_8813140_left_count : Nat := 197
def small_8813140_left_encoded : String := "13E201040DE7CA000E5FD9010000000008C000F811FC250303C0010613A510FD08C000FE000000070000000600000003000000060000000111FBE9030000000103C0010600000007000000060E60150108C000F811FC250303C0010613A510FD08C000FE11FC2509033F67BB13BC31040DAED8810E9625000000000000000009000000070000000213BBF504000000020DAED8810E96250000000000096000F811AABD03032001060000000513C144FD00000003096000FE0000000511AA8109000000040000000A00000001000000090E966100096000F811AABD03032001060000000513C144FD00000003096000FE0000000511AA810900000004000000060000000100000007000000000000000411FBE90900000004033F67BB0000000613BBF504000000020DAED8810E96250000000000096000F811AABD030000000A0000000111AA8103000000010320010613C108FD0000000A00000003000000060E96610000000006000000000000000313A54CFD0000000308C000FE11FC2509033F67BB13BC31040DAED8810E96250000000000000000090E96610000000006000000000000000213BBF504000000020DAED8810E96250000000000096000F811AABD03046001061383DCFD096000FE0000000911AA8109000000040000000600000003138418FD00000003096000FE000000090000000600000001000000090E966100096000F811AABD03000000060000000100000007000000000000000411FBE90900000004000000060000000111FBE9030000000103C0010613A510FD08C000FE11FC2509033F67BB0000000713BBF50400000002000000070000000411FBE90900000004033F67BB0000000613BBF504000000020DAED8810E96250000000000082000F8124699030320010613C108FD082000FE0000000712465D0900000004000000060000000313C144FD000000030000000600000001000000070E96610000000007000000000000000313A54CFD0000000308C000FE11FC2509033F67BB0000000713BBF504000000020DAED88100000007000000070000000411FBE90900000004000000060000000000000002"
theorem small_8813140_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8813140_left_root small_8813140_left_fuel small_8813140_left_count small_8813140_left_encoded = true := by
  decide +kernel
theorem small_8813140_left_covered : CoveredBy scale carrier boxes small_8813140_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8813140_left_root small_8813140_left_fuel small_8813140_left_count small_8813140_left_encoded small_8813140_left_checked

theorem cover_8813140 : CoveredBy scale carrier boxes root_8813140 := by
  apply coveredBy_split_literal root_8813140 small_8813140_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3297.root coord2 true (-1816224)
  · decide +kernel
  · decide +kernel
  · exact small_8813140_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3297.covered
#print axioms cover_8813140

def root_8813135 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16645888), (-16243968)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8813135_right_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16645888), (-16243968)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(15553280), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8813135_right_fuel : Nat := 1
def small_8813135_right_count : Nat := 1
def small_8813135_right_encoded : String := "00000004"
theorem small_8813135_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8813135_right_root small_8813135_right_fuel small_8813135_right_count small_8813135_right_encoded = true := by
  decide +kernel
theorem small_8813135_right_covered : CoveredBy scale carrier boxes small_8813135_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8813135_right_root small_8813135_right_fuel small_8813135_right_count small_8813135_right_encoded small_8813135_right_checked

theorem cover_8813135 : CoveredBy scale carrier boxes root_8813135 := by
  apply coveredBy_split_literal root_8813135 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0211.root_8813140 small_8813135_right_root coord4 true (15553280)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0211.cover_8813140
  · exact small_8813135_right_covered
#print axioms cover_8813135

def root_8813134 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16645888), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8813134_right_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16645888), (-16243968)⟩⟩, ⟨⟨(-6291456), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8813134_right_fuel : Nat := 18
def small_8813134_right_count : Nat := 75
def small_8813134_right_encoded : String := "128A410900000004022A457B13E201040DE7CA00000000060E60150108C000F811FC2503000000060000000100000006000000000000000213E1C504000000020DE7CA000E5FD9010000000008C000F80000000911FBE9030000000103C0010600000008000000050E60150108C000F811FC250303C0010613A510FD064000FE12FFAD090115233B13F895040DAED8810E96250000000000096000F811AABD030000000A00000001000000080E9661000000000600000000000000020000000800000004000000080000000313A54CFD00000003064000FE12FFAD090115233B0000000613F85904000000020000000500000004000000050000000111FBE9030000000103C0010613A510FD064000FE12FFAD09000000080000000400000005000000030000000500000000"
theorem small_8813134_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8813134_right_root small_8813134_right_fuel small_8813134_right_count small_8813134_right_encoded = true := by
  decide +kernel
theorem small_8813134_right_covered : CoveredBy scale carrier boxes small_8813134_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8813134_right_root small_8813134_right_fuel small_8813134_right_count small_8813134_right_encoded small_8813134_right_checked

theorem cover_8813134 : CoveredBy scale carrier boxes root_8813134 := by
  apply coveredBy_split_literal root_8813134 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0211.root_8813135 small_8813134_right_root coord4 false (-6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0211.cover_8813135
  · exact small_8813134_right_covered
#print axioms cover_8813134

def root_8813128 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8813128_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16777216), (-16645888)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8813128_left_fuel : Nat := 1
def small_8813128_left_count : Nat := 1
def small_8813128_left_encoded : String := "00000003"
theorem small_8813128_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8813128_left_root small_8813128_left_fuel small_8813128_left_count small_8813128_left_encoded = true := by
  decide +kernel
theorem small_8813128_left_covered : CoveredBy scale carrier boxes small_8813128_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8813128_left_root small_8813128_left_fuel small_8813128_left_count small_8813128_left_encoded small_8813128_left_checked

theorem cover_8813128 : CoveredBy scale carrier boxes root_8813128 := by
  apply coveredBy_split_literal root_8813128 small_8813128_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0211.root_8813134 coord3 true (-16645888)
  · decide +kernel
  · decide +kernel
  · exact small_8813128_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0211.cover_8813134
#print axioms cover_8813128

def root_8812342 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8812342_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(0), (2097152)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8812342_left_fuel : Nat := 23
def small_8812342_left_count : Nat := 373
def small_8812342_left_encoded : String := "13D7B0FD078000FE128A7D09022A457B13E201040DE7CA000E5FD9010000000008C000F811FC25030140010613F5D8FD08C000FE0000000511FBE90900000004000000070000000313F614FD0000000308C000FE0000000711FBE90900000004033F67BB0000000613BBF504000000020D412880000000060EFA4D0100000007000000000000000111FBE90300000001000000070E60150108C000F811FC25030140010613F5D8FD08C000FE0000000511FBE909000000040000000A0000000313F614FD0000000308C000FE11FC2509033F67BB0000000513BBF504000000020DAED881000000050E96610000000005000000000000000411FBE90900000004033F67BB13BC31040DAED8810E962500000000000000000A0E96610000000006000000000000000213BBF504000000020DAED8810E962500000000000000000A0E966100096000F80000000A11AA81030000000101E001060000000700000007000000000000000111FBE903000000010140010613F5D8FD08C000FE0000000711FBE90900000004033F67BB00000007000000080000000313F614FD0000000308C000FE11FC2509000000070000000411FBE90900000004033F67BB0000000713BBF504000000020DAED8810E96250000000000082000F81246990301E001060000000813E994FD00000003082000FE000000070000000800000001000000070E9661000000000700000000000000000000000213E1C504000000020DE7CA000E5FD9010000000008C000F811FC25030140010613F5D8FD08C000FE11FC25090115233B000000050000000800000004000000080000000313F614FD0000000308C000FE11FC25090115233B13F895040D412880000000050EFA4D01096000F80000000500000007000000000000000213F85904000000020D412880000000080EFA4D0100000008000000000000000411FBE909000000040115233B13F895040D412880000000080EFA4D01000000080000000000000002000000080000000111FBE90300000001014001060000000813F614FD0000000308C000FE11FC25090115233B000000070000000800000004000000080E60150108C000F811FC25030140010613F5D8FD08C000FE11FC25090115233B000000050000000800000004000000080000000313F614FD0000000308C000FE11FC25090115233B13F895040DAED8810E96250000000000096000F80000000511AA81030000000101E00106000000050000000A0E966100096000F80000000511AA81030000000101E001060000000513E994FD00000003096000FE0000000500000008000000000000000213F85904000000020DAED8810E96250000000000096000F80000000A000000080E966100096000F811AABD03000000080000000100000008000000000000000411FBE909000000040115233B13F895040DAED8810E962500000000000000000A0E966100096000F811AABD030000000A00000001000000080000000000000002000000080000000111FBE90300000001014001060000000813F614FD0000000308C000FE11FC25090115233B13F895040DAED8810E96250000000000082000F81246990301E001060000000813E994FD00000003096000FE000000070000000800000001000000080E9661000000000700000000000000020000000800000004000000080000000000000004128A410900000004022A457B13E201040DE7CA000E5FD9010000000008C000F811FC25030000000600000001000000060E60150108C000F811FC2503014001060000000A13F614FD00000003064000FE12FFAD09033F67BB0000000613BBF504000000020DAED8810000000A0E966100000000060000000000000004000000060000000111FBE903000000010140010613F5D8FD064000FE12FFAD090000000800000004000000080000000313F614FD00000003064000FE12FFAD09033F67BB00000006000000080000000400000006000000000000000213E1C504000000020DE7CA00000000080E60150108C000F811FC25030000000800000001000000080000000000000003"
theorem small_8812342_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8812342_left_root small_8812342_left_fuel small_8812342_left_count small_8812342_left_encoded = true := by
  decide +kernel
theorem small_8812342_left_covered : CoveredBy scale carrier boxes small_8812342_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8812342_left_root small_8812342_left_fuel small_8812342_left_count small_8812342_left_encoded small_8812342_left_checked

theorem cover_8812342 : CoveredBy scale carrier boxes root_8812342 := by
  apply coveredBy_split_literal root_8812342 small_8812342_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0211.root_8813128 coord3 false (2097152)
  · decide +kernel
  · decide +kernel
  · exact small_8812342_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0211.cover_8813128
#print axioms cover_8812342

def root_8812337 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8812337_right_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(15553280), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8812337_right_fuel : Nat := 1
def small_8812337_right_count : Nat := 1
def small_8812337_right_encoded : String := "00000001"
theorem small_8812337_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8812337_right_root small_8812337_right_fuel small_8812337_right_count small_8812337_right_encoded = true := by
  decide +kernel
theorem small_8812337_right_covered : CoveredBy scale carrier boxes small_8812337_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8812337_right_root small_8812337_right_fuel small_8812337_right_count small_8812337_right_encoded small_8812337_right_checked

theorem cover_8812337 : CoveredBy scale carrier boxes root_8812337 := by
  apply coveredBy_split_literal root_8812337 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0211.root_8812342 small_8812337_right_root coord1 true (15553280)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0211.cover_8812342
  · exact small_8812337_right_covered
#print axioms cover_8812337

def root_8812336 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8812336_right_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-6291456), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8812336_right_fuel : Nat := 18
def small_8812336_right_count : Nat := 165
def small_8812336_right_encoded : String := "128A4103000000010280010613D7B0FD078000FE128A7D09022A457B13E201040DE7CA00000000070E601501064000F812FFAD030140010600000007000000070000000100000007000000000000000213E1C504000000020DE7CA00000000080E601501064000F812FFAD0301400106000000080000000800000001000000080000000000000004128A410900000004022A457B13E201040DE7CA000E5FD90100000000000000070E601501064000F812FFAD03014001060000000813F614FD00000003064000FE12FFAD09033F67BB0000000600000008000000040000000600000001000000080000000000000002000000080000000313D7ECFD00000003078000FE128A7D09022A457B13E201040DE7CA00000000070E601501064000F812FFAD0303C0010613A510FD000000070000000313A54CFD0000000308C000FE0000000711FBE90900000004000000070000000100000007000000000000000213E1C504000000020DE7CA000E5FD90100000000064000F812FFAD0303C0010613A510FD08C000FE00000007000000080000000313A54CFD0000000308C000FE000000070000000500000001000000070E601501064000F812FFAD0303C0010613A510FD08C000FE11FC25090115233B000000070000000800000004000000080000000313A54CFD0000000308C000FE11FC25090115233B0000000713F85904000000020000000500000004000000050000000112FF71030000000103C0010613A510FD08C000FE000000070000000500000003000000050000000000000004128A410900000004022A457B13E201040DE7CA00000000060E601501064000F812FFAD03000000060000000100000005000000000000000213E1C504000000020DE7CA000E5FD901000000000000000500000005"
theorem small_8812336_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8812336_right_root small_8812336_right_fuel small_8812336_right_count small_8812336_right_encoded = true := by
  decide +kernel
theorem small_8812336_right_covered : CoveredBy scale carrier boxes small_8812336_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8812336_right_root small_8812336_right_fuel small_8812336_right_count small_8812336_right_encoded small_8812336_right_checked

theorem cover_8812336 : CoveredBy scale carrier boxes root_8812336 := by
  apply coveredBy_split_literal root_8812336 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0211.root_8812337 small_8812336_right_root coord1 false (-6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0211.cover_8812337
  · exact small_8812336_right_covered
#print axioms cover_8812336

def root_8812331 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8812331_right_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(13027072), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8812331_right_fuel : Nat := 1
def small_8812331_right_count : Nat := 1
def small_8812331_right_encoded : String := "00000000"
theorem small_8812331_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8812331_right_root small_8812331_right_fuel small_8812331_right_count small_8812331_right_encoded = true := by
  decide +kernel
theorem small_8812331_right_covered : CoveredBy scale carrier boxes small_8812331_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8812331_right_root small_8812331_right_fuel small_8812331_right_count small_8812331_right_encoded small_8812331_right_checked

theorem cover_8812331 : CoveredBy scale carrier boxes root_8812331 := by
  apply coveredBy_split_literal root_8812331 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0211.root_8812336 small_8812331_right_root coord0 true (13027072)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0211.cover_8812336
  · exact small_8812331_right_covered
#print axioms cover_8812331

def root_8812133 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8812133_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (10572672)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8812133_left_fuel : Nat := 19
def small_8812133_left_count : Nat := 93
def small_8812133_left_encoded : String := "0F87510100000000078000F8128A7D030280010613D7B0FD078000FE128A7D09022A457B0000000713E1C504000000020B4D44000000000910804D0108C000F80000000911FBE903000000010140010600000007000000070000000000000004128A410900000004000000090000000313D7ECFD00000003078000FE128A7D09022A457B0000000613E1C504000000020B4D440010801101000000000000000910804D0108C000F811FC250303C0010613A510FD08C000FE11FC25090000000700000004000000090000000313A54CFD0000000308C000FE11FC25090115233B000000060000000900000004000000060000000111FBE9030000000103C0010613A510FD0000000700000003000000070000000000000004128A4109000000040000000600000001128A4103000000010280010613D7B0FD078000FE00000007128A410900000004022A457B00000006000000080000000313D7ECFD00000003078000FE00000007128A41090000000400000006"
theorem small_8812133_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8812133_left_root small_8812133_left_fuel small_8812133_left_count small_8812133_left_encoded = true := by
  decide +kernel
theorem small_8812133_left_covered : CoveredBy scale carrier boxes small_8812133_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8812133_left_root small_8812133_left_fuel small_8812133_left_count small_8812133_left_encoded small_8812133_left_checked

theorem cover_8812133 : CoveredBy scale carrier boxes root_8812133 := by
  apply coveredBy_split_literal root_8812133 small_8812133_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0211.root_8812331 coord0 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_8812133_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0211.cover_8812331
#print axioms cover_8812133

def root_8812127 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8812127_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8812127_left_fuel : Nat := 1
def small_8812127_left_count : Nat := 1
def small_8812127_left_encoded : String := "00000002"
theorem small_8812127_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8812127_left_root small_8812127_left_fuel small_8812127_left_count small_8812127_left_encoded = true := by
  decide +kernel
theorem small_8812127_left_covered : CoveredBy scale carrier boxes small_8812127_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8812127_left_root small_8812127_left_fuel small_8812127_left_count small_8812127_left_encoded small_8812127_left_checked

theorem cover_8812127 : CoveredBy scale carrier boxes root_8812127 := by
  apply coveredBy_split_literal root_8812127 small_8812127_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0211.root_8812133 coord2 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_8812127_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0211.cover_8812133
#print axioms cover_8812127

def root_8811897 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8811897_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8811897_left_fuel : Nat := 19
def small_8811897_left_count : Nat := 109
def small_8811897_left_encoded : String := "1386AD040C9A87000F87510100000000078000F8128A7D030280010613D7B0FD078000FE0000000700000006000000030000000600000001000000070F878D01078000F8128A7D030280010613D7B0FD078000FE128A7D09067ECE7B0000000712EA5904000000020DE7CA000E5FD90100000000000000070E60150108C000F811FC25030000000500000001000000070000000000000004128A410900000004067ECE7B0000000612EA5904000000020DE7CA00000000060E60150108C000F811FC2503000000060000000100000006000000000000000313D7ECFD00000003078000FE128A7D09067ECE7B0000000612EA5904000000020DE7CA00000000060E60150108C000F811FC250303C0010613A510FD08C000FE000000070000000600000003000000060000000111FBE9030000000103C0010600000007000000060000000000000004128A4109000000040000000600000001128A4103000000010280010613D7B0FD078000FE00000007128A410900000004067ECE7B0000000612EA590400000002000000070000000313D7ECFD00000003078000FE00000007128A410900000004000000060000000000000002"
theorem small_8811897_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8811897_left_root small_8811897_left_fuel small_8811897_left_count small_8811897_left_encoded = true := by
  decide +kernel
theorem small_8811897_left_covered : CoveredBy scale carrier boxes small_8811897_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8811897_left_root small_8811897_left_fuel small_8811897_left_count small_8811897_left_encoded small_8811897_left_checked

theorem cover_8811897 : CoveredBy scale carrier boxes root_8811897 := by
  apply coveredBy_split_literal root_8811897 small_8811897_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0211.root_8812127 coord2 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact small_8811897_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0211.cover_8812127
#print axioms cover_8811897

def root_8811892 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8811892_right_root : ZRayBox := fun j => (#[⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8811892_right_fuel : Nat := 1
def small_8811892_right_count : Nat := 1
def small_8811892_right_encoded : String := "00000000"
theorem small_8811892_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8811892_right_root small_8811892_right_fuel small_8811892_right_count small_8811892_right_encoded = true := by
  decide +kernel
theorem small_8811892_right_covered : CoveredBy scale carrier boxes small_8811892_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8811892_right_root small_8811892_right_fuel small_8811892_right_count small_8811892_right_encoded small_8811892_right_checked

theorem cover_8811892 : CoveredBy scale carrier boxes root_8811892 := by
  apply coveredBy_split_literal root_8811892 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0211.root_8811897 small_8811892_right_root coord0 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0211.cover_8811897
  · exact small_8811892_right_covered
#print axioms cover_8811892

def root_8809380 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8809380 : CoveredBy scale carrier boxes root_8809380 := by
  apply coveredBy_split_literal root_8809380 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3296.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0211.root_8811892 coord0 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3296.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0211.cover_8811892
#print axioms cover_8809380

def root_8809375 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8809375_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8809375_right_fuel : Nat := 1
def small_8809375_right_count : Nat := 1
def small_8809375_right_encoded : String := "00000004"
theorem small_8809375_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8809375_right_root small_8809375_right_fuel small_8809375_right_count small_8809375_right_encoded = true := by
  decide +kernel
theorem small_8809375_right_covered : CoveredBy scale carrier boxes small_8809375_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8809375_right_root small_8809375_right_fuel small_8809375_right_count small_8809375_right_encoded small_8809375_right_checked

theorem cover_8809375 : CoveredBy scale carrier boxes root_8809375 := by
  apply coveredBy_split_literal root_8809375 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0211.root_8809380 small_8809375_right_root coord4 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0211.cover_8809380
  · exact small_8809375_right_covered
#print axioms cover_8809375

def root_8809374 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8809374_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8809374_right_fuel : Nat := 17
def small_8809374_right_count : Nat := 191
def small_8809374_right_encoded : String := "135D4509000000040CFD9C010F34D10000000000045489FB1386AD04078000F8128A7D030280010613D7B0FD028000FE13D7ED090AD357810000000A10D13D00067ECE7B0000000612EA59040000000200000006000000000000000413D7B10900000004000000060000000313D7ECFD00000003028000FE13D7ED090AD3578110D1010000000000067ECE7B0000000612EA5904000000020000000600000006000000040000000600000001128A4103000000010280010613D7B0FD028000FE13D7ED090AD3578110D1010000000000067ECE7B0000000A12EA5904000000020000000A10D13D00067ECE7B0000000612EA590400000002064000F80000000600000006000000000000000413D7B109000000040AD3578110D10100000000000000000A000000060000000313D7ECFD00000003028000FE13D7ED090AD3578110D1010000000000067ECE7B0000000600000005000000060000000400000005000000021386710400000002078000F8128A7D030280010613D7B0FD028000FE13D7ED090AD357810000000A10D13D00022A457B0000000A00000008000000000000000413D7B109000000040AD357810000000810D13D0000000008000000000000000313D7ECFD00000003028000FE13D7ED090AD3578110D1010000000000022A457B0000000A0000000510D13D00022A457B13E2010408C000F80000000600000005000000020000000500000000000000040000000500000001128A4103000000010280010613D7B0FD028000FE13D7ED090AD3578110D10100000000000000000510D13D000000000800000000000000040000000500000003000000050F350D00045489FB0000000613867104000000020C9A87000F87510100000000000000090F878D01078000F8128A7D030280010613D7B0FD028000FE13D7ED09022A457B000000060000000800000004000000080000000313D7ECFD00000003028000FE13D7ED09022A457B0000000600000009000000040000000500000001128A4103000000010280010600000008000000050000000000000000"
theorem small_8809374_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8809374_right_root small_8809374_right_fuel small_8809374_right_count small_8809374_right_encoded = true := by
  decide +kernel
theorem small_8809374_right_covered : CoveredBy scale carrier boxes small_8809374_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8809374_right_root small_8809374_right_fuel small_8809374_right_count small_8809374_right_encoded small_8809374_right_checked

theorem cover_8809374 : CoveredBy scale carrier boxes root_8809374 := by
  apply coveredBy_split_literal root_8809374 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0211.root_8809375 small_8809374_right_root coord4 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0211.cover_8809375
  · exact small_8809374_right_covered
#print axioms cover_8809374

def root_8809369 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8809369_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16243968), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8809369_right_fuel : Nat := 1
def small_8809369_right_count : Nat := 1
def small_8809369_right_encoded : String := "00000003"
theorem small_8809369_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8809369_right_root small_8809369_right_fuel small_8809369_right_count small_8809369_right_encoded = true := by
  decide +kernel
theorem small_8809369_right_covered : CoveredBy scale carrier boxes small_8809369_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8809369_right_root small_8809369_right_fuel small_8809369_right_count small_8809369_right_encoded small_8809369_right_checked

theorem cover_8809369 : CoveredBy scale carrier boxes root_8809369 := by
  apply coveredBy_split_literal root_8809369 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0211.root_8809374 small_8809369_right_root coord3 true (-16243968)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0211.cover_8809374
  · exact small_8809369_right_covered
#print axioms cover_8809369

def root_8809368 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8809368 : CoveredBy scale carrier boxes root_8809368 := by
  apply coveredBy_split_literal root_8809368 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0211.root_8809369 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3298.root coord3 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0211.cover_8809369
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3298.covered
#print axioms cover_8809368

def root_8809363 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8809363_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8809363_right_fuel : Nat := 1
def small_8809363_right_count : Nat := 1
def small_8809363_right_encoded : String := "00000001"
theorem small_8809363_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8809363_right_root small_8809363_right_fuel small_8809363_right_count small_8809363_right_encoded = true := by
  decide +kernel
theorem small_8809363_right_covered : CoveredBy scale carrier boxes small_8809363_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8809363_right_root small_8809363_right_fuel small_8809363_right_count small_8809363_right_encoded small_8809363_right_checked

theorem cover_8809363 : CoveredBy scale carrier boxes root_8809363 := by
  apply coveredBy_split_literal root_8809363 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0211.root_8809368 small_8809363_right_root coord1 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0211.cover_8809368
  · exact small_8809363_right_covered
#print axioms cover_8809363

def root_8809362 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8809362_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8809362_right_fuel : Nat := 21
def small_8809362_right_count : Nat := 221
def small_8809362_right_encoded : String := "135D45030000000105000106135D44FD050000FE135D81090CFD9C010F34D10000000000045489FB1386AD04028000F813D7ED030280010613D7B0FD078000FE00000009128A4109000000040AD357810000000910D13D0000000007000000000000000313D7ECFD00000003078000FE00000009128A4109000000040AD357810000000910D13D0000000009000000000000000100000009000000021386710400000002028000F813D7ED030280010613D7B0FD078000FE128A7D090000000900000004128A4109000000040AD3578110D10100000000000000000510D13D0000000008000000000000000313D7ECFD00000003078000FE00000009000000050000000113D7B103000000010280010613D7B0FD078000FE000000090000000500000003000000050F350D00045489FB1386AD040C9A8700000000070F878D01028000F813D7ED030280010600000007000000070000000100000007000000000000000213867104000000020C9A87000F87510100000000028000F813D7ED0302800106000000070000000700000001000000070F878D01028000F813D7ED030280010613D7B0FD078000FE128A7D09022A457B000000070000000800000004000000080000000313D7ECFD00000003078000FE128A7D09022A457B0000000713E1C504000000020DE7CA00000000070000000500000004000000050000000113D7B10300000001028001060000000800000005000000000000000000000004135D4509000000040CFD9C010F34D10000000000045489FB1386AD04028000F813D7ED030280010613D7B0FD028000FE13D7ED090AD3578110D1010000000000067ECE7B000000090000000510D13D00067ECE7B00000006000000050000000000000004000000050000000300000005000000010000000500000002000000050F350D00045489FB0000000613867104000000020C9A870000000008000000050000000000000003135D80FD00000003050000FE135D81090CFD9C010F34D10000000000045489FB1386AD0400000009000000021386710400000002000000050F350D00045489FB1386AD040C9A8700000000060F878D01028000F80000000600000006000000000000000213867104000000020C9A87000F87510100000000028000F80000000A00000005000000050000000000000004135D4509000000040CFD9C010F34D100000000000000000500000005"
theorem small_8809362_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8809362_right_root small_8809362_right_fuel small_8809362_right_count small_8809362_right_encoded = true := by
  decide +kernel
theorem small_8809362_right_covered : CoveredBy scale carrier boxes small_8809362_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8809362_right_root small_8809362_right_fuel small_8809362_right_count small_8809362_right_encoded small_8809362_right_checked

theorem cover_8809362 : CoveredBy scale carrier boxes root_8809362 := by
  apply coveredBy_split_literal root_8809362 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0211.root_8809363 small_8809362_right_root coord1 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0211.cover_8809363
  · exact small_8809362_right_covered
#print axioms cover_8809362

def root_8809356 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8809356_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8809356_left_fuel : Nat := 1
def small_8809356_left_count : Nat := 1
def small_8809356_left_encoded : String := "00000002"
theorem small_8809356_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8809356_left_root small_8809356_left_fuel small_8809356_left_count small_8809356_left_encoded = true := by
  decide +kernel
theorem small_8809356_left_covered : CoveredBy scale carrier boxes small_8809356_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8809356_left_root small_8809356_left_fuel small_8809356_left_count small_8809356_left_encoded small_8809356_left_checked

theorem cover_8809356 : CoveredBy scale carrier boxes root_8809356 := by
  apply coveredBy_split_literal root_8809356 small_8809356_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0211.root_8809362 coord2 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_8809356_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0211.cover_8809362
#print axioms cover_8809356

def root_8808938 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8808938_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8808938_left_fuel : Nat := 20
def small_8808938_left_count : Nat := 193
def small_8808938_left_encoded : String := "12073D04050000F8135D810305000106135D44FD050000FE135D81090CFD9C010F34D100000000000CFD9BFB0F350D0400000009000000020F34D10400000002078000F8128A7D030280010613D7B0FD078000FE00000005128A4109000000040AD357810000000910D13D0000000006000000000000000313D7ECFD00000003078000FE00000009128A4109000000040000000600000001128A4103000000010280010613D7B0FD078000FE00000009128A4109000000040000000900000003000000090F350D000CFD9BFB000000070F34D104000000020C9A8700000000060F878D01078000F8128A7D030280010613D7B0FD0000000700000003000000060000000100000007000000000000000000000004135D4509000000040CFD9C010F34D100000000000CFD9BFB0F350D040C9A87040F8750FB000000060000000200000006000000020F34D10400000002078000F800000006000000060F350D000CFD9BFB000000060F34D10400000002000000060000000000000003135D80FD00000003050000FE135D81090CFD9C010F34D100000000000CFD9BFB000000080F34D10400000002078000F8128A7D030000000900000001000000090F350D000CFD9BFB0F350D040C9A87000000000600000008000000020F34D10400000002000000060000000000000004135D4509000000040CFD9C010F34D100000000000CFD9BFB000000060F34D10400000002000000060F350D000CFD9BFB000000060F34D10400000002000000060000000000000001135D45030000000105000106135D44FD050000FE135D81090CFD9C010F34D100000000000CFD9BFB00000007000000090000000700000004135D4509000000040CFD9C010F34D100000000000CFD9BFB000000060F34D10400000002000000060F350D00000000060000000000000003135D80FD00000003050000FE135D81090CFD9C010F34D10000000000000000090F350D000CFD9BFB000000060F34D10400000002000000060000000000000004135D4509000000040CFD9C01000000060F350D00000000060000000000000002"
theorem small_8808938_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8808938_left_root small_8808938_left_fuel small_8808938_left_count small_8808938_left_encoded = true := by
  decide +kernel
theorem small_8808938_left_covered : CoveredBy scale carrier boxes small_8808938_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8808938_left_root small_8808938_left_fuel small_8808938_left_count small_8808938_left_encoded small_8808938_left_checked

theorem cover_8808938 : CoveredBy scale carrier boxes root_8808938 := by
  apply coveredBy_split_literal root_8808938 small_8808938_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0211.root_8809356 coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_8808938_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0211.cover_8809356
#print axioms cover_8808938

def root_8808933 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8808933_right_root : ZRayBox := fun j => (#[⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8808933_right_fuel : Nat := 1
def small_8808933_right_count : Nat := 1
def small_8808933_right_encoded : String := "00000000"
theorem small_8808933_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8808933_right_root small_8808933_right_fuel small_8808933_right_count small_8808933_right_encoded = true := by
  decide +kernel
theorem small_8808933_right_covered : CoveredBy scale carrier boxes small_8808933_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8808933_right_root small_8808933_right_fuel small_8808933_right_count small_8808933_right_encoded small_8808933_right_checked

theorem cover_8808933 : CoveredBy scale carrier boxes root_8808933 := by
  apply coveredBy_split_literal root_8808933 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0211.root_8808938 small_8808933_right_root coord0 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0211.cover_8808938
  · exact small_8808933_right_covered
#print axioms cover_8808933

def root_8808311 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8808311_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8808311_left_fuel : Nat := 24
def small_8808311_left_count : Nat := 297
def small_8808311_left_encoded : String := "120701000000000008A912FB12073D04050000F8135D810305000106135D44FD050000FE00000009135D45090000000404548A01000000091386AD000CFD9BFB0F350D0400000009000000020F34D10400000002078000F80000000A000000090000000000000003135D80FD00000003050000FE00000009135D45090000000404548A011386710000000000000000091386AD000CFD9BFB000000060F34D10400000002000000060000000000000001135D45030000000105000106135D44FD050000FE00000009135D45090000000404548A01000000091386AD000CFD9BFB0000000900000009000000000000000300000009000000021207010400000002050000F8135D810305000106135D44FD050000FE135D810904548A011386710000000000045489FB000000091386710400000002078000F80000000A000000091386AD00045489FB000000091386710400000002078000F8128A7D03028001060000000A13D7ECFD00000003078000FE128A7D090000000900000004128A4109000000040000000A00000001128A410300000001028001060000000913D7ECFD00000003000000090000000000000004135D45090000000404548A0113867100000000000000000A1386AD00045489FB1386AD04078000F80000000A128A410300000001028001060000000A13D7ECFD00000003028000FE0000000900000005000000021386710400000002078000F80000000A128A410300000001028001060000000A000000050000000000000003135D80FD00000003050000FE135D810904548A011386710000000000045489FB000000091386710400000002078000F8128A7D0307800106128A40FD078000FE000000090000000900000003128A7CFD00000003078000FE000000090000000500000001000000091386AD00045489FB1386AD04078000F8128A7D03000000090000000100000009000000021386710400000002078000F8128A7D0307800106128A40FD078000FE128A7D090000000900000004128A410900000004067ECE8112EA590000000000022A457B000000090000000512EA9500022A457B13E201040000000900000002000000050000000000000003128A7CFD00000003078000FE128A7D0900000009000000040000000500000001128A41030000000107800106128A40FD078000FE000000090000000500000003000000050000000000000004135D45090000000404548A011386710000000000045489FB1386AD04078000F8128A7D030000000A000000010000000500000002000000051386AD00045489FB1386AD04078000F8128A7D0307800106128A40FD028000FE13D7ED09067ECE810000000912EA9500000000060000000000000004000000050000000300000005000000010000000500000002000000050000000000000001135D45030000000105000106135D44FD050000FE00000009135D45090000000404548A011386710000000000000000091386AD00045489FB1386AD04028000F813D7ED030280010613D7B0FD028000FE00000009000000050000000300000005000000010000000500000002000000050000000000000003135D80FD00000003050000FE135D810904548A0100000009000000090000000400000005"
theorem small_8808311_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8808311_left_root small_8808311_left_fuel small_8808311_left_count small_8808311_left_encoded = true := by
  decide +kernel
theorem small_8808311_left_covered : CoveredBy scale carrier boxes small_8808311_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8808311_left_root small_8808311_left_fuel small_8808311_left_count small_8808311_left_encoded small_8808311_left_checked

theorem cover_8808311 : CoveredBy scale carrier boxes root_8808311 := by
  apply coveredBy_split_literal root_8808311 small_8808311_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0211.root_8808933 coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_8808311_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0211.cover_8808933
#print axioms cover_8808311

def root_8808305 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8808305_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8808305_left_fuel : Nat := 1
def small_8808305_left_count : Nat := 1
def small_8808305_left_encoded : String := "00000004"
theorem small_8808305_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8808305_left_root small_8808305_left_fuel small_8808305_left_count small_8808305_left_encoded = true := by
  decide +kernel
theorem small_8808305_left_covered : CoveredBy scale carrier boxes small_8808305_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8808305_left_root small_8808305_left_fuel small_8808305_left_count small_8808305_left_encoded small_8808305_left_checked

theorem cover_8808305 : CoveredBy scale carrier boxes root_8808305 := by
  apply coveredBy_split_literal root_8808305 small_8808305_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0211.root_8808311 coord4 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_8808305_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0211.cover_8808311
#print axioms cover_8808305

def root_8804883 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8804883 : CoveredBy scale carrier boxes root_8804883 := by
  apply coveredBy_split_literal root_8804883 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0211.root_8804884 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0211.root_8808305 coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0211.cover_8804884
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0211.cover_8808305
#print axioms cover_8804883

def root_8804878 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8804878_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8804878_right_fuel : Nat := 1
def small_8804878_right_count : Nat := 1
def small_8804878_right_encoded : String := "00000003"
theorem small_8804878_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8804878_right_root small_8804878_right_fuel small_8804878_right_count small_8804878_right_encoded = true := by
  decide +kernel
theorem small_8804878_right_covered : CoveredBy scale carrier boxes small_8804878_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8804878_right_root small_8804878_right_fuel small_8804878_right_count small_8804878_right_encoded small_8804878_right_checked

theorem cover_8804878 : CoveredBy scale carrier boxes root_8804878 := by
  apply coveredBy_split_literal root_8804878 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0211.root_8804883 small_8804878_right_root coord3 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0211.cover_8804883
  · exact small_8804878_right_covered
#print axioms cover_8804878

def root_8804877 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8804877_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8804877_right_fuel : Nat := 30
def small_8804877_right_count : Nat := 463
def small_8804877_right_encoded : String := "115224FD000000030A0000FE1152250908A91301120701000000000008A912FB12073D0408A912FD12073D0600000009000000030000000900000002120701040000000208A912FD12073D0608A913090000000912073CFE00000004050000F8135D810304548A011386710000000000045489FB0000000913867104000000020CFD9BFD0F350D060000000900000003000000091386AD00045489FB0000000913867104000000020CFD9BFD0F350D060CFD9C09000000090F350CFE000000040000000900000003000000090000000000000001135D4503000000010000000900000003120701060000000308A913090000000912073CFE00000004050000F8000000080000000512073D0008A912FB12073D0408A912FD12073D0608A91309120700FE000000090000000412073CFE00000004050000F8135D81030CFD9C010F34D10000000000000000080000000800000001135D450300000001000000090000000312070106000000030000000800000002120701040000000208A912FD12073D0608A91309120700FE000000090000000412073CFE00000004050000F8135D81030CFD9C010F34D10000000000045489FB1386AD040CFD9BFD0F350D060000000900000003000000080000000213867104000000020CFD9BFD0F350D060CFD9C09000000090F350CFE000000040C9A87060F8750FD0C9A86FE000000090F87510900000004078000F80000000800000009000000030F878CFD000000030C9A86FE000000080F8751090000000400000005000000030F34D10600000003000000080F350D00045489FB1386AD040CFD9BFD0F350D060CFD9C090F34D0FE00000008000000040F350CFE000000040C9A87000F875101000000000C9A87060F8750FD0C9A86FE0000000700000006000000030000000600000008000000030F34D10600000003000000080000000213867104000000020CFD9BFD0F350D060CFD9C090F34D0FE0C9A87000F875101000000000C9A8706000000090000000800000009000000040F350CFE000000040C9A87000F875101000000000C9A87060F8750FD0C9A86FE0F878D090000000A000000040000000A000000030F878CFD000000030000000A0F878D010C9A87060F8750FD0C9A86FE0F878D09078000F80000000800000009000000040F87510900000004078000F800000008128A41030000000100000005000000030F878CFD000000030C9A86FE000000080000000A00000000000000030F34D106000000030CFD9C090000000A000000080000000000000001135D4503000000010CFD9C010F34D10000000000000000090F350D00045489FB1386AD040CFD9BFD0F350D060CFD9C09000000090F350CFE000000040000000900000003000000090000000213867104000000020CFD9BFD0F350D060CFD9C090F34D0FE00000009000000040F350CFE000000040C9A87000000000A0F878D010000000900000000000000030F34D106000000030000000A0000000000000003120701060000000308A913090000000912073CFE00000004050000F8000000080000000A00000000000000041151E9090000000408A91301120701000000000008A912FB12073D0408A912FD12073D06050000F8135D8103050000FE00000008135D45090000000404548A01000000060000000800000001135D45030000000100000009000000030000000900000002120701040000000208A912FD12073D06050000F8135D8103050000FE135D810904548A011386710000000000045489FB1386AD040CFD9BFD0F350D0600000009000000030000000500000002000000051386AD00045489FB1386AD040CFD9BFD0F350D060C9A87060000000900000005000000030000000500000002000000050000000000000004000000050000000100000005000000030000000512073D0008A912FB12073D0408A912FD12073D06050000F8135D8103050000FE135D81090CFD9C010F34D10000000000000000080000000800000004135D4509000000040CFD9C010F34D100000000000CFD9BFB000000060F34D10400000002000000060F350D000CFD9BFB000000060F34D10400000002000000060000000000000001135D450300000001050000FE135D81090CFD9C010F34D10000000000000000090F350D00000000060000000000000004135D450900000004000000060000000312070106000000030000000600000002120701040000000208A912FD12073D06050000F8135D8103050000FE135D81090CFD9C010F34D10000000000045489FB1386AD040CFD9BFD0F350D060C9A87060F8750FD0000000600000003000000050000000300000006000000021386710400000002000000050F350D00045489FB0000000613867104000000020CFD9BFD0F350D060000000600000003000000050000000000000004135D4509000000040CFD9C010F34D10000000000000000050000000500000001135D450300000001050000FE135D81090CFD9C010F34D10000000000000000050000000500000004000000050000000312070106000000030000000500000000"
theorem small_8804877_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8804877_right_root small_8804877_right_fuel small_8804877_right_count small_8804877_right_encoded = true := by
  decide +kernel
theorem small_8804877_right_covered : CoveredBy scale carrier boxes small_8804877_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8804877_right_root small_8804877_right_fuel small_8804877_right_count small_8804877_right_encoded small_8804877_right_checked

theorem cover_8804877 : CoveredBy scale carrier boxes root_8804877 := by
  apply coveredBy_split_literal root_8804877 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0211.root_8804878 small_8804877_right_root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0211.cover_8804878
  · exact small_8804877_right_covered
#print axioms cover_8804877

def root_8804871 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8804871_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8804871_left_fuel : Nat := 1
def small_8804871_left_count : Nat := 1
def small_8804871_left_encoded : String := "00000002"
theorem small_8804871_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8804871_left_root small_8804871_left_fuel small_8804871_left_count small_8804871_left_encoded = true := by
  decide +kernel
theorem small_8804871_left_covered : CoveredBy scale carrier boxes small_8804871_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8804871_left_root small_8804871_left_fuel small_8804871_left_count small_8804871_left_encoded small_8804871_left_checked

theorem cover_8804871 : CoveredBy scale carrier boxes root_8804871 := by
  apply coveredBy_split_literal root_8804871 small_8804871_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0211.root_8804877 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_8804871_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0211.cover_8804877
#print axioms cover_8804871

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0211
