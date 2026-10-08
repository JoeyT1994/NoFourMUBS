import TaoBundleAssembly0192
import TaoBundleChunkBatch0748
import TaoBundleChunkBatch0749
import TaoBundleChunkBatch0750
import TaoBundleChunkBatch0751
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0193
def root_7975958 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7975958_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7975958_right_fuel : Nat := 27
def small_7975958_right_count : Nat := 335
def small_7975958_right_encoded : String := "1386AD000CFD9BF90F350CF8000000010CFD9BFB0F350CFA000000020CFD9C070F34D106000000030CFD9C090F34D108000000040C9A86F8000000060F8750F900000006000000010F350D080C9A86F80F878CF9000000010C9A86FA0F878CFB000000020C9A8708000000050F878D0900000005000000040F8750FB0C9A8708000000050F878D09067ECE8112EA5900000000000AD3578700000006000000080000000600000004000000020F8750F90C9A86FA0F878CFB000000020C9A8708000000050F878D09067ECE8112EA5900000000000AD35787000000060000000A00000006000000040F8750FB0C9A87080F87510900000004067ECE8112EA5900000000000AD3578710D101060000000300000008000000080000000A0F878D09067ECE8112EA5900000000000AD3578710D10106000000030000000610D13D060B4D43F800000006108010F90000000A000000010000000300000006000000040000000200000001000000040F350D060CFD9C090F34D108000000040C9A86F80F878CF9000000010C9A86FA0F878CFB000000020C9A8706000000050F878D0700000005000000030F8750FB0C9A8706000000050F878D07067ECE8112EA5900000000000AD3578900000006000000090000000600000003000000020F8750F90C9A86FA0F878CFB000000020C9A8706000000050F878D07067ECE8112EA5900000000000AD35789000000060000000700000006000000030F8750FB0C9A87060F87510700000003067ECE8112EA5900000000000AD3578910D10108000000040000000700000007000000090F878D07067ECE8112EA5900000000000AD3578910D10108000000040000000610D13D080B4D43F800000006108010F90B4D43FA00000006000000090000000100000004000000060000000300000002000000010F350D080C9A86F80F878CF9000000010C9A86FA000000050F8750FB0C9A8706000000050F878D070C9A8708000000050F878D09000000050000000400000003000000020F8750F90C9A86FA0F878CFB000000020C9A8706000000050F878D070C9A8708000000050F878D090000000500000004000000030F8750FB0C9A8706000000050F878D070C9A8708000000050F878D09067ECE8112EA5900000000000B4D43F810804CF9000000010B4D43FA00000005108010FB0000000500000002108010F90B4D43FA00000005108010FB0DE7CA06000000050E6015070DE7CA08000000050000000600000003000000020000000112EA95000B4D43F800000005108010F90B4D43FA00000005108010FB0DE7CA0600000005000000060000000200000001000000000000000400000003000000020000000100000004000000030F34D0FA0CFD9C070F34D106000000030CFD9C090F34D10800000004000000060F350D080C9A86F8000000050F8750F90000000A00000001000000040F350D060CFD9C090F34D108000000040C9A86F8000000050F8750F900000007000000010F350D080C9A86F8000000050F8750F900000005000000010000000400000003000000020F34D0F80CFD9BFB0F350CFA000000020CFD9C070F34D106000000030CFD9C090F34D10800000004000000060F350D080C9A86FA000000050F8750FB0000000800000002000000040F350D060CFD9C090F34D108000000040C9A86FA000000050F8750FB00000009000000020F350D080C9A86FA000000050F8750FB000000050000000200000004000000030F34D0FA0CFD9C070F34D106000000030CFD9C09000000050F350D0800000005000000040F350D060CFD9C09000000050F350D08000000050000000400000003000000020000000100000000"
theorem small_7975958_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7975958_right_root small_7975958_right_fuel small_7975958_right_count small_7975958_right_encoded = true := by
  decide +kernel
theorem small_7975958_right_covered : CoveredBy scale carrier boxes small_7975958_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7975958_right_root small_7975958_right_fuel small_7975958_right_count small_7975958_right_encoded small_7975958_right_checked

theorem cover_7975958 : CoveredBy scale carrier boxes root_7975958 := by
  apply coveredBy_split_literal root_7975958 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0192.root_7975959 small_7975958_right_root coord0 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0192.cover_7975959
  · exact small_7975958_right_covered
#print axioms cover_7975958

def root_7975953 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7975953_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7975953_right_fuel : Nat := 1
def small_7975953_right_count : Nat := 1
def small_7975953_right_encoded : String := "00000004"
theorem small_7975953_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7975953_right_root small_7975953_right_fuel small_7975953_right_count small_7975953_right_encoded = true := by
  decide +kernel
theorem small_7975953_right_covered : CoveredBy scale carrier boxes small_7975953_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7975953_right_root small_7975953_right_fuel small_7975953_right_count small_7975953_right_encoded small_7975953_right_checked

theorem cover_7975953 : CoveredBy scale carrier boxes root_7975953 := by
  apply coveredBy_split_literal root_7975953 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0193.root_7975958 small_7975953_right_root coord4 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0193.cover_7975958
  · exact small_7975953_right_covered
#print axioms cover_7975953

def root_7975407 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7975407_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7975407_left_fuel : Nat := 25
def small_7975407_left_count : Nat := 253
def small_7975407_left_encoded : String := "120701080000000404548A0113867100000000000CFD9BF90F350CF8000000010CFD9BFB0F350CFA000000020CFD9C070F34D1060000000304548A09000000061386AD080C9A86F8000000060F8750F90000000600000001000000040F350D0604548A0913867108000000040C9A86F80F878CF9000000010C9A86FA000000060F8750FB00000009000000020F8750F90C9A86FA0F878CFB000000020C9A870600000008000000060F8750FB0C9A8706000000090000000600000002000000011386AD080C9A86F80F878CF9000000010C9A86FA0F878CFB000000020C9A8706000000050F878D0700000006000000030F8750FB0C9A8706000000090F878D07022A458113E1C50000000000067ECE8900000006000000090000000600000003000000020F8750F90C9A86FA0F878CFB000000020C9A87060F87510700000003000000070F878D07022A458113E1C50000000000067ECE89000000060000000800000006000000030F8750FB0C9A87060F87510700000003022A458113E1C50000000000067ECE8912EA5908000000040000000912EA95080B4D43F810804CF90000000100000009108010F9000000070000000100000004000000090F878D07022A458113E1C50000000000067ECE8912EA5908000000040000000612EA95080B4D43F810804CF9000000010B4D43FA0000000600000009108010F90B4D43FA000000060000000900000001000000040000000600000003000000020000000100000004000000030F34D0FA0CFD9C070F34D10600000003000000060F350D0604548A0913867108000000040C9A86F800000006000000081386AD080C9A86F8000000050F8750F900000007000000010000000400000003000000020F34D0F80CFD9BFB0F350CFA000000020CFD9C070F34D10600000003000000060F350D0604548A091386710800000004000000091386AD080C9A86FA000000050F8750FB000000090000000200000004000000030F34D0FA0CFD9C070F34D10600000003000000060F350D06000000050000000300000002000000011386AD000CFD9BF90F350CF8000000010CFD9BFB0F350CFA000000020CFD9C070F34D10600000003000000060F350D0604548A091386710800000004000000061386AD080C9A86F80F878CF9000000010C9A86FA00000006000000090F8750F90C9A86FA000000060F8750FB00000009000000020000000100000004000000030F34D0FA0CFD9C07000000060F350D0604548A09000000061386AD080C9A86F8000000050F8750F900000006000000010000000400000003000000020F34D0F80CFD9BFB0F350CFA000000020CFD9C07000000060F350D0604548A090000000600000009000000030F34D0FA00000006000000020000000100000000"
theorem small_7975407_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7975407_left_root small_7975407_left_fuel small_7975407_left_count small_7975407_left_encoded = true := by
  decide +kernel
theorem small_7975407_left_covered : CoveredBy scale carrier boxes small_7975407_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7975407_left_root small_7975407_left_fuel small_7975407_left_count small_7975407_left_encoded small_7975407_left_checked

theorem cover_7975407 : CoveredBy scale carrier boxes root_7975407 := by
  apply coveredBy_split_literal root_7975407 small_7975407_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0193.root_7975953 coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_7975407_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0193.cover_7975953
#print axioms cover_7975407

def root_7975402 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7975402_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7975402_right_fuel : Nat := 1
def small_7975402_right_count : Nat := 1
def small_7975402_right_encoded : String := "00000003"
theorem small_7975402_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7975402_right_root small_7975402_right_fuel small_7975402_right_count small_7975402_right_encoded = true := by
  decide +kernel
theorem small_7975402_right_covered : CoveredBy scale carrier boxes small_7975402_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7975402_right_root small_7975402_right_fuel small_7975402_right_count small_7975402_right_encoded small_7975402_right_checked

theorem cover_7975402 : CoveredBy scale carrier boxes root_7975402 := by
  apply coveredBy_split_literal root_7975402 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0193.root_7975407 small_7975402_right_root coord3 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0193.cover_7975407
  · exact small_7975402_right_covered
#print axioms cover_7975402

def root_7974812 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7974812_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7974812_left_fuel : Nat := 27
def small_7974812_left_count : Nat := 273
def small_7974812_left_encoded : String := "120701060000000308A91309120701080000000404548A0113867100000000000CFD9BF9000000060F34D0F800000006000000010000000612073D0804548A0113867100000000000CFD9BF90F350CF8000000010CFD9BFB0F350CFA0000000204548A0713867106000000030CFD9C090F34D10800000004000000060F350D080C9A86F80F878CF9000000010C9A86FA000000060F8750FB0C9A87080000000700000006000000020F8750F90C9A86FA0F878CFB000000020000000A0F8750FB0C9A87080000000A000000060000000200000001000000041386AD060CFD9C090F34D108000000040C9A86F8000000060F8750F900000006000000010F350D080C9A86F80F878CF9000000010C9A86FA0F878CFB000000020C9A8708000000050F878D0900000006000000040F8750FB0C9A87080F87510900000004000000080F878D09022A458113E1C50000000000067ECE8700000006000000070000000600000004000000020F8750F90C9A86FA0F878CFB000000020C9A87080000000A0F878D09022A458113E1C50000000000067ECE87000000060000000A00000006000000040F8750FB0C9A87080F87510900000004022A458113E1C50000000000067ECE8712EA5906000000030000000A12EA95060B4D43F8000000080000000A000000030000000A0F878D09022A458113E1C50000000000067ECE8712EA5906000000030000000612EA95060B4D43F810804CF9000000010B4D43FA0000000600000007108010F90000000A00000001000000030000000600000004000000020000000100000004000000030F34D0FA04548A0713867106000000030CFD9C09000000060F350D080000000A000000041386AD060CFD9C090F34D10800000004000000060F350D080C9A86F8000000050F8750F90000000A000000010000000400000003000000020F34D0F80CFD9BFB0F350CFA0000000204548A0713867106000000030CFD9C09000000060F350D080C9A86FA0000000600000007000000041386AD060CFD9C090F34D10800000004000000060F350D080C9A86FA000000050F8750FB000000080000000200000004000000030F34D0FA04548A071386710600000003000000061386AD06000000050000000300000002000000011386AD000CFD9BF90F350CF8000000010CFD9BFB0F350CFA0000000204548A071386710600000003000000061386AD060CFD9C090F34D10800000004000000060F350D080C9A86F80F878CF9000000010C9A86FA000000060F8750FB00000006000000020F8750F90C9A86FA000000060000000A0000000100000004000000030F34D0FA04548A07000000061386AD060CFD9C09000000060F350D080000000A0000000400000003000000020F34D0F80CFD9BFB0F350CFA0000000204548A07000000061386AD060CFD9C09000000060F350D080C9A86FA000000050F8750FB000000060000000200000004000000030F34D0FA0000000600000002000000010000000000000004"
theorem small_7974812_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7974812_left_root small_7974812_left_fuel small_7974812_left_count small_7974812_left_encoded = true := by
  decide +kernel
theorem small_7974812_left_covered : CoveredBy scale carrier boxes small_7974812_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7974812_left_root small_7974812_left_fuel small_7974812_left_count small_7974812_left_encoded small_7974812_left_checked

theorem cover_7974812 : CoveredBy scale carrier boxes root_7974812 := by
  apply coveredBy_split_literal root_7974812 small_7974812_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0193.root_7975402 coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_7974812_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0193.cover_7975402
#print axioms cover_7974812

def root_7974806 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7974806_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7974806_left_fuel : Nat := 1
def small_7974806_left_count : Nat := 1
def small_7974806_left_encoded : String := "00000002"
theorem small_7974806_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7974806_left_root small_7974806_left_fuel small_7974806_left_count small_7974806_left_encoded = true := by
  decide +kernel
theorem small_7974806_left_covered : CoveredBy scale carrier boxes small_7974806_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7974806_left_root small_7974806_left_fuel small_7974806_left_count small_7974806_left_encoded small_7974806_left_checked

theorem cover_7974806 : CoveredBy scale carrier boxes root_7974806 := by
  apply coveredBy_split_literal root_7974806 small_7974806_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0193.root_7974812 coord2 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_7974806_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0193.cover_7974812
#print axioms cover_7974806

def root_7974805 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7974805_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7974805_right_fuel : Nat := 18
def small_7974805_right_count : Nat := 215
def small_7974805_right_encoded : String := "120700FA08A91307120701060000000308A9130912070108000000040000000612073D0804548A0113867100000000000CFD9BF90F350CF800000001045489FB1386ACFA0000000204548A070000000A0000000A0000000A0F34D0F8045489FB00000005138670FA0000000500000002000000011386AD000CFD9BF90000000A0F34D0F8045489FB000000060000000A00000001000000000000000412073D0608A91309120701080000000404548A0113867100000000000CFD9BF90F350CF800000001045489FB1386ACFA000000020CFD9C07000000080F350D060000000500000003000000080F34D0F8045489FB00000005138670FA0000000500000002000000011386AD000CFD9BF90F350CF800000001045489FB1386ACFA000000020CFD9C07000000060F350D060000000700000003138670FA00000007000000020F34D0F8045489FB00000006138670FA0000000600000002000000010000000012073D0804548A0113867100000000000CFD9BF90F350CF800000001045489FB1386ACFA000000020CFD9C070F34D106000000030CFD9C090F34D108000000040C9A86F8000000050F8750F900000007000000010F350D0800000005000000040F350D060CFD9C09000000050000000700000003138670FA0CFD9C070F34D106000000030000000A0F350D060000000700000003000000020F34D0F8045489FB1386ACFA000000020CFD9C07000000050F350D060000000500000003138670FA0CFD9C07000000050F350D060CFD9C09000000050F350D0800000005000000040000000300000002000000011386AD000CFD9BF90F350CF800000001045489FB1386ACFA000000020CFD9C070F34D106000000030CFD9C090000000A0F350D080000000A000000040F350D060CFD9C090F34D10800000004000000070000000700000003138670FA0CFD9C070F34D106000000030000000A00000007000000020F34D0F8045489FB1386ACFA000000020CFD9C070F34D106000000030CFD9C09000000050F350D0800000005000000040F350D060CFD9C09000000050F350D08000000050000000400000003138670FA0CFD9C070F34D106000000030CFD9C09000000050F350D0800000005000000040F350D060CFD9C09000000050000000700000003000000020000000100000000000000040000000300000002"
theorem small_7974805_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7974805_right_root small_7974805_right_fuel small_7974805_right_count small_7974805_right_encoded = true := by
  decide +kernel
theorem small_7974805_right_covered : CoveredBy scale carrier boxes small_7974805_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7974805_right_root small_7974805_right_fuel small_7974805_right_count small_7974805_right_encoded small_7974805_right_checked

theorem cover_7974805 : CoveredBy scale carrier boxes root_7974805 := by
  apply coveredBy_split_literal root_7974805 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0193.root_7974806 small_7974805_right_root coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0193.cover_7974806
  · exact small_7974805_right_covered
#print axioms cover_7974805

def root_7974799 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7974799_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7974799_left_fuel : Nat := 1
def small_7974799_left_count : Nat := 1
def small_7974799_left_encoded : String := "00000001"
theorem small_7974799_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7974799_left_root small_7974799_left_fuel small_7974799_left_count small_7974799_left_encoded = true := by
  decide +kernel
theorem small_7974799_left_covered : CoveredBy scale carrier boxes small_7974799_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7974799_left_root small_7974799_left_fuel small_7974799_left_count small_7974799_left_encoded small_7974799_left_checked

theorem cover_7974799 : CoveredBy scale carrier boxes root_7974799 := by
  apply coveredBy_split_literal root_7974799 small_7974799_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0193.root_7974805 coord1 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_7974799_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0193.cover_7974805
#print axioms cover_7974799

def root_7974798 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7974798 : CoveredBy scale carrier boxes root_7974798 := by
  apply coveredBy_split_literal root_7974798 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0193.root_7974799 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2993.root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0193.cover_7974799
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2993.covered
#print axioms cover_7974798

def root_7974792 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7974792_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7974792_left_fuel : Nat := 1
def small_7974792_left_count : Nat := 1
def small_7974792_left_encoded : String := "00000000"
theorem small_7974792_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7974792_left_root small_7974792_left_fuel small_7974792_left_count small_7974792_left_encoded = true := by
  decide +kernel
theorem small_7974792_left_covered : CoveredBy scale carrier boxes small_7974792_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7974792_left_root small_7974792_left_fuel small_7974792_left_count small_7974792_left_encoded small_7974792_left_checked

theorem cover_7974792 : CoveredBy scale carrier boxes root_7974792 := by
  apply coveredBy_split_literal root_7974792 small_7974792_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0193.root_7974798 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_7974792_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0193.cover_7974798
#print axioms cover_7974792

def root_7974791 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7974791 : CoveredBy scale carrier boxes root_7974791 := by
  apply coveredBy_split_literal root_7974791 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0193.root_7974792 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2994.root coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0193.cover_7974792
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2994.covered
#print axioms cover_7974791

def root_7974786 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7974786_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7974786_right_fuel : Nat := 1
def small_7974786_right_count : Nat := 1
def small_7974786_right_encoded : String := "00000004"
theorem small_7974786_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7974786_right_root small_7974786_right_fuel small_7974786_right_count small_7974786_right_encoded = true := by
  decide +kernel
theorem small_7974786_right_covered : CoveredBy scale carrier boxes small_7974786_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7974786_right_root small_7974786_right_fuel small_7974786_right_count small_7974786_right_encoded small_7974786_right_checked

theorem cover_7974786 : CoveredBy scale carrier boxes root_7974786 := by
  apply coveredBy_split_literal root_7974786 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0193.root_7974791 small_7974786_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0193.cover_7974791
  · exact small_7974786_right_covered
#print axioms cover_7974786

def root_7973212 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7973212 : CoveredBy scale carrier boxes root_7973212 := by
  apply coveredBy_split_literal root_7973212 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2990.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0193.root_7974786 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2990.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0193.cover_7974786
#print axioms cover_7973212

def root_7973207 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7973207_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7973207_right_fuel : Nat := 1
def small_7973207_right_count : Nat := 1
def small_7973207_right_encoded : String := "00000003"
theorem small_7973207_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7973207_right_root small_7973207_right_fuel small_7973207_right_count small_7973207_right_encoded = true := by
  decide +kernel
theorem small_7973207_right_covered : CoveredBy scale carrier boxes small_7973207_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7973207_right_root small_7973207_right_fuel small_7973207_right_count small_7973207_right_encoded small_7973207_right_checked

theorem cover_7973207 : CoveredBy scale carrier boxes root_7973207 := by
  apply coveredBy_split_literal root_7973207 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0193.root_7973212 small_7973207_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0193.cover_7973212
  · exact small_7973207_right_covered
#print axioms cover_7973207

def root_7970413 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7970413 : CoveredBy scale carrier boxes root_7970413 := by
  apply coveredBy_split_literal root_7970413 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2989.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0193.root_7973207 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2989.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0193.cover_7973207
#print axioms cover_7970413

def root_7970407 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7970407_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7970407_left_fuel : Nat := 1
def small_7970407_left_count : Nat := 1
def small_7970407_left_encoded : String := "00000002"
theorem small_7970407_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7970407_left_root small_7970407_left_fuel small_7970407_left_count small_7970407_left_encoded = true := by
  decide +kernel
theorem small_7970407_left_covered : CoveredBy scale carrier boxes small_7970407_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7970407_left_root small_7970407_left_fuel small_7970407_left_count small_7970407_left_encoded small_7970407_left_checked

theorem cover_7970407 : CoveredBy scale carrier boxes root_7970407 := by
  apply coveredBy_split_literal root_7970407 small_7970407_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0193.root_7970413 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_7970407_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0193.cover_7970413
#print axioms cover_7970407

def root_7987433 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7987433_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7987433_right_fuel : Nat := 21
def small_7987433_right_count : Nat := 129
def small_7987433_right_encoded : String := "135D44FB04548A0113867100000000000CFD9BF90F350CF8000000010CFD9C070F34D106000000030CFD9C090F34D10800000004000000050F350D080C9A86F8000000080F8750F90C9A8708000000070000000500000001000000040F350D060CFD9C090F34D10800000004000000090F350D080C9A86F80F878CF9000000010C9A87060F8751070000000300000008000000080F8750F90C9A87060F875107000000030C9A8708000000080F878D0900000009000000040F878D070C9A8708000000080F878D09028000FA13D7ECFB00000002022A458113E1C500000000000B4D43F80000000900000009000000090000000500000004000000030000000100000004000000030F34D0F80CFD9C070F34D10600000003000000070F350D060CFD9C09000000090F350D08000000080000000400000003000000011386AD000CFD9BF90F350CF8000000010CFD9C070F34D106000000030CFD9C090F34D10800000004000000090F350D080C9A86F8000000080F8750F90C9A8708000000080000000900000001000000040F350D060CFD9C090F34D10800000004000000090F350D080C9A86F80F878CF900000001000000080F8750F90C9A8706000000090F878D070C9A87080000000800000009000000030000000100000004000000030F34D0F80CFD9C07000000090F350D060000000900000003000000010000000000000002"
theorem small_7987433_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7987433_right_root small_7987433_right_fuel small_7987433_right_count small_7987433_right_encoded = true := by
  decide +kernel
theorem small_7987433_right_covered : CoveredBy scale carrier boxes small_7987433_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7987433_right_root small_7987433_right_fuel small_7987433_right_count small_7987433_right_encoded small_7987433_right_checked

theorem cover_7987433 : CoveredBy scale carrier boxes root_7987433 := by
  apply coveredBy_split_literal root_7987433 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2995.root small_7987433_right_root coord2 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2995.covered
  · exact small_7987433_right_covered
#print axioms cover_7987433

def root_7987428 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7987428_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7987428_right_fuel : Nat := 1
def small_7987428_right_count : Nat := 1
def small_7987428_right_encoded : String := "00000004"
theorem small_7987428_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7987428_right_root small_7987428_right_fuel small_7987428_right_count small_7987428_right_encoded = true := by
  decide +kernel
theorem small_7987428_right_covered : CoveredBy scale carrier boxes small_7987428_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7987428_right_root small_7987428_right_fuel small_7987428_right_count small_7987428_right_encoded small_7987428_right_checked

theorem cover_7987428 : CoveredBy scale carrier boxes root_7987428 := by
  apply coveredBy_split_literal root_7987428 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0193.root_7987433 small_7987428_right_root coord4 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0193.cover_7987433
  · exact small_7987428_right_covered
#print axioms cover_7987428

def root_7987286 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7987286_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7987286_left_fuel : Nat := 16
def small_7987286_left_count : Nat := 65
def small_7987286_left_encoded : String := "1207010800000004050000FA135D80FB0000000204548A0113867100000000000CFD9BF90F350CF8000000010CFD9C070F34D1060000000304548A09000000091386AD080C9A86F80000000900000005000000040F350D0604548A091386710800000004000000091386AD080C9A86F80F878CF900000001000000090F8750F90C9A8706000000090F878D0700000009000000030000000100000004000000030F34D0F800000009000000011386AD000CFD9BF90F350CF8000000010CFD9C07000000090F350D0600000009000000030000000900000000135D44FB04548A0113867100000000000CFD9BF90F350CF80000000100000009000000090000000900000002"
theorem small_7987286_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7987286_left_root small_7987286_left_fuel small_7987286_left_count small_7987286_left_encoded = true := by
  decide +kernel
theorem small_7987286_left_covered : CoveredBy scale carrier boxes small_7987286_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7987286_left_root small_7987286_left_fuel small_7987286_left_count small_7987286_left_encoded small_7987286_left_checked

theorem cover_7987286 : CoveredBy scale carrier boxes root_7987286 := by
  apply coveredBy_split_literal root_7987286 small_7987286_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0193.root_7987428 coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_7987286_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0193.cover_7987428
#print axioms cover_7987286

def root_7987281 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7987281_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7987281_right_fuel : Nat := 1
def small_7987281_right_count : Nat := 1
def small_7987281_right_encoded : String := "00000003"
theorem small_7987281_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7987281_right_root small_7987281_right_fuel small_7987281_right_count small_7987281_right_encoded = true := by
  decide +kernel
theorem small_7987281_right_covered : CoveredBy scale carrier boxes small_7987281_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7987281_right_root small_7987281_right_fuel small_7987281_right_count small_7987281_right_encoded small_7987281_right_checked

theorem cover_7987281 : CoveredBy scale carrier boxes root_7987281 := by
  apply coveredBy_split_literal root_7987281 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0193.root_7987286 small_7987281_right_root coord3 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0193.cover_7987286
  · exact small_7987281_right_covered
#print axioms cover_7987281

def root_7986845 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7986845_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7986845_left_fuel : Nat := 23
def small_7986845_left_count : Nat := 207
def small_7986845_left_encoded : String := "120701060000000308A913091207010800000004050000FA135D80FB0000000204548A0113867100000000000CFD9BF90000000600000007000000060000000512073D08050000FA135D80FB0000000204548A0113867100000000000CFD9BF90F350CF80000000104548A0713867106000000030CFD9C090F34D10800000004000000050F350D080C9A86F80F878CF900000001000000070F8750F90C9A87080F87510900000004078000FA128A7CFB0000000200000007000000050000000500000001000000041386AD060CFD9C090F34D108000000040C9A86F80F878CF90000000100000007000000050F350D080C9A86F80F878CF9000000010C9A8708000000070F878D0900000007000000040F8750F90C9A87080F87510900000004078000FA128A7CFB00000002022A45810000000700000008000000070F878D09078000FA128A7CFB00000002022A45810000000713E20100067ECE8700000006000000060000000000000005000000040000000100000004000000030F34D0F804548A070000000700000007000000011386AD000CFD9BF90F350CF80000000104548A0713867106000000030CFD9C09000000060F350D080C9A86F8000000060F8750F90C9A87080F87510900000004078000FA00000006000000060000000600000001000000041386AD060CFD9C090F34D10800000004000000060F350D080C9A86F80F878CF900000001000000080F8750F90C9A87080F87510900000004000000080F878D09078000FA0000000600000006000000040000000100000004000000030F34D0F804548A071386710600000003000000061386AD060CFD9C090000000700000008000000030000000100000000135D44FB04548A0113867100000000000CFD9BF90F350CF80000000104548A071386710600000003000000051386AD060CFD9C09000000070F350D08000000070000000400000003000000071386AD000CFD9BF90F350CF80000000104548A0713867106000000030CFD9C09000000070F350D080C9A86F80000000700000005000000041386AD060CFD9C09000000090F350D080C9A86F8000000080F8750F90C9A8708000000070000000500000001000000040000000300000009000000000000000200000004"
theorem small_7986845_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7986845_left_root small_7986845_left_fuel small_7986845_left_count small_7986845_left_encoded = true := by
  decide +kernel
theorem small_7986845_left_covered : CoveredBy scale carrier boxes small_7986845_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7986845_left_root small_7986845_left_fuel small_7986845_left_count small_7986845_left_encoded small_7986845_left_checked

theorem cover_7986845 : CoveredBy scale carrier boxes root_7986845 := by
  apply coveredBy_split_literal root_7986845 small_7986845_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0193.root_7987281 coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_7986845_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0193.cover_7987281
#print axioms cover_7986845

def root_7986839 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7986839_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7986839_left_fuel : Nat := 1
def small_7986839_left_count : Nat := 1
def small_7986839_left_encoded : String := "00000001"
theorem small_7986839_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7986839_left_root small_7986839_left_fuel small_7986839_left_count small_7986839_left_encoded = true := by
  decide +kernel
theorem small_7986839_left_covered : CoveredBy scale carrier boxes small_7986839_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7986839_left_root small_7986839_left_fuel small_7986839_left_count small_7986839_left_encoded small_7986839_left_checked

theorem cover_7986839 : CoveredBy scale carrier boxes root_7986839 := by
  apply coveredBy_split_literal root_7986839 small_7986839_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0193.root_7986845 coord1 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_7986839_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0193.cover_7986845
#print axioms cover_7986839

def root_7986838 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7986838_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7986838_right_fuel : Nat := 14
def small_7986838_right_count : Nat := 51
def small_7986838_right_encoded : String := "120700F808A91307120701060000000308A913090000000712073D08050000FA135D80FB0000000204548A010000000700000008000000070000000412073D0608A9130912070108000000040000000912073D08050000FA135D80FB0000000204548A011386710000000000045489F91386ACF8000000010CFD9C070F34D106000000030000000700000008000000081386AD00045489F91386ACF8000000010CFD9C0700000009000000080000000800000000135D44FB0000000900000002000000040000000300000001"
theorem small_7986838_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7986838_right_root small_7986838_right_fuel small_7986838_right_count small_7986838_right_encoded = true := by
  decide +kernel
theorem small_7986838_right_covered : CoveredBy scale carrier boxes small_7986838_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7986838_right_root small_7986838_right_fuel small_7986838_right_count small_7986838_right_encoded small_7986838_right_checked

theorem cover_7986838 : CoveredBy scale carrier boxes root_7986838 := by
  apply coveredBy_split_literal root_7986838 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0193.root_7986839 small_7986838_right_root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0193.cover_7986839
  · exact small_7986838_right_covered
#print axioms cover_7986838

def root_7986832 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7986832_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7986832_left_fuel : Nat := 1
def small_7986832_left_count : Nat := 1
def small_7986832_left_encoded : String := "00000000"
theorem small_7986832_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7986832_left_root small_7986832_left_fuel small_7986832_left_count small_7986832_left_encoded = true := by
  decide +kernel
theorem small_7986832_left_covered : CoveredBy scale carrier boxes small_7986832_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7986832_left_root small_7986832_left_fuel small_7986832_left_count small_7986832_left_encoded small_7986832_left_checked

theorem cover_7986832 : CoveredBy scale carrier boxes root_7986832 := by
  apply coveredBy_split_literal root_7986832 small_7986832_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0193.root_7986838 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_7986832_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0193.cover_7986838
#print axioms cover_7986832

def root_7986831 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7986831_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7986831_right_fuel : Nat := 24
def small_7986831_right_count : Nat := 217
def small_7986831_right_encoded : String := "12073D0008A912F912073CF80000000108A91307120701060000000308A9130912070108000000040000000612073D08050000FA135D80FB000000020CFD9C010F34D100000000000CFD9BF90F350CF80000000104548A07000000061386AD060CFD9C09000000060F350D080C9A86F8000000060F8750F9000000060000000100000004000000030F34D0F8000000060000000100000006135D44FB0CFD9C010F34D100000000000CFD9BF90F350CF80000000100000009000000090F350D000CFD9BF9000000060000000900000000000000020000000412073D0608A913091207010800000004050000FA135D80FB000000020CFD9C010F34D1000000000000000009000000060000000912073D08050000FA135D80FB000000020CFD9C010F34D100000000000CFD9BF90F350CF8000000010CFD9C070F34D106000000030CFD9C090F34D10800000004000000060F350D080C9A86F80F878CF9000000010C9A870800000008000000090F8750F90C9A87080F87510900000004000000080F878D09000000060000000400000001000000040F350D060CFD9C090F34D10800000004000000090F350D080C9A86F80F878CF9000000010C9A870600000009000000080F8750F90C9A87060F875107000000030C9A87080F8751090000000400000008000000090F878D070C9A87080F875109000000040000000800000009000000030000000100000004000000030F34D0F80CFD9C07000000090F350D060000000900000003000000010F350D000CFD9BF90F350CF8000000010CFD9C070F34D106000000030CFD9C09000000060F350D080C9A87000000000600000009000000040F350D060CFD9C09000000090F350D080C9A8700000000090000000900000004000000030F34D0F8000000090000000100000000135D44FB0CFD9C010F34D100000000000CFD9BF90F350CF8000000010CFD9C07000000090F350D060000000900000003000000090F350D000000000900000000000000020000000400000003120700F808A91307120701060000000308A913090000000912073D08050000FA135D80FB000000020CFD9C010F34D100000000000000000800000006135D44FB0CFD9C010000000700000006000000020000000412073D0608A913090000000912073D08050000FA000000090000000900000004000000030000000100000000"
theorem small_7986831_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7986831_right_root small_7986831_right_fuel small_7986831_right_count small_7986831_right_encoded = true := by
  decide +kernel
theorem small_7986831_right_covered : CoveredBy scale carrier boxes small_7986831_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7986831_right_root small_7986831_right_fuel small_7986831_right_count small_7986831_right_encoded small_7986831_right_checked

theorem cover_7986831 : CoveredBy scale carrier boxes root_7986831 := by
  apply coveredBy_split_literal root_7986831 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0193.root_7986832 small_7986831_right_root coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0193.cover_7986832
  · exact small_7986831_right_covered
#print axioms cover_7986831

def root_7986826 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7986826_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7986826_right_fuel : Nat := 1
def small_7986826_right_count : Nat := 1
def small_7986826_right_encoded : String := "00000004"
theorem small_7986826_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7986826_right_root small_7986826_right_fuel small_7986826_right_count small_7986826_right_encoded = true := by
  decide +kernel
theorem small_7986826_right_covered : CoveredBy scale carrier boxes small_7986826_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7986826_right_root small_7986826_right_fuel small_7986826_right_count small_7986826_right_encoded small_7986826_right_checked

theorem cover_7986826 : CoveredBy scale carrier boxes root_7986826 := by
  apply coveredBy_split_literal root_7986826 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0193.root_7986831 small_7986826_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0193.cover_7986831
  · exact small_7986826_right_covered
#print axioms cover_7986826

def root_7986442 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7986442_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7986442_left_fuel : Nat := 18
def small_7986442_left_count : Nat := 175
def small_7986442_left_encoded : String := "1151E9090000000408A91301120701000000000008A912F912073CF80000000108A913071207010600000003050000FA135D80FB000000020500010800000008135D810904548A011386710000000000000000080000000800000004135D44FB000000080000000212073D06050000FA135D80FB000000020500010800000008135D810904548A0113867100000000000CFD9BF90F350CF8000000010CFD9C070F34D106000000030000000800000008000000081386AD000CFD9BF90F350CF8000000010CFD9C070F34D106000000030000000800000008000000080000000000000004135D44FB0500010800000008135D810904548A0113867100000000000000000800000008000000040000000200000003120700F8000000080000000112073D0008A912F912073CF80000000108A913071207010600000003050000FA135D80FB000000020500010800000008135D81090CFD9C010F34D10000000000000000080F350D000CFD9BF90F350CF8000000010000000A000000080000000000000004135D44FB0500010800000008135D81090CFD9C010F34D100000000000000000800000008000000040000000212073D06050000FA135D80FB0000000205000108135D4509000000040CFD9C010F34D100000000000000000800000008135D81090CFD9C010F34D100000000000CFD9BF90F350CF8000000010CFD9C070F34D106000000030000000800000008000000080F350D000CFD9BF90F350CF8000000010CFD9C070F34D10600000003000000080F350D0600000008000000030F34D0F800000008000000010000000000000004135D44FB0500010800000008135D81090CFD9C010F34D10000000000000000080F350D000CFD9BF90F350CF8000000010CFD9C070F34D1060000000300000008000000080000000800000000000000040000000200000003120700F8000000080000000100000000"
theorem small_7986442_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7986442_left_root small_7986442_left_fuel small_7986442_left_count small_7986442_left_encoded = true := by
  decide +kernel
theorem small_7986442_left_covered : CoveredBy scale carrier boxes small_7986442_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7986442_left_root small_7986442_left_fuel small_7986442_left_count small_7986442_left_encoded small_7986442_left_checked

theorem cover_7986442 : CoveredBy scale carrier boxes root_7986442 := by
  apply coveredBy_split_literal root_7986442 small_7986442_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0193.root_7986826 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_7986442_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0193.cover_7986826
#print axioms cover_7986442

def root_7986437 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7986437_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7986437_right_fuel : Nat := 1
def small_7986437_right_count : Nat := 1
def small_7986437_right_encoded : String := "00000003"
theorem small_7986437_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7986437_right_root small_7986437_right_fuel small_7986437_right_count small_7986437_right_encoded = true := by
  decide +kernel
theorem small_7986437_right_covered : CoveredBy scale carrier boxes small_7986437_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7986437_right_root small_7986437_right_fuel small_7986437_right_count small_7986437_right_encoded small_7986437_right_checked

theorem cover_7986437 : CoveredBy scale carrier boxes root_7986437 := by
  apply coveredBy_split_literal root_7986437 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0193.root_7986442 small_7986437_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0193.cover_7986442
  · exact small_7986437_right_covered
#print axioms cover_7986437

def root_7985513 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7985513_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7985513_left_fuel : Nat := 30
def small_7985513_left_count : Nat := 435
def small_7985513_left_encoded : String := "1151E907000000030A0001081151E9090000000408A91301120701000000000008A912F912073CF800000001050000FA135D80FB000000020500010600000005135D81070500010800000005135D810904548A01000000051386AD000CFD9BF90000000500000008000000000000000400000003135D44FB05000106135D4507000000030500010800000005135D810904548A01000000051386AD00000000050000000000000004135D81070500010800000008135D810904548A0113867100000000000000000800000008000000040000000300000002120700F8000000080000000112073D0008A912F912073CF800000001050000FA135D80FB0000000205000106135D4507000000030500010800000005135D81090000000500000004135D81070500010800000005135D81090CFD9C010F34D100000000000CFD9BF900000005000000080F350D000CFD9BF90000000500000008000000000000000400000003135D44FB05000106135D4507000000030500010800000005135D81090000000900000004135D81070500010800000008135D81090CFD9C010F34D100000000000000000800000008000000040000000300000002120700F80000000800000001000000001152250908A91301120701000000000008A912F912073CF80000000108A913091207010800000004050000FA135D80FB0000000205000106135D45070000000304548A0113867100000000000000000900000009135D810704548A0113867100000000000CFD9BF90F350CF80000000104548A0900000009000000090000000900000009000000030000000912073D08050000FA135D80FB0000000205000106135D45070000000304548A0113867100000000000CFD9BF90F350CF8000000010CFD9C09000000050F350D0800000005000000040F34D0F800000005000000011386AD000CFD9BF90F350CF8000000010CFD9C09000000050F350D0800000005000000040F34D0F8000000050000000100000000135D810704548A0113867100000000000CFD9BF90F350CF8000000010CFD9C090F34D108000000040C9A86F80F878CF900000001078000FA00000005000000090F8750F9078000FA128A7CFB000000020780010600000007128A7D07022A458113E1C500000000000AD3578910D1010800000004000000090000000A0000000900000003128A40FB0000000900000002000000010F350D080C9A86F8000000050F8750F90C9A8708000000050F878D09078000FA00000005128A40FB0780010600000005128A7D07022A45810000000A0000000900000003000000020000000400000001000000040F34D0F80CFD9C090F34D10800000004000000090F350D080000000500000004000000011386AD000CFD9BF90F350CF8000000010CFD9C090F34D10800000004000000090F350D080C9A86F80F878CF9000000010C9A870800000005000000090F8750F90C9A8708000000050F878D09078000FA00000005000000090000000400000001000000040F34D0F80CFD9C090000000900000009000000010000000000000003135D44FB05000106135D45070000000304548A0113867100000000000CFD9BF90F350CF8000000010CFD9C09000000090000000A0000000900000009135D810704548A0113867100000000000CFD9BF90F350CF8000000010CFD9C090F34D10800000004000000090F350D080C9A86F80F878CF9000000010C9A870800000008000000090F8750F90C9A87080F87510900000004028000FA13D7ECFB00000002078001060000000500000008000000090F878D09000000090000000400000001000000040F34D0F800000009000000011386AD000CFD9BF90F350CF8000000010CFD9C0900000009000000090000000900000000000000030000000200000004120700F808A913090000000912073D08050000FA135D80FB000000020500010600000009135D810704548A010000000A000000090000000300000009000000040000000112073D0008A912F912073CF80000000108A9130912070108000000040000000912073D08050000FA135D80FB0000000205000106135D4507000000030CFD9C010F34D100000000000CFD9BF90F350CF800000001000000090000000900000009135D81070CFD9C010F34D100000000000CFD9BF90F350CF8000000010CFD9C090F34D10800000004000000090F350D080C9A86F80F878CF900000001000000090F8750F90C9A870800000005000000090000000100000004000000090F350D000CFD9BF90F350CF80000000100000009000000090000000000000003135D44FB0500010600000009135D81070CFD9C010F34D100000000000000000900000009000000030000000200000004120700F800000009000000010000000000000004"
theorem small_7985513_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7985513_left_root small_7985513_left_fuel small_7985513_left_count small_7985513_left_encoded = true := by
  decide +kernel
theorem small_7985513_left_covered : CoveredBy scale carrier boxes small_7985513_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7985513_left_root small_7985513_left_fuel small_7985513_left_count small_7985513_left_encoded small_7985513_left_checked

theorem cover_7985513 : CoveredBy scale carrier boxes root_7985513 := by
  apply coveredBy_split_literal root_7985513 small_7985513_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0193.root_7986437 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_7985513_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0193.cover_7986437
#print axioms cover_7985513

def root_7985508 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7985508_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7985508_right_fuel : Nat := 1
def small_7985508_right_count : Nat := 1
def small_7985508_right_encoded : String := "00000002"
theorem small_7985508_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7985508_right_root small_7985508_right_fuel small_7985508_right_count small_7985508_right_encoded = true := by
  decide +kernel
theorem small_7985508_right_covered : CoveredBy scale carrier boxes small_7985508_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7985508_right_root small_7985508_right_fuel small_7985508_right_count small_7985508_right_encoded small_7985508_right_checked

theorem cover_7985508 : CoveredBy scale carrier boxes root_7985508 := by
  apply coveredBy_split_literal root_7985508 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0193.root_7985513 small_7985508_right_root coord2 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0193.cover_7985513
  · exact small_7985508_right_covered
#print axioms cover_7985508

def root_7970406 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7970406 : CoveredBy scale carrier boxes root_7970406 := by
  apply coveredBy_split_literal root_7970406 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0193.root_7970407 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0193.root_7985508 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0193.cover_7970407
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0193.cover_7985508
#print axioms cover_7970406

def root_7970400 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7970400_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7970400_left_fuel : Nat := 1
def small_7970400_left_count : Nat := 1
def small_7970400_left_encoded : String := "00000001"
theorem small_7970400_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7970400_left_root small_7970400_left_fuel small_7970400_left_count small_7970400_left_encoded = true := by
  decide +kernel
theorem small_7970400_left_covered : CoveredBy scale carrier boxes small_7970400_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7970400_left_root small_7970400_left_fuel small_7970400_left_count small_7970400_left_encoded small_7970400_left_checked

theorem cover_7970400 : CoveredBy scale carrier boxes root_7970400 := by
  apply coveredBy_split_literal root_7970400 small_7970400_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0193.root_7970406 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_7970400_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0193.cover_7970406
#print axioms cover_7970400

def root_7993247 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7993247_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7993247_right_fuel : Nat := 21
def small_7993247_right_count : Nat := 113
def small_7993247_right_encoded : String := "135D44F904548A0113867100000000000CFD9BFB0F350CFA000000020CFD9C070F34D106000000030CFD9C090000000A0F350D080000000A000000040F350D060CFD9C090F34D108000000040C9A86FA000000070F8750FB0C9A87060000000700000005000000020F350D080C9A86FA0F878CFB000000020C9A8706000000070F878D070000000A000000030F8750FB0C9A87060F875107000000030C9A87080F8751090000000400000007000000070F878D070C9A87080000000A0F878D09028000F813D7ECF900000001022A458113E1C500000000000B4D43FA0000000A0000000A0000000A0000000500000004000000030000000200000004000000030F34D0FA0CFD9C070F34D106000000030000000A0F350D060000000700000003000000021386AD000CFD9BFB0F350CFA000000020CFD9C070F34D106000000030000000A0F350D060CFD9C090F34D108000000040C9A86FA000000070F8750FB0C9A8706000000070000000A000000020F350D080C9A86FA0F878CFB00000002000000070F8750FB0C9A87060F87510700000003000000070000000A0000000200000004000000030F34D0FA0CFD9C070000000A0000000A000000020000000000000001"
theorem small_7993247_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7993247_right_root small_7993247_right_fuel small_7993247_right_count small_7993247_right_encoded = true := by
  decide +kernel
theorem small_7993247_right_covered : CoveredBy scale carrier boxes small_7993247_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7993247_right_root small_7993247_right_fuel small_7993247_right_count small_7993247_right_encoded small_7993247_right_checked

theorem cover_7993247 : CoveredBy scale carrier boxes root_7993247 := by
  apply coveredBy_split_literal root_7993247 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2996.root small_7993247_right_root coord1 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2996.covered
  · exact small_7993247_right_covered
#print axioms cover_7993247

def root_7993242 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7993242_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7993242_right_fuel : Nat := 1
def small_7993242_right_count : Nat := 1
def small_7993242_right_encoded : String := "00000004"
theorem small_7993242_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7993242_right_root small_7993242_right_fuel small_7993242_right_count small_7993242_right_encoded = true := by
  decide +kernel
theorem small_7993242_right_covered : CoveredBy scale carrier boxes small_7993242_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7993242_right_root small_7993242_right_fuel small_7993242_right_count small_7993242_right_encoded small_7993242_right_checked

theorem cover_7993242 : CoveredBy scale carrier boxes root_7993242 := by
  apply coveredBy_split_literal root_7993242 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0193.root_7993247 small_7993242_right_root coord4 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0193.cover_7993247
  · exact small_7993242_right_covered
#print axioms cover_7993242

def root_7992864 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7992864_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7992864_left_fuel : Nat := 21
def small_7992864_left_count : Nat := 177
def small_7992864_left_encoded : String := "1207010800000004050000F8135D80F90000000104548A0113867100000000000CFD9BFB0F350CFA000000020CFD9C070F34D1060000000304548A091386710800000004000000051386AD080C9A86FA0F878CFB000000020000000800000005000000040F350D0604548A0913867108000000040C9A86FA0F878CFB00000002000000080F8750FB0C9A87060F87510700000003078000F8128A7CF900000001000000080000000500000005000000021386AD080C9A86FA0F878CFB000000020C9A8706000000070F878D0700000008000000030F8750FB0C9A87060F87510700000003078000F8128A7CF900000001022A45810000000800000007000000080F878D07078000F8128A7CF900000001022A45810000000813E20100067ECE8900000006000000060000000000000005000000030000000200000004000000030F34D0FA0CFD9C07000000080F350D060000000700000003000000021386AD000CFD9BFB0F350CFA000000020CFD9C070F34D10600000003000000060F350D0604548A0913867108000000040C9A86FA000000060F8750FB0C9A87060F87510700000003078000F8000000060000000600000006000000021386AD080C9A86FA0F878CFB00000002000000070F8750FB0C9A87060F87510700000003000000070F878D07078000F80000000600000006000000030000000200000004000000030F34D0FA0CFD9C070F34D10600000003000000060F350D0600000007000000030000000200000000135D44F904548A0113867100000000000CFD9BFB0F350CFA000000020CFD9C07000000080F350D060000000800000003000000081386AD000CFD9BFB0F350CFA000000020CFD9C070000000A0F350D0604548A0913867108000000040C9A86FA00000007000000051386AD080C9A86FA000000070F8750FB0C9A870600000007000000050000000200000004000000030000000A0000000000000001"
theorem small_7992864_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7992864_left_root small_7992864_left_fuel small_7992864_left_count small_7992864_left_encoded = true := by
  decide +kernel
theorem small_7992864_left_covered : CoveredBy scale carrier boxes small_7992864_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7992864_left_root small_7992864_left_fuel small_7992864_left_count small_7992864_left_encoded small_7992864_left_checked

theorem cover_7992864 : CoveredBy scale carrier boxes root_7992864 := by
  apply coveredBy_split_literal root_7992864 small_7992864_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0193.root_7993242 coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_7992864_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0193.cover_7993242
#print axioms cover_7992864

def root_7992859 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7992859_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7992859_right_fuel : Nat := 1
def small_7992859_right_count : Nat := 1
def small_7992859_right_encoded : String := "00000003"
theorem small_7992859_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7992859_right_root small_7992859_right_fuel small_7992859_right_count small_7992859_right_encoded = true := by
  decide +kernel
theorem small_7992859_right_covered : CoveredBy scale carrier boxes small_7992859_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7992859_right_root small_7992859_right_fuel small_7992859_right_count small_7992859_right_encoded small_7992859_right_checked

theorem cover_7992859 : CoveredBy scale carrier boxes root_7992859 := by
  apply coveredBy_split_literal root_7992859 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0193.root_7992864 small_7992859_right_root coord3 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0193.cover_7992864
  · exact small_7992859_right_covered
#print axioms cover_7992859

def root_7992691 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7992691_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7992691_left_fuel : Nat := 18
def small_7992691_left_count : Nat := 79
def small_7992691_left_encoded : String := "120701060000000308A913091207010800000004050000F8135D80F90000000104548A0113867100000000000CFD9BFB0000000600000008000000060000000512073D08050000F8135D80F90000000104548A0113867100000000000CFD9BFB0F350CFA0000000204548A0713867106000000030CFD9C090000000A0F350D080000000A000000041386AD060CFD9C090F34D108000000040C9A86FA0000000A000000050F350D080C9A86FA0F878CFB000000020000000A0F8750FB0C9A87080000000A0F878D090000000A000000040000000200000004000000030F34D0FA0000000A000000021386AD000CFD9BFB0F350CFA0000000204548A070000000A0000000A0000000A00000000135D44F904548A0113867100000000000CFD9BFB0F350CFA000000020000000A0000000A0000000A0000000100000004"
theorem small_7992691_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7992691_left_root small_7992691_left_fuel small_7992691_left_count small_7992691_left_encoded = true := by
  decide +kernel
theorem small_7992691_left_covered : CoveredBy scale carrier boxes small_7992691_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7992691_left_root small_7992691_left_fuel small_7992691_left_count small_7992691_left_encoded small_7992691_left_checked

theorem cover_7992691 : CoveredBy scale carrier boxes root_7992691 := by
  apply coveredBy_split_literal root_7992691 small_7992691_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0193.root_7992859 coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_7992691_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0193.cover_7992859
#print axioms cover_7992691

def root_7992685 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7992685_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7992685_left_fuel : Nat := 1
def small_7992685_left_count : Nat := 1
def small_7992685_left_encoded : String := "00000002"
theorem small_7992685_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7992685_left_root small_7992685_left_fuel small_7992685_left_count small_7992685_left_encoded = true := by
  decide +kernel
theorem small_7992685_left_covered : CoveredBy scale carrier boxes small_7992685_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7992685_left_root small_7992685_left_fuel small_7992685_left_count small_7992685_left_encoded small_7992685_left_checked

theorem cover_7992685 : CoveredBy scale carrier boxes root_7992685 := by
  apply coveredBy_split_literal root_7992685 small_7992685_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0193.root_7992691 coord2 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_7992685_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0193.cover_7992691
#print axioms cover_7992685

def root_7992684 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7992684_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7992684_right_fuel : Nat := 14
def small_7992684_right_count : Nat := 47
def small_7992684_right_encoded : String := "120700FA08A9130712070106000000030000000A12073D0608A913091207010800000004050000F8135D80F90000000104548A0100000008000000070000000812073D08050000F8135D80F90000000104548A011386710000000000045489FB1386ACFA000000020CFD9C070F34D106000000030000000A00000007000000071386AD00045489FB1386ACFA000000020CFD9C070000000A000000070000000700000000135D44F90000000A00000001000000040000000300000002"
theorem small_7992684_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7992684_right_root small_7992684_right_fuel small_7992684_right_count small_7992684_right_encoded = true := by
  decide +kernel
theorem small_7992684_right_covered : CoveredBy scale carrier boxes small_7992684_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7992684_right_root small_7992684_right_fuel small_7992684_right_count small_7992684_right_encoded small_7992684_right_checked

theorem cover_7992684 : CoveredBy scale carrier boxes root_7992684 := by
  apply coveredBy_split_literal root_7992684 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0193.root_7992685 small_7992684_right_root coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0193.cover_7992685
  · exact small_7992684_right_covered
#print axioms cover_7992684

def root_7992678 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7992678_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7992678_left_fuel : Nat := 1
def small_7992678_left_count : Nat := 1
def small_7992678_left_encoded : String := "00000000"
theorem small_7992678_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7992678_left_root small_7992678_left_fuel small_7992678_left_count small_7992678_left_encoded = true := by
  decide +kernel
theorem small_7992678_left_covered : CoveredBy scale carrier boxes small_7992678_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7992678_left_root small_7992678_left_fuel small_7992678_left_count small_7992678_left_encoded small_7992678_left_checked

theorem cover_7992678 : CoveredBy scale carrier boxes root_7992678 := by
  apply coveredBy_split_literal root_7992678 small_7992678_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0193.root_7992684 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_7992678_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0193.cover_7992684
#print axioms cover_7992678

def root_7992677 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7992677_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7992677_right_fuel : Nat := 24
def small_7992677_right_count : Nat := 209
def small_7992677_right_encoded : String := "12073D0008A912FB12073CFA0000000208A91307120701060000000308A913090000000A12073D08050000F8135D80F9000000010CFD9C010F34D100000000000000000A000000060000000A0000000412073D0608A913091207010800000004050000F8135D80F9000000010CFD9C010F34D100000000000CFD9BFB0F350CFA000000020CFD9C07000000060F350D0604548A09000000061386AD080C9A86FA000000060F8750FB000000060000000200000004000000030F34D0FA000000060000000200000006135D44F90CFD9C010F34D100000000000CFD9BFB0F350CFA000000020000000A0000000A0F350D000CFD9BFB000000060000000A000000000000000112073D08050000F8135D80F9000000010CFD9C010F34D100000000000CFD9BFB0F350CFA000000020CFD9C070F34D106000000030CFD9C090000000A0F350D080000000A000000040F350D060CFD9C090F34D108000000040C9A86FA0F878CFB000000020C9A8706000000070000000A0F8750FB0C9A87060F87510700000003000000070F878D070000000600000003000000020F350D080C9A86FA0F878CFB000000020C9A8706000000070000000A0F8750FB0C9A87060F875107000000030C9A87080F8751090000000400000007000000070F878D070000000A000000030000000200000004000000030F34D0FA0CFD9C070000000A0F350D060CFD9C090000000A0000000700000003000000020F350D000CFD9BFB0F350CFA000000020CFD9C070F34D106000000030000000A0F350D060CFD9C090F34D108000000040C9A8700000000060000000A0F350D080C9A87000000000A0000000A00000004000000030F34D0FA0000000A0000000200000000135D44F90CFD9C010F34D100000000000CFD9BFB0F350CFA000000020CFD9C070000000A0F350D060CFD9C090000000A0F350D080000000A00000004000000030000000A0F350D000000000A00000000000000010000000400000003120700FA08A913070000000A12073D0608A913091207010800000004050000F8135D80F9000000010CFD9C010F34D100000000000000000700000006135D44F90CFD9C0100000008000000060000000112073D08050000F80000000A0000000A00000004000000030000000200000000"
theorem small_7992677_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7992677_right_root small_7992677_right_fuel small_7992677_right_count small_7992677_right_encoded = true := by
  decide +kernel
theorem small_7992677_right_covered : CoveredBy scale carrier boxes small_7992677_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7992677_right_root small_7992677_right_fuel small_7992677_right_count small_7992677_right_encoded small_7992677_right_checked

theorem cover_7992677 : CoveredBy scale carrier boxes root_7992677 := by
  apply coveredBy_split_literal root_7992677 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0193.root_7992678 small_7992677_right_root coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0193.cover_7992678
  · exact small_7992677_right_covered
#print axioms cover_7992677

def root_7992672 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7992672_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7992672_right_fuel : Nat := 1
def small_7992672_right_count : Nat := 1
def small_7992672_right_encoded : String := "00000004"
theorem small_7992672_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7992672_right_root small_7992672_right_fuel small_7992672_right_count small_7992672_right_encoded = true := by
  decide +kernel
theorem small_7992672_right_covered : CoveredBy scale carrier boxes small_7992672_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7992672_right_root small_7992672_right_fuel small_7992672_right_count small_7992672_right_encoded small_7992672_right_checked

theorem cover_7992672 : CoveredBy scale carrier boxes root_7992672 := by
  apply coveredBy_split_literal root_7992672 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0193.root_7992677 small_7992672_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0193.cover_7992677
  · exact small_7992672_right_covered
#print axioms cover_7992672

def root_7991990 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7991990_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7991990_left_fuel : Nat := 28
def small_7991990_left_count : Nat := 321
def small_7991990_left_encoded : String := "1151E9090000000408A91301120701000000000008A912FB12073CFA0000000208A913071207010600000003050000F8135D80F90000000105000108135D45090000000404548A0113867100000000000000000A0000000A135D810904548A0113867100000000000CFD9BFB0F350CFA0000000204548A070000000A0000000A0000000A0000000A000000040000000A12073D06050000F8135D80F90000000105000108135D45090000000404548A0113867100000000000CFD9BFB0F350CFA000000020CFD9C07000000050F350D0600000005000000030F34D0FA00000005000000021386AD000CFD9BFB0F350CFA000000020CFD9C07000000050F350D0600000005000000030F34D0FA000000050000000200000000135D810904548A0113867100000000000CFD9BFB0F350CFA000000020CFD9C070F34D106000000030C9A86FA0F878CFB00000002078000F8000000050000000A0F8750FB078000F8128A7CF9000000010780010800000008128A7D09022A458113E1C500000000000AD3578710D101060000000300000009000000090000000A00000004128A40F90000000A00000001000000020F350D060C9A86FA000000050F8750FB0C9A8706000000050F878D07078000F800000005128A40F90780010800000005128A7D09022A4581000000090000000A00000004000000010000000300000002000000030F34D0FA0CFD9C070F34D10600000003000000090F350D060000000500000003000000021386AD000CFD9BFB0F350CFA000000020CFD9C070F34D106000000030000000A0F350D060C9A86FA0F878CFB000000020C9A8706000000050000000A0F8750FB0C9A8706000000050F878D07078000F8000000050000000A0000000300000002000000030F34D0FA0CFD9C070000000A0000000A000000020000000000000004135D44F905000108135D45090000000404548A0113867100000000000CFD9BFB0F350CFA000000020CFD9C070000000A00000009000000090000000A135D810904548A0113867100000000000CFD9BFB0F350CFA000000020CFD9C070F34D106000000030000000A0F350D060C9A86FA0F878CFB000000020C9A870600000007000000090F8750FB0C9A87060F87510700000003028000F813D7ECF9000000010780010800000005000000070000000A0F878D070000000A0000000300000002000000030F34D0FA0000000A000000021386AD000CFD9BFB0F350CFA000000020CFD9C070000000A0000000A0000000A00000000000000040000000100000003120700FA08A913070000000A12073D06050000F8135D80F900000001050001080000000A135D810904548A01000000090000000A000000040000000A000000030000000212073D0008A912FB12073CFA0000000208A9130712070106000000030000000A12073D06050000F8135D80F90000000105000108135D4509000000040CFD9C010F34D100000000000CFD9BFB0F350CFA000000020000000A0000000A0000000A135D81090CFD9C010F34D100000000000CFD9BFB0F350CFA000000020CFD9C070F34D106000000030000000A0F350D060C9A86FA0F878CFB000000020000000A0F8750FB0C9A8706000000050000000A00000002000000030000000A0F350D000CFD9BFB0F350CFA000000020000000A0000000A0000000000000004135D44F9050001080000000A135D81090CFD9C010F34D100000000000000000A0000000A000000040000000100000003120700FA0000000A0000000200000000"
theorem small_7991990_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7991990_left_root small_7991990_left_fuel small_7991990_left_count small_7991990_left_encoded = true := by
  decide +kernel
theorem small_7991990_left_covered : CoveredBy scale carrier boxes small_7991990_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7991990_left_root small_7991990_left_fuel small_7991990_left_count small_7991990_left_encoded small_7991990_left_checked

theorem cover_7991990 : CoveredBy scale carrier boxes root_7991990 := by
  apply coveredBy_split_literal root_7991990 small_7991990_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0193.root_7992672 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_7991990_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0193.cover_7992672
#print axioms cover_7991990

def root_7991985 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7991985_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7991985_right_fuel : Nat := 1
def small_7991985_right_count : Nat := 1
def small_7991985_right_encoded : String := "00000003"
theorem small_7991985_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7991985_right_root small_7991985_right_fuel small_7991985_right_count small_7991985_right_encoded = true := by
  decide +kernel
theorem small_7991985_right_covered : CoveredBy scale carrier boxes small_7991985_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7991985_right_root small_7991985_right_fuel small_7991985_right_count small_7991985_right_encoded small_7991985_right_checked

theorem cover_7991985 : CoveredBy scale carrier boxes root_7991985 := by
  apply coveredBy_split_literal root_7991985 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0193.root_7991990 small_7991985_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0193.cover_7991990
  · exact small_7991985_right_covered
#print axioms cover_7991985

def root_7991375 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7991375_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7991375_left_fuel : Nat := 20
def small_7991375_left_count : Nat := 281
def small_7991375_left_encoded : String := "1151E907000000030A0001081151E9090000000408A91301120701000000000008A912FB12073CFA00000002050000F8135D80F9000000010500010600000005135D81070500010800000005135D810904548A01000000051386AD000CFD9BFB0000000500000007000000000000000400000003135D44F905000106135D45070000000300000007135D810705000108135D45090000000404548A01000000051386AD000000000500000000135D810904548A0113867100000000000000000700000007000000040000000300000001120700FA000000070000000212073D0008A912FB12073CFA00000002050000F8135D80F90000000105000106135D450700000003050001080000000500000007135D81070500010800000005135D81090CFD9C010F34D100000000000CFD9BFB00000005000000070F350D000CFD9BFB0000000500000007000000000000000400000003135D44F905000106135D45070000000300000007135D8107050001080000000A135D81090CFD9C010F34D100000000000000000700000007000000040000000300000001120700FA0000000700000002000000001152250908A91301120701000000000008A912FB12073CFA0000000208A913091207010800000004050000F8135D80F9000000010500010600000007135D810704548A011386710000000000000000070000000700000003135D44F9000000070000000112073D08050000F8135D80F9000000010500010600000007135D810704548A0113867100000000000CFD9BFB0F350CFA000000020CFD9C090F34D108000000040000000700000007000000071386AD000CFD9BFB0F350CFA000000020CFD9C090F34D108000000040000000700000007000000070000000000000003135D44F90500010600000007135D810704548A0113867100000000000000000700000007000000030000000100000004120700FA000000070000000212073D0008A912FB12073CFA0000000208A913091207010800000004050000F8135D80F9000000010500010600000007135D81070CFD9C010F34D10000000000000000070F350D000CFD9BFB0F350CFA0000000200000009000000070000000000000003135D44F90500010600000007135D81070CFD9C010F34D100000000000000000700000007000000030000000112073D08050000F8135D80F90000000105000106135D4507000000030CFD9C010F34D100000000000000000700000007135D81070CFD9C010F34D100000000000CFD9BFB0F350CFA000000020CFD9C090F34D108000000040000000700000007000000070F350D000CFD9BFB0F350CFA000000020CFD9C090F34D10800000004000000070F350D0800000007000000040F34D0FA00000007000000020000000000000003135D44F90500010600000007135D81070CFD9C010F34D10000000000000000070F350D000CFD9BFB0F350CFA000000020CFD9C090F34D1080000000400000007000000070000000700000000000000030000000100000004120700FA00000007000000020000000000000004"
theorem small_7991375_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7991375_left_root small_7991375_left_fuel small_7991375_left_count small_7991375_left_encoded = true := by
  decide +kernel
theorem small_7991375_left_covered : CoveredBy scale carrier boxes small_7991375_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7991375_left_root small_7991375_left_fuel small_7991375_left_count small_7991375_left_encoded small_7991375_left_checked

theorem cover_7991375 : CoveredBy scale carrier boxes root_7991375 := by
  apply coveredBy_split_literal root_7991375 small_7991375_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0193.root_7991985 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_7991375_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0193.cover_7991985
#print axioms cover_7991375

def root_7991369 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7991369_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7991369_left_fuel : Nat := 1
def small_7991369_left_count : Nat := 1
def small_7991369_left_encoded : String := "00000002"
theorem small_7991369_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7991369_left_root small_7991369_left_fuel small_7991369_left_count small_7991369_left_encoded = true := by
  decide +kernel
theorem small_7991369_left_covered : CoveredBy scale carrier boxes small_7991369_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7991369_left_root small_7991369_left_fuel small_7991369_left_count small_7991369_left_encoded small_7991369_left_checked

theorem cover_7991369 : CoveredBy scale carrier boxes root_7991369 := by
  apply coveredBy_split_literal root_7991369 small_7991369_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0193.root_7991375 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_7991369_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0193.cover_7991375
#print axioms cover_7991369

def root_7997022 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7997022 : CoveredBy scale carrier boxes root_7997022 := by
  apply coveredBy_split_literal root_7997022 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2997.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2998.root coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2997.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2998.covered
#print axioms cover_7997022

def root_7997016 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7997016_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7997016_left_fuel : Nat := 1
def small_7997016_left_count : Nat := 1
def small_7997016_left_encoded : String := "00000003"
theorem small_7997016_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7997016_left_root small_7997016_left_fuel small_7997016_left_count small_7997016_left_encoded = true := by
  decide +kernel
theorem small_7997016_left_covered : CoveredBy scale carrier boxes small_7997016_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7997016_left_root small_7997016_left_fuel small_7997016_left_count small_7997016_left_encoded small_7997016_left_checked

theorem cover_7997016 : CoveredBy scale carrier boxes root_7997016 := by
  apply coveredBy_split_literal root_7997016 small_7997016_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0193.root_7997022 coord3 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_7997016_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0193.cover_7997022
#print axioms cover_7997016

def root_8006518 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8006518 : CoveredBy scale carrier boxes root_8006518 := by
  apply coveredBy_split_literal root_8006518 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3001.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3002.root coord4 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3001.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3002.covered
#print axioms cover_8006518

def root_8006513 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8006513_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(13027072), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8006513_right_fuel : Nat := 1
def small_8006513_right_count : Nat := 1
def small_8006513_right_encoded : String := "00000003"
theorem small_8006513_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8006513_right_root small_8006513_right_fuel small_8006513_right_count small_8006513_right_encoded = true := by
  decide +kernel
theorem small_8006513_right_covered : CoveredBy scale carrier boxes small_8006513_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8006513_right_root small_8006513_right_fuel small_8006513_right_count small_8006513_right_encoded small_8006513_right_checked

theorem cover_8006513 : CoveredBy scale carrier boxes root_8006513 := by
  apply coveredBy_split_literal root_8006513 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0193.root_8006518 small_8006513_right_root coord3 true (13027072)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0193.cover_8006518
  · exact small_8006513_right_covered
#print axioms cover_8006513

def root_8004009 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8004009 : CoveredBy scale carrier boxes root_8004009 := by
  apply coveredBy_split_literal root_8004009 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3000.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0193.root_8006513 coord3 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3000.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0193.cover_8006513
#print axioms cover_8004009

def root_8004004 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8004004_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8004004_right_fuel : Nat := 1
def small_8004004_right_count : Nat := 1
def small_8004004_right_encoded : String := "00000004"
theorem small_8004004_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8004004_right_root small_8004004_right_fuel small_8004004_right_count small_8004004_right_encoded = true := by
  decide +kernel
theorem small_8004004_right_covered : CoveredBy scale carrier boxes small_8004004_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8004004_right_root small_8004004_right_fuel small_8004004_right_count small_8004004_right_encoded small_8004004_right_checked

theorem cover_8004004 : CoveredBy scale carrier boxes root_8004004 := by
  apply coveredBy_split_literal root_8004004 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0193.root_8004009 small_8004004_right_root coord4 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0193.cover_8004009
  · exact small_8004004_right_covered
#print axioms cover_8004004

def root_8003454 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8003454_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8003454_left_fuel : Nat := 33
def small_8003454_left_count : Nat := 257
def small_8003454_left_encoded : String := "0F34D108000000040C9A87060F87510700000003078000F8128A7CF900000001078000FA128A7CFB00000002022A458113E1C500000000000AD3578910D10108000000040B4D440610801107000000030000000710804D0708C000F800000009000000050000000310D13D080B4D4406108011070000000308C000F811FC24F90000000108C000FA0000000711FBE8FB000000090000000211FBE8F9000000070000000110804D0708C000F811FC24F90000000108C000FA11FC24FB000000020115234113F85900000000000BE879C9101171080000000400000007000000070000000711FBE8FB000000090000000211FBE8F908C000FA11FC24FB00000002000000070000000500000001000000030000000413E201000AD3578910D10108000000040000000910D13D080B4D44060000000710804D0708C000F811FC24F9000000010000000911FBE8F908C000FA000000070000000900000001000000030000000400000000128A40FB022A458113E1C500000000000AD3578910D10108000000040000000510D13D080B4D44060000000900000005000000040000000900000002128A40F9078000FA128A7CFB00000002022A458113E1C500000000000AD3578910D10108000000040000000510D13D080B4D440600000007000000050000000413E201000AD3578910D101080000000400000007000000070000000000000005000000010F878D07078000F8128A7CF900000001078000FA128A7CFB00000002022A458113E1C500000000000AD3578910D10108000000040000000510D13D080DE7CA060E5FD9070000000308C000F811FC24F90000000108C000FA11FC24FB000000020115234113F85900000000000BE879C91011710800000004000000051011AD080D4128860EFA110700000003096000F811AABCF900000001096000FA11AABCFB00000002000000070000000911AA80F9096000FA0000000700000005000000010EFA4D07096000F811AABCF900000001096000FA11AABCFB00000002008A922113FDF900000000000C730AE9000000080FA745080D947946000000080000000500000004000000090000000500000005000000030000000413F895000BE879C9000000091011AD080D412886000000090EFA4D07000000090000000300000004000000000000000500000005000000050000000413E201000AD3578910D10108000000040000000510D13D080DE7CA060E5FD9070000000308C000F811FC24F9000000010000000911FBE8F908C000FA11FC24FB00000002033F67C113BBF500000000000BE879C900000005000000070000000700000005000000010E60150708C000F811FC24F90000000108C000FA11FC24FB00000002000000090000000500000005000000030000000400000000000000050000000500000003"
theorem small_8003454_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8003454_left_root small_8003454_left_fuel small_8003454_left_count small_8003454_left_encoded = true := by
  decide +kernel
theorem small_8003454_left_covered : CoveredBy scale carrier boxes small_8003454_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8003454_left_root small_8003454_left_fuel small_8003454_left_count small_8003454_left_encoded small_8003454_left_checked

theorem cover_8003454 : CoveredBy scale carrier boxes root_8003454 := by
  apply coveredBy_split_literal root_8003454 small_8003454_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0193.root_8004004 coord4 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_8003454_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0193.cover_8004004
#print axioms cover_8003454

def root_8003449 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8003449_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8003449_right_fuel : Nat := 1
def small_8003449_right_count : Nat := 1
def small_8003449_right_encoded : String := "00000003"
theorem small_8003449_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8003449_right_root small_8003449_right_fuel small_8003449_right_count small_8003449_right_encoded = true := by
  decide +kernel
theorem small_8003449_right_covered : CoveredBy scale carrier boxes small_8003449_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8003449_right_root small_8003449_right_fuel small_8003449_right_count small_8003449_right_encoded small_8003449_right_checked

theorem cover_8003449 : CoveredBy scale carrier boxes root_8003449 := by
  apply coveredBy_split_literal root_8003449 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0193.root_8003454 small_8003449_right_root coord3 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0193.cover_8003454
  · exact small_8003449_right_covered
#print axioms cover_8003449

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0193
