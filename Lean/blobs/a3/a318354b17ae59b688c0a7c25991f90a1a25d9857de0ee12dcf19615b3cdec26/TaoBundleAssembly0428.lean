import TaoBundleAssembly0427
import TaoBundleChunkBatch0583
import TaoBundleChunkBatch0584
import TaoBundleChunkBatch0585
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0428
def root_6186800 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6186800_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6186800_left_fuel : Nat := 27
def small_6186800_left_count : Nat := 389
def small_6186800_left_encoded : String := "1151E8FB0A0001061151E8FD0A0000FE115224FF0000000408A912F712073D0008A91303120700F808A912FF00000009120700FE05000104135D44FB000000090000000200000009000000040000000100000009000000001207010000000000000000091151E8FF000000090000000400000003115224FD000000030A0000FE115224FF0000000408A912F712073D0008A91303120700F808A912FD12073D0608A912FF12073CFE0000000405000104135D44FB0CFD9BF70F350D0004548A03138670F80CFD9BFD000000050F34D106000000030CFD9BFF000000050F34D0FE0000000800000004000000011386ACF80000000100000009000000000F34D100000000000000000900000002135D80FB000000020CFD9BF70F350D0004548A03138670F80CFD9BFD000000090F34D106000000030CFD9BFF000000050000000900000001000000090000000000000009120700FE05000104135D44FB0CFD9BF70F350D0004548A03138670F80CFD9BFD0F350D06045489FF1386ACFE000000040C9A87000F8750F70C9A870600000009000000080000000000000008000000080000000300000008000000011386ACF8000000010CFD9BFD0F350D06045489FF00000009000000080000000300000008000000000F34D100000000000000000800000002135D80FB000000020CFD9BF70F350D0004548A03138670F80CFD9BFD0F350D06045489FF00000009138670FE0C9A87000F8750F70C9A87060000000900000008000000000000000800000004000000030F34D1060000000300000008000000011386ACF8000000010CFD9BFD0F350D0600000009000000030F34D1060000000300000008000000000F34D10000000000000000080000000400000003120701060000000308A912FF12073CFE0000000405000104135D44FB0CFD9BF70F350D0004548A03138670F8045489FD1386AD060CFD9BFF0000000A000000080000000300000008000000011386ACF800000001045489FD1386AD060CFD9BFF0F350CFE0000000400000009000000080000000300000008000000000F34D100000000000000000800000002135D80FB000000020CFD9BF70F350D0004548A03138670F8045489FD1386AD060CFD9BFF0000000A0F34D0FE000000080000000400000003138671060000000300000008000000011386ACF800000001045489FD1386AD060CFD9BFF000000090000000900000003138671060000000300000008000000000F34D1000000000000000008120700FE00000008000000040000000112073CF80000000108A912FD12073D0608A912FF12073CFE0000000405000104135D44FB0CFD9BF70F350D000000000900000000000000090000000200000009120700FE05000104135D44FB0CFD9BF70F350D000CFD9C030F34D0F80CFD9BFD0000000900000008000000010F350CF80000000100000009000000000F34D100000000000000000800000002135D80FB000000020CFD9BF70F350D000CFD9C030F34D0F800000009000000010000000900000000000000090000000400000003120701060000000308A912FF12073CFE0000000405000104135D44FB0CFD9BF70F350D000CFD9C030F34D0F8045489FD1386AD060CFD9BFF00000009000000080000000300000008000000010F350CF800000001045489FD00000009138671060000000300000008000000000F34D100000000000000000800000002135D80FB000000020CFD9BF70F350D000CFD9C030F34D0F8045489FD000000091386710600000003000000080000000100000009000000000F34D1000000000000000009120700FE000000080000000400000000120701000000000008A91303120700F808A912FD12073D0608A912FF00000009120700FE0000000800000004000000031207010600000003000000080000000112073CF80000000108A912FD12073D0600000009000000031207010600000003000000081151E8FF08A912F712073D0008A91303120700F808A912FD00000009120701060000000305000104135D44FB050000FE135D80FF000000040CFD9BF70F350D00000000090000000000000009000000090000000200000009000000010000000900000000120701000000000008A9130300000009000000090000000400000002"
theorem small_6186800_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6186800_left_root small_6186800_left_fuel small_6186800_left_count small_6186800_left_encoded = true := by
  decide +kernel
theorem small_6186800_left_covered : CoveredBy scale carrier boxes small_6186800_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6186800_left_root small_6186800_left_fuel small_6186800_left_count small_6186800_left_encoded small_6186800_left_checked

theorem cover_6186800 : CoveredBy scale carrier boxes root_6186800 := by
  apply coveredBy_split_literal root_6186800 small_6186800_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0427.root_6187642 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_6186800_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0427.cover_6187642
#print axioms cover_6186800

def root_6186795 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6186795_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6186795_right_fuel : Nat := 1
def small_6186795_right_count : Nat := 1
def small_6186795_right_encoded : String := "00000001"
theorem small_6186795_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6186795_right_root small_6186795_right_fuel small_6186795_right_count small_6186795_right_encoded = true := by
  decide +kernel
theorem small_6186795_right_covered : CoveredBy scale carrier boxes small_6186795_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6186795_right_root small_6186795_right_fuel small_6186795_right_count small_6186795_right_encoded small_6186795_right_checked

theorem cover_6186795 : CoveredBy scale carrier boxes root_6186795 := by
  apply coveredBy_split_literal root_6186795 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0428.root_6186800 small_6186795_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0428.cover_6186800
  · exact small_6186795_right_covered
#print axioms cover_6186795

def root_6186794 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6186794_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6186794_right_fuel : Nat := 22
def small_6186794_right_count : Nat := 227
def small_6186794_right_encoded : String := "1151E903000000010A0001041151E8FB0A0001061151E8FD0A0000FE115224FF0000000408A912F700000009120701000000000008A912FF00000006000000091151E8FF08A912F7000000091207010000000000000000060000000400000003115224FD000000030A0000FE115224FF0000000408A912F712073D0008A912FD12073D0608A912FF12073CFE0000000400000009120700FE050000F800000009135D450300000001000000090000000400000003120701060000000308A912FF12073CFE00000004050000F8135D810305000104135D44FB0CFD9BF70F350D00045489FD000000071386710600000003000000070000000000000009000000020000000900000001135D45030000000105000104135D44FB0CFD9BF70F350D0000000007000000000F34D10000000000000000090000000200000007120700FE050000F8000000080000000A0000000400000000120701000000000008A912FD12073D0608A912FF0000000A000000090000000312070106000000030000000A1151E8FF08A912F712073D0008A912FD0000000912070106000000030000000900000000120701000000000008A912FD12073D06050000F8000000090000000A000000031207010600000003050000F800000009135D4503000000010500010400000009000000090000000400000002115224FB000000020A0001061151E8FD0A0000FE115224FF0000000408A912F712073D0008A912FB0000000912070104000000020000000900000000120701000000000008A912FB12073D040000000900000002000000061151E8FF08A912F712073D0008A912FB12073D04050000F800000009000000080000000200000006000000001207010000000000000000060000000400000003115224FD000000030A0000FE115224FF0000000408A912F712073D0008A912FB12073D0408A912FD12073D060000000900000003120701060000000308A912FF12073CFE00000004050000F80000000900000009120700FE000000070000000400000002120701040000000208A912FD12073D0608A912FF00000009120700FE00000007000000040000000312070106000000030000000A00000000120701000000000008A912FB12073D0408A912FD0000000912070106000000030000000900000002000000091151E8FF08A912F700000009120701000000000008A912FB12073D0408A912FD00000009120701060000000300000009000000020000000900000004"
theorem small_6186794_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6186794_right_root small_6186794_right_fuel small_6186794_right_count small_6186794_right_encoded = true := by
  decide +kernel
theorem small_6186794_right_covered : CoveredBy scale carrier boxes small_6186794_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6186794_right_root small_6186794_right_fuel small_6186794_right_count small_6186794_right_encoded small_6186794_right_checked

theorem cover_6186794 : CoveredBy scale carrier boxes root_6186794 := by
  apply coveredBy_split_literal root_6186794 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0428.root_6186795 small_6186794_right_root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0428.cover_6186795
  · exact small_6186794_right_covered
#print axioms cover_6186794

def root_6186788 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6186788_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6186788_left_fuel : Nat := 1
def small_6186788_left_count : Nat := 1
def small_6186788_left_encoded : String := "00000000"
theorem small_6186788_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6186788_left_root small_6186788_left_fuel small_6186788_left_count small_6186788_left_encoded = true := by
  decide +kernel
theorem small_6186788_left_covered : CoveredBy scale carrier boxes small_6186788_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6186788_left_root small_6186788_left_fuel small_6186788_left_count small_6186788_left_encoded small_6186788_left_checked

theorem cover_6186788 : CoveredBy scale carrier boxes root_6186788 := by
  apply coveredBy_split_literal root_6186788 small_6186788_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0428.root_6186794 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6186788_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0428.cover_6186794
#print axioms cover_6186788

def root_6183456 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6183456 : CoveredBy scale carrier boxes root_6183456 := by
  apply coveredBy_split_literal root_6183456 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0427.root_6183457 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0428.root_6186788 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0427.cover_6183457
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0428.cover_6186788
#print axioms cover_6183456

def root_6192577 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6192577 : CoveredBy scale carrier boxes root_6192577 := by
  apply coveredBy_split_literal root_6192577 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2330.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2331.root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2330.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2331.covered
#print axioms cover_6192577

def root_6192571 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6192571_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6192571_left_fuel : Nat := 1
def small_6192571_left_count : Nat := 1
def small_6192571_left_encoded : String := "00000002"
theorem small_6192571_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6192571_left_root small_6192571_left_fuel small_6192571_left_count small_6192571_left_encoded = true := by
  decide +kernel
theorem small_6192571_left_covered : CoveredBy scale carrier boxes small_6192571_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6192571_left_root small_6192571_left_fuel small_6192571_left_count small_6192571_left_encoded small_6192571_left_checked

theorem cover_6192571 : CoveredBy scale carrier boxes root_6192571 := by
  apply coveredBy_split_literal root_6192571 small_6192571_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0428.root_6192577 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6192571_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0428.cover_6192577
#print axioms cover_6192571

def root_6191435 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6191435 : CoveredBy scale carrier boxes root_6191435 := by
  apply coveredBy_split_literal root_6191435 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2329.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0428.root_6192571 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2329.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0428.cover_6192571
#print axioms cover_6191435

def root_6191430 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6191430_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6191430_right_fuel : Nat := 1
def small_6191430_right_count : Nat := 1
def small_6191430_right_encoded : String := "00000001"
theorem small_6191430_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6191430_right_root small_6191430_right_fuel small_6191430_right_count small_6191430_right_encoded = true := by
  decide +kernel
theorem small_6191430_right_covered : CoveredBy scale carrier boxes small_6191430_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6191430_right_root small_6191430_right_fuel small_6191430_right_count small_6191430_right_encoded small_6191430_right_checked

theorem cover_6191430 : CoveredBy scale carrier boxes root_6191430 := by
  apply coveredBy_split_literal root_6191430 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0428.root_6191435 small_6191430_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0428.cover_6191435
  · exact small_6191430_right_covered
#print axioms cover_6191430

def root_6196601 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6196601 : CoveredBy scale carrier boxes root_6196601 := by
  apply coveredBy_split_literal root_6196601 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2332.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2333.root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2332.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2333.covered
#print axioms cover_6196601

def root_6196595 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6196595_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6196595_left_fuel : Nat := 1
def small_6196595_left_count : Nat := 1
def small_6196595_left_encoded : String := "00000002"
theorem small_6196595_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6196595_left_root small_6196595_left_fuel small_6196595_left_count small_6196595_left_encoded = true := by
  decide +kernel
theorem small_6196595_left_covered : CoveredBy scale carrier boxes small_6196595_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6196595_left_root small_6196595_left_fuel small_6196595_left_count small_6196595_left_encoded small_6196595_left_checked

theorem cover_6196595 : CoveredBy scale carrier boxes root_6196595 := by
  apply coveredBy_split_literal root_6196595 small_6196595_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0428.root_6196601 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6196595_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0428.cover_6196601
#print axioms cover_6196595

def root_6196269 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6196269_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6196269_left_fuel : Nat := 19
def small_6196269_left_count : Nat := 157
def small_6196269_left_encoded : String := "1151E8FB0A0001061151E8FD0A0000FE1152250908A913090000000912073CFE000000040500010000000005135D80F700000000050000F80000000500000009000000041151E9090000000405000100135D44F7050000F800000005135D4503000000010500010400000005135D80FB0000000205000106000000050000000600000000135D80F700000000050000F8135D81030500010400000005135D80FB000000020500010600000005135D80FD00000003050000FE000000050000000600000001135D4503000000010000000900000003115224FD000000030A0000FE1152250908A912FD12073D0608A91309120700FE000000070000000412073CFE0000000405000100135D44F7050000F8135D810305000104000000050000000700000001135D4503000000010000000700000000135D80F700000000050000F8135D81030500010400000005135D80FB000000020CFD9BFD0F350D060CFD9C090000000700000005000000030F34D106000000030CFD9C09000000070000000500000001135D45030000000105000104135D44FB0CFD9BFD000000070F34D1060000000300000007000000020000000900000003120701060000000308A91309120700FE000000070000000412073CFE0000000405000100135D44F7050000F8000000050000000600000000135D80F700000000050000F800000008135D4503000000010500010400000006135D80FB00000002045489FD0000000600000006000000041151E9090000000408A912FD12073D060500010000000006135D80F700000000050000F800000006135D4503000000010500010400000006000000060000000312070106000000030000000600000002"
theorem small_6196269_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6196269_left_root small_6196269_left_fuel small_6196269_left_count small_6196269_left_encoded = true := by
  decide +kernel
theorem small_6196269_left_covered : CoveredBy scale carrier boxes small_6196269_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6196269_left_root small_6196269_left_fuel small_6196269_left_count small_6196269_left_encoded small_6196269_left_checked

theorem cover_6196269 : CoveredBy scale carrier boxes root_6196269 := by
  apply coveredBy_split_literal root_6196269 small_6196269_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0428.root_6196595 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_6196269_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0428.cover_6196595
#print axioms cover_6196269

def root_6196263 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6196263_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6196263_left_fuel : Nat := 1
def small_6196263_left_count : Nat := 1
def small_6196263_left_encoded : String := "00000001"
theorem small_6196263_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6196263_left_root small_6196263_left_fuel small_6196263_left_count small_6196263_left_encoded = true := by
  decide +kernel
theorem small_6196263_left_covered : CoveredBy scale carrier boxes small_6196263_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6196263_left_root small_6196263_left_fuel small_6196263_left_count small_6196263_left_encoded small_6196263_left_checked

theorem cover_6196263 : CoveredBy scale carrier boxes root_6196263 := by
  apply coveredBy_split_literal root_6196263 small_6196263_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0428.root_6196269 coord1 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_6196263_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0428.cover_6196269
#print axioms cover_6196263

def root_6191429 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6191429 : CoveredBy scale carrier boxes root_6191429 := by
  apply coveredBy_split_literal root_6191429 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0428.root_6191430 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0428.root_6196263 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0428.cover_6191430
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0428.cover_6196263
#print axioms cover_6191429

def root_6191424 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6191424_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6191424_right_fuel : Nat := 1
def small_6191424_right_count : Nat := 1
def small_6191424_right_encoded : String := "00000000"
theorem small_6191424_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6191424_right_root small_6191424_right_fuel small_6191424_right_count small_6191424_right_encoded = true := by
  decide +kernel
theorem small_6191424_right_covered : CoveredBy scale carrier boxes small_6191424_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6191424_right_root small_6191424_right_fuel small_6191424_right_count small_6191424_right_encoded small_6191424_right_checked

theorem cover_6191424 : CoveredBy scale carrier boxes root_6191424 := by
  apply coveredBy_split_literal root_6191424 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0428.root_6191429 small_6191424_right_root coord0 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0428.cover_6191429
  · exact small_6191424_right_covered
#print axioms cover_6191424

def root_6207271 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6207271 : CoveredBy scale carrier boxes root_6207271 := by
  apply coveredBy_split_literal root_6207271 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2337.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2338.root coord3 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2337.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2338.covered
#print axioms cover_6207271

def root_6207265 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6207265_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6207265_left_fuel : Nat := 1
def small_6207265_left_count : Nat := 1
def small_6207265_left_encoded : String := "00000002"
theorem small_6207265_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6207265_left_root small_6207265_left_fuel small_6207265_left_count small_6207265_left_encoded = true := by
  decide +kernel
theorem small_6207265_left_covered : CoveredBy scale carrier boxes small_6207265_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6207265_left_root small_6207265_left_fuel small_6207265_left_count small_6207265_left_encoded small_6207265_left_checked

theorem cover_6207265 : CoveredBy scale carrier boxes root_6207265 := by
  apply coveredBy_split_literal root_6207265 small_6207265_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0428.root_6207271 coord2 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_6207265_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0428.cover_6207271
#print axioms cover_6207265

def root_6206875 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6206875_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6206875_left_fuel : Nat := 22
def small_6206875_left_count : Nat := 185
def small_6206875_left_encoded : String := "1386AD040CFD9BFD0F350D060CFD9C090F34D0FE0C9A8700000000050F878CF70000000000000005000000040F350CFE000000040C9A87000F8750F70C9A86F8000000050F875103000000010C9A8706000000050F878CFD000000030C9A86FE000000050F8751090000000400000005000000000F878CF7000000000C9A86F80F878D030C9A8706000000050F878CFD000000030C9A86FE000000050F8751090000000400000005000000010F875103000000010C9A87060F8750FD0C9A86FE000000050F8751090000000400000005000000030F878CFD000000030C9A86FE000000050F87510900000004067ECE7B12EA95040DE7CA00000000050E6014F7000000000B4D43F800000005000000090000000212EA5904000000020DE7CA000E5FD8F70B4D43F800000005108011030000000100000005000000000E6014F7000000000B4D43F80000000510801103000000010DE7CA06000000050E6014FD0000000300000008000000030F34D106000000030CFD9C090F34D0FE0C9A8700000000050F878CF7000000000C9A86F8000000050F8751030000000100000007000000040F350CFE000000040C9A87000F8750F70C9A86F80F878D030C9A86FE000000050F8751090000000400000005000000010F875103000000010C9A86FE000000050F87510900000004067ECE7B0000000612EA5904000000020AD3577D0000000710D101060000000300000006000000000F878CF7000000000C9A86F80F878D030C9A86FE000000050F87510900000004067ECE7B0000000612EA5904000000020AD3577D0000000600000006000000010F875103000000010C9A86FE0F878D09067ECE7B0000000812EA5904000000020AD3577D0000000700000008000000040F87510900000004067ECE7B0000000812EA5904000000020AD3577D10D13D060DE7CA000E5FD8F70B4D43F80000000610801103000000010B4D43FE000000070000000600000000000000080000000310D10106000000030000000600000002"
theorem small_6206875_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6206875_left_root small_6206875_left_fuel small_6206875_left_count small_6206875_left_encoded = true := by
  decide +kernel
theorem small_6206875_left_covered : CoveredBy scale carrier boxes small_6206875_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6206875_left_root small_6206875_left_fuel small_6206875_left_count small_6206875_left_encoded small_6206875_left_checked

theorem cover_6206875 : CoveredBy scale carrier boxes root_6206875 := by
  apply coveredBy_split_literal root_6206875 small_6206875_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0428.root_6207265 coord2 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact small_6206875_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0428.cover_6207265
#print axioms cover_6206875

def root_6206869 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6206869_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6206869_left_fuel : Nat := 1
def small_6206869_left_count : Nat := 1
def small_6206869_left_encoded : String := "00000001"
theorem small_6206869_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6206869_left_root small_6206869_left_fuel small_6206869_left_count small_6206869_left_encoded = true := by
  decide +kernel
theorem small_6206869_left_covered : CoveredBy scale carrier boxes small_6206869_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6206869_left_root small_6206869_left_fuel small_6206869_left_count small_6206869_left_encoded small_6206869_left_checked

theorem cover_6206869 : CoveredBy scale carrier boxes root_6206869 := by
  apply coveredBy_split_literal root_6206869 small_6206869_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0428.root_6206875 coord1 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_6206869_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0428.cover_6206875
#print axioms cover_6206869

def root_6206735 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6206735_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6206735_left_fuel : Nat := 12
def small_6206735_left_count : Nat := 61
def small_6206735_left_encoded : String := "0F34D0F8045489FB1386AD040CFD9BFD0F350D060CFD9C090F34D0FE00000005000000040F350CFE000000040C9A8700000000050F878CF70000000000000005000000030F34D106000000030CFD9C090F34D0FE00000005000000040F350CFE000000040C9A8700000000050F878CF7000000000C9A86FE00000005000000060000000213867104000000020CFD9BFD0F350D060CFD9C090F34D0FE000000050000000400000005000000030F34D106000000030CFD9C090F34D0FE00000005000000040F350CFE000000040C9A8700000000050F878CF7000000000C9A86FE000000050F875109000000040000000500000001"
theorem small_6206735_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6206735_left_root small_6206735_left_fuel small_6206735_left_count small_6206735_left_encoded = true := by
  decide +kernel
theorem small_6206735_left_covered : CoveredBy scale carrier boxes small_6206735_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6206735_left_root small_6206735_left_fuel small_6206735_left_count small_6206735_left_encoded small_6206735_left_checked

theorem cover_6206735 : CoveredBy scale carrier boxes root_6206735 := by
  apply coveredBy_split_literal root_6206735 small_6206735_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0428.root_6206869 coord1 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_6206735_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0428.cover_6206869
#print axioms cover_6206735

def root_6206730 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6206730_right_root : ZRayBox := fun j => (#[⟨⟨(12756736), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6206730_right_fuel : Nat := 1
def small_6206730_right_count : Nat := 1
def small_6206730_right_encoded : String := "00000000"
theorem small_6206730_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6206730_right_root small_6206730_right_fuel small_6206730_right_count small_6206730_right_encoded = true := by
  decide +kernel
theorem small_6206730_right_covered : CoveredBy scale carrier boxes small_6206730_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6206730_right_root small_6206730_right_fuel small_6206730_right_count small_6206730_right_encoded small_6206730_right_checked

theorem cover_6206730 : CoveredBy scale carrier boxes root_6206730 := by
  apply coveredBy_split_literal root_6206730 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0428.root_6206735 small_6206730_right_root coord0 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0428.cover_6206735
  · exact small_6206730_right_covered
#print axioms cover_6206730

def root_6206729 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6206729 : CoveredBy scale carrier boxes root_6206729 := by
  apply coveredBy_split_literal root_6206729 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0428.root_6206730 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2339.root coord0 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0428.cover_6206730
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2339.covered
#print axioms cover_6206729

def root_6206723 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6206723_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6206723_left_fuel : Nat := 1
def small_6206723_left_count : Nat := 1
def small_6206723_left_encoded : String := "00000004"
theorem small_6206723_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6206723_left_root small_6206723_left_fuel small_6206723_left_count small_6206723_left_encoded = true := by
  decide +kernel
theorem small_6206723_left_covered : CoveredBy scale carrier boxes small_6206723_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6206723_left_root small_6206723_left_fuel small_6206723_left_count small_6206723_left_encoded small_6206723_left_checked

theorem cover_6206723 : CoveredBy scale carrier boxes root_6206723 := by
  apply coveredBy_split_literal root_6206723 small_6206723_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0428.root_6206729 coord4 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_6206723_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0428.cover_6206729
#print axioms cover_6206723

def root_6206505 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6206505_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6206505_left_fuel : Nat := 14
def small_6206505_left_count : Nat := 101
def small_6206505_left_encoded : String := "120700FE0CFD9BF70F350D000CFD9C030F34D0F8045489FB1386AD040CFD9BFD0F350D0604548A09138670FE000000070000000400000005000000030F34D1060000000304548A0900000007000000050000000213867104000000020CFD9BFD0F350D06000000050000000300000005000000010F350CF800000001045489FB1386AD040CFD9BFD000000070F34D10600000003000000070000000213867104000000020CFD9BFD000000070F34D1060000000300000007000000000F34D100000000000CFD9C030F34D0F8045489FB1386AD040CFD9BFD0F350D0604548A090000000900000005000000030F34D10600000003000000080000000213867104000000020CFD9BFD0F350D06000000050000000300000005000000010F350CF800000001045489FB1386AD040CFD9BFD0F350D060000000900000003000000090000000213867104000000020CFD9BFD0F350D0604548A090000000900000005000000030F34D1060000000304548A09000000071386ACFE000000040C9A86F8000000050F875103000000010000000700000004"
theorem small_6206505_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6206505_left_root small_6206505_left_fuel small_6206505_left_count small_6206505_left_encoded = true := by
  decide +kernel
theorem small_6206505_left_covered : CoveredBy scale carrier boxes small_6206505_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6206505_left_root small_6206505_left_fuel small_6206505_left_count small_6206505_left_encoded small_6206505_left_checked

theorem cover_6206505 : CoveredBy scale carrier boxes root_6206505 := by
  apply coveredBy_split_literal root_6206505 small_6206505_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0428.root_6206723 coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_6206505_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0428.cover_6206723
#print axioms cover_6206505

def root_6206500 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6206500_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6206500_right_fuel : Nat := 1
def small_6206500_right_count : Nat := 1
def small_6206500_right_encoded : String := "00000003"
theorem small_6206500_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6206500_right_root small_6206500_right_fuel small_6206500_right_count small_6206500_right_encoded = true := by
  decide +kernel
theorem small_6206500_right_covered : CoveredBy scale carrier boxes small_6206500_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6206500_right_root small_6206500_right_fuel small_6206500_right_count small_6206500_right_encoded small_6206500_right_checked

theorem cover_6206500 : CoveredBy scale carrier boxes root_6206500 := by
  apply coveredBy_split_literal root_6206500 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0428.root_6206505 small_6206500_right_root coord3 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0428.cover_6206505
  · exact small_6206500_right_covered
#print axioms cover_6206500

def root_6206499 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6206499_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6206499_right_fuel : Nat := 27
def small_6206499_right_count : Nat := 299
def small_6206499_right_encoded : String := "120701060000000308A91309120700FE0CFD9BF70F350D000CFD9C030F34D0F8045489FB1386AD04000000050000000200000005000000010F350CF800000001045489FB00000007138671040000000200000007000000000F34D100000000000CFD9C030F34D0F800000008000000010F350CF800000001045489FB000000080000000A0000000412073CFE000000040CFD9BF70F350D000CFD9C030F34D0F8045489FB1386AD04045489FD1386AD060CFD9C090F34D0FE00000005000000040F350CFE000000040000000600000003138671060000000300000008000000021386710400000002045489FD1386AD060CFD9C090F34D0FE00000005000000040F350CFE000000040C9A8700000000050F878CF7000000000C9A86FE00000005000000060000000313867106000000030CFD9C090F34D0FE00000005000000040F350CFE0000000400000006000000010F350CF800000001045489FB1386AD04045489FD1386AD060CFD9C090F34D0FE0C9A87000000000500000008000000040F350CFE000000040C9A87000F8750F70C9A86F80F878D0300000006000000010F875103000000010C9A86FE0000000700000006000000000F878CF700000000000000080000000313867106000000030CFD9C090F34D0FE000000080000000400000008000000021386710400000002045489FD1386AD060CFD9C090F34D0FE0C9A8700000000050F878CF7000000000C9A86F8000000050000000A000000040F350CFE000000040C9A87000F8750F70C9A86F80F878D030C9A86FE000000050F8751090000000400000006000000010F875103000000010C9A86FE000000070F87510900000004022A457B0000000613E1C50400000002067ECE7D12EA95060B4D44000000000710804CF7000000000B4D43F800000006000000060000000312EA59060000000300000006000000000F878CF7000000000C9A86F80F878D030C9A86FE000000080F87510900000004022A457B0000000613E1C50400000002067ECE7D0000000600000006000000010F875103000000010C9A86FE0F878D09022A457B0000000813E1C50400000002067ECE7D0000000A00000008000000040F87510900000004022A457B0000000813E1C50400000002067ECE7D12EA95060DE7CA000E5FD8F70B4D43F8000000060000000A000000000E6014F700000000000000080000000312EA590600000003000000080000000313867106000000030CFD9C090F34D0FE0C9A87000000000700000008000000040F350CFE000000040C9A87000F8750F70C9A86F80F878D030C9A86FE0000000800000006000000010F875103000000010C9A86FE0F878D0900000007000000040F8751090000000400000006000000000F878CF7000000000C9A86F8000000080F8751030000000100000008000000000F34D100000000000CFD9C030F34D0F8045489FB000000081386710400000002045489FD1386AD060CFD9C090F34D0FE0000000500000004000000080000000300000008000000010F350CF800000001045489FB000000081386710400000002045489FD1386AD060CFD9C090F34D0FE00000008000000040F350CFE000000040C9A86F8000000080F875103000000010000000800000003138671060000000300000008"
theorem small_6206499_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6206499_right_root small_6206499_right_fuel small_6206499_right_count small_6206499_right_encoded = true := by
  decide +kernel
theorem small_6206499_right_covered : CoveredBy scale carrier boxes small_6206499_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6206499_right_root small_6206499_right_fuel small_6206499_right_count small_6206499_right_encoded small_6206499_right_checked

theorem cover_6206499 : CoveredBy scale carrier boxes root_6206499 := by
  apply coveredBy_split_literal root_6206499 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0428.root_6206500 small_6206499_right_root coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0428.cover_6206500
  · exact small_6206499_right_covered
#print axioms cover_6206499

def root_6206493 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6206493_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6206493_left_fuel : Nat := 1
def small_6206493_left_count : Nat := 1
def small_6206493_left_encoded : String := "00000002"
theorem small_6206493_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6206493_left_root small_6206493_left_fuel small_6206493_left_count small_6206493_left_encoded = true := by
  decide +kernel
theorem small_6206493_left_covered : CoveredBy scale carrier boxes small_6206493_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6206493_left_root small_6206493_left_fuel small_6206493_left_count small_6206493_left_encoded small_6206493_left_checked

theorem cover_6206493 : CoveredBy scale carrier boxes root_6206493 := by
  apply coveredBy_split_literal root_6206493 small_6206493_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0428.root_6206499 coord2 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_6206493_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0428.cover_6206499
#print axioms cover_6206493

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0428
