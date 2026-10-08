import TaoBundleAssembly0365
import TaoBundleAssembly0368
import TaoBundleChunkBatch0488
import TaoBundleChunkBatch0491
import TaoBundleChunkBatch0492
import TaoBundleChunkBatch0493
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0369
def root_5230161 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5230161_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5230161_right_fuel : Nat := 32
def small_5230161_right_count : Nat := 465
def small_5230161_right_encoded : String := "115224FD000000030A0000FE1152250908A912F712073D0008A912FB12073CFA0000000208A912FD12073D0608A91309120700FE050000F800000009135D44F900000009000000010000000412073CFE00000004050000F800000009135D44F9000000090000000100000003120701060000000300000009120700FA000000090000000200000000120701000000000008A912FB12073CFA0000000208A912FD12073D0608A91309120700FE050000F8135D80F900000001045489F71386AD000CFD9BFB0F350CFA000000020CFD9BFD0F350D0604548A0900000009000000090000000300000009000000090000000013867100000000000CFD9BFB0F350CFA000000020CFD9BFD0F350D0604548A09138670FE0C9A86FA000000090F8750FB0C9A87060F8750FD078000F80000000700000009000000030000000900000002000000041386ACFE000000040C9A86FA000000090F8750FB0C9A87060F8750FD078000F80000000900000009000000030000000900000002000000030F34D10600000003000000090F34D0FA0000000900000002135D44F9045489F70000000913867100000000000CFD9BFB0F350CFA000000020CFD9BFD0F350D0604548A090000000900000009000000030000000900000009000000010000000412073CFE00000004050000F8135D80F900000001045489F71386AD000CFD9BFB0F350CFA000000020CFD9BFD0F350D060CFD9C090F34D0FE000000090000000400000009000000030F34D1060000000300000009000000090000000013867100000000000CFD9BFB0F350CFA000000020CFD9BFD0F350D060CFD9C090F34D0FE0C9A86FA000000090F8750FB0C9A87060F8750FD078000F80000000900000009000000030000000900000002000000040F350CFE000000040C9A86FA0F878CFB00000002000000090F8750FB0C9A87060F8750FD0C9A86FE0F878D09078000F80000000900000006000000040F8751090000000400000006000000030000000900000002000000030F34D10600000003000000090F34D0FA0000000900000002135D44F9045489F71386AD000CFD9BFB0F350CFA000000020CFD9BFD0F350D060CFD9C0900000009000000060000000300000009000000090000000013867100000000000CFD9BFB0F350CFA000000020CFD9BFD0F350D060CFD9C090F34D0FE00000009000000040F350CFE000000040C9A86FA0000000900000006000000030F34D10600000003000000090F34D0FA00000009000000020000000100000003120701060000000308A91309120700FE000000090000000400000009120700FA08A912FD12073D0608A91309120700FE0000000900000004000000090000000312070106000000030000000900000002000000041151E9090000000408A912F712073D0008A912FB12073CFA0000000208A912FD12073D06050000F800000009135D44F9000000090000000100000003000000090000000900000000120701000000000008A912FB12073CFA0000000208A912FD12073D06050000F8135D80F900000001050000FE135D8109045489F70000000913867100000000000CFD9BFB0F350CFA000000020CFD9BFD0F350D060C9A86FA0F878CFB00000002000000090F8750FB0C9A87060F8750FD078000F8128A7CF900000001078000FE00000005128A4109000000040000000600000006000000030F878CFD000000030000000900000002000000030F34D10600000003000000090000000900000004135D450900000004045489F71386AD000CFD9BFB0F350CFA000000020CFD9BFD0F350D060C9A86FA000000090F8750FB0C9A87060000000600000006000000020000000300000009000000090000000013867100000000000CFD9BFB0F350CFA000000020CFD9BFD0F350D060C9A86FA0F878CFB000000020C9A87060F8750FD078000F8128A7CF90000000100000005128A40F9000000090000000100000003000000090F8750FB0C9A87060F8750FD078000F8128A7CF900000001028000FE0000000613D7B10900000004022A45770000000613E1C500000000000B4D43FA10804CFB00000002000000050000000600000006000000030F878CFD00000003078000F8128A7CF900000001028000FE0000000913D7B1090000000400000009128A40F9000000060000000100000002000000030F34D10600000003000000090F34D0FA0000000900000002135D44F9050000FE135D8109045489F70000000913867100000000000CFD9BFB0F350CFA000000020CFD9BFD0F350D060C9A86FA0F878CFB00000002000000090000000600000003000000060000000900000004135D450900000004045489F71386AD000CFD9BFB0F350CFA000000020CFD9BFD0F350D06000000060000000300000006000000090000000013867100000000000CFD9BFB0F350CFA000000020CFD9BFD0F350D060C9A86FA0F878CFB000000020C9A8706000000060000000900000006000000030F34D10600000003000000090F34D0FA00000009000000020000000100000003120701060000000300000009120700FA0000000900000002"
theorem small_5230161_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5230161_right_root small_5230161_right_fuel small_5230161_right_count small_5230161_right_encoded = true := by
  decide +kernel
theorem small_5230161_right_covered : CoveredBy scale carrier boxes small_5230161_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5230161_right_root small_5230161_right_fuel small_5230161_right_count small_5230161_right_encoded small_5230161_right_checked

theorem cover_5230161 : CoveredBy scale carrier boxes root_5230161 := by
  apply coveredBy_split_literal root_5230161 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0368.root_5230162 small_5230161_right_root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0368.cover_5230162
  · exact small_5230161_right_covered
#print axioms cover_5230161

def root_5230155 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5230155_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5230155_left_fuel : Nat := 1
def small_5230155_left_count : Nat := 1
def small_5230155_left_encoded : String := "00000002"
theorem small_5230155_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5230155_left_root small_5230155_left_fuel small_5230155_left_count small_5230155_left_encoded = true := by
  decide +kernel
theorem small_5230155_left_covered : CoveredBy scale carrier boxes small_5230155_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5230155_left_root small_5230155_left_fuel small_5230155_left_count small_5230155_left_encoded small_5230155_left_checked

theorem cover_5230155 : CoveredBy scale carrier boxes root_5230155 := by
  apply coveredBy_split_literal root_5230155 small_5230155_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0369.root_5230161 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5230155_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0369.cover_5230161
#print axioms cover_5230155

def root_5235753 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5235753 : CoveredBy scale carrier boxes root_5235753 := by
  apply coveredBy_split_literal root_5235753 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1962.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1963.root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1962.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1963.covered
#print axioms cover_5235753

def root_5235748 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5235748_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5235748_right_fuel : Nat := 1
def small_5235748_right_count : Nat := 1
def small_5235748_right_encoded : String := "00000002"
theorem small_5235748_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5235748_right_root small_5235748_right_fuel small_5235748_right_count small_5235748_right_encoded = true := by
  decide +kernel
theorem small_5235748_right_covered : CoveredBy scale carrier boxes small_5235748_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5235748_right_root small_5235748_right_fuel small_5235748_right_count small_5235748_right_encoded small_5235748_right_checked

theorem cover_5235748 : CoveredBy scale carrier boxes root_5235748 := by
  apply coveredBy_split_literal root_5235748 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0369.root_5235753 small_5235748_right_root coord2 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0369.cover_5235753
  · exact small_5235748_right_covered
#print axioms cover_5235748

def root_5230154 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5230154 : CoveredBy scale carrier boxes root_5230154 := by
  apply coveredBy_split_literal root_5230154 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0369.root_5230155 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0369.root_5235748 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0369.cover_5230155
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0369.cover_5235748
#print axioms cover_5230154

def root_5230149 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5230149_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5230149_right_fuel : Nat := 1
def small_5230149_right_count : Nat := 1
def small_5230149_right_encoded : String := "00000001"
theorem small_5230149_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5230149_right_root small_5230149_right_fuel small_5230149_right_count small_5230149_right_encoded = true := by
  decide +kernel
theorem small_5230149_right_covered : CoveredBy scale carrier boxes small_5230149_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5230149_right_root small_5230149_right_fuel small_5230149_right_count small_5230149_right_encoded small_5230149_right_checked

theorem cover_5230149 : CoveredBy scale carrier boxes root_5230149 := by
  apply coveredBy_split_literal root_5230149 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0369.root_5230154 small_5230149_right_root coord1 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0369.cover_5230154
  · exact small_5230149_right_covered
#print axioms cover_5230149

def root_5204925 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5204925 : CoveredBy scale carrier boxes root_5204925 := by
  apply coveredBy_split_literal root_5204925 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0368.root_5204926 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0369.root_5230149 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0368.cover_5204926
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0369.cover_5230149
#print axioms cover_5204925

def root_5204919 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5204919_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5204919_left_fuel : Nat := 1
def small_5204919_left_count : Nat := 1
def small_5204919_left_encoded : String := "00000000"
theorem small_5204919_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5204919_left_root small_5204919_left_fuel small_5204919_left_count small_5204919_left_encoded = true := by
  decide +kernel
theorem small_5204919_left_covered : CoveredBy scale carrier boxes small_5204919_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5204919_left_root small_5204919_left_fuel small_5204919_left_count small_5204919_left_encoded small_5204919_left_checked

theorem cover_5204919 : CoveredBy scale carrier boxes root_5204919 := by
  apply coveredBy_split_literal root_5204919 small_5204919_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0369.root_5204925 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5204919_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0369.cover_5204925
#print axioms cover_5204919

def root_5202253 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5202253 : CoveredBy scale carrier boxes root_5202253 := by
  apply coveredBy_split_literal root_5202253 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1950.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0369.root_5204919 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1950.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0369.cover_5204919
#print axioms cover_5202253

def root_5197647 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5197647 : CoveredBy scale carrier boxes root_5197647 := by
  apply coveredBy_split_literal root_5197647 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0365.root_5197648 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0369.root_5202253 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0365.cover_5197648
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0369.cover_5202253
#print axioms cover_5197647

def root_5245547 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5245547 : CoveredBy scale carrier boxes root_5245547 := by
  apply coveredBy_split_literal root_5245547 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1967.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1968.root coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1967.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1968.covered
#print axioms cover_5245547

def root_5245542 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5245542_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5245542_right_fuel : Nat := 1
def small_5245542_right_count : Nat := 1
def small_5245542_right_encoded : String := "00000004"
theorem small_5245542_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5245542_right_root small_5245542_right_fuel small_5245542_right_count small_5245542_right_encoded = true := by
  decide +kernel
theorem small_5245542_right_covered : CoveredBy scale carrier boxes small_5245542_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5245542_right_root small_5245542_right_fuel small_5245542_right_count small_5245542_right_encoded small_5245542_right_checked

theorem cover_5245542 : CoveredBy scale carrier boxes root_5245542 := by
  apply coveredBy_split_literal root_5245542 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0369.root_5245547 small_5245542_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0369.cover_5245547
  · exact small_5245542_right_covered
#print axioms cover_5245542

def root_5243138 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5243138 : CoveredBy scale carrier boxes root_5243138 := by
  apply coveredBy_split_literal root_5243138 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1966.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0369.root_5245542 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1966.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0369.cover_5245542
#print axioms cover_5243138

def root_5243133 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5243133_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5243133_right_fuel : Nat := 1
def small_5243133_right_count : Nat := 1
def small_5243133_right_encoded : String := "00000003"
theorem small_5243133_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5243133_right_root small_5243133_right_fuel small_5243133_right_count small_5243133_right_encoded = true := by
  decide +kernel
theorem small_5243133_right_covered : CoveredBy scale carrier boxes small_5243133_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5243133_right_root small_5243133_right_fuel small_5243133_right_count small_5243133_right_encoded small_5243133_right_checked

theorem cover_5243133 : CoveredBy scale carrier boxes root_5243133 := by
  apply coveredBy_split_literal root_5243133 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0369.root_5243138 small_5243133_right_root coord3 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0369.cover_5243138
  · exact small_5243133_right_covered
#print axioms cover_5243133

def root_5259454 : ZRayBox := fun j => (#[⟨⟨(16678144), (16777216)⟩, ⟨(-1816224), (0)⟩⟩, ⟨⟨(-9480640), (-8388608)⟩, ⟨(-14529792), (-13841408)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(15552512), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5259454_left_root : ZRayBox := fun j => (#[⟨⟨(16678144), (16777216)⟩, ⟨(-1816224), (0)⟩⟩, ⟨⟨(-9480640), (-8388608)⟩, ⟨(-14529792), (-13841408)⟩⟩, ⟨⟨(-10572672), (-9480640)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(15552512), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5259454_left_fuel : Nat := 24
def small_5259454_left_count : Nat := 437
def small_5259454_left_encoded : String := "10804CFB000000020DE7CA060E5FD8FD0640010812FF7109000000040115233713F895000AA6A27810EDACF9000000010BF3E57A100928FB000000020D41288600000005000000091008ECFB0D4128860EFA10FD05A001080000000513317109019FB45713EF35000AF9F3380000000A10B7ECF90BA094BA104604FB000000020000000500000008000000010000000013EEF900000000000AF9F3380000000510B7ECF90BA094BA00000005000000080000000100000004000000030EFA4CFD0000000305A001080000000913317109019FB4570000000913EEF900000000000AF9F3380000000510B7ECF90BA094BA000000051045C8FB0D94794600000005000000090000000200000001000000040000000210ED70F90BF3E57A100928FB000000020D4128860EFA10FD05A001080000000513317109000000080000000400000003000000091008ECFB0D4128860EFA10FD05A001081331350900000004019FB4570000000913EEF900000000000A5351B8000000051120C4F9000000080000000113317109019FB457000000080000000800000004000000030EFA4CFD0000000305A001080000000913317109019FB4570000000913EEF900000000000A5351B8112100F9000000010BA094BA000000091045C8FB0D9479460000000800000009000000021120C4F900000009000000010000000400000002000000010000000013F85900000000000AA6A27810EDACF9000000010BF3E57A000000050000008210ED70F90BF3E57A100928FB000000020D412886000000050EFA4CFD0000000300000005000000820000000112FFAD090115233713F895000AA6A27810EDACF9000000010BF3E57A100928FB000000020D4128860EFA10FD06E0010812C7E50900000004019FB457000000080000000500000006000000030EFA4CFD0000000306E0010812C7E50900000004019FB4570000000900000006000000061008ECFB0D4128860EFA10FD06E0010812C7E50900000004019FB457000000080000000800000008000000030EFA4CFD0000000306E0010812C7E50900000004019FB45713EF35000AF9F33810B828F9000000010BA094BA000000091045C8FB0D9479460EAEACFD0000000800000003000000060000000210B7ECF90BA094BA000000091045C8FB0D947946000000080000000900000002000000010000000013EEF900000000000AF9F3380000000610B7ECF90BA094BA000000061045C8FB00000006000000020000000112C82109019FB45713EF35000AF9F33800000006000000080000000000000006000000040000000210ED70F90BF3E57A100928FB000000020D412886000000080EFA4CFD0000000306E0010812C7E5090000000400000009000000081008ECFB0D412886000000080EFA4CFD0000000306E0010812C7E50900000004019FB45700000008000000080000000800000002000000010000000013F85900000000000AA6A27810EDACF9000000010BF3E57A000000061008ECFB0D4128860EFA10FD0000000600000003000000060000000210ED70F90BF3E57A100928FB000000020D41288600000008000000061008ECFB0D412886000000080EFA4CFD0000000306E0010812C7E50900000004008A921713FE35000A5351B80000000600000008000000000000000600000006000000020000000100000004000000030E6014FD000000030640010812FF710900000004011523370000000913F85900000000000DAED87D0E9661060AA6A27810EDACF9000000010BF3E57A000000050000008210ED70F90BF3E57A100928FB00000002000000090000008200000001000000030E962506000000030AA6A278000000090000000A12FFAD090115233713F895000DAED87D0E9661060AA6A27810EDACF9000000010BF3E57A100928FB00000002000000091008ECFB06E0010812C7E50900000004019FB4570000000913EEF900000000000E0776BD000000060E40FD06000000030000000612C82109019FB45713EF35000E0776BD00000006000000070000000000000006000000040000000210ED70F90BF3E57A100928FB00000002000000091008ECFB06E0010812C7E50900000004019FB4570000000913EEF900000000000E0776BD0E4139060A5351B80000000600000008000000030000000912C82109019FB45713EF35000E0776BD0E41390600000008000000030E40FD0600000003000000090000000000000006000000040000000200000001000000030E962506000000030AA6A2780000000910ED70F900000009000000010000000013F85900000000000DAED87D0E9661060AA6A2780000000610ED70F90BF3E57A000000061008ECFB06E0010800000006000000060000000200000001000000030E962506000000030AA6A278000000060000000A00000004"
theorem small_5259454_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5259454_left_root small_5259454_left_fuel small_5259454_left_count small_5259454_left_encoded = true := by
  decide +kernel
theorem small_5259454_left_covered : CoveredBy scale carrier boxes small_5259454_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5259454_left_root small_5259454_left_fuel small_5259454_left_count small_5259454_left_encoded small_5259454_left_checked

theorem cover_5259454 : CoveredBy scale carrier boxes root_5259454 := by
  apply coveredBy_split_literal root_5259454 small_5259454_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1972.root coord2 false (-9480640)
  · decide +kernel
  · decide +kernel
  · exact small_5259454_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1972.covered
#print axioms cover_5259454

def root_5259449 : ZRayBox := fun j => (#[⟨⟨(16678144), (16777216)⟩, ⟨(-1816224), (0)⟩⟩, ⟨⟨(-9480640), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(15552512), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5259449_right_root : ZRayBox := fun j => (#[⟨⟨(16678144), (16777216)⟩, ⟨(-1816224), (0)⟩⟩, ⟨⟨(-9480640), (-8388608)⟩, ⟨(-13841408), (-13026304)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(15552512), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5259449_right_fuel : Nat := 1
def small_5259449_right_count : Nat := 1
def small_5259449_right_encoded : String := "00000001"
theorem small_5259449_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5259449_right_root small_5259449_right_fuel small_5259449_right_count small_5259449_right_encoded = true := by
  decide +kernel
theorem small_5259449_right_covered : CoveredBy scale carrier boxes small_5259449_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5259449_right_root small_5259449_right_fuel small_5259449_right_count small_5259449_right_encoded small_5259449_right_checked

theorem cover_5259449 : CoveredBy scale carrier boxes root_5259449 := by
  apply coveredBy_split_literal root_5259449 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0369.root_5259454 small_5259449_right_root coord1 true (-13841408)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0369.cover_5259454
  · exact small_5259449_right_covered
#print axioms cover_5259449

def root_5258677 : ZRayBox := fun j => (#[⟨⟨(16678144), (16777216)⟩, ⟨(-1816224), (0)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(15552512), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5258677_left_root : ZRayBox := fun j => (#[⟨⟨(16678144), (16777216)⟩, ⟨(-1816224), (0)⟩⟩, ⟨⟨(-10572672), (-9480640)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(15552512), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5258677_left_fuel : Nat := 23
def small_5258677_left_count : Nat := 371
def small_5258677_left_encoded : String := "10804CF9000000010B4D43FA10804CFB000000020DE7CA060E5FD8FD0640010812FF7109000000040115233713F895000BF3E578000000051008ECF90BF3E57A000000051008ECFB0D412886000000050EFA4CFD00000003000000050000000200000001000000000000000512FFAD090115233713F895000BF3E578100928F9000000010BF3E57A100928FB00000002000000051008ECFB0D4128860EFA10FD000000060000000300000006000000021008ECF90BF3E57A100928FB000000020D4128860EFA10FD0000000600000003000000061008ECFB0D4128860EFA10FD06E0010812C7E50900000004019FB4570000000A0000000500000006000000030EFA4CFD0000000306E0010812C7E50900000004019FB45713EF35000BA094B8000000061045C8F90BA094BA00000006000000070000000100000000000000060000000600000002000000010000000013F85900000000000BF3E578000000061008ECF90BF3E57A000000061008ECFB00000006000000020000000100000004000000030E6014FD000000030640010812FF7109000000040115233713F895000DAED87D0E966106000000050000000300000005000000000000000512FFAD090115233713F895000DAED87D0E9661060BF3E578100928F9000000010BF3E57A00000005000000071008ECF90BF3E57A000000061008ECFB06E0010800000007000000060000000200000001000000030E962506000000030BF3E578000000071008ECF90BF3E57A0000000600000007000000010000000013F85900000000000DAED87D000000060E962506000000030000000600000004108010FB0DE7CA060E5FD8FD0640010812FF7109000000040115233713F895000BF3E578100928F9000000010AA6A27A0000000A0000000A1008ECF90AA6A27A10EDACFB000000020D4128860000000A0EFA4CFD0000000305A0010813313509000000040000000513317109019FB4570000000713EEF900000000000BA094B8000000051045C8F90AF9F33A000000050000000A00000001000000040000000A000000010000000013F85900000000000BF3E578100928F9000000010AA6A27A0000000510ED70FB0000000A000000020000008212FFAD090115233713F895000BF3E578100928F9000000010AA6A27A10EDACFB000000020D4128860000000A0EFA4CFD00000003000000070000000A1008ECF90AA6A27A10EDACFB000000020D4128860EFA10FD0000000A000000030EFA4CFD0000000306E0010812C7E50900000004019FB4570000000713EEF900000000000BA094B8000000061045C8F90AF9F33A00000006000000070000000112C82109019FB45700000007000000060000000410ED70FB0000000A00000002000000010000000013F85900000000000BF3E578100928F9000000010AA6A27A0000000610ED70FB0D4128860000000900000006000000021008ECF90AA6A27A10EDACFB000000020D4128860EFA10FD00000006000000030000000610ED70FB0D412886000000090EFA4CFD0000000306E0010812C7E50900000004008A92170000000A0000000600000006000000020000000100000004000000030E6014FD000000030640010812FF7109000000040115233713F895000DAED87D0E9661060BF3E578000000071008ECF90AA6A27A10EDACFB0000000200000007000000070000000100000003000000070000000013F85900000000000DAED87D0E9661060BF3E578100928F9000000010AA6A27A000000050000000700000082000000030E962506000000030BF3E578000000070000008212FFAD090115233713F895000DAED87D0E9661060BF3E578000000071008ECF90AA6A27A10EDACFB0000000200000007000000070000000100000003000000070000000013F85900000000000DAED87D0E9661060BF3E578000000061008ECF90AA6A27A0000000610ED70FB06E0010800000006000000060000000200000001000000030E962506000000030BF3E578000000061008ECF90AA6A27A0000000600000007000000010000000400000002"
theorem small_5258677_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5258677_left_root small_5258677_left_fuel small_5258677_left_count small_5258677_left_encoded = true := by
  decide +kernel
theorem small_5258677_left_covered : CoveredBy scale carrier boxes small_5258677_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5258677_left_root small_5258677_left_fuel small_5258677_left_count small_5258677_left_encoded small_5258677_left_checked

theorem cover_5258677 : CoveredBy scale carrier boxes root_5258677 := by
  apply coveredBy_split_literal root_5258677 small_5258677_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0369.root_5259449 coord1 false (-9480640)
  · decide +kernel
  · decide +kernel
  · exact small_5258677_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0369.cover_5259449
#print axioms cover_5258677

def root_5258671 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-1816224), (0)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(15552512), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5258671_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16678144)⟩, ⟨(-1816224), (0)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(15552512), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5258671_left_fuel : Nat := 1
def small_5258671_left_count : Nat := 1
def small_5258671_left_encoded : String := "00000000"
theorem small_5258671_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5258671_left_root small_5258671_left_fuel small_5258671_left_count small_5258671_left_encoded = true := by
  decide +kernel
theorem small_5258671_left_covered : CoveredBy scale carrier boxes small_5258671_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5258671_left_root small_5258671_left_fuel small_5258671_left_count small_5258671_left_encoded small_5258671_left_checked

theorem cover_5258671 : CoveredBy scale carrier boxes root_5258671 := by
  apply coveredBy_split_literal root_5258671 small_5258671_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0369.root_5258677 coord0 false (16678144)
  · decide +kernel
  · decide +kernel
  · exact small_5258671_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0369.cover_5258677
#print axioms cover_5258671

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0369
