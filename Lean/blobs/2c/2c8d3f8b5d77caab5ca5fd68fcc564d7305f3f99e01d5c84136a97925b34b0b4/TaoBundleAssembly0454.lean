import TaoBundleAssembly0453
import TaoBundleChunkBatch0623
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0454
def root_6600973 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6600973_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6600973_right_fuel : Nat := 21
def small_6600973_right_count : Nat := 131
def small_6600973_right_encoded : String := "135D4507000000030CFD9BF70F350D00045489F91386AD020CFD9C050F34D0FA00000006000000020F350CFA000000020CFD9BFF0F350D080C9A87000F8750F70C9A86FA0000000600000006000000000F878CF7000000000C9A86FA000000090F875105000000020C9A87080000000900000006000000040F34D10800000004000000060000000113867102000000010CFD9C050F34D0FA0CFD9BFF0F350D08000000090000000400000006000000020F350CFA000000020CFD9BFF0F350D080C9A87000F8750F70C9A86FA0F878D0500000009000000020F875105000000020C9A8708000000090F878CFF0000000400000006000000000F878CF7000000000C9A86FA000000090F875105000000020C9A8708000000090F878CFF00000004028000FC13D7ED07022A45790000000613E1C502000000010DE7CA0000000006000000080000000300000005000000040F34D1080000000400000006000000000F34D10000000000045489F91386AD020CFD9C050F34D0FA00000006000000020F350CFA000000020CFD9BFF0F350D080C9A86FA000000090F875105000000020C9A87080000000900000006000000040F34D10800000004000000060000000113867102000000010CFD9C05000000080F350CFA000000020CFD9BFF0F350D080C9A86FA000000090F875105000000020C9A87080000000800000005000000040F34D1080000000400000005"
theorem small_6600973_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6600973_right_root small_6600973_right_fuel small_6600973_right_count small_6600973_right_encoded = true := by
  decide +kernel
theorem small_6600973_right_covered : CoveredBy scale carrier boxes small_6600973_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6600973_right_root small_6600973_right_fuel small_6600973_right_count small_6600973_right_encoded small_6600973_right_checked

theorem cover_6600973 : CoveredBy scale carrier boxes root_6600973 := by
  apply coveredBy_split_literal root_6600973 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0453.root_6600974 small_6600973_right_root coord3 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0453.cover_6600974
  · exact small_6600973_right_covered
#print axioms cover_6600973

def root_6600968 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6600968_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6600968_right_fuel : Nat := 1
def small_6600968_right_count : Nat := 1
def small_6600968_right_encoded : String := "00000004"
theorem small_6600968_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6600968_right_root small_6600968_right_fuel small_6600968_right_count small_6600968_right_encoded = true := by
  decide +kernel
theorem small_6600968_right_covered : CoveredBy scale carrier boxes small_6600968_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6600968_right_root small_6600968_right_fuel small_6600968_right_count small_6600968_right_encoded small_6600968_right_checked

theorem cover_6600968 : CoveredBy scale carrier boxes root_6600968 := by
  apply coveredBy_split_literal root_6600968 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0454.root_6600973 small_6600968_right_root coord4 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0454.cover_6600973
  · exact small_6600968_right_covered
#print axioms cover_6600968

def root_6600967 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6600967_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6600967_right_fuel : Nat := 15
def small_6600967_right_count : Nat := 61
def small_6600967_right_encoded : String := "1207010800000004050000FC135D81070CFD9BF70F350D00045489F91386AD020CFD9C05000000060F350CFA00000002000000060000000113867102000000010CFD9C050F34D0FA00000006000000020F350CFA00000002045489FF1386AD080C9A8700000000060F878CF7000000000C9A86FA000000060000000600000004138671080000000400000006000000000F34D10000000000045489F90000000613867102000000010CFD9C05000000060F350CFA00000002045489FF1386AD080C9A86FA0000000600000005000000040000000600000003135D4507000000030CFD9BF70F350D00000000060000000000000006"
theorem small_6600967_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6600967_right_root small_6600967_right_fuel small_6600967_right_count small_6600967_right_encoded = true := by
  decide +kernel
theorem small_6600967_right_covered : CoveredBy scale carrier boxes small_6600967_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6600967_right_root small_6600967_right_fuel small_6600967_right_count small_6600967_right_encoded small_6600967_right_checked

theorem cover_6600967 : CoveredBy scale carrier boxes root_6600967 := by
  apply coveredBy_split_literal root_6600967 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0454.root_6600968 small_6600967_right_root coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0454.cover_6600968
  · exact small_6600967_right_covered
#print axioms cover_6600967

def root_6600961 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6600961_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6600961_left_fuel : Nat := 1
def small_6600961_left_count : Nat := 1
def small_6600961_left_encoded : String := "00000002"
theorem small_6600961_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6600961_left_root small_6600961_left_fuel small_6600961_left_count small_6600961_left_encoded = true := by
  decide +kernel
theorem small_6600961_left_covered : CoveredBy scale carrier boxes small_6600961_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6600961_left_root small_6600961_left_fuel small_6600961_left_count small_6600961_left_encoded small_6600961_left_checked

theorem cover_6600961 : CoveredBy scale carrier boxes root_6600961 := by
  apply coveredBy_split_literal root_6600961 small_6600961_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0454.root_6600967 coord2 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_6600961_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0454.cover_6600967
#print axioms cover_6600961

def root_6600903 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6600903_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6600903_left_fuel : Nat := 10
def small_6600903_left_count : Nat := 25
def small_6600903_left_encoded : String := "120700FA08A912FF12073D08050000FC135D81070CFD9BF70F350D00045489F900000006138671020000000100000009000000000F34D100000000000000000900000003135D450700000003000000060000000412070108000000040000000600000002"
theorem small_6600903_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6600903_left_root small_6600903_left_fuel small_6600903_left_count small_6600903_left_encoded = true := by
  decide +kernel
theorem small_6600903_left_covered : CoveredBy scale carrier boxes small_6600903_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6600903_left_root small_6600903_left_fuel small_6600903_left_count small_6600903_left_encoded small_6600903_left_checked

theorem cover_6600903 : CoveredBy scale carrier boxes root_6600903 := by
  apply coveredBy_split_literal root_6600903 small_6600903_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0454.root_6600961 coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_6600903_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0454.cover_6600961
#print axioms cover_6600903

def root_6600897 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6600897_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6600897_left_fuel : Nat := 1
def small_6600897_left_count : Nat := 1
def small_6600897_left_encoded : String := "00000001"
theorem small_6600897_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6600897_left_root small_6600897_left_fuel small_6600897_left_count small_6600897_left_encoded = true := by
  decide +kernel
theorem small_6600897_left_covered : CoveredBy scale carrier boxes small_6600897_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6600897_left_root small_6600897_left_fuel small_6600897_left_count small_6600897_left_encoded small_6600897_left_checked

theorem cover_6600897 : CoveredBy scale carrier boxes root_6600897 := by
  apply coveredBy_split_literal root_6600897 small_6600897_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0454.root_6600903 coord1 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_6600897_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0454.cover_6600903
#print axioms cover_6600897

def root_6600547 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6600547_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6600547_left_fuel : Nat := 22
def small_6600547_left_count : Nat := 161
def small_6600547_left_encoded : String := "12073D0208A91305120700FA08A912FF12073D08050000FC000000060000000600000004000000060000000212073CFA0000000208A912FF12073D08050000FC135D81070CFD9BF70F350D000CFD9BF90F350D020CFD9C05000000060F350CFA000000020CFD9BFF0F350D080C9A8700000000060F878CF700000000000000060000000400000006000000010F34D102000000010CFD9C050F34D0FA00000006000000020F350CFA000000020CFD9BFF0F350D080C9A87000F8750F70C9A86FA0F878D0500000006000000020F875105000000020C9A87080F8750FF000000090000000400000006000000000F878CF7000000000C9A86FA0F878D0500000009000000020F875105000000020C9A87080F8750FF000000090000000400000006000000040F34D1080000000400000006000000000F34D100000000000CFD9BF90F350D020CFD9C05000000060F350CFA000000020CFD9BFF0F350D080C9A870200000006000000060000000400000006000000010F34D102000000010CFD9C050F34D0FA00000006000000020F350CFA000000020CFD9BFF0F350D080C9A86FA0F878D050C9A87080000000900000006000000020F875105000000020C9A87080F8750FF00000009000000040F878CFF0000000400000006000000040F34D108000000040000000600000003135D4507000000030CFD9BF70F350D000CFD9BF9000000060F34D102000000010CFD9C05000000060F350CFA0000000200000006000000000F34D100000000000CFD9BF9000000060F34D102000000010CFD9C05000000060F350CFA0000000200000006000000041207010800000004050000FC135D81070CFD9BF70F350D00000000060000000000000006000000030000000600000001"
theorem small_6600547_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6600547_left_root small_6600547_left_fuel small_6600547_left_count small_6600547_left_encoded = true := by
  decide +kernel
theorem small_6600547_left_covered : CoveredBy scale carrier boxes small_6600547_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6600547_left_root small_6600547_left_fuel small_6600547_left_count small_6600547_left_encoded small_6600547_left_checked

theorem cover_6600547 : CoveredBy scale carrier boxes root_6600547 := by
  apply coveredBy_split_literal root_6600547 small_6600547_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0454.root_6600897 coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_6600547_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0454.cover_6600897
#print axioms cover_6600547

def root_6600542 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6600542_right_root : ZRayBox := fun j => (#[⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6600542_right_fuel : Nat := 1
def small_6600542_right_count : Nat := 1
def small_6600542_right_encoded : String := "00000000"
theorem small_6600542_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6600542_right_root small_6600542_right_fuel small_6600542_right_count small_6600542_right_encoded = true := by
  decide +kernel
theorem small_6600542_right_covered : CoveredBy scale carrier boxes small_6600542_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6600542_right_root small_6600542_right_fuel small_6600542_right_count small_6600542_right_encoded small_6600542_right_checked

theorem cover_6600542 : CoveredBy scale carrier boxes root_6600542 := by
  apply coveredBy_split_literal root_6600542 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0454.root_6600547 small_6600542_right_root coord0 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0454.cover_6600547
  · exact small_6600542_right_covered
#print axioms cover_6600542

def root_6600541 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6600541_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6600541_right_fuel : Nat := 27
def small_6600541_right_count : Nat := 325
def small_6600541_right_encoded : String := "120701000000000008A912F912073D0208A91305120700FA08A912FF12073D08050000FC135D8107045489F71386AD000CFD9BF9000000060F34D1020000000100000006000000000000000700000003135D450700000003045489F70000000913867100000000000000000900000004000000060000000212073CFA0000000208A912FF12073D08050000FC135D8107045489F71386AD000CFD9BF9000000070F34D102000000010CFD9C050F34D0FA00000006000000020F350CFA000000020CFD9BFF0F350D080C9A86FA000000070F875105000000020000000700000004000000070000000013867100000000000000000700000003135D450700000003045489F71386AD000CFD9BF9000000060F34D102000000010CFD9C05000000060F350CFA00000002000000060000000013867100000000000CFD9BF9000000070F34D10200000001000000060000000412070108000000040000000600000001120701020000000108A91305120700FA08A912FF12073D08050000FC135D8107045489F70000000800000008000000030000000800000004000000060000000212073CFA0000000208A912FF12073D08050000FC135D8107045489F71386AD00045489F91386AD020CFD9C050F34D0FA0CFD9BFF0000000900000006000000020F350CFA000000020CFD9BFF0F350D080C9A86FA0F878D0500000009000000020F875105000000020C9A87080F8750FF00000009000000040F878CFF00000004078000FC0000000700000007000000040F34D10800000004000000070000000113867102000000010CFD9C050F34D0FA00000008000000020F350CFA000000020CFD9BFF0F350D080C9A86FA0F878D050C9A8708000000080F878CFF0000000400000008000000020F875105000000020C9A87080F8750FF078000FC128A7D07067ECE770000000912EA590000000000000000080000000300000008000000040F878CFF00000004078000FC128A7D07067ECE7712EA9500022A457900000007000000080000000012EA590000000000000000080000000300000005000000040F34D108000000040C9A86FA0F878D05000000080000000200000005000000001386710000000000045489F91386AD020CFD9C050F34D0FA00000007000000020F350CFA000000020CFD9BFF0F350D080C9A86FA000000070F875105000000020C9A87080F8750FF078000FC0000000700000007000000040000000700000004000000070000000113867102000000010CFD9C050F34D0FA00000008000000020F350CFA000000020CFD9BFF0F350D080C9A86FA0F878D0500000008000000020F875105000000020C9A87080F8750FF078000FC128A7D070000000800000003000000050000000400000005000000040F34D108000000040000000500000003135D450700000003045489F71386AD00045489F91386AD020CFD9C05000000060F350CFA000000020CFD9BFF0F350D080C9A86FA000000090F875105000000020C9A8708000000080000000500000004000000060000000113867102000000010CFD9C05000000080F350CFA000000020CFD9BFF0F350D08000000080000000400000008000000001386710000000000045489F91386AD020CFD9C05000000060F350CFA000000020CFD9BFF0F350D080C9A86FA000000060000000500000004000000060000000100000008000000041207010800000004050000FC135D8107045489F71386AD00045489F90000000613867102000000010CFD9C05000000060000000700000000000000070000000300000005"
theorem small_6600541_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6600541_right_root small_6600541_right_fuel small_6600541_right_count small_6600541_right_encoded = true := by
  decide +kernel
theorem small_6600541_right_covered : CoveredBy scale carrier boxes small_6600541_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6600541_right_root small_6600541_right_fuel small_6600541_right_count small_6600541_right_encoded small_6600541_right_checked

theorem cover_6600541 : CoveredBy scale carrier boxes root_6600541 := by
  apply coveredBy_split_literal root_6600541 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0454.root_6600542 small_6600541_right_root coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0454.cover_6600542
  · exact small_6600541_right_covered
#print axioms cover_6600541

def root_6600535 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6600535_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6600535_left_fuel : Nat := 1
def small_6600535_left_count : Nat := 1
def small_6600535_left_encoded : String := "00000004"
theorem small_6600535_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6600535_left_root small_6600535_left_fuel small_6600535_left_count small_6600535_left_encoded = true := by
  decide +kernel
theorem small_6600535_left_covered : CoveredBy scale carrier boxes small_6600535_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6600535_left_root small_6600535_left_fuel small_6600535_left_count small_6600535_left_encoded small_6600535_left_checked

theorem cover_6600535 : CoveredBy scale carrier boxes root_6600535 := by
  apply coveredBy_split_literal root_6600535 small_6600535_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0454.root_6600541 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6600535_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0454.cover_6600541
#print axioms cover_6600535

def root_6600185 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6600185_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6600185_left_fuel : Nat := 17
def small_6600185_left_count : Nat := 161
def small_6600185_left_encoded : String := "1151E8FF08A912F712073D0008A912F912073D0208A91305120700FA000000090000000212073CFA00000002050000FC135D810705000108135D44FF0CFD9BF7000000090F34D100000000000000000900000004135D80FF000000040CFD9BF70F350D000CFD9BF90F350D020CFD9C050000000900000009000000010F34D1020000000100000009000000000F34D100000000000CFD9BF9000000090F34D102000000010000000900000003135D4507000000030500010800000009135D80FF000000040CFD9BF70F350D000CFD9BF9000000090F34D1020000000100000009000000000F34D100000000000000000900000001120701020000000108A913050000000912073CFA00000002050000FC135D81070500010800000009135D80FF000000040CFD9BF70F350D00045489F900000009138671020000000100000009000000000F34D100000000000000000900000003135D4507000000030500010800000009135D80FF000000040CFD9BF7000000090F34D100000000000000000900000000120701000000000008A912F912073D0208A913050000000912073CFA00000002050000FC135D81070500010800000009135D80FF00000004045489F71386AD000CFD9BF9000000090F34D10200000001000000090000000013867100000000000CFD9BF9000000090F34D102000000010000000900000003135D4507000000030500010800000009135D80FF00000004045489F70000000913867100000000000000000900000001120701020000000108A913050000000912073CFA00000002050000FC135D81070500010800000009135D80FF00000004045489F70000000913867100000000000000000900000003135D4507000000030000000900000004"
theorem small_6600185_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6600185_left_root small_6600185_left_fuel small_6600185_left_count small_6600185_left_encoded = true := by
  decide +kernel
theorem small_6600185_left_covered : CoveredBy scale carrier boxes small_6600185_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6600185_left_root small_6600185_left_fuel small_6600185_left_count small_6600185_left_encoded small_6600185_left_checked

theorem cover_6600185 : CoveredBy scale carrier boxes root_6600185 := by
  apply coveredBy_split_literal root_6600185 small_6600185_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0454.root_6600535 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_6600185_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0454.cover_6600535
#print axioms cover_6600185

def root_6600179 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6600179_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6600179_left_fuel : Nat := 1
def small_6600179_left_count : Nat := 1
def small_6600179_left_encoded : String := "00000003"
theorem small_6600179_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6600179_left_root small_6600179_left_fuel small_6600179_left_count small_6600179_left_encoded = true := by
  decide +kernel
theorem small_6600179_left_covered : CoveredBy scale carrier boxes small_6600179_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6600179_left_root small_6600179_left_fuel small_6600179_left_count small_6600179_left_encoded small_6600179_left_checked

theorem cover_6600179 : CoveredBy scale carrier boxes root_6600179 := by
  apply coveredBy_split_literal root_6600179 small_6600179_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0454.root_6600185 coord3 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_6600179_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0454.cover_6600185
#print axioms cover_6600179

def root_6586695 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6586695 : CoveredBy scale carrier boxes root_6586695 := by
  apply coveredBy_split_literal root_6586695 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0453.root_6586696 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0454.root_6600179 coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0453.cover_6586696
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0454.cover_6600179
#print axioms cover_6586695

def root_6586690 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6586690_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6586690_right_fuel : Nat := 1
def small_6586690_right_count : Nat := 1
def small_6586690_right_encoded : String := "00000002"
theorem small_6586690_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6586690_right_root small_6586690_right_fuel small_6586690_right_count small_6586690_right_encoded = true := by
  decide +kernel
theorem small_6586690_right_covered : CoveredBy scale carrier boxes small_6586690_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6586690_right_root small_6586690_right_fuel small_6586690_right_count small_6586690_right_encoded small_6586690_right_checked

theorem cover_6586690 : CoveredBy scale carrier boxes root_6586690 := by
  apply coveredBy_split_literal root_6586690 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0454.root_6586695 small_6586690_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0454.cover_6586695
  · exact small_6586690_right_covered
#print axioms cover_6586690

def root_6606705 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6606705_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6606705_right_fuel : Nat := 34
def small_6606705_right_count : Nat := 313
def small_6606705_right_encoded : String := "0F34D10000000000045489F91386AD020CFD9C070F34D0FC0000000A000000030F350CFC000000030CFD9BFF0F350D080C9A86FC0F878D070000000A000000030F875107000000030C9A87080000000A0F878CFF000000040000000A000000040F34D108000000040C9A86FC0F878D070000000A000000030F87510700000003078000FA000000070000000A0000000113867102000000010CFD9C070F34D0FC0CFD9BFF0F350D080000000A000000040000000A000000030F350CFC000000030CFD9BFF0F350D080C9A86FC0F878D070C9A87080F8750FF078000FA128A7D050AD357770000000A0000000A000000020000000A000000040F878CFF00000004078000FA128A7D050AD3577710D13D00022A45790000000A13E1C502000000010DE7C9FC0000000A0000000A000000000000000A000000020000000A000000030F875107000000030C9A87080F8750FF078000FA128A7D050AD3577710D13D00022A45790000000A13E1C502000000010B4D43FC10804D070B4D44080000000A10804CFF000000040000000A0000000310801107000000030B4D4408108010FF08C000FA000000090000000A0000000410804CFF0000000408C000FA11FC25050BE879B71011AD00011523390000000A13F85902000000010AA6A27C000000060000000A000000000000000A000000020000000A0000000010D10100000000000000000A00000002128A4105000000020000000A000000040F878CFF00000004078000FA128A7D050AD3577710D13D00022A457913E201020B4D43FC0000000A0000000A0000000113E1C502000000010B4D43FC10804D070DE7CA080000000A0E6014FF0000000408C000FA11FC25050BE879B70000000A0000000A000000020000000A0000000310801107000000030DE7CA080E5FD8FF08C000FA11FC25050BE879B71011AD00011523390000000A13F85902000000010AA6A27C10EDAD070000000A0000000310ED7107000000030D4128880000000A0EFA4CFF000000040000000A0000000010117100000000000000000A000000020000000A000000040E6014FF0000000408C000FA11FC25050BE879B71011AD00011523390000000A13F85902000000010DAED87F0E9661080AA6A27C0000000A10ED710700000003096000FA11AABD050000000A0000000200000005000000040E962508000000040AA6A27C10EDAD070000000A00000003000000050000000010117100000000000000000A00000002000000050000000010D1010000000000022A45790000000A13E1C502000000010B4D43FC0000000A0000000A00000002128A4105000000020AD357770000000A0000000A000000040F34D108000000040C9A86FC0F878D07078000FA128A7D050AD3577710D13D00022A45790000000A13E1C502000000010AD3577F00000009000000090000000010D10100000000000000000A00000002128A41050000000200000009000000030F87510700000003078000FA128A7D050AD3577710D13D00022A457913E201020AD3577F10D13D080B4D43FC000000070000000A00000004000000070000000113E1C502000000010AD3577F10D13D080B4D43FC10804D0708C000FA11FC25050BE879B71011AD00011523390000000700000009000000000000000A000000020000000500000003000000050000000410D1010800000004000000050000000010D1010000000000000000050000000200000005"
theorem small_6606705_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6606705_right_root small_6606705_right_fuel small_6606705_right_count small_6606705_right_encoded = true := by
  decide +kernel
theorem small_6606705_right_covered : CoveredBy scale carrier boxes small_6606705_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6606705_right_root small_6606705_right_fuel small_6606705_right_count small_6606705_right_encoded small_6606705_right_checked

theorem cover_6606705 : CoveredBy scale carrier boxes root_6606705 := by
  apply coveredBy_split_literal root_6606705 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2490.root small_6606705_right_root coord0 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2490.covered
  · exact small_6606705_right_covered
#print axioms cover_6606705

def root_6606700 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6606700_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6606700_right_fuel : Nat := 1
def small_6606700_right_count : Nat := 1
def small_6606700_right_encoded : String := "00000002"
theorem small_6606700_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6606700_right_root small_6606700_right_fuel small_6606700_right_count small_6606700_right_encoded = true := by
  decide +kernel
theorem small_6606700_right_covered : CoveredBy scale carrier boxes small_6606700_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6606700_right_root small_6606700_right_fuel small_6606700_right_count small_6606700_right_encoded small_6606700_right_checked

theorem cover_6606700 : CoveredBy scale carrier boxes root_6606700 := by
  apply coveredBy_split_literal root_6606700 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0454.root_6606705 small_6606700_right_root coord2 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0454.cover_6606705
  · exact small_6606700_right_covered
#print axioms cover_6606700

def root_6606699 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6606699_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6606699_right_fuel : Nat := 21
def small_6606699_right_count : Nat := 95
def small_6606699_right_encoded : String := "135D4505000000020CFD9BF70F350D00045489F91386AD020CFD9C070F34D0FC00000008000000030F350CFC000000030CFD9BFF0F350D080C9A87000F8750F700000008000000000000000A000000040F34D108000000040C9A8700000000080000000A0000000113867102000000010CFD9C070F34D0FC00000008000000030F350CFC000000030CFD9BFF0F350D080C9A87000F8750F70C9A86FC000000080F875107000000030C9A87080F8750FF000000080000000400000008000000000F878CF7000000000C9A86FC0F878D070000000A000000030F875107000000030C9A87080000000A0F878CFF00000004028000FA13D7ED05022A45790000000A13E1C502000000010DE7CA00000000090000000A0000000200000005000000040F34D108000000040C9A8700000000080F878CF70000000000000009000000000F34D10000000000045489F90000000A13867102000000010CFD9C070000000A0F350CFC000000030CFD9BFF0F350D080000000A000000040000000A"
theorem small_6606699_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6606699_right_root small_6606699_right_fuel small_6606699_right_count small_6606699_right_encoded = true := by
  decide +kernel
theorem small_6606699_right_covered : CoveredBy scale carrier boxes small_6606699_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6606699_right_root small_6606699_right_fuel small_6606699_right_count small_6606699_right_encoded small_6606699_right_checked

theorem cover_6606699 : CoveredBy scale carrier boxes root_6606699 := by
  apply coveredBy_split_literal root_6606699 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0454.root_6606700 small_6606699_right_root coord2 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0454.cover_6606700
  · exact small_6606699_right_covered
#print axioms cover_6606699

def root_6606694 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6606694_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6606694_right_fuel : Nat := 1
def small_6606694_right_count : Nat := 1
def small_6606694_right_encoded : String := "00000004"
theorem small_6606694_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6606694_right_root small_6606694_right_fuel small_6606694_right_count small_6606694_right_encoded = true := by
  decide +kernel
theorem small_6606694_right_covered : CoveredBy scale carrier boxes small_6606694_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6606694_right_root small_6606694_right_fuel small_6606694_right_count small_6606694_right_encoded small_6606694_right_checked

theorem cover_6606694 : CoveredBy scale carrier boxes root_6606694 := by
  apply coveredBy_split_literal root_6606694 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0454.root_6606699 small_6606694_right_root coord4 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0454.cover_6606699
  · exact small_6606694_right_covered
#print axioms cover_6606694

def root_6606693 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6606693_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6606693_right_fuel : Nat := 21
def small_6606693_right_count : Nat := 163
def small_6606693_right_encoded : String := "1207010800000004050000FA135D81050CFD9BF70F350D00045489F91386AD020CFD9C070F34D0FC00000008000000030F350CFC00000003045489FF1386AD080C9A87000F8750F700000008000000000F878CF7000000000C9A86FC000000070F87510700000003078000FA00000007000000070000000413867108000000040C9A87000F8750F70C9A86FC000000070F87510700000003078000FA000000060000000600000000000000070000000113867102000000010CFD9C070F34D0FC00000008000000030F350CFC00000003045489FF1386AD080C9A87000F8750F70C9A86FC000000080F87510700000003078000FA128A7D05022A457900000008000000090000000200000009000000000F878CF7000000000C9A86FC0F878D0700000009000000030F87510700000003078000FA128A7D05022A457913E20102067ECE7F0000000700000007000000010000000900000002000000050000000413867108000000040C9A87000F8750F70C9A86FC000000080F87510700000003078000FA128A7D05000000090000000200000005000000000F878CF70000000000000009000000000F34D10000000000045489F91386AD020CFD9C070000000A000000070000000113867102000000010CFD9C07000000090F350CFC00000003045489FF1386AD080C9A86FC0F878D070000000900000003000000050000000413867108000000040000000500000002135D4505000000020CFD9BF70F350D00045489F91386AD020CFD9C070000000A0F350CFC00000003045489FF1386AD080C9A8700000000080000000A0000000413867108000000040C9A8700000000080000000500000001138671020000000100000009000000000F34D10000000000045489F90000000A00000009"
theorem small_6606693_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6606693_right_root small_6606693_right_fuel small_6606693_right_count small_6606693_right_encoded = true := by
  decide +kernel
theorem small_6606693_right_covered : CoveredBy scale carrier boxes small_6606693_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6606693_right_root small_6606693_right_fuel small_6606693_right_count small_6606693_right_encoded small_6606693_right_checked

theorem cover_6606693 : CoveredBy scale carrier boxes root_6606693 := by
  apply coveredBy_split_literal root_6606693 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0454.root_6606694 small_6606693_right_root coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0454.cover_6606694
  · exact small_6606693_right_covered
#print axioms cover_6606693

def root_6606687 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6606687_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6606687_left_fuel : Nat := 1
def small_6606687_left_count : Nat := 1
def small_6606687_left_encoded : String := "00000003"
theorem small_6606687_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6606687_left_root small_6606687_left_fuel small_6606687_left_count small_6606687_left_encoded = true := by
  decide +kernel
theorem small_6606687_left_covered : CoveredBy scale carrier boxes small_6606687_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6606687_left_root small_6606687_left_fuel small_6606687_left_count small_6606687_left_encoded small_6606687_left_checked

theorem cover_6606687 : CoveredBy scale carrier boxes root_6606687 := by
  apply coveredBy_split_literal root_6606687 small_6606687_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0454.root_6606693 coord3 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_6606687_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0454.cover_6606693
#print axioms cover_6606687

def root_6606627 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6606627_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6606627_left_fuel : Nat := 8
def small_6606627_left_count : Nat := 27
def small_6606627_left_encoded : String := "120700FC08A912FF12073D08050000FA135D81050CFD9BF70F350D0000000008000000000F34D100000000000000000A00000002135D4505000000020000000A000000041207010800000004050000FA135D81050CFD9BF70000000800000009000000020000000900000003"
theorem small_6606627_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6606627_left_root small_6606627_left_fuel small_6606627_left_count small_6606627_left_encoded = true := by
  decide +kernel
theorem small_6606627_left_covered : CoveredBy scale carrier boxes small_6606627_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6606627_left_root small_6606627_left_fuel small_6606627_left_count small_6606627_left_encoded small_6606627_left_checked

theorem cover_6606627 : CoveredBy scale carrier boxes root_6606627 := by
  apply coveredBy_split_literal root_6606627 small_6606627_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0454.root_6606687 coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_6606627_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0454.cover_6606687
#print axioms cover_6606627

def root_6606621 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6606621_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6606621_left_fuel : Nat := 1
def small_6606621_left_count : Nat := 1
def small_6606621_left_encoded : String := "00000001"
theorem small_6606621_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6606621_left_root small_6606621_left_fuel small_6606621_left_count small_6606621_left_encoded = true := by
  decide +kernel
theorem small_6606621_left_covered : CoveredBy scale carrier boxes small_6606621_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6606621_left_root small_6606621_left_fuel small_6606621_left_count small_6606621_left_encoded small_6606621_left_checked

theorem cover_6606621 : CoveredBy scale carrier boxes root_6606621 := by
  apply coveredBy_split_literal root_6606621 small_6606621_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0454.root_6606627 coord1 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_6606621_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0454.cover_6606627
#print axioms cover_6606621

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0454
