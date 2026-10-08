import TaoBundleAssembly0323
import TaoBundleChunkBatch0425
import TaoBundleChunkBatch0426
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0324
def root_4536182 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4536182_right_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4536182_right_fuel : Nat := 30
def small_4536182_right_count : Nat := 247
def small_4536182_right_encoded : String := "138670FC04548A0913867108000000040C9A86F60F878D010C9A86FA0F878D050000000A000000020F875105000000020280010213D7B10300000001022A457D13E200FC00000003022A45890000000A13E201080DE7C9F6000000060E5FD901000000000B4D43FA0000000A00000006000000040000000A13D7ED03022A457D13E200FC00000003022A45890000000A000000060000000600000001000000000F875101000000000C9A86FA0F878D050280010213D7B10300000001022A457D000000080000000813D7ED03022A457D13E200FC00000003022A45890000000A13E201080B4D43F60000000A00000008000000040000000A00000001000000020F875105000000020280010213D7B10300000001022A457D13E200FC00000003022A458913E1C508000000040B4D43F610804D010B4D43FA0000000A1080110500000002014001020000000A0000000A0000000010801101000000000B4D43FA000000081080110500000002014001020000000813F61503033F67BD00000008000000050000000113E201080B4D43F610804D010B4D43FA0000000810801105000000020000000500000000000000080000000413E1C4FC022A458913E1C508000000040000000A000000050000000313D7ED03022A457D13E200FC00000003022A458913E1C508000000040B4D43F610804D010B4D43FA0000000A108011050000000203C0010213A51103000000010000000A13A54D0300000006000000010000000010801101000000000B4D43FA10804D0503C0010213A51103000000010000000A13A54D03033F67BD13BC30FC00000003011523490000000A13F895080AA6A2760000000600000008000000040000000A0000000100000002108011050000000203C0010213A5110300000001033F67BD13BC30FC000000030115234913F85908000000040AA6A27610EDAD010000000A0000000010ED71010000000000000008000000050000000513A54D03033F67BD13BC30FC000000030115234913F85908000000040AA6A27610EDAD010000000A0000000010ED7101000000000AA6A27A10EDAD050000000A0000000210ED710500000002046001021383DD0300000001000000050000000500000005000000050000000113E201080B4D43F610804D0100000006000000001080110100000000000000050000000413E1C4FC022A458913E1C508000000040B4D43F6000000061080110100000000000000050000000500000003000000011386AD080C9A86F60F878D010C9A86FA0F878D05000000060000000200000006000000000F875101000000000C9A86FA0F878D0500000008000000020F87510500000002000000050000000400000003"
theorem small_4536182_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4536182_right_root small_4536182_right_fuel small_4536182_right_count small_4536182_right_encoded = true := by
  decide +kernel
theorem small_4536182_right_covered : CoveredBy scale carrier boxes small_4536182_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4536182_right_root small_4536182_right_fuel small_4536182_right_count small_4536182_right_encoded small_4536182_right_checked

theorem cover_4536182 : CoveredBy scale carrier boxes root_4536182 := by
  apply coveredBy_split_literal root_4536182 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0323.root_4536183 small_4536182_right_root coord3 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0323.cover_4536183
  · exact small_4536182_right_covered
#print axioms cover_4536182

def root_4536176 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4536176_left_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4536176_left_fuel : Nat := 1
def small_4536176_left_count : Nat := 1
def small_4536176_left_encoded : String := "00000002"
theorem small_4536176_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4536176_left_root small_4536176_left_fuel small_4536176_left_count small_4536176_left_encoded = true := by
  decide +kernel
theorem small_4536176_left_covered : CoveredBy scale carrier boxes small_4536176_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4536176_left_root small_4536176_left_fuel small_4536176_left_count small_4536176_left_encoded small_4536176_left_checked

theorem cover_4536176 : CoveredBy scale carrier boxes root_4536176 := by
  apply coveredBy_split_literal root_4536176 small_4536176_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0324.root_4536182 coord2 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_4536176_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0324.cover_4536182
#print axioms cover_4536176

def root_4536020 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4536020_left_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4536020_left_fuel : Nat := 15
def small_4536020_left_count : Nat := 75
def small_4536020_left_encoded : String := "0F34D0FA045489FD1386ACFC0000000304548A0913867108000000040C9A86F60F878D01028001020000000A0000000A000000000F87510100000000028001020000000813D7ED030AD357850000000510D13CFA00000002067ECE7D0000000512EA58FC0000000800000003000000011386AD080C9A86F60F878D010280010213D7B103000000010AD357850000000810D13CFA00000002067ECE7D12EA94FC00000003067ECE8900000008000000070000000813D7ED030AD357850000000710D13CFA00000002067ECE7D000000070000000600000001000000000F8751010000000002800102000000080000000700000004138670FC04548A0913867108000000040000000A1386AD080C9A86F60F878D010000000A0000000000000008000000040000000300000002"
theorem small_4536020_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4536020_left_root small_4536020_left_fuel small_4536020_left_count small_4536020_left_encoded = true := by
  decide +kernel
theorem small_4536020_left_covered : CoveredBy scale carrier boxes small_4536020_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4536020_left_root small_4536020_left_fuel small_4536020_left_count small_4536020_left_encoded small_4536020_left_checked

theorem cover_4536020 : CoveredBy scale carrier boxes root_4536020 := by
  apply coveredBy_split_literal root_4536020 small_4536020_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0324.root_4536176 coord2 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_4536020_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0324.cover_4536176
#print axioms cover_4536020

def root_4536014 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4536014_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4536014_left_fuel : Nat := 1
def small_4536014_left_count : Nat := 1
def small_4536014_left_encoded : String := "00000000"
theorem small_4536014_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4536014_left_root small_4536014_left_fuel small_4536014_left_count small_4536014_left_encoded = true := by
  decide +kernel
theorem small_4536014_left_covered : CoveredBy scale carrier boxes small_4536014_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4536014_left_root small_4536014_left_fuel small_4536014_left_count small_4536014_left_encoded small_4536014_left_checked

theorem cover_4536014 : CoveredBy scale carrier boxes root_4536014 := by
  apply coveredBy_split_literal root_4536014 small_4536014_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0324.root_4536020 coord0 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_4536014_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0324.cover_4536020
#print axioms cover_4536014

def root_4535830 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4535830_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4535830_left_fuel : Nat := 18
def small_4535830_left_count : Nat := 87
def small_4535830_left_encoded : String := "0F34D0F60CFD9C050F34D0FA045489FD1386ACFC0000000304548A090000000A1386AD08028001020000000A00000006000000040000000A000000020F350CFA00000002045489FD1386ACFC0000000304548A0913867108000000040C9A86FA0F878D05028001020000000A0000000A000000020F875105000000020280010213D7B103000000010AD3578110D100F60000000A0000000010D13CF600000000067ECE7D12EA94FC00000003000000050000000A13D7ED030AD357810000000510D13CF600000000067ECE7D0000000500000006000000011386AD080C9A86FA0F878D050280010213D7B103000000010AD357810000000610D13CF600000000067ECE7D12EA94FC00000003067ECE8912EA59080000000400000006000000060000000600000006000000020F875105000000020000000600000004138670FC04548A0913867108000000040000000A000000060000000300000000"
theorem small_4535830_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4535830_left_root small_4535830_left_fuel small_4535830_left_count small_4535830_left_encoded = true := by
  decide +kernel
theorem small_4535830_left_covered : CoveredBy scale carrier boxes small_4535830_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4535830_left_root small_4535830_left_fuel small_4535830_left_count small_4535830_left_encoded small_4535830_left_checked

theorem cover_4535830 : CoveredBy scale carrier boxes root_4535830 := by
  apply coveredBy_split_literal root_4535830 small_4535830_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0324.root_4536014 coord0 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_4535830_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0324.cover_4536014
#print axioms cover_4535830

def root_4535824 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4535824_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(14529024), (16243968)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4535824_left_fuel : Nat := 1
def small_4535824_left_count : Nat := 1
def small_4535824_left_encoded : String := "00000001"
theorem small_4535824_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4535824_left_root small_4535824_left_fuel small_4535824_left_count small_4535824_left_encoded = true := by
  decide +kernel
theorem small_4535824_left_covered : CoveredBy scale carrier boxes small_4535824_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4535824_left_root small_4535824_left_fuel small_4535824_left_count small_4535824_left_encoded small_4535824_left_checked

theorem cover_4535824 : CoveredBy scale carrier boxes root_4535824 := by
  apply coveredBy_split_literal root_4535824 small_4535824_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0324.root_4535830 coord1 true (16243968)
  · decide +kernel
  · decide +kernel
  · exact small_4535824_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0324.cover_4535830
#print axioms cover_4535824

def root_4535823 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4535823 : CoveredBy scale carrier boxes root_4535823 := by
  apply coveredBy_split_literal root_4535823 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0324.root_4535824 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1701.root coord1 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0324.cover_4535824
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1701.covered
#print axioms cover_4535823

def root_4535817 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4535817_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4535817_left_fuel : Nat := 1
def small_4535817_left_count : Nat := 1
def small_4535817_left_encoded : String := "00000004"
theorem small_4535817_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4535817_left_root small_4535817_left_fuel small_4535817_left_count small_4535817_left_encoded = true := by
  decide +kernel
theorem small_4535817_left_covered : CoveredBy scale carrier boxes small_4535817_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4535817_left_root small_4535817_left_fuel small_4535817_left_count small_4535817_left_encoded small_4535817_left_checked

theorem cover_4535817 : CoveredBy scale carrier boxes root_4535817 := by
  apply coveredBy_split_literal root_4535817 small_4535817_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0324.root_4535823 coord4 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_4535817_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0324.cover_4535823
#print axioms cover_4535817

def root_4535816 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4535816_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4535816_right_fuel : Nat := 20
def small_4535816_right_count : Nat := 165
def small_4535816_right_encoded : String := "12073D0805000102135D4503000000010CFD9C010F34D0F60CFD9C050F34D0FA045489FD1386ACFC000000030CFD9C090F34D10800000004000000060000000600000006000000020F350CFA00000002045489FD1386ACFC000000030CFD9C090F34D10800000004000000060F350D080C9A86FA0F878D0500000006000000020000000600000004138670FC0CFD9C090F34D10800000004000000060000000500000003000000000F350CF6000000000CFD9C050F34D0FA045489FD1386ACFC000000030CFD9C090F34D108000000040C9A86F6000000070000000700000007138670FC0CFD9C09000000080000000500000003000000020F350CFA00000002045489FD1386ACFC000000030CFD9C090F34D108000000040C9A86F60F878D010C9A86FA0F878D050280010213D7B10300000001067ECE7D12EA94FC00000003000000080000000600000006000000020F875105000000020280010213D7B103000000010000000600000006000000000F875101000000000C9A86FA0F878D0500000008000000020F87510500000002000000050000000500000005135D81030CFD9C010F34D0F60CFD9C050F34D0FA00000006000000020F350CFA00000002045489FD1386ACFC000000030CFD9C090F34D10800000004000000060F350D080C9A86FA000000060000000600000004138670FC0CFD9C090F34D10800000004000000060000000600000003000000000F350CF6000000000CFD9C050F34D0FA045489FD0000000700000006000000020F350CFA00000002045489FD1386ACFC000000030CFD9C090F34D108000000040C9A86F6000000060F87510100000000000000070F350D080000000700000004138670FC0CFD9C090F34D108000000040000000600000005000000030000000100000004"
theorem small_4535816_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4535816_right_root small_4535816_right_fuel small_4535816_right_count small_4535816_right_encoded = true := by
  decide +kernel
theorem small_4535816_right_covered : CoveredBy scale carrier boxes small_4535816_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4535816_right_root small_4535816_right_fuel small_4535816_right_count small_4535816_right_encoded small_4535816_right_checked

theorem cover_4535816 : CoveredBy scale carrier boxes root_4535816 := by
  apply coveredBy_split_literal root_4535816 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0324.root_4535817 small_4535816_right_root coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0324.cover_4535817
  · exact small_4535816_right_covered
#print axioms cover_4535816

def root_4535811 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4535811_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4535811_right_fuel : Nat := 1
def small_4535811_right_count : Nat := 1
def small_4535811_right_encoded : String := "00000003"
theorem small_4535811_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4535811_right_root small_4535811_right_fuel small_4535811_right_count small_4535811_right_encoded = true := by
  decide +kernel
theorem small_4535811_right_covered : CoveredBy scale carrier boxes small_4535811_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4535811_right_root small_4535811_right_fuel small_4535811_right_count small_4535811_right_encoded small_4535811_right_checked

theorem cover_4535811 : CoveredBy scale carrier boxes root_4535811 := by
  apply coveredBy_split_literal root_4535811 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0324.root_4535816 small_4535811_right_root coord3 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0324.cover_4535816
  · exact small_4535811_right_covered
#print axioms cover_4535811

def root_4532975 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4532975 : CoveredBy scale carrier boxes root_4532975 := by
  apply coveredBy_split_literal root_4532975 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1698.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0324.root_4535811 coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1698.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0324.cover_4535811
#print axioms cover_4532975

def root_4532969 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4532969_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4532969_left_fuel : Nat := 1
def small_4532969_left_count : Nat := 1
def small_4532969_left_encoded : String := "00000002"
theorem small_4532969_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4532969_left_root small_4532969_left_fuel small_4532969_left_count small_4532969_left_encoded = true := by
  decide +kernel
theorem small_4532969_left_covered : CoveredBy scale carrier boxes small_4532969_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4532969_left_root small_4532969_left_fuel small_4532969_left_count small_4532969_left_encoded small_4532969_left_checked

theorem cover_4532969 : CoveredBy scale carrier boxes root_4532969 := by
  apply coveredBy_split_literal root_4532969 small_4532969_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0324.root_4532975 coord2 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_4532969_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0324.cover_4532975
#print axioms cover_4532969

def root_4532721 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4532721_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4532721_left_fuel : Nat := 17
def small_4532721_left_count : Nat := 119
def small_4532721_left_encoded : String := "120700FA08A912FD12073CFC0000000308A91309120701080000000405000102135D4503000000010CFD9C01000000050F350CF600000000000000050000000512073D0805000102135D4503000000010CFD9C010F34D0F604548A05000000071386ACFA000000020CFD9BFD000000070F34D0FC0000000700000003000000000F350CF60000000004548A05000000071386ACFA000000020CFD9BFD00000007000000070000000700000004120700FC08A91309120701080000000405000102135D4503000000010CFD9C010000000A0F350CF60000000004548A05000000081386ACFA00000002045489FD1386ACFC0000000304548A09000000051386AD080C9A86F60000000700000007000000040000000A135D81030CFD9C010F34D0F60000000A000000000F350CF60000000004548A05138670FA00000007000000021386ACFA00000002045489FD00000007138670FC04548A090000000A00000006000000030000000112073D0805000102135D4503000000010CFD9C010F34D0F604548A050000000600000006000000000F350CF60000000004548A05000000071386ACFA00000002045489FD0000000700000008135D81030CFD9C010F34D0F600000006000000000000000700000001000000040000000300000002"
theorem small_4532721_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4532721_left_root small_4532721_left_fuel small_4532721_left_count small_4532721_left_encoded = true := by
  decide +kernel
theorem small_4532721_left_covered : CoveredBy scale carrier boxes small_4532721_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4532721_left_root small_4532721_left_fuel small_4532721_left_count small_4532721_left_encoded small_4532721_left_checked

theorem cover_4532721 : CoveredBy scale carrier boxes root_4532721 := by
  apply coveredBy_split_literal root_4532721 small_4532721_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0324.root_4532969 coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_4532721_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0324.cover_4532969
#print axioms cover_4532721

def root_4532715 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4532715_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4532715_left_fuel : Nat := 1
def small_4532715_left_count : Nat := 1
def small_4532715_left_encoded : String := "00000000"
theorem small_4532715_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4532715_left_root small_4532715_left_fuel small_4532715_left_count small_4532715_left_encoded = true := by
  decide +kernel
theorem small_4532715_left_covered : CoveredBy scale carrier boxes small_4532715_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4532715_left_root small_4532715_left_fuel small_4532715_left_count small_4532715_left_encoded small_4532715_left_checked

theorem cover_4532715 : CoveredBy scale carrier boxes root_4532715 := by
  apply coveredBy_split_literal root_4532715 small_4532715_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0324.root_4532721 coord0 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_4532715_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0324.cover_4532721
#print axioms cover_4532715

def root_4531761 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4531761_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4531761_left_fuel : Nat := 22
def small_4531761_left_count : Nat := 445
def small_4531761_left_encoded : String := "120700F608A91305120700FA08A912FD12073CFC0000000308A913090000000512073D0805000102135D45030000000104548A01138670F604548A05000000051386ACFA000000020CFD9BFD0000000500000006000000001386ACF60000000004548A05000000071386ACFA000000020CFD9BFD000000070F34D0FC0000000600000003135D810304548A0100000005000000070000000100000004120700FC08A9130912070108000000040000000A00000006000000030000000212073CFA0000000208A912FD12073CFC0000000308A91309120701080000000405000102135D45030000000104548A01000000051386ACF6000000000CFD9C05000000050F350CFA00000002000000050000000512073D0805000102135D45030000000104548A01138670F60CFD9C050F34D0FA0CFD9BFD0F350CFC00000003000000050F34D0FC0CFD9C09000000060000000600000003000000020F350CFA000000020CFD9BFD0F350CFC000000030CFD9C09000000050F350D080C9A86FA0F878D0500000005000000020F8751050000000200000009000000040F34D0FC0CFD9C090F34D108000000040C9A86FA00000006000000050F350D080C9A86FA0F878D0500000006000000020F875105000000020C9A87080F8751090000000400000006000000060000000400000003000000001386ACF6000000000CFD9C050F34D0FA0CFD9BFD0F350CFC000000030CFD9C09000000050F350D0800000006000000040F34D0FC0CFD9C090F34D10800000004000000060000000600000003000000020F350CFA000000020CFD9BFD0F350CFC000000030CFD9C090F34D10800000004000000050F350D080C9A86FA0F878D0500000006000000020F875105000000020C9A86FC0F878CFD000000030000000600000006000000040F34D0FC0CFD9C090F34D108000000040C9A86FA00000006000000060F350D080C9A86FA0F878D0500000006000000020F875105000000020C9A87080F8751090000000400000006000000060000000400000003135D810304548A01138670F60CFD9C050F34D0FA0CFD9BFD0000000500000006000000020F350CFA000000020CFD9BFD000000050F34D0FC0CFD9C09000000050F350D080C9A86FA0F878D0500000006000000020F875105000000020C9A87080F8751090000000400000006000000060000000400000003000000001386ACF6000000000CFD9C050F34D0FA0CFD9BFD0F350CFC000000030000000500000006000000020F350CFA000000020CFD9BFD0F350CFC000000030CFD9C09000000050F350D080C9A86FA0000000600000006000000040F34D0FC0CFD9C090F34D10800000004000000060F350D080C9A86FA000000060000000600000004000000030000000100000004120700FC08A91309120701080000000405000102135D45030000000104548A010000000A1386ACF6000000000CFD9C050000000A0F350CFA00000002045489FD1386ACFC0000000304548A0900000005000000060000000A135D810304548A01138670F60CFD9C050000000500000008000000001386ACF6000000000CFD9C05000000060F350CFA00000002045489FD1386ACFC0000000304548A090000000500000006000000060000000112073D0805000102135D45030000000104548A01138670F60CFD9C050F34D0FA045489FD0000000600000006000000020F350CFA00000002045489FD1386ACFC000000030CFD9C090F34D10800000004000000060F350D080C9A86FA0F878D0500000006000000020F875105000000020C9A87080F87510900000004000000060000000600000004138670FC0CFD9C090F34D10800000004000000060F350D080C9A86FA00000006000000060000000400000003000000001386ACF6000000000CFD9C050F34D0FA045489FD0000000600000006000000020F350CFA00000002045489FD1386ACFC000000030CFD9C090F34D10800000004000000060F350D080C9A86FA000000060000000600000004138670FC0CFD9C090F34D10800000004000000060000000600000003135D810304548A01138670F60CFD9C050F34D0FA045489FD0000000600000006000000020F350CFA00000002045489FD1386ACFC000000030CFD9C090F34D10800000004000000060F350D080C9A86FA0F878D0500000006000000020F875105000000020C9A87080F87510900000004000000060000000600000004138670FC0CFD9C090F34D10800000004000000060F350D080C9A86FA00000006000000060000000400000003000000001386ACF6000000000CFD9C050F34D0FA00000006000000020F350CFA00000002045489FD1386ACFC000000030CFD9C090F34D10800000004000000060F350D080C9A86FA000000060000000600000004138670FC0CFD9C090F34D1080000000400000006000000060000000300000001000000040000000300000000"
theorem small_4531761_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4531761_left_root small_4531761_left_fuel small_4531761_left_count small_4531761_left_encoded = true := by
  decide +kernel
theorem small_4531761_left_covered : CoveredBy scale carrier boxes small_4531761_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4531761_left_root small_4531761_left_fuel small_4531761_left_count small_4531761_left_encoded small_4531761_left_checked

theorem cover_4531761 : CoveredBy scale carrier boxes root_4531761 := by
  apply coveredBy_split_literal root_4531761 small_4531761_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0324.root_4532715 coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_4531761_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0324.cover_4532715
#print axioms cover_4531761

def root_4531756 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4531756_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4531756_right_fuel : Nat := 1
def small_4531756_right_count : Nat := 1
def small_4531756_right_encoded : String := "00000004"
theorem small_4531756_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4531756_right_root small_4531756_right_fuel small_4531756_right_count small_4531756_right_encoded = true := by
  decide +kernel
theorem small_4531756_right_covered : CoveredBy scale carrier boxes small_4531756_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4531756_right_root small_4531756_right_fuel small_4531756_right_count small_4531756_right_encoded small_4531756_right_checked

theorem cover_4531756 : CoveredBy scale carrier boxes root_4531756 := by
  apply coveredBy_split_literal root_4531756 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0324.root_4531761 small_4531756_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0324.cover_4531761
  · exact small_4531756_right_covered
#print axioms cover_4531756

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0324
