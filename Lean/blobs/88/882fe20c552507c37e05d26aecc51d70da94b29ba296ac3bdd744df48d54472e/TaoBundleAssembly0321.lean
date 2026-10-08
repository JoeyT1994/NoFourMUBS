import TaoBundleAssembly0320
import TaoBundleChunkBatch0424
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0321
def root_4503714 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4503714_right_root : ZRayBox := fun j => (#[⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4503714_right_fuel : Nat := 22
def small_4503714_right_count : Nat := 261
def small_4503714_right_encoded : String := "135D45010000000005000102135D4503000000010CFD9C050F34D0FA00000008000000020F350CFA00000002045489FD1386ACFC00000003045489FF0000000613867108000000040C9A86FA000000060F8751050000000200000006138670FC045489FF000000060000000800000003135D81030CFD9C050F34D0FA045489FD1386ACFC00000003045489FF000000051386710800000004028000F613D7ED010780010200000008000000070000000000000008138670FC045489FF1386AD08028000F613D7ED010780010200000005128A7D0300000005000000010000000000000008000000040000000800000003000000020F350CFA00000002045489FD1386ACFC00000003045489FF1386AD080C9A86FA000000060F87510500000002000000060000000413867108000000040C9A86FA0F878D05028000F613D7ED0107800102128A41030000000100000008128A7D03067ECE7D0000000712EA58FC0000000700000003000000010000000013D7B101000000000780010200000006128A7D030000000700000001000000020F87510500000002028000F613D7ED0107800102128A410300000001067ECE7D0000000612EA58FC0000000600000003128A7D03067ECE7D12EA94FC00000003022A457F0000000613E1C508000000040000000712EA58FC022A457F13E201080B4D43FA000000061080110500000002000000060000000413E1C508000000040000000700000003000000010000000013D7B101000000000780010200000006128A7D03067ECE7D0000000612EA58FC000000060000000300000001138670FC045489FF1386AD080C9A86FA0F878D05028000F613D7ED0107800102128A41030000000100000006128A7D03022A457D13E200FC00000003067ECE7F000000050000000900000009000000010000000000000006000000020F87510500000002028000F613D7ED0107800102128A41030000000100000006128A7D03022A457D0000000613E1C4FC067ECE7F0000000600000009000000030000000100000000000000060000000413867108000000040C9A86FA0F878D05028000F613D7ED010780010200000008128A7D0300000009000000010000000000000008000000020F87510500000002028000F613D7ED0107800102128A410300000001022A457D13E200FC00000003022A457F000000060000000813E1C4FC022A457F13E201080B4D43FA00000008108011050000000200000009000000040000000500000003128A7D03022A457D13E200FC00000003022A457F13E201080B4D43FA000000091080110500000002000000090000000413E1C508000000040000000700000009000000010000000013D7B101000000000780010200000008128A7D03022A457D13E200FC00000003022A457F000000060000000700000009000000010000000300000001"
theorem small_4503714_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4503714_right_root small_4503714_right_fuel small_4503714_right_count small_4503714_right_encoded = true := by
  decide +kernel
theorem small_4503714_right_covered : CoveredBy scale carrier boxes small_4503714_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4503714_right_root small_4503714_right_fuel small_4503714_right_count small_4503714_right_encoded small_4503714_right_checked

theorem cover_4503714 : CoveredBy scale carrier boxes root_4503714 := by
  apply coveredBy_split_literal root_4503714 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0320.root_4503715 small_4503714_right_root coord0 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0320.cover_4503715
  · exact small_4503714_right_covered
#print axioms cover_4503714

def root_4503708 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4503708_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4503708_left_fuel : Nat := 1
def small_4503708_left_count : Nat := 1
def small_4503708_left_encoded : String := "00000004"
theorem small_4503708_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4503708_left_root small_4503708_left_fuel small_4503708_left_count small_4503708_left_encoded = true := by
  decide +kernel
theorem small_4503708_left_covered : CoveredBy scale carrier boxes small_4503708_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4503708_left_root small_4503708_left_fuel small_4503708_left_count small_4503708_left_encoded small_4503708_left_checked

theorem cover_4503708 : CoveredBy scale carrier boxes root_4503708 := by
  apply coveredBy_split_literal root_4503708 small_4503708_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0321.root_4503714 coord4 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_4503708_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0321.cover_4503714
#print axioms cover_4503708

def root_4503582 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4503582_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4503582_left_fuel : Nat := 15
def small_4503582_left_count : Nat := 61
def small_4503582_left_encoded : String := "12073D08050000F6135D810105000102135D4503000000010CFD9C05000000050F350CFA00000002045489FD00000005138670FC0CFD9BFF000000050F34D108000000040C9A86FA000000060000000500000003135D81030CFD9C05000000050F350CFA00000002045489FD00000005138670FC0CFD9BFF000000050F34D108000000040C9A86FA000000050F87510500000002078000F60000000500000006000000030000000100000000135D45010000000005000102135D45030000000100000006135D81030CFD9C05000000050F350CFA00000002045489FD00000005138670FC00000006000000030000000100000004"
theorem small_4503582_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4503582_left_root small_4503582_left_fuel small_4503582_left_count small_4503582_left_encoded = true := by
  decide +kernel
theorem small_4503582_left_covered : CoveredBy scale carrier boxes small_4503582_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4503582_left_root small_4503582_left_fuel small_4503582_left_count small_4503582_left_encoded small_4503582_left_checked

theorem cover_4503582 : CoveredBy scale carrier boxes root_4503582 := by
  apply coveredBy_split_literal root_4503582 small_4503582_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0321.root_4503708 coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_4503582_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0321.cover_4503708
#print axioms cover_4503582

def root_4503577 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4503577_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4503577_right_fuel : Nat := 1
def small_4503577_right_count : Nat := 1
def small_4503577_right_encoded : String := "00000003"
theorem small_4503577_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4503577_right_root small_4503577_right_fuel small_4503577_right_count small_4503577_right_encoded = true := by
  decide +kernel
theorem small_4503577_right_covered : CoveredBy scale carrier boxes small_4503577_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4503577_right_root small_4503577_right_fuel small_4503577_right_count small_4503577_right_encoded small_4503577_right_checked

theorem cover_4503577 : CoveredBy scale carrier boxes root_4503577 := by
  apply coveredBy_split_literal root_4503577 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0321.root_4503582 small_4503577_right_root coord3 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0321.cover_4503582
  · exact small_4503577_right_covered
#print axioms cover_4503577

def root_4503207 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4503207_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4503207_left_fuel : Nat := 26
def small_4503207_left_count : Nat := 169
def small_4503207_left_encoded : String := "12073CFC0000000308A912FF12073D0800000005000000041207010800000004050000F6135D810105000102135D4503000000010CFD9C05000000050F350CFA000000020CFD9BFD000000050F34D0FC045489FF0000000513867108000000040C9A86FA0F878D0500000005000000020F87510500000002078000F6128A7D0100000005000000000000000600000003135D81030CFD9C050F34D0FA00000005000000020F350CFA000000020CFD9BFD0F350CFC00000003045489FF0000000513867108000000040C9A86FA000000050F875105000000020C9A86FC000000050F8750FD00000005000000030F34D0FC045489FF0000000513867108000000040C9A86FA0F878D0500000005000000020F87510500000002078000F6128A7D010780010200000005128A7D03000000050000000100000000128A41010000000007800102128A41030000000100000006128A7D030AD3577D0000000510D100FC022A457F0000000513E1C508000000040B4D43FA10804D05000000050000000210801105000000020000000A0000000300000001000000030000000100000000135D45010000000005000102135D4503000000010CFD9C050F34D0FA00000005000000020F350CFA000000020CFD9BFD000000060F34D0FC0000000600000003135D81030CFD9C050F34D0FA0CFD9BFD000000050F34D0FC0000000500000003000000020F350CFA000000020CFD9BFD0F350CFC00000003045489FF0000000613867108000000040C9A86FA000000060F87510500000002000000060F34D0FC045489FF0000000613867108000000040C9A86FA0F878D05028000F613D7ED010780010200000006128A7D030AD3577D0000000510D100FC0000000500000003000000010000000000000006000000020F87510500000002000000060000000300000001"
theorem small_4503207_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4503207_left_root small_4503207_left_fuel small_4503207_left_count small_4503207_left_encoded = true := by
  decide +kernel
theorem small_4503207_left_covered : CoveredBy scale carrier boxes small_4503207_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4503207_left_root small_4503207_left_fuel small_4503207_left_count small_4503207_left_encoded small_4503207_left_checked

theorem cover_4503207 : CoveredBy scale carrier boxes root_4503207 := by
  apply coveredBy_split_literal root_4503207 small_4503207_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0321.root_4503577 coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_4503207_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0321.cover_4503577
#print axioms cover_4503207

def root_4503201 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4503201_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4503201_left_fuel : Nat := 1
def small_4503201_left_count : Nat := 1
def small_4503201_left_encoded : String := "00000002"
theorem small_4503201_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4503201_left_root small_4503201_left_fuel small_4503201_left_count small_4503201_left_encoded = true := by
  decide +kernel
theorem small_4503201_left_covered : CoveredBy scale carrier boxes small_4503201_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4503201_left_root small_4503201_left_fuel small_4503201_left_count small_4503201_left_encoded small_4503201_left_checked

theorem cover_4503201 : CoveredBy scale carrier boxes root_4503201 := by
  apply coveredBy_split_literal root_4503201 small_4503201_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0321.root_4503207 coord2 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_4503201_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0321.cover_4503207
#print axioms cover_4503201

def root_4503143 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4503143_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4503143_left_fuel : Nat := 13
def small_4503143_left_count : Nat := 29
def small_4503143_left_encoded : String := "120700FA08A912FD00000005120700FC08A912FF000000051207010800000004050000F6135D810105000102135D45030000000104548A05000000051386ACFA00000002045489FD00000005000000080000000500000000135D4501000000000500010200000008000000080000000300000002"
theorem small_4503143_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4503143_left_root small_4503143_left_fuel small_4503143_left_count small_4503143_left_encoded = true := by
  decide +kernel
theorem small_4503143_left_covered : CoveredBy scale carrier boxes small_4503143_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4503143_left_root small_4503143_left_fuel small_4503143_left_count small_4503143_left_encoded small_4503143_left_checked

theorem cover_4503143 : CoveredBy scale carrier boxes root_4503143 := by
  apply coveredBy_split_literal root_4503143 small_4503143_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0321.root_4503201 coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_4503143_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0321.cover_4503201
#print axioms cover_4503143

def root_4503137 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4503137_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4503137_left_fuel : Nat := 1
def small_4503137_left_count : Nat := 1
def small_4503137_left_encoded : String := "00000004"
theorem small_4503137_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4503137_left_root small_4503137_left_fuel small_4503137_left_count small_4503137_left_encoded = true := by
  decide +kernel
theorem small_4503137_left_covered : CoveredBy scale carrier boxes small_4503137_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4503137_left_root small_4503137_left_fuel small_4503137_left_count small_4503137_left_encoded small_4503137_left_checked

theorem cover_4503137 : CoveredBy scale carrier boxes root_4503137 := by
  apply coveredBy_split_literal root_4503137 small_4503137_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0321.root_4503143 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_4503137_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0321.cover_4503143
#print axioms cover_4503137

def root_4503121 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4503121_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4503121_left_fuel : Nat := 4
def small_4503121_left_count : Nat := 7
def small_4503121_left_encoded : String := "1151E8FF08A913050000000512073CFA000000020000000500000004"
theorem small_4503121_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4503121_left_root small_4503121_left_fuel small_4503121_left_count small_4503121_left_encoded = true := by
  decide +kernel
theorem small_4503121_left_covered : CoveredBy scale carrier boxes small_4503121_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4503121_left_root small_4503121_left_fuel small_4503121_left_count small_4503121_left_encoded small_4503121_left_checked

theorem cover_4503121 : CoveredBy scale carrier boxes root_4503121 := by
  apply coveredBy_split_literal root_4503121 small_4503121_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0321.root_4503137 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_4503121_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0321.cover_4503137
#print axioms cover_4503121

def root_4503115 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4503115_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4503115_left_fuel : Nat := 1
def small_4503115_left_count : Nat := 1
def small_4503115_left_encoded : String := "00000003"
theorem small_4503115_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4503115_left_root small_4503115_left_fuel small_4503115_left_count small_4503115_left_encoded = true := by
  decide +kernel
theorem small_4503115_left_covered : CoveredBy scale carrier boxes small_4503115_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4503115_left_root small_4503115_left_fuel small_4503115_left_count small_4503115_left_encoded small_4503115_left_checked

theorem cover_4503115 : CoveredBy scale carrier boxes root_4503115 := by
  apply coveredBy_split_literal root_4503115 small_4503115_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0321.root_4503121 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_4503115_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0321.cover_4503121
#print axioms cover_4503115

def root_4503114 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4503114_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4503114_right_fuel : Nat := 21
def small_4503114_right_count : Nat := 85
def small_4503114_right_encoded : String := "1151E8FD0A0001081151E8FF0000000500000004115224FF0000000408A91305120700FA000000050000000212073CFA0000000208A912FF12073D08050000F60000000500000006000000041207010800000004050000F6135D810105000102135D450300000001050000FC00000005135D44FD0000000500000003135D8103050000FC135D80FD000000030CFD9C05000000050F350CFA00000002045489FF0000000513867108000000040C9A86FA000000050F87510500000002078000F60000000500000006135D44FD0CFD9C05000000050F350CFA00000002045489FF0000000513867108000000040C9A86FA000000050F8751050000000200000006000000030000000100000000135D4501000000000500010200000006135D8103050000FC135D80FD000000030CFD9C050F34D0FA000000050000000200000006135D44FD00000006000000030000000100000003"
theorem small_4503114_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4503114_right_root small_4503114_right_fuel small_4503114_right_count small_4503114_right_encoded = true := by
  decide +kernel
theorem small_4503114_right_covered : CoveredBy scale carrier boxes small_4503114_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4503114_right_root small_4503114_right_fuel small_4503114_right_count small_4503114_right_encoded small_4503114_right_checked

theorem cover_4503114 : CoveredBy scale carrier boxes root_4503114 := by
  apply coveredBy_split_literal root_4503114 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0321.root_4503115 small_4503114_right_root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0321.cover_4503115
  · exact small_4503114_right_covered
#print axioms cover_4503114

def root_4503109 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4503109_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4503109_right_fuel : Nat := 1
def small_4503109_right_count : Nat := 1
def small_4503109_right_encoded : String := "00000002"
theorem small_4503109_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4503109_right_root small_4503109_right_fuel small_4503109_right_count small_4503109_right_encoded = true := by
  decide +kernel
theorem small_4503109_right_covered : CoveredBy scale carrier boxes small_4503109_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4503109_right_root small_4503109_right_fuel small_4503109_right_count small_4503109_right_encoded small_4503109_right_checked

theorem cover_4503109 : CoveredBy scale carrier boxes root_4503109 := by
  apply coveredBy_split_literal root_4503109 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0321.root_4503114 small_4503109_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0321.cover_4503114
  · exact small_4503109_right_covered
#print axioms cover_4503109

def root_4513554 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4513554_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(6291456), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4513554_right_fuel : Nat := 24
def small_4513554_right_count : Nat := 199
def small_4513554_right_encoded : String := "128A7D03078000FA128A7D05067ECE7D12EA94FC00000003022A457F13E2010808C000F60000000811FBE9010000000008C0010211FBE9030000000108C000FA11FC2505000000050000000211FBE9050000000200000008000000080000000413E1C5080000000408C000F611FC2501000000080000000011FBE9010000000008C0010211FBE9030000000108C000FA11FC25050793F0BD0000000A128220FC0000000A00000003000000020000000A11FC2503000000080000000112EA58FC022A457F13E2010808C000F60000000811FBE9010000000008C0010211FBE9030000000108C000FA11FC25050569AC3D000000081340D4FC033F67BF0000000813BBF5080000000400000008000000030000000211FBE9050000000200000008000000080000000413E1C5080000000408C000F611FC250108C0010211FBE9030000000108C000FA11FC25050569AC3D00000008000000080000000200000008000000080000000011FBE9010000000008C0010211FBE9030000000108C000FA11FC25050569AC3D134110FC000000030115233F13F89508082000F60000000812465D0100000000082001020000000A000000080000000413F8590800000004082000F612469901082001020000000A00000007000000000000000A1340D4FC0115233F13F89508082000F60000000812465D01000000000820010212465D0300000001096000FA0000000911AA81050000000200000008000000080000000413F8590800000004082000F6124699010820010212465D0300000001096000FA0000000711AA81050000000200000008000000070000000012465D0100000000082001020000000A00000007000000030000000211FBE905000000020569AC3D0000000A1340D4FC0115233F000000080000000A0000000311FC250308C000FA11FC25050569AC3D00000008000000080000000200000008000000010000000300000002128A410500000002067ECE7D12EA94FC00000003022A457F000000080000000A12EA58FC022A457F0000000813E1C5080000000408C000F60000000811FBE9010000000008C0010200000008000000080000000300000001"
theorem small_4513554_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4513554_right_root small_4513554_right_fuel small_4513554_right_count small_4513554_right_encoded = true := by
  decide +kernel
theorem small_4513554_right_covered : CoveredBy scale carrier boxes small_4513554_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4513554_right_root small_4513554_right_fuel small_4513554_right_count small_4513554_right_encoded small_4513554_right_checked

theorem cover_4513554 : CoveredBy scale carrier boxes root_4513554 := by
  apply coveredBy_split_literal root_4513554 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1693.root small_4513554_right_root coord1 false (6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1693.covered
  · exact small_4513554_right_covered
#print axioms cover_4513554

def root_4513549 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4513549_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-6291456)⟩, ⟨(15553280), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4513549_right_fuel : Nat := 1
def small_4513549_right_count : Nat := 1
def small_4513549_right_encoded : String := "00000000"
theorem small_4513549_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4513549_right_root small_4513549_right_fuel small_4513549_right_count small_4513549_right_encoded = true := by
  decide +kernel
theorem small_4513549_right_covered : CoveredBy scale carrier boxes small_4513549_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4513549_right_root small_4513549_right_fuel small_4513549_right_count small_4513549_right_encoded small_4513549_right_checked

theorem cover_4513549 : CoveredBy scale carrier boxes root_4513549 := by
  apply coveredBy_split_literal root_4513549 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0321.root_4513554 small_4513549_right_root coord0 true (15553280)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0321.cover_4513554
  · exact small_4513549_right_covered
#print axioms cover_4513549

def root_4513548 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4513548_right_root : ZRayBox := fun j => (#[⟨⟨(-6291456), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4513548_right_fuel : Nat := 25
def small_4513548_right_count : Nat := 261
def small_4513548_right_encoded : String := "128A41010000000007800102128A410300000001078000FA128A7D05067ECE7D12EA94FC00000003022A457F0000000613E1C50800000004064000F612FFAD010000000A000000000000000612EA58FC022A457F13E20108064000F612FFAD01064001020000000612FFAD0308C000FA0000000611FBE90500000002000000060000000100000000000000060000000413E1C50800000004064000F612FFAD010640010212FF71030000000108C000FA11FC25050569AC3D000000061340D4FC0115233F000000060000000500000003000000020000000A12FFAD0308C000FA11FC25050569AC3D0000000A1340D4FC0115233F13F8950806E000F612C8210106E001020000000612C82103096000FA000000060000000A000000010000000000000006000000040000000A00000003000000020000000A000000010000000012FF710100000000064001020000000A0000000A0000000300000002128A410500000002067ECE7D0000000A12EA58FC022A457F13E20108064000F612FFAD0106400102000000060000000A0000000000000006000000040000000A00000003128A7D03078000FA128A7D05067ECE7D12EA94FC00000003022A457F13E20108064000F612FFAD0108C0010211FBE903000000010000000611FC250308C000FA11FC25050793F0BD00000005128220FC0000000800000003000000020000000A000000010000000000000006000000040000000A12EA58FC022A457F13E20108064000F612FFAD0108C0010211FBE9030000000108C000FA11FC25050569AC3D000000061340D4FC033F67BF0000000613BBF5080000000406E000F612C821010820010212465D030000000100000006000000080000000000000006000000030000000211FBE905000000020569AC3D000000061340D4FC033F67BF000000060000000A0000000311FC250308C000FA11FC25050569AC3D00000008000000090000000211FBE9050000000200000008000000010000000012FF71010000000008C0010211FBE9030000000108C000FA000000060000000A11FC250308C000FA11FC25050569AC3D0000000600000009000000020000000A000000010000000413E1C50800000004064000F612FFAD0108C0010211FBE9030000000108C000FA11FC25050569AC3D0000000A1340D4FC0115233F13F8950806E000F612C82101082001020000000A00000009000000000000000A000000040000000700000003000000020000000A11FC250308C000FA11FC25050569AC3D0000000700000009000000020000000A000000010000000012FF71010000000008C001020000000A0000000A0000000300000002128A410500000002067ECE7D0000000A12EA58FC022A457F13E20108064000F612FFAD0108C001020000000A00000008000000000000000A000000040000000A0000000300000001"
theorem small_4513548_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4513548_right_root small_4513548_right_fuel small_4513548_right_count small_4513548_right_encoded = true := by
  decide +kernel
theorem small_4513548_right_covered : CoveredBy scale carrier boxes small_4513548_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4513548_right_root small_4513548_right_fuel small_4513548_right_count small_4513548_right_encoded small_4513548_right_checked

theorem cover_4513548 : CoveredBy scale carrier boxes root_4513548 := by
  apply coveredBy_split_literal root_4513548 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0321.root_4513549 small_4513548_right_root coord0 false (-6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0321.cover_4513549
  · exact small_4513548_right_covered
#print axioms cover_4513548

def root_4513542 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4513542_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4513542_left_fuel : Nat := 1
def small_4513542_left_count : Nat := 1
def small_4513542_left_encoded : String := "00000004"
theorem small_4513542_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4513542_left_root small_4513542_left_fuel small_4513542_left_count small_4513542_left_encoded = true := by
  decide +kernel
theorem small_4513542_left_covered : CoveredBy scale carrier boxes small_4513542_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4513542_left_root small_4513542_left_fuel small_4513542_left_count small_4513542_left_encoded small_4513542_left_checked

theorem cover_4513542 : CoveredBy scale carrier boxes root_4513542 := by
  apply coveredBy_split_literal root_4513542 small_4513542_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0321.root_4513548 coord4 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_4513542_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0321.cover_4513548
#print axioms cover_4513542

def root_4513348 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4513348_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4513348_left_fuel : Nat := 15
def small_4513348_left_count : Nat := 93
def small_4513348_left_encoded : String := "1386AD08078000F6128A7D0107800102128A410300000001078000FA128A7D05067ECE7D0000000512EA58FC067ECE7F0000000512EA59080000000408C000F611FC25010000000500000000000000060000000300000002128A410500000002067ECE7D0000000612EA58FC067ECE7F0000000612EA5908000000040000000700000003128A7D03078000FA128A7D05067ECE7D0000000512EA58FC067ECE7F0000000512EA590800000004000000080000000300000002128A410500000002067ECE7D00000008000000080000000100000000128A41010000000007800102128A41030000000100000006128A7D03078000FA128A7D05067ECE7D0000000612EA58FC067ECE7F0000000612EA590800000004064000F612FFAD0108C00102000000060000000800000000000000060000000300000002128A410500000002067ECE7D0000000612EA58FC067ECE7F0000000612EA590800000004064000F60000000800000006000000030000000100000004"
theorem small_4513348_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4513348_left_root small_4513348_left_fuel small_4513348_left_count small_4513348_left_encoded = true := by
  decide +kernel
theorem small_4513348_left_covered : CoveredBy scale carrier boxes small_4513348_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4513348_left_root small_4513348_left_fuel small_4513348_left_count small_4513348_left_encoded small_4513348_left_checked

theorem cover_4513348 : CoveredBy scale carrier boxes root_4513348 := by
  apply coveredBy_split_literal root_4513348 small_4513348_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0321.root_4513542 coord4 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact small_4513348_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0321.cover_4513542
#print axioms cover_4513348

def root_4513342 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4513342_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-16379648)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4513342_left_fuel : Nat := 1
def small_4513342_left_count : Nat := 1
def small_4513342_left_encoded : String := "00000003"
theorem small_4513342_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4513342_left_root small_4513342_left_fuel small_4513342_left_count small_4513342_left_encoded = true := by
  decide +kernel
theorem small_4513342_left_covered : CoveredBy scale carrier boxes small_4513342_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4513342_left_root small_4513342_left_fuel small_4513342_left_count small_4513342_left_encoded small_4513342_left_checked

theorem cover_4513342 : CoveredBy scale carrier boxes root_4513342 := by
  apply coveredBy_split_literal root_4513342 small_4513342_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0321.root_4513348 coord3 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_4513342_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0321.cover_4513348
#print axioms cover_4513342

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0321
