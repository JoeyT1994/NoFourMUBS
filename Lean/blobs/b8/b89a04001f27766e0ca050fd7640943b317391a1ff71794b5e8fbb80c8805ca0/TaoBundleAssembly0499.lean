import TaoBundleAssembly0492
import TaoBundleAssembly0496
import TaoBundleAssembly0498
import TaoBundleChunkBatch0686
import TaoBundleChunkBatch0687
import TaoBundleChunkBatch0688
import TaoBundleChunkBatch0689
import TaoBundleChunkBatch0690
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0499
def root_7284189 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7284189_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7284189_left_fuel : Nat := 30
def small_7284189_left_count : Nat := 471
def small_7284189_left_encoded : String := "1152250908A91303120701020000000108A91307120701060000000308A91309120700FE05000100135D44F7050000FA000000060000000A00000000000000060000000412073CFE0000000405000100135D44F7050000FA135D80FB0000000204548A03000000091386AD0204548A070000000600000009000000010000000A00000000135D80F7000000000000000A12073D0608A91309120700FE000000090000000412073CFE0000000405000100135D44F7050000FA00000009135D44FB04548A031386710200000001000000091386AD020CFD9C070F34D106000000030CFD9C0900000009000000090F350D060CFD9C09000000090000000900000003000000010000000200000000135D80F700000000050000FA00000009135D44FB04548A03000000091386AD020CFD9C070F34D106000000030CFD9C0900000009000000090000000900000001000000020000000312073D0208A91307120701060000000308A91309120700FE05000100135D44F7050000FA135D80FB000000020CFD9C030000000600000005135D44FB0CFD9C0300000006000000070000000200000000135D80F700000000050000FA135D80FB000000020CFD9C03000000060F350D0204548A07000000060000000500000001135D44FB0CFD9C03000000060F350D0204548A07000000060000000600000001000000020000000412073CFE0000000405000100135D44F7050000FA135D80FB000000020CFD9C030000000600000006135D44FB0CFD9C030F34D1020000000104548A07000000061386AD060CFD9C09000000060F350CFE000000040C9A86FE0F878D09000000060000000400000006000000030F350D0204548A07000000061386AD060CFD9C09000000060F350CFE000000040000000600000003000000010000000200000000135D80F700000000050000FA135D80FB000000020CFD9C03000000060F350D020000000600000001135D44FB0CFD9C030F34D1020000000104548A07000000061386AD060CFD9C09000000060000000A000000030F350D0200000006000000010000000212073D0608A91309120700FE0500010000000005135D80F700000000050000FA00000005135D44FB0CFD9C030F34D10200000001000000090F350D020000000500000001000000020000000412073CFE0000000405000100135D44F7050000FA00000005135D44FB0CFD9C030F34D102000000010CFD9C070F34D106000000030CFD9C090F34D0FE00000005000000040F350CFE000000040C9A86FE0F878D09028001000000000500000009000000040F875109000000040280010013D7B0F7028000FA0000000513D7B0FB0AD357830000000900000005000000020000000013D7ECF700000000028000FA0000000913D7B0FB0AD357830000000910D13D020AD35787000000060000000900000001000000020F350D060CFD9C090F34D0FE00000005000000040F350CFE000000040C9A8706000000050F878D070000000500000003000000030F350D020CFD9C070F34D106000000030CFD9C090F34D0FE00000005000000040F350CFE000000040C9A8702000000050F878D0300000005000000010F350D060000000500000003000000010000000200000000135D80F700000000050000FA135D80FB000000020CFD9C030F34D102000000010CFD9C070F34D106000000030CFD9C090000000600000009000000090F350D020CFD9C070F34D10600000003000000060F350D06000000050000000300000001135D44FB0CFD9C030F34D102000000010CFD9C070F34D106000000030CFD9C090F34D0FE00000009000000040F350CFE000000040C9A86FE0F878D0907800100128A40F7000000090000000000000009000000040F8751090000000407800100128A40F7028000FA0000000613D7B0FB0AD357830000000910D13D0200000006000000010000000200000000128A7CF700000000000000060F350D060CFD9C090F34D0FE00000005000000040F350CFE000000040C9A87060F875107000000030C9A86FE000000090F87510900000004000000090F878D070C9A86FE000000090F8751090000000407800100000000090000000900000003000000030F350D020CFD9C070F34D106000000030CFD9C090F34D0FE00000005000000040F350CFE000000040C9A8702000000060F878D030C9A86FE0F878D09000000060000000400000006000000010F350D060CFD9C090F34D0FE00000005000000040F350CFE000000040C9A87020F875103000000010C9A8706000000050F878D070C9A86FE0000000500000006000000030F878D030C9A87060F875107000000030C9A86FE000000050F875109000000040780010000000005128A7CF700000000028000FA0000000513D7B0FB0DE7CA020000000500000009000000020F878D070C9A86FE0F878D0900000005000000040F8751090000000407800100128A40F7028000FA0000000513D7B0FB000000050000000200000000128A7CF700000000028000FA0000000613D7B0FB0DE7CA02000000060E6015030000000600000001000000020000000300000001000000030000000100000002000000030000000100000004"
theorem small_7284189_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7284189_left_root small_7284189_left_fuel small_7284189_left_count small_7284189_left_encoded = true := by
  decide +kernel
theorem small_7284189_left_covered : CoveredBy scale carrier boxes small_7284189_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7284189_left_root small_7284189_left_fuel small_7284189_left_count small_7284189_left_encoded small_7284189_left_checked

theorem cover_7284189 : CoveredBy scale carrier boxes root_7284189 := by
  apply coveredBy_split_literal root_7284189 small_7284189_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0498.root_7285189 coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact small_7284189_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0498.cover_7285189
#print axioms cover_7284189

def root_7284184 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7284184_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7284184_right_fuel : Nat := 1
def small_7284184_right_count : Nat := 1
def small_7284184_right_encoded : String := "00000003"
theorem small_7284184_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7284184_right_root small_7284184_right_fuel small_7284184_right_count small_7284184_right_encoded = true := by
  decide +kernel
theorem small_7284184_right_covered : CoveredBy scale carrier boxes small_7284184_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7284184_right_root small_7284184_right_fuel small_7284184_right_count small_7284184_right_encoded small_7284184_right_checked

theorem cover_7284184 : CoveredBy scale carrier boxes root_7284184 := by
  apply coveredBy_split_literal root_7284184 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0499.root_7284189 small_7284184_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0499.cover_7284189
  · exact small_7284184_right_covered
#print axioms cover_7284184

def root_7283772 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7283772_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7283772_left_fuel : Nat := 23
def small_7283772_left_count : Nat := 199
def small_7283772_left_encoded : String := "1151E907000000030A0000FE1152250908A91303120701020000000108A913090000000912073CFE0000000405000100000000050000000912073D0208A91309120700FE000000050000000412073CFE000000040500010000000005135D80F700000000050000FA00000005135D44FB0500010600000005135D81070CFD9C030F34D102000000010CFD9C09000000050F350CFE000000040C9A86FE000000050F87510900000004000000090F350D020000000500000001000000030000000200000001000000041151E9090000000408A91303120701020000000105000100135D44F7050000FA135D80FB000000020500010600000005135D8107050000FE00000005135D45090000000404548A03000000080000000A00000003135D44FB0500010600000008135D8107050000FE0000000800000008000000030000000200000000135D80F700000000050000FA135D80FB0000000205000106135D450700000003050000FE0000000500000008135D8107050000FE00000009135D45090000000404548A03000000090000000700000003135D44FB05000106135D450700000003050000FE0000000800000007135D8107050000FE135D8109000000090000000400000007000000030000000212073D0205000100135D44F7050000FA0000000A135D44FB0000000A0000000200000000135D80F700000000050000FA135D80FB0000000205000106135D4507000000030000000A135D8107050000FE135D81090CFD9C030F34D102000000010780010000000005000000090000000A000000040000000A00000003135D44FB05000106135D4507000000030000000A135D8107050000FE135D81090CFD9C030F34D1020000000107800100128A40F7028000FA13D7ECFB000000020780010600000005128A7D07078000FE00000005000000070000000313D7B0FB078001060000000A128A7D07078000FE0000000900000007000000030000000200000000128A7CF700000000028000FA13D7ECFB0000000207800106000000070000000713D7B0FB078001060000000700000007000000020000000A000000040000000A000000030000000200000001"
theorem small_7283772_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7283772_left_root small_7283772_left_fuel small_7283772_left_count small_7283772_left_encoded = true := by
  decide +kernel
theorem small_7283772_left_covered : CoveredBy scale carrier boxes small_7283772_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7283772_left_root small_7283772_left_fuel small_7283772_left_count small_7283772_left_encoded small_7283772_left_checked

theorem cover_7283772 : CoveredBy scale carrier boxes root_7283772 := by
  apply coveredBy_split_literal root_7283772 small_7283772_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0499.root_7284184 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_7283772_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0499.cover_7284184
#print axioms cover_7283772

def root_7283767 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7283767_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7283767_right_fuel : Nat := 1
def small_7283767_right_count : Nat := 1
def small_7283767_right_encoded : String := "00000002"
theorem small_7283767_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7283767_right_root small_7283767_right_fuel small_7283767_right_count small_7283767_right_encoded = true := by
  decide +kernel
theorem small_7283767_right_covered : CoveredBy scale carrier boxes small_7283767_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7283767_right_root small_7283767_right_fuel small_7283767_right_count small_7283767_right_encoded small_7283767_right_checked

theorem cover_7283767 : CoveredBy scale carrier boxes root_7283767 := by
  apply coveredBy_split_literal root_7283767 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0499.root_7283772 small_7283767_right_root coord2 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0499.cover_7283772
  · exact small_7283767_right_covered
#print axioms cover_7283767

def root_7282783 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7282783_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7282783_left_fuel : Nat := 24
def small_7282783_left_count : Nat := 459
def small_7282783_left_encoded : String := "115224FB000000020A0001061151E907000000030A0000FE1152250908A91303120701020000000108A912FB00000005120700FA000000050000000212073D0208A912FB00000005120700FA000000050000000200000001000000041151E9090000000408A91303120701020000000108A912FB12073CFA0000000205000100135D44F705000106000000050000000900000000135D80F70000000005000106135D4507000000030000000900000009120700FA000000090000000212073D0208A912FB12073CFA0000000205000100135D44F70500010600000005135D8107050000FE000000050000000A0000000300000000135D80F70000000005000106135D450700000003050000FE135D810900000005000000040000000A135D8107050000FE135D81090CFD9C030F34D10200000001000000090F350D020CFD9BFB00000005000000070000000100000004135D4509000000040CFD9C030F34D102000000010CFD9BFB0000000A000000070000000A00000003120700FA05000100135D44F705000106000000050000000700000000135D80F70000000005000106135D450700000003050000FE00000009135D4509000000040CFD9C030F34D102000000010000000900000007135D8107050000FE0000000700000007000000030000000200000001115225070A0000FE1152250908A91303120701020000000108A912FB12073CFA0000000208A91307120701060000000308A91309120700FE000000090000000412073CFE0000000405000100135D44F700000009000000000000000612073D0608A913090000000912073CFE0000000405000100000000050000000900000003120700FA08A91307120701060000000300000009000000090000000212073D0208A912FB12073CFA0000000208A91307120701060000000308A91309120700FE0500010000000005135D80F700000000000000050000000412073CFE000000040500010000000005135D80F7000000000CFD9C030F34D102000000010CFD9BFB000000060F34D0FA00000005000000020F350D02000000050000000112073D0608A91309120700FE000000050000000412073CFE000000040500010000000005135D80F7000000000CFD9C030F34D102000000010CFD9BFB0F350CFA000000020CFD9C0700000005000000090F34D0FA00000005000000020F350D020CFD9BFB000000050F34D0FA00000005000000020000000100000003120700FA08A913070000000512073D0608A913090000000512073CFE000000040500010000000005135D80F7000000000CFD9C03000000050F350D02045489FB000000050000000900000001000000030000000200000001000000041151E9090000000408A91303120701020000000108A912FB12073CFA0000000208A91307120701060000000305000100135D44F7050000FE0000000600000006000000000000000612073D0605000100135D44F7050000FE00000009135D45090000000404548A03000000091386AD020CFD9BFB0F350CFA000000020CFD9C070F34D106000000030000000600000009000000090000000100000000135D80F700000000050000FE00000009135D45090000000404548A03000000091386AD020CFD9BFB0F350CFA000000020CFD9C0700000006000000090F34D0FA00000006000000020000000100000003120700FA08A9130700000006000000090000000212073D0208A912FB12073CFA0000000208A9130712070106000000030000000612073D0605000100135D44F7050000FE135D81090CFD9C030F34D102000000010CFD9BFB0F350CFA000000020CFD9C0700000005000000090F34D0FA00000005000000020F350D020CFD9BFB000000050F34D0FA00000005000000020000000100000004135D4509000000040CFD9C030F34D102000000010CFD9BFB0F350CFA000000020CFD9C07000000060F350D060C9A86FA0F878CFB00000002000000060F8750FB0000000A00000002000000030F34D0FA00000006000000020F350D020CFD9BFB0F350CFA000000020CFD9C07000000060000000A0F34D0FA00000006000000020000000100000000135D80F700000000050000FE135D81090CFD9C030F34D102000000010CFD9BFB0F350CFA000000020CFD9C0700000006000000090F34D0FA00000006000000020F350D020CFD9BFB000000060F34D0FA00000006000000020000000100000004135D4509000000040CFD9C030F34D102000000010CFD9BFB0F350CFA000000020CFD9C07000000060F350D0600000006000000030F34D0FA00000006000000020F350D02000000060000000100000003120700FA08A9130712070106000000030000000612073D0605000100135D44F7050000FE135D81090CFD9C03000000050F350D020000000900000001000000040000000600000000135D80F700000000050000FE135D81090CFD9C03000000090F350D02045489FB00000006000000070000000100000004135D4509000000040000000600000003000000020000000100000003"
theorem small_7282783_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7282783_left_root small_7282783_left_fuel small_7282783_left_count small_7282783_left_encoded = true := by
  decide +kernel
theorem small_7282783_left_covered : CoveredBy scale carrier boxes small_7282783_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7282783_left_root small_7282783_left_fuel small_7282783_left_count small_7282783_left_encoded small_7282783_left_checked

theorem cover_7282783 : CoveredBy scale carrier boxes root_7282783 := by
  apply coveredBy_split_literal root_7282783 small_7282783_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0499.root_7283767 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact small_7282783_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0499.cover_7283767
#print axioms cover_7282783

def root_7282778 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7282778_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7282778_right_fuel : Nat := 1
def small_7282778_right_count : Nat := 1
def small_7282778_right_encoded : String := "00000001"
theorem small_7282778_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7282778_right_root small_7282778_right_fuel small_7282778_right_count small_7282778_right_encoded = true := by
  decide +kernel
theorem small_7282778_right_covered : CoveredBy scale carrier boxes small_7282778_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7282778_right_root small_7282778_right_fuel small_7282778_right_count small_7282778_right_encoded small_7282778_right_checked

theorem cover_7282778 : CoveredBy scale carrier boxes root_7282778 := by
  apply coveredBy_split_literal root_7282778 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0499.root_7282783 small_7282778_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0499.cover_7282783
  · exact small_7282778_right_covered
#print axioms cover_7282778

def root_7282378 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7282378_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7282378_left_fuel : Nat := 20
def small_7282378_left_count : Nat := 187
def small_7282378_left_encoded : String := "1151E903000000010A0000FA115224FB000000020A0001061151E907000000030A0000FE1152250908A912FB00000005120700FA0000000500000002000000041151E9090000000408A912FB0000000A00000007115225070A0000FE1152250908A912FB12073CFA0000000208A913070000000512073D060000000500000003120700FA08A913070000000512073D06000000050000000300000002000000041151E9090000000408A912FB12073CFA0000000208A9130712070106000000030000000612073D0605000100135D44F70500010200000005135D8103000000060000000100000000135D80F7000000000500010200000006135D8103050000FE135D81090000000600000004000000060000000100000003120700FA08A9130712070106000000030000000612073D0605000100135D44F70500010200000005135D8103050000FE00000005000000060000000100000000000000070000000300000002000000031151E8FB0A0001061151E907000000030A0000FE000000050000000A115225070A0000FE1152250908A91307120701060000000308A91309120700FE000000050000000412073CFE000000040500010000000005135D80F7000000000500010200000005135D8103050000FA00000005000000060000000112073D0608A91309120700FE000000050000000412073CFE000000040500010000000005135D80F7000000000500010200000005135D8103050000FA00000005135D44FB0CFD9C070F34D10600000003000000060F350D060000000500000003000000020000000100000003000000041151E9090000000408A9130712070106000000030000000612073D0605000100135D44F7050001020000000A135D8103050000FA0000000A135D44FB0000000A000000020000000100000000135D80F7000000000500010200000006135D8103050000FA00000006135D44FB050000FE135D81090CFD9C07000000060000000A00000004000000060000000200000001000000030000000300000002"
theorem small_7282378_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7282378_left_root small_7282378_left_fuel small_7282378_left_count small_7282378_left_encoded = true := by
  decide +kernel
theorem small_7282378_left_covered : CoveredBy scale carrier boxes small_7282378_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7282378_left_root small_7282378_left_fuel small_7282378_left_count small_7282378_left_encoded small_7282378_left_checked

theorem cover_7282378 : CoveredBy scale carrier boxes root_7282378 := by
  apply coveredBy_split_literal root_7282378 small_7282378_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0499.root_7282778 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_7282378_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0499.cover_7282778
#print axioms cover_7282378

def root_7282373 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7282373_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7282373_right_fuel : Nat := 1
def small_7282373_right_count : Nat := 1
def small_7282373_right_encoded : String := "00000000"
theorem small_7282373_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7282373_right_root small_7282373_right_fuel small_7282373_right_count small_7282373_right_encoded = true := by
  decide +kernel
theorem small_7282373_right_covered : CoveredBy scale carrier boxes small_7282373_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7282373_right_root small_7282373_right_fuel small_7282373_right_count small_7282373_right_encoded small_7282373_right_checked

theorem cover_7282373 : CoveredBy scale carrier boxes root_7282373 := by
  apply coveredBy_split_literal root_7282373 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0499.root_7282378 small_7282373_right_root coord0 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0499.cover_7282378
  · exact small_7282373_right_covered
#print axioms cover_7282373

def root_7293782 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7293782 : CoveredBy scale carrier boxes root_7293782 := by
  apply coveredBy_split_literal root_7293782 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2744.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2745.root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2744.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2745.covered
#print axioms cover_7293782

def root_7293777 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7293777_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7293777_right_fuel : Nat := 1
def small_7293777_right_count : Nat := 1
def small_7293777_right_encoded : String := "00000002"
theorem small_7293777_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7293777_right_root small_7293777_right_fuel small_7293777_right_count small_7293777_right_encoded = true := by
  decide +kernel
theorem small_7293777_right_covered : CoveredBy scale carrier boxes small_7293777_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7293777_right_root small_7293777_right_fuel small_7293777_right_count small_7293777_right_encoded small_7293777_right_checked

theorem cover_7293777 : CoveredBy scale carrier boxes root_7293777 := by
  apply coveredBy_split_literal root_7293777 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0499.root_7293782 small_7293777_right_root coord2 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0499.cover_7293782
  · exact small_7293777_right_covered
#print axioms cover_7293777

def root_7290975 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7290975 : CoveredBy scale carrier boxes root_7290975 := by
  apply coveredBy_split_literal root_7290975 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2743.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0499.root_7293777 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2743.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0499.cover_7293777
#print axioms cover_7290975

def root_7290970 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7290970_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7290970_right_fuel : Nat := 1
def small_7290970_right_count : Nat := 1
def small_7290970_right_encoded : String := "00000001"
theorem small_7290970_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7290970_right_root small_7290970_right_fuel small_7290970_right_count small_7290970_right_encoded = true := by
  decide +kernel
theorem small_7290970_right_covered : CoveredBy scale carrier boxes small_7290970_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7290970_right_root small_7290970_right_fuel small_7290970_right_count small_7290970_right_encoded small_7290970_right_checked

theorem cover_7290970 : CoveredBy scale carrier boxes root_7290970 := by
  apply coveredBy_split_literal root_7290970 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0499.root_7290975 small_7290970_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0499.cover_7290975
  · exact small_7290970_right_covered
#print axioms cover_7290970

def root_7288702 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7288702 : CoveredBy scale carrier boxes root_7288702 := by
  apply coveredBy_split_literal root_7288702 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2742.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0499.root_7290970 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2742.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0499.cover_7290970
#print axioms cover_7288702

def root_7288696 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7288696_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7288696_left_fuel : Nat := 1
def small_7288696_left_count : Nat := 1
def small_7288696_left_encoded : String := "00000000"
theorem small_7288696_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7288696_left_root small_7288696_left_fuel small_7288696_left_count small_7288696_left_encoded = true := by
  decide +kernel
theorem small_7288696_left_covered : CoveredBy scale carrier boxes small_7288696_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7288696_left_root small_7288696_left_fuel small_7288696_left_count small_7288696_left_encoded small_7288696_left_checked

theorem cover_7288696 : CoveredBy scale carrier boxes root_7288696 := by
  apply coveredBy_split_literal root_7288696 small_7288696_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0499.root_7288702 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_7288696_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0499.cover_7288702
#print axioms cover_7288696

def root_7282372 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7282372 : CoveredBy scale carrier boxes root_7282372 := by
  apply coveredBy_split_literal root_7282372 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0499.root_7282373 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0499.root_7288696 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0499.cover_7282373
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0499.cover_7288696
#print axioms cover_7282372

def root_7252168 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7252168 : CoveredBy scale carrier boxes root_7252168 := by
  apply coveredBy_split_literal root_7252168 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0498.root_7252169 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0499.root_7282372 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0498.cover_7252169
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0499.cover_7282372
#print axioms cover_7252168

def root_7298813 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7298813 : CoveredBy scale carrier boxes root_7298813 := by
  apply coveredBy_split_literal root_7298813 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2747.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2748.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2747.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2748.covered
#print axioms cover_7298813

def root_7297051 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7297051 : CoveredBy scale carrier boxes root_7297051 := by
  apply coveredBy_split_literal root_7297051 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2746.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0499.root_7298813 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2746.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0499.cover_7298813
#print axioms cover_7297051

def root_7252167 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7252167 : CoveredBy scale carrier boxes root_7252167 := by
  apply coveredBy_split_literal root_7252167 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0499.root_7252168 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0499.root_7297051 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0499.cover_7252168
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0499.cover_7297051
#print axioms cover_7252167

def root_7188283 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7188283 : CoveredBy scale carrier boxes root_7188283 := by
  apply coveredBy_split_literal root_7188283 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0496.root_7188284 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0499.root_7252167 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0496.cover_7188284
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0499.cover_7252167
#print axioms cover_7188283

def root_7075995 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7075995 : CoveredBy scale carrier boxes root_7075995 := by
  apply coveredBy_split_literal root_7075995 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0492.root_7075996 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0499.root_7188283 coord3 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0492.cover_7075996
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0499.cover_7188283
#print axioms cover_7075995

def root_7306960 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7306960 : CoveredBy scale carrier boxes root_7306960 := by
  apply coveredBy_split_literal root_7306960 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2751.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2752.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2751.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2752.covered
#print axioms cover_7306960

def root_7304270 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7304270 : CoveredBy scale carrier boxes root_7304270 := by
  apply coveredBy_split_literal root_7304270 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2750.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0499.root_7306960 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2750.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0499.cover_7306960
#print axioms cover_7304270

def root_7302292 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7302292 : CoveredBy scale carrier boxes root_7302292 := by
  apply coveredBy_split_literal root_7302292 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2749.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0499.root_7304270 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2749.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0499.cover_7304270
#print axioms cover_7302292

def root_7313459 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7313459 : CoveredBy scale carrier boxes root_7313459 := by
  apply coveredBy_split_literal root_7313459 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2755.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2756.root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2755.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2756.covered
#print axioms cover_7313459

def root_7313454 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7313454_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7313454_right_fuel : Nat := 1
def small_7313454_right_count : Nat := 1
def small_7313454_right_encoded : String := "00000002"
theorem small_7313454_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7313454_right_root small_7313454_right_fuel small_7313454_right_count small_7313454_right_encoded = true := by
  decide +kernel
theorem small_7313454_right_covered : CoveredBy scale carrier boxes small_7313454_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7313454_right_root small_7313454_right_fuel small_7313454_right_count small_7313454_right_encoded small_7313454_right_checked

theorem cover_7313454 : CoveredBy scale carrier boxes root_7313454 := by
  apply coveredBy_split_literal root_7313454 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0499.root_7313459 small_7313454_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0499.cover_7313459
  · exact small_7313454_right_covered
#print axioms cover_7313454

def root_7313453 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7313453_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7313453_right_fuel : Nat := 9
def small_7313453_right_count : Nat := 37
def small_7313453_right_encoded : String := "1151E905000000020A0000FC115225070A0000FE1152250908A912F700000006120701000000000000000006000000041151E9090000000408A912F712073D0008A91307000000060000000800000000120701000000000008A913070000000600000005000000031151E907000000030A0000FE1152250908A912F70000000700000007000000041151E9090000000400000005"
theorem small_7313453_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7313453_right_root small_7313453_right_fuel small_7313453_right_count small_7313453_right_encoded = true := by
  decide +kernel
theorem small_7313453_right_covered : CoveredBy scale carrier boxes small_7313453_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7313453_right_root small_7313453_right_fuel small_7313453_right_count small_7313453_right_encoded small_7313453_right_checked

theorem cover_7313453 : CoveredBy scale carrier boxes root_7313453 := by
  apply coveredBy_split_literal root_7313453 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0499.root_7313454 small_7313453_right_root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0499.cover_7313454
  · exact small_7313453_right_covered
#print axioms cover_7313453

def root_7313447 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7313447_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7313447_left_fuel : Nat := 1
def small_7313447_left_count : Nat := 1
def small_7313447_left_encoded : String := "00000001"
theorem small_7313447_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7313447_left_root small_7313447_left_fuel small_7313447_left_count small_7313447_left_encoded = true := by
  decide +kernel
theorem small_7313447_left_covered : CoveredBy scale carrier boxes small_7313447_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7313447_left_root small_7313447_left_fuel small_7313447_left_count small_7313447_left_encoded small_7313447_left_checked

theorem cover_7313447 : CoveredBy scale carrier boxes root_7313447 := by
  apply coveredBy_split_literal root_7313447 small_7313447_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0499.root_7313453 coord1 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_7313447_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0499.cover_7313453
#print axioms cover_7313447

def root_7317489 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7317489 : CoveredBy scale carrier boxes root_7317489 := by
  apply coveredBy_split_literal root_7317489 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2757.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2758.root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2757.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2758.covered
#print axioms cover_7317489

def root_7317484 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7317484_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7317484_right_fuel : Nat := 1
def small_7317484_right_count : Nat := 1
def small_7317484_right_encoded : String := "00000002"
theorem small_7317484_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7317484_right_root small_7317484_right_fuel small_7317484_right_count small_7317484_right_encoded = true := by
  decide +kernel
theorem small_7317484_right_covered : CoveredBy scale carrier boxes small_7317484_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7317484_right_root small_7317484_right_fuel small_7317484_right_count small_7317484_right_encoded small_7317484_right_checked

theorem cover_7317484 : CoveredBy scale carrier boxes root_7317484 := by
  apply coveredBy_split_literal root_7317484 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0499.root_7317489 small_7317484_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0499.cover_7317489
  · exact small_7317484_right_covered
#print axioms cover_7317484

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0499
