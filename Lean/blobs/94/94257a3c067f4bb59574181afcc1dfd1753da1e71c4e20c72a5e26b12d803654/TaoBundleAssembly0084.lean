import TaoBundleAssembly0083
import TaoBundleChunkBatch0332
import TaoBundleChunkBatch0333
import TaoBundleChunkBatch0334
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0084
def root_3476169 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3476169_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3476169_left_fuel : Nat := 27
def small_3476169_left_count : Nat := 299
def small_3476169_left_encoded : String := "1151E8FF08A91303120700F808A912FB12073D0408A912FD0000000A1207010600000003050000F6135D8101050001080000000A135D80FF0000000404548A030000000A1386ACF8000000010CFD9BFB0000000A0000000A000000000000000A0000000212070104000000020000000A0000000112073CF80000000108A912FB12073D0408A912FD12073D06050000F6135D810105000108135D44FF0CFD9C030000000A0F350CF8000000010CFD9BFB0F350D040CFD9BFD0000000A00000005000000020000000A00000004135D80FF000000040CFD9C030F34D0F80000000A000000010F350CF8000000010CFD9BFB0F350D040CFD9BFD0000000A0F34D106000000030C9A86F80F878D030000000A000000010F875103000000010C9A8704000000050000000A000000020F34D104000000020000000A00000000135D450100000000050001080000000A135D80FF000000040CFD9C030000000A0F350CF8000000010000000A000000031207010600000003050000F6135D810105000108135D44FF0CFD9C030F34D0F800000005000000010F350CF8000000010CFD9BFB0F350D0400000005000000020F34D10400000002045489FD0000000A0000000500000004135D80FF000000040CFD9C030F34D0F80CFD9BFB0F350D04045489FD0000000A00000005000000020F34D104000000020000000A000000010F350CF8000000010CFD9BFB0F350D04045489FD1386AD060C9A86F80F878D030C9A8704000000050000000A000000010F875103000000010C9A8704000000050F878CFB00000002078000F6000000050000000A0000000313867106000000030C9A86F8000000050F875103000000010C9A8704000000050F878CFB00000002078000F600000005128A4101000000000780010800000005128A7CFF00000004022A457D0000000A00000008000000020F34D10400000002045489FD0000000A13867106000000030C9A86F80F878D03078000F6000000050000000A000000010F87510300000001078000F6128A7D010780010800000007128A7CFF000000040AD3577B10D13D04022A457D00000007000000080000000210D10104000000020000000A00000000128A4101000000000000000A00000000135D45010000000005000108135D44FF0CFD9C030000000A0F350CF8000000010CFD9BFB0F350D04045489FD0000000A00000008000000020F34D104000000020000000A00000004135D80FF000000040CFD9C030F34D0F80000000A000000010F350CF8000000010CFD9BFB0F350D04045489FD1386AD060000000A0000000313867106000000030C9A86F80F878D030C9A87040000000600000008000000010F875103000000010C9A87040F8750FB028000F613D7ED01078001080000000500000006000000000000000A000000020F878CFB000000020000000A000000020F34D104000000020000000A00000002120701040000000208A912FD0000000A1207010600000003050000F6135D810105000108135D44FF0CFD9C030000000A0F350CF8000000010000000A00000004135D80FF000000040CFD9C030000000A0F350CF800000001045489FB1386AD04045489FD0000000A13867106000000030000000A000000020000000A000000000000000A00000004"
theorem small_3476169_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3476169_left_root small_3476169_left_fuel small_3476169_left_count small_3476169_left_encoded = true := by
  decide +kernel
theorem small_3476169_left_covered : CoveredBy scale carrier boxes small_3476169_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3476169_left_root small_3476169_left_fuel small_3476169_left_count small_3476169_left_encoded small_3476169_left_checked

theorem cover_3476169 : CoveredBy scale carrier boxes root_3476169 := by
  apply coveredBy_split_literal root_3476169 small_3476169_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0083.root_3476801 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_3476169_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0083.cover_3476801
#print axioms cover_3476169

def root_3476163 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3476163_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3476163_left_fuel : Nat := 1
def small_3476163_left_count : Nat := 1
def small_3476163_left_encoded : String := "00000003"
theorem small_3476163_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3476163_left_root small_3476163_left_fuel small_3476163_left_count small_3476163_left_encoded = true := by
  decide +kernel
theorem small_3476163_left_covered : CoveredBy scale carrier boxes small_3476163_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3476163_left_root small_3476163_left_fuel small_3476163_left_count small_3476163_left_encoded small_3476163_left_checked

theorem cover_3476163 : CoveredBy scale carrier boxes root_3476163 := by
  apply coveredBy_split_literal root_3476163 small_3476163_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0084.root_3476169 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_3476163_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0084.cover_3476169
#print axioms cover_3476163

def root_3475983 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3475983_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3475983_left_fuel : Nat := 16
def small_3475983_left_count : Nat := 83
def small_3475983_left_encoded : String := "1151E8FD0A0001081151E8FF08A913030000000A12073CF80000000108A912FB0000000A0000000A00000004115224FF0000000408A91303120700F808A912FB12073D0408A912FF12073D08050000F6135D810105000106135D44FD0000000A000000030000000A00000000135D45010000000005000106135D44FD0000000A000000030000000A00000004120701080000000400000009000000021207010400000002000000090000000112073CF80000000108A912FB12073D0408A912FF12073D08050000F6135D810105000106135D44FD0CFD9C030000000A0000000900000003135D80FD000000030CFD9C030000000A0F350CF8000000010000000A00000000135D45010000000005000106135D44FD0CFD9C030000000A0000000A000000030000000A000000041207010800000004000000090000000212070104000000020000000900000003"
theorem small_3475983_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3475983_left_root small_3475983_left_fuel small_3475983_left_count small_3475983_left_encoded = true := by
  decide +kernel
theorem small_3475983_left_covered : CoveredBy scale carrier boxes small_3475983_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3475983_left_root small_3475983_left_fuel small_3475983_left_count small_3475983_left_encoded small_3475983_left_checked

theorem cover_3475983 : CoveredBy scale carrier boxes root_3475983 := by
  apply coveredBy_split_literal root_3475983 small_3475983_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0084.root_3476163 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_3475983_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0084.cover_3476163
#print axioms cover_3475983

def root_3475977 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3475977_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3475977_left_fuel : Nat := 1
def small_3475977_left_count : Nat := 1
def small_3475977_left_encoded : String := "00000002"
theorem small_3475977_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3475977_left_root small_3475977_left_fuel small_3475977_left_count small_3475977_left_encoded = true := by
  decide +kernel
theorem small_3475977_left_covered : CoveredBy scale carrier boxes small_3475977_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3475977_left_root small_3475977_left_fuel small_3475977_left_count small_3475977_left_encoded small_3475977_left_checked

theorem cover_3475977 : CoveredBy scale carrier boxes root_3475977 := by
  apply coveredBy_split_literal root_3475977 small_3475977_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0084.root_3475983 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_3475977_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0084.cover_3475983
#print axioms cover_3475977

def root_3475127 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3475127_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3475127_left_fuel : Nat := 22
def small_3475127_left_count : Nat := 393
def small_3475127_left_encoded : String := "1151E8FB0A0001061151E8FD0A0001081151E8FF08A913030000000A12073CF800000001050000F600000005135D45010000000005000104000000050000000A00000004115224FF0000000408A91303120700F808A912FF000000061207010800000004000000060000000112073CF80000000108A912FF12073D08050000F6135D810105000104135D44FB05000106000000050000000600000002135D80FB000000020500010600000005135D80FD000000030CFD9C030F34D0F800000005000000010F350CF8000000010CFD9BFF0F350D0800000005000000040000000500000000135D45010000000005000104135D44FB0000000600000002135D80FB0000000205000106135D44FD0CFD9C030000000A0F350CF8000000010000000A000000030000000A000000041207010800000004050000F6135D810105000104000000050000000900000000135D4501000000000500010400000008135D80FB000000020500010600000008135D80FD000000030CFD9C03000000060000000800000003115224FD000000030A0001081151E8FF08A91303120700F808A912FD000000061207010600000003000000060000000112073CF80000000108A912FD12073D06050000F6135D810105000104135D44FB05000108000000050000000600000002135D80FB000000020500010800000005135D80FF000000040CFD9C030F34D0F800000005000000010F350CF8000000010CFD9BFD0F350D0600000005000000030000000500000000135D45010000000005000104135D44FB0000000600000002135D80FB00000002050001080000000A135D80FF000000040CFD9C03000000060F350CF8000000010CFD9BFD000000060F34D1060000000300000006000000031207010600000003050000F6135D81010500010400000005135D80FB000000020500010800000005135D80FF000000040CFD9C030F34D0F800000005000000010000000500000000135D45010000000005000104135D44FB0000000600000002135D80FB0000000205000108135D44FF0CFD9C03000000090000000500000004135D80FF000000040CFD9C03000000060F350CF800000001045489FD0000000613867106000000030000000600000004115224FF0000000408A91303120700F808A912FD000000061207010600000003000000060000000112073CF80000000108A912FD12073D0608A912FF12073D08050000F6135D810105000104135D44FB0CFD9C03000000060F350CF8000000010CFD9BFD000000060F34D106000000030000000600000002135D80FB000000020CFD9C030F34D0F800000006000000010F350CF8000000010CFD9BFD0F350D060CFD9BFF0F350D0800000006000000040F34D1080000000400000006000000030F34D106000000030CFD9BFF000000060F34D108000000040000000600000000135D4501000000000500010400000006135D80FB000000020CFD9C030F34D0F800000006000000010F350CF8000000010CFD9BFD0F350D060CFD9BFF000000060F34D1080000000400000006000000030F34D1060000000300000006000000041207010800000004050000F6135D81010500010400000006135D80FB000000020CFD9C030F34D0F800000006000000010F350CF8000000010CFD9BFD0F350D0600000008000000030F34D106000000030000000600000000135D4501000000000500010400000006135D80FB000000020CFD9C03000000060F350CF8000000010CFD9BFD000000060F34D106000000030000000600000003120701060000000308A912FF12073D08050000F6135D81010500010400000006135D80FB000000020CFD9C030F34D0F800000006000000010F350CF800000001045489FD1386AD060CFD9BFF000000060F34D10800000004000000060000000313867106000000030CFD9BFF000000060F34D108000000040000000600000000135D4501000000000500010400000006135D80FB000000020CFD9C03000000060F350CF800000001045489FD00000006138671060000000300000006000000041207010800000004050000F6135D81010500010400000006135D80FB000000020CFD9C03000000060F350CF800000001045489FD0000000613867106000000030000000600000000135D4501000000000000000600000002"
theorem small_3475127_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3475127_left_root small_3475127_left_fuel small_3475127_left_count small_3475127_left_encoded = true := by
  decide +kernel
theorem small_3475127_left_covered : CoveredBy scale carrier boxes small_3475127_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3475127_left_root small_3475127_left_fuel small_3475127_left_count small_3475127_left_encoded small_3475127_left_checked

theorem cover_3475127 : CoveredBy scale carrier boxes root_3475127 := by
  apply coveredBy_split_literal root_3475127 small_3475127_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0084.root_3475977 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_3475127_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0084.cover_3475977
#print axioms cover_3475127

def root_3475122 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3475122_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3475122_right_fuel : Nat := 1
def small_3475122_right_count : Nat := 1
def small_3475122_right_encoded : String := "00000001"
theorem small_3475122_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3475122_right_root small_3475122_right_fuel small_3475122_right_count small_3475122_right_encoded = true := by
  decide +kernel
theorem small_3475122_right_covered : CoveredBy scale carrier boxes small_3475122_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3475122_right_root small_3475122_right_fuel small_3475122_right_count small_3475122_right_encoded small_3475122_right_checked

theorem cover_3475122 : CoveredBy scale carrier boxes root_3475122 := by
  apply coveredBy_split_literal root_3475122 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0084.root_3475127 small_3475122_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0084.cover_3475127
  · exact small_3475122_right_covered
#print axioms cover_3475122

def root_3481621 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3481621 : CoveredBy scale carrier boxes root_3481621 := by
  apply coveredBy_split_literal root_3481621 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1325.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1326.root coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1325.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1326.covered
#print axioms cover_3481621

def root_3481615 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3481615_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3481615_left_fuel : Nat := 1
def small_3481615_left_count : Nat := 1
def small_3481615_left_encoded : String := "00000003"
theorem small_3481615_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3481615_left_root small_3481615_left_fuel small_3481615_left_count small_3481615_left_encoded = true := by
  decide +kernel
theorem small_3481615_left_covered : CoveredBy scale carrier boxes small_3481615_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3481615_left_root small_3481615_left_fuel small_3481615_left_count small_3481615_left_encoded small_3481615_left_checked

theorem cover_3481615 : CoveredBy scale carrier boxes root_3481615 := by
  apply coveredBy_split_literal root_3481615 small_3481615_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0084.root_3481621 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_3481615_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0084.cover_3481621
#print axioms cover_3481615

def root_3481503 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3481503_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3481503_left_fuel : Nat := 13
def small_3481503_left_count : Nat := 55
def small_3481503_left_encoded : String := "1151E8FD0A0001081151E8FF050000F6135D8101050000F800000005135D4503000000010500010400000005135D80FB0000000205000106000000050000000700000000135D450100000000050000F8135D810305000104000000050000000A00000001135D45030000000105000104000000080000000A00000004115224FF0000000408A912FF12073D08050000F600000008135D450100000000050000F8135D81030500010400000008135D80FB0000000205000106000000080000000800000001000000080000000412070108000000040000000800000003"
theorem small_3481503_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3481503_left_root small_3481503_left_fuel small_3481503_left_count small_3481503_left_encoded = true := by
  decide +kernel
theorem small_3481503_left_covered : CoveredBy scale carrier boxes small_3481503_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3481503_left_root small_3481503_left_fuel small_3481503_left_count small_3481503_left_encoded small_3481503_left_checked

theorem cover_3481503 : CoveredBy scale carrier boxes root_3481503 := by
  apply coveredBy_split_literal root_3481503 small_3481503_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0084.root_3481615 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_3481503_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0084.cover_3481615
#print axioms cover_3481503

def root_3481498 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3481498_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3481498_right_fuel : Nat := 1
def small_3481498_right_count : Nat := 1
def small_3481498_right_encoded : String := "00000002"
theorem small_3481498_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3481498_right_root small_3481498_right_fuel small_3481498_right_count small_3481498_right_encoded = true := by
  decide +kernel
theorem small_3481498_right_covered : CoveredBy scale carrier boxes small_3481498_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3481498_right_root small_3481498_right_fuel small_3481498_right_count small_3481498_right_encoded small_3481498_right_checked

theorem cover_3481498 : CoveredBy scale carrier boxes root_3481498 := by
  apply coveredBy_split_literal root_3481498 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0084.root_3481503 small_3481498_right_root coord2 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0084.cover_3481503
  · exact small_3481498_right_covered
#print axioms cover_3481498

def root_3492937 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3492937_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (-1816224)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3492937_left_fuel : Nat := 23
def small_3492937_left_count : Nat := 315
def small_3492937_left_encoded : String := "13E201060DE7CA040E5FD8FB0DE7CA080E5FD8FF08C000F611FC250108C000F811FC2503033F67BD13BC31060D4128840EFA10FB00000006000000020EFA4CFB000000020D412888000000070EFA4CFF00000004096000F600000007000000060000000313BBF506000000030D4128840EFA10FB0D4128880EFA10FF000000060000000400000006000000020EFA4CFB000000020D4128880EFA10FF00000007000000040EFA4CFF00000004096000F611AABD01000000070000000011AA810100000000096000F80000000611AA81030000000102B4D69D0000000613D0D106000000030D94794400000006000000070000000111FBE90300000001033F67BD0000000713BBF506000000030D4128840EFA10FB0000000700000002000000070000000011FBE9010000000008C000F811FC2503033F67BD0000000613BBF506000000030D412884000000060EFA4CFB000000020D4128880000000A000000060000000111FBE90300000001033F67BD13BC31060D4128840EFA10FB0D4128880EFA10FF000000060000000400000006000000020EFA4CFB000000020000000A0000000313BBF506000000030D4128840EFA10FB0D4128880EFA10FF082000F60000000712465D010000000000000006000000040EFA4CFF00000004082000F612469901000000080000000012465D010000000000000006000000020EFA4CFB000000020D4128880EFA10FF082000F6000000070000000A000000040EFA4CFF00000004082000F612469901000000080000000000000005000000040E6014FF0000000408C000F611FC250108C000F811FC2503033F67BD13BC3106000000080000000313BBF506000000030DAED87F0E9661080D412884000000060EFA4CFB00000002096000F611AABD01000000080000000011AA810100000000096000F80000000600000008000000040E96250800000004000000080000000111FBE90300000001000000080000000011FBE9010000000008C000F811FC2503033F67BD0000000613BBF506000000030DAED87F000000060E96250800000004000000060000000111FBE90300000001033F67BD0000000813BBF506000000030DAED87F0E9661080D41288400000008000000050000000400000008000000020E6014FB000000020DE7CA080E5FD8FF08C000F611FC250108C000F811FC2503033F67BD13BC31060000000A0000000313BBF506000000030DAED87B0E9661040D412888000000070EFA4CFF00000004096000F6000000070000000A000000020E962504000000020000000A0000000111FBE90300000001033F67BD0000000713BBF506000000030DAED87B000000070E96250400000002000000070000000011FBE9010000000008C000F811FC25030000000A0000000111FBE90300000001033F67BD0000000A13BBF506000000030DAED87B0E9661040D4128880000000A00000005000000020000000A000000040E6014FF0000000408C000F611FC250108C000F811FC2503033F67BD13BC31060DAED87B0000000A000000080000000313BBF506000000030DAED87B0E9661040DAED87F0E966108096000F611AABD0100000008000000000000000A000000040E9625080000000400000008000000020E962504000000020DAED87F0E9661080000000A000000040000000A0000000111FBE90300000001000000080000000011FBE9010000000008C000F811FC25030000000A000000010000000500000003"
theorem small_3492937_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3492937_left_root small_3492937_left_fuel small_3492937_left_count small_3492937_left_encoded = true := by
  decide +kernel
theorem small_3492937_left_covered : CoveredBy scale carrier boxes small_3492937_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3492937_left_root small_3492937_left_fuel small_3492937_left_count small_3492937_left_encoded small_3492937_left_checked

theorem cover_3492937 : CoveredBy scale carrier boxes root_3492937 := by
  apply coveredBy_split_literal root_3492937 small_3492937_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1330.root coord3 true (-1816224)
  · decide +kernel
  · decide +kernel
  · exact small_3492937_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1330.covered
#print axioms cover_3492937

def root_3492932 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3492932_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(15553280), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3492932_right_fuel : Nat := 1
def small_3492932_right_count : Nat := 1
def small_3492932_right_encoded : String := "00000001"
theorem small_3492932_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3492932_right_root small_3492932_right_fuel small_3492932_right_count small_3492932_right_encoded = true := by
  decide +kernel
theorem small_3492932_right_covered : CoveredBy scale carrier boxes small_3492932_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3492932_right_root small_3492932_right_fuel small_3492932_right_count small_3492932_right_encoded small_3492932_right_checked

theorem cover_3492932 : CoveredBy scale carrier boxes root_3492932 := by
  apply coveredBy_split_literal root_3492932 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0084.root_3492937 small_3492932_right_root coord1 true (15553280)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0084.cover_3492937
  · exact small_3492932_right_covered
#print axioms cover_3492932

def root_3492931 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3492931_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(-6291456), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3492931_right_fuel : Nat := 19
def small_3492931_right_count : Nat := 111
def small_3492931_right_encoded : String := "128A410300000001022A457D13E201060DE7CA040E5FD8FB0DE7CA080E5FD8FF08C000F611FC2501000000070000000011FBE90100000000064000F812FFAD03033F67BD0000000813BBF506000000030D41288400000008000000050000000100000005000000040E6014FF0000000400000008000000020E6014FB000000020DE7CA080E5FD8FF08C000F6000000070000000500000004000000050000000313E1C506000000030DE7CA040E5FD8FB0DE7CA080E5FD8FF08C000F611FC2501064000F812FFAD030115233D13F895060D4128840EFA10FB0000000700000002000000070000000313F85906000000030D4128840EFA10FB0D412888000000070EFA4CFF00000004096000F60000000700000005000000020EFA4CFB000000020D41288800000007000000050000000112FF7103000000010115233D00000007000000050000000011FBE90100000000064000F812FFAD030115233D13F895060D4128840EFA10FB0D4128880EFA10FF082000F600000007000000050000000400000005000000020000000500000003000000050000000100000005000000040E6014FF0000000400000005000000020E6014FB0000000200000005"
theorem small_3492931_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3492931_right_root small_3492931_right_fuel small_3492931_right_count small_3492931_right_encoded = true := by
  decide +kernel
theorem small_3492931_right_covered : CoveredBy scale carrier boxes small_3492931_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3492931_right_root small_3492931_right_fuel small_3492931_right_count small_3492931_right_encoded small_3492931_right_checked

theorem cover_3492931 : CoveredBy scale carrier boxes root_3492931 := by
  apply coveredBy_split_literal root_3492931 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0084.root_3492932 small_3492931_right_root coord1 false (-6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0084.cover_3492932
  · exact small_3492931_right_covered
#print axioms cover_3492931

def root_3492926 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3492926_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-6291456)⟩, ⟨(15553280), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3492926_right_fuel : Nat := 1
def small_3492926_right_count : Nat := 1
def small_3492926_right_encoded : String := "00000000"
theorem small_3492926_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3492926_right_root small_3492926_right_fuel small_3492926_right_count small_3492926_right_encoded = true := by
  decide +kernel
theorem small_3492926_right_covered : CoveredBy scale carrier boxes small_3492926_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3492926_right_root small_3492926_right_fuel small_3492926_right_count small_3492926_right_encoded small_3492926_right_checked

theorem cover_3492926 : CoveredBy scale carrier boxes root_3492926 := by
  apply coveredBy_split_literal root_3492926 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0084.root_3492931 small_3492926_right_root coord0 true (15553280)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0084.cover_3492931
  · exact small_3492926_right_covered
#print axioms cover_3492926

def root_3492925 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3492925_right_root : ZRayBox := fun j => (#[⟨⟨(-6291456), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3492925_right_fuel : Nat := 23
def small_3492925_right_count : Nat := 127
def small_3492925_right_encoded : String := "128A410100000000078000F8128A7D03022A457D13E201060DE7CA040E5FD8FB0DE7CA080E5FD8FF064000F612FFAD0108C000F811FC2503000000060000000111FBE90300000001033F67BD0000000A13BBF506000000030D4128840EFA10FB0D4128880000000A000000050000000200000005000000000000000A000000040E6014FF00000004064000F612FFAD0108C000F800000006000000050000000000000005000000020E6014FB000000020DE7CA080000000A000000050000000313E1C506000000030DE7CA040E5FD8FB0DE7CA080E5FD8FF064000F612FFAD0108C000F811FC25030115233D13F895060D412884000000060EFA4CFB000000020000000A0000000313F85906000000030D4128840EFA10FB00000006000000020EFA4CFB000000020D4128880EFA10FF06E000F612C82101096000F80000000600000005000000000000000500000004000000050000000111FBE903000000010115233D13F895060D4128840EFA10FB0D4128880EFA10FF06E000F612C82101082000F8000000060000000500000000000000050000000400000005000000020000000500000003000000050000000012FF71010000000008C000F811FC25030115233D00000006000000050000000100000005000000040E6014FF0000000400000005000000020E6014FB00000002000000050000000100000005"
theorem small_3492925_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3492925_right_root small_3492925_right_fuel small_3492925_right_count small_3492925_right_encoded = true := by
  decide +kernel
theorem small_3492925_right_covered : CoveredBy scale carrier boxes small_3492925_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3492925_right_root small_3492925_right_fuel small_3492925_right_count small_3492925_right_encoded small_3492925_right_checked

theorem cover_3492925 : CoveredBy scale carrier boxes root_3492925 := by
  apply coveredBy_split_literal root_3492925 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0084.root_3492926 small_3492925_right_root coord0 false (-6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0084.cover_3492926
  · exact small_3492925_right_covered
#print axioms cover_3492925

def root_3492919 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3492919_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-13027072)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3492919_left_fuel : Nat := 1
def small_3492919_left_count : Nat := 1
def small_3492919_left_encoded : String := "00000004"
theorem small_3492919_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3492919_left_root small_3492919_left_fuel small_3492919_left_count small_3492919_left_encoded = true := by
  decide +kernel
theorem small_3492919_left_covered : CoveredBy scale carrier boxes small_3492919_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3492919_left_root small_3492919_left_fuel small_3492919_left_count small_3492919_left_encoded small_3492919_left_checked

theorem cover_3492919 : CoveredBy scale carrier boxes root_3492919 := by
  apply coveredBy_split_literal root_3492919 small_3492919_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0084.root_3492925 coord4 true (-13027072)
  · decide +kernel
  · decide +kernel
  · exact small_3492919_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0084.cover_3492925
#print axioms cover_3492919

def root_3491321 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3491321 : CoveredBy scale carrier boxes root_3491321 := by
  apply coveredBy_split_literal root_3491321 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1329.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0084.root_3492919 coord4 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1329.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0084.cover_3492919
#print axioms cover_3491321

def root_3491315 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3491315_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-13027072)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3491315_left_fuel : Nat := 1
def small_3491315_left_count : Nat := 1
def small_3491315_left_encoded : String := "00000002"
theorem small_3491315_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3491315_left_root small_3491315_left_fuel small_3491315_left_count small_3491315_left_encoded = true := by
  decide +kernel
theorem small_3491315_left_covered : CoveredBy scale carrier boxes small_3491315_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3491315_left_root small_3491315_left_fuel small_3491315_left_count small_3491315_left_encoded small_3491315_left_checked

theorem cover_3491315 : CoveredBy scale carrier boxes root_3491315 := by
  apply coveredBy_split_literal root_3491315 small_3491315_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0084.root_3491321 coord2 true (-13027072)
  · decide +kernel
  · decide +kernel
  · exact small_3491315_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0084.cover_3491321
#print axioms cover_3491315

def root_3488811 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3488811 : CoveredBy scale carrier boxes root_3488811 := by
  apply coveredBy_split_literal root_3488811 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1328.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0084.root_3491315 coord2 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1328.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0084.cover_3491315
#print axioms cover_3488811

def root_3488806 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3488806_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3488806_right_fuel : Nat := 1
def small_3488806_right_count : Nat := 1
def small_3488806_right_encoded : String := "00000004"
theorem small_3488806_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3488806_right_root small_3488806_right_fuel small_3488806_right_count small_3488806_right_encoded = true := by
  decide +kernel
theorem small_3488806_right_covered : CoveredBy scale carrier boxes small_3488806_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3488806_right_root small_3488806_right_fuel small_3488806_right_count small_3488806_right_encoded small_3488806_right_checked

theorem cover_3488806 : CoveredBy scale carrier boxes root_3488806 := by
  apply coveredBy_split_literal root_3488806 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0084.root_3488811 small_3488806_right_root coord4 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0084.cover_3488811
  · exact small_3488806_right_covered
#print axioms cover_3488806

def root_3488805 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3488805_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3488805_right_fuel : Nat := 33
def small_3488805_right_count : Nat := 257
def small_3488805_right_encoded : String := "0F34D108000000040C9A87040F8750FB078000F6128A7D01078000F8128A7D03022A457D13E201060AD3577F10D13D080B4D44040000000610804CFB0000000208C000F611FC2501000000080000000011FBE9010000000008C000F800000006000000080000000410D1010800000004000000080000000313E1C506000000030AD3577F10D13D080B4D4404108010FB08C000F611FC250108C000F80000000611FBE90300000001000000080000000011FBE90100000000000000060000000210804CFB0000000208C000F611FC250108C000F811FC25030115233D0000000613F85906000000030BE879BF000000061011710800000004000000060000000111FBE90300000001000000080000000011FBE9010000000008C000F811FC25030000000600000001000000050000000410D10108000000040B4D4404108010FB000000060000000210804CFB0000000208C000F6000000080000000500000001128A410300000001022A457D0000000813E1C506000000030AD3577F10D13D080B4D440400000008000000050000000410D10108000000040000000500000000128A410100000000078000F8128A7D03022A457D13E201060AD3577F0000000610D1010800000004000000060000000313E1C506000000030AD3577F10D13D080B4D440400000006000000050000000410D1010800000004000000050000000100000005000000020F878CFB00000002078000F6128A7D01078000F8128A7D03022A457D13E201060AD3577F10D13D080DE7CA040E5FD8FB08C000F611FC2501000000080000000011FBE9010000000008C000F811FC2503033F67BD0000000613BBF506000000030BE879BF00000006000000050000000100000005000000020E6014FB0000000208C000F611FC250108C000F811FC250300000008000000010000000500000000000000050000000410D1010800000004000000050000000313E1C506000000030AD3577F10D13D080DE7CA040E5FD8FB08C000F611FC250108C000F811FC25030115233D13F895060BE879BF1011AD080D412884000000080EFA4CFB000000020000000800000004000000080000000313F85906000000030BE879BF1011AD080D4128840EFA10FB096000F611AABD01096000F811AABD030000000600000001000000080000000011AA810100000000096000F80000000600000005000000020EFA4CFB00000002096000F611AABD01096000F811AABD03008A921D0000000813FDF906000000030C730ADF0FA745080D9479440000000700000005000000040000000700000001000000050000000000000005000000041011710800000004000000050000000100000005000000000000000500000002000000050000000410D10108000000040000000500000001000000050000000000000005"
theorem small_3488805_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3488805_right_root small_3488805_right_fuel small_3488805_right_count small_3488805_right_encoded = true := by
  decide +kernel
theorem small_3488805_right_covered : CoveredBy scale carrier boxes small_3488805_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3488805_right_root small_3488805_right_fuel small_3488805_right_count small_3488805_right_encoded small_3488805_right_checked

theorem cover_3488805 : CoveredBy scale carrier boxes root_3488805 := by
  apply coveredBy_split_literal root_3488805 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0084.root_3488806 small_3488805_right_root coord4 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0084.cover_3488806
  · exact small_3488805_right_covered
#print axioms cover_3488805

def root_3488799 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3488799_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3488799_left_fuel : Nat := 1
def small_3488799_left_count : Nat := 1
def small_3488799_left_encoded : String := "00000003"
theorem small_3488799_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3488799_left_root small_3488799_left_fuel small_3488799_left_count small_3488799_left_encoded = true := by
  decide +kernel
theorem small_3488799_left_covered : CoveredBy scale carrier boxes small_3488799_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3488799_left_root small_3488799_left_fuel small_3488799_left_count small_3488799_left_encoded small_3488799_left_checked

theorem cover_3488799 : CoveredBy scale carrier boxes root_3488799 := by
  apply coveredBy_split_literal root_3488799 small_3488799_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0084.root_3488805 coord3 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_3488799_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0084.cover_3488805
#print axioms cover_3488799

def root_3487875 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3487875_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3487875_left_fuel : Nat := 25
def small_3487875_left_count : Nat := 439
def small_3487875_left_encoded : String := "1386AD060CFD9BFF0F350D080C9A87040F8750FB0C9A87080F8750FF078000F6128A7D01078000F8128A7D03067ECE7D12EA95060B4D440400000005000000070000000312EA5906000000030B4D44040000000510804CFB000000020B4D44080000000510804CFF0000000408C000F60000000511FBE901000000000000000600000001128A410300000001067ECE7D0000000712EA5906000000030B4D4404000000070000000700000000128A410100000000078000F8128A7D03067ECE7D0000000612EA5906000000030B4D44040000000610804CFB000000020000000600000001128A410300000001067ECE7D12EA95060B4D4404108010FB0B4D440800000006000000060000000210804CFB000000020000000A0000000312EA5906000000030B4D4404108010FB0B4D4408108010FF064000F6000000070000000600000004000000060000000210804CFB000000020B4D4408108010FF000000070000000410804CFF00000004064000F612FFAD01064000F812FFAD030569AC3D000000061340D506000000030000000600000001000000070000000012FF710100000000064000F80000000600000005000000040F878CFF00000004078000F6128A7D01078000F8128A7D03067ECE7D12EA95060B4D44040000000610804CFB00000002000000080000000312EA5906000000030B4D4404108010FB000000060000000210804CFB000000020DE7CA080E5FD8FF08C000F611FC250108C000F800000005000000080000000011FBE9010000000000000006000000040E6014FF0000000408C000F6000000080000000800000001128A410300000001067ECE7D0000000812EA5906000000030000000800000000128A410100000000078000F8128A7D03067ECE7D0000000612EA5906000000030000000600000001128A410300000001067ECE7D0000000812EA5906000000030B4D4404108010FB0DE7CA080E5FD8FF0000000600000004000000060000000210804CFB000000020DE7CA080E5FD8FF064000F600000008000000050000000400000005000000020F878CFB000000020C9A87080F8750FF078000F6128A7D01078000F8128A7D03067ECE7D12EA95060DE7CA040E5FD8FB0000000700000002000000070000000312EA5906000000030DE7CA040E5FD8FB0B4D44080000000710804CFF0000000408C000F60000000711FBE901000000000000000A000000020E6014FB000000020B4D44080000000710804CFF0000000408C000F6000000070000000A00000001128A410300000001067ECE7D0000000712EA5906000000030000000700000000128A410100000000078000F8128A7D03067ECE7D0000000A12EA5906000000030000000A00000001128A410300000001067ECE7D0000000A12EA5906000000030DE7CA040E5FD8FB0B4D44080000000A10804CFF00000004064000F612FFAD01000000070000000000000005000000020000000A000000040F878CFF00000004078000F6128A7D01078000F8128A7D03067ECE7D12EA95060DE7CA040E5FD8FB0DE7CA080000000A00000008000000020E6014FB000000020000000A0000000312EA5906000000030DE7CA040E5FD8FB0DE7CA080E5FD8FF08C000F611FC250108C000F811FC25030569AC3D000000061340D506000000030D412884000000060000000700000001000000080000000011FBE9010000000008C000F8000000060000000A000000040E6014FF0000000408C000F60000000800000008000000020E6014FB000000020DE7CA080E5FD8FF08C000F611FC250108C000F80000000A00000008000000000000000A000000040E6014FF0000000408C000F6000000080000000A00000001128A410300000001067ECE7D0000000812EA5906000000030DE7CA04000000080E6014FB000000020000000800000000128A410100000000078000F8128A7D03067ECE7D0000000A12EA5906000000030DE7CA040E5FD8FB0DE7CA080000000A0E6014FF000000040000000A000000020000000A00000001128A410300000001067ECE7D12EA9506000000080000000312EA59060000000300000005000000040F34D108000000040C9A87040F8750FB078000F6128A7D01078000F8128A7D03067ECE7D0000000812EA5906000000030AD3577F0000000800000008000000010000000800000000128A410100000000078000F8128A7D03067ECE7D0000000612EA5906000000030AD3577F0000000610D1010800000004000000060000000100000008000000020F878CFB00000002078000F6128A7D01078000F8128A7D03067ECE7D0000000812EA5906000000030AD3577F0000000800000008000000010000000800000000128A410100000000078000F8128A7D03067ECE7D0000000A12EA59060000000300000005000000010000000500000003"
theorem small_3487875_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3487875_left_root small_3487875_left_fuel small_3487875_left_count small_3487875_left_encoded = true := by
  decide +kernel
theorem small_3487875_left_covered : CoveredBy scale carrier boxes small_3487875_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3487875_left_root small_3487875_left_fuel small_3487875_left_count small_3487875_left_encoded small_3487875_left_checked

theorem cover_3487875 : CoveredBy scale carrier boxes root_3487875 := by
  apply coveredBy_split_literal root_3487875 small_3487875_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0084.root_3488799 coord3 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact small_3487875_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0084.cover_3488799
#print axioms cover_3487875

def root_3487870 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3487870_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3487870_right_fuel : Nat := 1
def small_3487870_right_count : Nat := 1
def small_3487870_right_encoded : String := "00000002"
theorem small_3487870_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3487870_right_root small_3487870_right_fuel small_3487870_right_count small_3487870_right_encoded = true := by
  decide +kernel
theorem small_3487870_right_covered : CoveredBy scale carrier boxes small_3487870_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3487870_right_root small_3487870_right_fuel small_3487870_right_count small_3487870_right_encoded small_3487870_right_checked

theorem cover_3487870 : CoveredBy scale carrier boxes root_3487870 := by
  apply coveredBy_split_literal root_3487870 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0084.root_3487875 small_3487870_right_root coord2 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0084.cover_3487875
  · exact small_3487870_right_covered
#print axioms cover_3487870

def root_3487869 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3487869_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3487869_right_fuel : Nat := 37
def small_3487869_right_count : Nat := 311
def small_3487869_right_encoded : String := "0F34D10400000002045489FD1386AD060CFD9BFF0F350D080C9A87080F8750FF078000F6128A7D01078000F8128A7D030AD3577B0000000A0000000A00000001128A4103000000010AD3577B0000000710D10104000000020000000700000000128A4101000000000000000A000000040F878CFF00000004078000F6128A7D01078000F8128A7D030AD3577B10D13D04067ECE7D0000000A12EA5906000000030000000A000000020000000A00000001128A4103000000010AD3577B10D13D04067ECE7D0000000812EA590600000003000000050000000210D10104000000020000000500000000128A410100000000078000F80000000A00000005000000040F34D10800000004078000F6128A7D01078000F8000000090000000500000000000000050000000313867106000000030CFD9BFF0F350D080C9A87080F8750FF078000F6128A7D01078000F8128A7D030AD3577B10D13D04022A457D13E201060B4D44080000000710804CFF0000000408C000F6000000070000000A0000000313E1C506000000030B4D4408108010FF08C000F60000000711FBE9010000000008C000F811FC25030000000A0000000111FBE90300000001000000070000000410804CFF0000000408C000F611FC250108C000F811FC25030BE879BB000000071011710400000002000000070000000111FBE90300000001000000070000000011FBE9010000000008C000F811FC25030000000A00000001000000050000000210D1010400000002022A457D0000000A13E1C506000000030B4D4408108010FF000000070000000410804CFF0000000408C000F611FC250108C000F80000000A00000005000000000000000500000001128A4103000000010AD3577B10D13D04022A457D0000000713E1C506000000030B4D440800000007000000050000000210D1010400000002022A457D000000070000000500000000128A410100000000078000F8128A7D030AD3577B10D13D04022A457D0000000A13E1C506000000030B4D44080000000A000000050000000210D10104000000020000000A0000000100000005000000040F878CFF00000004078000F6128A7D01078000F8128A7D030AD3577B10D13D04022A457D13E201060DE7CA080E5FD8FF08C000F611FC250108C000F811FC25030000000A0000000111FBE903000000010BE879BB000000070000000A000000000000000A000000040E6014FF0000000408C000F611FC250108C000F811FC25030000000A000000010000000500000000000000050000000313E1C506000000030DE7CA080E5FD8FF08C000F611FC250108C000F811FC25030BE879BB1011AD040115233D13F895060D4128880000000A0EFA4CFF000000040000000A0000000313F85906000000030D4128880EFA10FF096000F611AABD01000000070000000011AA810100000000096000F80000000A00000005000000040EFA4CFF00000004096000F611AABD01096000F811AABD030C730ADB0FA74504008A921D0000000A13FDF906000000030D9479480000000600000005000000020000000A000000010000000500000000000000050000000210117104000000020115233D0000000A13F8590600000003000000050000000100000005000000000000000500000004000000050000000210D10104000000020000000500000001000000050000000000000005000000040F34D1080000000400000005"
theorem small_3487869_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3487869_right_root small_3487869_right_fuel small_3487869_right_count small_3487869_right_encoded = true := by
  decide +kernel
theorem small_3487869_right_covered : CoveredBy scale carrier boxes small_3487869_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3487869_right_root small_3487869_right_fuel small_3487869_right_count small_3487869_right_encoded small_3487869_right_checked

theorem cover_3487869 : CoveredBy scale carrier boxes root_3487869 := by
  apply coveredBy_split_literal root_3487869 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0084.root_3487870 small_3487869_right_root coord2 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0084.cover_3487870
  · exact small_3487869_right_covered
#print axioms cover_3487869

def root_3487864 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3487864_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3487864_right_fuel : Nat := 1
def small_3487864_right_count : Nat := 1
def small_3487864_right_encoded : String := "00000001"
theorem small_3487864_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3487864_right_root small_3487864_right_fuel small_3487864_right_count small_3487864_right_encoded = true := by
  decide +kernel
theorem small_3487864_right_covered : CoveredBy scale carrier boxes small_3487864_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3487864_right_root small_3487864_right_fuel small_3487864_right_count small_3487864_right_encoded small_3487864_right_checked

theorem cover_3487864 : CoveredBy scale carrier boxes root_3487864 := by
  apply coveredBy_split_literal root_3487864 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0084.root_3487869 small_3487864_right_root coord1 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0084.cover_3487869
  · exact small_3487864_right_covered
#print axioms cover_3487864

def root_3487863 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3487863_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3487863_right_fuel : Nat := 23
def small_3487863_right_count : Nat := 239
def small_3487863_right_encoded : String := "135D4503000000010CFD9BFB0F350D04045489FD1386AD060CFD9BFF0F350D080C9A87040F8750FB0C9A87080F8750FF078000F600000007128A410100000000028000F813D7ED03067ECE7D0000000812EA5906000000030B4D4404108010FB0B4D440800000007000000080000000210804CFB000000020B4D440800000007000000050000000100000008000000040F878CFF0000000400000008000000020F878CFB000000020C9A87080F8750FF078000F600000007128A410100000000028000F813D7ED03067ECE7D12EA9506000000080000000312EA590600000003000000050000000100000005000000040F878CFF00000004078000F60000000800000005000000040F34D10800000004000000080000000313867106000000030CFD9BFF0F350D080C9A87040F8750FB0C9A87080F8750FF078000F6128A7D01028000F813D7ED03022A457D0000000713E1C506000000030B4D4404108010FB0B4D44080000000710804CFF000000040000000700000002000000070000000113D7B10300000001022A457D0000000713E1C506000000030000000700000000128A410100000000028000F813D7ED03022A457D13E201060B4D4404108010FB0B4D4408108010FF000000070000000410804CFF00000004064000F600000008000000050000000210804CFB000000020B4D440800000007000000050000000313E1C506000000030B4D4404108010FB0B4D44080000000910804CFF00000004000000090000000210804CFB000000020B4D4408108010FF0000000900000004000000050000000100000005000000040F878CFF00000004078000F6128A7D01028000F813D7ED03022A457D0000000813E1C506000000030B4D4404108010FB0DE7CA080E5FD8FF0000000800000004000000080000000210804CFB000000020DE7CA080E5FD8FF08C000F60000000800000005000000040000000500000001000000050000000000000005000000020F878CFB000000020C9A87080F8750FF078000F6128A7D01028000F813D7ED03022A457D0000000713E1C506000000030DE7CA040E5FD8FB000000070000000200000007000000010000000500000000000000050000000400000005000000040F34D1080000000400000005000000020F34D10400000002045489FD1386AD060CFD9BFF0F350D080C9A87080F8750FF078000F6128A7D01028000F813D7ED030AD3577B0000000710D101040000000200000005000000010000000500000000000000050000000400000005000000040F34D108000000040000000500000003138671060000000300000005"
theorem small_3487863_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3487863_right_root small_3487863_right_fuel small_3487863_right_count small_3487863_right_encoded = true := by
  decide +kernel
theorem small_3487863_right_covered : CoveredBy scale carrier boxes small_3487863_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3487863_right_root small_3487863_right_fuel small_3487863_right_count small_3487863_right_encoded small_3487863_right_checked

theorem cover_3487863 : CoveredBy scale carrier boxes root_3487863 := by
  apply coveredBy_split_literal root_3487863 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0084.root_3487864 small_3487863_right_root coord1 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0084.cover_3487864
  · exact small_3487863_right_covered
#print axioms cover_3487863

def root_3487858 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3487858_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3487858_right_fuel : Nat := 1
def small_3487858_right_count : Nat := 1
def small_3487858_right_encoded : String := "00000000"
theorem small_3487858_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3487858_right_root small_3487858_right_fuel small_3487858_right_count small_3487858_right_encoded = true := by
  decide +kernel
theorem small_3487858_right_covered : CoveredBy scale carrier boxes small_3487858_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3487858_right_root small_3487858_right_fuel small_3487858_right_count small_3487858_right_encoded small_3487858_right_checked

theorem cover_3487858 : CoveredBy scale carrier boxes root_3487858 := by
  apply coveredBy_split_literal root_3487858 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0084.root_3487863 small_3487858_right_root coord0 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0084.cover_3487863
  · exact small_3487858_right_covered
#print axioms cover_3487858

def root_3487857 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3487857_right_root : ZRayBox := fun j => (#[⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3487857_right_fuel : Nat := 27
def small_3487857_right_count : Nat := 301
def small_3487857_right_encoded : String := "135D450100000000050000F8135D81030CFD9BFB0F350D04045489FD1386AD060CFD9BFF0F350D080C9A87040F8750FB0C9A87080F8750FF028000F613D7ED01078000F800000006128A410300000001067ECE7D0000000A12EA5906000000030B4D4404000000060000000A0000000013D7B101000000000000000A000000040F878CFF00000004028000F613D7ED01078000F800000006128A410300000001067ECE7D12EA95060000000A0000000312EA590600000003000000050000000013D7B10100000000078000F80000000600000005000000020F878CFB000000020C9A87080000000A0F878CFF00000004028000F613D7ED01078000F80000000A000000050000000000000005000000040F34D108000000040C9A87040F8750FB028000F613D7ED01078000F8128A7D03067ECE7D0000000612EA590600000003000000050000000100000005000000000000000500000002000000050000000313867106000000030CFD9BFF0F350D080C9A87040F8750FB0C9A87080F8750FF028000F613D7ED01078000F8128A7D03022A457D0000000613E1C506000000030B4D44040000000610804CFB000000020B4D4408108010FF00000006000000040000000600000001128A410300000001022A457D13E201060B4D4404108010FB0B4D4408108010FF0000000600000004000000060000000210804CFB000000020B4D4408108010FF03C000F613A54D01064000F80000000A00000005000000000000000500000004000000050000000313E1C506000000030B4D4404108010FB0B4D44080000000910804CFF00000004000000090000000210804CFB000000020B4D4408108010FF0000000900000004000000050000000013D7B10100000000078000F8128A7D03022A457D0000000613E1C50600000003000000060000000100000005000000040F878CFF00000004028000F613D7ED01078000F8128A7D03022A457D0000000613E1C506000000030B4D44040000000610804CFB000000020DE7CA080E5FD8FF00000006000000040000000500000001000000050000000000000005000000020F878CFB000000020C9A87080F8750FF028000F613D7ED01078000F8128A7D03022A457D0000000A13E1C506000000030DE7CA040E5FD8FB0B4D44080000000A10804CFF0000000403C000F613A54D0108C000F80000000A000000050000000000000005000000020000000A000000010000000500000000000000050000000400000005000000040F34D1080000000400000005000000020F34D10400000002045489FD1386AD060CFD9BFF0F350D080000000A000000040000000A0000000313867106000000030000000500000001135D4503000000010CFD9BFB0F350D04045489FD1386AD060CFD9BFF0F350D080C9A87040F8750FB0C9A87080F8750FF028000F613D7ED01028000F813D7ED03067ECE7D12EA95060B4D440400000008000000050000000312EA5906000000030B4D4404108010FB0B4D4408108010FF03C000F60000000700000005000000040000000500000002000000050000000100000005000000000000000500000004000000050000000200000005000000040F34D108000000040000000500000003138671060000000300000005000000020F34D1040000000200000005"
theorem small_3487857_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3487857_right_root small_3487857_right_fuel small_3487857_right_count small_3487857_right_encoded = true := by
  decide +kernel
theorem small_3487857_right_covered : CoveredBy scale carrier boxes small_3487857_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3487857_right_root small_3487857_right_fuel small_3487857_right_count small_3487857_right_encoded small_3487857_right_checked

theorem cover_3487857 : CoveredBy scale carrier boxes root_3487857 := by
  apply coveredBy_split_literal root_3487857 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0084.root_3487858 small_3487857_right_root coord0 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0084.cover_3487858
  · exact small_3487857_right_covered
#print axioms cover_3487857

def root_3487852 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3487852_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3487852_right_fuel : Nat := 1
def small_3487852_right_count : Nat := 1
def small_3487852_right_encoded : String := "00000004"
theorem small_3487852_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3487852_right_root small_3487852_right_fuel small_3487852_right_count small_3487852_right_encoded = true := by
  decide +kernel
theorem small_3487852_right_covered : CoveredBy scale carrier boxes small_3487852_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3487852_right_root small_3487852_right_fuel small_3487852_right_count small_3487852_right_encoded small_3487852_right_checked

theorem cover_3487852 : CoveredBy scale carrier boxes root_3487852 := by
  apply coveredBy_split_literal root_3487852 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0084.root_3487857 small_3487852_right_root coord4 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0084.cover_3487857
  · exact small_3487852_right_covered
#print axioms cover_3487852

def root_3487851 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3487851_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3487851_right_fuel : Nat := 21
def small_3487851_right_count : Nat := 57
def small_3487851_right_encoded : String := "1207010800000004050000F6135D8101050000F8135D81030CFD9BFB0F350D04045489FD1386AD06045489FF1386AD080C9A8704000000080F878CFB000000020000000800000004138671080000000400000008000000031386710600000003045489FF1386AD080C9A87040F8750FB078000F6128A7D01078000F8128A7D03022A457D0000000813E1C50600000003067ECE7F000000080000000800000001000000050000000000000005000000020000000500000004138671080000000400000005000000020F34D104000000020000000500000001000000050000000000000005"
theorem small_3487851_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3487851_right_root small_3487851_right_fuel small_3487851_right_count small_3487851_right_encoded = true := by
  decide +kernel
theorem small_3487851_right_covered : CoveredBy scale carrier boxes small_3487851_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3487851_right_root small_3487851_right_fuel small_3487851_right_count small_3487851_right_encoded small_3487851_right_checked

theorem cover_3487851 : CoveredBy scale carrier boxes root_3487851 := by
  apply coveredBy_split_literal root_3487851 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0084.root_3487852 small_3487851_right_root coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0084.cover_3487852
  · exact small_3487851_right_covered
#print axioms cover_3487851

def root_3487845 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3487845_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3487845_left_fuel : Nat := 1
def small_3487845_left_count : Nat := 1
def small_3487845_left_encoded : String := "00000003"
theorem small_3487845_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3487845_left_root small_3487845_left_fuel small_3487845_left_count small_3487845_left_encoded = true := by
  decide +kernel
theorem small_3487845_left_covered : CoveredBy scale carrier boxes small_3487845_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3487845_left_root small_3487845_left_fuel small_3487845_left_count small_3487845_left_encoded small_3487845_left_checked

theorem cover_3487845 : CoveredBy scale carrier boxes root_3487845 := by
  apply coveredBy_split_literal root_3487845 small_3487845_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0084.root_3487851 coord3 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_3487845_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0084.cover_3487851
#print axioms cover_3487845

def root_3487255 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3487255_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3487255_left_fuel : Nat := 25
def small_3487255_left_count : Nat := 273
def small_3487255_left_encoded : String := "12073D0608A912FF12073D08050000F6135D8101050000F8135D81030CFD9BFB0F350D040CFD9BFD0F350D060CFD9BFF0F350D080C9A87040F8750FB0C9A8706000000080F878CFD000000030C9A87080000000A00000008000000020F878CFB000000020000000A000000040F34D1080000000400000008000000030F34D106000000030CFD9BFF0F350D080C9A87040F8750FB0C9A87080F8750FF078000F6128A7D01078000F8128A7D030AD3577D0000000810D10106000000030B4D44040000000500000007000000010000000800000000128A410100000000078000F80000000A128A4103000000010AD3577D0000000810D101060000000300000008000000040F878CFF00000004078000F600000008128A410100000000078000F8128A7D03000000060000000100000008000000020F878CFB000000020C9A87080F8750FF078000F6128A7D01078000F80000000A128A41030000000100000007000000000000000A000000040F878CFF00000004078000F6128A7D0100000008000000000000000A000000040F34D108000000040C9A8704000000080F878CFB0000000200000008000000020F34D104000000020CFD9BFD0F350D060000000A000000030F34D106000000030CFD9BFF0F350D080C9A87080000000A0F878CFF000000040000000A000000040000000A00000001135D4503000000010CFD9BFB0F350D040CFD9BFD0F350D0600000008000000030F34D106000000030CFD9BFF0F350D080C9A8704000000080F878CFB00000002000000080000000400000008000000020F34D104000000020CFD9BFD000000080F34D106000000030CFD9BFF0F350D080C9A87080F8750FF000000080000000400000008000000040000000800000000135D450100000000050000F8135D81030CFD9BFB0F350D040CFD9BFD0F350D060000000A000000030F34D106000000030CFD9BFF0F350D080C9A87040F8750FB0C9A87080000000A0F878CFF000000040000000A000000020000000A000000040F34D108000000040C9A87040F8750FB0000000A000000020000000A000000020F34D104000000020000000A00000001135D4503000000010CFD9BFB0F350D040CFD9BFD0F350D060CFD9BFF0000000800000008000000030F34D106000000030CFD9BFF0F350D080C9A87040F8750FB0C9A87080F8750FF028000F600000008000000080000000400000008000000020F878CFB000000020000000A000000040F34D1080000000400000005000000020F34D104000000020CFD9BFD0000000A0F34D1060000000300000005000000041207010800000004050000F6135D8101050000F8135D81030CFD9BFB0F350D040CFD9BFD000000080F34D10600000003000000080000000200000008000000010000000800000000135D450100000000050000F8135D81030CFD9BFB0F350D040CFD9BFD000000080F34D106000000030000000A000000020F34D1040000000200000009000000010000000800000003"
theorem small_3487255_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3487255_left_root small_3487255_left_fuel small_3487255_left_count small_3487255_left_encoded = true := by
  decide +kernel
theorem small_3487255_left_covered : CoveredBy scale carrier boxes small_3487255_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3487255_left_root small_3487255_left_fuel small_3487255_left_count small_3487255_left_encoded small_3487255_left_checked

theorem cover_3487255 : CoveredBy scale carrier boxes root_3487255 := by
  apply coveredBy_split_literal root_3487255 small_3487255_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0084.root_3487845 coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_3487255_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0084.cover_3487845
#print axioms cover_3487255

def root_3487250 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3487250_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3487250_right_fuel : Nat := 1
def small_3487250_right_count : Nat := 1
def small_3487250_right_encoded : String := "00000002"
theorem small_3487250_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3487250_right_root small_3487250_right_fuel small_3487250_right_count small_3487250_right_encoded = true := by
  decide +kernel
theorem small_3487250_right_covered : CoveredBy scale carrier boxes small_3487250_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3487250_right_root small_3487250_right_fuel small_3487250_right_count small_3487250_right_encoded small_3487250_right_checked

theorem cover_3487250 : CoveredBy scale carrier boxes root_3487250 := by
  apply coveredBy_split_literal root_3487250 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0084.root_3487255 small_3487250_right_root coord2 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0084.cover_3487255
  · exact small_3487250_right_covered
#print axioms cover_3487250

def root_3487249 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3487249_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3487249_right_fuel : Nat := 23
def small_3487249_right_count : Nat := 119
def small_3487249_right_encoded : String := "120701040000000208A912FD12073D0608A912FF12073D08050000F6135D8101050000F8135D8103045489FB1386AD040CFD9BFD000000090F34D106000000030000000A000000020000000A00000001135D450300000001045489FB1386AD040CFD9BFD000000080F34D106000000030CFD9BFF00000008000000080000000213867104000000020CFD9BFD000000080F34D106000000030000000500000000135D450100000000050000F80000000A0000000A000000041207010800000004050000F6000000080000000500000003120701060000000308A912FF12073D08050000F6135D8101050000F8135D8103045489FB1386AD04045489FD1386AD060CFD9BFF0F350D080C9A87080000000A0F878CFF000000040000000A000000040000000A0000000313867106000000030CFD9BFF0F350D080C9A87080F8750FF078000F6128A7D01078000F8128A7D03067ECE7B0000000A0000000A000000010000000500000000000000050000000400000005000000040F34D1080000000400000005000000021386710400000002045489FD1386AD060CFD9BFF0F350D080000000A000000040000000A000000031386710600000003000000050000000100000005000000000000000500000004120701080000000400000005"
theorem small_3487249_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3487249_right_root small_3487249_right_fuel small_3487249_right_count small_3487249_right_encoded = true := by
  decide +kernel
theorem small_3487249_right_covered : CoveredBy scale carrier boxes small_3487249_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3487249_right_root small_3487249_right_fuel small_3487249_right_count small_3487249_right_encoded small_3487249_right_checked

theorem cover_3487249 : CoveredBy scale carrier boxes root_3487249 := by
  apply coveredBy_split_literal root_3487249 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0084.root_3487250 small_3487249_right_root coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0084.cover_3487250
  · exact small_3487249_right_covered
#print axioms cover_3487249

def root_3487243 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3487243_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3487243_left_fuel : Nat := 1
def small_3487243_left_count : Nat := 1
def small_3487243_left_encoded : String := "00000004"
theorem small_3487243_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3487243_left_root small_3487243_left_fuel small_3487243_left_count small_3487243_left_encoded = true := by
  decide +kernel
theorem small_3487243_left_covered : CoveredBy scale carrier boxes small_3487243_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3487243_left_root small_3487243_left_fuel small_3487243_left_count small_3487243_left_encoded small_3487243_left_checked

theorem cover_3487243 : CoveredBy scale carrier boxes root_3487243 := by
  apply coveredBy_split_literal root_3487243 small_3487243_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0084.root_3487249 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_3487243_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0084.cover_3487249
#print axioms cover_3487243

def root_3485133 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3485133 : CoveredBy scale carrier boxes root_3485133 := by
  apply coveredBy_split_literal root_3485133 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1327.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0084.root_3487243 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1327.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0084.cover_3487243
#print axioms cover_3485133

def root_3485127 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3485127_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3485127_left_fuel : Nat := 1
def small_3485127_left_count : Nat := 1
def small_3485127_left_encoded : String := "00000003"
theorem small_3485127_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3485127_left_root small_3485127_left_fuel small_3485127_left_count small_3485127_left_encoded = true := by
  decide +kernel
theorem small_3485127_left_covered : CoveredBy scale carrier boxes small_3485127_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3485127_left_root small_3485127_left_fuel small_3485127_left_count small_3485127_left_encoded small_3485127_left_checked

theorem cover_3485127 : CoveredBy scale carrier boxes root_3485127 := by
  apply coveredBy_split_literal root_3485127 small_3485127_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0084.root_3485133 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_3485127_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0084.cover_3485133
#print axioms cover_3485127

def root_3484999 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3484999_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3484999_left_fuel : Nat := 16
def small_3484999_left_count : Nat := 59
def small_3484999_left_encoded : String := "1151E8FD0A0001081151E8FF08A912FB12073D04050000F6135D8101050000F80000000A135D450300000001050001060000000A0000000A000000000000000A0000000212070104000000020000000A00000004115224FF0000000408A912FB12073D0408A912FF12073D08050000F6135D8101050000F8135D810305000106135D44FD0000000800000003135D80FD000000030CFD9BFB0F350D04000000080000000200000008000000010000000800000000135D450100000000050000F80000000A0000000A000000041207010800000004000000080000000212070104000000020000000A00000003"
theorem small_3484999_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3484999_left_root small_3484999_left_fuel small_3484999_left_count small_3484999_left_encoded = true := by
  decide +kernel
theorem small_3484999_left_covered : CoveredBy scale carrier boxes small_3484999_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3484999_left_root small_3484999_left_fuel small_3484999_left_count small_3484999_left_encoded small_3484999_left_checked

theorem cover_3484999 : CoveredBy scale carrier boxes root_3484999 := by
  apply coveredBy_split_literal root_3484999 small_3484999_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0084.root_3485127 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_3484999_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0084.cover_3485127
#print axioms cover_3484999

def root_3484993 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3484993_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3484993_left_fuel : Nat := 1
def small_3484993_left_count : Nat := 1
def small_3484993_left_encoded : String := "00000002"
theorem small_3484993_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3484993_left_root small_3484993_left_fuel small_3484993_left_count small_3484993_left_encoded = true := by
  decide +kernel
theorem small_3484993_left_covered : CoveredBy scale carrier boxes small_3484993_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3484993_left_root small_3484993_left_fuel small_3484993_left_count small_3484993_left_encoded small_3484993_left_checked

theorem cover_3484993 : CoveredBy scale carrier boxes root_3484993 := by
  apply coveredBy_split_literal root_3484993 small_3484993_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0084.root_3484999 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_3484993_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0084.cover_3484999
#print axioms cover_3484993

def root_3481497 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3481497 : CoveredBy scale carrier boxes root_3481497 := by
  apply coveredBy_split_literal root_3481497 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0084.root_3481498 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0084.root_3484993 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0084.cover_3481498
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0084.cover_3484993
#print axioms cover_3481497

def root_3481491 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3481491_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3481491_left_fuel : Nat := 1
def small_3481491_left_count : Nat := 1
def small_3481491_left_encoded : String := "00000001"
theorem small_3481491_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3481491_left_root small_3481491_left_fuel small_3481491_left_count small_3481491_left_encoded = true := by
  decide +kernel
theorem small_3481491_left_covered : CoveredBy scale carrier boxes small_3481491_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3481491_left_root small_3481491_left_fuel small_3481491_left_count small_3481491_left_encoded small_3481491_left_checked

theorem cover_3481491 : CoveredBy scale carrier boxes root_3481491 := by
  apply coveredBy_split_literal root_3481491 small_3481491_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0084.root_3481497 coord1 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_3481491_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0084.cover_3481497
#print axioms cover_3481491

def root_3475121 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3475121 : CoveredBy scale carrier boxes root_3475121 := by
  apply coveredBy_split_literal root_3475121 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0084.root_3475122 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0084.root_3481491 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0084.cover_3475122
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0084.cover_3481491
#print axioms cover_3475121

def root_3475115 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3475115_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3475115_left_fuel : Nat := 1
def small_3475115_left_count : Nat := 1
def small_3475115_left_encoded : String := "00000000"
theorem small_3475115_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3475115_left_root small_3475115_left_fuel small_3475115_left_count small_3475115_left_encoded = true := by
  decide +kernel
theorem small_3475115_left_covered : CoveredBy scale carrier boxes small_3475115_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3475115_left_root small_3475115_left_fuel small_3475115_left_count small_3475115_left_encoded small_3475115_left_checked

theorem cover_3475115 : CoveredBy scale carrier boxes root_3475115 := by
  apply coveredBy_split_literal root_3475115 small_3475115_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0084.root_3475121 coord0 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_3475115_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0084.cover_3475121
#print axioms cover_3475115

def root_3450833 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3450833 : CoveredBy scale carrier boxes root_3450833 := by
  apply coveredBy_split_literal root_3450833 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0083.root_3450834 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0084.root_3475115 coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0083.cover_3450834
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0084.cover_3475115
#print axioms cover_3450833

def root_3500543 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3500543_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3500543_left_fuel : Nat := 21
def small_3500543_left_count : Nat := 143
def small_3500543_left_encoded : String := "120701080000000405000104135D44FB0CFD9C010F34D0F600000005000000000F350CF6000000000CFD9C030F34D0F800000005000000010F350CF800000001045489FD1386AD060000000500000003138671060000000304548A091386710800000004000000061386AD080C9A86F6000000050F87510100000000000000060000000400000002135D80FB000000020CFD9C010F34D0F60CFD9C03000000050F350CF800000001045489FD00000005138671060000000304548A090000000500000008000000000F350CF6000000000CFD9C030F34D0F8045489FD00000005138671060000000304548A09000000051386AD080C9A86F6000000050F875101000000000000000600000004000000010F350CF800000001045489FD1386AD0604548A091386710800000004000000081386AD080C9A86F6000000080F875101000000000C9A86F800000009000000080000000400000003138671060000000304548A0913867108000000040C9A86F60F878D010C9A86F80F878D03000000050000000100000008000000000F875101000000000C9A86F8000000060F87510300000001000000081386AD080C9A86F60F878D010C9A86F80F878D030780010400000005000000090000000100000008000000000F875101000000000C9A86F80F878D030780010400000006128A7CFB00000002022A457D0000000900000007000000010F875103000000010780010400000008128A7CFB00000002022A457D0000000813E1C50600000003067ECE89000000080000000800000004"
theorem small_3500543_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3500543_left_root small_3500543_left_fuel small_3500543_left_count small_3500543_left_encoded = true := by
  decide +kernel
theorem small_3500543_left_covered : CoveredBy scale carrier boxes small_3500543_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3500543_left_root small_3500543_left_fuel small_3500543_left_count small_3500543_left_encoded small_3500543_left_checked

theorem cover_3500543 : CoveredBy scale carrier boxes root_3500543 := by
  apply coveredBy_split_literal root_3500543 small_3500543_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1331.root coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_3500543_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1331.covered
#print axioms cover_3500543

def root_3500537 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3500537_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3500537_left_fuel : Nat := 1
def small_3500537_left_count : Nat := 1
def small_3500537_left_encoded : String := "00000003"
theorem small_3500537_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3500537_left_root small_3500537_left_fuel small_3500537_left_count small_3500537_left_encoded = true := by
  decide +kernel
theorem small_3500537_left_covered : CoveredBy scale carrier boxes small_3500537_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3500537_left_root small_3500537_left_fuel small_3500537_left_count small_3500537_left_encoded small_3500537_left_checked

theorem cover_3500537 : CoveredBy scale carrier boxes root_3500537 := by
  apply coveredBy_split_literal root_3500537 small_3500537_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0084.root_3500543 coord3 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_3500537_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0084.cover_3500543
#print axioms cover_3500537

def root_3500419 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3500419_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3500419_left_fuel : Nat := 16
def small_3500419_left_count : Nat := 53
def small_3500419_left_encoded : String := "12073D0608A9130912070108000000040500010400000005135D80FB000000020CFD9C010F34D0F600000005000000000F350CF6000000000CFD9C030F34D0F800000005000000010000000912073D080500010400000005135D80FB000000020CFD9C010F34D0F600000005000000000F350CF6000000000CFD9C030F34D0F800000005000000010F350CF8000000010CFD9BFD000000090F34D106000000030CFD9C090F34D10800000004000000090F350D080C9A86F6000000050F8751010000000000000009000000040000000400000003"
theorem small_3500419_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3500419_left_root small_3500419_left_fuel small_3500419_left_count small_3500419_left_encoded = true := by
  decide +kernel
theorem small_3500419_left_covered : CoveredBy scale carrier boxes small_3500419_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3500419_left_root small_3500419_left_fuel small_3500419_left_count small_3500419_left_encoded small_3500419_left_checked

theorem cover_3500419 : CoveredBy scale carrier boxes root_3500419 := by
  apply coveredBy_split_literal root_3500419 small_3500419_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0084.root_3500537 coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_3500419_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0084.cover_3500537
#print axioms cover_3500419

def root_3500413 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3500413_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3500413_left_fuel : Nat := 1
def small_3500413_left_count : Nat := 1
def small_3500413_left_encoded : String := "00000001"
theorem small_3500413_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3500413_left_root small_3500413_left_fuel small_3500413_left_count small_3500413_left_encoded = true := by
  decide +kernel
theorem small_3500413_left_covered : CoveredBy scale carrier boxes small_3500413_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3500413_left_root small_3500413_left_fuel small_3500413_left_count small_3500413_left_encoded small_3500413_left_checked

theorem cover_3500413 : CoveredBy scale carrier boxes root_3500413 := by
  apply coveredBy_split_literal root_3500413 small_3500413_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0084.root_3500419 coord1 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_3500413_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0084.cover_3500419
#print axioms cover_3500413

def root_3500367 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3500367_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3500367_left_fuel : Nat := 8
def small_3500367_left_count : Nat := 21
def small_3500367_left_encoded : String := "120700F808A912FD12073D0608A9130912070108000000040500010400000005135D80FB00000002000000050000000500000003120701060000000308A913090000000512073D08000000050000000400000001"
theorem small_3500367_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3500367_left_root small_3500367_left_fuel small_3500367_left_count small_3500367_left_encoded = true := by
  decide +kernel
theorem small_3500367_left_covered : CoveredBy scale carrier boxes small_3500367_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3500367_left_root small_3500367_left_fuel small_3500367_left_count small_3500367_left_encoded small_3500367_left_checked

theorem cover_3500367 : CoveredBy scale carrier boxes root_3500367 := by
  apply coveredBy_split_literal root_3500367 small_3500367_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0084.root_3500413 coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_3500367_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0084.cover_3500413
#print axioms cover_3500367

def root_3500361 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3500361_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3500361_left_fuel : Nat := 1
def small_3500361_left_count : Nat := 1
def small_3500361_left_encoded : String := "00000000"
theorem small_3500361_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3500361_left_root small_3500361_left_fuel small_3500361_left_count small_3500361_left_encoded = true := by
  decide +kernel
theorem small_3500361_left_covered : CoveredBy scale carrier boxes small_3500361_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3500361_left_root small_3500361_left_fuel small_3500361_left_count small_3500361_left_encoded small_3500361_left_checked

theorem cover_3500361 : CoveredBy scale carrier boxes root_3500361 := by
  apply coveredBy_split_literal root_3500361 small_3500361_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0084.root_3500367 coord0 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_3500361_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0084.cover_3500367
#print axioms cover_3500361

def root_3500293 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3500293_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3500293_left_fuel : Nat := 8
def small_3500293_left_count : Nat := 31
def small_3500293_left_encoded : String := "120700F608A91303120700F808A912FD12073D0608A913091207010800000004000000080000000500000003000000050000000112073CF80000000108A912FD12073D0608A913091207010800000004000000080000000500000003120701060000000308A913090000000512073D08000000050000000400000000"
theorem small_3500293_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3500293_left_root small_3500293_left_fuel small_3500293_left_count small_3500293_left_encoded = true := by
  decide +kernel
theorem small_3500293_left_covered : CoveredBy scale carrier boxes small_3500293_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3500293_left_root small_3500293_left_fuel small_3500293_left_count small_3500293_left_encoded small_3500293_left_checked

theorem cover_3500293 : CoveredBy scale carrier boxes root_3500293 := by
  apply coveredBy_split_literal root_3500293 small_3500293_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0084.root_3500361 coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_3500293_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0084.cover_3500361
#print axioms cover_3500293

def root_3500288 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3500288_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3500288_right_fuel : Nat := 1
def small_3500288_right_count : Nat := 1
def small_3500288_right_encoded : String := "00000004"
theorem small_3500288_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3500288_right_root small_3500288_right_fuel small_3500288_right_count small_3500288_right_encoded = true := by
  decide +kernel
theorem small_3500288_right_covered : CoveredBy scale carrier boxes small_3500288_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3500288_right_root small_3500288_right_fuel small_3500288_right_count small_3500288_right_encoded small_3500288_right_checked

theorem cover_3500288 : CoveredBy scale carrier boxes root_3500288 := by
  apply coveredBy_split_literal root_3500288 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0084.root_3500293 small_3500288_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0084.cover_3500293
  · exact small_3500288_right_covered
#print axioms cover_3500288

def root_3499938 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3499938_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3499938_left_fuel : Nat := 29
def small_3499938_left_count : Nat := 161
def small_3499938_left_encoded : String := "1151E9090000000408A91301120700F6000000050000000012073CF60000000008A91303120700F8000000050000000112073CF80000000108A912FD12073D060000000500000003120701060000000305000104135D44FB0500010800000005135D81090CFD9C01000000050F350CF6000000000CFD9C03000000050F350CF800000001045489FD0000000513867106000000030C9A86F6000000050F875101000000000C9A86F8000000050F87510300000001028001040000000513D7ECFB000000020780010800000005128A7D0900000005000000040000000400000002135D80FB0000000205000108135D4509000000040CFD9C01000000050F350CF6000000000CFD9C03000000050F350CF800000001045489FD0000000513867106000000030C9A86F60F878D0100000005000000000F8751010000000000000008135D81090CFD9C010F34D0F600000005000000000F350CF6000000000CFD9C030F34D0F800000005000000010F350CF800000001045489FD1386AD060C9A86F60F878D0100000005000000000F875101000000000C9A86F80F878D0300000005000000010000000A0000000313867106000000030C9A86F60F878D010C9A86F80F878D0300000005000000010F8751030000000107800104128A40FB0000000500000002128A7CFB000000020780010800000006128A7D09022A457D0000000713E1C506000000030DE7C9F6000000070000000600000004000000000F875101000000000C9A86F80F878D0307800104128A40FB00000005000000020000000A000000010F8751030000000107800104128A40FB0780010800000007128A7D09022A457D0000000713E1C506000000030000000A00000004000000020000000A00000004"
theorem small_3499938_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3499938_left_root small_3499938_left_fuel small_3499938_left_count small_3499938_left_encoded = true := by
  decide +kernel
theorem small_3499938_left_covered : CoveredBy scale carrier boxes small_3499938_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3499938_left_root small_3499938_left_fuel small_3499938_left_count small_3499938_left_encoded small_3499938_left_checked

theorem cover_3499938 : CoveredBy scale carrier boxes root_3499938 := by
  apply coveredBy_split_literal root_3499938 small_3499938_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0084.root_3500288 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_3499938_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0084.cover_3500288
#print axioms cover_3499938

def root_3499932 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3499932_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3499932_left_fuel : Nat := 1
def small_3499932_left_count : Nat := 1
def small_3499932_left_encoded : String := "00000003"
theorem small_3499932_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3499932_left_root small_3499932_left_fuel small_3499932_left_count small_3499932_left_encoded = true := by
  decide +kernel
theorem small_3499932_left_covered : CoveredBy scale carrier boxes small_3499932_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3499932_left_root small_3499932_left_fuel small_3499932_left_count small_3499932_left_encoded small_3499932_left_checked

theorem cover_3499932 : CoveredBy scale carrier boxes root_3499932 := by
  apply coveredBy_split_literal root_3499932 small_3499932_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0084.root_3499938 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_3499932_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0084.cover_3499938
#print axioms cover_3499932

def root_3499886 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3499886_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3499886_left_fuel : Nat := 8
def small_3499886_left_count : Nat := 21
def small_3499886_left_encoded : String := "1151E8FD0A0001081151E90900000004000000051152250908A91301120700F608A9130300000008000000050000000012073CF60000000008A91303120700F80000000500000001000000050000000400000003"
theorem small_3499886_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3499886_left_root small_3499886_left_fuel small_3499886_left_count small_3499886_left_encoded = true := by
  decide +kernel
theorem small_3499886_left_covered : CoveredBy scale carrier boxes small_3499886_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3499886_left_root small_3499886_left_fuel small_3499886_left_count small_3499886_left_encoded small_3499886_left_checked

theorem cover_3499886 : CoveredBy scale carrier boxes root_3499886 := by
  apply coveredBy_split_literal root_3499886 small_3499886_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0084.root_3499932 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_3499886_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0084.cover_3499932
#print axioms cover_3499886

def root_3499881 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3499881_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3499881_right_fuel : Nat := 1
def small_3499881_right_count : Nat := 1
def small_3499881_right_encoded : String := "00000002"
theorem small_3499881_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3499881_right_root small_3499881_right_fuel small_3499881_right_count small_3499881_right_encoded = true := by
  decide +kernel
theorem small_3499881_right_covered : CoveredBy scale carrier boxes small_3499881_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3499881_right_root small_3499881_right_fuel small_3499881_right_count small_3499881_right_encoded small_3499881_right_checked

theorem cover_3499881 : CoveredBy scale carrier boxes root_3499881 := by
  apply coveredBy_split_literal root_3499881 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0084.root_3499886 small_3499881_right_root coord2 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0084.cover_3499886
  · exact small_3499881_right_covered
#print axioms cover_3499881

def root_3499880 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3499880 : CoveredBy scale carrier boxes root_3499880 := by
  apply coveredBy_split_literal root_3499880 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0084.root_3499881 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1332.root coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0084.cover_3499881
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1332.covered
#print axioms cover_3499880

def root_3499875 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3499875_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3499875_right_fuel : Nat := 1
def small_3499875_right_count : Nat := 1
def small_3499875_right_encoded : String := "00000001"
theorem small_3499875_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3499875_right_root small_3499875_right_fuel small_3499875_right_count small_3499875_right_encoded = true := by
  decide +kernel
theorem small_3499875_right_covered : CoveredBy scale carrier boxes small_3499875_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3499875_right_root small_3499875_right_fuel small_3499875_right_count small_3499875_right_encoded small_3499875_right_checked

theorem cover_3499875 : CoveredBy scale carrier boxes root_3499875 := by
  apply coveredBy_split_literal root_3499875 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0084.root_3499880 small_3499875_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0084.cover_3499880
  · exact small_3499875_right_covered
#print axioms cover_3499875

def root_3506143 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3506143_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3506143_left_fuel : Nat := 11
def small_3506143_left_count : Nat := 27
def small_3506143_left_encoded : String := "1207010800000004050000F8135D810305000104135D44FB0CFD9C01000000080F350CF6000000000000000800000002135D80FB000000020CFD9C01000000080F350CF600000000045489FD00000008138671060000000304548A0900000008000000080000000100000008"
theorem small_3506143_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3506143_left_root small_3506143_left_fuel small_3506143_left_count small_3506143_left_encoded = true := by
  decide +kernel
theorem small_3506143_left_covered : CoveredBy scale carrier boxes small_3506143_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3506143_left_root small_3506143_left_fuel small_3506143_left_count small_3506143_left_encoded small_3506143_left_checked

theorem cover_3506143 : CoveredBy scale carrier boxes root_3506143 := by
  apply coveredBy_split_literal root_3506143 small_3506143_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1333.root coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_3506143_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1333.covered
#print axioms cover_3506143

def root_3506137 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3506137_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3506137_left_fuel : Nat := 1
def small_3506137_left_count : Nat := 1
def small_3506137_left_encoded : String := "00000003"
theorem small_3506137_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3506137_left_root small_3506137_left_fuel small_3506137_left_count small_3506137_left_encoded = true := by
  decide +kernel
theorem small_3506137_left_covered : CoveredBy scale carrier boxes small_3506137_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3506137_left_root small_3506137_left_fuel small_3506137_left_count small_3506137_left_encoded small_3506137_left_checked

theorem cover_3506137 : CoveredBy scale carrier boxes root_3506137 := by
  apply coveredBy_split_literal root_3506137 small_3506137_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0084.root_3506143 coord3 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_3506137_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0084.cover_3506143
#print axioms cover_3506137

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0084
