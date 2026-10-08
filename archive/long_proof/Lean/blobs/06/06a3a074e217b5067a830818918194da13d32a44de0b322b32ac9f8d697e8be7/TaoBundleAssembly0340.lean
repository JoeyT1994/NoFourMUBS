import TaoBundleChunkBatch0444
import TaoBundleChunkBatch0445
import TaoBundleChunkBatch0446
import TaoBundleChunkBatch0447
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0340
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
  apply coveredBy_split_literal root_4745382 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0340.root_4745387 small_4745382_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0340.cover_4745387
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
  apply coveredBy_split_literal root_4744996 small_4744996_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0340.root_4745382 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_4744996_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0340.cover_4745382
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
  apply coveredBy_split_literal root_4744991 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0340.root_4744996 small_4744991_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0340.cover_4744996
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
  apply coveredBy_split_literal root_4744990 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0340.root_4744991 small_4744990_right_root coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0340.cover_4744991
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
  apply coveredBy_split_literal root_4750110 small_4750110_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0340.root_4750116 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_4750110_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0340.cover_4750116
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
  apply coveredBy_split_literal root_4749966 small_4749966_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0340.root_4750110 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_4749966_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0340.cover_4750110
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
  apply coveredBy_split_literal root_4749960 small_4749960_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0340.root_4749966 coord1 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_4749960_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0340.cover_4749966
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
  apply coveredBy_split_literal root_4762957 small_4762957_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0340.root_4762963 coord4 false (12755968)
  · decide +kernel
  · decide +kernel
  · exact small_4762957_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0340.cover_4762963
#print axioms cover_4762957

def root_4762956 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4762956 : CoveredBy scale carrier boxes root_4762956 := by
  apply coveredBy_split_literal root_4762956 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0340.root_4762957 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1783.root coord4 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0340.cover_4762957
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
  apply coveredBy_split_literal root_4762950 small_4762950_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0340.root_4762956 coord3 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_4762950_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0340.cover_4762956
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
  apply coveredBy_split_literal root_4762368 small_4762368_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0340.root_4762950 coord3 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact small_4762368_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0340.cover_4762950
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
  apply coveredBy_split_literal root_4762362 small_4762362_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0340.root_4762368 coord2 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_4762362_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0340.cover_4762368
#print axioms cover_4762362

def root_4761248 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4761248 : CoveredBy scale carrier boxes root_4761248 := by
  apply coveredBy_split_literal root_4761248 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1780.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0340.root_4762362 coord2 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1780.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0340.cover_4762362
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
  apply coveredBy_split_literal root_4761242 small_4761242_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0340.root_4761248 coord1 false (12755968)
  · decide +kernel
  · decide +kernel
  · exact small_4761242_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0340.cover_4761248
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
  apply coveredBy_split_literal root_4777285 small_4777285_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0340.root_4777291 coord2 false (16678144)
  · decide +kernel
  · decide +kernel
  · exact small_4777285_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0340.cover_4777291
#print axioms cover_4777285

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0340
