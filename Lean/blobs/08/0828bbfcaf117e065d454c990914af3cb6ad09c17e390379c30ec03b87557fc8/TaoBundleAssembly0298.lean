import TaoBundleAssembly0296
import TaoBundleAssembly0297
import TaoBundleChunkBatch0389
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0298
def root_4137075 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4137075_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4137075_right_fuel : Nat := 21
def small_4137075_right_count : Nat := 115
def small_4137075_right_encoded : String := "135D4505000000020CFD9C010F34D0F60CFD9BF90F350D020CFD9BFD0F350D06000000080000000300000007000000010F34D102000000010CFD9BFD0000000800000006000000000F350CF6000000000CFD9BF90F350D020CFD9BFD0F350D06045489FF1386AD080C9A86F60F878D0100000007000000000F875101000000000C9A8702000000070F878CF9000000010C9A870600000008000000070000000413867108000000040C9A86F60F878D010C9A87020F8750F9000000080000000100000008000000000F875101000000000C9A87020F8750F90C9A8706000000080F878CFD0000000300000007000000010F878CF9000000010C9A8706000000080F878CFD00000003028000FA13D7ED05022A457F0000000713E1C508000000040B4D43F600000007000000070000000200000005000000030F34D10600000003045489FF00000007138671080000000400000007000000010F34D102000000010CFD9BFD0F350D06045489FF1386AD080C9A86F6000000080F875101000000000C9A870600000008000000070000000413867108000000040C9A86F6000000080F875101000000000C9A87060000000600000005000000030F34D10600000003045489FF0000000700000006"
theorem small_4137075_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4137075_right_root small_4137075_right_fuel small_4137075_right_count small_4137075_right_encoded = true := by
  decide +kernel
theorem small_4137075_right_covered : CoveredBy scale carrier boxes small_4137075_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4137075_right_root small_4137075_right_fuel small_4137075_right_count small_4137075_right_encoded small_4137075_right_checked

theorem cover_4137075 : CoveredBy scale carrier boxes root_4137075 := by
  apply coveredBy_split_literal root_4137075 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0297.root_4137076 small_4137075_right_root coord2 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0297.cover_4137076
  · exact small_4137075_right_covered
#print axioms cover_4137075

def root_4137069 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4137069_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4137069_left_fuel : Nat := 1
def small_4137069_left_count : Nat := 1
def small_4137069_left_encoded : String := "00000004"
theorem small_4137069_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4137069_left_root small_4137069_left_fuel small_4137069_left_count small_4137069_left_encoded = true := by
  decide +kernel
theorem small_4137069_left_covered : CoveredBy scale carrier boxes small_4137069_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4137069_left_root small_4137069_left_fuel small_4137069_left_count small_4137069_left_encoded small_4137069_left_checked

theorem cover_4137069 : CoveredBy scale carrier boxes root_4137069 := by
  apply coveredBy_split_literal root_4137069 small_4137069_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0298.root_4137075 coord4 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_4137069_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0298.cover_4137075
#print axioms cover_4137069

def root_4136777 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4136777_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4136777_left_fuel : Nat := 18
def small_4136777_left_count : Nat := 135
def small_4136777_left_encoded : String := "12073D08050000FA135D81050CFD9C010F34D0F60CFD9BF90F350D020CFD9BFD0F350D060CFD9BFF000000070F34D10800000004000000070000000300000007000000010F34D102000000010CFD9BFD0F350D060CFD9BFF000000070F34D10800000004000000070000000300000007000000000F350CF6000000000CFD9BF90F350D020CFD9BFD0F350D060CFD9BFF0F350D080C9A86F60000000700000007000000040F34D108000000040C9A86F60F878D010C9A87020000000700000008000000000F875101000000000C9A87020F8750F90C9A87060F8750FD000000080000000300000007000000010F878CF9000000010C9A87060F8750FD000000080000000300000007000000030F34D1060000000300000007000000010F34D102000000010CFD9BFD0F350D060CFD9BFF0F350D080C9A86F60000000700000007000000040F34D108000000040C9A86F60F878D010C9A87060000000800000007000000000F875101000000000C9A87060F8750FD00000008000000030F878CFD0000000300000007000000030F34D106000000030000000700000002135D4505000000020CFD9C010F34D0F600000007000000000F350CF6000000000CFD9BF90F350D020CFD9BFD0F350D060CFD9BFF000000070F34D10800000004000000070000000300000007000000010F34D102000000010CFD9BFD0F350D060CFD9BFF000000070F34D1080000000400000007000000030000000700000004"
theorem small_4136777_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4136777_left_root small_4136777_left_fuel small_4136777_left_count small_4136777_left_encoded = true := by
  decide +kernel
theorem small_4136777_left_covered : CoveredBy scale carrier boxes small_4136777_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4136777_left_root small_4136777_left_fuel small_4136777_left_count small_4136777_left_encoded small_4136777_left_checked

theorem cover_4136777 : CoveredBy scale carrier boxes root_4136777 := by
  apply coveredBy_split_literal root_4136777 small_4136777_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0298.root_4137069 coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_4136777_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0298.cover_4137069
#print axioms cover_4136777

def root_4136772 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4136772_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4136772_right_fuel : Nat := 1
def small_4136772_right_count : Nat := 1
def small_4136772_right_encoded : String := "00000003"
theorem small_4136772_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4136772_right_root small_4136772_right_fuel small_4136772_right_count small_4136772_right_encoded = true := by
  decide +kernel
theorem small_4136772_right_covered : CoveredBy scale carrier boxes small_4136772_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4136772_right_root small_4136772_right_fuel small_4136772_right_count small_4136772_right_encoded small_4136772_right_checked

theorem cover_4136772 : CoveredBy scale carrier boxes root_4136772 := by
  apply coveredBy_split_literal root_4136772 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0298.root_4136777 small_4136772_right_root coord3 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0298.cover_4136777
  · exact small_4136772_right_covered
#print axioms cover_4136772

def root_4136771 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4136771_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4136771_right_fuel : Nat := 18
def small_4136771_right_count : Nat := 71
def small_4136771_right_encoded : String := "120701060000000308A912FF12073D08050000FA135D81050CFD9C01000000070F350CF600000000000000070000000200000007000000041207010800000004050000FA135D81050CFD9C010F34D0F600000007000000000F350CF6000000000CFD9BF90F350D02045489FD1386AD06045489FF0000000713867108000000040C9A86F60F878D0100000007000000000F875101000000000C9A8702000000070F878CF9000000010000000700000003138671060000000300000007000000010F34D10200000001045489FD1386AD06045489FF0000000713867108000000040C9A86F600000007000000050000000313867106000000030000000700000002135D4505000000020CFD9C01000000070F350CF60000000000000007"
theorem small_4136771_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4136771_right_root small_4136771_right_fuel small_4136771_right_count small_4136771_right_encoded = true := by
  decide +kernel
theorem small_4136771_right_covered : CoveredBy scale carrier boxes small_4136771_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4136771_right_root small_4136771_right_fuel small_4136771_right_count small_4136771_right_encoded small_4136771_right_checked

theorem cover_4136771 : CoveredBy scale carrier boxes root_4136771 := by
  apply coveredBy_split_literal root_4136771 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0298.root_4136772 small_4136771_right_root coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0298.cover_4136772
  · exact small_4136771_right_covered
#print axioms cover_4136771

def root_4136766 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4136766_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4136766_right_fuel : Nat := 1
def small_4136766_right_count : Nat := 1
def small_4136766_right_encoded : String := "00000001"
theorem small_4136766_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4136766_right_root small_4136766_right_fuel small_4136766_right_count small_4136766_right_encoded = true := by
  decide +kernel
theorem small_4136766_right_covered : CoveredBy scale carrier boxes small_4136766_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4136766_right_root small_4136766_right_fuel small_4136766_right_count small_4136766_right_encoded small_4136766_right_checked

theorem cover_4136766 : CoveredBy scale carrier boxes root_4136766 := by
  apply coveredBy_split_literal root_4136766 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0298.root_4136771 small_4136766_right_root coord1 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0298.cover_4136771
  · exact small_4136766_right_covered
#print axioms cover_4136766

def root_4136765 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4136765_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4136765_right_fuel : Nat := 25
def small_4136765_right_count : Nat := 259
def small_4136765_right_encoded : String := "120701020000000108A912FD12073D0608A912FF12073D08050000FA135D81050CFD9C010F34D0F60000000A000000000F350CF600000000045489F91386AD020CFD9BFD0F350D060CFD9BFF0000000A0F34D108000000040C9A86F60000000A0F8751010000000000000009000000030000000A000000010000000A00000002135D4505000000020CFD9C010F34D0F6045489F9000000070000000A000000000F350CF600000000045489F91386AD020CFD9BFD0F350D060CFD9BFF000000070F34D108000000040000000700000003000000070000000113867102000000010CFD9BFD0F350D060CFD9BFF00000007000000070000000300000007000000041207010800000004050000FA135D81050CFD9C010F34D0F6045489F91386AD020CFD9BFD0F350D0600000008000000030F34D10600000003000000060000000113867102000000010CFD9BFD0F350D06000000060000000300000006000000000F350CF600000000045489F91386AD020CFD9BFD0F350D06045489FF1386AD080C9A86F60F878D0100000008000000000F875101000000000C9A87060F8750FD00000008000000030F878CFD00000003078000FA0000000A0000000A0000000413867108000000040C9A86F60F878D010C9A8706000000060F878CFD0000000300000006000000000F875101000000000C9A87060F8750FD078000FA128A7D05067ECE790000000812EA590200000001000000060000000200000006000000030F878CFD00000003078000FA128A7D05067ECE7912EA9502022A457F0000000A000000060000000112EA590200000001000000060000000200000005000000030F34D10600000003045489FF0000000A13867108000000040C9A86F60F878D010000000600000000000000050000000113867102000000010CFD9BFD0F350D06045489FF1386AD080C9A86F60000000A0F875101000000000C9A87060F8750FD078000FA0000000900000009000000030000000A0000000413867108000000040C9A86F60F878D0100000006000000000F875101000000000C9A87060F8750FD078000FA128A7D050000000600000002000000050000000300000005000000030F34D106000000030000000A00000002135D4505000000020CFD9C010F34D0F600000006000000000F350CF600000000045489F91386AD020CFD9BFD0F350D06045489FF1386AD080C9A86F6000000080F875101000000000C9A870600000006000000050000000400000006000000030F34D10600000003000000050000000113867102000000010CFD9BFD0F350D06045489FF1386AD080C9A86F600000006000000050000000400000006000000030000000600000003120701060000000308A912FF000000071207010800000004050000FA135D81050CFD9C01000000070000000A0000000200000005"
theorem small_4136765_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4136765_right_root small_4136765_right_fuel small_4136765_right_count small_4136765_right_encoded = true := by
  decide +kernel
theorem small_4136765_right_covered : CoveredBy scale carrier boxes small_4136765_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4136765_right_root small_4136765_right_fuel small_4136765_right_count small_4136765_right_encoded small_4136765_right_checked

theorem cover_4136765 : CoveredBy scale carrier boxes root_4136765 := by
  apply coveredBy_split_literal root_4136765 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0298.root_4136766 small_4136765_right_root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0298.cover_4136766
  · exact small_4136765_right_covered
#print axioms cover_4136765

def root_4136759 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4136759_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4136759_left_fuel : Nat := 1
def small_4136759_left_count : Nat := 1
def small_4136759_left_encoded : String := "00000000"
theorem small_4136759_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4136759_left_root small_4136759_left_fuel small_4136759_left_count small_4136759_left_encoded = true := by
  decide +kernel
theorem small_4136759_left_covered : CoveredBy scale carrier boxes small_4136759_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4136759_left_root small_4136759_left_fuel small_4136759_left_count small_4136759_left_encoded small_4136759_left_checked

theorem cover_4136759 : CoveredBy scale carrier boxes root_4136759 := by
  apply coveredBy_split_literal root_4136759 small_4136759_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0298.root_4136765 coord0 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_4136759_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0298.cover_4136765
#print axioms cover_4136759

def root_4136577 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4136577_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4136577_left_fuel : Nat := 16
def small_4136577_left_count : Nat := 85
def small_4136577_left_encoded : String := "120700F608A912F912073D0208A912FD12073D0608A912FF12073D08050000FA0000000700000007000000041207010800000004050000FA135D810504548A01138670F600000008000000001386ACF6000000000CFD9BF90F350D020CFD9BFD000000080F34D1060000000300000007000000010F34D102000000010000000800000002135D450500000002000000070000000312070106000000030000000700000001120701020000000108A912FD12073D0608A912FF12073D08050000FA135D810504548A01138670F600000008000000000000000A00000002135D45050000000204548A01000000061386ACF600000000045489F9000000070000000A000000041207010800000004050000FA135D810504548A01000000061386ACF600000000045489F90000000600000006000000020000000600000003120701060000000308A912FF000000070000000600000000"
theorem small_4136577_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4136577_left_root small_4136577_left_fuel small_4136577_left_count small_4136577_left_encoded = true := by
  decide +kernel
theorem small_4136577_left_covered : CoveredBy scale carrier boxes small_4136577_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4136577_left_root small_4136577_left_fuel small_4136577_left_count small_4136577_left_encoded small_4136577_left_checked

theorem cover_4136577 : CoveredBy scale carrier boxes root_4136577 := by
  apply coveredBy_split_literal root_4136577 small_4136577_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0298.root_4136759 coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_4136577_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0298.cover_4136759
#print axioms cover_4136577

def root_4136571 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4136571_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4136571_left_fuel : Nat := 1
def small_4136571_left_count : Nat := 1
def small_4136571_left_encoded : String := "00000004"
theorem small_4136571_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4136571_left_root small_4136571_left_fuel small_4136571_left_count small_4136571_left_encoded = true := by
  decide +kernel
theorem small_4136571_left_covered : CoveredBy scale carrier boxes small_4136571_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4136571_left_root small_4136571_left_fuel small_4136571_left_count small_4136571_left_encoded small_4136571_left_checked

theorem cover_4136571 : CoveredBy scale carrier boxes root_4136571 := by
  apply coveredBy_split_literal root_4136571 small_4136571_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0298.root_4136577 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_4136571_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0298.cover_4136577
#print axioms cover_4136571

def root_4136427 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4136427_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4136427_left_fuel : Nat := 14
def small_4136427_left_count : Nat := 67
def small_4136427_left_encoded : String := "1151E8FF08A91301120700F608A912F912073D0208A912FD12073D06050000FA135D810505000108135D44FF00000007000000040000000700000002135D45050000000205000108135D44FF00000007000000040000000700000003000000070000000112070102000000010000000A0000000012073CF60000000008A912F912073D0208A912FD12073D06050000FA135D810505000108135D44FF0CFD9C01000000070000000A00000004135D80FF000000040CFD9C01000000070F350CF6000000000000000700000002135D45050000000205000108135D44FF0CFD9C010000000700000007000000040000000700000003000000070000000112070102000000010000000A00000004"
theorem small_4136427_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4136427_left_root small_4136427_left_fuel small_4136427_left_count small_4136427_left_encoded = true := by
  decide +kernel
theorem small_4136427_left_covered : CoveredBy scale carrier boxes small_4136427_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4136427_left_root small_4136427_left_fuel small_4136427_left_count small_4136427_left_encoded small_4136427_left_checked

theorem cover_4136427 : CoveredBy scale carrier boxes root_4136427 := by
  apply coveredBy_split_literal root_4136427 small_4136427_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0298.root_4136571 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_4136427_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0298.cover_4136571
#print axioms cover_4136427

def root_4136421 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4136421_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4136421_left_fuel : Nat := 1
def small_4136421_left_count : Nat := 1
def small_4136421_left_encoded : String := "00000003"
theorem small_4136421_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4136421_left_root small_4136421_left_fuel small_4136421_left_count small_4136421_left_encoded = true := by
  decide +kernel
theorem small_4136421_left_covered : CoveredBy scale carrier boxes small_4136421_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4136421_left_root small_4136421_left_fuel small_4136421_left_count small_4136421_left_encoded small_4136421_left_checked

theorem cover_4136421 : CoveredBy scale carrier boxes root_4136421 := by
  apply coveredBy_split_literal root_4136421 small_4136421_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0298.root_4136427 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_4136421_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0298.cover_4136427
#print axioms cover_4136421

def root_4135827 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4135827_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4135827_left_fuel : Nat := 20
def small_4135827_left_count : Nat := 273
def small_4135827_left_encoded : String := "1151E8FD0A0001081151E8FF08A91301120700F608A912F9000000081207010200000001000000080000000012073CF60000000008A912F912073D02050000FA135D810505000106135D44FD05000108000000050000000800000003135D80FD000000030500010800000005135D80FF000000040CFD9C010F34D0F600000005000000000F350CF6000000000CFD9BF90F350D0200000005000000010000000500000002135D45050000000205000106135D44FD0000000800000003135D80FD0000000305000108135D44FF0CFD9C01000000070F350CF600000000000000070000000400000007000000011207010200000001050000FA135D810505000106000000050000000A00000002135D4505000000020500010600000009135D80FD000000030500010800000009135D80FF000000040CFD9C01000000080000000900000004115224FF0000000408A91301120700F608A912F9000000081207010200000001000000080000000012073CF60000000008A912F912073D0208A912FF12073D08050000FA135D810505000106135D44FD0CFD9C01000000080F350CF6000000000CFD9BF9000000080F34D102000000010000000800000003135D80FD000000030CFD9C010F34D0F600000008000000000F350CF6000000000CFD9BF90F350D020CFD9BFF0F350D0800000008000000040F34D1080000000400000008000000010F34D102000000010CFD9BFF000000080F34D108000000040000000800000002135D4505000000020500010600000008135D80FD000000030CFD9C010F34D0F600000008000000000F350CF6000000000CFD9BF90F350D020CFD9BFF000000080F34D1080000000400000008000000010F34D1020000000100000008000000041207010800000004050000FA135D81050500010600000008135D80FD000000030CFD9C010F34D0F600000008000000000F350CF6000000000CFD9BF90F350D02045489FF00000008138671080000000400000008000000010F34D102000000010000000800000002135D4505000000020500010600000008135D80FD000000030CFD9C01000000080F350CF6000000000CFD9BF9000000080F34D102000000010000000800000001120701020000000108A912FF12073D08050000FA135D81050500010600000008135D80FD000000030CFD9C010F34D0F600000008000000000F350CF600000000045489F91386AD020CFD9BFF000000080F34D10800000004000000080000000113867102000000010CFD9BFF000000080F34D108000000040000000800000002135D4505000000020500010600000008135D80FD000000030CFD9C01000000080F350CF600000000045489F900000008138671020000000100000008000000041207010800000004050000FA135D81050500010600000008135D80FD000000030CFD9C01000000080F350CF600000000045489F90000000813867102000000010000000800000002135D4505000000020000000800000003"
theorem small_4135827_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4135827_left_root small_4135827_left_fuel small_4135827_left_count small_4135827_left_encoded = true := by
  decide +kernel
theorem small_4135827_left_covered : CoveredBy scale carrier boxes small_4135827_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4135827_left_root small_4135827_left_fuel small_4135827_left_count small_4135827_left_encoded small_4135827_left_checked

theorem cover_4135827 : CoveredBy scale carrier boxes root_4135827 := by
  apply coveredBy_split_literal root_4135827 small_4135827_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0298.root_4136421 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_4135827_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0298.cover_4136421
#print axioms cover_4135827

def root_4135821 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4135821_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4135821_left_fuel : Nat := 1
def small_4135821_left_count : Nat := 1
def small_4135821_left_encoded : String := "00000002"
theorem small_4135821_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4135821_left_root small_4135821_left_fuel small_4135821_left_count small_4135821_left_encoded = true := by
  decide +kernel
theorem small_4135821_left_covered : CoveredBy scale carrier boxes small_4135821_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4135821_left_root small_4135821_left_fuel small_4135821_left_count small_4135821_left_encoded small_4135821_left_checked

theorem cover_4135821 : CoveredBy scale carrier boxes root_4135821 := by
  apply coveredBy_split_literal root_4135821 small_4135821_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0298.root_4135827 coord2 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_4135821_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0298.cover_4135827
#print axioms cover_4135821

def root_4122381 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4122381 : CoveredBy scale carrier boxes root_4122381 := by
  apply coveredBy_split_literal root_4122381 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0297.root_4122382 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0298.root_4135821 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0297.cover_4122382
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0298.cover_4135821
#print axioms cover_4122381

def root_4122375 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4122375_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4122375_left_fuel : Nat := 1
def small_4122375_left_count : Nat := 1
def small_4122375_left_encoded : String := "00000001"
theorem small_4122375_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4122375_left_root small_4122375_left_fuel small_4122375_left_count small_4122375_left_encoded = true := by
  decide +kernel
theorem small_4122375_left_covered : CoveredBy scale carrier boxes small_4122375_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4122375_left_root small_4122375_left_fuel small_4122375_left_count small_4122375_left_encoded small_4122375_left_checked

theorem cover_4122375 : CoveredBy scale carrier boxes root_4122375 := by
  apply coveredBy_split_literal root_4122375 small_4122375_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0298.root_4122381 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_4122375_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0298.cover_4122381
#print axioms cover_4122375

def root_4117611 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4117611 : CoveredBy scale carrier boxes root_4117611 := by
  apply coveredBy_split_literal root_4117611 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0296.root_4117612 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0298.root_4122375 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0296.cover_4117612
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0298.cover_4122375
#print axioms cover_4117611

def root_4117606 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4117606_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4117606_right_fuel : Nat := 1
def small_4117606_right_count : Nat := 1
def small_4117606_right_encoded : String := "00000000"
theorem small_4117606_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4117606_right_root small_4117606_right_fuel small_4117606_right_count small_4117606_right_encoded = true := by
  decide +kernel
theorem small_4117606_right_covered : CoveredBy scale carrier boxes small_4117606_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4117606_right_root small_4117606_right_fuel small_4117606_right_count small_4117606_right_encoded small_4117606_right_checked

theorem cover_4117606 : CoveredBy scale carrier boxes root_4117606 := by
  apply coveredBy_split_literal root_4117606 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0298.root_4117611 small_4117606_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0298.cover_4117611
  · exact small_4117606_right_covered
#print axioms cover_4117606

def root_4142287 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4142287 : CoveredBy scale carrier boxes root_4142287 := by
  apply coveredBy_split_literal root_4142287 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1554.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1555.root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1554.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1555.covered
#print axioms cover_4142287

def root_4142281 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4142281_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4142281_left_fuel : Nat := 1
def small_4142281_left_count : Nat := 1
def small_4142281_left_encoded : String := "00000002"
theorem small_4142281_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4142281_left_root small_4142281_left_fuel small_4142281_left_count small_4142281_left_encoded = true := by
  decide +kernel
theorem small_4142281_left_covered : CoveredBy scale carrier boxes small_4142281_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4142281_left_root small_4142281_left_fuel small_4142281_left_count small_4142281_left_encoded small_4142281_left_checked

theorem cover_4142281 : CoveredBy scale carrier boxes root_4142281 := by
  apply coveredBy_split_literal root_4142281 small_4142281_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0298.root_4142287 coord2 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_4142281_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0298.cover_4142287
#print axioms cover_4142281

def root_4141423 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4141423_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4141423_left_fuel : Nat := 22
def small_4141423_left_count : Nat := 397
def small_4141423_left_encoded : String := "115225050A0001061151E8FD0A0001081151E8FF08A913050000000912073CFA00000002050000F600000005135D45010000000005000102000000050000000900000004115224FF0000000408A91305120700FA08A912FF000000061207010800000004000000060000000212073CFA0000000208A912FF12073D08050000F6135D810105000102135D44F905000106000000050000000600000001135D80F9000000010500010600000005135D80FD000000030CFD9C050F34D0FA00000005000000020F350CFA000000020CFD9BFF0F350D0800000005000000040000000500000000135D45010000000005000102135D44F90000000600000001135D80F9000000010500010600000009135D80FD000000030CFD9C05000000060F350CFA000000020CFD9BFF000000060F34D1080000000400000006000000041207010800000004050000F6135D81010500010200000005135D80F9000000010500010600000005135D80FD000000030CFD9C050F34D0FA00000005000000020000000500000000135D45010000000005000102135D44F90000000600000001135D80F90000000105000106135D44FD0CFD9C050000000A0000000500000003135D80FD000000030CFD9C05000000060F350CFA00000002045489FF0000000613867108000000040000000600000003115224FD000000030A0001081151E8FF08A91305120700FA08A912FD000000061207010600000003000000060000000212073CFA0000000208A912FD12073D06050000F6135D810105000102135D44F905000108000000050000000600000001135D80F9000000010500010800000005135D80FF000000040CFD9C050F34D0FA00000005000000020F350CFA000000020CFD9BFD0F350D0600000005000000030000000500000000135D45010000000005000102135D44F90000000600000001135D80F90000000105000108135D44FF0CFD9C05000000090F350CFA00000002000000090000000400000009000000031207010600000003050000F6135D810105000102000000050000000A00000000135D4501000000000500010200000007135D80F9000000010500010800000007135D80FF000000040CFD9C05000000060000000700000004115224FF0000000408A91305120700FA08A912FD000000061207010600000003000000060000000212073CFA0000000208A912FD12073D0608A912FF12073D08050000F6135D810105000102135D44F90CFD9C05000000060F350CFA000000020CFD9BFD000000060F34D106000000030000000600000001135D80F9000000010CFD9C050F34D0FA00000006000000020F350CFA000000020CFD9BFD0F350D060CFD9BFF0F350D0800000006000000040F34D1080000000400000006000000030F34D106000000030CFD9BFF000000060F34D108000000040000000600000000135D4501000000000500010200000006135D80F9000000010CFD9C050F34D0FA00000006000000020F350CFA000000020CFD9BFD0F350D060CFD9BFF000000060F34D1080000000400000006000000030F34D1060000000300000006000000041207010800000004050000F6135D81010500010200000006135D80F9000000010CFD9C050F34D0FA00000006000000020F350CFA000000020CFD9BFD0F350D06045489FF00000006138671080000000400000006000000030F34D106000000030000000600000000135D4501000000000500010200000006135D80F9000000010CFD9C05000000060F350CFA000000020CFD9BFD000000060F34D106000000030000000600000003120701060000000308A912FF12073D08050000F6135D81010500010200000006135D80F9000000010CFD9C050F34D0FA00000006000000020F350CFA00000002045489FD1386AD060CFD9BFF000000060F34D10800000004000000060000000313867106000000030CFD9BFF000000060F34D108000000040000000600000000135D4501000000000500010200000006135D80F9000000010CFD9C05000000060F350CFA00000002045489FD00000006138671060000000300000006000000041207010800000004050000F6135D81010500010200000006135D80F9000000010CFD9C05000000060F350CFA00000002045489FD0000000613867106000000030000000600000000135D4501000000000000000600000002"
theorem small_4141423_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4141423_left_root small_4141423_left_fuel small_4141423_left_count small_4141423_left_encoded = true := by
  decide +kernel
theorem small_4141423_left_covered : CoveredBy scale carrier boxes small_4141423_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4141423_left_root small_4141423_left_fuel small_4141423_left_count small_4141423_left_encoded small_4141423_left_checked

theorem cover_4141423 : CoveredBy scale carrier boxes root_4141423 := by
  apply coveredBy_split_literal root_4141423 small_4141423_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0298.root_4142281 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact small_4141423_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0298.cover_4142281
#print axioms cover_4141423

def root_4141418 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4141418_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4141418_right_fuel : Nat := 1
def small_4141418_right_count : Nat := 1
def small_4141418_right_encoded : String := "00000001"
theorem small_4141418_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4141418_right_root small_4141418_right_fuel small_4141418_right_count small_4141418_right_encoded = true := by
  decide +kernel
theorem small_4141418_right_covered : CoveredBy scale carrier boxes small_4141418_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4141418_right_root small_4141418_right_fuel small_4141418_right_count small_4141418_right_encoded small_4141418_right_checked

theorem cover_4141418 : CoveredBy scale carrier boxes root_4141418 := by
  apply coveredBy_split_literal root_4141418 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0298.root_4141423 small_4141418_right_root coord1 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0298.cover_4141423
  · exact small_4141418_right_covered
#print axioms cover_4141418

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0298
