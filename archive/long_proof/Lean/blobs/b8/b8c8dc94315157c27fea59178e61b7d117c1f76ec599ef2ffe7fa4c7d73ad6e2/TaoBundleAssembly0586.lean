import TaoBundleAssembly0585
import TaoBundleChunkBatch0798
import TaoBundleChunkBatch0799
import TaoBundleChunkBatch0800
import TaoBundleChunkBatch0801
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0586
def root_8534306 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8534306_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8534306_left_fuel : Nat := 26
def small_8534306_left_count : Nat := 403
def small_8534306_left_encoded : String := "115225030A0000FA115224FB000000020A0000FC115224FD000000030A0001081151E9090000000408A91301120701000000000008A913030000000512073CF80000000108A912FB00000005120700FA000000090000000212073D0008A91303120700F808A912FB00000005120700FA08A912FD0000000500000009000000020000000112073CF80000000108A912FB12073CFA0000000208A912FD00000005120700FC0500010800000009135D81090CFD9C01000000050F350D000CFD9C03000000050F350CF80000000100000005000000000000000400000003120700FA08A912FD12073CFC000000030500010800000009135D81090CFD9C010000000500000009000000040000000900000002000000001152250908A91301120701000000000008A913030000000512073CF80000000108A912FB00000005120700FA000000050000000212073D0008A91303120700F8000000050000000112073CF80000000108A912FB12073CFA0000000208A912FD00000005120700FC0000000500000003120700FA08A912FD00000005120700FC08A913090000000512073D080CFD9C010F34D10000000000000000090F350D00000000080000000000000004000000030000000200000000000000041151E8FD0A000108000000051152250908A91301120701000000000008A91303120700F808A912FB12073CFA0000000208A913090000000900000005000000050000000112073CF80000000108A912FB12073CFA0000000208A913091207010800000004050000FC00000005135D44FD0000000600000003000000050000000512073D0008A913030000000512073CF80000000108A912FB00000005120700FA00000005000000020000000000000004000000031151E8FB0A0000FC115224FD000000030A000108000000051152250908A91301120701000000000008A91303120700F808A912FD12073CFC0000000308A9130912070108000000040000000800000005000000050000000112073CF80000000108A912FD12073CFC0000000308A913091207010800000004050000FA00000005135D44FB0000000A00000002000000050000000512073D0008A913030000000512073CF80000000108A912FD00000005120700FC000000050000000300000000000000041151E8FD0A0001081151E90900000004000000051152250908A91301120701000000000008A91303120700F808A913091207010800000004050000FA135D80FB00000002050000FC135D80FD000000030000000800000006135D44FB050000FC00000008135D44FD04548A010000000700000006000000030000000212073D08050000FA00000005135D44FB0000000A00000002000000040000000112073CF80000000108A913091207010800000004050000FA135D80FB00000002050000FC135D80FD0000000304548A0113867100000000000CFD9C030000000A0000000500000005135D44FD04548A0113867100000000000CFD9C0300000009000000060000000600000003135D44FB050000FC135D80FD0000000304548A010000000A1386AD000CFD9C03000000080000000A00000000135D44FD04548A01000000071386AD000CFD9C030F34D0F800000006000000010F350CF80000000104548A09000000061386AD080C9A86F8000000060F87510300000001000000060000000400000000000000030000000212073D08050000FA00000005135D44FB050000FC00000005135D44FD04548A0113867100000000000CFD9C03000000090000000A1386AD000CFD9C030F34D0F800000005000000010F350CF8000000010CFD9C090F34D108000000040C9A86F8000000050F8751030000000100000005000000050000000000000003000000020000000412073D0008A91303120700F808A913091207010800000004050000FA00000005135D44FB050000FC000000050000000600000002000000050000000112073CF80000000108A913091207010800000004050000FA00000005135D44FB050000FC00000005135D44FD0CFD9C010F34D100000000000CFD9C030F34D0F800000005000000010F350CF80000000104548A09000000061386AD080C9A86F8000000050F8751030000000100000005000000040F350D000000000500000000000000030000000212073D08050000FA00000005135D44FB0000000500000002000000040000000000000004000000030000000200000001"
theorem small_8534306_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8534306_left_root small_8534306_left_fuel small_8534306_left_count small_8534306_left_encoded = true := by
  decide +kernel
theorem small_8534306_left_covered : CoveredBy scale carrier boxes small_8534306_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8534306_left_root small_8534306_left_fuel small_8534306_left_count small_8534306_left_encoded small_8534306_left_checked

theorem cover_8534306 : CoveredBy scale carrier boxes root_8534306 := by
  apply coveredBy_split_literal root_8534306 small_8534306_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0585.root_8535158 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact small_8534306_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0585.cover_8535158
#print axioms cover_8534306

def root_8534301 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8534301_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8534301_right_fuel : Nat := 1
def small_8534301_right_count : Nat := 1
def small_8534301_right_encoded : String := "00000000"
theorem small_8534301_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8534301_right_root small_8534301_right_fuel small_8534301_right_count small_8534301_right_encoded = true := by
  decide +kernel
theorem small_8534301_right_covered : CoveredBy scale carrier boxes small_8534301_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8534301_right_root small_8534301_right_fuel small_8534301_right_count small_8534301_right_encoded small_8534301_right_checked

theorem cover_8534301 : CoveredBy scale carrier boxes root_8534301 := by
  apply coveredBy_split_literal root_8534301 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0586.root_8534306 small_8534301_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0586.cover_8534306
  · exact small_8534301_right_covered
#print axioms cover_8534301

def root_8533545 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8533545_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8533545_left_fuel : Nat := 22
def small_8533545_left_count : Nat := 351
def small_8533545_left_encoded : String := "1151E901000000000A0000F8115225030A0000FA115224FB000000020A0000FC115224FD000000030A0001081151E9090000000408A91303120700F808A912FB12073CFA0000000208A912FD12073CFC0000000300000005120700FC05000100135D450100000000000000070000000900000003120700FA08A912FD12073CFC000000030500010000000008135D810105000108000000070000000500000000120700FC0000000700000003000000020000000112073CF80000000108A912FB12073CFA0000000208A912FD12073CFC000000030500010000000007135D81010000000500000000120700FC05000100135D45010000000000000007135D810105000108135D45090000000400000007135D81090CFD9C03000000070F350CF80000000100000007000000040000000000000003120700FA08A912FD12073CFC0000000305000100135D45010000000000000007135D810105000108135D45090000000400000007135D81090CFD9C03000000070F350CF800000001000000070000000400000000120700FC05000100000000080000000900000003000000021152250908A91303120700F808A912FB00000005120700FA08A912FD00000005120700FC0000000800000003000000020000000112073CF80000000108A912FB12073CFA0000000208A912FD00000005120700FC08A913090000000512073D080500010000000008135D81010CFD9C030000000500000008000000000000000400000003120700FA08A912FD12073CFC0000000308A913090000000512073D080500010000000008135D81010CFD9C03000000050F350CF800000001000000050000000000000004120700FC000000080000000300000002000000041151E8FD0A0001081151E9090000000408A913030000000512073CF80000000100000005115225090000000500000004000000031151E8FB0A0000FC115224FD000000030A0001081151E9090000000408A913030000000512073CF800000001000000051152250900000005000000041151E8FD000000050000000300000002000000011151E903000000010A0000FA115224FB000000020A0000FC115224FD000000030A0001081151E9090000000408A912FB12073CFA0000000208A912FD00000007120700FC0000000700000003120700FA08A912FD00000007120700FC0000000700000003000000021152250908A912FB12073CFA0000000208A912FD12073CFC0000000308A913090000000512073D080000000500000004120700FC0000000800000003120700FA08A912FD12073CFC0000000308A913090000000512073D080500010000000008135D8101050000F8135D8103045489FB000000050000000800000001135D450300000001045489FB00000005000000070000000000000004120700FC000000080000000300000002000000041151E8FD0A0001081151E90900000004000000071152250908A912FB12073CFA0000000208A913090000000512073D080500010000000005135D8101000000050000000000000004120700FA08A913090000000512073D080500010000000005135D8101050000F800000005135D450300000001050000FC000000050000000A00000000000000040000000200000004000000031151E8FB0A0000FC115224FD000000030A0001081151E90900000004000000071152250908A912FD12073CFC0000000308A913090000000512073D080500010000000005135D8101000000050000000000000004120700FC08A91309000000050000000800000003000000041151E8FD0A000108000000051152250908A9130912070108000000040500010000000005135D8101050000F800000005000000080000000012073D080500010000000005135D8101050000F800000005000000070000000000000004000000040000000300000002"
theorem small_8533545_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8533545_left_root small_8533545_left_fuel small_8533545_left_count small_8533545_left_encoded = true := by
  decide +kernel
theorem small_8533545_left_covered : CoveredBy scale carrier boxes small_8533545_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8533545_left_root small_8533545_left_fuel small_8533545_left_count small_8533545_left_encoded small_8533545_left_checked

theorem cover_8533545 : CoveredBy scale carrier boxes root_8533545 := by
  apply coveredBy_split_literal root_8533545 small_8533545_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0586.root_8534301 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_8533545_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0586.cover_8534301
#print axioms cover_8533545

def root_8532257 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8532257 : CoveredBy scale carrier boxes root_8532257 := by
  apply coveredBy_split_literal root_8532257 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3192.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0586.root_8533545 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3192.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0586.cover_8533545
#print axioms cover_8532257

def root_8529361 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8529361 : CoveredBy scale carrier boxes root_8529361 := by
  apply coveredBy_split_literal root_8529361 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3191.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0586.root_8532257 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3191.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0586.cover_8532257
#print axioms cover_8529361

def root_8540699 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8540699 : CoveredBy scale carrier boxes root_8540699 := by
  apply coveredBy_split_literal root_8540699 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3195.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3196.root coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3195.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3196.covered
#print axioms cover_8540699

def root_8540693 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8540693_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8540693_left_fuel : Nat := 1
def small_8540693_left_count : Nat := 1
def small_8540693_left_encoded : String := "00000004"
theorem small_8540693_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8540693_left_root small_8540693_left_fuel small_8540693_left_count small_8540693_left_encoded = true := by
  decide +kernel
theorem small_8540693_left_covered : CoveredBy scale carrier boxes small_8540693_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8540693_left_root small_8540693_left_fuel small_8540693_left_count small_8540693_left_encoded small_8540693_left_checked

theorem cover_8540693 : CoveredBy scale carrier boxes root_8540693 := by
  apply coveredBy_split_literal root_8540693 small_8540693_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0586.root_8540699 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_8540693_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0586.cover_8540699
#print axioms cover_8540693

def root_8540692 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8540692_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8540692_right_fuel : Nat := 13
def small_8540692_right_count : Nat := 41
def small_8540692_right_encoded : String := "1151E8FF08A912FB12073CFA0000000208A913070000000512073CFC0000000300000005120700FA08A913070000000612073CFC0000000305000100135D450100000000050000F8135D8103050000FE00000007135D44FF000000070000000400000001135D450300000001050000FE135D80FF00000004045489FB000000050000000600000005135D8101050000F80000000600000005000000000000000200000004"
theorem small_8540692_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8540692_right_root small_8540692_right_fuel small_8540692_right_count small_8540692_right_encoded = true := by
  decide +kernel
theorem small_8540692_right_covered : CoveredBy scale carrier boxes small_8540692_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8540692_right_root small_8540692_right_fuel small_8540692_right_count small_8540692_right_encoded small_8540692_right_checked

theorem cover_8540692 : CoveredBy scale carrier boxes root_8540692 := by
  apply coveredBy_split_literal root_8540692 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0586.root_8540693 small_8540692_right_root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0586.cover_8540693
  · exact small_8540692_right_covered
#print axioms cover_8540692

def root_8540687 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8540687_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8540687_right_fuel : Nat := 1
def small_8540687_right_count : Nat := 1
def small_8540687_right_encoded : String := "00000003"
theorem small_8540687_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8540687_right_root small_8540687_right_fuel small_8540687_right_count small_8540687_right_encoded = true := by
  decide +kernel
theorem small_8540687_right_covered : CoveredBy scale carrier boxes small_8540687_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8540687_right_root small_8540687_right_fuel small_8540687_right_count small_8540687_right_encoded small_8540687_right_checked

theorem cover_8540687 : CoveredBy scale carrier boxes root_8540687 := by
  apply coveredBy_split_literal root_8540687 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0586.root_8540692 small_8540687_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0586.cover_8540692
  · exact small_8540687_right_covered
#print axioms cover_8540687

def root_8540686 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8540686_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8540686_right_fuel : Nat := 26
def small_8540686_right_count : Nat := 327
def small_8540686_right_encoded : String := "1151E907000000030A0000FE115224FF0000000408A912FB12073CFA0000000208A912FF12073CFE0000000405000100135D450100000000050000F8135D8103050000FC135D81070CFD9BFB0F350CFA00000002000000080000000700000003135D4507000000030CFD9BFB000000050000000700000001135D450300000001050000FC135D81070CFD9BFB000000050F34D0FA0CFD9BFF000000050F34D0FE0280010013D7B10100000000028000F80000000713D7B10300000001078000FC000000080000000813D7ED010000000700000000000000040000000200000003135D4507000000030CFD9BFB000000050F34D0FA0000000700000002135D8101050000F8135D8103050000FC000000070000000500000001135D450300000001050000FC135D810700000005000000030000000500000000120700FE05000100135D450100000000050000F800000008135D450300000001050000FC135D81070CFD9BFB000000080F34D0FA045489FF1386ACFE00000004028001000000000800000008138670FE0000000800000004000000020000000300000008135D8101050000F800000008135D450300000001050000FC135D81070CFD9BFB000000080F34D0FA045489FF00000008000000080000000200000003000000080000000000000004120700FA08A912FF12073CFE0000000405000100135D450100000000050000F800000007135D450300000001050000FC135D8107045489FB00000007000000070000000300000007135D8101050000F800000007135D4503000000010000000700000000120700FE05000100135D450100000000050000F8135D8103050000FC135D8107045489FB1386ACFA000000020000000900000009000000030000000900000001135D450300000001050000FC135D8107045489FB1386ACFA00000002045489FF1386ACFE000000040280010013D7B10100000000028000F80000000713D7B10300000001078000FC128A7D07067ECE7B12EA94FA000000020000000900000009000000030000000913D7ED01028000F80000000713D7B10300000001078000FC128A7D07067ECE7B0000000800000007000000030000000700000000138670FE028001000000000913D7ED01028000F80000000813D7B10300000001000000090000000000000004138670FA045489FF1386ACFE0000000400000007000000050000000200000003135D450700000003045489FB1386ACFA00000002045489FF000000070000000900000007135D8101050000F8135D8103050000FC135D8107045489FB1386ACFA00000002045489FF000000070000000800000007000000030000000700000001135D450300000001050000FC135D8107045489FB1386ACFA00000002045489FF1386ACFE0000000407800100128A410100000000028000F80000000713D7B103000000010000000700000007138670FE07800100128A410100000000028000F80000000813D7B10300000001078000FC128A7D07067ECE7B0000000812EA58FA00000009000000020000000300000008128A7D01028000F80000000813D7B10300000001078000FC00000008000000080000000000000004138670FA045489FF00000007138670FE07800100128A41010000000000000005128A7D01028000F80000000713D7B10300000001078000FC128A7D0700000007000000030000000700000000000000040000000200000003135D450700000003045489FB1386ACFA0000000200000007000000070000000000000004000000021151E8FF08A912FB000000050000000700000004"
theorem small_8540686_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8540686_right_root small_8540686_right_fuel small_8540686_right_count small_8540686_right_encoded = true := by
  decide +kernel
theorem small_8540686_right_covered : CoveredBy scale carrier boxes small_8540686_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8540686_right_root small_8540686_right_fuel small_8540686_right_count small_8540686_right_encoded small_8540686_right_checked

theorem cover_8540686 : CoveredBy scale carrier boxes root_8540686 := by
  apply coveredBy_split_literal root_8540686 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0586.root_8540687 small_8540686_right_root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0586.cover_8540687
  · exact small_8540686_right_covered
#print axioms cover_8540686

def root_8540680 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8540680_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8540680_left_fuel : Nat := 1
def small_8540680_left_count : Nat := 1
def small_8540680_left_encoded : String := "00000002"
theorem small_8540680_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8540680_left_root small_8540680_left_fuel small_8540680_left_count small_8540680_left_encoded = true := by
  decide +kernel
theorem small_8540680_left_covered : CoveredBy scale carrier boxes small_8540680_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8540680_left_root small_8540680_left_fuel small_8540680_left_count small_8540680_left_encoded small_8540680_left_checked

theorem cover_8540680 : CoveredBy scale carrier boxes root_8540680 := by
  apply coveredBy_split_literal root_8540680 small_8540680_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0586.root_8540686 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_8540680_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0586.cover_8540686
#print axioms cover_8540680

def root_8540679 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8540679_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8540679_right_fuel : Nat := 17
def small_8540679_right_count : Nat := 73
def small_8540679_right_encoded : String := "1151E8FB0A0000FC115225070A0000FE115224FF0000000408A91307120700FC08A912FF00000005120700FE05000100135D450100000000050000F8135D8103050000FA135D80FB0000000204548A07000000050000000A00000005000000010000000500000005000000040000000312073CFC0000000308A912FF12073CFE0000000400000005120700FE05000100135D450100000000050000F800000008135D450300000001050000FA135D80FB000000020CFD9C07000000050000000800000005135D8101050000F8000000080000000500000000000000041151E8FF0000000500000004000000031151E907000000030A0000FE115224FF0000000408A912FF00000005120700FE00000008000000041151E8FF000000050000000400000002"
theorem small_8540679_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8540679_right_root small_8540679_right_fuel small_8540679_right_count small_8540679_right_encoded = true := by
  decide +kernel
theorem small_8540679_right_covered : CoveredBy scale carrier boxes small_8540679_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8540679_right_root small_8540679_right_fuel small_8540679_right_count small_8540679_right_encoded small_8540679_right_checked

theorem cover_8540679 : CoveredBy scale carrier boxes root_8540679 := by
  apply coveredBy_split_literal root_8540679 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0586.root_8540680 small_8540679_right_root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0586.cover_8540680
  · exact small_8540679_right_covered
#print axioms cover_8540679

def root_8540673 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8540673_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8540673_left_fuel : Nat := 1
def small_8540673_left_count : Nat := 1
def small_8540673_left_encoded : String := "00000001"
theorem small_8540673_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8540673_left_root small_8540673_left_fuel small_8540673_left_count small_8540673_left_encoded = true := by
  decide +kernel
theorem small_8540673_left_covered : CoveredBy scale carrier boxes small_8540673_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8540673_left_root small_8540673_left_fuel small_8540673_left_count small_8540673_left_encoded small_8540673_left_checked

theorem cover_8540673 : CoveredBy scale carrier boxes root_8540673 := by
  apply coveredBy_split_literal root_8540673 small_8540673_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0586.root_8540679 coord1 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_8540673_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0586.cover_8540679
#print axioms cover_8540673

def root_8538519 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8538519 : CoveredBy scale carrier boxes root_8538519 := by
  apply coveredBy_split_literal root_8538519 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3194.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0586.root_8540673 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3194.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0586.cover_8540673
#print axioms cover_8538519

def root_8538513 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8538513_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8538513_left_fuel : Nat := 1
def small_8538513_left_count : Nat := 1
def small_8538513_left_encoded : String := "00000000"
theorem small_8538513_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8538513_left_root small_8538513_left_fuel small_8538513_left_count small_8538513_left_encoded = true := by
  decide +kernel
theorem small_8538513_left_covered : CoveredBy scale carrier boxes small_8538513_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8538513_left_root small_8538513_left_fuel small_8538513_left_count small_8538513_left_encoded small_8538513_left_checked

theorem cover_8538513 : CoveredBy scale carrier boxes root_8538513 := by
  apply coveredBy_split_literal root_8538513 small_8538513_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0586.root_8538519 coord0 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_8538513_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0586.cover_8538519
#print axioms cover_8538513

def root_8538512 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8538512 : CoveredBy scale carrier boxes root_8538512 := by
  apply coveredBy_split_literal root_8538512 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0586.root_8538513 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3197.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0586.cover_8538513
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3197.covered
#print axioms cover_8538512

def root_8550288 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8550288 : CoveredBy scale carrier boxes root_8550288 := by
  apply coveredBy_split_literal root_8550288 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3199.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3200.root coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3199.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3200.covered
#print axioms cover_8550288

def root_8550282 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8550282_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8550282_left_fuel : Nat := 1
def small_8550282_left_count : Nat := 1
def small_8550282_left_encoded : String := "00000000"
theorem small_8550282_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8550282_left_root small_8550282_left_fuel small_8550282_left_count small_8550282_left_encoded = true := by
  decide +kernel
theorem small_8550282_left_covered : CoveredBy scale carrier boxes small_8550282_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8550282_left_root small_8550282_left_fuel small_8550282_left_count small_8550282_left_encoded small_8550282_left_checked

theorem cover_8550282 : CoveredBy scale carrier boxes root_8550282 := by
  apply coveredBy_split_literal root_8550282 small_8550282_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0586.root_8550288 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_8550282_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0586.cover_8550288
#print axioms cover_8550282

def root_8550281 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8550281 : CoveredBy scale carrier boxes root_8550281 := by
  apply coveredBy_split_literal root_8550281 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0586.root_8550282 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3201.root coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0586.cover_8550282
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3201.covered
#print axioms cover_8550281

def root_8550276 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8550276_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8550276_right_fuel : Nat := 1
def small_8550276_right_count : Nat := 1
def small_8550276_right_encoded : String := "00000004"
theorem small_8550276_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8550276_right_root small_8550276_right_fuel small_8550276_right_count small_8550276_right_encoded = true := by
  decide +kernel
theorem small_8550276_right_covered : CoveredBy scale carrier boxes small_8550276_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8550276_right_root small_8550276_right_fuel small_8550276_right_count small_8550276_right_encoded small_8550276_right_checked

theorem cover_8550276 : CoveredBy scale carrier boxes root_8550276 := by
  apply coveredBy_split_literal root_8550276 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0586.root_8550281 small_8550276_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0586.cover_8550281
  · exact small_8550276_right_covered
#print axioms cover_8550276

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0586
