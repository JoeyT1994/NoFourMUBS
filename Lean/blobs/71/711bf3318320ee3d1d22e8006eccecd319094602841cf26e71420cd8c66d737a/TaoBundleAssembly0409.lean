import TaoBundleAssembly0408
import TaoBundleChunkBatch0552
import TaoBundleChunkBatch0553
import TaoBundleChunkBatch0554
import TaoBundleChunkBatch0555
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0409
def root_5872573 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5872573_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5872573_right_fuel : Nat := 22
def small_5872573_right_count : Nat := 225
def small_5872573_right_encoded : String := "1151E903000000010A0000FA115224FB000000020A0000FC115224FD000000030A0000FE1152250908A912FB12073CFA0000000208A912FD12073CFC0000000308A91309120700FE05000100135D44F7050000F8135D81030CFD9BFB000000090000000900000001135D4503000000010CFD9BFB000000090000000900000000135D80F700000000050000F8135D81030CFD9BFB000000090000000600000001135D4503000000010CFD9BFB00000009000000050000000412073CFE0000000405000100135D44F7050000F8135D81030CFD9BFB000000090F34D0FA0CFD9BFD00000009000000050000000200000001000000050000000000000005120700FC08A91309120700FE05000100135D44F70000000800000000135D80F700000000050000F8135D81030CFD9BFB0F350CFA00000002000000090000000600000001000000050000000412073CFE0000000405000100135D44F7050000F80000000A00000005000000000000000500000003120700FA08A912FD12073CFC0000000308A91309120700FE000000060000000412073CFE0000000405000100135D44F7050000F8135D8103045489FB1386ACFA000000020CFD9BFD0F350CFC0000000300000005000000050000000500000001000000050000000000000005120700FC08A91309120700FE000000060000000412073CFE0000000405000100135D44F7050000F8135D8103045489FB0000000A138670FA045489FD000000060000000600000002000000010000000500000000000000050000000300000002000000041151E90900000004000000051151E8FD0A0000FE1152250908A912FB12073CFA0000000208A91309120700FE05000100135D44F7050000F8135D8103050000FC00000009135D44FD0CFD9BFB00000009000000050000000300000001135D450300000001050000FC000000090000000500000000135D80F700000000050000F800000006000000050000000412073CFE0000000400000005120700FA08A91309000000060000000500000002000000041151E9090000000400000005000000031151E8FB0A0000FC115224FD000000030A0000FE1152250908A912FD12073CFC0000000308A913090000000900000009120700FC08A91309120700FE0000000900000004000000050000000300000004000000091151E8FD0A0000FE1152250908A913090000000900000005000000041151E90900000004000000050000000300000002"
theorem small_5872573_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5872573_right_root small_5872573_right_fuel small_5872573_right_count small_5872573_right_encoded = true := by
  decide +kernel
theorem small_5872573_right_covered : CoveredBy scale carrier boxes small_5872573_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5872573_right_root small_5872573_right_fuel small_5872573_right_count small_5872573_right_encoded small_5872573_right_checked

theorem cover_5872573 : CoveredBy scale carrier boxes root_5872573 := by
  apply coveredBy_split_literal root_5872573 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0408.root_5872574 small_5872573_right_root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0408.cover_5872574
  · exact small_5872573_right_covered
#print axioms cover_5872573

def root_5872568 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5872568_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5872568_right_fuel : Nat := 1
def small_5872568_right_count : Nat := 1
def small_5872568_right_encoded : String := "00000000"
theorem small_5872568_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5872568_right_root small_5872568_right_fuel small_5872568_right_count small_5872568_right_encoded = true := by
  decide +kernel
theorem small_5872568_right_covered : CoveredBy scale carrier boxes small_5872568_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5872568_right_root small_5872568_right_fuel small_5872568_right_count small_5872568_right_encoded small_5872568_right_checked

theorem cover_5872568 : CoveredBy scale carrier boxes root_5872568 := by
  apply coveredBy_split_literal root_5872568 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0409.root_5872573 small_5872568_right_root coord0 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0409.cover_5872573
  · exact small_5872568_right_covered
#print axioms cover_5872568

def root_5872567 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5872567 : CoveredBy scale carrier boxes root_5872567 := by
  apply coveredBy_split_literal root_5872567 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0409.root_5872568 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2210.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0409.cover_5872568
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2210.covered
#print axioms cover_5872567

def root_5870929 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5870929 : CoveredBy scale carrier boxes root_5870929 := by
  apply coveredBy_split_literal root_5870929 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2206.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0409.root_5872567 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2206.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0409.cover_5872567
#print axioms cover_5870929

def root_5870928 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5870928 : CoveredBy scale carrier boxes root_5870928 := by
  apply coveredBy_split_literal root_5870928 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0409.root_5870929 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2211.root coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0409.cover_5870929
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2211.covered
#print axioms cover_5870928

def root_5886957 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5886957_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5886957_right_fuel : Nat := 24
def small_5886957_right_count : Nat := 305
def small_5886957_right_encoded : String := "1151E9090000000408A912F712073D0008A91303120700F808A912FB12073CFA0000000200000005120700FA08A91307120700FC0000000A0000000312073CFC00000003050000FE135D81090CFD9BF70000000A0F34D1000000000004548A03000000050000000A000000040000000A000000020000000112073CF80000000108A912FB12073CFA0000000208A91307000000050000000A120700FA08A91307120700FC050000FE135D81090CFD9BF70000000A0F34D100000000000CFD9C03000000050000000A000000040000000A0000000312073CFC00000003050000FE135D81090CFD9BF70F350D000000000A000000000F34D100000000000CFD9C030F34D0F80000000A000000010000000A000000040000000A0000000200000000120701000000000008A91303120700F808A912FB12073CFA0000000200000005120700FA08A91307120700FC050000FE135D81090000000500000004000000050000000312073CFC00000003050000FE135D8109045489F71386AD0004548A03000000051386ACF800000001045489FB00000005138670FA0CFD9C07000000050000000A0000000200000000138671000000000004548A03138670F8045489FB00000005138670FA0CFD9C07000000050F350CFC000000030000000500000002000000011386ACF800000001045489FB1386ACFA000000020CFD9C07000000050000000A138670FA0CFD9C070F34D0FC0000000A000000030F350CFC000000030C9A86FC0000000A0F875107000000030000000A0000000200000004135D450900000004045489F700000005138671000000000004548A03000000050000000A000000020000000112073CF80000000108A912FB12073CFA0000000208A913070000000512073CFC00000003050000FE135D8109045489F70000000513867100000000000CFD9C03000000050F350CF8000000010CFD9BFB000000050F34D0FA0000000A0000000200000004135D450900000004045489F70000000513867100000000000000000A120700FA08A91307120700FC050000FE135D8109045489F71386AD000CFD9C030000000500000009000000000000000900000004000000090000000312073CFC00000003050000FE135D8109045489F71386AD000CFD9C030F34D0F8045489FB0000000A138670FA0CFD9C070000000A0000000A00000002000000010F350CF800000001045489FB0000000A138670FA0CFD9C070F34D0FC0000000A000000030000000A000000020000000013867100000000000CFD9C030F34D0F8045489FB1386ACFA000000020CFD9C07000000050000000A138670FA0CFD9C070F34D0FC00000009000000030F350CFC000000030C9A86FC0000000A0F875107000000030000000A00000002000000010F350CF800000001045489FB1386ACFA000000020CFD9C07000000090000000A138670FA0CFD9C07000000090F350CFC000000030C9A86F80F878D030C9A86FC000000090F875107000000030000000A000000010F875103000000010C9A86FC000000090F875107000000030000000A0000000200000004135D450900000004045489F71386AD000CFD9C030F34D0F80000000A000000010000000A0000000013867100000000000CFD9C030F34D0F8045489FB0000000900000009000000010F350CF8000000010000000900000002"
theorem small_5886957_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5886957_right_root small_5886957_right_fuel small_5886957_right_count small_5886957_right_encoded = true := by
  decide +kernel
theorem small_5886957_right_covered : CoveredBy scale carrier boxes small_5886957_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5886957_right_root small_5886957_right_fuel small_5886957_right_count small_5886957_right_encoded small_5886957_right_checked

theorem cover_5886957 : CoveredBy scale carrier boxes root_5886957 := by
  apply coveredBy_split_literal root_5886957 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2213.root small_5886957_right_root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2213.covered
  · exact small_5886957_right_covered
#print axioms cover_5886957

def root_5886952 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5886952_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5886952_right_fuel : Nat := 1
def small_5886952_right_count : Nat := 1
def small_5886952_right_encoded : String := "00000003"
theorem small_5886952_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5886952_right_root small_5886952_right_fuel small_5886952_right_count small_5886952_right_encoded = true := by
  decide +kernel
theorem small_5886952_right_covered : CoveredBy scale carrier boxes small_5886952_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5886952_right_root small_5886952_right_fuel small_5886952_right_count small_5886952_right_encoded small_5886952_right_checked

theorem cover_5886952 : CoveredBy scale carrier boxes root_5886952 := by
  apply coveredBy_split_literal root_5886952 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0409.root_5886957 small_5886952_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0409.cover_5886957
  · exact small_5886952_right_covered
#print axioms cover_5886952

def root_5886951 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5886951_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5886951_right_fuel : Nat := 28
def small_5886951_right_count : Nat := 399
def small_5886951_right_encoded : String := "1151E907000000030A0000FE1152250908A912F712073D0008A91303120700F808A912FB12073CFA0000000200000005120700FA08A91309120700FE000000070000000412073CFE00000004050000FC135D81070CFD9BF7000000070F34D1000000000004548A0300000005000000070000000300000007000000020000000112073CF80000000108A912FB12073CFA00000002000000070000000700000000120701000000000008A91303120700F808A912FB12073CFA0000000200000005120700FA08A91309120700FE000000070000000412073CFE00000004050000FC135D8107045489F71386AD0004548A03000000051386ACF800000001045489FB00000005138670FA0CFD9C09000000050F350CFE00000004000000050000000200000000138671000000000004548A03138670F8045489FB00000005138670FA0CFD9C09000000050F350CFE000000040000000500000002000000011386ACF800000001045489FB00000008138670FA0CFD9C090F34D0FE00000007000000040F350CFE000000040C9A86FE000000080F87510900000004078000FC128A7D07022A4577000000050000000800000003000000080000000200000003135D450700000003045489F700000005138671000000000004548A030000000500000007000000020000000112073CF80000000108A912FB12073CFA0000000208A913090000000512073CFE00000004050000FC135D8107045489F7000000051386710000000000000000080000000300000008120700FA08A913090000000712073CFE00000004050000FC135D8107045489F71386AD000CFD9C030F34D0F80000000700000001000000070000000013867100000000000CFD9C030F34D0F8045489FB00000008138670FA0CFD9C09000000070F350CFE000000040C9A86FE000000070000000700000002000000010F350CF800000001045489FB1386ACFA00000002000000070000000700000003135D450700000003045489F70000000713867100000000000000000700000002000000041151E9090000000408A912F712073D0008A91303120700F808A912FB00000005120700FA050000FC135D8107050000FE135D81090CFD9BF7000000050F34D100000000000000000500000004000000050000000300000005000000020000000112073CF80000000108A912FB00000005120700FA050000FC135D8107050000FE135D81090CFD9BF7000000070F34D100000000000000000A000000040000000A00000003135D450700000003050000FE00000007000000070000000200000000120701000000000008A91303120700F808A912FB00000005120700FA050000FC135D8107050000FE135D8109045489F700000005138671000000000004548A03000000051386ACF800000001045489FB00000005138670FA0000000600000002000000040000000600000003135D45070000000300000006000000020000000112073CF80000000108A912FB12073CFA00000002050000FC135D8107050000FE135D8109045489F700000005138671000000000000000008000000040000000A00000003135D450700000003050000FE0000000800000006120700FA050000FC135D8107050000FE135D8109045489F71386AD000CFD9C030F34D0F80000000A000000010F350CF800000001045489FB00000007000000070000000013867100000000000CFD9C030F34D0F8045489FB00000008138670FA078000FC128A7D07078000FE128A7D09022A45770000000A13E1C500000000000AD3578310D100F8000000080000000100000007000000040000000A00000003128A410700000003078000FE000000070000000600000002000000010F350CF800000001045489FB1386ACFA000000020C9A86F8000000080F875103000000010000000A138670FA0C9A86F80F878D03078000FC0000000A00000007000000010F87510300000001078000FC128A7D070000000A00000003000000070000000200000004135D450900000004045489F70000000A13867100000000000CFD9C030F34D0F800000006000000010000000A00000003135D450700000003050000FE135D8109045489F70000000713867100000000000CFD9C030F34D0F800000006000000010000000700000004135D450900000004045489F71386AD000CFD9C030000000600000007000000000000000600000002"
theorem small_5886951_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5886951_right_root small_5886951_right_fuel small_5886951_right_count small_5886951_right_encoded = true := by
  decide +kernel
theorem small_5886951_right_covered : CoveredBy scale carrier boxes small_5886951_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5886951_right_root small_5886951_right_fuel small_5886951_right_count small_5886951_right_encoded small_5886951_right_checked

theorem cover_5886951 : CoveredBy scale carrier boxes root_5886951 := by
  apply coveredBy_split_literal root_5886951 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0409.root_5886952 small_5886951_right_root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0409.cover_5886952
  · exact small_5886951_right_covered
#print axioms cover_5886951

def root_5886945 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5886945_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5886945_left_fuel : Nat := 1
def small_5886945_left_count : Nat := 1
def small_5886945_left_encoded : String := "00000002"
theorem small_5886945_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5886945_left_root small_5886945_left_fuel small_5886945_left_count small_5886945_left_encoded = true := by
  decide +kernel
theorem small_5886945_left_covered : CoveredBy scale carrier boxes small_5886945_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5886945_left_root small_5886945_left_fuel small_5886945_left_count small_5886945_left_encoded small_5886945_left_checked

theorem cover_5886945 : CoveredBy scale carrier boxes root_5886945 := by
  apply coveredBy_split_literal root_5886945 small_5886945_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0409.root_5886951 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5886945_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0409.cover_5886951
#print axioms cover_5886945

def root_5886944 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5886944_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5886944_right_fuel : Nat := 13
def small_5886944_right_count : Nat := 45
def small_5886944_right_encoded : String := "1151E8FB0A0000FC115225070A0000FE1152250908A912F712073D0008A91303120700F808A91307120700FC08A91309000000070000000A0000000312073CFC00000003000000050000000112073CF80000000100000005000000001207010000000000000000050000000400000005000000031151E907000000030A0000FE1152250900000005000000041151E9090000000408A912F700000005120701000000000008A91303000000050000000800000002"
theorem small_5886944_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5886944_right_root small_5886944_right_fuel small_5886944_right_count small_5886944_right_encoded = true := by
  decide +kernel
theorem small_5886944_right_covered : CoveredBy scale carrier boxes small_5886944_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5886944_right_root small_5886944_right_fuel small_5886944_right_count small_5886944_right_encoded small_5886944_right_checked

theorem cover_5886944 : CoveredBy scale carrier boxes root_5886944 := by
  apply coveredBy_split_literal root_5886944 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0409.root_5886945 small_5886944_right_root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0409.cover_5886945
  · exact small_5886944_right_covered
#print axioms cover_5886944

def root_5886939 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5886939_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5886939_right_fuel : Nat := 1
def small_5886939_right_count : Nat := 1
def small_5886939_right_encoded : String := "00000001"
theorem small_5886939_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5886939_right_root small_5886939_right_fuel small_5886939_right_count small_5886939_right_encoded = true := by
  decide +kernel
theorem small_5886939_right_covered : CoveredBy scale carrier boxes small_5886939_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5886939_right_root small_5886939_right_fuel small_5886939_right_count small_5886939_right_encoded small_5886939_right_checked

theorem cover_5886939 : CoveredBy scale carrier boxes root_5886939 := by
  apply coveredBy_split_literal root_5886939 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0409.root_5886944 small_5886939_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0409.cover_5886944
  · exact small_5886939_right_covered
#print axioms cover_5886939

def root_5886938 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5886938 : CoveredBy scale carrier boxes root_5886938 := by
  apply coveredBy_split_literal root_5886938 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0409.root_5886939 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2214.root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0409.cover_5886939
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2214.covered
#print axioms cover_5886938

def root_5886932 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5886932_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5886932_left_fuel : Nat := 1
def small_5886932_left_count : Nat := 1
def small_5886932_left_encoded : String := "00000000"
theorem small_5886932_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5886932_left_root small_5886932_left_fuel small_5886932_left_count small_5886932_left_encoded = true := by
  decide +kernel
theorem small_5886932_left_covered : CoveredBy scale carrier boxes small_5886932_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5886932_left_root small_5886932_left_fuel small_5886932_left_count small_5886932_left_encoded small_5886932_left_checked

theorem cover_5886932 : CoveredBy scale carrier boxes root_5886932 := by
  apply coveredBy_split_literal root_5886932 small_5886932_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0409.root_5886938 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5886932_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0409.cover_5886938
#print axioms cover_5886932

def root_5886308 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5886308_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5886308_left_fuel : Nat := 23
def small_5886308_left_count : Nat := 291
def small_5886308_left_encoded : String := "1151E8F70A0000F8115225030A0000FA115224FB000000020A0000FC115225070A0000FE1152250908A91303120700F808A912FB12073CFA0000000208A91307120700FC08A91309000000070000000A0000000312073CFC0000000308A913090000000712073CFE000000040000000A120700FA08A91307120700FC08A913090000000712073CFE00000004000000080000000312073CFC0000000308A913090000000712073CFE000000040500010000000007135D80F70000000004548A03138670F8045489FB00000007000000070000000100000007000000020000000112073CF80000000108A912FB12073CFA0000000208A91307120700FC08A91309120700FE05000100135D44F70000000A00000000135D80F7000000000CFD9C03000000070000000A0000000412073CFE000000040000000A0000000312073CFC0000000308A91309120700FE050001000000000A000000070000000412073CFE000000040000000A120700FA08A91307120700FC08A913090000000712073CFE0000000405000100135D44F70CFD9C03000000080000000A00000000135D80F7000000000CFD9C030F34D0F80000000A000000010F350CF800000001045489FB0000000A000000070000000312073CFC0000000308A913090000000712073CFE0000000405000100000000070000000700000002000000041151E9090000000408A91303120700F808A912FB0000000A120700FA08A913070000000A0000000A000000020000000112073CF80000000108A912FB0000000A120700FA08A91307120700FC0000000A000000030000000A00000002000000031151E907000000030A0000FE1152250908A91303120700F8000000070000000112073CF80000000108A912FB0000000A00000007000000041151E9090000000408A91303120700F80000000A000000010000000A1151E8FB0A0000FC115225070A0000FE1152250908A91303120700F808A91307120700FC0000000A000000030000000A0000000112073CF80000000108A91307120700FC0000000A000000030000000A000000041151E9090000000400000005000000031151E907000000030000000500000002000000011151E903000000010A0000FA115224FB000000020A0000FC115225070A0000FE1152250908A912FB12073CFA0000000208A91307120700FC08A91309120700FE0500010000000008000000050000000412073CFE000000040000000A000000030000000A120700FA08A91307120700FC08A91309120700FE000000080000000412073CFE0000000405000100135D44F70000000A00000000135D80F700000000050000F8135D8103045489FB0000000A138670FA0000000A0000000200000001000000050000000312073CFC0000000308A913090000000712073CFE00000004050001000000000A135D80F700000000050000F800000007135D4503000000010000000A00000002000000041151E9090000000408A912FB0000000A120700FA0000000A00000002000000031151E907000000030A0000FE1152250908A912FB0000000A120700FA0000000700000002000000040000000A1151E8FB000000050000000200000000"
theorem small_5886308_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5886308_left_root small_5886308_left_fuel small_5886308_left_count small_5886308_left_encoded = true := by
  decide +kernel
theorem small_5886308_left_covered : CoveredBy scale carrier boxes small_5886308_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5886308_left_root small_5886308_left_fuel small_5886308_left_count small_5886308_left_encoded small_5886308_left_checked

theorem cover_5886308 : CoveredBy scale carrier boxes root_5886308 := by
  apply coveredBy_split_literal root_5886308 small_5886308_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0409.root_5886932 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_5886308_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0409.cover_5886932
#print axioms cover_5886308

def root_5884974 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5884974 : CoveredBy scale carrier boxes root_5884974 := by
  apply coveredBy_split_literal root_5884974 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2212.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0409.root_5886308 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2212.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0409.cover_5886308
#print axioms cover_5884974

def root_5884973 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5884973 : CoveredBy scale carrier boxes root_5884973 := by
  apply coveredBy_split_literal root_5884973 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0409.root_5884974 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2215.root coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0409.cover_5884974
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2215.covered
#print axioms cover_5884973

def root_5870927 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5870927 : CoveredBy scale carrier boxes root_5870927 := by
  apply coveredBy_split_literal root_5870927 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0409.root_5870928 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0409.root_5884973 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0409.cover_5870928
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0409.cover_5884973
#print axioms cover_5870927

def root_5899399 : ZRayBox := fun j => (#[⟨⟨(2097152), (4194304)⟩, ⟨(-16645888), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5899399 : CoveredBy scale carrier boxes root_5899399 := by
  apply coveredBy_split_literal root_5899399 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2216.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2217.root coord1 true (5448672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2216.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2217.covered
#print axioms cover_5899399

def root_5899393 : ZRayBox := fun j => (#[⟨⟨(2097152), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5899393_left_root : ZRayBox := fun j => (#[⟨⟨(2097152), (4194304)⟩, ⟨(-16777216), (-16645888)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5899393_left_fuel : Nat := 1
def small_5899393_left_count : Nat := 1
def small_5899393_left_encoded : String := "00000000"
theorem small_5899393_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5899393_left_root small_5899393_left_fuel small_5899393_left_count small_5899393_left_encoded = true := by
  decide +kernel
theorem small_5899393_left_covered : CoveredBy scale carrier boxes small_5899393_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5899393_left_root small_5899393_left_fuel small_5899393_left_count small_5899393_left_encoded small_5899393_left_checked

theorem cover_5899393 : CoveredBy scale carrier boxes root_5899393 := by
  apply coveredBy_split_literal root_5899393 small_5899393_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0409.root_5899399 coord0 true (-16645888)
  · decide +kernel
  · decide +kernel
  · exact small_5899393_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0409.cover_5899399
#print axioms cover_5899393

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0409
