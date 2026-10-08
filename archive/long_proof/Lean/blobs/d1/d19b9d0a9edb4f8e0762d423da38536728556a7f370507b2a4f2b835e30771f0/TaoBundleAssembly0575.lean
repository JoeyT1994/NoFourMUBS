import TaoBundleAssembly0574
import TaoBundleChunkBatch0784
import TaoBundleChunkBatch0785
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0575
def root_8367978 : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8367978_right_root : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8367978_right_fuel : Nat := 19
def small_8367978_right_count : Nat := 155
def small_8367978_right_encoded : String := "0F34D0F80CFD9C050F34D104000000020CFD9BFD0F350CFC00000003045489FF1386AD080C9A86FC0F878CFD000000030AD3578110D10100000000000AD3577910D13CF8000000010AD3578510D1010400000002067ECE7F000000070000000710D13D04067ECE7F0000000612EA590800000004000000060000000210D100F80AD3578500000006000000050000000110D13D000AD3577910D13CF8000000010AD3578510D10104000000020000000710D13D04000000050000000210D100F80000000500000001000000000F8750FD0AD357810000000710D13D000000000700000000000000030000000413867108000000040C9A86FC0F878CFD000000030AD3578110D10100000000000AD3577910D13CF8000000010AD3578510D10104000000020000000A10D13D04000000050000000210D100F8000000050000000110D13D0000000005000000000F8750FD0AD3578110D10100000000000AD3577910D13CF8000000010AD357850000000710D13D04022A457F0000000613E1C508000000040B4D43FC0000000A00000007000000020000000710D13D000AD3577910D13CF8000000010AD357850000000710D13D04022A457F0000000700000007000000020000000700000000000000030F34D0FC00000005000000030F350D040CFD9BFD0F350CFC00000003045489FF1386AD080C9A8704000000050F878D050C9A86FC0000000500000006000000020000000413867108000000040C9A8704000000050F878D050C9A86FC000000050F8750FD0AD3578110D10100000000000000000610D13D00000000050000000000000003000000020F34D0FC00000005000000030000000200000001"
theorem small_8367978_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8367978_right_root small_8367978_right_fuel small_8367978_right_count small_8367978_right_encoded = true := by
  decide +kernel
theorem small_8367978_right_covered : CoveredBy scale carrier boxes small_8367978_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8367978_right_root small_8367978_right_fuel small_8367978_right_count small_8367978_right_encoded small_8367978_right_checked

theorem cover_8367978 : CoveredBy scale carrier boxes root_8367978 := by
  apply coveredBy_split_literal root_8367978 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0574.root_8367979 small_8367978_right_root coord1 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0574.cover_8367979
  · exact small_8367978_right_covered
#print axioms cover_8367978

def root_8367972 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8367972_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12755968)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8367972_left_fuel : Nat := 1
def small_8367972_left_count : Nat := 1
def small_8367972_left_encoded : String := "00000000"
theorem small_8367972_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8367972_left_root small_8367972_left_fuel small_8367972_left_count small_8367972_left_encoded = true := by
  decide +kernel
theorem small_8367972_left_covered : CoveredBy scale carrier boxes small_8367972_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8367972_left_root small_8367972_left_fuel small_8367972_left_count small_8367972_left_encoded small_8367972_left_checked

theorem cover_8367972 : CoveredBy scale carrier boxes root_8367972 := by
  apply coveredBy_split_literal root_8367972 small_8367972_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0575.root_8367978 coord0 false (12755968)
  · decide +kernel
  · decide +kernel
  · exact small_8367972_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0575.cover_8367978
#print axioms cover_8367972

def root_8373957 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8373957 : CoveredBy scale carrier boxes root_8373957 := by
  apply coveredBy_split_literal root_8373957 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3136.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3137.root coord2 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3136.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3137.covered
#print axioms cover_8373957

def root_8373951 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8373951_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8373951_left_fuel : Nat := 1
def small_8373951_left_count : Nat := 1
def small_8373951_left_encoded : String := "00000001"
theorem small_8373951_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8373951_left_root small_8373951_left_fuel small_8373951_left_count small_8373951_left_encoded = true := by
  decide +kernel
theorem small_8373951_left_covered : CoveredBy scale carrier boxes small_8373951_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8373951_left_root small_8373951_left_fuel small_8373951_left_count small_8373951_left_encoded small_8373951_left_checked

theorem cover_8373951 : CoveredBy scale carrier boxes root_8373951 := by
  apply coveredBy_split_literal root_8373951 small_8373951_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0575.root_8373957 coord1 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_8373951_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0575.cover_8373957
#print axioms cover_8373951

def root_8373950 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8373950_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8373950_right_fuel : Nat := 12
def small_8373950_right_count : Nat := 35
def small_8373950_right_encoded : String := "0F34D0F80CFD9C050F34D104000000020CFD9BFD0F350CFC00000003045489FF1386AD080C9A8700000000050F878D010C9A86FC0000000500000007000000000000000413867108000000040C9A8700000000050F878D010C9A86FC000000050F8750FD0000000700000003000000000F34D0FC00000005000000030F350D04000000050000000200000001"
theorem small_8373950_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8373950_right_root small_8373950_right_fuel small_8373950_right_count small_8373950_right_encoded = true := by
  decide +kernel
theorem small_8373950_right_covered : CoveredBy scale carrier boxes small_8373950_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8373950_right_root small_8373950_right_fuel small_8373950_right_count small_8373950_right_encoded small_8373950_right_checked

theorem cover_8373950 : CoveredBy scale carrier boxes root_8373950 := by
  apply coveredBy_split_literal root_8373950 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0575.root_8373951 small_8373950_right_root coord1 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0575.cover_8373951
  · exact small_8373950_right_covered
#print axioms cover_8373950

def root_8373945 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8373945_right_root : ZRayBox := fun j => (#[⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8373945_right_fuel : Nat := 1
def small_8373945_right_count : Nat := 1
def small_8373945_right_encoded : String := "00000000"
theorem small_8373945_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8373945_right_root small_8373945_right_fuel small_8373945_right_count small_8373945_right_encoded = true := by
  decide +kernel
theorem small_8373945_right_covered : CoveredBy scale carrier boxes small_8373945_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8373945_right_root small_8373945_right_fuel small_8373945_right_count small_8373945_right_encoded small_8373945_right_checked

theorem cover_8373945 : CoveredBy scale carrier boxes root_8373945 := by
  apply coveredBy_split_literal root_8373945 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0575.root_8373950 small_8373945_right_root coord0 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0575.cover_8373950
  · exact small_8373945_right_covered
#print axioms cover_8373945

def root_8367971 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8367971 : CoveredBy scale carrier boxes root_8367971 := by
  apply coveredBy_split_literal root_8367971 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0575.root_8367972 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0575.root_8373945 coord0 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0575.cover_8367972
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0575.cover_8373945
#print axioms cover_8367971

def root_8367965 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8367965_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8367965_left_fuel : Nat := 1
def small_8367965_left_count : Nat := 1
def small_8367965_left_encoded : String := "00000004"
theorem small_8367965_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8367965_left_root small_8367965_left_fuel small_8367965_left_count small_8367965_left_encoded = true := by
  decide +kernel
theorem small_8367965_left_covered : CoveredBy scale carrier boxes small_8367965_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8367965_left_root small_8367965_left_fuel small_8367965_left_count small_8367965_left_encoded small_8367965_left_checked

theorem cover_8367965 : CoveredBy scale carrier boxes root_8367965 := by
  apply coveredBy_split_literal root_8367965 small_8367965_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0575.root_8367971 coord4 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_8367965_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0575.cover_8367971
#print axioms cover_8367965

def root_8367321 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8367321_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8367321_left_fuel : Nat := 22
def small_8367321_left_count : Nat := 291
def small_8367321_left_encoded : String := "12073D080CFD9C010F34D100000000000CFD9BF90F350CF8000000010CFD9C050F34D104000000020CFD9BFD0F350CFC000000030CFD9BFF0F350D080C9A86F80F878CF9000000010C9A86FC00000006000000070F8750F90000000900000001000000040F34D108000000040C9A86F80F878CF9000000010C9A86FC0F878CFD000000030AD3578110D10100000000000AD357850000000910D13D04000000060000000210D13D000AD3578510D10104000000020000000710D13D040AD3577F0000000610D10108000000040000000600000002000000000F8750FD0AD357810000000700000007000000030F8750F90C9A86FC0F878CFD000000030AD357810000000910D13D0000000008000000000F8750FD0AD357810000000710D13D00000000070000000000000003000000010F34D0FC0CFD9BFF000000080F34D108000000040C9A86F80F878CF9000000010AD3578110D101000000000000000009000000080F8750F90000000800000001000000030F350D040CFD9BFD0F350CFC000000030CFD9BFF0F350D0800000006000000040F34D108000000040C9A86F80F878CF9000000010C9A8704000000060F878D0500000006000000020F8750F900000009000000010F34D0FC0CFD9BFF0F350D0800000009000000040F34D108000000040C9A86F8000000050000000900000003000000020F34D0F80CFD9C050F34D104000000020CFD9BFD0F350CFC000000030CFD9BFF000000060F34D108000000040C9A86FC0F878CFD000000030AD3578110D101000000000000000006000000060F8750FD00000006000000030F34D0FC0CFD9BFF0F350D08000000050000000400000005000000030F350D040CFD9BFD000000060F34D0FC000000050000000300000002000000010F350D000CFD9BF90F350CF8000000010CFD9C050F34D104000000020CFD9BFD0F350CFC000000030CFD9BFF0F350D0800000008000000040F34D108000000040C9A87000F87510100000000000000080F878D010C9A86F80F878CF9000000010C9A86FC0F878CFD0000000300000008000000070F8750F90C9A86FC000000080F8750FD000000070000000300000001000000000F34D0FC00000008000000030F350D040CFD9BFD0F350CFC000000030CFD9BFF0F350D080C9A87000F87510100000000000000080F878D010C9A86F8000000060F8750F9000000080000000100000000000000040F34D108000000040C9A87000F875101000000000C9A86F8000000050F8750F900000008000000010F878D010C9A86F80F878CF9000000010C9A8704000000050F878D050C9A86FC0000000500000006000000020F8750F90C9A87040F87510500000002000000060F878D050C9A86FC000000080F8750FD0AD3577F0000000610D101080000000400000006000000030000000200000001000000000F34D0FC0000000500000003000000020F34D0F80CFD9C050F34D104000000020CFD9BFD0F350CFC000000030CFD9BFF0F350D0800000007000000040F34D108000000040C9A8700000000050F878D0100000007000000000F34D0FC00000005000000030F350D040000000500000002000000010000000000000004"
theorem small_8367321_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8367321_left_root small_8367321_left_fuel small_8367321_left_count small_8367321_left_encoded = true := by
  decide +kernel
theorem small_8367321_left_covered : CoveredBy scale carrier boxes small_8367321_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8367321_left_root small_8367321_left_fuel small_8367321_left_count small_8367321_left_encoded small_8367321_left_checked

theorem cover_8367321 : CoveredBy scale carrier boxes root_8367321 := by
  apply coveredBy_split_literal root_8367321 small_8367321_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0575.root_8367965 coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_8367321_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0575.cover_8367965
#print axioms cover_8367321

def root_8367315 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8367315_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8367315_left_fuel : Nat := 1
def small_8367315_left_count : Nat := 1
def small_8367315_left_encoded : String := "00000003"
theorem small_8367315_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8367315_left_root small_8367315_left_fuel small_8367315_left_count small_8367315_left_encoded = true := by
  decide +kernel
theorem small_8367315_left_covered : CoveredBy scale carrier boxes small_8367315_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8367315_left_root small_8367315_left_fuel small_8367315_left_count small_8367315_left_encoded small_8367315_left_checked

theorem cover_8367315 : CoveredBy scale carrier boxes root_8367315 := by
  apply coveredBy_split_literal root_8367315 small_8367315_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0575.root_8367321 coord3 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_8367315_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0575.cover_8367321
#print axioms cover_8367315

def root_8367314 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8367314_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8367314_right_fuel : Nat := 16
def small_8367314_right_count : Nat := 73
def small_8367314_right_encoded : String := "120700FC08A912FF12073D080CFD9C010F34D100000000000CFD9BF90F350CF8000000010CFD9C050F34D10400000002000000080F350D0400000005000000020F34D0F800000005000000010F350D0000000005000000000000000412070108000000040CFD9C010F34D100000000000CFD9BF90F350CF8000000010CFD9C050F34D10400000002045489FD1386ACFC00000003045489FF1386AD080C9A86F800000005000000090000000413867108000000040C9A86F8000000050F8750F90000000900000001138670FC00000005000000030F350D0400000005000000020F34D0F800000005000000010F350D000CFD9BF90F350CF8000000010CFD9C05000000050F350D0400000005000000020F34D0F800000005000000010000000000000003"
theorem small_8367314_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8367314_right_root small_8367314_right_fuel small_8367314_right_count small_8367314_right_encoded = true := by
  decide +kernel
theorem small_8367314_right_covered : CoveredBy scale carrier boxes small_8367314_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8367314_right_root small_8367314_right_fuel small_8367314_right_count small_8367314_right_encoded small_8367314_right_checked

theorem cover_8367314 : CoveredBy scale carrier boxes root_8367314 := by
  apply coveredBy_split_literal root_8367314 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0575.root_8367315 small_8367314_right_root coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0575.cover_8367315
  · exact small_8367314_right_covered
#print axioms cover_8367314

def root_8367309 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8367309_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8367309_right_fuel : Nat := 1
def small_8367309_right_count : Nat := 1
def small_8367309_right_encoded : String := "00000002"
theorem small_8367309_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8367309_right_root small_8367309_right_fuel small_8367309_right_count small_8367309_right_encoded = true := by
  decide +kernel
theorem small_8367309_right_covered : CoveredBy scale carrier boxes small_8367309_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8367309_right_root small_8367309_right_fuel small_8367309_right_count small_8367309_right_encoded small_8367309_right_checked

theorem cover_8367309 : CoveredBy scale carrier boxes root_8367309 := by
  apply coveredBy_split_literal root_8367309 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0575.root_8367314 small_8367309_right_root coord2 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0575.cover_8367314
  · exact small_8367309_right_covered
#print axioms cover_8367309

def root_8365543 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8365543 : CoveredBy scale carrier boxes root_8365543 := by
  apply coveredBy_split_literal root_8365543 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3133.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0575.root_8367309 coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3133.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0575.cover_8367309
#print axioms cover_8365543

def root_8365537 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8365537_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8365537_left_fuel : Nat := 1
def small_8365537_left_count : Nat := 1
def small_8365537_left_encoded : String := "00000001"
theorem small_8365537_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8365537_left_root small_8365537_left_fuel small_8365537_left_count small_8365537_left_encoded = true := by
  decide +kernel
theorem small_8365537_left_covered : CoveredBy scale carrier boxes small_8365537_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8365537_left_root small_8365537_left_fuel small_8365537_left_count small_8365537_left_encoded small_8365537_left_checked

theorem cover_8365537 : CoveredBy scale carrier boxes root_8365537 := by
  apply coveredBy_split_literal root_8365537 small_8365537_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0575.root_8365543 coord1 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_8365537_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0575.cover_8365543
#print axioms cover_8365537

def root_8365536 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8365536_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8365536_right_fuel : Nat := 20
def small_8365536_right_count : Nat := 211
def small_8365536_right_encoded : String := "120700F808A91305120701040000000208A912FD12073CFC0000000308A912FF12073D080CFD9C010F34D10000000000045489F91386ACF80000000104548A05000000071386AD040CFD9BFD000000070F34D0FC0CFD9BFF00000007000000050000000300000002000000070F350D0000000007000000000000000412070108000000040CFD9C010F34D10000000000045489F91386ACF80000000104548A051386710400000002000000071386AD040CFD9BFD0F350CFC00000003000000070F34D0FC000000050000000300000002138670F804548A05000000071386AD040CFD9BFD000000070F34D0FC000000050000000300000002000000010F350D00045489F91386ACF80000000104548A051386710400000002000000071386AD040CFD9BFD0000000700000005000000020000000700000000120700FC08A912FF12073D08000000050000000412070108000000040CFD9C01000000050F350D0000000005000000000000000312073D0408A912FD12073CFC0000000308A912FF12073D080CFD9C010F34D10000000000045489F91386ACF8000000010CFD9C050F34D104000000020CFD9BFD000000060F34D0FC000000050000000300000006000000060F350D0000000005000000000000000412070108000000040CFD9C010F34D10000000000045489F91386ACF8000000010CFD9C050F34D104000000020CFD9BFD0F350CFC00000003045489FF1386AD080C9A86FC00000005000000070000000413867108000000040C9A86FC000000050F8750FD00000007000000030F34D0FC00000005000000030F350D040000000500000002138670F80CFD9C050F34D104000000020CFD9BFD000000050F34D0FC00000005000000030F350D040000000500000002000000010F350D00045489F91386ACF8000000010CFD9C05000000050F350D040000000500000002138670F80CFD9C05000000050F350D0400000005000000020000000100000000120700FC08A912FF0000000512070108000000040CFD9C010F34D10000000000045489F900000005138670F80CFD9C05000000050F350D040000000500000002000000010F350D00045489F900000005138670F80CFD9C05000000050F350D0400000005000000020000000100000000000000030000000200000001"
theorem small_8365536_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8365536_right_root small_8365536_right_fuel small_8365536_right_count small_8365536_right_encoded = true := by
  decide +kernel
theorem small_8365536_right_covered : CoveredBy scale carrier boxes small_8365536_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8365536_right_root small_8365536_right_fuel small_8365536_right_count small_8365536_right_encoded small_8365536_right_checked

theorem cover_8365536 : CoveredBy scale carrier boxes root_8365536 := by
  apply coveredBy_split_literal root_8365536 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0575.root_8365537 small_8365536_right_root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0575.cover_8365537
  · exact small_8365536_right_covered
#print axioms cover_8365536

def root_8365531 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8365531_right_root : ZRayBox := fun j => (#[⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8365531_right_fuel : Nat := 1
def small_8365531_right_count : Nat := 1
def small_8365531_right_encoded : String := "00000000"
theorem small_8365531_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8365531_right_root small_8365531_right_fuel small_8365531_right_count small_8365531_right_encoded = true := by
  decide +kernel
theorem small_8365531_right_covered : CoveredBy scale carrier boxes small_8365531_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8365531_right_root small_8365531_right_fuel small_8365531_right_count small_8365531_right_encoded small_8365531_right_checked

theorem cover_8365531 : CoveredBy scale carrier boxes root_8365531 := by
  apply coveredBy_split_literal root_8365531 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0575.root_8365536 small_8365531_right_root coord0 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0575.cover_8365536
  · exact small_8365531_right_covered
#print axioms cover_8365531

def root_8362255 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8362255 : CoveredBy scale carrier boxes root_8362255 := by
  apply coveredBy_split_literal root_8362255 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0574.root_8362256 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0575.root_8365531 coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0574.cover_8362256
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0575.cover_8365531
#print axioms cover_8362255

def root_8362249 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8362249_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8362249_left_fuel : Nat := 1
def small_8362249_left_count : Nat := 1
def small_8362249_left_encoded : String := "00000004"
theorem small_8362249_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8362249_left_root small_8362249_left_fuel small_8362249_left_count small_8362249_left_encoded = true := by
  decide +kernel
theorem small_8362249_left_covered : CoveredBy scale carrier boxes small_8362249_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8362249_left_root small_8362249_left_fuel small_8362249_left_count small_8362249_left_encoded small_8362249_left_checked

theorem cover_8362249 : CoveredBy scale carrier boxes root_8362249 := by
  apply coveredBy_split_literal root_8362249 small_8362249_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0575.root_8362255 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_8362249_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0575.cover_8362255
#print axioms cover_8362249

def root_8362029 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8362029_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8362029_left_fuel : Nat := 16
def small_8362029_left_count : Nat := 103
def small_8362029_left_encoded : String := "1151E8FF08A91301120701000000000008A912F912073CF80000000108A91305120701040000000208A912FD12073CFC000000030500010800000007135D80FF0000000404548A01000000091386AD000CFD9BF90000000900000007000000000000000912073D0408A912FD000000060000000900000002120700F808A91305120701040000000208A912FD00000006120700FC0500010800000005135D80FF0000000404548A011386710000000000000000060000000500000003000000060000000112073D0008A912F912073CF80000000108A9130512070104000000020000000812073D0408A912FD12073CFC0000000305000108135D44FF0CFD9C010F34D10000000000000000060000000800000004135D80FF000000040CFD9C010F34D100000000000CFD9BF90F350CF80000000100000009000000060F350D000CFD9BF9000000080F34D0F8000000050000000100000000120700FC000000050000000300000002120700F808A91305120701040000000208A912FD000000070000000812073D040000000500000002000000010000000000000004"
theorem small_8362029_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8362029_left_root small_8362029_left_fuel small_8362029_left_count small_8362029_left_encoded = true := by
  decide +kernel
theorem small_8362029_left_covered : CoveredBy scale carrier boxes small_8362029_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8362029_left_root small_8362029_left_fuel small_8362029_left_count small_8362029_left_encoded small_8362029_left_checked

theorem cover_8362029 : CoveredBy scale carrier boxes root_8362029 := by
  apply coveredBy_split_literal root_8362029 small_8362029_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0575.root_8362249 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_8362029_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0575.cover_8362249
#print axioms cover_8362029

def root_8362023 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8362023_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8362023_left_fuel : Nat := 1
def small_8362023_left_count : Nat := 1
def small_8362023_left_encoded : String := "00000003"
theorem small_8362023_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8362023_left_root small_8362023_left_fuel small_8362023_left_count small_8362023_left_encoded = true := by
  decide +kernel
theorem small_8362023_left_covered : CoveredBy scale carrier boxes small_8362023_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8362023_left_root small_8362023_left_fuel small_8362023_left_count small_8362023_left_encoded small_8362023_left_checked

theorem cover_8362023 : CoveredBy scale carrier boxes root_8362023 := by
  apply coveredBy_split_literal root_8362023 small_8362023_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0575.root_8362029 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_8362023_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0575.cover_8362029
#print axioms cover_8362023

def root_8381226 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8381226_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8381226_right_fuel : Nat := 17
def small_8381226_right_count : Nat := 121
def small_8381226_right_encoded : String := "135D44FD0CFD9C010F34D100000000000CFD9BF90F350CF8000000010CFD9C050F34D10400000002000000070F350D04045489FF1386AD080C9A86F8000000060F8750F90C9A87040000000600000005000000010000000413867108000000040C9A86F80F878CF9000000010C9A8704000000060F878D0500000007000000020F8750F90C9A87040F87510500000002028000FC00000006000000050000000500000001000000020F34D0F80CFD9C050F34D10400000002000000070F350D040000000600000002000000010F350D000CFD9BF90F350CF8000000010CFD9C050F34D10400000002000000070F350D04045489FF1386AD080C9A8700000000070F878D010C9A86F8000000060F8750F90C9A8704000000060000000700000001000000000000000413867108000000040C9A87000F875101000000000C9A86F80F878CF900000001000000070F8750F90C9A87040F87510500000002028000FC000000060000000600000007000000010F878D010C9A86F80F878CF9000000010C9A870400000006000000070F8750F90C9A87040F87510500000002028000FC0000000600000006000000070000000100000000000000020F34D0F80CFD9C05000000070F350D04045489FF000000060000000700000002000000010000000000000003"
theorem small_8381226_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8381226_right_root small_8381226_right_fuel small_8381226_right_count small_8381226_right_encoded = true := by
  decide +kernel
theorem small_8381226_right_covered : CoveredBy scale carrier boxes small_8381226_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8381226_right_root small_8381226_right_fuel small_8381226_right_count small_8381226_right_encoded small_8381226_right_checked

theorem cover_8381226 : CoveredBy scale carrier boxes root_8381226 := by
  apply coveredBy_split_literal root_8381226 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3138.root small_8381226_right_root coord3 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3138.covered
  · exact small_8381226_right_covered
#print axioms cover_8381226

def root_8381220 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8381220_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8381220_left_fuel : Nat := 1
def small_8381220_left_count : Nat := 1
def small_8381220_left_encoded : String := "00000004"
theorem small_8381220_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8381220_left_root small_8381220_left_fuel small_8381220_left_count small_8381220_left_encoded = true := by
  decide +kernel
theorem small_8381220_left_covered : CoveredBy scale carrier boxes small_8381220_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8381220_left_root small_8381220_left_fuel small_8381220_left_count small_8381220_left_encoded small_8381220_left_checked

theorem cover_8381220 : CoveredBy scale carrier boxes root_8381220 := by
  apply coveredBy_split_literal root_8381220 small_8381220_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0575.root_8381226 coord4 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_8381220_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0575.cover_8381226
#print axioms cover_8381220

def root_8380986 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8380986_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8380986_left_fuel : Nat := 17
def small_8380986_left_count : Nat := 109
def small_8380986_left_encoded : String := "12073D08050000FC135D80FD000000030CFD9C010F34D100000000000CFD9BF90F350CF8000000010CFD9C050F34D104000000020CFD9BFF00000007000000070F350D040CFD9BFF000000060F34D108000000040C9A86F8000000060F8750F90000000600000001000000020F34D0F80CFD9C050000000600000006000000010F350D000CFD9BF90F350CF8000000010CFD9C050F34D10400000002000000070F350D040CFD9BFF0F350D0800000006000000040F34D108000000040C9A87000F875101000000000C9A86F8000000060F8750F90C9A87040000000600000007000000010F878D010C9A86F8000000060F8750F9000000060000000100000000000000020F34D0F80CFD9C05000000070F350D0400000006000000020000000100000000135D44FD0CFD9C010F34D100000000000CFD9BF90F350CF8000000010CFD9C050F34D10400000002000000070F350D040CFD9BFF000000060F34D1080000000400000006000000020F34D0F800000006000000010F350D000CFD9BF90F350CF8000000010CFD9C05000000070F350D040CFD9BFF00000006000000070000000200000007000000000000000300000004"
theorem small_8380986_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8380986_left_root small_8380986_left_fuel small_8380986_left_count small_8380986_left_encoded = true := by
  decide +kernel
theorem small_8380986_left_covered : CoveredBy scale carrier boxes small_8380986_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8380986_left_root small_8380986_left_fuel small_8380986_left_count small_8380986_left_encoded small_8380986_left_checked

theorem cover_8380986 : CoveredBy scale carrier boxes root_8380986 := by
  apply coveredBy_split_literal root_8380986 small_8380986_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0575.root_8381220 coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_8380986_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0575.cover_8381220
#print axioms cover_8380986

def root_8380981 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8380981_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8380981_right_fuel : Nat := 1
def small_8380981_right_count : Nat := 1
def small_8380981_right_encoded : String := "00000002"
theorem small_8380981_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8380981_right_root small_8380981_right_fuel small_8380981_right_count small_8380981_right_encoded = true := by
  decide +kernel
theorem small_8380981_right_covered : CoveredBy scale carrier boxes small_8380981_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8380981_right_root small_8380981_right_fuel small_8380981_right_count small_8380981_right_encoded small_8380981_right_checked

theorem cover_8380981 : CoveredBy scale carrier boxes root_8380981 := by
  apply coveredBy_split_literal root_8380981 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0575.root_8380986 small_8380981_right_root coord2 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0575.cover_8380986
  · exact small_8380981_right_covered
#print axioms cover_8380981

def root_8380903 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8380903_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8380903_left_fuel : Nat := 15
def small_8380903_left_count : Nat := 37
def small_8380903_left_encoded : String := "120701040000000208A912FF12073D08050000FC0000000700000007000000041207010800000004050000FC135D80FD000000030CFD9C010F34D10000000000000000070F350D000CFD9BF90F350CF80000000104548A051386710400000002000000071386AD04045489FF0000000713867108000000040C9A8700000000070000000700000002000000070000000000000007"
theorem small_8380903_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8380903_left_root small_8380903_left_fuel small_8380903_left_count small_8380903_left_encoded = true := by
  decide +kernel
theorem small_8380903_left_covered : CoveredBy scale carrier boxes small_8380903_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8380903_left_root small_8380903_left_fuel small_8380903_left_count small_8380903_left_encoded small_8380903_left_checked

theorem cover_8380903 : CoveredBy scale carrier boxes root_8380903 := by
  apply coveredBy_split_literal root_8380903 small_8380903_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0575.root_8380981 coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_8380903_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0575.cover_8380981
#print axioms cover_8380903

def root_8380897 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8380897_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8380897_left_fuel : Nat := 1
def small_8380897_left_count : Nat := 1
def small_8380897_left_encoded : String := "00000001"
theorem small_8380897_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8380897_left_root small_8380897_left_fuel small_8380897_left_count small_8380897_left_encoded = true := by
  decide +kernel
theorem small_8380897_left_covered : CoveredBy scale carrier boxes small_8380897_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8380897_left_root small_8380897_left_fuel small_8380897_left_count small_8380897_left_encoded small_8380897_left_checked

theorem cover_8380897 : CoveredBy scale carrier boxes root_8380897 := by
  apply coveredBy_split_literal root_8380897 small_8380897_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0575.root_8380903 coord1 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_8380897_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0575.cover_8380903
#print axioms cover_8380897

def root_8380896 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8380896_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8380896_right_fuel : Nat := 14
def small_8380896_right_count : Nat := 69
def small_8380896_right_encoded : String := "120700F808A9130512070104000000020000000712073D0408A912FF12073D08050000FC135D80FD000000030CFD9C010F34D100000000000000000600000006135D44FD0CFD9C010F34D10000000000000000060000000600000003000000041207010800000004050000FC135D80FD000000030CFD9C010F34D10000000000045489F91386ACF8000000010CFD9C050F34D104000000020000000700000006000000060F350D00045489F91386ACF8000000010CFD9C05000000070F350D0400000006000000020000000700000000135D44FD0CFD9C010F34D10000000000045489F91386ACF8000000010CFD9C050000000600000006000000060F350D000000000700000000000000030000000200000001"
theorem small_8380896_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8380896_right_root small_8380896_right_fuel small_8380896_right_count small_8380896_right_encoded = true := by
  decide +kernel
theorem small_8380896_right_covered : CoveredBy scale carrier boxes small_8380896_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8380896_right_root small_8380896_right_fuel small_8380896_right_count small_8380896_right_encoded small_8380896_right_checked

theorem cover_8380896 : CoveredBy scale carrier boxes root_8380896 := by
  apply coveredBy_split_literal root_8380896 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0575.root_8380897 small_8380896_right_root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0575.cover_8380897
  · exact small_8380896_right_covered
#print axioms cover_8380896

def root_8380891 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8380891_right_root : ZRayBox := fun j => (#[⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8380891_right_fuel : Nat := 1
def small_8380891_right_count : Nat := 1
def small_8380891_right_encoded : String := "00000000"
theorem small_8380891_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8380891_right_root small_8380891_right_fuel small_8380891_right_count small_8380891_right_encoded = true := by
  decide +kernel
theorem small_8380891_right_covered : CoveredBy scale carrier boxes small_8380891_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8380891_right_root small_8380891_right_fuel small_8380891_right_count small_8380891_right_encoded small_8380891_right_checked

theorem cover_8380891 : CoveredBy scale carrier boxes root_8380891 := by
  apply coveredBy_split_literal root_8380891 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0575.root_8380896 small_8380891_right_root coord0 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0575.cover_8380896
  · exact small_8380891_right_covered
#print axioms cover_8380891

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0575
