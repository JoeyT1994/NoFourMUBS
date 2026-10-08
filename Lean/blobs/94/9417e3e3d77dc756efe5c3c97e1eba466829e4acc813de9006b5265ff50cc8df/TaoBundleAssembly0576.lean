import TaoBundleAssembly0575
import TaoBundleChunkBatch0785
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0576
def root_8379971 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8379971_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8379971_left_fuel : Nat := 31
def small_8379971_left_count : Nat := 427
def small_8379971_left_encoded : String := "120701000000000008A912F912073CF80000000108A91305120701040000000208A912FF12073D08050000FC135D80FD0000000304548A01000000070000000700000007000000041207010800000004050000FC135D80FD0000000304548A011386710000000000000000051386AD000CFD9BF90F350CF8000000010000000500000007000000000000000512073D0408A912FF12073D08050000FC135D80FD0000000304548A0113867100000000000CFD9BF90F350CF8000000010CFD9C050F34D10400000002000000090F350D0400000006000000020F34D0F800000006000000011386AD000CFD9BF90F350CF8000000010CFD9C050F34D104000000020CFD9BFF000000090F34D108000000040C9A86F80F878CF90000000100000007000000050F350D040CFD9BFF000000060F34D1080000000400000006000000020F34D0F8000000060000000100000000135D44FD04548A0113867100000000000CFD9BF90F350CF8000000010CFD9C050F34D10400000002000000050F350D0400000006000000020F34D0F800000006000000011386AD000CFD9BF90F350CF8000000010CFD9C050F34D10400000002000000070F350D0400000006000000020F34D0F800000006000000010000000000000003000000041207010800000004050000FC135D80FD0000000304548A0113867100000000000CFD9BF90F350CF8000000010CFD9C050F34D10400000002000000050F350D04045489FF1386AD080C9A86F80F878CF900000001000000060F8750F90C9A87040000000900000005000000010000000413867108000000040C9A86F80F878CF9000000010C9A8704000000080F878D0500000008000000020F8750F90C9A87040F87510500000002078000FC128A7CFD00000003022A45810000000800000008000000050000000500000001000000020F34D0F80CFD9C050F34D10400000002045489FF1386AD08078000FC000000070000000700000004000000080F350D04045489FF000000060000000800000002000000011386AD000CFD9BF90F350CF8000000010CFD9C050F34D10400000002045489FF1386AD080C9A86F80F878CF900000001078000FC128A7CFD00000003067ECE81000000070000000700000005000000050000000413867108000000040C9A86F80F878CF900000001078000FC128A7CFD00000003067ECE8112EA5900000000000000000512EA95000AD357850000000710D13D0400000007000000020000000000000005000000050F350D04045489FF1386AD080C9A86F80F878CF900000001000000060F8750F90C9A87040F87510500000002000000060F878D05078000FC128A7CFD00000003000000090000000500000002000000010000000413867108000000040C9A86F80F878CF9000000010C9A87040F87510500000002000000060F878D05078000FC128A7CFD00000003067ECE810000000812EA9500022A457F00000006000000080000000000000008000000020F8750F90C9A87040F87510500000002078000FC128A7CFD00000003067ECE8112EA590000000000022A457F000000060000000812EA9500022A457F0000000613E1C508000000040000000800000000128A40FD067ECE810000000800000006000000030F878D05078000FC128A7CFD00000003067ECE8112EA5900000000000000000512EA9500022A457F13E201080B4D43F810804CF9000000010DE7CA040000000600000005000000050000000413E1C508000000040B4D43F8000000080000000500000000000000050000000200000001000000020F34D0F80CFD9C050F34D10400000002045489FF1386AD0800000007000000041386710800000004000000080F350D04045489FF00000006138671080000000400000008000000020000000100000000135D44FD04548A0113867100000000000CFD9BF90F350CF8000000010CFD9C05000000050F350D04045489FF0000000500000008000000020F34D0F800000008000000011386AD000CFD9BF90F350CF8000000010CFD9C050F34D10400000002000000050F350D04045489FF1386AD080C9A86F800000006000000050000000413867108000000040C9A86F80000000800000005000000020F34D0F80CFD9C05000000080F350D04000000060000000200000001000000000000000300000002120700F808A91305120701040000000208A912FF12073D0800000007000000040000000712073D0408A912FF000000061207010800000004050000FC135D80FD0000000304548A011386710000000000000000081386AD00045489F91386ACF8000000010CFD9C0500000008000000060000000600000000000000080000000200000001"
theorem small_8379971_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8379971_left_root small_8379971_left_fuel small_8379971_left_count small_8379971_left_encoded = true := by
  decide +kernel
theorem small_8379971_left_covered : CoveredBy scale carrier boxes small_8379971_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8379971_left_root small_8379971_left_fuel small_8379971_left_count small_8379971_left_encoded small_8379971_left_checked

theorem cover_8379971 : CoveredBy scale carrier boxes root_8379971 := by
  apply coveredBy_split_literal root_8379971 small_8379971_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0575.root_8380891 coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_8379971_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0575.cover_8380891
#print axioms cover_8379971

def root_8379965 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8379965_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8379965_left_fuel : Nat := 1
def small_8379965_left_count : Nat := 1
def small_8379965_left_encoded : String := "00000004"
theorem small_8379965_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8379965_left_root small_8379965_left_fuel small_8379965_left_count small_8379965_left_encoded = true := by
  decide +kernel
theorem small_8379965_left_covered : CoveredBy scale carrier boxes small_8379965_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8379965_left_root small_8379965_left_fuel small_8379965_left_count small_8379965_left_encoded small_8379965_left_checked

theorem cover_8379965 : CoveredBy scale carrier boxes root_8379965 := by
  apply coveredBy_split_literal root_8379965 small_8379965_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0576.root_8379971 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_8379965_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0576.cover_8379971
#print axioms cover_8379965

def root_8379899 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8379899_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8379899_left_fuel : Nat := 13
def small_8379899_left_count : Nat := 33
def small_8379899_left_encoded : String := "1151E8FF08A91301120701000000000008A912F912073CF80000000108A9130500000007000000060000000612073D0008A912F912073CF80000000108A913050000000712073D04050000FC135D80FD000000030500010800000007135D80FF000000040CFD9C0100000007000000070000000700000002000000070000000000000004"
theorem small_8379899_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8379899_left_root small_8379899_left_fuel small_8379899_left_count small_8379899_left_encoded = true := by
  decide +kernel
theorem small_8379899_left_covered : CoveredBy scale carrier boxes small_8379899_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8379899_left_root small_8379899_left_fuel small_8379899_left_count small_8379899_left_encoded small_8379899_left_checked

theorem cover_8379899 : CoveredBy scale carrier boxes root_8379899 := by
  apply coveredBy_split_literal root_8379899 small_8379899_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0576.root_8379965 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_8379899_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0576.cover_8379965
#print axioms cover_8379899

def root_8379894 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8379894_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8379894_right_fuel : Nat := 1
def small_8379894_right_count : Nat := 1
def small_8379894_right_encoded : String := "00000003"
theorem small_8379894_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8379894_right_root small_8379894_right_fuel small_8379894_right_count small_8379894_right_encoded = true := by
  decide +kernel
theorem small_8379894_right_covered : CoveredBy scale carrier boxes small_8379894_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8379894_right_root small_8379894_right_fuel small_8379894_right_count small_8379894_right_encoded small_8379894_right_checked

theorem cover_8379894 : CoveredBy scale carrier boxes root_8379894 := by
  apply coveredBy_split_literal root_8379894 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0576.root_8379899 small_8379894_right_root coord3 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0576.cover_8379899
  · exact small_8379894_right_covered
#print axioms cover_8379894

def root_8362022 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8362022 : CoveredBy scale carrier boxes root_8362022 := by
  apply coveredBy_split_literal root_8362022 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0575.root_8362023 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0576.root_8379894 coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0575.cover_8362023
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0576.cover_8379894
#print axioms cover_8362022

def root_8362017 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8362017_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8362017_right_fuel : Nat := 1
def small_8362017_right_count : Nat := 1
def small_8362017_right_encoded : String := "00000002"
theorem small_8362017_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8362017_right_root small_8362017_right_fuel small_8362017_right_count small_8362017_right_encoded = true := by
  decide +kernel
theorem small_8362017_right_covered : CoveredBy scale carrier boxes small_8362017_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8362017_right_root small_8362017_right_fuel small_8362017_right_count small_8362017_right_encoded small_8362017_right_checked

theorem cover_8362017 : CoveredBy scale carrier boxes root_8362017 := by
  apply coveredBy_split_literal root_8362017 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0576.root_8362022 small_8362017_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0576.cover_8362022
  · exact small_8362017_right_covered
#print axioms cover_8362017

def root_8361097 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8361097_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8361097_left_fuel : Nat := 32
def small_8361097_left_count : Nat := 427
def small_8361097_left_encoded : String := "1151E905000000020A0000FC115224FD000000030A0001081151E8FF08A9130112070100000000000000000612073D00000000050000000000000004115224FF0000000408A91301120701000000000008A912F912073CF80000000108A912FD12073CFC0000000308A912FF12073D080000000600000004120701080000000405000104135D45050000000204548A0113867100000000000CFD9BF90F350CF8000000010CFD9BFD0000000600000009000000061386AD000000000500000000135D810504548A0113867100000000000CFD9BF90F350CF8000000010CFD9BFD0F350CFC00000003045489FF0000000613867108000000040C9A86F80F878CF900000001000000060F8750F900000009000000010F34D0FC00000009000000030F34D0F80CFD9BFD0000000600000005000000011386AD000CFD9BF90F350CF8000000010CFD9BFD0F350CFC00000003045489FF0000000613867108000000040C9A86F80F878CF900000001000000060F8750F90C9A86FC000000070F8750FD0000000600000003000000010F34D0FC00000005000000030F34D0F800000005000000010000000000000002120700FC08A912FF000000090000000500000003120700F808A912FD00000006120700FC00000005000000030000000112073D0008A912F912073CF80000000108A912FD12073CFC0000000308A912FF12073D080500010400000005135D81050CFD9C010F34D100000000000CFD9BF90F350CF8000000010CFD9BFD0000000600000009000000060F350D000000000500000000000000020000000412070108000000040500010400000005135D81050CFD9C010F34D100000000000CFD9BF90F350CF8000000010CFD9BFD0F350CFC00000003045489FF1386AD080C9A86F8000000050F8750F90C9A86FC0000000500000006000000010000000413867108000000040C9A86F8000000050F8750F90C9A86FC000000050F8750FD0780010400000005128A7D050AD3578110D101000000000000000006000000060000000200000003000000010F34D0FC00000005000000030F34D0F800000005000000010F350D000CFD9BF9000000050F34D0F800000005000000010000000000000002120700FC08A912FF0000000512070108000000040500010400000005135D8105000000050000000200000003120700F808A912FD12073CFC0000000308A912FF0000000512070108000000040500010400000005135D81050000000500000002120700FC08A912FF0000000512070108000000040500010400000005135D810500000005000000020000000300000001000000001151E8FD0A0001081151E8FF0000000600000004115224FF0000000408A91301120701000000000008A912F912073CF80000000108A912FF00000006120701080000000405000104135D45050000000200000006135D8105050000FC135D80FD0000000304548A0113867100000000000CFD9BF90F350CF800000001045489FF0000000613867108000000040C9A86F8000000060F8750F90000000600000001000000061386AD000CFD9BF90F350CF800000001045489FF0000000613867108000000040C9A86F8000000060F8750F900000006000000010000000600000000135D44FD04548A0113867100000000000CFD9BF900000006000000060000000600000003000000020000000612073D0008A912F912073CF80000000108A912FF12073D080500010400000006135D8105050000FC135D80FD000000030CFD9C010F34D100000000000000000600000006135D44FD00000006000000030000000200000004120701080000000405000104135D450500000002050000FC135D80FD000000030CFD9C010F34D100000000000000000600000006135D44FD0000000600000003135D8105050000FC135D80FD000000030CFD9C010F34D100000000000CFD9BF90F350CF800000001045489FF0000000613867108000000040C9A86F8000000060F8750F90780010400000006128A7D05000000060000000200000001000000060F350D000CFD9BF90F350CF800000001045489FF0000000613867108000000040C9A8700000000050F878D010C9A86F8000000050F8750F90780010400000005128A7D05000000060000000200000001000000000F34D0F8000000050000000100000000135D44FD0CFD9C010F34D100000000000CFD9BF900000006000000060F350D000CFD9BF90F350CF800000001045489FF0000000613867108000000040C9A87000F87510100000000000000060000000600000006000000000000000300000002120700F808A912FF00000006120701080000000400000006000000010000000000000003"
theorem small_8361097_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8361097_left_root small_8361097_left_fuel small_8361097_left_count small_8361097_left_encoded = true := by
  decide +kernel
theorem small_8361097_left_covered : CoveredBy scale carrier boxes small_8361097_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8361097_left_root small_8361097_left_fuel small_8361097_left_count small_8361097_left_encoded small_8361097_left_checked

theorem cover_8361097 : CoveredBy scale carrier boxes root_8361097 := by
  apply coveredBy_split_literal root_8361097 small_8361097_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0576.root_8362017 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_8361097_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0576.cover_8362017
#print axioms cover_8361097

def root_8361091 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8361091_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8361091_left_fuel : Nat := 1
def small_8361091_left_count : Nat := 1
def small_8361091_left_encoded : String := "00000001"
theorem small_8361091_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8361091_left_root small_8361091_left_fuel small_8361091_left_count small_8361091_left_encoded = true := by
  decide +kernel
theorem small_8361091_left_covered : CoveredBy scale carrier boxes small_8361091_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8361091_left_root small_8361091_left_fuel small_8361091_left_count small_8361091_left_encoded small_8361091_left_checked

theorem cover_8361091 : CoveredBy scale carrier boxes root_8361091 := by
  apply coveredBy_split_literal root_8361091 small_8361091_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0576.root_8361097 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_8361091_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0576.cover_8361097
#print axioms cover_8361091

def root_8387776 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8387776_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8387776_right_fuel : Nat := 17
def small_8387776_right_count : Nat := 105
def small_8387776_right_encoded : String := "135D44F90CFD9C010F34D100000000000CFD9C050F34D104000000020CFD9BFD0F350CFC0000000300000009000000090F350D0400000009000000020F350D000CFD9C050F34D104000000020CFD9BFD0F350CFC00000003045489FF1386AD080C9A8700000000080F878D010C9A86FC0000000800000009000000000000000413867108000000040C9A87000F875101000000000C9A86FC000000080F8750FD028000F80000000800000005000000030F878D010C9A86FC0F878CFD000000030000000600000005000000000F34D0FC00000008000000030F350D040CFD9BFD0F350CFC00000003045489FF1386AD080C9A87000F8751010000000000000008000000090000000413867108000000040C9A87000F875101000000000C9A87040F875105000000020C9A86FC000000070F8750FD028000F80000000800000008000000030F878D050C9A86FC000000080F8750FD028000F8000000080000000800000003000000020F878D010C9A8704000000090F878D050000000900000002000000000F34D0FC045489FF000000080000000900000003000000020000000000000001"
theorem small_8387776_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8387776_right_root small_8387776_right_fuel small_8387776_right_count small_8387776_right_encoded = true := by
  decide +kernel
theorem small_8387776_right_covered : CoveredBy scale carrier boxes small_8387776_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8387776_right_root small_8387776_right_fuel small_8387776_right_count small_8387776_right_encoded small_8387776_right_checked

theorem cover_8387776 : CoveredBy scale carrier boxes root_8387776 := by
  apply coveredBy_split_literal root_8387776 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3140.root small_8387776_right_root coord1 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3140.covered
  · exact small_8387776_right_covered
#print axioms cover_8387776

def root_8387770 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8387770_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8387770_left_fuel : Nat := 1
def small_8387770_left_count : Nat := 1
def small_8387770_left_encoded : String := "00000004"
theorem small_8387770_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8387770_left_root small_8387770_left_fuel small_8387770_left_count small_8387770_left_encoded = true := by
  decide +kernel
theorem small_8387770_left_covered : CoveredBy scale carrier boxes small_8387770_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8387770_left_root small_8387770_left_fuel small_8387770_left_count small_8387770_left_encoded small_8387770_left_checked

theorem cover_8387770 : CoveredBy scale carrier boxes root_8387770 := by
  apply coveredBy_split_literal root_8387770 small_8387770_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0576.root_8387776 coord4 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_8387770_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0576.cover_8387776
#print axioms cover_8387770

def root_8387566 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8387566_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8387566_left_fuel : Nat := 16
def small_8387566_left_count : Nat := 95
def small_8387566_left_encoded : String := "12073D08050000F8135D80F9000000010CFD9C010F34D100000000000CFD9C050F34D104000000020CFD9BFD0F350CFC000000030CFD9BFF0000000900000009000000090F350D0400000009000000020F350D000CFD9C050F34D104000000020CFD9BFD0F350CFC000000030CFD9BFF000000080F34D108000000040C9A8700000000080F878D010000000800000000000000080F350D040CFD9BFD0F350CFC000000030CFD9BFF0F350D0800000008000000040F34D108000000040C9A87000F87510100000000000000080F878D010C9A8704000000090F878D050000000900000002000000000F34D0FC00000008000000030000000200000000135D44F90CFD9C010F34D100000000000CFD9C0500000009000000090F350D000CFD9C050F34D104000000020CFD9BFD0F350CFC000000030CFD9BFF000000080F34D1080000000400000008000000080F350D040CFD9BFD0F350CFC000000030CFD9BFF00000008000000090000000900000002000000000000000100000004"
theorem small_8387566_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8387566_left_root small_8387566_left_fuel small_8387566_left_count small_8387566_left_encoded = true := by
  decide +kernel
theorem small_8387566_left_covered : CoveredBy scale carrier boxes small_8387566_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8387566_left_root small_8387566_left_fuel small_8387566_left_count small_8387566_left_encoded small_8387566_left_checked

theorem cover_8387566 : CoveredBy scale carrier boxes root_8387566 := by
  apply coveredBy_split_literal root_8387566 small_8387566_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0576.root_8387770 coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_8387566_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0576.cover_8387770
#print axioms cover_8387566

def root_8387560 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8387560_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8387560_left_fuel : Nat := 1
def small_8387560_left_count : Nat := 1
def small_8387560_left_encoded : String := "00000003"
theorem small_8387560_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8387560_left_root small_8387560_left_fuel small_8387560_left_count small_8387560_left_encoded = true := by
  decide +kernel
theorem small_8387560_left_covered : CoveredBy scale carrier boxes small_8387560_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8387560_left_root small_8387560_left_fuel small_8387560_left_count small_8387560_left_encoded small_8387560_left_checked

theorem cover_8387560 : CoveredBy scale carrier boxes root_8387560 := by
  apply coveredBy_split_literal root_8387560 small_8387560_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0576.root_8387566 coord3 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_8387560_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0576.cover_8387566
#print axioms cover_8387560

def root_8387559 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8387559_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8387559_right_fuel : Nat := 11
def small_8387559_right_count : Nat := 49
def small_8387559_right_encoded : String := "120700FC08A912FF12073D08050000F8135D80F9000000010CFD9C010F34D100000000000000000900000008135D44F90CFD9C01000000080000000800000001000000041207010800000004050000F8135D80F9000000010CFD9C010F34D10000000000000000090F350D000CFD9C050F34D10400000002000000080F350D04045489FD00000008000000070000000200000000135D44F90CFD9C01000000090F350D000CFD9C050F34D104000000020000000600000008000000000000000100000003"
theorem small_8387559_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8387559_right_root small_8387559_right_fuel small_8387559_right_count small_8387559_right_encoded = true := by
  decide +kernel
theorem small_8387559_right_covered : CoveredBy scale carrier boxes small_8387559_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8387559_right_root small_8387559_right_fuel small_8387559_right_count small_8387559_right_encoded small_8387559_right_checked

theorem cover_8387559 : CoveredBy scale carrier boxes root_8387559 := by
  apply coveredBy_split_literal root_8387559 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0576.root_8387560 small_8387559_right_root coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0576.cover_8387560
  · exact small_8387559_right_covered
#print axioms cover_8387559

def root_8387554 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8387554_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8387554_right_fuel : Nat := 1
def small_8387554_right_count : Nat := 1
def small_8387554_right_encoded : String := "00000002"
theorem small_8387554_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8387554_right_root small_8387554_right_fuel small_8387554_right_count small_8387554_right_encoded = true := by
  decide +kernel
theorem small_8387554_right_covered : CoveredBy scale carrier boxes small_8387554_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8387554_right_root small_8387554_right_fuel small_8387554_right_count small_8387554_right_encoded small_8387554_right_checked

theorem cover_8387554 : CoveredBy scale carrier boxes root_8387554 := by
  apply coveredBy_split_literal root_8387554 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0576.root_8387559 small_8387554_right_root coord2 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0576.cover_8387559
  · exact small_8387554_right_covered
#print axioms cover_8387554

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0576
