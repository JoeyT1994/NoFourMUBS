import TaoBundleAssembly0187
import TaoBundleChunkBatch0733
import TaoBundleChunkBatch0734
import TaoBundleChunkBatch0735
import TaoBundleChunkBatch0736
import TaoBundleChunkBatch0737
import TaoBundleChunkBatch0738
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188
def root_7795873 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7795873_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7795873_right_fuel : Nat := 31
def small_7795873_right_count : Nat := 341
def small_7795873_right_encoded : String := "1151E8FB0A0000FC115224FD000000030A0000FE1152250908A91301120701000000000008A912F912073CF80000000108A912FD12073CFC0000000308A91309120700FE050000FA135D80FB0000000204548A0113867100000000000CFD9BF90F350CF8000000010CFD9BFD0F350CFC0000000304548A0900000009000000090F34D0FC04548A09138670FE0C9A86F80000000900000009000000040000000A000000030F34D0F800000009000000011386AD000CFD9BF90F350CF8000000010CFD9BFD000000090F34D0FC00000009000000030000000900000000135D44FB04548A0113867100000000000000000900000009000000020000000412073CFE00000004050000FA135D80FB0000000204548A0113867100000000000000000A000000050000000A120700FC08A91309120700FE050000FA135D80FB0000000204548A0113867100000000000CFD9BF90F350CF800000001045489FD1386ACFC0000000304548A09138670FE0C9A86F80000000A0F8750F9078000FA128A7CFB00000002022A45810000000A000000050000000A000000010000000400000005000000050F34D0F8045489FD0000000900000005000000011386AD000CFD9BF90F350CF800000001045489FD1386ACFC0000000300000005000000050000000500000000135D44FB04548A0113867100000000000CFD9BF90000000A000000050000000500000002000000040000000500000003120700F808A912FD00000009120700FC08A913090000000900000005000000030000000112073D0008A912F912073CF80000000108A912FD12073CFC0000000308A913090000000912073CFE0000000400000009120700FC08A91309120700FE050000FA135D80FB000000020CFD9C010F34D100000000000CFD9BF90F350CF80000000100000005000000050000000900000009000000040000000500000003120700F8000000090000000100000000000000041151E90900000004000000051151E8FD0A0000FE1152250908A91301120701000000000008A912F912073CF80000000108A91309120700FE050000FA135D80FB00000002050000FC135D80FD0000000304548A0113867100000000000CFD9BF90F350CF80000000104548A0900000009000000090000000900000009135D44FD04548A0113867100000000000CFD9BF90F350CF80000000104548A09138670FE0C9A86F80000000900000009000000041386ACFE000000040C9A86F80F878CF900000001000000090F8750F9078000FA128A7CFB00000002028000FC0000000913D7B0FD022A458113E1C50000000000067ECE890000000900000009000000090000000300000009000000010F34D0F800000009000000011386AD000CFD9BF90F350CF80000000100000009000000090000000000000003135D44FB050000FC00000009135D44FD0000000900000003000000020000000412073CFE00000004050000FA135D80FB00000002050000FC135D80FD0000000304548A0113867100000000000000000A00000005135D44FD04548A0113867100000000000CFD9BF90F350CF8000000010CFD9C090F34D0FE0C9A86F8000000050F8750F90000000A000000010000000400000005000000050000000500000003135D44FB050000FC00000009135D44FD04548A010000000A000000050000000300000002120700F808A9130900000009000000050000000112073D0008A912F912073CF80000000108A91309120700FE050000FA135D80FB0000000200000009000000090000000400000005120700F808A9130900000009000000050000000100000000000000041151E9090000000408A91301120701000000000008A912F90000000A00000005000000050000000300000002"
theorem small_7795873_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7795873_right_root small_7795873_right_fuel small_7795873_right_count small_7795873_right_encoded = true := by
  decide +kernel
theorem small_7795873_right_covered : CoveredBy scale carrier boxes small_7795873_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7795873_right_root small_7795873_right_fuel small_7795873_right_count small_7795873_right_encoded small_7795873_right_checked

theorem cover_7795873 : CoveredBy scale carrier boxes root_7795873 := by
  apply coveredBy_split_literal root_7795873 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0187.root_7795874 small_7795873_right_root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0187.cover_7795874
  · exact small_7795873_right_covered
#print axioms cover_7795873

def root_7795867 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7795867_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7795867_left_fuel : Nat := 1
def small_7795867_left_count : Nat := 1
def small_7795867_left_encoded : String := "00000001"
theorem small_7795867_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7795867_left_root small_7795867_left_fuel small_7795867_left_count small_7795867_left_encoded = true := by
  decide +kernel
theorem small_7795867_left_covered : CoveredBy scale carrier boxes small_7795867_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7795867_left_root small_7795867_left_fuel small_7795867_left_count small_7795867_left_encoded small_7795867_left_checked

theorem cover_7795867 : CoveredBy scale carrier boxes root_7795867 := by
  apply coveredBy_split_literal root_7795867 small_7795867_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.root_7795873 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_7795867_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.cover_7795873
#print axioms cover_7795867

def root_7795866 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7795866 : CoveredBy scale carrier boxes root_7795866 := by
  apply coveredBy_split_literal root_7795866 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.root_7795867 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2930.root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.cover_7795867
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2930.covered
#print axioms cover_7795866

def root_7795861 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7795861_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7795861_right_fuel : Nat := 1
def small_7795861_right_count : Nat := 1
def small_7795861_right_encoded : String := "00000000"
theorem small_7795861_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7795861_right_root small_7795861_right_fuel small_7795861_right_count small_7795861_right_encoded = true := by
  decide +kernel
theorem small_7795861_right_covered : CoveredBy scale carrier boxes small_7795861_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7795861_right_root small_7795861_right_fuel small_7795861_right_count small_7795861_right_encoded small_7795861_right_checked

theorem cover_7795861 : CoveredBy scale carrier boxes root_7795861 := by
  apply coveredBy_split_literal root_7795861 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.root_7795866 small_7795861_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.cover_7795866
  · exact small_7795861_right_covered
#print axioms cover_7795861

def root_7795165 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7795165_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7795165_left_fuel : Nat := 22
def small_7795165_left_count : Nat := 319
def small_7795165_left_encoded : String := "1151E901000000000A0000F8115224F9000000010A0000FA115224FB000000020A0000FC115224FD000000030A0000FE1152250908A912F912073CF80000000108A912FB12073CFA0000000208A912FD12073CFC0000000308A91309120700FE0500010000000009000000090000000400000007120700FC08A91309120700FE0500010000000009135D81010CFD9BF90F350CF8000000010000000700000009000000000000000412073CFE000000040000000700000003120700FA08A912FD12073CFC0000000308A91309120700FE05000100135D4501000000000CFD9BF90000000700000009135D81010CFD9BF90F350CF800000001000000070F34D0F80000000900000001000000000000000412073CFE0000000400000007120700FC08A91309120700FE0000000A00000004000000070000000300000002120700F808A912FB12073CFA0000000208A912FD12073CFC0000000308A913090000000912073CFE00000004050001000000000700000009120700FC0000000900000003120700FA08A912FD12073CFC0000000308A913090000000912073CFE0000000405000100135D45010000000000000007135D8101045489F91386ACF800000001000000090000000900000000120700FC00000009000000030000000200000001000000041151E9090000000408A912F912073CF80000000108A912FB12073CFA0000000208A912FD0000000700000007120700FA0000000700000002120700F808A912FB12073CFA0000000208A912FD00000007120700FC0000000700000003120700FA08A912FD00000007120700FC000000070000000300000002000000011151E8FD0A0000FE1152250908A912F912073CF80000000108A912FB12073CFA0000000208A91309120700FE0500010000000007135D8101050000FC00000007135D44FD0000000700000003000000000000000400000007120700FA08A91309120700FE05000100135D45010000000000000007135D8101050000FC135D80FD000000030CFD9BF9000000070F34D0F8000000060000000100000005000000000000000412073CFE000000040000000700000002120700F808A912FB12073CFA0000000208A91309120700FE000000090000000400000007120700FA08A913090000000A12073CFE000000040500010000000007000000050000000200000001000000041151E9090000000400000005000000031151E8FB0A0000FC115224FD000000030A0000FE1152250908A912F912073CF80000000108A912FD00000009120700FC000000090000000300000009000000041151E90900000004000000051151E8FD0A0000FE1152250908A912F912073CF80000000108A913090000000900000007120700F808A91309000000090000000500000001000000041151E909000000040000000500000003000000021151E8F90A0000FA115224FB000000020A0000FC115224FD000000030A0000FE1152250908A912FB12073CFA0000000208A912FD00000007120700FC0000000700000003120700FA08A912FD00000007120700FC000000070000000300000002000000041151E90900000004000000051151E8FD0A0000FE1152250908A912FB00000007120700FA0000000700000002000000041151E9090000000400000005000000031151E8FB0A0000FC115224FD000000030A0000FE1152250908A912FD00000007120700FC000000070000000300000004000000091151E8FD00000007000000030000000200000001"
theorem small_7795165_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7795165_left_root small_7795165_left_fuel small_7795165_left_count small_7795165_left_encoded = true := by
  decide +kernel
theorem small_7795165_left_covered : CoveredBy scale carrier boxes small_7795165_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7795165_left_root small_7795165_left_fuel small_7795165_left_count small_7795165_left_encoded small_7795165_left_checked

theorem cover_7795165 : CoveredBy scale carrier boxes root_7795165 := by
  apply coveredBy_split_literal root_7795165 small_7795165_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.root_7795861 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_7795165_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.cover_7795861
#print axioms cover_7795165

def root_7759105 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7759105 : CoveredBy scale carrier boxes root_7759105 := by
  apply coveredBy_split_literal root_7759105 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0187.root_7759106 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.root_7795165 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0187.cover_7759106
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.cover_7795165
#print axioms cover_7759105

def root_7803917 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7803917_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7803917_left_fuel : Nat := 29
def small_7803917_left_count : Nat := 459
def small_7803917_left_encoded : String := "115224FB000000020A0000FC115224FD000000030A0001081151E8FF08A91301120701000000000008A912F912073CF80000000108A912FB12073CFA0000000208A912FD12073CFC0000000305000108135D44FF000000060000000400000006120700FC05000108135D44FF04548A0113867100000000000CFD9BF90F350CF8000000010CFD9BFB0F350CFA00000002045489FD00000006138670FC000000060000000300000006000000061386AD000CFD9BF90F350CF8000000010CFD9BFB0000000600000006000000060000000000000004135D80FF0000000404548A0113867100000000000CFD9BF90F350CF8000000010CFD9BFB0F350CFA00000002045489FD00000006138670FC0C9A86F8000000060F8750F90C9A86FA000000060F8750FB0780010800000006000000060000000200000001000000030F34D0FA00000006000000020F34D0F800000006000000011386AD000CFD9BF90F350CF8000000010CFD9BFB0F350CFA00000002045489FD00000006138670FC0C9A86F8000000060F8750F9000000060000000100000003000000060F34D0F800000006000000010000000000000003120700FA08A912FD00000006120700FC000000060000000300000002120700F808A912FB12073CFA0000000208A912FD00000006120700FC0000000600000003000000060000000112073D0008A912F912073CF80000000108A912FB12073CFA0000000208A912FD12073CFC0000000305000108135D44FF0000000600000004135D80FF000000040CFD9C010F34D100000000000000000600000006120700FC05000108135D44FF0CFD9C010F34D100000000000CFD9BF90F350CF8000000010CFD9BFB0000000600000006000000060F350D000CFD9BF90F350CF8000000010CFD9BFB0F350CFA000000020000000A000000060F34D0F800000006000000010000000000000004135D80FF000000040CFD9C010F34D100000000000CFD9BF90F350CF8000000010CFD9BFB0F350CFA00000002045489FD00000006138670FC0000000600000003000000060F34D0F800000006000000010F350D000CFD9BF90F350CF8000000010CFD9BFB0F350CFA00000002045489FD0000000600000005000000050F34D0F800000006000000010000000000000003120700FA08A912FD00000006120700FC000000060000000300000002120700F808A912FB12073CFA0000000208A912FD00000006120700FC000000060000000300000006000000010000000000000004115224FF0000000408A91301120701000000000008A912F912073CF80000000108A912FB12073CFA0000000208A912FD12073CFC0000000308A912FF12073D0804548A0100000008000000090000000400000008120700FC08A912FF12073D0804548A0113867100000000000CFD9BF90F350CF8000000010CFD9BFB0F350CFA00000002045489FD000000080000000800000009000000081386AD000CFD9BF90F350CF8000000010CFD9BFB0F350CFA00000002045489FD00000009138670FC0CFD9BFF0F350D080C9A86F8000000090F8750F90000000900000001000000040000000900000003000000090F34D0F80000000900000001000000000000000412070108000000040000000800000003120700FA08A912FD00000009120700FC000000090000000300000002120700F808A912FB12073CFA0000000208A912FD12073CFC0000000308A912FF0000000600000008120700FC08A912FF12073D0804548A011386710000000000000000081386AD00045489F9000000090000000500000000000000040000000500000003000000090000000112073D0008A912F912073CF80000000108A912FB12073CFA0000000208A912FD12073CFC0000000308A912FF12073D080CFD9C01000000090F350D000CFD9BF9000000090F34D0F80000000600000001000000000000000412070108000000040CFD9C01000000080F350D000000000900000000120700FC08A912FF12073D080CFD9C010F34D100000000000CFD9BF90F350CF8000000010CFD9BFB0F350CFA00000002045489FD00000009138670FC0CFD9BFF0F350D080C9A86F8000000050F8750F90000000900000001000000040000000500000003000000090F34D0F800000009000000010F350D000CFD9BF90F350CF8000000010CFD9BFB0F350CFA00000002045489FD0000000900000005000000050000000500000000000000040000000500000003120700FA0000000900000002120700F808A912FB12073CFA0000000208A912FD12073CFC0000000308A912FF0000000600000005000000050000000500000001000000001151E8FD0A0001081151E8FF08A913011207010000000000000000060000000600000004115224FF0000000408A91301120701000000000008A912F900000008120700F8000000080000000112073D0008A912F912073CF80000000108A912FB12073CFA0000000208A912FF0000000600000009120700FA0000000600000002120700F800000006000000010000000000000003"
theorem small_7803917_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7803917_left_root small_7803917_left_fuel small_7803917_left_count small_7803917_left_encoded = true := by
  decide +kernel
theorem small_7803917_left_covered : CoveredBy scale carrier boxes small_7803917_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7803917_left_root small_7803917_left_fuel small_7803917_left_count small_7803917_left_encoded small_7803917_left_checked

theorem cover_7803917 : CoveredBy scale carrier boxes root_7803917 := by
  apply coveredBy_split_literal root_7803917 small_7803917_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2932.root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact small_7803917_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2932.covered
#print axioms cover_7803917

def root_7803911 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7803911_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7803911_left_fuel : Nat := 1
def small_7803911_left_count : Nat := 1
def small_7803911_left_encoded : String := "00000001"
theorem small_7803911_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7803911_left_root small_7803911_left_fuel small_7803911_left_count small_7803911_left_encoded = true := by
  decide +kernel
theorem small_7803911_left_covered : CoveredBy scale carrier boxes small_7803911_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7803911_left_root small_7803911_left_fuel small_7803911_left_count small_7803911_left_encoded small_7803911_left_checked

theorem cover_7803911 : CoveredBy scale carrier boxes root_7803911 := by
  apply coveredBy_split_literal root_7803911 small_7803911_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.root_7803917 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_7803911_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.cover_7803917
#print axioms cover_7803911

def root_7807749 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7807749 : CoveredBy scale carrier boxes root_7807749 := by
  apply coveredBy_split_literal root_7807749 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2933.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2934.root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2933.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2934.covered
#print axioms cover_7807749

def root_7807744 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7807744_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7807744_right_fuel : Nat := 1
def small_7807744_right_count : Nat := 1
def small_7807744_right_encoded : String := "00000001"
theorem small_7807744_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7807744_right_root small_7807744_right_fuel small_7807744_right_count small_7807744_right_encoded = true := by
  decide +kernel
theorem small_7807744_right_covered : CoveredBy scale carrier boxes small_7807744_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7807744_right_root small_7807744_right_fuel small_7807744_right_count small_7807744_right_encoded small_7807744_right_checked

theorem cover_7807744 : CoveredBy scale carrier boxes root_7807744 := by
  apply coveredBy_split_literal root_7807744 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.root_7807749 small_7807744_right_root coord1 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.cover_7807749
  · exact small_7807744_right_covered
#print axioms cover_7807744

def root_7803910 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7803910 : CoveredBy scale carrier boxes root_7803910 := by
  apply coveredBy_split_literal root_7803910 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.root_7803911 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.root_7807744 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.cover_7803911
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.cover_7807744
#print axioms cover_7803910

def root_7803905 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7803905_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7803905_right_fuel : Nat := 1
def small_7803905_right_count : Nat := 1
def small_7803905_right_encoded : String := "00000000"
theorem small_7803905_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7803905_right_root small_7803905_right_fuel small_7803905_right_count small_7803905_right_encoded = true := by
  decide +kernel
theorem small_7803905_right_covered : CoveredBy scale carrier boxes small_7803905_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7803905_right_root small_7803905_right_fuel small_7803905_right_count small_7803905_right_encoded small_7803905_right_checked

theorem cover_7803905 : CoveredBy scale carrier boxes root_7803905 := by
  apply coveredBy_split_literal root_7803905 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.root_7803910 small_7803905_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.cover_7803910
  · exact small_7803905_right_covered
#print axioms cover_7803905

def root_7802565 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7802565 : CoveredBy scale carrier boxes root_7802565 := by
  apply coveredBy_split_literal root_7802565 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2931.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.root_7803905 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2931.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.cover_7803905
#print axioms cover_7802565

def root_7802564 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7802564 : CoveredBy scale carrier boxes root_7802564 := by
  apply coveredBy_split_literal root_7802564 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.root_7802565 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2935.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.cover_7802565
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2935.covered
#print axioms cover_7802564

def root_7759104 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7759104 : CoveredBy scale carrier boxes root_7759104 := by
  apply coveredBy_split_literal root_7759104 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.root_7759105 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.root_7802564 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.cover_7759105
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.cover_7802564
#print axioms cover_7759104

def root_7813628 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7813628 : CoveredBy scale carrier boxes root_7813628 := by
  apply coveredBy_split_literal root_7813628 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2936.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2937.root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2936.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2937.covered
#print axioms cover_7813628

def root_7813623 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7813623_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7813623_right_fuel : Nat := 1
def small_7813623_right_count : Nat := 1
def small_7813623_right_encoded : String := "00000003"
theorem small_7813623_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7813623_right_root small_7813623_right_fuel small_7813623_right_count small_7813623_right_encoded = true := by
  decide +kernel
theorem small_7813623_right_covered : CoveredBy scale carrier boxes small_7813623_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7813623_right_root small_7813623_right_fuel small_7813623_right_count small_7813623_right_encoded small_7813623_right_checked

theorem cover_7813623 : CoveredBy scale carrier boxes root_7813623 := by
  apply coveredBy_split_literal root_7813623 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.root_7813628 small_7813623_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.cover_7813628
  · exact small_7813623_right_covered
#print axioms cover_7813623

def root_7813622 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7813622_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7813622_right_fuel : Nat := 12
def small_7813622_right_count : Nat := 31
def small_7813622_right_encoded : String := "1151E907000000030A0000FE115224FF0000000408A9130112070100000000000000000512073D0008A912F912073CF80000000100000005120700F808A912FB12073CFA0000000200000005120700FA08A912FF12073CFE0000000400000005120700FE0000000A0000000400000002000000010000000000000005"
theorem small_7813622_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7813622_right_root small_7813622_right_fuel small_7813622_right_count small_7813622_right_encoded = true := by
  decide +kernel
theorem small_7813622_right_covered : CoveredBy scale carrier boxes small_7813622_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7813622_right_root small_7813622_right_fuel small_7813622_right_count small_7813622_right_encoded small_7813622_right_checked

theorem cover_7813622 : CoveredBy scale carrier boxes root_7813622 := by
  apply coveredBy_split_literal root_7813622 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.root_7813623 small_7813622_right_root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.cover_7813623
  · exact small_7813622_right_covered
#print axioms cover_7813622

def root_7813616 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7813616_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7813616_left_fuel : Nat := 1
def small_7813616_left_count : Nat := 1
def small_7813616_left_encoded : String := "00000002"
theorem small_7813616_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7813616_left_root small_7813616_left_fuel small_7813616_left_count small_7813616_left_encoded = true := by
  decide +kernel
theorem small_7813616_left_covered : CoveredBy scale carrier boxes small_7813616_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7813616_left_root small_7813616_left_fuel small_7813616_left_count small_7813616_left_encoded small_7813616_left_checked

theorem cover_7813616 : CoveredBy scale carrier boxes root_7813616 := by
  apply coveredBy_split_literal root_7813616 small_7813616_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.root_7813622 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_7813616_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.cover_7813622
#print axioms cover_7813616

def root_7813615 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7813615 : CoveredBy scale carrier boxes root_7813615 := by
  apply coveredBy_split_literal root_7813615 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.root_7813616 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2938.root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.cover_7813616
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2938.covered
#print axioms cover_7813615

def root_7813609 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7813609_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7813609_left_fuel : Nat := 1
def small_7813609_left_count : Nat := 1
def small_7813609_left_encoded : String := "00000001"
theorem small_7813609_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7813609_left_root small_7813609_left_fuel small_7813609_left_count small_7813609_left_encoded = true := by
  decide +kernel
theorem small_7813609_left_covered : CoveredBy scale carrier boxes small_7813609_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7813609_left_root small_7813609_left_fuel small_7813609_left_count small_7813609_left_encoded small_7813609_left_checked

theorem cover_7813609 : CoveredBy scale carrier boxes root_7813609 := by
  apply coveredBy_split_literal root_7813609 small_7813609_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.root_7813615 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_7813609_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.cover_7813615
#print axioms cover_7813609

def root_7813608 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7813608 : CoveredBy scale carrier boxes root_7813608 := by
  apply coveredBy_split_literal root_7813608 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.root_7813609 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2939.root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.cover_7813609
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2939.covered
#print axioms cover_7813608

def root_7813603 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7813603_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7813603_right_fuel : Nat := 1
def small_7813603_right_count : Nat := 1
def small_7813603_right_encoded : String := "00000000"
theorem small_7813603_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7813603_right_root small_7813603_right_fuel small_7813603_right_count small_7813603_right_encoded = true := by
  decide +kernel
theorem small_7813603_right_covered : CoveredBy scale carrier boxes small_7813603_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7813603_right_root small_7813603_right_fuel small_7813603_right_count small_7813603_right_encoded small_7813603_right_checked

theorem cover_7813603 : CoveredBy scale carrier boxes root_7813603 := by
  apply coveredBy_split_literal root_7813603 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.root_7813608 small_7813603_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.cover_7813608
  · exact small_7813603_right_covered
#print axioms cover_7813603

def root_7812931 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7812931_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7812931_left_fuel : Nat := 23
def small_7812931_left_count : Nat := 315
def small_7812931_left_encoded : String := "1151E901000000000A0000F8115224F9000000010A0000FA115224FB000000020A0000FC115225070A0000FE115224FF0000000408A912F912073CF80000000108A912FB12073CFA0000000208A91307120700FC08A912FF12073CFE00000004050001000000000A0000000A120700FE050001000000000A135D81010CFD9BF90000000A0000000A00000000000000040000000312073CFC0000000308A912FF00000008120700FE0000000800000004120700FA08A913070000000A12073CFC0000000308A912FF12073CFE0000000405000100000000080000000A0000000A00000002120700F808A912FB12073CFA0000000208A91307120700FC08A912FF12073CFE0000000405000100135D450100000000045489F900000008138670F80000000800000001135D8101045489F91386ACF8000000010CFD9BFB000000080000000A138670F80CFD9BFB000000080000000A0000000100000000120700FE00000009000000040000000312073CFC0000000308A912FF00000008120700FE0000000800000004120700FA08A913070000000A12073CFC0000000308A912FF12073CFE0000000405000100135D45010000000000000008135D8101045489F900000008138670F8045489FB000000080000000A0000000100000000120700FE0000000A0000000400000002000000011151E8FF08A912F912073CF80000000108A912FB12073CFA0000000208A91307120700FC0500010000000008135D8101050000FE00000008135D44FF0000000800000004000000000000000300000008120700FA08A91307120700FC0000000A000000030000000800000002120700F808A912FB12073CFA0000000208A91307120700FC05000100135D45010000000000000008135D8101050000FE135D80FF00000004045489F9000000080000000800000005000000000000000312073CFC0000000300000008120700FA08A913070000000912073CFC00000003050001000000000800000005000000020000000100000004000000031151E907000000030A0000FE115224FF0000000408A912F912073CF80000000108A912FB12073CFA0000000208A912FF0000000800000008120700FA08A912FF00000008120700FE000000080000000400000002120700F808A912FB12073CFA0000000200000008120700FA08A912FF00000008120700FE000000080000000400000002000000011151E8FF00000005000000041151E8FB0A0000FC115225070A0000FE115224FF0000000408A912F912073CF80000000108A91307120700FC08A912FF00000008120700FE00000008000000040000000300000008120700F808A91307120700FC08A912FF00000008000000080000000300000008000000011151E8FF08A912F900000008120700F8000000080000000100000004000000031151E9070000000300000005000000021151E8F90A0000FA115224FB000000020A0000FC115225070A0000FE115224FF0000000408A912FB12073CFA0000000208A913070000000A0000000A0000000A1151E8FF08A912FB12073CFA0000000208A913070000000A00000008120700FA08A913070000000A000000050000000200000004000000031151E90700000003000000051151E8FB0A0000FC115225070A0000FE115224FF0000000408A91307120700FC0000000800000003000000081151E8FF0000000800000004000000031151E90700000003000000050000000200000001"
theorem small_7812931_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7812931_left_root small_7812931_left_fuel small_7812931_left_count small_7812931_left_encoded = true := by
  decide +kernel
theorem small_7812931_left_covered : CoveredBy scale carrier boxes small_7812931_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7812931_left_root small_7812931_left_fuel small_7812931_left_count small_7812931_left_encoded small_7812931_left_checked

theorem cover_7812931 : CoveredBy scale carrier boxes root_7812931 := by
  apply coveredBy_split_literal root_7812931 small_7812931_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.root_7813603 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_7812931_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.cover_7813603
#print axioms cover_7812931

def root_7821995 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7821995_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7821995_right_fuel : Nat := 21
def small_7821995_right_count : Nat := 235
def small_7821995_right_encoded : String := "1151E9090000000408A91301120701000000000008A912F912073CF80000000100000005120700F808A912FB12073CFA0000000200000005120700FA08A91307120700FC050000FE135D81090000000500000004000000050000000312073CFC00000003050000FE135D810904548A011386710000000000045489F900000005138670F8045489FB00000005138670FA0CFD9C07000000050F350CFC000000030000000500000002000000011386AD00045489F91386ACF800000001045489FB0000000500000007138670F8045489FB1386ACFA000000020CFD9C070000000500000006138670FA0CFD9C070F34D0FC00000007000000030F350CFC000000030C9A86FC000000070000000600000002000000010000000000000004135D45090000000404548A01000000051386AD00045489F900000005138670F8045489FB00000005000000070000000100000000000000020000000112073D0008A912F912073CF80000000108A912FB12073CFA0000000208A913070000000512073CFC00000003050000FE135D81090CFD9C01000000050F350D000CFD9BF90000000500000006000000000000000400000005120700FA08A91307120700FC000000070000000312073CFC00000003050000FE135D81090CFD9C010F34D100000000000000000700000007000000040000000700000002120700F808A912FB12073CFA0000000208A91307120700FC000000090000000312073CFC00000003050000FE135D81090CFD9C010F34D10000000000045489F900000005138670F80CFD9BFB0000000500000009000000010F350D00045489F91386ACF8000000010CFD9BFB0000000600000006000000090000000000000004135D4509000000040CFD9C010F34D10000000000045489F9000000050000000900000009120700FA08A91307120700FC050000FE135D81090CFD9C010F34D10000000000000000070000000700000004000000070000000312073CFC00000003050000FE135D81090CFD9C010F34D10000000000045489F91386ACF800000001045489FB0000000700000007138670F8045489FB1386ACFA000000020CFD9C07000000090F350CFC0000000300000006138670FA0CFD9C07000000070000000700000002000000010F350D00045489F91386ACF800000001045489FB0000000700000007138670F8045489FB0000000900000009000000010000000000000004135D4509000000040CFD9C010F34D10000000000000000070F350D00045489F9000000070000000900000000000000020000000100000000"
theorem small_7821995_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7821995_right_root small_7821995_right_fuel small_7821995_right_count small_7821995_right_encoded = true := by
  decide +kernel
theorem small_7821995_right_covered : CoveredBy scale carrier boxes small_7821995_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7821995_right_root small_7821995_right_fuel small_7821995_right_count small_7821995_right_encoded small_7821995_right_checked

theorem cover_7821995 : CoveredBy scale carrier boxes root_7821995 := by
  apply coveredBy_split_literal root_7821995 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2941.root small_7821995_right_root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2941.covered
  · exact small_7821995_right_covered
#print axioms cover_7821995

def root_7821990 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7821990_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7821990_right_fuel : Nat := 1
def small_7821990_right_count : Nat := 1
def small_7821990_right_encoded : String := "00000003"
theorem small_7821990_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7821990_right_root small_7821990_right_fuel small_7821990_right_count small_7821990_right_encoded = true := by
  decide +kernel
theorem small_7821990_right_covered : CoveredBy scale carrier boxes small_7821990_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7821990_right_root small_7821990_right_fuel small_7821990_right_count small_7821990_right_encoded small_7821990_right_checked

theorem cover_7821990 : CoveredBy scale carrier boxes root_7821990 := by
  apply coveredBy_split_literal root_7821990 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.root_7821995 small_7821990_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.cover_7821995
  · exact small_7821990_right_covered
#print axioms cover_7821990

def root_7821989 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7821989_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7821989_right_fuel : Nat := 23
def small_7821989_right_count : Nat := 347
def small_7821989_right_encoded : String := "1151E907000000030A0000FE1152250908A91301120701000000000008A912F912073CF80000000100000005120700F808A912FB12073CFA0000000200000005120700FA08A91309120700FE050000FC135D81070000000500000003000000050000000412073CFE00000004050000FC135D810704548A011386710000000000045489F900000005138670F8045489FB00000005138670FA0CFD9C09000000050F350CFE000000040000000500000002000000011386AD00045489F91386ACF800000001045489FB00000005138670FA0CFD9C09000000050000000600000002138670F8045489FB00000008138670FA0CFD9C090F34D0FE00000008000000040F350CFE000000040C9A86FE000000080000000600000002000000010000000000000003135D45070000000304548A01000000051386AD00045489F9000000050000000800000000000000020000000112073D0008A912F912073CF80000000108A912FB12073CFA0000000208A913090000000512073CFE00000004050000FC135D81070CFD9C01000000050F350D000CFD9BF90000000500000006000000000000000300000005120700FA08A91309120700FE0000000A0000000412073CFE00000004050000FC135D81070CFD9C010F34D100000000000CFD9BF9000000050F34D0F8045489FB00000005138670FA0000000A00000002000000010F350D000CFD9BF90000000A0F34D0F8045489FB1386ACFA00000002000000060000000A000000010000000000000003135D4507000000030CFD9C010F34D100000000000CFD9BF9000000050000000A0000000A00000002120700F808A912FB12073CFA0000000208A91309120700FE000000080000000412073CFE00000004050000FC135D81070CFD9C010F34D1000000000000000008000000080000000300000008120700FA08A91309120700FE050000FC135D81070CFD9C010F34D10000000000000000080000000800000003000000080000000412073CFE00000004050000FC135D81070CFD9C010F34D10000000000045489F91386ACF800000001045489FB00000008138670FA0CFD9C090000000A0F350CFE000000040000000600000002138670F8045489FB00000008138670FA0CFD9C09000000080000000800000002000000010F350D00045489F91386ACF800000001045489FB000000080000000A138670F8045489FB00000008138670FA0000000A00000002000000010000000000000003135D4507000000030CFD9C010F34D10000000000000000080F350D00045489F9000000080000000800000000000000020000000100000000000000041151E9090000000408A91301120701000000000008A912F900000005120700F808A912FB00000005120700FA050000FC135D8107050000FE000000060000000600000003135D450700000003050000FE0000000600000006000000020000000112073D0008A912F912073CF80000000108A912FB00000005120700FA050000FC135D8107050000FE000000060000000700000003135D450700000003050000FE00000006135D4509000000040000000600000002120700F808A912FB12073CFA00000002050000FC135D8107050000FE00000006135D4509000000040000000600000003135D450700000003050000FE00000006135D45090000000400000006120700FA050000FC135D8107050000FE135D81090CFD9C01000000060F350D00045489F900000006000000060000000000000004135D4509000000040CFD9C01000000060F350D00000000060000000000000003135D450700000003050000FE135D81090CFD9C01000000060F350D00000000060000000000000004135D4509000000040CFD9C01000000060F350D00045489F9000000060000000600000000000000020000000100000000"
theorem small_7821989_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7821989_right_root small_7821989_right_fuel small_7821989_right_count small_7821989_right_encoded = true := by
  decide +kernel
theorem small_7821989_right_covered : CoveredBy scale carrier boxes small_7821989_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7821989_right_root small_7821989_right_fuel small_7821989_right_count small_7821989_right_encoded small_7821989_right_checked

theorem cover_7821989 : CoveredBy scale carrier boxes root_7821989 := by
  apply coveredBy_split_literal root_7821989 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.root_7821990 small_7821989_right_root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.cover_7821990
  · exact small_7821989_right_covered
#print axioms cover_7821989

def root_7821983 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7821983_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7821983_left_fuel : Nat := 1
def small_7821983_left_count : Nat := 1
def small_7821983_left_encoded : String := "00000002"
theorem small_7821983_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7821983_left_root small_7821983_left_fuel small_7821983_left_count small_7821983_left_encoded = true := by
  decide +kernel
theorem small_7821983_left_covered : CoveredBy scale carrier boxes small_7821983_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7821983_left_root small_7821983_left_fuel small_7821983_left_count small_7821983_left_encoded small_7821983_left_checked

theorem cover_7821983 : CoveredBy scale carrier boxes root_7821983 := by
  apply coveredBy_split_literal root_7821983 small_7821983_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.root_7821989 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_7821983_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.cover_7821989
#print axioms cover_7821983

def root_7821982 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7821982_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7821982_right_fuel : Nat := 17
def small_7821982_right_count : Nat := 53
def small_7821982_right_encoded : String := "1151E8FB0A0000FC115225070A0000FE1152250908A91301120701000000000008A912F912073CF800000001000000050000000512073D0008A912F912073CF80000000100000005120700F808A913070000000512073CFC0000000308A913090000000512073CFE00000004050000FA135D80FB000000020CFD9C0100000005000000080000000500000001000000000000000400000005000000031151E907000000030A0000FE1152250900000005000000041151E9090000000408A913010000000512073D00000000050000000000000002"
theorem small_7821982_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7821982_right_root small_7821982_right_fuel small_7821982_right_count small_7821982_right_encoded = true := by
  decide +kernel
theorem small_7821982_right_covered : CoveredBy scale carrier boxes small_7821982_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7821982_right_root small_7821982_right_fuel small_7821982_right_count small_7821982_right_encoded small_7821982_right_checked

theorem cover_7821982 : CoveredBy scale carrier boxes root_7821982 := by
  apply coveredBy_split_literal root_7821982 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.root_7821983 small_7821982_right_root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.cover_7821983
  · exact small_7821982_right_covered
#print axioms cover_7821982

def root_7821976 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7821976_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7821976_left_fuel : Nat := 1
def small_7821976_left_count : Nat := 1
def small_7821976_left_encoded : String := "00000001"
theorem small_7821976_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7821976_left_root small_7821976_left_fuel small_7821976_left_count small_7821976_left_encoded = true := by
  decide +kernel
theorem small_7821976_left_covered : CoveredBy scale carrier boxes small_7821976_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7821976_left_root small_7821976_left_fuel small_7821976_left_count small_7821976_left_encoded small_7821976_left_checked

theorem cover_7821976 : CoveredBy scale carrier boxes root_7821976 := by
  apply coveredBy_split_literal root_7821976 small_7821976_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.root_7821982 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_7821976_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.cover_7821982
#print axioms cover_7821976

def root_7821975 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7821975_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7821975_right_fuel : Nat := 19
def small_7821975_right_count : Nat := 75
def small_7821975_right_encoded : String := "1151E8F90A0000FA115224FB000000020A0000FC115225070A0000FE1152250908A91301120701000000000008A912FB12073CFA00000002000000050000000512073D0008A912FB12073CFA0000000200000005120700FA08A913070000000512073CFC0000000308A913090000000512073CFE00000004050000F8135D80F9000000010CFD9C0100000005000000070000000500000002000000000000000400000005000000031151E907000000030A0000FE1152250900000005000000041151E9090000000408A913010000000512073D0000000005000000001151E8FB0A0000FC115225070A0000FE1152250908A9130112070100000000000000000500000005000000041151E9090000000400000005000000031151E90700000003000000050000000200000001"
theorem small_7821975_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7821975_right_root small_7821975_right_fuel small_7821975_right_count small_7821975_right_encoded = true := by
  decide +kernel
theorem small_7821975_right_covered : CoveredBy scale carrier boxes small_7821975_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7821975_right_root small_7821975_right_fuel small_7821975_right_count small_7821975_right_encoded small_7821975_right_checked

theorem cover_7821975 : CoveredBy scale carrier boxes root_7821975 := by
  apply coveredBy_split_literal root_7821975 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.root_7821976 small_7821975_right_root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.cover_7821976
  · exact small_7821975_right_covered
#print axioms cover_7821975

def root_7821970 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7821970_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7821970_right_fuel : Nat := 1
def small_7821970_right_count : Nat := 1
def small_7821970_right_encoded : String := "00000000"
theorem small_7821970_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7821970_right_root small_7821970_right_fuel small_7821970_right_count small_7821970_right_encoded = true := by
  decide +kernel
theorem small_7821970_right_covered : CoveredBy scale carrier boxes small_7821970_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7821970_right_root small_7821970_right_fuel small_7821970_right_count small_7821970_right_encoded small_7821970_right_checked

theorem cover_7821970 : CoveredBy scale carrier boxes root_7821970 := by
  apply coveredBy_split_literal root_7821970 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.root_7821975 small_7821970_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.cover_7821975
  · exact small_7821970_right_covered
#print axioms cover_7821970

def root_7820476 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7820476 : CoveredBy scale carrier boxes root_7820476 := by
  apply coveredBy_split_literal root_7820476 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2940.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.root_7821970 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2940.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.cover_7821970
#print axioms cover_7820476

def root_7812930 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7812930 : CoveredBy scale carrier boxes root_7812930 := by
  apply coveredBy_split_literal root_7812930 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.root_7812931 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.root_7820476 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.cover_7812931
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.cover_7820476
#print axioms cover_7812930

def root_7831478 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7831478 : CoveredBy scale carrier boxes root_7831478 := by
  apply coveredBy_split_literal root_7831478 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2944.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2945.root coord3 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2944.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2945.covered
#print axioms cover_7831478

def root_7831472 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7831472_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7831472_left_fuel : Nat := 1
def small_7831472_left_count : Nat := 1
def small_7831472_left_encoded : String := "00000001"
theorem small_7831472_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7831472_left_root small_7831472_left_fuel small_7831472_left_count small_7831472_left_encoded = true := by
  decide +kernel
theorem small_7831472_left_covered : CoveredBy scale carrier boxes small_7831472_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7831472_left_root small_7831472_left_fuel small_7831472_left_count small_7831472_left_encoded small_7831472_left_checked

theorem cover_7831472 : CoveredBy scale carrier boxes root_7831472 := by
  apply coveredBy_split_literal root_7831472 small_7831472_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.root_7831478 coord1 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_7831472_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.cover_7831478
#print axioms cover_7831472

def root_7831471 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7831471_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7831471_right_fuel : Nat := 8
def small_7831471_right_count : Nat := 19
def small_7831471_right_encoded : String := "0F34D0F804548A07138670FC078000FA128A7CFB0000000207800108128A40FF000000060000000400000009128A40FB07800108000000070000000900000002000000030000000500000001"
theorem small_7831471_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7831471_right_root small_7831471_right_fuel small_7831471_right_count small_7831471_right_encoded = true := by
  decide +kernel
theorem small_7831471_right_covered : CoveredBy scale carrier boxes small_7831471_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7831471_right_root small_7831471_right_fuel small_7831471_right_count small_7831471_right_encoded small_7831471_right_checked

theorem cover_7831471 : CoveredBy scale carrier boxes root_7831471 := by
  apply coveredBy_split_literal root_7831471 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.root_7831472 small_7831471_right_root coord1 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.cover_7831472
  · exact small_7831471_right_covered
#print axioms cover_7831471

def root_7831465 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7831465_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7831465_left_fuel : Nat := 1
def small_7831465_left_count : Nat := 1
def small_7831465_left_encoded : String := "00000000"
theorem small_7831465_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7831465_left_root small_7831465_left_fuel small_7831465_left_count small_7831465_left_encoded = true := by
  decide +kernel
theorem small_7831465_left_covered : CoveredBy scale carrier boxes small_7831465_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7831465_left_root small_7831465_left_fuel small_7831465_left_count small_7831465_left_encoded small_7831465_left_checked

theorem cover_7831465 : CoveredBy scale carrier boxes root_7831465 := by
  apply coveredBy_split_literal root_7831465 small_7831465_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.root_7831471 coord0 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_7831465_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.cover_7831471
#print axioms cover_7831465

def root_7831464 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7831464_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7831464_right_fuel : Nat := 23
def small_7831464_right_count : Nat := 191
def small_7831464_right_encoded : String := "1386AD000CFD9BF90F350CF80000000104548A07138670FC0C9A86F80F878CF900000001078000FA128A7CFB0000000207800108128A40FF067ECE8112EA590000000000022A458700000006000000050000000500000004128A7CFF00000004067ECE810000000900000005128A40FB07800108128A40FF067ECE8112EA590000000000022A458700000009000000050000000500000004128A7CFF00000004067ECE810000000900000005000000020F8750F9078000FA128A7CFB0000000207800108128A40FF067ECE8112EA590000000000022A458713E1C4FC0B4D43F800000006108010F908C000FA0000000600000009000000010000000313E200FC000000030B4D43F810804CF90000000100000005108010F908C000FA11FC24FB000000020000000511FBE8FB064001080000000812FFACFF000000040569AC410000000900000005000000020000000112EA9500022A458713E1C4FC0000000600000003000000050000000000000004128A7CFF00000004067ECE8112EA590000000000022A45870000000913E200FC000000030B4D43F800000009108010F908C000FA00000007000000090000000112EA9500022A4587000000090000000500000000128A40FB07800108128A40FF067ECE8112EA590000000000022A458713E1C4FC0B4D43F800000009108010F9064000FA00000009000000080000000100000003000000080000000800000004128A7CFF00000004067ECE8112EA590000000000022A45870000000913E200FC000000030B4D43F800000009108010F9064000FA00000009000000090000000112EA9500022A45870000000900000005000000000000000200000001000000031386ACFC000000030C9A86F80F878CF900000001000000050F8750F9078000FA128A7CFB0000000200000005128A40FB0780010800000008128A7CFF00000004067ECE8112EA590000000000067ECE8712EA58FC0B4D43F800000005108010F9000000080000000100000003000000050000000500000002000000010F34D0F8000000050000000100000000"
theorem small_7831464_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7831464_right_root small_7831464_right_fuel small_7831464_right_count small_7831464_right_encoded = true := by
  decide +kernel
theorem small_7831464_right_covered : CoveredBy scale carrier boxes small_7831464_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7831464_right_root small_7831464_right_fuel small_7831464_right_count small_7831464_right_encoded small_7831464_right_checked

theorem cover_7831464 : CoveredBy scale carrier boxes root_7831464 := by
  apply coveredBy_split_literal root_7831464 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.root_7831465 small_7831464_right_root coord0 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.cover_7831465
  · exact small_7831464_right_covered
#print axioms cover_7831464

def root_7831458 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7831458_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7831458_left_fuel : Nat := 1
def small_7831458_left_count : Nat := 1
def small_7831458_left_encoded : String := "00000004"
theorem small_7831458_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7831458_left_root small_7831458_left_fuel small_7831458_left_count small_7831458_left_encoded = true := by
  decide +kernel
theorem small_7831458_left_covered : CoveredBy scale carrier boxes small_7831458_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7831458_left_root small_7831458_left_fuel small_7831458_left_count small_7831458_left_encoded small_7831458_left_checked

theorem cover_7831458 : CoveredBy scale carrier boxes root_7831458 := by
  apply coveredBy_split_literal root_7831458 small_7831458_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.root_7831464 coord4 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_7831458_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.cover_7831464
#print axioms cover_7831458

def root_7829632 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7829632 : CoveredBy scale carrier boxes root_7829632 := by
  apply coveredBy_split_literal root_7829632 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2943.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.root_7831458 coord4 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2943.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.cover_7831458
#print axioms cover_7829632

def root_7829626 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7829626_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7829626_left_fuel : Nat := 1
def small_7829626_left_count : Nat := 1
def small_7829626_left_encoded : String := "00000002"
theorem small_7829626_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7829626_left_root small_7829626_left_fuel small_7829626_left_count small_7829626_left_encoded = true := by
  decide +kernel
theorem small_7829626_left_covered : CoveredBy scale carrier boxes small_7829626_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7829626_left_root small_7829626_left_fuel small_7829626_left_count small_7829626_left_encoded small_7829626_left_checked

theorem cover_7829626 : CoveredBy scale carrier boxes root_7829626 := by
  apply coveredBy_split_literal root_7829626 small_7829626_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.root_7829632 coord2 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_7829626_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.cover_7829632
#print axioms cover_7829626

def root_7829625 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7829625_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7829625_right_fuel : Nat := 22
def small_7829625_right_count : Nat := 261
def small_7829625_right_encoded : String := "135D44FB05000108135D44FF04548A0113867100000000000CFD9BF90F350CF80000000104548A07000000071386ACFC000000030C9A86F8000000070F8750F90000000800000001000000071386AD000CFD9BF90F350CF80000000104548A07138670FC0000000800000003000000080F34D0F800000007000000010000000000000004135D80FF0000000404548A0113867100000000000CFD9BF90F350CF80000000104548A07138670FC0C9A86F80F878CF900000001028000FA13D7ECFB000000020780010800000007128A7CFF0000000400000009000000070F8750F9028000FA13D7ECFB0000000207800108128A40FF022A45810000000713E20100022A458713E1C4FC0B4D43F800000007108010F9000000090000000100000003000000080000000000000004128A7CFF00000004022A458113E1C50000000000022A4587000000090000000A13E20100022A45870000000913E200FC000000030B4D43F800000009108010F900000009000000010000000013D7B0FB0780010800000007128A7CFF00000004022A458100000007000000090000000200000001000000031386ACFC000000030C9A86F80F878CF900000001028000FA13D7ECFB0000000207800108128A40FF0000000700000004128A7CFF00000004022A45810000000A13E20100067ECE8700000009000000050000000013D7B0FB0780010800000007128A7CFF000000040000000A000000020F8750F9028000FA13D7ECFB0000000207800108128A40FF022A458113E1C50000000000067ECE8700000007000000080000000800000004128A7CFF00000004022A458113E1C50000000000067ECE8712EA58FC0000000A000000030000000A13E20100067ECE8712EA58FC0B4D43F800000008108010F9000000080000000100000003000000080000000013D7B0FB0780010800000008128A7CFF00000004022A458113E1C50000000000067ECE8700000007000000060000000800000002000000010F34D0F804548A07000000071386ACFC00000003028000FA13D7ECFB0000000207800108000000070000000A00000007000000011386AD000CFD9BF90F350CF80000000104548A07138670FC0C9A86F80F878CF900000001028000FA13D7ECFB0000000207800108128A40FF0000000800000004128A7CFF00000004067ECE810000000900000009000000080F8750F9028000FA13D7ECFB0000000207800108128A40FF0000000800000004128A7CFF00000004067ECE8112EA590000000000022A45870000000900000008000000080000000800000001000000031386ACFC000000030C9A86F8000000080F8750F900000008000000010F34D0F804548A07138670FC028000FA13D7ECFB000000020780010800000005128A7CFF0000000400000005000000070000000300000005000000010000000000000002"
theorem small_7829625_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7829625_right_root small_7829625_right_fuel small_7829625_right_count small_7829625_right_encoded = true := by
  decide +kernel
theorem small_7829625_right_covered : CoveredBy scale carrier boxes small_7829625_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7829625_right_root small_7829625_right_fuel small_7829625_right_count small_7829625_right_encoded small_7829625_right_checked

theorem cover_7829625 : CoveredBy scale carrier boxes root_7829625 := by
  apply coveredBy_split_literal root_7829625 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.root_7829626 small_7829625_right_root coord2 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.cover_7829626
  · exact small_7829625_right_covered
#print axioms cover_7829625

def root_7829620 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7829620_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7829620_right_fuel : Nat := 1
def small_7829620_right_count : Nat := 1
def small_7829620_right_encoded : String := "00000003"
theorem small_7829620_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7829620_right_root small_7829620_right_fuel small_7829620_right_count small_7829620_right_encoded = true := by
  decide +kernel
theorem small_7829620_right_covered : CoveredBy scale carrier boxes small_7829620_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7829620_right_root small_7829620_right_fuel small_7829620_right_count small_7829620_right_encoded small_7829620_right_checked

theorem cover_7829620 : CoveredBy scale carrier boxes root_7829620 := by
  apply coveredBy_split_literal root_7829620 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.root_7829625 small_7829620_right_root coord3 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.cover_7829625
  · exact small_7829620_right_covered
#print axioms cover_7829620

def root_7829619 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7829619_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7829619_right_fuel : Nat := 24
def small_7829619_right_count : Nat := 173
def small_7829619_right_encoded : String := "12073CFC00000003050000FA135D80FB0000000205000108135D44FF04548A0113867100000000000CFD9BF90F350CF8000000010CFD9C070F34D0FC0C9A86F80F878CF900000001000000050F8750F9078000FA128A7CFB000000020000000500000008000000010000000300000005000000050000000500000004135D80FF0000000404548A0113867100000000000CFD9BF90F350CF8000000010CFD9C070F34D0FC0C9A86F80F878CF900000001000000050F8750F9078000FA128A7CFB000000020780010800000005128A7CFF0000000400000005128A40FB07800108128A40FF0000000800000004128A7CFF00000004022A458113E1C500000000000AD3578710D100FC0B4D43F810804CF90000000100000005108010F900000006000000010000000300000005000000050000000200000001000000030F350CFC000000030C9A86F8000000050F8750F90C9A86FC000000050F8751070000000300000005000000010F34D0F800000005000000011386AD000CFD9BF90F350CF8000000010CFD9C070F34D0FC0000000500000003000000050000000500000000135D44FB05000108135D44FF04548A0113867100000000000CFD9BF9000000080F34D0F800000005000000010000000800000004135D80FF0000000404548A0113867100000000000CFD9BF90F350CF8000000010CFD9C070F34D0FC0C9A86F80F878CF900000001028000FA13D7ECFB000000020780010800000008128A7CFF00000004022A45810000000A00000005000000080F8750F90000000800000001000000030F350CFC000000030C9A86F8000000080F8750F900000008000000010F34D0F80CFD9C070F34D0FC000000050000000300000005000000011386AD000CFD9BF90F350CF8000000010CFD9C070F34D0FC0000000800000003000000080F34D0F800000005000000010000000000000002"
theorem small_7829619_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7829619_right_root small_7829619_right_fuel small_7829619_right_count small_7829619_right_encoded = true := by
  decide +kernel
theorem small_7829619_right_covered : CoveredBy scale carrier boxes small_7829619_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7829619_right_root small_7829619_right_fuel small_7829619_right_count small_7829619_right_encoded small_7829619_right_checked

theorem cover_7829619 : CoveredBy scale carrier boxes root_7829619 := by
  apply coveredBy_split_literal root_7829619 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.root_7829620 small_7829619_right_root coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.cover_7829620
  · exact small_7829619_right_covered
#print axioms cover_7829619

def root_7829613 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7829613_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7829613_left_fuel : Nat := 1
def small_7829613_left_count : Nat := 1
def small_7829613_left_encoded : String := "00000001"
theorem small_7829613_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7829613_left_root small_7829613_left_fuel small_7829613_left_count small_7829613_left_encoded = true := by
  decide +kernel
theorem small_7829613_left_covered : CoveredBy scale carrier boxes small_7829613_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7829613_left_root small_7829613_left_fuel small_7829613_left_count small_7829613_left_encoded small_7829613_left_checked

theorem cover_7829613 : CoveredBy scale carrier boxes root_7829613 := by
  apply coveredBy_split_literal root_7829613 small_7829613_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.root_7829619 coord1 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_7829613_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.cover_7829619
#print axioms cover_7829613

def root_7829612 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7829612_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7829612_right_fuel : Nat := 9
def small_7829612_right_count : Nat := 21
def small_7829612_right_encoded : String := "120700F808A91307120700FC050000FA135D80FB0000000205000108135D44FF04548A0100000007000000050000000400000005135D44FB05000108000000070000000700000002000000030000000500000001"
theorem small_7829612_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7829612_right_root small_7829612_right_fuel small_7829612_right_count small_7829612_right_encoded = true := by
  decide +kernel
theorem small_7829612_right_covered : CoveredBy scale carrier boxes small_7829612_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7829612_right_root small_7829612_right_fuel small_7829612_right_count small_7829612_right_encoded small_7829612_right_checked

theorem cover_7829612 : CoveredBy scale carrier boxes root_7829612 := by
  apply coveredBy_split_literal root_7829612 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.root_7829613 small_7829612_right_root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.cover_7829613
  · exact small_7829612_right_covered
#print axioms cover_7829612

def root_7829606 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7829606_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7829606_left_fuel : Nat := 1
def small_7829606_left_count : Nat := 1
def small_7829606_left_encoded : String := "00000000"
theorem small_7829606_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7829606_left_root small_7829606_left_fuel small_7829606_left_count small_7829606_left_encoded = true := by
  decide +kernel
theorem small_7829606_left_covered : CoveredBy scale carrier boxes small_7829606_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7829606_left_root small_7829606_left_fuel small_7829606_left_count small_7829606_left_encoded small_7829606_left_checked

theorem cover_7829606 : CoveredBy scale carrier boxes root_7829606 := by
  apply coveredBy_split_literal root_7829606 small_7829606_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.root_7829612 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_7829606_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.cover_7829612
#print axioms cover_7829606

def root_7829605 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7829605_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7829605_right_fuel : Nat := 19
def small_7829605_right_count : Nat := 73
def small_7829605_right_encoded : String := "12073D0008A912F912073CF80000000108A91307120700FC050000FA135D80FB0000000205000108135D44FF0CFD9C010F34D100000000000CFD9BF90F350CF80000000104548A07138670FC0C9A86F800000008000000050000000300000005000000050000000500000004135D80FF000000040CFD9C010F34D100000000000CFD9BF90F350CF80000000104548A07138670FC0C9A86F8000000050F8750F9078000FA00000005000000080000000100000003000000050000000500000005135D44FB05000108135D44FF0000000800000004135D80FF000000040CFD9C010F34D100000000000CFD9BF90F350CF80000000104548A07138670FC00000008000000030000000500000005000000050000000200000003000000050000000500000000"
theorem small_7829605_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7829605_right_root small_7829605_right_fuel small_7829605_right_count small_7829605_right_encoded = true := by
  decide +kernel
theorem small_7829605_right_covered : CoveredBy scale carrier boxes small_7829605_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7829605_right_root small_7829605_right_fuel small_7829605_right_count small_7829605_right_encoded small_7829605_right_checked

theorem cover_7829605 : CoveredBy scale carrier boxes root_7829605 := by
  apply coveredBy_split_literal root_7829605 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.root_7829606 small_7829605_right_root coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.cover_7829606
  · exact small_7829605_right_covered
#print axioms cover_7829605

def root_7829600 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7829600_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7829600_right_fuel : Nat := 1
def small_7829600_right_count : Nat := 1
def small_7829600_right_encoded : String := "00000004"
theorem small_7829600_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7829600_right_root small_7829600_right_fuel small_7829600_right_count small_7829600_right_encoded = true := by
  decide +kernel
theorem small_7829600_right_covered : CoveredBy scale carrier boxes small_7829600_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7829600_right_root small_7829600_right_fuel small_7829600_right_count small_7829600_right_encoded small_7829600_right_checked

theorem cover_7829600 : CoveredBy scale carrier boxes root_7829600 := by
  apply coveredBy_split_literal root_7829600 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.root_7829605 small_7829600_right_root coord4 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.cover_7829605
  · exact small_7829600_right_covered
#print axioms cover_7829600

def root_7829599 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7829599 : CoveredBy scale carrier boxes root_7829599 := by
  apply coveredBy_split_literal root_7829599 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.root_7829600 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2946.root coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.cover_7829600
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2946.covered
#print axioms cover_7829599

def root_7829594 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7829594_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7829594_right_fuel : Nat := 1
def small_7829594_right_count : Nat := 1
def small_7829594_right_encoded : String := "00000003"
theorem small_7829594_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7829594_right_root small_7829594_right_fuel small_7829594_right_count small_7829594_right_encoded = true := by
  decide +kernel
theorem small_7829594_right_covered : CoveredBy scale carrier boxes small_7829594_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7829594_right_root small_7829594_right_fuel small_7829594_right_count small_7829594_right_encoded small_7829594_right_checked

theorem cover_7829594 : CoveredBy scale carrier boxes root_7829594 := by
  apply coveredBy_split_literal root_7829594 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.root_7829599 small_7829594_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.cover_7829599
  · exact small_7829594_right_covered
#print axioms cover_7829594

def root_7829593 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7829593 : CoveredBy scale carrier boxes root_7829593 := by
  apply coveredBy_split_literal root_7829593 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.root_7829594 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2947.root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.cover_7829594
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2947.covered
#print axioms cover_7829593

def root_7829588 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7829588_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7829588_right_fuel : Nat := 1
def small_7829588_right_count : Nat := 1
def small_7829588_right_encoded : String := "00000002"
theorem small_7829588_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7829588_right_root small_7829588_right_fuel small_7829588_right_count small_7829588_right_encoded = true := by
  decide +kernel
theorem small_7829588_right_covered : CoveredBy scale carrier boxes small_7829588_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7829588_right_root small_7829588_right_fuel small_7829588_right_count small_7829588_right_encoded small_7829588_right_checked

theorem cover_7829588 : CoveredBy scale carrier boxes root_7829588 := by
  apply coveredBy_split_literal root_7829588 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.root_7829593 small_7829588_right_root coord2 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.cover_7829593
  · exact small_7829588_right_covered
#print axioms cover_7829588

def root_7826934 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7826934 : CoveredBy scale carrier boxes root_7826934 := by
  apply coveredBy_split_literal root_7826934 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2942.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.root_7829588 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2942.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.cover_7829588
#print axioms cover_7826934

def root_7826928 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7826928_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7826928_left_fuel : Nat := 1
def small_7826928_left_count : Nat := 1
def small_7826928_left_encoded : String := "00000001"
theorem small_7826928_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7826928_left_root small_7826928_left_fuel small_7826928_left_count small_7826928_left_encoded = true := by
  decide +kernel
theorem small_7826928_left_covered : CoveredBy scale carrier boxes small_7826928_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7826928_left_root small_7826928_left_fuel small_7826928_left_count small_7826928_left_encoded small_7826928_left_checked

theorem cover_7826928 : CoveredBy scale carrier boxes root_7826928 := by
  apply coveredBy_split_literal root_7826928 small_7826928_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.root_7826934 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_7826928_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.cover_7826934
#print axioms cover_7826928

def root_7839125 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7839125_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7839125_right_fuel : Nat := 33
def small_7839125_right_count : Nat := 359
def small_7839125_right_encoded : String := "1151E907000000030A0001081151E8FF08A91301120701000000000008A912FB12073CFA00000002050000F8135D80F900000001050000FC135D81070500010800000005135D80FF0000000404548A0113867100000000000CFD9BFB0F350CFA000000020C9A86FA000000050F8750FB078000F8000000050000000900000002000000050000000500000003135D4507000000030500010800000005135D80FF0000000404548A0113867100000000000CFD9BFB000000090000000500000005135D44F9050000FC135D81070500010800000009135D80FF0000000404548A01000000091386AD000CFD9BFB00000009000000050000000000000003135D4507000000030500010800000009135D80FF0000000404548A01000000091386AD000CFD9BFB00000009000000050000000000000001120700FA000000050000000212073D0008A912FB12073CFA00000002050000F800000005135D44F9050000FC00000005135D4507000000030000000500000001000000050000000000000004115224FF0000000408A91301120701000000000008A912FB12073CFA0000000208A912FF12073D08050000F8135D80F900000001050000FC135D810704548A0113867100000000000CFD9BFB0F350CFA000000020CFD9BFF0F350D080C9A86FA000000070F8750FB0C9A87080F8750FF078000F800000005128A40F9078000FC00000005128A41070000000300000005000000010000000400000007000000020000000400000007000000071386AD000CFD9BFB0F350CFA000000020CFD9BFF0F350D08000000050000000400000005000000050000000000000003135D45070000000304548A0113867100000000000CFD9BFB0F350CFA000000020CFD9BFF0F350D080C9A86FA0F878CFB000000020C9A870800000005000000070F8750FB0C9A87080F8750FF078000F8128A7CF9000000010000000500000009000000040F878CFF00000004078000F8128A7CF900000001028000FC0000000513D7B10700000003022A458113E1C500000000000B4D43FA00000005108010FB0DE7CA0800000005000000070000000200000005128A40F9028000FC0000000713D7B10700000003022A458113E1C5000000000000000007000000070000000100000002000000040F34D10800000004000000070F34D0FA00000005000000021386AD000CFD9BFB0F350CFA000000020CFD9BFF0F350D080C9A86FA000000050F8750FB0C9A8708000000050F878CFF000000040000000500000002000000040F34D10800000004000000070F34D0FA000000050000000200000000135D44F9050000FC135D810704548A011386710000000000000000070000000700000003135D45070000000304548A0113867100000000000CFD9BFB0F350CFA000000020CFD9BFF0F350D080C9A86FA000000090F8750FB0000000900000002000000040F34D10800000004000000070F34D0FA00000007000000021386AD000CFD9BFB0F350CFA000000020CFD9BFF0F350D080C9A86FA000000070F8750FB0C9A87080000000A0000000700000002000000040F34D10800000004000000070F34D0FA0000000700000002000000000000000100000004120701080000000400000007120700FA000000070000000212073D0008A912FB12073CFA0000000208A912FF12073D08050000F8135D80F900000001050000FC00000005135D45070000000300000005135D44F9050000FC135D81070CFD9C010F34D10000000000000000070000000500000003135D4507000000030CFD9C010F34D100000000000CFD9BFB0F350CFA000000020CFD9BFF0F350D080C9A86FA000000050F8750FB0C9A8708000000050F878CFF000000040000000700000002000000040F34D10800000004000000070F34D0FA00000005000000020F350D0000000005000000000000000100000004120701080000000400000007120700FA000000050000000200000000"
theorem small_7839125_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7839125_right_root small_7839125_right_fuel small_7839125_right_count small_7839125_right_encoded = true := by
  decide +kernel
theorem small_7839125_right_covered : CoveredBy scale carrier boxes small_7839125_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7839125_right_root small_7839125_right_fuel small_7839125_right_count small_7839125_right_encoded small_7839125_right_checked

theorem cover_7839125 : CoveredBy scale carrier boxes root_7839125 := by
  apply coveredBy_split_literal root_7839125 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2948.root small_7839125_right_root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2948.covered
  · exact small_7839125_right_covered
#print axioms cover_7839125

def root_7839119 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7839119_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7839119_left_fuel : Nat := 1
def small_7839119_left_count : Nat := 1
def small_7839119_left_encoded : String := "00000002"
theorem small_7839119_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7839119_left_root small_7839119_left_fuel small_7839119_left_count small_7839119_left_encoded = true := by
  decide +kernel
theorem small_7839119_left_covered : CoveredBy scale carrier boxes small_7839119_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7839119_left_root small_7839119_left_fuel small_7839119_left_count small_7839119_left_encoded small_7839119_left_checked

theorem cover_7839119 : CoveredBy scale carrier boxes root_7839119 := by
  apply coveredBy_split_literal root_7839119 small_7839119_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.root_7839125 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_7839119_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.cover_7839125
#print axioms cover_7839119

def root_7844549 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7844549_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-6291456), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7844549_right_fuel : Nat := 19
def small_7844549_right_count : Nat := 199
def small_7844549_right_encoded : String := "128A40F9078000FA128A7CFB0000000207800108128A40FF022A458113E1C50000000000022A45870000000513E200FC00000003064000F812FFACF90000000108C000FA11FC24FB000000020640010812FF70FF01152341000000050000000A0000000412FFACFF0000000401152341000000050000000711FBE8FB000000050000000212FF70F9000000050000000113E20100022A458713E1C4FC064000F812FFACF90000000108C000FA0000000A11FBE8FB00000005000000020000000A0000000313E200FC00000003064000F812FFACF90000000108C000FA11FC24FB00000002064001080000000A0000000711FBE8FB064001080000000A12FFACFF00000004033F67C113BBF50000000000033F67C70000000500000007000000070000000212FF70F90000000A000000010000000000000004128A7CFF00000004022A458113E1C50000000000022A45870000000513E200FC00000003064000F812FFACF90000000108C000FA0000000711FBE8FB08C0010811FBE8FF0000000500000004000000070000000212FF70F9000000070000000113E20100022A458713E1C4FC00000007000000030000000700000000128A40FB07800108128A40FF022A45810000000513E20100022A45870000000513E200FC00000003064000F812FFACF900000001064000FA12FFACFB000000020640010812FF70FF033F67C100000005000000080000000412FFACFF00000004033F67C10000000513BC3100033F67C700000005000000080000000012FF70FB064001080000000612FFACFF00000004000000060000000212FF70F9064000FA12FFACFB00000002064001080000000612FFACFF000000040000000600000006000000010000000000000004128A7CFF00000004022A45810000000513E20100022A45870000000513E200FC00000003064000F812FFACF900000001064000FA12FFACFB0000000208C0010811FBE8FF033F67C10000000500000007000000040000000712FF70FB08C001080000000611FC24FF00000004000000060000000212FF70F9064000FA12FFACFB00000002000000070000000600000001000000000000000200000001"
theorem small_7844549_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7844549_right_root small_7844549_right_fuel small_7844549_right_count small_7844549_right_encoded = true := by
  decide +kernel
theorem small_7844549_right_covered : CoveredBy scale carrier boxes small_7844549_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7844549_right_root small_7844549_right_fuel small_7844549_right_count small_7844549_right_encoded small_7844549_right_checked

theorem cover_7844549 : CoveredBy scale carrier boxes root_7844549 := by
  apply coveredBy_split_literal root_7844549 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2950.root small_7844549_right_root coord1 false (-6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2950.covered
  · exact small_7844549_right_covered
#print axioms cover_7844549

def root_7844544 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7844544_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16378880), (-15122432)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7844544_right_fuel : Nat := 1
def small_7844544_right_count : Nat := 1
def small_7844544_right_encoded : String := "00000003"
theorem small_7844544_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7844544_right_root small_7844544_right_fuel small_7844544_right_count small_7844544_right_encoded = true := by
  decide +kernel
theorem small_7844544_right_covered : CoveredBy scale carrier boxes small_7844544_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7844544_right_root small_7844544_right_fuel small_7844544_right_count small_7844544_right_encoded small_7844544_right_checked

theorem cover_7844544 : CoveredBy scale carrier boxes root_7844544 := by
  apply coveredBy_split_literal root_7844544 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.root_7844549 small_7844544_right_root coord3 false (-16378880)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.cover_7844549
  · exact small_7844544_right_covered
#print axioms cover_7844544

def root_7847770 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(-15553280), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7847770_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(-15553280), (-14529024)⟩⟩, ⟨⟨(-6291456), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7847770_right_fuel : Nat := 23
def small_7847770_right_count : Nat := 215
def small_7847770_right_encoded : String := "128A40FB07800108128A40FF022A458113E1C50000000000067ECE8712EA58FC08C000F811FC24F900000001064000FA12FFACFB000000020640010812FF70FF0115234113F85900000000000569AC470000000500000006000000080000000412FFACFF000000040115234113F85900000000000569AC471340D4FC00000006000000030000000613F895000569AC471340D4FC096000F8000000080000000600000003000000060000000012FF70FB0640010800000006000000060000000211FBE8F9064000FA12FFACFB0000000206400108000000060000000600000006000000010000000312EA94FC0000000308C000F8000000080000000613E20100067ECE8712EA58FC08C000F80000000811FBE8F9000000080000000100000003000000080000000000000004128A7CFF00000004022A458113E1C50000000000067ECE8712EA58FC08C000F811FC24F900000001064000FA12FFACFB0000000208C0010811FBE8FF011523410000000613F895000569AC471340D4FC096000F800000009000000060000000300000006000000000000000411FC24FF00000004011523410000000613F895000569AC4700000009000000060000000012FF70FB08C0010800000006000000060000000211FBE8F9064000FA12FFACFB000000020000000600000006000000010000000312EA94FC000000030000000613E20100067ECE8712EA58FC08C000F811FC24F900000001064000FA12FFACFB0000000208C0010811FBE8FF033F67C113BBF500000000000569AC471340D4FC096000F80000000911AA80F906E000FA12C820FB0000000208200108000000060000000600000006000000010000000300000008000000080000000411FC24FF00000004033F67C113BBF500000000000569AC4700000009000000070000000712FF70FB08C001080000000811FC24FF00000004033F67C100000006000000080000000211FBE8F9064000FA12FFACFB0000000208C0010811FBE8FF033F67C10000000600000008000000040000000712FF70FB08C00108000000060000000600000002000000010000000312EA94FC0000000308C000F811FC24F900000001064000FA12FFACFB0000000208C001080000000811FC24FF00000004033F67C100000006000000050000000811FBE8F900000006000000010000000000000002"
theorem small_7847770_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7847770_right_root small_7847770_right_fuel small_7847770_right_count small_7847770_right_encoded = true := by
  decide +kernel
theorem small_7847770_right_covered : CoveredBy scale carrier boxes small_7847770_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7847770_right_root small_7847770_right_fuel small_7847770_right_count small_7847770_right_encoded small_7847770_right_checked

theorem cover_7847770 : CoveredBy scale carrier boxes root_7847770 := by
  apply coveredBy_split_literal root_7847770 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2951.root small_7847770_right_root coord2 false (-6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2951.covered
  · exact small_7847770_right_covered
#print axioms cover_7847770

def root_7847764 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7847764_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(-16244736), (-15553280)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7847764_left_fuel : Nat := 1
def small_7847764_left_count : Nat := 1
def small_7847764_left_encoded : String := "00000001"
theorem small_7847764_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7847764_left_root small_7847764_left_fuel small_7847764_left_count small_7847764_left_encoded = true := by
  decide +kernel
theorem small_7847764_left_covered : CoveredBy scale carrier boxes small_7847764_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7847764_left_root small_7847764_left_fuel small_7847764_left_count small_7847764_left_encoded small_7847764_left_checked

theorem cover_7847764 : CoveredBy scale carrier boxes root_7847764 := by
  apply coveredBy_split_literal root_7847764 small_7847764_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.root_7847770 coord1 true (-15553280)
  · decide +kernel
  · decide +kernel
  · exact small_7847764_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.cover_7847770
#print axioms cover_7847764

def root_7847763 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7847763_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-6291456), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7847763_right_fuel : Nat := 19
def small_7847763_right_count : Nat := 169
def small_7847763_right_encoded : String := "128A40F9078000FA128A7CFB0000000207800108128A40FF022A458113E1C50000000000067ECE8712EA58FC064000F812FFACF90000000108C000FA11FC24FB000000020640010812FF70FF0115234113F85900000000000569AC47000000050000000613F895000569AC470000000A00000006000000000000000412FFACFF000000040000000711FBE8FB0640010800000006000000060000000212FF70F908C000FA11FC24FB0000000206400108000000060000000600000006000000010000000312EA94FC00000003064000F812FFACF900000001000000060000000613E20100067ECE8712EA58FC064000F812FFACF90000000108C000FA11FC24FB00000002064001080000000A0000000711FBE8FB0640010812FF70FF0000000A0000000412FFACFF00000004033F67C113BBF500000000000569AC470000000700000006000000070000000212FF70F908C000FA000000070000000A000000010000000312EA94FC00000003064000F812FFACF90000000108C000FA11FC24FB00000002064001080000000A000000070000000812FF70F908C000FA0000000700000006000000010000000000000004128A7CFF00000004022A458113E1C50000000000067ECE8712EA58FC064000F812FFACF90000000108C000FA0000000711FBE8FB000000060000000200000007000000030000000713E20100067ECE87000000070000000700000000128A40FB07800108128A40FF022A45810000000613E20100067ECE8712EA58FC064000F8000000080000000600000003000000060000000000000004128A7CFF00000004022A45810000000613E20100067ECE8712EA58FC064000F812FFACF900000001064000FA12FFACFB0000000208C00108000000060000000600000006000000060000000300000006000000000000000200000001"
theorem small_7847763_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7847763_right_root small_7847763_right_fuel small_7847763_right_count small_7847763_right_encoded = true := by
  decide +kernel
theorem small_7847763_right_covered : CoveredBy scale carrier boxes small_7847763_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7847763_right_root small_7847763_right_fuel small_7847763_right_count small_7847763_right_encoded small_7847763_right_checked

theorem cover_7847763 : CoveredBy scale carrier boxes root_7847763 := by
  apply coveredBy_split_literal root_7847763 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.root_7847764 small_7847763_right_root coord1 false (-6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.cover_7847764
  · exact small_7847763_right_covered
#print axioms cover_7847763

def root_7847757 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7847757_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-16379648)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7847757_left_fuel : Nat := 1
def small_7847757_left_count : Nat := 1
def small_7847757_left_encoded : String := "00000003"
theorem small_7847757_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7847757_left_root small_7847757_left_fuel small_7847757_left_count small_7847757_left_encoded = true := by
  decide +kernel
theorem small_7847757_left_covered : CoveredBy scale carrier boxes small_7847757_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7847757_left_root small_7847757_left_fuel small_7847757_left_count small_7847757_left_encoded small_7847757_left_checked

theorem cover_7847757 : CoveredBy scale carrier boxes root_7847757 := by
  apply coveredBy_split_literal root_7847757 small_7847757_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.root_7847763 coord3 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_7847757_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.cover_7847763
#print axioms cover_7847757

def root_7844543 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7844543 : CoveredBy scale carrier boxes root_7844543 := by
  apply coveredBy_split_literal root_7844543 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.root_7844544 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.root_7847757 coord3 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.cover_7844544
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.cover_7847757
#print axioms cover_7844543

def root_7844537 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7844537_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7844537_left_fuel : Nat := 1
def small_7844537_left_count : Nat := 1
def small_7844537_left_encoded : String := "00000000"
theorem small_7844537_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7844537_left_root small_7844537_left_fuel small_7844537_left_count small_7844537_left_encoded = true := by
  decide +kernel
theorem small_7844537_left_covered : CoveredBy scale carrier boxes small_7844537_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7844537_left_root small_7844537_left_fuel small_7844537_left_count small_7844537_left_encoded small_7844537_left_checked

theorem cover_7844537 : CoveredBy scale carrier boxes root_7844537 := by
  apply coveredBy_split_literal root_7844537 small_7844537_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.root_7844543 coord0 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_7844537_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188.cover_7844543
#print axioms cover_7844537

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0188
