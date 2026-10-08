import TaoBundleAssembly0132
import TaoBundleChunkBatch0505
import TaoBundleChunkBatch0506
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0133
def root_5380924 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5380924_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5380924_right_fuel : Nat := 17
def small_5380924_right_count : Nat := 129
def small_5380924_right_encoded : String := "135D44FB045489F71386AD000CFD9BF90F350CF8000000010CFD9C070F34D10600000003000000070F350D060CFD9C090F34D108000000040C9A86F80000000A0F8750F90C9A87060000000A00000005000000010F350D080C9A86F80F878CF9000000010C9A870600000007000000070F8750F90C9A87060F875107000000030000000A000000070000000100000004000000030F34D0F80CFD9C07000000070F350D060000000A00000003000000010000000013867100000000000CFD9BF90F350CF8000000010CFD9C070F34D106000000030CFD9C09000000070F350D0800000007000000040F350D060CFD9C090F34D108000000040C9A86F80F878CF9000000010C9A8706000000090F878D0700000007000000030F8750F90C9A87060F87510700000003028000FA0000000A0000000500000005000000010F350D080C9A86F80F878CF9000000010C9A87060F875107000000030000000A000000070F8750F90C9A87060F875107000000030C9A87080F87510900000004028000FA0000000A000000060F878D09028000FA0000000A00000007000000040F878D070C9A8708000000070F878D090000000700000004000000030000000100000004000000030F34D0F80CFD9C070F34D10600000003000000070F350D060CFD9C090F34D10800000004000000090F350D080000000700000004000000030000000100000002"
theorem small_5380924_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5380924_right_root small_5380924_right_fuel small_5380924_right_count small_5380924_right_encoded = true := by
  decide +kernel
theorem small_5380924_right_covered : CoveredBy scale carrier boxes small_5380924_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5380924_right_root small_5380924_right_fuel small_5380924_right_count small_5380924_right_encoded small_5380924_right_checked

theorem cover_5380924 : CoveredBy scale carrier boxes root_5380924 := by
  apply coveredBy_split_literal root_5380924 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2017.root small_5380924_right_root coord2 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2017.covered
  · exact small_5380924_right_covered
#print axioms cover_5380924

def root_5380919 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5380919_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5380919_right_fuel : Nat := 1
def small_5380919_right_count : Nat := 1
def small_5380919_right_encoded : String := "00000004"
theorem small_5380919_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5380919_right_root small_5380919_right_fuel small_5380919_right_count small_5380919_right_encoded = true := by
  decide +kernel
theorem small_5380919_right_covered : CoveredBy scale carrier boxes small_5380919_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5380919_right_root small_5380919_right_fuel small_5380919_right_count small_5380919_right_encoded small_5380919_right_checked

theorem cover_5380919 : CoveredBy scale carrier boxes root_5380919 := by
  apply coveredBy_split_literal root_5380919 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0133.root_5380924 small_5380919_right_root coord4 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0133.cover_5380924
  · exact small_5380919_right_covered
#print axioms cover_5380919

def root_5380365 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5380365_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5380365_left_fuel : Nat := 25
def small_5380365_left_count : Nat := 265
def small_5380365_left_encoded : String := "1207010800000004050000FA135D80FB00000002045489F71386AD000CFD9BF90F350CF8000000010CFD9C070F34D1060000000304548A09000000051386AD080C9A86F80F878CF900000001078000FA128A7CFB00000002067ECE7700000007000000070000000500000005000000040F350D0604548A0913867108000000040C9A86F80F878CF9000000010000000A0F8750F90C9A87060000000800000005000000011386AD080C9A86F80F878CF9000000010000000A0F8750F90C9A87060F875107000000030000000A0F878D07078000FA128A7CFB000000020000000800000005000000030000000100000004000000030F34D0F80CFD9C070F34D1060000000304548A091386710800000004078000FA00000007000000071386AD0800000007000000040000000A000000010000000013867100000000000CFD9BF90F350CF8000000010CFD9C070F34D1060000000304548A09000000051386AD080C9A86F80F878CF900000001078000FA128A7CFB00000002022A457713E201000AD357870000000510D13D06000000070000000300000000000000090000000500000005000000040F350D0604548A0913867108000000040C9A86F80F878CF9000000010C9A8706000000090F878D0700000009000000030F8750F90C9A87060F87510700000003078000FA128A7CFB00000002022A457700000008000000090000000500000005000000011386AD080C9A86F80F878CF9000000010C9A87060F875107000000030000000A0F878D07078000FA128A7CFB00000002022A457713E20100067ECE89000000090000000A000000000000000900000009000000030F8750F90C9A87060F87510700000003078000FA128A7CFB00000002022A45770000000A13E1C50000000000067ECE890000000900000009128A40FB022A45770000000A00000009000000020F878D07078000FA128A7CFB00000002022A457713E20100067ECE890000000512EA95080B4D43F810804CF9000000010DE7CA06000000080000000500000005000000040000000013E1C50000000000067ECE890000000512EA95080B4D43F800000009000000050000000400000005000000030000000100000004000000030F34D0F80CFD9C070F34D1060000000304548A0900000009000000090F350D0604548A0900000009000000090000000300000001135D44FB045489F71386AD000CFD9BF90F350CF8000000010CFD9C070F34D10600000003000000050F350D0604548A091386710800000004000000051386AD080C9A86F80000000A0000000500000004000000030F34D0F80CFD9C07000000090000000A000000010000000013867100000000000CFD9BF90F350CF8000000010CFD9C070F34D10600000003000000050F350D0604548A09000000091386AD080C9A86F8000000090000000500000004000000030F34D0F8000000090000000100000002"
theorem small_5380365_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5380365_left_root small_5380365_left_fuel small_5380365_left_count small_5380365_left_encoded = true := by
  decide +kernel
theorem small_5380365_left_covered : CoveredBy scale carrier boxes small_5380365_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5380365_left_root small_5380365_left_fuel small_5380365_left_count small_5380365_left_encoded small_5380365_left_checked

theorem cover_5380365 : CoveredBy scale carrier boxes root_5380365 := by
  apply coveredBy_split_literal root_5380365 small_5380365_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0133.root_5380919 coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_5380365_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0133.cover_5380919
#print axioms cover_5380365

def root_5380360 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5380360_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5380360_right_fuel : Nat := 1
def small_5380360_right_count : Nat := 1
def small_5380360_right_encoded : String := "00000003"
theorem small_5380360_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5380360_right_root small_5380360_right_fuel small_5380360_right_count small_5380360_right_encoded = true := by
  decide +kernel
theorem small_5380360_right_covered : CoveredBy scale carrier boxes small_5380360_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5380360_right_root small_5380360_right_fuel small_5380360_right_count small_5380360_right_encoded small_5380360_right_checked

theorem cover_5380360 : CoveredBy scale carrier boxes root_5380360 := by
  apply coveredBy_split_literal root_5380360 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0133.root_5380365 small_5380360_right_root coord3 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0133.cover_5380365
  · exact small_5380360_right_covered
#print axioms cover_5380360

def root_5380226 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5380226_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5380226_left_fuel : Nat := 17
def small_5380226_left_count : Nat := 65
def small_5380226_left_encoded : String := "120701060000000308A913091207010800000004050000FA135D80FB00000002045489F71386AD000CFD9BF900000005000000070000000013867100000000000CFD9BF900000005000000070000000512073D08050000FA135D80FB00000002045489F71386AD000CFD9BF90F350CF80000000104548A070000000700000007000000070000000013867100000000000CFD9BF90F350CF80000000104548A0713867106000000030CFD9C09000000070F350D0800000007000000041386AD060CFD9C09000000070F350D080C9A86F8000000070F8750F90C9A870800000007000000070000000100000004000000030F34D0F800000007000000010000000700000004"
theorem small_5380226_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5380226_left_root small_5380226_left_fuel small_5380226_left_count small_5380226_left_encoded = true := by
  decide +kernel
theorem small_5380226_left_covered : CoveredBy scale carrier boxes small_5380226_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5380226_left_root small_5380226_left_fuel small_5380226_left_count small_5380226_left_encoded small_5380226_left_checked

theorem cover_5380226 : CoveredBy scale carrier boxes root_5380226 := by
  apply coveredBy_split_literal root_5380226 small_5380226_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0133.root_5380360 coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_5380226_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0133.cover_5380360
#print axioms cover_5380226

def root_5380220 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5380220_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5380220_left_fuel : Nat := 1
def small_5380220_left_count : Nat := 1
def small_5380220_left_encoded : String := "00000001"
theorem small_5380220_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5380220_left_root small_5380220_left_fuel small_5380220_left_count small_5380220_left_encoded = true := by
  decide +kernel
theorem small_5380220_left_covered : CoveredBy scale carrier boxes small_5380220_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5380220_left_root small_5380220_left_fuel small_5380220_left_count small_5380220_left_encoded small_5380220_left_checked

theorem cover_5380220 : CoveredBy scale carrier boxes root_5380220 := by
  apply coveredBy_split_literal root_5380220 small_5380220_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0133.root_5380226 coord1 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_5380220_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0133.cover_5380226
#print axioms cover_5380220

def root_5380219 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5380219_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5380219_right_fuel : Nat := 16
def small_5380219_right_count : Nat := 81
def small_5380219_right_encoded : String := "120700F808A91307120701060000000308A91309000000070000000712073D0608A913091207010800000004050000FA135D80FB00000002045489F70000000A000000090000000912073D08050000FA135D80FB00000002045489F71386AD00045489F91386ACF8000000010CFD9C070F34D10600000003000000070000000A138670F80000000A00000001000000001386710000000000045489F91386ACF8000000010CFD9C070F34D10600000003000000070F350D060CFD9C090F34D10800000004000000090000000800000003138670F80CFD9C07000000070000000800000001135D44FB045489F71386AD00045489F91386ACF8000000010CFD9C07000000070000000A00000007000000001386710000000000045489F91386ACF8000000010CFD9C0700000007000000080000000700000002000000040000000300000001"
theorem small_5380219_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5380219_right_root small_5380219_right_fuel small_5380219_right_count small_5380219_right_encoded = true := by
  decide +kernel
theorem small_5380219_right_covered : CoveredBy scale carrier boxes small_5380219_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5380219_right_root small_5380219_right_fuel small_5380219_right_count small_5380219_right_encoded small_5380219_right_checked

theorem cover_5380219 : CoveredBy scale carrier boxes root_5380219 := by
  apply coveredBy_split_literal root_5380219 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0133.root_5380220 small_5380219_right_root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0133.cover_5380220
  · exact small_5380219_right_covered
#print axioms cover_5380219

def root_5380213 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5380213_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5380213_left_fuel : Nat := 1
def small_5380213_left_count : Nat := 1
def small_5380213_left_encoded : String := "00000000"
theorem small_5380213_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5380213_left_root small_5380213_left_fuel small_5380213_left_count small_5380213_left_encoded = true := by
  decide +kernel
theorem small_5380213_left_covered : CoveredBy scale carrier boxes small_5380213_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5380213_left_root small_5380213_left_fuel small_5380213_left_count small_5380213_left_encoded small_5380213_left_checked

theorem cover_5380213 : CoveredBy scale carrier boxes root_5380213 := by
  apply coveredBy_split_literal root_5380213 small_5380213_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0133.root_5380219 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_5380213_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0133.cover_5380219
#print axioms cover_5380213

def root_5379703 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5379703_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5379703_left_fuel : Nat := 22
def small_5379703_left_count : Nat := 233
def small_5379703_left_encoded : String := "12073D0008A912F912073CF80000000108A91307120701060000000308A913091207010800000004050000FA135D80FB000000020CFD9BF700000007000000070000000712073D08050000FA00000007000000070000000412073D0608A913091207010800000004050000FA135D80FB000000020CFD9BF70F350D000CFD9BF90F350CF8000000010CFD9C07000000080000000A0000000A000000000F34D100000000000CFD9BF90F350CF8000000010CFD9C070F34D1060000000304548A091386710800000004000000051386AD080C9A86F80F878CF9000000010000000700000005000000040F350D0604548A0913867108000000040000000A0000000A000000030F34D0F80000000A00000001135D44FB0CFD9BF70F350D000CFD9BF90F350CF8000000010CFD9C070F34D10600000003000000050000000A0000000A000000000F34D100000000000CFD9BF90F350CF8000000010CFD9C070F34D10600000003000000050F350D060000000A000000030F34D0F80000000A000000010000000212073D08050000FA135D80FB000000020CFD9BF70F350D000CFD9BF90F350CF8000000010CFD9C070F34D10600000003000000070F350D060CFD9C090F34D108000000040000000A0000000A000000030F34D0F80000000A00000001000000000F34D100000000000CFD9BF90F350CF8000000010CFD9C070F34D106000000030CFD9C0900000007000000070F350D060CFD9C090F34D108000000040C9A86F80000000A0F8750F90000000A000000010F350D080C9A86F80F878CF9000000010000000A0F8750F90C9A87060000000A0F878D0700000007000000030000000100000004000000030F34D0F80CFD9C070F34D10600000003000000070F350D060000000A0000000300000001135D44FB0CFD9BF70F350D000CFD9BF90F350CF8000000010CFD9C07000000070F350D060000000A0000000300000007000000000F34D100000000000CFD9BF90F350CF8000000010CFD9C070F34D10600000003000000070F350D060CFD9C090F34D108000000040000000A0F350D080000000700000004000000030F34D0F80CFD9C07000000070000000A00000001000000020000000400000003120700F808A91307120701060000000308A91309000000070000000712073D0608A9130912070108000000040000000A12073D08050000FA135D80FB000000020CFD9BF70000000A0F34D100000000000000000A135D44FB0CFD9BF70000000A000000070000000200000004000000030000000100000000"
theorem small_5379703_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5379703_left_root small_5379703_left_fuel small_5379703_left_count small_5379703_left_encoded = true := by
  decide +kernel
theorem small_5379703_left_covered : CoveredBy scale carrier boxes small_5379703_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5379703_left_root small_5379703_left_fuel small_5379703_left_count small_5379703_left_encoded small_5379703_left_checked

theorem cover_5379703 : CoveredBy scale carrier boxes root_5379703 := by
  apply coveredBy_split_literal root_5379703 small_5379703_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0133.root_5380213 coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_5379703_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0133.cover_5380213
#print axioms cover_5379703

def root_5379698 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5379698_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5379698_right_fuel : Nat := 1
def small_5379698_right_count : Nat := 1
def small_5379698_right_encoded : String := "00000004"
theorem small_5379698_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5379698_right_root small_5379698_right_fuel small_5379698_right_count small_5379698_right_encoded = true := by
  decide +kernel
theorem small_5379698_right_covered : CoveredBy scale carrier boxes small_5379698_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5379698_right_root small_5379698_right_fuel small_5379698_right_count small_5379698_right_encoded small_5379698_right_checked

theorem cover_5379698 : CoveredBy scale carrier boxes root_5379698 := by
  apply coveredBy_split_literal root_5379698 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0133.root_5379703 small_5379698_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0133.cover_5379703
  · exact small_5379698_right_covered
#print axioms cover_5379698

def root_5379318 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5379318_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5379318_left_fuel : Nat := 23
def small_5379318_left_count : Nat := 179
def small_5379318_left_encoded : String := "1151E9090000000408A912F712073D0008A912F912073CF80000000108A9130712070106000000030000000712073D06050000FA135D80FB0000000205000108135D4509000000040CFD9BF7000000070F34D1000000000000000007135D81090CFD9BF7000000070F34D100000000000CFD9BF90F350CF8000000010CFD9C07000000070F350D060C9A86F8000000070F8750F90C9A87060000000600000007000000010000000300000007000000040000000700000003120700F8000000070000000100000000120701000000000008A912F912073CF80000000108A913071207010600000003050000FA135D80FB000000020500010800000007135D8109045489F70000000713867100000000000CFD9BF90F350CF80000000104548A07000000070000000700000007000000040000000712073D06050000FA135D80FB0000000205000108135D450900000004045489F71386AD000CFD9BF90F350CF8000000010CFD9C070F34D106000000030000000700000008000000070000000000000008135D8109045489F71386AD000CFD9BF90F350CF8000000010CFD9C070F34D10600000003000000070F350D060C9A86F80F878CF900000001000000050F8750F90C9A8706000000060F878D07078000FA00000006000000060000000300000001000000030F34D0F800000007000000010000000013867100000000000CFD9BF90F350CF8000000010CFD9C070F34D10600000003000000080F350D060C9A86F8000000050F8750F90C9A8706000000050000000800000001000000030F34D0F8000000080000000100000004135D44FB05000108135D450900000004045489F70000000700000008135D8109045489F71386AD00000000070000000013867100000000000CFD9BF90F350CF8000000010CFD9C070F34D10600000003000000070000000800000007000000040000000200000003120700F808A91307000000070000000700000001"
theorem small_5379318_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5379318_left_root small_5379318_left_fuel small_5379318_left_count small_5379318_left_encoded = true := by
  decide +kernel
theorem small_5379318_left_covered : CoveredBy scale carrier boxes small_5379318_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5379318_left_root small_5379318_left_fuel small_5379318_left_count small_5379318_left_encoded small_5379318_left_checked

theorem cover_5379318 : CoveredBy scale carrier boxes root_5379318 := by
  apply coveredBy_split_literal root_5379318 small_5379318_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0133.root_5379698 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_5379318_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0133.cover_5379698
#print axioms cover_5379318

def root_5379313 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5379313_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5379313_right_fuel : Nat := 1
def small_5379313_right_count : Nat := 1
def small_5379313_right_encoded : String := "00000003"
theorem small_5379313_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5379313_right_root small_5379313_right_fuel small_5379313_right_count small_5379313_right_encoded = true := by
  decide +kernel
theorem small_5379313_right_covered : CoveredBy scale carrier boxes small_5379313_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5379313_right_root small_5379313_right_fuel small_5379313_right_count small_5379313_right_encoded small_5379313_right_checked

theorem cover_5379313 : CoveredBy scale carrier boxes root_5379313 := by
  apply coveredBy_split_literal root_5379313 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0133.root_5379318 small_5379313_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0133.cover_5379318
  · exact small_5379313_right_covered
#print axioms cover_5379313

def root_5378819 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5378819_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5378819_left_fuel : Nat := 25
def small_5378819_left_count : Nat := 233
def small_5378819_left_encoded : String := "1151E907000000030A0001081151E9090000000408A912F712073D0008A912F912073CF800000001050000FA00000005135D44FB0500010600000005135D810705000108000000050000000A00000003000000020000000600000000120701000000000008A912F912073CF800000001050000FA00000005135D44FB0500010600000005135D81070500010800000005135D8109045489F70000000613867100000000000CFD9BF90F350CF8000000010000000600000006000000040000000300000002000000061152250908A912F712073D0008A912F912073CF80000000108A9130912070108000000040000000A12073D08050000FA135D80FB00000002050001060000000A135D81070CFD9BF70000000A0F34D100000000000000000A00000003135D44FB0000000A00000002000000040000000A00000000120701000000000008A912F912073CF80000000108A913091207010800000004050000FA135D80FB00000002050001060000000A135D8107045489F70000000A13867100000000000CFD9BF90F350CF80000000104548A0913867108000000040C9A86F8000000090F8750F90000000A000000011386AD080C9A86F80000000A0F8750F90000000A00000001000000040000000A00000003135D44FB050001060000000A135D8107045489F70000000A13867100000000000CFD9BF90F350CF8000000010000000900000009000000030000000212073D08050000FA135D80FB0000000205000106135D450700000003045489F70000000A13867100000000000CFD9BF90000000A0000000A135D8107045489F71386AD000CFD9BF90F350CF8000000010CFD9C090F34D108000000040000000A0000000A0000000A0000000013867100000000000CFD9BF90F350CF8000000010CFD9C090F34D108000000040C9A86F80000000A0F8750F9078000FA0000000A0000000A000000010F350D080C9A86F8000000050F8750F90C9A8708000000050F878D09078000FA000000050000000A0000000400000001000000040F34D0F80000000A0000000100000003135D44FB05000106135D4507000000030000000A135D8107045489F71386AD000CFD9BF90000000A0000000A0000000013867100000000000CFD9BF90F350CF8000000010CFD9C090F34D108000000040000000A0F350D080C9A86F80000000A0F8750F90000000A00000001000000040F34D0F80000000A00000001000000030000000200000004120700F808A913091207010800000004000000090000000A0000000100000004"
theorem small_5378819_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5378819_left_root small_5378819_left_fuel small_5378819_left_count small_5378819_left_encoded = true := by
  decide +kernel
theorem small_5378819_left_covered : CoveredBy scale carrier boxes small_5378819_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5378819_left_root small_5378819_left_fuel small_5378819_left_count small_5378819_left_encoded small_5378819_left_checked

theorem cover_5378819 : CoveredBy scale carrier boxes root_5378819 := by
  apply coveredBy_split_literal root_5378819 small_5378819_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0133.root_5379313 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_5378819_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0133.cover_5379313
#print axioms cover_5378819

def root_5378814 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5378814_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5378814_right_fuel : Nat := 1
def small_5378814_right_count : Nat := 1
def small_5378814_right_encoded : String := "00000002"
theorem small_5378814_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5378814_right_root small_5378814_right_fuel small_5378814_right_count small_5378814_right_encoded = true := by
  decide +kernel
theorem small_5378814_right_covered : CoveredBy scale carrier boxes small_5378814_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5378814_right_root small_5378814_right_fuel small_5378814_right_count small_5378814_right_encoded small_5378814_right_checked

theorem cover_5378814 : CoveredBy scale carrier boxes root_5378814 := by
  apply coveredBy_split_literal root_5378814 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0133.root_5378819 small_5378814_right_root coord2 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0133.cover_5378819
  · exact small_5378814_right_covered
#print axioms cover_5378814

def root_5359026 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5359026 : CoveredBy scale carrier boxes root_5359026 := by
  apply coveredBy_split_literal root_5359026 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.root_5359027 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0133.root_5378814 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0132.cover_5359027
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0133.cover_5378814
#print axioms cover_5359026

def root_5359020 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5359020_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5359020_left_fuel : Nat := 1
def small_5359020_left_count : Nat := 1
def small_5359020_left_encoded : String := "00000001"
theorem small_5359020_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5359020_left_root small_5359020_left_fuel small_5359020_left_count small_5359020_left_encoded = true := by
  decide +kernel
theorem small_5359020_left_covered : CoveredBy scale carrier boxes small_5359020_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5359020_left_root small_5359020_left_fuel small_5359020_left_count small_5359020_left_encoded small_5359020_left_checked

theorem cover_5359020 : CoveredBy scale carrier boxes root_5359020 := by
  apply coveredBy_split_literal root_5359020 small_5359020_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0133.root_5359026 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5359020_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0133.cover_5359026
#print axioms cover_5359020

def root_5386711 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5386711_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5386711_left_fuel : Nat := 23
def small_5386711_left_count : Nat := 191
def small_5386711_left_encoded : String := "1386AD000CFD9BFB0F350CFA000000020CFD9C070F34D106000000030CFD9C090F34D108000000040C9A86FA0F878CFB00000002000000080F8750FB078000F8128A7CF900000001067ECE77000000080000000800000005000000020F350D080C9A86FA0F878CFB000000020C9A8708000000090F878D09078000F80000000900000009000000040F8750FB0C9A87080F87510900000004000000090F878D09078000F8128A7CF900000001067ECE770000000912EA5900000000000AD3578710D10106000000030B4D43FA000000090000000710D13D060B4D43FA00000009108010FB0DE7CA08000000090E60150900000008000000040000000200000003128A40F9067ECE770000000912EA5900000000000AD357870000000800000009000000010000000400000002000000040F350D060CFD9C090F34D108000000040C9A86FA000000080F8750FB0C9A87060000000800000008000000020F350D080C9A86FA0F878CFB000000020C9A87060F875107000000030C9A870800000009000000080F878D070C9A8708000000090F878D09078000F8000000090000000800000004000000030F8750FB0C9A87060F875107000000030C9A87080F87510900000004000000090F878D09078000F8128A7CF900000001067ECE770000000612EA5900000000000B4D43FA10804CFB0000000200000008108010FB0B4D44060000000610804D0700000006000000030000000200000008000000040F878D070C9A87080F87510900000004000000090F878D09078000F8128A7CF900000001067ECE770000000912EA5900000000000B4D43FA10804CFB0000000200000009108010FB0DE7CA060E5FD907000000030DE7CA0800000006000000080E6015070DE7CA08000000090000000800000003000000020000000800000004000000030000000200000004000000030F34D0FA0CFD9C070F34D106000000030CFD9C090F34D1080000000400000008000000090F350D060CFD9C090F34D10800000004000000080F350D080000000900000004000000030000000200000000"
theorem small_5386711_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5386711_left_root small_5386711_left_fuel small_5386711_left_count small_5386711_left_encoded = true := by
  decide +kernel
theorem small_5386711_left_covered : CoveredBy scale carrier boxes small_5386711_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5386711_left_root small_5386711_left_fuel small_5386711_left_count small_5386711_left_encoded small_5386711_left_checked

theorem cover_5386711 : CoveredBy scale carrier boxes root_5386711 := by
  apply coveredBy_split_literal root_5386711 small_5386711_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2018.root coord0 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact small_5386711_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2018.covered
#print axioms cover_5386711

def root_5386705 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5386705_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5386705_left_fuel : Nat := 1
def small_5386705_left_count : Nat := 1
def small_5386705_left_encoded : String := "00000001"
theorem small_5386705_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5386705_left_root small_5386705_left_fuel small_5386705_left_count small_5386705_left_encoded = true := by
  decide +kernel
theorem small_5386705_left_covered : CoveredBy scale carrier boxes small_5386705_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5386705_left_root small_5386705_left_fuel small_5386705_left_count small_5386705_left_encoded small_5386705_left_checked

theorem cover_5386705 : CoveredBy scale carrier boxes root_5386705 := by
  apply coveredBy_split_literal root_5386705 small_5386705_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0133.root_5386711 coord1 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_5386705_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0133.cover_5386711
#print axioms cover_5386705

def root_5386704 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5386704_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5386704_right_fuel : Nat := 17
def small_5386704_right_count : Nat := 141
def small_5386704_right_encoded : String := "135D44F9045489F71386AD000CFD9BFB0F350CFA000000020CFD9C070F34D106000000030CFD9C090F34D10800000004000000050F350D080C9A86FA000000090F8750FB0C9A8708000000090000000500000002000000040F350D060CFD9C09000000080F350D080C9A86FA0F878CFB000000020C9A870600000008000000090F8750FB0C9A8706000000080F878D070C9A87080000000800000008000000030000000200000004000000030F34D0FA0CFD9C070F34D106000000030CFD9C0900000008000000090F350D060000000800000003000000020000000013867100000000000CFD9BFB0F350CFA000000020CFD9C070F34D106000000030CFD9C090F34D10800000004000000050F350D080C9A86FA0F878CFB000000020C9A8708000000090F878D0900000008000000040F8750FB0C9A87080F87510900000004028000F800000009000000050000000500000002000000040F350D060CFD9C090F34D10800000004000000080F350D080C9A86FA0F878CFB000000020C9A8706000000080F878D070C9A87080000000900000008000000030F8750FB0C9A87060F875107000000030C9A87080F87510900000004028000F80000000900000006000000080F878D070C9A87080F87510900000004028000F8000000090000000800000008000000030000000200000004000000030F34D0FA0CFD9C070F34D106000000030CFD9C09000000080F350D0800000009000000040F350D060CFD9C090000000800000007000000030000000200000001"
theorem small_5386704_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5386704_right_root small_5386704_right_fuel small_5386704_right_count small_5386704_right_encoded = true := by
  decide +kernel
theorem small_5386704_right_covered : CoveredBy scale carrier boxes small_5386704_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5386704_right_root small_5386704_right_fuel small_5386704_right_count small_5386704_right_encoded small_5386704_right_checked

theorem cover_5386704 : CoveredBy scale carrier boxes root_5386704 := by
  apply coveredBy_split_literal root_5386704 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0133.root_5386705 small_5386704_right_root coord1 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0133.cover_5386705
  · exact small_5386704_right_covered
#print axioms cover_5386704

def root_5386699 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5386699_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5386699_right_fuel : Nat := 1
def small_5386699_right_count : Nat := 1
def small_5386699_right_encoded : String := "00000004"
theorem small_5386699_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5386699_right_root small_5386699_right_fuel small_5386699_right_count small_5386699_right_encoded = true := by
  decide +kernel
theorem small_5386699_right_covered : CoveredBy scale carrier boxes small_5386699_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5386699_right_root small_5386699_right_fuel small_5386699_right_count small_5386699_right_encoded small_5386699_right_checked

theorem cover_5386699 : CoveredBy scale carrier boxes root_5386699 := by
  apply coveredBy_split_literal root_5386699 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0133.root_5386704 small_5386699_right_root coord4 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0133.cover_5386704
  · exact small_5386699_right_covered
#print axioms cover_5386699

def root_5386607 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5386607_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5386607_left_fuel : Nat := 15
def small_5386607_left_count : Nat := 43
def small_5386607_left_encoded : String := "1207010800000004050000F8135D80F900000001045489F71386AD000CFD9BFB0F350CFA000000020CFD9C07000000080F350D060000000800000003000000080000000013867100000000000CFD9BFB0F350CFA000000020CFD9C070F34D10600000003000000080F350D0604548A09000000081386AD080C9A86FA000000080F8750FB0C9A870600000008000000080000000200000004000000030F34D0FA000000080000000200000008"
theorem small_5386607_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5386607_left_root small_5386607_left_fuel small_5386607_left_count small_5386607_left_encoded = true := by
  decide +kernel
theorem small_5386607_left_covered : CoveredBy scale carrier boxes small_5386607_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5386607_left_root small_5386607_left_fuel small_5386607_left_count small_5386607_left_encoded small_5386607_left_checked

theorem cover_5386607 : CoveredBy scale carrier boxes root_5386607 := by
  apply coveredBy_split_literal root_5386607 small_5386607_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0133.root_5386699 coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_5386607_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0133.cover_5386699
#print axioms cover_5386607

def root_5386602 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5386602_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5386602_right_fuel : Nat := 1
def small_5386602_right_count : Nat := 1
def small_5386602_right_encoded : String := "00000003"
theorem small_5386602_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5386602_right_root small_5386602_right_fuel small_5386602_right_count small_5386602_right_encoded = true := by
  decide +kernel
theorem small_5386602_right_covered : CoveredBy scale carrier boxes small_5386602_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5386602_right_root small_5386602_right_fuel small_5386602_right_count small_5386602_right_encoded small_5386602_right_checked

theorem cover_5386602 : CoveredBy scale carrier boxes root_5386602 := by
  apply coveredBy_split_literal root_5386602 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0133.root_5386607 small_5386602_right_root coord3 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0133.cover_5386607
  · exact small_5386602_right_covered
#print axioms cover_5386602

def root_5385982 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5385982_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5385982_left_fuel : Nat := 27
def small_5385982_left_count : Nat := 295
def small_5385982_left_encoded : String := "120701060000000308A913091207010800000004050000F8135D80F900000001045489F71386AD000CFD9BFB00000005000000080000000013867100000000000CFD9BFB00000005000000080000000512073D08050000F8135D80F900000001045489F71386AD000CFD9BFB0F350CFA0000000204548A0713867106000000030CFD9C090F34D10800000004000000050F350D080C9A86FA0F878CFB00000002000000090F8750FB0C9A8708000000070000000500000002000000041386AD060CFD9C090F34D108000000040C9A86FA0F878CFB00000002078000F8128A7CF900000001067ECE77000000080000000800000005000000050F350D080C9A86FA0F878CFB00000002000000090F8750FB0C9A87080F87510900000004000000090F878D09078000F8128A7CF9000000010000000700000005000000040000000200000004000000030F34D0FA04548A0713867106000000030CFD9C090F34D10800000004078000F80000000800000008000000091386AD060CFD9C090F34D10800000004000000080000000900000003000000020000000013867100000000000CFD9BFB0F350CFA0000000204548A0713867106000000030CFD9C090F34D10800000004000000050F350D080C9A86FA0F878CFB000000020C9A87080000000A0F878D090000000A000000040F8750FB0C9A87080F87510900000004078000F8128A7CF900000001022A4577000000070000000A000000050000000500000002000000041386AD060CFD9C090F34D108000000040C9A86FA0F878CFB00000002078000F8128A7CF900000001022A457713E20100067ECE870000000500000008000000000000000A00000005000000050F350D080C9A86FA0F878CFB000000020C9A87080F87510900000004000000090F878D09078000F8128A7CF900000001022A457713E20100067ECE870000000A00000009000000000000000A0000000A000000040F8750FB0C9A87080F87510900000004078000F8128A7CF900000001022A45770000000913E1C50000000000067ECE870000000A0000000A128A40F9022A4577000000090000000A000000010F878D09078000F8128A7CF900000001022A457713E20100067ECE870000000512EA95060B4D43FA10804CFB000000020DE7CA08000000070000000500000005000000030000000013E1C50000000000067ECE870000000512EA95060B4D43FA0000000A000000050000000300000005000000040000000200000004000000030F34D0FA04548A0713867106000000030000000A1386AD060CFD9C090000000A0F350D080000000A000000040000000300000002135D44F9045489F71386AD000CFD9BFB0F350CFA0000000204548A071386710600000003000000051386AD060CFD9C090F34D10800000004000000050F350D080C9A86FA000000090000000500000004000000030F34D0FA04548A070000000A1386AD060CFD9C09000000080000000900000003000000020000000013867100000000000CFD9BFB0F350CFA0000000204548A071386710600000003000000051386AD060CFD9C090000000A0F350D080C9A86FA0000000A0000000500000004000000030F34D0FA0000000A000000020000000100000004"
theorem small_5385982_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5385982_left_root small_5385982_left_fuel small_5385982_left_count small_5385982_left_encoded = true := by
  decide +kernel
theorem small_5385982_left_covered : CoveredBy scale carrier boxes small_5385982_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5385982_left_root small_5385982_left_fuel small_5385982_left_count small_5385982_left_encoded small_5385982_left_checked

theorem cover_5385982 : CoveredBy scale carrier boxes root_5385982 := by
  apply coveredBy_split_literal root_5385982 small_5385982_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0133.root_5386602 coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_5385982_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0133.cover_5386602
#print axioms cover_5385982

def root_5385976 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5385976_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5385976_left_fuel : Nat := 1
def small_5385976_left_count : Nat := 1
def small_5385976_left_encoded : String := "00000002"
theorem small_5385976_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5385976_left_root small_5385976_left_fuel small_5385976_left_count small_5385976_left_encoded = true := by
  decide +kernel
theorem small_5385976_left_covered : CoveredBy scale carrier boxes small_5385976_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5385976_left_root small_5385976_left_fuel small_5385976_left_count small_5385976_left_encoded small_5385976_left_checked

theorem cover_5385976 : CoveredBy scale carrier boxes root_5385976 := by
  apply coveredBy_split_literal root_5385976 small_5385976_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0133.root_5385982 coord2 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_5385976_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0133.cover_5385982
#print axioms cover_5385976

def root_5385975 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5385975_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5385975_right_fuel : Nat := 15
def small_5385975_right_count : Nat := 87
def small_5385975_right_encoded : String := "120700FA08A91307120701060000000308A9130912070108000000040000000812073D08050000F8135D80F900000001045489F7000000090000000A0000000A0000000412073D0608A9130912070108000000040000000812073D08050000F8135D80F900000001045489F71386AD00045489FB1386ACFA000000020CFD9C070F34D10600000003000000090F350D060CFD9C09000000080000000900000003138670FA0000000900000002000000001386710000000000045489FB1386ACFA000000020CFD9C070F34D106000000030CFD9C090000000A000000090F350D060000000700000003138670FA0CFD9C07000000080000000700000002135D44F9045489F71386AD00045489FB1386ACFA000000020CFD9C07000000080000000800000008000000001386710000000000045489FB1386ACFA000000020CFD9C0700000008000000070000000700000001000000040000000300000002"
theorem small_5385975_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5385975_right_root small_5385975_right_fuel small_5385975_right_count small_5385975_right_encoded = true := by
  decide +kernel
theorem small_5385975_right_covered : CoveredBy scale carrier boxes small_5385975_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5385975_right_root small_5385975_right_fuel small_5385975_right_count small_5385975_right_encoded small_5385975_right_checked

theorem cover_5385975 : CoveredBy scale carrier boxes root_5385975 := by
  apply coveredBy_split_literal root_5385975 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0133.root_5385976 small_5385975_right_root coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0133.cover_5385976
  · exact small_5385975_right_covered
#print axioms cover_5385975

def root_5385969 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5385969_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5385969_left_fuel : Nat := 1
def small_5385969_left_count : Nat := 1
def small_5385969_left_encoded : String := "00000000"
theorem small_5385969_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5385969_left_root small_5385969_left_fuel small_5385969_left_count small_5385969_left_encoded = true := by
  decide +kernel
theorem small_5385969_left_covered : CoveredBy scale carrier boxes small_5385969_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5385969_left_root small_5385969_left_fuel small_5385969_left_count small_5385969_left_encoded small_5385969_left_checked

theorem cover_5385969 : CoveredBy scale carrier boxes root_5385969 := by
  apply coveredBy_split_literal root_5385969 small_5385969_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0133.root_5385975 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_5385969_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0133.cover_5385975
#print axioms cover_5385969

def root_5385411 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5385411_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5385411_left_fuel : Nat := 23
def small_5385411_left_count : Nat := 257
def small_5385411_left_encoded : String := "12073D0008A912FB12073CFA0000000208A91307120701060000000308A913091207010800000004050000F8135D80F9000000010CFD9BF700000008000000080000000812073D08050000F8135D80F9000000010CFD9BF70F350D000CFD9BFB0F350CFA0000000204548A07000000071386AD060CFD9C0900000007000000090000000300000009000000000F34D100000000000CFD9BFB0F350CFA0000000204548A0713867106000000030CFD9C09000000070F350D0800000009000000041386AD060CFD9C090F34D108000000040C9A86FA0F878CFB0000000200000008000000050F350D080000000900000004000000030F34D0FA0000000900000002135D44F90CFD9BF70F350D000CFD9BFB0F350CFA0000000204548A071386710600000003000000090000000900000009000000000F34D100000000000CFD9BFB0F350CFA0000000204548A0713867106000000030CFD9C09000000050F350D0800000009000000041386AD060CFD9C090F34D10800000004000000050F350D080000000900000004000000030F34D0FA0000000900000002000000010000000412073D0608A913091207010800000004050000F8000000080000000812073D08050000F8135D80F9000000010CFD9BF70F350D000CFD9BFB0F350CFA000000020CFD9C070F34D106000000030CFD9C090F34D1080000000400000008000000090F350D060CFD9C09000000080F350D080000000900000004000000030F34D0FA0000000900000002000000000F34D100000000000CFD9BFB0F350CFA000000020CFD9C070F34D106000000030CFD9C090F34D10800000004000000080F350D080C9A86FA000000090F8750FB0000000900000002000000040F350D060CFD9C090F34D10800000004000000080F350D080C9A86FA0F878CFB00000002000000090F8750FB0C9A87060F875107000000030C9A87080000000600000008000000090000000200000004000000030F34D0FA0CFD9C070F34D10600000003000000090F350D060CFD9C0900000008000000090000000300000002135D44F90CFD9BF70F350D000CFD9BFB0F350CFA000000020CFD9C07000000080000000800000008000000000F34D100000000000CFD9BFB0F350CFA000000020CFD9C070F34D106000000030CFD9C09000000080F350D0800000009000000040F350D0600000008000000030F34D0FA0CFD9C070F34D10600000003000000090000000900000002000000010000000400000003120700FA08A91307120701060000000308A913091207010800000004000000080000000912073D0608A913090000000812073D08050000F8135D80F9000000010CFD9BF7000000090F34D1000000000000000009135D44F90CFD9BF700000009000000080000000100000004000000030000000200000000"
theorem small_5385411_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5385411_left_root small_5385411_left_fuel small_5385411_left_count small_5385411_left_encoded = true := by
  decide +kernel
theorem small_5385411_left_covered : CoveredBy scale carrier boxes small_5385411_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5385411_left_root small_5385411_left_fuel small_5385411_left_count small_5385411_left_encoded small_5385411_left_checked

theorem cover_5385411 : CoveredBy scale carrier boxes root_5385411 := by
  apply coveredBy_split_literal root_5385411 small_5385411_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0133.root_5385969 coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_5385411_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0133.cover_5385969
#print axioms cover_5385411

def root_5385406 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5385406_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5385406_right_fuel : Nat := 1
def small_5385406_right_count : Nat := 1
def small_5385406_right_encoded : String := "00000004"
theorem small_5385406_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5385406_right_root small_5385406_right_fuel small_5385406_right_count small_5385406_right_encoded = true := by
  decide +kernel
theorem small_5385406_right_covered : CoveredBy scale carrier boxes small_5385406_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5385406_right_root small_5385406_right_fuel small_5385406_right_count small_5385406_right_encoded small_5385406_right_checked

theorem cover_5385406 : CoveredBy scale carrier boxes root_5385406 := by
  apply coveredBy_split_literal root_5385406 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0133.root_5385411 small_5385406_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0133.cover_5385411
  · exact small_5385406_right_covered
#print axioms cover_5385406

def root_5385014 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5385014_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5385014_left_fuel : Nat := 23
def small_5385014_left_count : Nat := 183
def small_5385014_left_encoded : String := "1151E9090000000408A912F712073D0008A912FB12073CFA0000000208A9130712070106000000030000000912073D06050000F8135D80F9000000010500010800000009135D81090CFD9BF7000000090F34D100000000000000000900000004135D44F90000000900000001000000030000000900000000120701000000000008A912FB12073CFA0000000208A913071207010600000003050000F8135D80F9000000010500010800000009135D8109045489F70000000913867100000000000CFD9BFB0F350CFA0000000204548A0713867106000000030C9A86FA000000090F8750FB00000009000000021386AD060C9A86FA000000090F8750FB0000000900000002000000030000000900000004135D44F90500010800000009135D8109045489F70000000913867100000000000CFD9BFB0F350CFA000000020000000A00000009000000040000000112073D06050000F8135D80F90000000105000108135D450900000004045489F70000000913867100000000000CFD9BFB0000000900000009135D8109045489F71386AD000CFD9BFB0F350CFA000000020CFD9C070F34D106000000030000000900000009000000090000000013867100000000000CFD9BFB0F350CFA000000020CFD9C070F34D106000000030C9A86FA000000090F8750FB078000F80000000900000009000000020F350D060C9A86FA000000050F8750FB0C9A8706000000050F878D07078000F800000005000000090000000300000002000000030F34D0FA000000090000000200000004135D44F905000108135D45090000000400000009135D8109045489F71386AD000CFD9BFB00000009000000090000000013867100000000000CFD9BFB0F350CFA000000020CFD9C070F34D10600000003000000090F350D060C9A86FA000000090F8750FB0000000900000002000000030F34D0FA0000000900000002000000040000000100000003120700FA08A913071207010600000003000000090000000900000002"
theorem small_5385014_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5385014_left_root small_5385014_left_fuel small_5385014_left_count small_5385014_left_encoded = true := by
  decide +kernel
theorem small_5385014_left_covered : CoveredBy scale carrier boxes small_5385014_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5385014_left_root small_5385014_left_fuel small_5385014_left_count small_5385014_left_encoded small_5385014_left_checked

theorem cover_5385014 : CoveredBy scale carrier boxes root_5385014 := by
  apply coveredBy_split_literal root_5385014 small_5385014_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0133.root_5385406 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_5385014_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0133.cover_5385406
#print axioms cover_5385014

def root_5385009 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5385009_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5385009_right_fuel : Nat := 1
def small_5385009_right_count : Nat := 1
def small_5385009_right_encoded : String := "00000003"
theorem small_5385009_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5385009_right_root small_5385009_right_fuel small_5385009_right_count small_5385009_right_encoded = true := by
  decide +kernel
theorem small_5385009_right_covered : CoveredBy scale carrier boxes small_5385009_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5385009_right_root small_5385009_right_fuel small_5385009_right_count small_5385009_right_encoded small_5385009_right_checked

theorem cover_5385009 : CoveredBy scale carrier boxes root_5385009 := by
  apply coveredBy_split_literal root_5385009 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0133.root_5385014 small_5385009_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0133.cover_5385014
  · exact small_5385009_right_covered
#print axioms cover_5385009

def root_5384535 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5384535_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5384535_left_fuel : Nat := 25
def small_5384535_left_count : Nat := 225
def small_5384535_left_encoded : String := "1151E907000000030A0001081151E9090000000408A912F712073D0008A912FB12073CFA00000002050000F800000005135D44F9050001060000000500000009000000010000000600000000120701000000000008A912FB12073CFA00000002050000F800000005135D44F90500010600000005135D81070500010800000005135D8109045489F70000000613867100000000000CFD9BFB0F350CFA000000020000000600000006000000040000000300000001000000061152250908A912F712073D0008A912FB12073CFA0000000208A9130912070108000000040000000812073D08050000F8135D80F90000000105000106135D4507000000030CFD9BF7000000080F34D1000000000000000008135D81070CFD9BF7000000080F34D100000000000CFD9BFB0F350CFA000000020CFD9C09000000080F350D080C9A86FA000000080F8750FB0C9A87080000000600000008000000020000000400000008000000030000000800000004120700FA000000080000000200000000120701000000000008A912FB12073CFA0000000208A913091207010800000004050000F8135D80F9000000010500010600000008135D8107045489F70000000813867100000000000CFD9BFB0F350CFA0000000204548A09000000080000000700000007000000030000000812073D08050000F8135D80F90000000105000106135D450700000003045489F71386AD000CFD9BFB0F350CFA000000020CFD9C090F34D108000000040000000700000007000000070000000000000007135D8107045489F71386AD000CFD9BFB0F350CFA000000020CFD9C090F34D10800000004000000080F350D080C9A86FA0F878CFB00000002000000050F8750FB0C9A8708000000060F878D09078000F800000006000000060000000400000002000000040F34D0FA00000008000000020000000013867100000000000CFD9BFB0F350CFA000000020CFD9C090F34D10800000004000000070F350D080C9A86FA000000050F8750FB0C9A8708000000050000000700000002000000040F34D0FA000000070000000200000003135D44F905000106135D450700000003045489F70000000800000007135D8107045489F71386AD00000000080000000013867100000000000CFD9BFB0F350CFA000000020CFD9C090F34D10800000004000000070000000700000007000000030000000100000004120700FA08A9130900000008000000070000000200000004"
theorem small_5384535_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5384535_left_root small_5384535_left_fuel small_5384535_left_count small_5384535_left_encoded = true := by
  decide +kernel
theorem small_5384535_left_covered : CoveredBy scale carrier boxes small_5384535_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5384535_left_root small_5384535_left_fuel small_5384535_left_count small_5384535_left_encoded small_5384535_left_checked

theorem cover_5384535 : CoveredBy scale carrier boxes root_5384535 := by
  apply coveredBy_split_literal root_5384535 small_5384535_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0133.root_5385009 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_5384535_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0133.cover_5385009
#print axioms cover_5384535

def root_5384529 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5384529_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5384529_left_fuel : Nat := 1
def small_5384529_left_count : Nat := 1
def small_5384529_left_encoded : String := "00000002"
theorem small_5384529_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5384529_left_root small_5384529_left_fuel small_5384529_left_count small_5384529_left_encoded = true := by
  decide +kernel
theorem small_5384529_left_covered : CoveredBy scale carrier boxes small_5384529_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5384529_left_root small_5384529_left_fuel small_5384529_left_count small_5384529_left_encoded small_5384529_left_checked

theorem cover_5384529 : CoveredBy scale carrier boxes root_5384529 := by
  apply coveredBy_split_literal root_5384529 small_5384529_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0133.root_5384535 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5384529_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0133.cover_5384535
#print axioms cover_5384529

def root_5395987 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5395987_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (10572672)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5395987_left_fuel : Nat := 27
def small_5395987_left_count : Nat := 471
def small_5395987_left_encoded : String := "0F875107000000030C9A87080F87510900000004078000F8128A7CF900000001078000FA128A7CFB00000002022A45770000000613E1C500000000000B4D44060000000610804D070B4D44080000000610804D0908C000F811FC24F90000000100000006000000060000000400000003128A40FB022A45770000000613E1C500000000000B4D44060000000610804D070B4D44080000000610804D0908C000F80000000600000006000000040000000300000002128A40F9078000FA128A7CFB00000002022A45770000000613E1C500000000000B4D44060000000610804D070B4D44080000000610804D09064000F800000006000000060000000400000003128A40FB022A45770000000613E1C500000000000B4D44060000000610804D070B4D44080000000610804D0900000006000000040000000300000002000000010F878D09078000F8128A7CF900000001078000FA128A7CFB00000002022A457713E201000B4D440610801107000000030DE7CA08000000060000000A10804D070DE7CA080E5FD9090000000408C000F800000006000000060E60150908C000F811FC24F9000000010000000A11FBE8F908C000FA00000008000000060000000100000004000000030000000013E1C500000000000B4D440610801107000000030DE7CA080E5FD9090000000408C000F811FC24F90000000100000006000000060E60150908C000F811FC24F90000000108C000FA0000000A0000000A11FBE8F908C000FA0000000711FBE8FB011523370000000613F85900000000000000000600000002000000010000000410804D070DE7CA080E5FD9090000000408C000F811FC24F90000000108C000FA11FC24FB00000002011523370000000613F85900000000000BF3E58600000005100929070D412888000000050EFA4D0900000006000000040000000311FBE8FB011523370000000613F85900000000000BF3E586000000061009290700000006000000030000000211FBE8F908C000FA11FC24FB00000002011523370000000613F85900000000000BF3E5860000000610092907000000060000000311FBE8FB011523370000000613F85900000000000000000600000002000000010E60150908C000F811FC24F90000000108C000FA11FC24FB000000020115233713F895000DAED8890E962508000000040000000A0000000A0000000013F85900000000000DAED8890E962508000000040BF3E5860000000710092907096000F80000000A11AA80F90000000700000001000000030E9661080BF3E5860000000710092907096000F811AABCF9000000010000000A11AA80F9096000FA000000060000000600000001000000030000000411FBE8FB011523370000000A13F85900000000000DAED8890E962508000000040000000A0000000A0000000211FBE8F908C000FA11FC24FB00000002011523370000000813F85900000000000DAED8890E96250800000004000000070000000711FBE8FB0115233713F895000DAED8890E96250800000004000000080E96610800000006000000040000000013F85900000000000DAED8890E962508000000040BF3E5861008ED0700000003082000F80000000A00000005000000050E9661080BF3E5860000000610092907082000F8124698F9000000010000000600000005000000030000000400000002000000010000000400000003128A40FB022A457713E201000B4D44060000000A10804D070DE7CA080E5FD90900000004000000060000000A000000030000000013E1C500000000000B4D440610801107000000030DE7CA080E5FD9090000000408C000F800000006000000060E60150908C000F80000000A11FBE8F90000000A000000010000000410804D070DE7CA080E5FD9090000000408C000F811FC24F900000001064000FA0000000A0000000611FBE8F9064000FA12FFACFB000000020000000600000005000000010E60150908C000F811FC24F900000001064000FA0000000A0000000500000005000000040000000300000002128A40F9078000FA128A7CFB00000002022A457713E201000B4D440610801107000000030DE7CA08000000060000000810804D070DE7CA080E5FD909000000040000000600000008000000030000000013E1C500000000000B4D440610801107000000030DE7CA080E5FD90900000004064000F800000006000000060E601509064000F812FFACF90000000100000008000000070000000410804D070DE7CA080E5FD90900000004064000F812FFACF90000000108C000FA11FC24FB00000002000000060000000612FF70F908C000FA11FC24FB000000020000000600000006000000010E601509064000F812FFACF90000000108C000FA0000000800000005000000050000000400000003128A40FB022A457713E201000B4D440610801107000000030DE7CA08000000060E601509000000050000000410804D070DE7CA080E5FD909000000040000000600000005000000030000000013E1C500000000000B4D440610801107000000030DE7CA080E5FD90900000004000000060E601509000000050000000410804D070000000500000003000000020000000100000004"
theorem small_5395987_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5395987_left_root small_5395987_left_fuel small_5395987_left_count small_5395987_left_encoded = true := by
  decide +kernel
theorem small_5395987_left_covered : CoveredBy scale carrier boxes small_5395987_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5395987_left_root small_5395987_left_fuel small_5395987_left_count small_5395987_left_encoded small_5395987_left_checked

theorem cover_5395987 : CoveredBy scale carrier boxes root_5395987 := by
  apply coveredBy_split_literal root_5395987 small_5395987_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2021.root coord3 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_5395987_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2021.covered
#print axioms cover_5395987

def root_5395982 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5395982_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5395982_right_fuel : Nat := 1
def small_5395982_right_count : Nat := 1
def small_5395982_right_encoded : String := "00000004"
theorem small_5395982_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5395982_right_root small_5395982_right_fuel small_5395982_right_count small_5395982_right_encoded = true := by
  decide +kernel
theorem small_5395982_right_covered : CoveredBy scale carrier boxes small_5395982_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5395982_right_root small_5395982_right_fuel small_5395982_right_count small_5395982_right_encoded small_5395982_right_checked

theorem cover_5395982 : CoveredBy scale carrier boxes root_5395982 := by
  apply coveredBy_split_literal root_5395982 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0133.root_5395987 small_5395982_right_root coord4 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0133.cover_5395987
  · exact small_5395982_right_covered
#print axioms cover_5395982

def root_5395504 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5395504_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5395504_left_fuel : Nat := 28
def small_5395504_left_count : Nat := 225
def small_5395504_left_encoded : String := "0F34D108000000040C9A87060F87510700000003078000F8128A7CF900000001078000FA128A7CFB00000002022A457713E201000AD3578910D10108000000040000000810D13D080B4D44060000000810804D0708C000F811FC24F900000001000000080000000800000003000000040000000013E1C500000000000AD3578910D10108000000040B4D44060000000810804D07000000080000000310D13D080B4D4406108011070000000308C000F811FC24F90000000108C000FA0000000A0000000A11FBE8F9000000080000000110804D0708C000F811FC24F90000000108C000FA11FC24FB00000002011523370000000813F85900000000000BE879C91011710800000004000000081011AD080BF3E5860000000710092907096000F811AABCF9000000010000000800000008000000030000000411FBE8FB011523370000000A13F85900000000000BE879C91011710800000004000000050000000A0000000211FBE8F908C000FA0000000800000005000000010000000300000004128A40FB022A457713E201000AD3578910D10108000000040000000510D13D080B4D44060000000A00000005000000040000000013E1C500000000000AD3578910D10108000000040000000510D13D080B4D4406108011070000000308C000F80000000A00000005000000050000000400000002128A40F9078000FA128A7CFB00000002022A45770000000813E1C500000000000AD35789000000080000000800000005000000010F878D07078000F8128A7CF900000001078000FA128A7CFB00000002022A457713E201000AD3578910D10108000000040000000510D13D080DE7CA060E5FD9070000000308C000F811FC24F90000000108C000FA00000008000000050000000500000005000000040000000013E1C500000000000AD3578910D10108000000040000000510D13D080DE7CA060E5FD9070000000308C000F811FC24F90000000108C000FA11FC24FB000000020115233713F895000BE879C900000008000000080000000013F85900000000000BE879C91011710800000004000000051011AD080D4128860EFA110700000003096000F811AABCF900000001096000FA0000000811AA80FB0000000A00000002000000080EFA4D07096000F811AABCF900000001096000FA11AABCFB00000002000000080000000500000005000000030000000400000005000000050000000500000004000000050000000500000003"
theorem small_5395504_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5395504_left_root small_5395504_left_fuel small_5395504_left_count small_5395504_left_encoded = true := by
  decide +kernel
theorem small_5395504_left_covered : CoveredBy scale carrier boxes small_5395504_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5395504_left_root small_5395504_left_fuel small_5395504_left_count small_5395504_left_encoded small_5395504_left_checked

theorem cover_5395504 : CoveredBy scale carrier boxes root_5395504 := by
  apply coveredBy_split_literal root_5395504 small_5395504_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0133.root_5395982 coord4 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_5395504_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0133.cover_5395982
#print axioms cover_5395504

def root_5395499 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5395499_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5395499_right_fuel : Nat := 1
def small_5395499_right_count : Nat := 1
def small_5395499_right_encoded : String := "00000003"
theorem small_5395499_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5395499_right_root small_5395499_right_fuel small_5395499_right_count small_5395499_right_encoded = true := by
  decide +kernel
theorem small_5395499_right_covered : CoveredBy scale carrier boxes small_5395499_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5395499_right_root small_5395499_right_fuel small_5395499_right_count small_5395499_right_encoded small_5395499_right_checked

theorem cover_5395499 : CoveredBy scale carrier boxes root_5395499 := by
  apply coveredBy_split_literal root_5395499 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0133.root_5395504 small_5395499_right_root coord3 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0133.cover_5395504
  · exact small_5395499_right_covered
#print axioms cover_5395499

def root_5395003 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5395003_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5395003_left_fuel : Nat := 30
def small_5395003_left_count : Nat := 231
def small_5395003_left_encoded : String := "0F34D106000000030CFD9C090F34D10800000004000000050F350D080C9A87080F87510900000004078000F8128A7CF900000001078000FA128A7CFB00000002022A457713E201000AD3578710D10106000000030000000710D13D060B4D44080000000710804D0908C000F80000000711FBE8F908C000FA00000009000000050000000100000004000000030000000013E1C500000000000AD3578710D10106000000030B4D44080000000710804D09000000070000000410D13D060B4D4408108011090000000408C000F811FC24F9000000010000000811FBE8F908C000FA0000000911FBE8FB00000007000000020000000110804D0908C000F811FC24F90000000108C000FA11FC24FB00000002011523370000000713F85900000000000BE879C71011710600000003000000071011AD060BF3E5880000000710092909096000F80000000711AA80F9000000090000000100000004000000030000000711FBE8F908C000FA11FC24FB00000002011523370000000913F85900000000000BE879C71011710600000003000000050000000900000005000000010000000400000003128A40FB022A45770000000713E1C500000000000AD35787000000070000000700000002128A40F9078000FA128A7CFB00000002022A457713E201000AD3578710D10106000000030000000510D13D060B4D44080000000900000005000000030000000013E1C500000000000AD3578710D10106000000030000000510D13D060B4D44081080110900000004064000F80000000900000005000000050000000300000005000000010F878D09078000F8128A7CF900000001078000FA128A7CFB00000002022A457713E201000AD3578710D10106000000030000000510D13D060DE7CA080E5FD9090000000408C000F811FC24F900000001000000070000000500000005000000030000000013E1C500000000000AD3578710D10106000000030000000510D13D060DE7CA080E5FD9090000000408C000F811FC24F90000000108C000FA11FC24FB000000020115233713F895000BE879C700000007000000070000000013F85900000000000BE879C71011710600000003000000051011AD060D4128880EFA110900000004096000F811AABCF9000000010000000711AA80F9096000FA11AABCFB000000020000000900000005000000010EFA4D09096000F811AABCF900000001000000070000000500000004000000030000000500000005000000050000000300000005000000050000000400000004"
theorem small_5395003_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5395003_left_root small_5395003_left_fuel small_5395003_left_count small_5395003_left_encoded = true := by
  decide +kernel
theorem small_5395003_left_covered : CoveredBy scale carrier boxes small_5395003_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5395003_left_root small_5395003_left_fuel small_5395003_left_count small_5395003_left_encoded small_5395003_left_checked

theorem cover_5395003 : CoveredBy scale carrier boxes root_5395003 := by
  apply coveredBy_split_literal root_5395003 small_5395003_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0133.root_5395499 coord3 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_5395003_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0133.cover_5395499
#print axioms cover_5395003

def root_5394997 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5394997_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5394997_left_fuel : Nat := 1
def small_5394997_left_count : Nat := 1
def small_5394997_left_encoded : String := "00000000"
theorem small_5394997_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5394997_left_root small_5394997_left_fuel small_5394997_left_count small_5394997_left_encoded = true := by
  decide +kernel
theorem small_5394997_left_covered : CoveredBy scale carrier boxes small_5394997_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5394997_left_root small_5394997_left_fuel small_5394997_left_count small_5394997_left_encoded small_5394997_left_checked

theorem cover_5394997 : CoveredBy scale carrier boxes root_5394997 := by
  apply coveredBy_split_literal root_5394997 small_5394997_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0133.root_5395003 coord0 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_5394997_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0133.cover_5395003
#print axioms cover_5394997

def root_5394461 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5394461_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5394461_left_fuel : Nat := 22
def small_5394461_left_count : Nat := 255
def small_5394461_left_encoded : String := "1386AD000CFD9C070F34D106000000030CFD9C090F34D10800000004000000050F350D080C9A87080F87510900000004078000F8128A7CF900000001078000FA128A7CFB000000020000000700000007128A40F9078000FA128A7CFB000000020000000900000005000000010F878D09078000F8128A7CF900000001078000FA128A7CFB00000002067ECE770000000712EA5900000000000AD357870000000700000007000000050000000500000004000000040F350D060CFD9C090F34D108000000040C9A87060F87510700000003078000F8128A7CF900000001078000FA128A7CFB0000000200000008128A40FB0000000A00000002000000080F878D07078000F8128A7CF900000001078000FA128A7CFB00000002067ECE770000000812EA5900000000000AD3578900000008000000080000000500000005000000030F350D080C9A87060F875107000000030C9A87080F87510900000004078000F8128A7CF900000001078000FA0000000600000006128A40F9078000FA0000000600000006000000010F878D09078000F8128A7CF900000001078000FA128A7CFB00000002067ECE770000000612EA5900000000000B4D44060000000610804D070DE7CA08000000060000000A00000003128A40FB0000000A00000002128A40F9078000FA128A7CFB0000000200000008128A40FB067ECE770000000612EA5900000000000B4D44060000000610804D070DE7CA080000000600000005000000030000000200000001000000040F878D070C9A87080F87510900000004078000F8128A7CF900000001078000FA128A7CFB00000002067ECE770000000612EA5900000000000DE7CA060000000600000009128A40FB0000000700000002128A40F9078000FA128A7CFB0000000200000009128A40FB067ECE770000000612EA5900000000000DE7CA06000000060000000700000002000000010F878D09078000F8128A7CF900000001078000FA128A7CFB00000002067ECE7712EA95000DE7CA060E5FD907000000030DE7CA080000000600000008000000070000000012EA5900000000000DE7CA060E5FD907000000030DE7CA080E5FD9090000000408C000F800000006000000060E60150908C000F80000000A00000008000000040E6015070DE7CA080E5FD9090000000408C000F80000000711FBE8F900000009000000010E60150908C000F811FC24F90000000100000007000000050000000400000003128A40FB067ECE770000000712EA5900000000000DE7CA060E5FD90700000003000000070000000700000002128A40F9078000FA128A7CFB00000002067ECE770000000812EA5900000000000DE7CA06000000080E601507000000050000000300000005000000010000000400000003000000040000000300000000"
theorem small_5394461_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5394461_left_root small_5394461_left_fuel small_5394461_left_count small_5394461_left_encoded = true := by
  decide +kernel
theorem small_5394461_left_covered : CoveredBy scale carrier boxes small_5394461_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5394461_left_root small_5394461_left_fuel small_5394461_left_count small_5394461_left_encoded small_5394461_left_checked

theorem cover_5394461 : CoveredBy scale carrier boxes root_5394461 := by
  apply coveredBy_split_literal root_5394461 small_5394461_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0133.root_5394997 coord0 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact small_5394461_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0133.cover_5394997
#print axioms cover_5394461

def root_5394455 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5394455_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5394455_left_fuel : Nat := 1
def small_5394455_left_count : Nat := 1
def small_5394455_left_encoded : String := "00000002"
theorem small_5394455_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5394455_left_root small_5394455_left_fuel small_5394455_left_count small_5394455_left_encoded = true := by
  decide +kernel
theorem small_5394455_left_covered : CoveredBy scale carrier boxes small_5394455_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5394455_left_root small_5394455_left_fuel small_5394455_left_count small_5394455_left_encoded small_5394455_left_checked

theorem cover_5394455 : CoveredBy scale carrier boxes root_5394455 := by
  apply coveredBy_split_literal root_5394455 small_5394455_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0133.root_5394461 coord2 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_5394455_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0133.cover_5394461
#print axioms cover_5394455

def root_5394454 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5394454_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5394454_right_fuel : Nat := 20
def small_5394454_right_count : Nat := 137
def small_5394454_right_encoded : String := "135D44FB045489F71386AD000CFD9C070F34D10600000003000000050F350D060CFD9C090F34D10800000004000000050F350D080C9A87060F875107000000030C9A87080F87510900000004078000F8128A7CF90000000100000006000000060F878D09078000F80000000A128A40F90000000500000001000000040F878D070C9A8708000000070F878D0900000005000000040000000300000004000000030000000013867100000000000CFD9C070F34D10600000003000000050F350D060CFD9C090F34D10800000004000000050F350D080C9A87060F875107000000030C9A87080F87510900000004078000F8128A7CF900000001028000FA13D7ECFB00000002022A45770000000613E1C500000000000B4D44060000000610804D07000000060000000300000006128A40F9028000FA13D7ECFB00000002022A45770000000613E1C500000000000B4D44060000000610804D07000000060000000300000005000000010F878D09078000F8128A7CF900000001028000FA13D7ECFB00000002022A45770000000A13E1C500000000000B4D440610801107000000030000000A10804D0700000005000000030000000500000005000000040F878D070C9A87080F87510900000004078000F8128A7CF900000001028000FA13D7ECFB00000002022A45770000000713E1C500000000000DE7CA060E5FD90700000003000000070000000700000005000000050000000500000003000000040000000300000002"
theorem small_5394454_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5394454_right_root small_5394454_right_fuel small_5394454_right_count small_5394454_right_encoded = true := by
  decide +kernel
theorem small_5394454_right_covered : CoveredBy scale carrier boxes small_5394454_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5394454_right_root small_5394454_right_fuel small_5394454_right_count small_5394454_right_encoded small_5394454_right_checked

theorem cover_5394454 : CoveredBy scale carrier boxes root_5394454 := by
  apply coveredBy_split_literal root_5394454 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0133.root_5394455 small_5394454_right_root coord2 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0133.cover_5394455
  · exact small_5394454_right_covered
#print axioms cover_5394454

def root_5394448 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5394448_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5394448_left_fuel : Nat := 1
def small_5394448_left_count : Nat := 1
def small_5394448_left_encoded : String := "00000001"
theorem small_5394448_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5394448_left_root small_5394448_left_fuel small_5394448_left_count small_5394448_left_encoded = true := by
  decide +kernel
theorem small_5394448_left_covered : CoveredBy scale carrier boxes small_5394448_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5394448_left_root small_5394448_left_fuel small_5394448_left_count small_5394448_left_encoded small_5394448_left_checked

theorem cover_5394448 : CoveredBy scale carrier boxes root_5394448 := by
  apply coveredBy_split_literal root_5394448 small_5394448_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0133.root_5394454 coord1 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_5394448_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0133.cover_5394454
#print axioms cover_5394448

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0133
