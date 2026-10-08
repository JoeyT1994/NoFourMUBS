import TaoBundleAssembly0200
import TaoBundleChunkBatch0778
import TaoBundleChunkBatch0780
import TaoBundleChunkBatch0781
import TaoBundleChunkBatch0782
import TaoBundleChunkBatch0783
import TaoBundleChunkBatch0784
import TaoBundleChunkBatch0785
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201
def root_8322709 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8322709_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8322709_right_fuel : Nat := 29
def small_8322709_right_count : Nat := 139
def small_8322709_right_encoded : String := "138670F8045489FD1386ACFC000000030CFD9C09000000060F350CFE000000040C9A86FE000000060F8751090000000407800100128A410100000000028001040000000613D7ED05022A457913E200F800000001067ECE7D0000000612EA58FC0B4D43FE0000000610801109000000040640010012FF71010000000003C001040000000613A54D05033F67B913BC30F8000000010569AC3D000000061340D4FC0AA6A27E0000000610ED71090000000405A0010000000005000000060000000300000006000000020000000600000003000000060000000200000006138670FC0CFD9C090F34D0FE00000006000000040F350CFE000000040C9A86FE0F878D0907800100128A410100000000028001040000000613D7ED05022A457913E200F800000001022A457D0000000600000009000000060000000200000006000000040F8751090000000407800100128A4101000000000280010413D7B105000000020000000513D7ED05022A457913E200F800000001022A457D13E200FC000000030B4D43FE10804D090640010012FF7101000000000000000500000006000000041080110900000004064001000000000512FFAD0103C001040000000513A54D05033F67B913BC30F80000000100000009000000050000000200000000000000050000000500000002128A7D010280010413D7B105000000020000000613D7ED05022A457913E200F800000001022A457D00000006000000090000000600000002000000000000000300000001"
theorem small_8322709_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8322709_right_root small_8322709_right_fuel small_8322709_right_count small_8322709_right_encoded = true := by
  decide +kernel
theorem small_8322709_right_covered : CoveredBy scale carrier boxes small_8322709_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8322709_right_root small_8322709_right_fuel small_8322709_right_count small_8322709_right_encoded small_8322709_right_checked

theorem cover_8322709 : CoveredBy scale carrier boxes root_8322709 := by
  apply coveredBy_split_literal root_8322709 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0200.root_8322710 small_8322709_right_root coord1 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0200.cover_8322710
  · exact small_8322709_right_covered
#print axioms cover_8322709

def root_8322703 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8322703_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(14529024), (16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8322703_left_fuel : Nat := 1
def small_8322703_left_count : Nat := 1
def small_8322703_left_encoded : String := "00000002"
theorem small_8322703_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8322703_left_root small_8322703_left_fuel small_8322703_left_count small_8322703_left_encoded = true := by
  decide +kernel
theorem small_8322703_left_covered : CoveredBy scale carrier boxes small_8322703_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8322703_left_root small_8322703_left_fuel small_8322703_left_count small_8322703_left_encoded small_8322703_left_checked

theorem cover_8322703 : CoveredBy scale carrier boxes root_8322703 := by
  apply coveredBy_split_literal root_8322703 small_8322703_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.root_8322709 coord2 true (16243968)
  · decide +kernel
  · decide +kernel
  · exact small_8322703_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.cover_8322709
#print axioms cover_8322703

def root_8322702 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8322702 : CoveredBy scale carrier boxes root_8322702 := by
  apply coveredBy_split_literal root_8322702 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.root_8322703 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3119.root coord2 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.cover_8322703
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3119.covered
#print axioms cover_8322702

def root_8322697 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8322697_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8322697_right_fuel : Nat := 1
def small_8322697_right_count : Nat := 1
def small_8322697_right_encoded : String := "00000000"
theorem small_8322697_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8322697_right_root small_8322697_right_fuel small_8322697_right_count small_8322697_right_encoded = true := by
  decide +kernel
theorem small_8322697_right_covered : CoveredBy scale carrier boxes small_8322697_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8322697_right_root small_8322697_right_fuel small_8322697_right_count small_8322697_right_encoded small_8322697_right_checked

theorem cover_8322697 : CoveredBy scale carrier boxes root_8322697 := by
  apply coveredBy_split_literal root_8322697 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.root_8322702 small_8322697_right_root coord0 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.cover_8322702
  · exact small_8322697_right_covered
#print axioms cover_8322697

def root_8308021 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8308021 : CoveredBy scale carrier boxes root_8308021 := by
  apply coveredBy_split_literal root_8308021 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0200.root_8308022 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.root_8322697 coord0 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0200.cover_8308022
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.cover_8322697
#print axioms cover_8308021

def root_8308015 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8308015_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8308015_left_fuel : Nat := 1
def small_8308015_left_count : Nat := 1
def small_8308015_left_encoded : String := "00000004"
theorem small_8308015_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8308015_left_root small_8308015_left_fuel small_8308015_left_count small_8308015_left_encoded = true := by
  decide +kernel
theorem small_8308015_left_covered : CoveredBy scale carrier boxes small_8308015_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8308015_left_root small_8308015_left_fuel small_8308015_left_count small_8308015_left_encoded small_8308015_left_checked

theorem cover_8308015 : CoveredBy scale carrier boxes root_8308015 := by
  apply coveredBy_split_literal root_8308015 small_8308015_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.root_8308021 coord4 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_8308015_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.cover_8308021
#print axioms cover_8308015

def root_8307973 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8307973_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8307973_left_fuel : Nat := 7
def small_8307973_left_count : Nat := 21
def small_8307973_left_encoded : String := "120700FE05000100135D45010000000005000104135D450500000002045489F9000000080000000600000008135D81010500010400000006135D8105045489F90000000800000006000000020000000000000004"
theorem small_8307973_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8307973_left_root small_8307973_left_fuel small_8307973_left_count small_8307973_left_encoded = true := by
  decide +kernel
theorem small_8307973_left_covered : CoveredBy scale carrier boxes small_8307973_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8307973_left_root small_8307973_left_fuel small_8307973_left_count small_8307973_left_encoded small_8307973_left_checked

theorem cover_8307973 : CoveredBy scale carrier boxes root_8307973 := by
  apply coveredBy_split_literal root_8307973 small_8307973_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.root_8308015 coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_8307973_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.cover_8308015
#print axioms cover_8307973

def root_8307968 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8307968_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8307968_right_fuel : Nat := 1
def small_8307968_right_count : Nat := 1
def small_8307968_right_encoded : String := "00000003"
theorem small_8307968_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8307968_right_root small_8307968_right_fuel small_8307968_right_count small_8307968_right_encoded = true := by
  decide +kernel
theorem small_8307968_right_covered : CoveredBy scale carrier boxes small_8307968_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8307968_right_root small_8307968_right_fuel small_8307968_right_count small_8307968_right_encoded small_8307968_right_checked

theorem cover_8307968 : CoveredBy scale carrier boxes root_8307968 := by
  apply coveredBy_split_literal root_8307968 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.root_8307973 small_8307968_right_root coord3 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.cover_8307973
  · exact small_8307968_right_covered
#print axioms cover_8307968

def root_8305778 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8305778 : CoveredBy scale carrier boxes root_8305778 := by
  apply coveredBy_split_literal root_8305778 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3111.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.root_8307968 coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3111.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.cover_8307968
#print axioms cover_8305778

def root_8305773 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8305773_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8305773_right_fuel : Nat := 1
def small_8305773_right_count : Nat := 1
def small_8305773_right_encoded : String := "00000001"
theorem small_8305773_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8305773_right_root small_8305773_right_fuel small_8305773_right_count small_8305773_right_encoded = true := by
  decide +kernel
theorem small_8305773_right_covered : CoveredBy scale carrier boxes small_8305773_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8305773_right_root small_8305773_right_fuel small_8305773_right_count small_8305773_right_encoded small_8305773_right_checked

theorem cover_8305773 : CoveredBy scale carrier boxes root_8305773 := by
  apply coveredBy_split_literal root_8305773 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.root_8305778 small_8305773_right_root coord1 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.cover_8305778
  · exact small_8305773_right_covered
#print axioms cover_8305773

def root_8303467 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8303467 : CoveredBy scale carrier boxes root_8303467 := by
  apply coveredBy_split_literal root_8303467 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3110.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.root_8305773 coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3110.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.cover_8305773
#print axioms cover_8303467

def root_8303462 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8303462_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8303462_right_fuel : Nat := 1
def small_8303462_right_count : Nat := 1
def small_8303462_right_encoded : String := "00000004"
theorem small_8303462_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8303462_right_root small_8303462_right_fuel small_8303462_right_count small_8303462_right_encoded = true := by
  decide +kernel
theorem small_8303462_right_covered : CoveredBy scale carrier boxes small_8303462_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8303462_right_root small_8303462_right_fuel small_8303462_right_count small_8303462_right_encoded small_8303462_right_checked

theorem cover_8303462 : CoveredBy scale carrier boxes root_8303462 := by
  apply coveredBy_split_literal root_8303462 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.root_8303467 small_8303462_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.cover_8303467
  · exact small_8303462_right_covered
#print axioms cover_8303462

def root_8333181 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8333181 : CoveredBy scale carrier boxes root_8333181 := by
  apply coveredBy_split_literal root_8333181 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3121.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3122.root coord1 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3121.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3122.covered
#print axioms cover_8333181

def root_8333176 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8333176_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8333176_right_fuel : Nat := 1
def small_8333176_right_count : Nat := 1
def small_8333176_right_encoded : String := "00000004"
theorem small_8333176_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8333176_right_root small_8333176_right_fuel small_8333176_right_count small_8333176_right_encoded = true := by
  decide +kernel
theorem small_8333176_right_covered : CoveredBy scale carrier boxes small_8333176_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8333176_right_root small_8333176_right_fuel small_8333176_right_count small_8333176_right_encoded small_8333176_right_checked

theorem cover_8333176 : CoveredBy scale carrier boxes root_8333176 := by
  apply coveredBy_split_literal root_8333176 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.root_8333181 small_8333176_right_root coord4 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.cover_8333181
  · exact small_8333176_right_covered
#print axioms cover_8333176

def root_8333175 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8333175_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8333175_right_fuel : Nat := 17
def small_8333175_right_count : Nat := 69
def small_8333175_right_encoded : String := "135D450900000004045489F91386ACF800000001045489FD1386ACFC00000003028001000000000613D7ED010780010400000006000000060000000000000006138670F8045489FD1386ACFC000000030280010013D7B1010000000007800104000000090000000913D7ED0107800104128A410500000002028000FE13D7ED09022A457913E200F800000001067ECE7D0000000812EA58FC03C00100000000060000000800000003000000080000000400000008128A7D05028000FE13D7ED09022A4579000000090000000900000004000000090000000200000000138670FC028001000000000613D7ED0107800104128A41050000000200000005128A7D050000000600000002000000000000000300000001"
theorem small_8333175_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8333175_right_root small_8333175_right_fuel small_8333175_right_count small_8333175_right_encoded = true := by
  decide +kernel
theorem small_8333175_right_covered : CoveredBy scale carrier boxes small_8333175_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8333175_right_root small_8333175_right_fuel small_8333175_right_count small_8333175_right_encoded small_8333175_right_checked

theorem cover_8333175 : CoveredBy scale carrier boxes root_8333175 := by
  apply coveredBy_split_literal root_8333175 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.root_8333176 small_8333175_right_root coord4 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.cover_8333176
  · exact small_8333175_right_covered
#print axioms cover_8333175

def root_8333170 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8333170_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8333170_right_fuel : Nat := 1
def small_8333170_right_count : Nat := 1
def small_8333170_right_encoded : String := "00000002"
theorem small_8333170_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8333170_right_root small_8333170_right_fuel small_8333170_right_count small_8333170_right_encoded = true := by
  decide +kernel
theorem small_8333170_right_covered : CoveredBy scale carrier boxes small_8333170_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8333170_right_root small_8333170_right_fuel small_8333170_right_count small_8333170_right_encoded small_8333170_right_checked

theorem cover_8333170 : CoveredBy scale carrier boxes root_8333170 := by
  apply coveredBy_split_literal root_8333170 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.root_8333175 small_8333170_right_root coord2 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.cover_8333175
  · exact small_8333170_right_covered
#print axioms cover_8333170

def root_8330880 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8330880 : CoveredBy scale carrier boxes root_8330880 := by
  apply coveredBy_split_literal root_8330880 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3120.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.root_8333170 coord2 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3120.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.cover_8333170
#print axioms cover_8330880

def root_8330874 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8330874_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(14529024), (16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8330874_left_fuel : Nat := 1
def small_8330874_left_count : Nat := 1
def small_8330874_left_encoded : String := "00000000"
theorem small_8330874_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8330874_left_root small_8330874_left_fuel small_8330874_left_count small_8330874_left_encoded = true := by
  decide +kernel
theorem small_8330874_left_covered : CoveredBy scale carrier boxes small_8330874_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8330874_left_root small_8330874_left_fuel small_8330874_left_count small_8330874_left_encoded small_8330874_left_checked

theorem cover_8330874 : CoveredBy scale carrier boxes root_8330874 := by
  apply coveredBy_split_literal root_8330874 small_8330874_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.root_8330880 coord0 true (16243968)
  · decide +kernel
  · decide +kernel
  · exact small_8330874_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.cover_8330880
#print axioms cover_8330874

def root_8337128 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8337128 : CoveredBy scale carrier boxes root_8337128 := by
  apply coveredBy_split_literal root_8337128 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3123.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3124.root coord3 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3123.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3124.covered
#print axioms cover_8337128

def root_8337122 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8337122_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-16379648)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8337122_left_fuel : Nat := 1
def small_8337122_left_count : Nat := 1
def small_8337122_left_encoded : String := "00000001"
theorem small_8337122_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8337122_left_root small_8337122_left_fuel small_8337122_left_count small_8337122_left_encoded = true := by
  decide +kernel
theorem small_8337122_left_covered : CoveredBy scale carrier boxes small_8337122_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8337122_left_root small_8337122_left_fuel small_8337122_left_count small_8337122_left_encoded small_8337122_left_checked

theorem cover_8337122 : CoveredBy scale carrier boxes root_8337122 := by
  apply coveredBy_split_literal root_8337122 small_8337122_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.root_8337128 coord1 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_8337122_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.cover_8337128
#print axioms cover_8337122

def root_8337121 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8337121_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8337121_right_fuel : Nat := 30
def small_8337121_right_count : Nat := 249
def small_8337121_right_encoded : String := "138670F8045489FD1386ACFC0000000307800100128A410100000000028001040000000813D7ED05078000FE128A7D09022A457913E200F800000001067ECE7D0000000812EA58FC0640010012FF71010000000003C0010413A51105000000020000000813A54D0508C000FE11FC2509033F67B913BC30F8000000010569AC3D000000081340D4FC05A0010013313501000000000000000513317101046001040000000813841905096000FE11AABD09000000060000000411AA8109000000040000000500000002000000000000000313BBF4F80569AC3D0000000600000005000000010000000411FBE90900000004000000080000000212FFAD0103C001040000000813A54D0508C000FE11FC2509033F67B913BC30F8000000010569AC3D000000061340D4FC06E0010012C7E50100000000046001040000000600000006000000060000000300000006000000040000000800000002000000000000000313E1C4F8067ECE7D0000000612EA58FC064001000000000800000006000000030000000100000004128A4109000000040000000800000002128A7D01028001040000000813D7ED05078000FE128A7D09022A457913E200F800000001067ECE7D0000000612EA58FC08C001000000000800000006000000030000000600000004000000080000000200000000138670FC07800100128A4101000000000280010413D7B105000000020000000513D7ED05078000FE128A7D09022A457913E200F800000001022A457D13E200FC00000003064001000000000512FFAD0103C001040000000513A54D0508C000FE0000000511FBE90900000004000000050000000200000000000000050000000500000004128A4109000000040000000500000002128A7D010280010413D7B10500000002078000FE128A7D09022A457913E200F800000001022A457D00000008000000050000000500000004128A4109000000040000000813D7ED05078000FE128A7D09022A457913E200F800000001022A457D13E200FC0000000308C0010011FBE9010000000003C0010413A511050000000208C000FE11FC250900000006000000040000000813A54D0508C000FE11FC2509033F67B900000009000000050000000411FBE90900000004033F67B913BC30F800000001033F67BD0000000800000005000000050000000211FC250103C001040000000613A54D0508C000FE0000000611FBE9090000000400000008000000020000000013E1C4FC08C0010000000005000000090000000313E1C4F8022A457D00000006000000050000000100000004128A410900000004022A457913E200F800000001022A457D00000008000000050000000500000002000000000000000300000001"
theorem small_8337121_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8337121_right_root small_8337121_right_fuel small_8337121_right_count small_8337121_right_encoded = true := by
  decide +kernel
theorem small_8337121_right_covered : CoveredBy scale carrier boxes small_8337121_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8337121_right_root small_8337121_right_fuel small_8337121_right_count small_8337121_right_encoded small_8337121_right_checked

theorem cover_8337121 : CoveredBy scale carrier boxes root_8337121 := by
  apply coveredBy_split_literal root_8337121 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.root_8337122 small_8337121_right_root coord1 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.cover_8337122
  · exact small_8337121_right_covered
#print axioms cover_8337121

def root_8337116 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8337116_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8337116_right_fuel : Nat := 1
def small_8337116_right_count : Nat := 1
def small_8337116_right_encoded : String := "00000004"
theorem small_8337116_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8337116_right_root small_8337116_right_fuel small_8337116_right_count small_8337116_right_encoded = true := by
  decide +kernel
theorem small_8337116_right_covered : CoveredBy scale carrier boxes small_8337116_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8337116_right_root small_8337116_right_fuel small_8337116_right_count small_8337116_right_encoded small_8337116_right_checked

theorem cover_8337116 : CoveredBy scale carrier boxes root_8337116 := by
  apply coveredBy_split_literal root_8337116 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.root_8337121 small_8337116_right_root coord4 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.cover_8337121
  · exact small_8337116_right_covered
#print axioms cover_8337116

def root_8337115 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8337115_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8337115_right_fuel : Nat := 17
def small_8337115_right_count : Nat := 65
def small_8337115_right_encoded : String := "135D450900000004045489F91386ACF800000001045489FD1386ACFC00000003078001000000000800000008138670FC07800100128A410100000000028001040000000713D7ED05028000FE13D7ED09067ECE790000000612EA58F8022A457D13E200FC000000030640010000000006000000070000000500000001000000040000000600000002128A7D01028001040000000713D7ED05028000FE13D7ED09067ECE790000000712EA58F8022A457D0000000700000007000000010000000400000007000000020000000000000003138670F8045489FD00000008138670FC07800100128A41010000000000000005128A7D0100000008000000000000000300000001"
theorem small_8337115_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8337115_right_root small_8337115_right_fuel small_8337115_right_count small_8337115_right_encoded = true := by
  decide +kernel
theorem small_8337115_right_covered : CoveredBy scale carrier boxes small_8337115_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8337115_right_root small_8337115_right_fuel small_8337115_right_count small_8337115_right_encoded small_8337115_right_checked

theorem cover_8337115 : CoveredBy scale carrier boxes root_8337115 := by
  apply coveredBy_split_literal root_8337115 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.root_8337116 small_8337115_right_root coord4 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.cover_8337116
  · exact small_8337115_right_covered
#print axioms cover_8337115

def root_8337109 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8337109_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(14529024), (16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8337109_left_fuel : Nat := 1
def small_8337109_left_count : Nat := 1
def small_8337109_left_encoded : String := "00000002"
theorem small_8337109_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8337109_left_root small_8337109_left_fuel small_8337109_left_count small_8337109_left_encoded = true := by
  decide +kernel
theorem small_8337109_left_covered : CoveredBy scale carrier boxes small_8337109_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8337109_left_root small_8337109_left_fuel small_8337109_left_count small_8337109_left_encoded small_8337109_left_checked

theorem cover_8337109 : CoveredBy scale carrier boxes root_8337109 := by
  apply coveredBy_split_literal root_8337109 small_8337109_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.root_8337115 coord2 true (16243968)
  · decide +kernel
  · decide +kernel
  · exact small_8337109_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.cover_8337115
#print axioms cover_8337109

def root_8340948 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8340948 : CoveredBy scale carrier boxes root_8340948 := by
  apply coveredBy_split_literal root_8340948 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3125.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3126.root coord3 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3125.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3126.covered
#print axioms cover_8340948

def root_8340942 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8340942_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-16379648)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8340942_left_fuel : Nat := 1
def small_8340942_left_count : Nat := 1
def small_8340942_left_encoded : String := "00000001"
theorem small_8340942_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8340942_left_root small_8340942_left_fuel small_8340942_left_count small_8340942_left_encoded = true := by
  decide +kernel
theorem small_8340942_left_covered : CoveredBy scale carrier boxes small_8340942_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8340942_left_root small_8340942_left_fuel small_8340942_left_count small_8340942_left_encoded small_8340942_left_checked

theorem cover_8340942 : CoveredBy scale carrier boxes root_8340942 := by
  apply coveredBy_split_literal root_8340942 small_8340942_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.root_8340948 coord1 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_8340942_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.cover_8340948
#print axioms cover_8340942

def root_8346118 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8346118 : CoveredBy scale carrier boxes root_8346118 := by
  apply coveredBy_split_literal root_8346118 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3127.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3128.root coord3 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3127.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3128.covered
#print axioms cover_8346118

def root_8346113 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8346113_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16378880), (-15122432)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8346113_right_fuel : Nat := 1
def small_8346113_right_count : Nat := 1
def small_8346113_right_encoded : String := "00000001"
theorem small_8346113_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8346113_right_root small_8346113_right_fuel small_8346113_right_count small_8346113_right_encoded = true := by
  decide +kernel
theorem small_8346113_right_covered : CoveredBy scale carrier boxes small_8346113_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8346113_right_root small_8346113_right_fuel small_8346113_right_count small_8346113_right_encoded small_8346113_right_checked

theorem cover_8346113 : CoveredBy scale carrier boxes root_8346113 := by
  apply coveredBy_split_literal root_8346113 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.root_8346118 small_8346113_right_root coord1 false (-16378880)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.cover_8346118
  · exact small_8346113_right_covered
#print axioms cover_8346113

def root_8340941 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8340941 : CoveredBy scale carrier boxes root_8340941 := by
  apply coveredBy_split_literal root_8340941 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.root_8340942 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.root_8346113 coord1 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.cover_8340942
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.cover_8346113
#print axioms cover_8340941

def root_8340936 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8340936_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8340936_right_fuel : Nat := 1
def small_8340936_right_count : Nat := 1
def small_8340936_right_encoded : String := "00000004"
theorem small_8340936_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8340936_right_root small_8340936_right_fuel small_8340936_right_count small_8340936_right_encoded = true := by
  decide +kernel
theorem small_8340936_right_covered : CoveredBy scale carrier boxes small_8340936_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8340936_right_root small_8340936_right_fuel small_8340936_right_count small_8340936_right_encoded small_8340936_right_checked

theorem cover_8340936 : CoveredBy scale carrier boxes root_8340936 := by
  apply coveredBy_split_literal root_8340936 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.root_8340941 small_8340936_right_root coord4 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.cover_8340941
  · exact small_8340936_right_covered
#print axioms cover_8340936

def root_8340935 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8340935_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8340935_right_fuel : Nat := 23
def small_8340935_right_count : Nat := 315
def small_8340935_right_encoded : String := "135D450900000004045489F91386ACF800000001045489FD1386ACFC0000000307800100128A41010000000007800104128A410500000002028000FE13D7ED09067ECE7912EA94F800000001067ECE7D000000050000000612EA58F8067ECE7D0000000812EA58FC06400100000000060000000800000003000000010000000413D7B10900000004067ECE790000000600000008128A7D05028000FE13D7ED09067ECE790000000512EA58F8067ECE7D000000050000000600000001000000040000000600000002128A7D0107800104128A410500000002028000FE13D7ED09067ECE79000000050000000800000004000000080000000A00000000138670FC07800100128A410100000000078001040000000600000006128A7D0107800104128A410500000002028000FE13D7ED09067ECE7912EA94F8000000010000000612EA58F8022A457D13E200FC0000000308C0010011FBE901000000000640010400000008000000060000000A13E1C4FC08C001000000000611FC25010640010400000007000000060000000000000003000000010000000413D7B10900000004067ECE790000000612EA58F8022A457D000000060000000600000001128A7D05028000FE13D7ED09067ECE790000000612EA58F80000000A000000010000000400000006000000020000000000000003138670F8045489FD1386ACFC0000000307800100128A4101000000000780010400000008128A7D05028000FE13D7ED09022A457913E200F800000001067ECE7D0000000812EA58FC06400100000000060000000A0000000313E1C4F8067ECE7D0000000812EA58FC0640010012FF71010000000008C0010400000008000000090000000800000003000000010000000413D7B10900000004022A457913E200F800000001000000080000000800000002128A7D010780010400000008128A7D05028000FE13D7ED09022A45790000000A0000000800000004000000080000000200000000138670FC07800100128A41010000000007800104128A410500000002028000FE13D7ED09022A457913E200F800000001022A457D13E200FC000000030640010012FF7101000000000000000612FFAD01064001040000000812FFAD0503C000FE13A54D09033F67B900000006000000050000000400000006000000020000000000000005000000050000000413D7B10900000004022A45790000000600000005128A7D05028000FE13D7ED09022A457913E200F800000001022A457D000000060000000613E1C4F8022A457D13E200FC00000003064001000000000512FFAD0108C001040000000511FC25050000000A000000020000000000000005000000010000000413D7B10900000004022A4579000000060000000500000002128A7D0107800104128A410500000002028000FE13D7ED09022A457913E200F800000001022A457D0000000813E1C4FC08C001000000000511FC2501064001040000000512FFAD050000000A00000002000000000000000313E1C4F8022A457D0000000800000005000000010000000413D7B10900000004022A45790000000800000005128A7D05028000FE13D7ED09022A457913E200F800000001022A457D0000000A13E1C4FC0000000A0000000313E1C4F8022A457D0000000A00000005000000010000000413D7B10900000004022A45790000000A13E1C4F8022A457D00000008000000050000000100000002000000000000000300000001"
theorem small_8340935_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8340935_right_root small_8340935_right_fuel small_8340935_right_count small_8340935_right_encoded = true := by
  decide +kernel
theorem small_8340935_right_covered : CoveredBy scale carrier boxes small_8340935_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8340935_right_root small_8340935_right_fuel small_8340935_right_count small_8340935_right_encoded small_8340935_right_checked

theorem cover_8340935 : CoveredBy scale carrier boxes root_8340935 := by
  apply coveredBy_split_literal root_8340935 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.root_8340936 small_8340935_right_root coord4 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.cover_8340936
  · exact small_8340935_right_covered
#print axioms cover_8340935

def root_8340930 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8340930_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8340930_right_fuel : Nat := 1
def small_8340930_right_count : Nat := 1
def small_8340930_right_encoded : String := "00000002"
theorem small_8340930_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8340930_right_root small_8340930_right_fuel small_8340930_right_count small_8340930_right_encoded = true := by
  decide +kernel
theorem small_8340930_right_covered : CoveredBy scale carrier boxes small_8340930_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8340930_right_root small_8340930_right_fuel small_8340930_right_count small_8340930_right_encoded small_8340930_right_checked

theorem cover_8340930 : CoveredBy scale carrier boxes root_8340930 := by
  apply coveredBy_split_literal root_8340930 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.root_8340935 small_8340930_right_root coord2 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.cover_8340935
  · exact small_8340930_right_covered
#print axioms cover_8340930

def root_8337108 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8337108 : CoveredBy scale carrier boxes root_8337108 := by
  apply coveredBy_split_literal root_8337108 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.root_8337109 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.root_8340930 coord2 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.cover_8337109
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.cover_8340930
#print axioms cover_8337108

def root_8337103 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8337103_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8337103_right_fuel : Nat := 1
def small_8337103_right_count : Nat := 1
def small_8337103_right_encoded : String := "00000000"
theorem small_8337103_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8337103_right_root small_8337103_right_fuel small_8337103_right_count small_8337103_right_encoded = true := by
  decide +kernel
theorem small_8337103_right_covered : CoveredBy scale carrier boxes small_8337103_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8337103_right_root small_8337103_right_fuel small_8337103_right_count small_8337103_right_encoded small_8337103_right_checked

theorem cover_8337103 : CoveredBy scale carrier boxes root_8337103 := by
  apply coveredBy_split_literal root_8337103 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.root_8337108 small_8337103_right_root coord0 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.cover_8337108
  · exact small_8337103_right_covered
#print axioms cover_8337103

def root_8330873 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8330873 : CoveredBy scale carrier boxes root_8330873 := by
  apply coveredBy_split_literal root_8330873 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.root_8330874 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.root_8337103 coord0 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.cover_8330874
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.cover_8337103
#print axioms cover_8330873

def root_8330868 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8330868_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8330868_right_fuel : Nat := 1
def small_8330868_right_count : Nat := 1
def small_8330868_right_encoded : String := "00000003"
theorem small_8330868_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8330868_right_root small_8330868_right_fuel small_8330868_right_count small_8330868_right_encoded = true := by
  decide +kernel
theorem small_8330868_right_covered : CoveredBy scale carrier boxes small_8330868_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8330868_right_root small_8330868_right_fuel small_8330868_right_count small_8330868_right_encoded small_8330868_right_checked

theorem cover_8330868 : CoveredBy scale carrier boxes root_8330868 := by
  apply coveredBy_split_literal root_8330868 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.root_8330873 small_8330868_right_root coord3 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.cover_8330873
  · exact small_8330868_right_covered
#print axioms cover_8330868

def root_8330286 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8330286_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8330286_left_fuel : Nat := 24
def small_8330286_left_count : Nat := 281
def small_8330286_left_encoded : String := "12073CFC0000000305000100135D45010000000005000104135D450500000002050000FE135D8109045489F91386ACF8000000010CFD9BFD0F350CFC00000003000000050F34D0FC0280010013D7B101000000000280010413D7B10500000002078000FE128A7D09067ECE790000000900000008000000040000000813D7ED05078000FE00000009000000090000000213D7ED01028001040000000813D7ED05078000FE128A7D09067ECE79000000050000000800000004128A41090000000400000008000000020000000000000003138670F80CFD9BFD000000080F34D0FC028001000000000800000008000000030000000100000004135D450900000004045489F91386ACF8000000010000000800000008135D8105050000FE135D8109045489F91386ACF8000000010CFD9BFD000000050F34D0FC0280010013D7B1010000000007800104128A410500000002078000FE0000000900000009128A7D05078000FE00000009000000050000000213D7ED0107800104128A410500000002078000FE128A7D09067ECE790000000512EA58F80AD3577D0000000510D100FC03C00100000000090000000500000003000000010000000400000005000000050000000000000003138670F80CFD9BFD000000090F34D0FC0280010013D7B1010000000007800104000000090000000913D7ED0107800104128A410500000002078000FE128A7D09022A457900000009000000080000000400000008128A7D05078000FE128A7D09022A4579000000090000000900000004000000090000000200000000000000030000000100000004135D450900000004045489F91386ACF8000000010CFD9BFD000000050F34D0FC028001000000000900000005000000030000000900000002135D810105000104135D450500000002050000FE135D8109045489F91386ACF8000000010CFD9BFD000000050F34D0FC07800100128A410100000000028001040000000813D7ED05078000FE128A7D09067ECE790000000500000008000000040000000500000002128A7D01000000080000000000000003138670F80CFD9BFD000000080F34D0FC00000008000000030000000100000004135D45090000000400000008135D8105050000FE135D8109045489F900000005138670F80CFD9BFD000000050F34D0FC07800100128A41010000000007800104128A410500000002078000FE128A7D09022A457913E200F8000000010AD3577D0000000510D100FC0000000800000003000000080000000400000008128A7D05078000FE128A7D09022A45790000000513E1C4F80AD3577D0000000510D100FC064001000000000712FFAD010000000700000000000000030000000100000004128A410900000004022A4579000000050000000800000002128A7D010780010400000008128A7D05078000FE128A7D090000000500000004000000050000000200000000000000030000000100000004135D450900000004045489F900000005138670F80CFD9BFD000000050F34D0FC0000000800000003000000010000000200000000"
theorem small_8330286_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8330286_left_root small_8330286_left_fuel small_8330286_left_count small_8330286_left_encoded = true := by
  decide +kernel
theorem small_8330286_left_covered : CoveredBy scale carrier boxes small_8330286_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8330286_left_root small_8330286_left_fuel small_8330286_left_count small_8330286_left_encoded small_8330286_left_checked

theorem cover_8330286 : CoveredBy scale carrier boxes root_8330286 := by
  apply coveredBy_split_literal root_8330286 small_8330286_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.root_8330868 coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_8330286_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.cover_8330868
#print axioms cover_8330286

def root_8330281 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8330281_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8330281_right_fuel : Nat := 1
def small_8330281_right_count : Nat := 1
def small_8330281_right_encoded : String := "00000001"
theorem small_8330281_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8330281_right_root small_8330281_right_fuel small_8330281_right_count small_8330281_right_encoded = true := by
  decide +kernel
theorem small_8330281_right_covered : CoveredBy scale carrier boxes small_8330281_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8330281_right_root small_8330281_right_fuel small_8330281_right_count small_8330281_right_encoded small_8330281_right_checked

theorem cover_8330281 : CoveredBy scale carrier boxes root_8330281 := by
  apply coveredBy_split_literal root_8330281 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.root_8330286 small_8330281_right_root coord1 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.cover_8330286
  · exact small_8330281_right_covered
#print axioms cover_8330281

def root_8329601 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8329601_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8329601_left_fuel : Nat := 26
def small_8329601_left_count : Nat := 331
def small_8329601_left_encoded : String := "12073CF80000000108A912FD12073CFC0000000305000100135D45010000000005000104135D450500000002050000FE135D81090CFD9BF9000000050F34D0F80CFD9BFD000000050F34D0FC0280010013D7B101000000000280010413D7B10500000002078000FE128A7D090000000500000004000000050000000500000005000000030000000100000004000000050000000500000005120700FC05000100135D45010000000005000104135D450500000002050000FE135D81090CFD9BF90F350CF800000001000000060F34D0F8045489FD1386ACFC000000030280010013D7B101000000000280010413D7B10500000002078000FE128A7D090AD357790000000610D100F8000000060000000100000004000000060000000613D7ED010280010413D7B10500000002078000FE000000070000000713D7ED05078000FE128A7D090AD357790000000510D100F8067ECE7D00000005000000060000000100000004128A410900000004000000060000000200000000138670FC028001000000000613D7ED0102800104000000060000000600000000000000030000000100000004135D4509000000040CFD9BF9000000060F34D0F80000000600000001135D8105050000FE135D81090CFD9BF9000000060F34D0F8045489FD1386ACFC00000003028001000000000613D7ED0107800104128A410500000002078000FE128A7D090AD357790000000510D100F8067ECE7D00000005000000060000000100000004000000050000000500000000000000060000000100000004135D4509000000040000000600000002135D810105000104135D450500000002050000FE135D81090CFD9BF90F350CF800000001045489FD00000005000000070F34D0F8045489FD1386ACFC0000000307800100128A4101000000000280010413D7B10500000002078000FE000000070000000713D7ED05078000FE128A7D090AD357790000000510D100F8067ECE7D0000000512EA58FC0640010012FF71010000000000000007000000050000000300000001000000040000000500000002128A7D010280010413D7B10500000002078000FE00000007000000050000000500000000138670FC07800100128A410100000000028001040000000713D7ED05078000FE128A7D090AD357790000000610D100F8022A457D000000070000000600000001000000040000000600000002128A7D01028001040000000713D7ED05078000FE128A7D090AD357790000000710D100F8022A457D00000007000000070000000100000004000000070000000200000000000000030000000100000004135D4509000000040CFD9BF9000000070F34D0F8045489FD1386ACFC000000030780010000000007000000050000000700000001135D8105050000FE135D81090CFD9BF9000000050F34D0F8045489FD00000005138670FC07800100128A41010000000007800104128A410500000002078000FE128A7D090AD357790000000610D100F8022A457D0000000600000006000000010000000400000006128A7D050000000600000002128A7D0107800104128A410500000002078000FE128A7D090AD357790000000510D100F8022A457D0000000513E1C4FC08C001000000000600000009000000030000000100000004128A4109000000040AD357790000000510D100F8022A457D000000050000000600000001128A7D05078000FE128A7D090000000500000004000000050000000200000000000000030000000100000004135D4509000000040CFD9BF9000000050F34D0F8045489FD000000050000000600000001000000020000000000000003"
theorem small_8329601_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8329601_left_root small_8329601_left_fuel small_8329601_left_count small_8329601_left_encoded = true := by
  decide +kernel
theorem small_8329601_left_covered : CoveredBy scale carrier boxes small_8329601_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8329601_left_root small_8329601_left_fuel small_8329601_left_count small_8329601_left_encoded small_8329601_left_checked

theorem cover_8329601 : CoveredBy scale carrier boxes root_8329601 := by
  apply coveredBy_split_literal root_8329601 small_8329601_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.root_8330281 coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_8329601_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.cover_8330281
#print axioms cover_8329601

def root_8329595 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8329595_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8329595_left_fuel : Nat := 1
def small_8329595_left_count : Nat := 1
def small_8329595_left_encoded : String := "00000004"
theorem small_8329595_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8329595_left_root small_8329595_left_fuel small_8329595_left_count small_8329595_left_encoded = true := by
  decide +kernel
theorem small_8329595_left_covered : CoveredBy scale carrier boxes small_8329595_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8329595_left_root small_8329595_left_fuel small_8329595_left_count small_8329595_left_encoded small_8329595_left_checked

theorem cover_8329595 : CoveredBy scale carrier boxes root_8329595 := by
  apply coveredBy_split_literal root_8329595 small_8329595_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.root_8329601 coord4 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_8329595_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.cover_8329601
#print axioms cover_8329595

def root_8303461 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8303461 : CoveredBy scale carrier boxes root_8303461 := by
  apply coveredBy_split_literal root_8303461 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.root_8303462 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.root_8329595 coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.cover_8303462
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.cover_8329595
#print axioms cover_8303461

def root_8303455 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8303455_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8303455_left_fuel : Nat := 1
def small_8303455_left_count : Nat := 1
def small_8303455_left_encoded : String := "00000003"
theorem small_8303455_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8303455_left_root small_8303455_left_fuel small_8303455_left_count small_8303455_left_encoded = true := by
  decide +kernel
theorem small_8303455_left_covered : CoveredBy scale carrier boxes small_8303455_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8303455_left_root small_8303455_left_fuel small_8303455_left_count small_8303455_left_encoded small_8303455_left_checked

theorem cover_8303455 : CoveredBy scale carrier boxes root_8303455 := by
  apply coveredBy_split_literal root_8303455 small_8303455_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.root_8303461 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_8303455_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.cover_8303461
#print axioms cover_8303455

def root_8303454 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8303454_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8303454_right_fuel : Nat := 8
def small_8303454_right_count : Nat := 21
def small_8303454_right_encoded : String := "1151E8FD0A0000FE1152250908A912F900000005120700F808A913090000000512073CFE000000040000000500000001000000041151E9090000000408A912F900000005120700F8000000050000000100000003"
theorem small_8303454_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8303454_right_root small_8303454_right_fuel small_8303454_right_count small_8303454_right_encoded = true := by
  decide +kernel
theorem small_8303454_right_covered : CoveredBy scale carrier boxes small_8303454_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8303454_right_root small_8303454_right_fuel small_8303454_right_count small_8303454_right_encoded small_8303454_right_checked

theorem cover_8303454 : CoveredBy scale carrier boxes root_8303454 := by
  apply coveredBy_split_literal root_8303454 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.root_8303455 small_8303454_right_root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.cover_8303455
  · exact small_8303454_right_covered
#print axioms cover_8303454

def root_8303448 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8303448_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8303448_left_fuel : Nat := 1
def small_8303448_left_count : Nat := 1
def small_8303448_left_encoded : String := "00000002"
theorem small_8303448_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8303448_left_root small_8303448_left_fuel small_8303448_left_count small_8303448_left_encoded = true := by
  decide +kernel
theorem small_8303448_left_covered : CoveredBy scale carrier boxes small_8303448_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8303448_left_root small_8303448_left_fuel small_8303448_left_count small_8303448_left_encoded small_8303448_left_checked

theorem cover_8303448 : CoveredBy scale carrier boxes root_8303448 := by
  apply coveredBy_split_literal root_8303448 small_8303448_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.root_8303454 coord2 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_8303448_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.cover_8303454
#print axioms cover_8303448

def root_8303447 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8303447 : CoveredBy scale carrier boxes root_8303447 := by
  apply coveredBy_split_literal root_8303447 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.root_8303448 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3129.root coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.cover_8303448
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3129.covered
#print axioms cover_8303447

def root_8303441 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8303441_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8303441_left_fuel : Nat := 1
def small_8303441_left_count : Nat := 1
def small_8303441_left_encoded : String := "00000001"
theorem small_8303441_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8303441_left_root small_8303441_left_fuel small_8303441_left_count small_8303441_left_encoded = true := by
  decide +kernel
theorem small_8303441_left_covered : CoveredBy scale carrier boxes small_8303441_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8303441_left_root small_8303441_left_fuel small_8303441_left_count small_8303441_left_encoded small_8303441_left_checked

theorem cover_8303441 : CoveredBy scale carrier boxes root_8303441 := by
  apply coveredBy_split_literal root_8303441 small_8303441_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.root_8303447 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_8303441_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.cover_8303447
#print axioms cover_8303441

def root_8303440 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8303440_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8303440_right_fuel : Nat := 15
def small_8303440_right_count : Nat := 81
def small_8303440_right_encoded : String := "1151E8F90A0001041151E905000000020A0000FC115224FD000000030A0000FE1152250908A912FD00000005120700FC08A913090000000512073CFE000000040000000500000003000000041151E9090000000408A912FD00000005120700FC00000005000000031151E8FD0000000500000003115225050A0000FC115224FD000000030A0000FE1152250900000005000000041151E9090000000408A9130512070104000000020000000612073D0408A912FD12073CFC000000030500010000000005135D81010000000500000000120700FC0500010000000005135D8101050000F800000005000000060000000000000003000000021151E8FD0A0000FE000000051151E9090000000408A913050000000612073D040500010000000005135D8101050000F800000005000000060000000000000002000000030000000200000001"
theorem small_8303440_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8303440_right_root small_8303440_right_fuel small_8303440_right_count small_8303440_right_encoded = true := by
  decide +kernel
theorem small_8303440_right_covered : CoveredBy scale carrier boxes small_8303440_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8303440_right_root small_8303440_right_fuel small_8303440_right_count small_8303440_right_encoded small_8303440_right_checked

theorem cover_8303440 : CoveredBy scale carrier boxes root_8303440 := by
  apply coveredBy_split_literal root_8303440 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.root_8303441 small_8303440_right_root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.cover_8303441
  · exact small_8303440_right_covered
#print axioms cover_8303440

def root_8303434 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8303434_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8303434_left_fuel : Nat := 1
def small_8303434_left_count : Nat := 1
def small_8303434_left_encoded : String := "00000000"
theorem small_8303434_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8303434_left_root small_8303434_left_fuel small_8303434_left_count small_8303434_left_encoded = true := by
  decide +kernel
theorem small_8303434_left_covered : CoveredBy scale carrier boxes small_8303434_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8303434_left_root small_8303434_left_fuel small_8303434_left_count small_8303434_left_encoded small_8303434_left_checked

theorem cover_8303434 : CoveredBy scale carrier boxes root_8303434 := by
  apply coveredBy_split_literal root_8303434 small_8303434_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.root_8303440 coord0 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_8303434_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.cover_8303440
#print axioms cover_8303434

def root_8354232 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8354232_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8354232_right_fuel : Nat := 20
def small_8354232_right_count : Nat := 257
def small_8354232_right_encoded : String := "1151E8F90A0001041151E905000000020A0000FC115224FD000000030A0000FE1152250900000005000000041151E9090000000408A91301120701000000000008A912FD00000005120700FC000000050000000312073D0008A912FD12073CFC00000003050000F800000005135D44F90000000500000001120700FC050000F800000005135D44F9000000050000000100000003000000001151E8FD0A0000FE000000051151E9090000000408A913010000000812073D00050000F800000005000000080000000000000003115225050A0000FC115224FD000000030A0000FE1152250908A91301120701000000000008A91305120701040000000208A912FD12073CFC0000000308A91309000000090000000A120700FC000000050000000312073D04000000050000000212073D0008A913050000000512073D0408A912FD00000005120700FC00000005000000030000000200000000000000041151E9090000000408A91301120701000000000008A913050000000A12073D0408A912FD0000000A120700FC0000000A000000030000000212073D0008A91305120701040000000208A912FD0000000A120700FC0000000A0000000312073D0408A912FD12073CFC00000003050000F8135D80F900000001050000FE00000005135D4509000000040CFD9C01000000050F350D000000000500000000135D44F9050000FE00000005135D4509000000040CFD9C010F34D100000000000000000A0F350D00000000060000000000000001120700FC050000F8135D80F900000001050000FE00000005135D4509000000040CFD9C01000000050F350D000000000500000000135D44F9050000FE00000005135D4509000000040CFD9C010F34D10000000000000000090F350D000000000600000000000000010000000300000002000000001151E8FD0A0000FE1152250908A91301120701000000000008A91305120701040000000208A91309120700FE0000000A000000040000000A12073D0408A91309120700FE050000F8000000050000000A0000000412073CFE00000004050000F8000000050000000A0000000212073D0008A91305120701040000000208A91309120700FE050000F8000000050000000A0000000412073CFE00000004050000F8000000050000000A12073D0408A91309120700FE000000050000000412073CFE00000004050000F800000005135D44F900000005000000010000000200000000000000041151E9090000000408A91301120701000000000008A913050000000A0000000812073D0008A9130512070104000000020000000612073D04050000F8135D80F900000001050000FC0000000A135D44FD0000000A00000003135D44F9050000FC0000000A00000006000000010000000200000000000000030000000200000001"
theorem small_8354232_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8354232_right_root small_8354232_right_fuel small_8354232_right_count small_8354232_right_encoded = true := by
  decide +kernel
theorem small_8354232_right_covered : CoveredBy scale carrier boxes small_8354232_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8354232_right_root small_8354232_right_fuel small_8354232_right_count small_8354232_right_encoded small_8354232_right_checked

theorem cover_8354232 : CoveredBy scale carrier boxes root_8354232 := by
  apply coveredBy_split_literal root_8354232 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3130.root small_8354232_right_root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3130.covered
  · exact small_8354232_right_covered
#print axioms cover_8354232

def root_8354227 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8354227_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8354227_right_fuel : Nat := 1
def small_8354227_right_count : Nat := 1
def small_8354227_right_encoded : String := "00000000"
theorem small_8354227_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8354227_right_root small_8354227_right_fuel small_8354227_right_count small_8354227_right_encoded = true := by
  decide +kernel
theorem small_8354227_right_covered : CoveredBy scale carrier boxes small_8354227_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8354227_right_root small_8354227_right_fuel small_8354227_right_count small_8354227_right_encoded small_8354227_right_checked

theorem cover_8354227 : CoveredBy scale carrier boxes root_8354227 := by
  apply coveredBy_split_literal root_8354227 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.root_8354232 small_8354227_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.cover_8354232
  · exact small_8354227_right_covered
#print axioms cover_8354227

def root_8303433 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8303433 : CoveredBy scale carrier boxes root_8303433 := by
  apply coveredBy_split_literal root_8303433 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.root_8303434 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.root_8354227 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.cover_8303434
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.cover_8354227
#print axioms cover_8303433

def root_8302615 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8302615_left_root : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8302615_left_fuel : Nat := 22
def small_8302615_left_count : Nat := 377
def small_8302615_left_encoded : String := "0A0001001151E901000000000A0000F8115224F9000000010A0001041151E905000000020A0000FC115224FD000000030A0000FE115224FF0000000408A912F912073CF80000000108A912FD00000005120700FC0000000800000003120700F808A912FD00000006120700FC08A912FF00000006120700FE000000060000000400000003000000011151E8FF00000005000000041151E8FD0000000500000003115225050A0000FC115224FD00000003000000051151E8FD0A0000FE115224FF00000004000000051151E8FF08A912F900000007120700F800000005000000010000000400000003000000021151E8F90A0001041151E9050000000200000005115225050A0000FC115224FD000000030A0000FE000000081151E8FF00000008000000041151E8FD0A0000FE115224FF0000000408A9130512070104000000020000000812073D0408A912FF0000000800000005000000021151E8FF0000000800000004000000030000000200000001115225010A0000F8115224F9000000010A0001041151E905000000020A0000FC115224FD00000003000000051151E8FD0A0000FE000000061151E8FF000000060000000400000003115225050A0000FC115224FD000000030A0000FE115224FF0000000408A91301120701000000000008A912F912073CF80000000108A9130512070104000000020000000912073D0408A912FD12073CFC0000000308A912FF00000006000000050000000500000002120700F8000000050000000112073D0008A912F912073CF80000000108A91305120701040000000208A912FD12073CFC0000000308A912FF0000000700000005000000050000000500000005000000001151E8FF08A91301120701000000000008A912F900000009120700F8000000060000000112073D0008A912F912073CF80000000108A9130512070104000000020000000712073D0408A912FD12073CFC00000003050000FE00000005135D44FF0CFD9C010000000900000005000000040000000500000002120700F8000000050000000100000000000000041151E8FD0A0000FE115224FF0000000408A91301120701000000000008A912F900000007120700F8000000060000000112073D0008A912F912073CF80000000108A91305120701040000000208A912FF00000007120700FE000000050000000412073D0408A912FF000000070000000500000002120700F80000000500000001000000001151E8FF08A91301120701000000000000000007000000070000000400000003000000021151E8F90A0001041151E905000000020A0000FC115224FD000000030A0000FE115224FF00000004000000051151E8FF08A9130112070100000000000000000600000009000000041151E8FD0A0000FE115224FF0000000408A9130112070100000000000000000612073D0008A912FF0000000600000005000000001151E8FF000000060000000400000003115225050A0000FC115224FD000000030A0000FE115224FF0000000408A91301120701000000000008A91305120701040000000208A912FD00000009120700FC000000080000000312073D0408A912FD12073CFC0000000308A912FF00000009120700FE0000000500000004120700FC00000005000000030000000212073D0008A9130512070104000000020000000912073D0408A912FD12073CFC0000000308A912FF00000009000000050000000500000002000000001151E8FF08A913010000000912073D0008A91305000000090000000900000000000000041151E8FD0A0000FE115224FF0000000408A91301120701000000000008A9130512070104000000020000000712073D0408A912FF00000007120700FE00000007000000040000000212073D0008A91305120701040000000208A912FF00000009120700FE000000090000000412073D0408A912FF12073CFE00000004050000F80000000700000009120700FE050000F800000005135D44F9050000FC000000050000000A000000010000000400000002000000001151E8FF08A9130100000007000000090000000400000003000000020000000100000000"
theorem small_8302615_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8302615_left_root small_8302615_left_fuel small_8302615_left_count small_8302615_left_encoded = true := by
  decide +kernel
theorem small_8302615_left_covered : CoveredBy scale carrier boxes small_8302615_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8302615_left_root small_8302615_left_fuel small_8302615_left_count small_8302615_left_encoded small_8302615_left_checked

theorem cover_8302615 : CoveredBy scale carrier boxes root_8302615 := by
  apply coveredBy_split_literal root_8302615 small_8302615_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.root_8303433 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact small_8302615_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.cover_8303433
#print axioms cover_8302615

def root_8357708 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8357708_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8357708_left_fuel : Nat := 34
def small_8357708_left_count : Nat := 493
def small_8357708_left_encoded : String := "115224F9000000010A0001041151E905000000020A0000FC115224FD000000030A0001081151E8FF0000000500000004115224FF0000000408A912F912073CF80000000108A912FD00000005120700FC0000000500000003120700F808A912FD00000005120700FC0000000500000003000000011151E8FD0A00010800000005115224FF0000000408A912F912073CF80000000108A912FF12073D080500010000000005135D81010500010400000005135D8105050000FC00000005135D44FD000000060000000300000002000000000000000412070108000000040500010000000005135D81010500010400000005135D8105050000FC00000005135D44FD0CFD9BF90F350CF8000000010000000A0000000A000000030000000200000000120700F8000000050000000100000003115225050A0000FC115224FD000000030A0001081151E8FF08A912F900000008120700F8000000050000000100000004115224FF0000000408A912F912073CF80000000108A91305120701040000000208A912FD12073CFC0000000308A912FF12073D080000000800000004120701080000000405000100135D4501000000000CFD9BF90F350CF800000001000000080F34D0F80000000500000001135D81010CFD9BF90F350CF80000000104548A0513867104000000020CFD9BFD0F350CFC00000003045489FF0000000813867108000000040C9A86F80F878CF9000000010C9A86FC00000008000000070F8750F90000000800000001000000081386AD040CFD9BFD0F350CFC00000003045489FF0000000813867108000000040C9A86F80F878CF9000000010C9A86FC00000005000000070F8750F90C9A86FC000000080F8750FD0000000800000003000000010F34D0FC0000000500000003000000020F34D0F804548A0513867104000000020CFD9BFD0F350CFC000000030000000700000005000000050000000100000000120700FC000000080000000312073D0408A912FD12073CFC0000000308A912FF12073D080500010000000005135D81010CFD9BF90F350CF8000000010CFD9C050F34D10400000002000000080F350D0400000005000000020F34D0F80000000500000001000000000000000412070108000000040500010000000005135D81010CFD9BF90F350CF8000000010CFD9C050F34D104000000020CFD9BFD0F350CFC00000003045489FF1386AD080C9A86F800000005000000080000000413867108000000040C9A86F8000000050F8750F90C9A86FC000000050F8750FD0780010000000005128A7D010AD3578510D101040000000200000008000000080000000000000003000000010F34D0FC00000005000000030F350D0400000005000000020F34D0F8000000050000000100000000120700FC08A912FF0000000512070108000000040500010000000005135D810100000005000000000000000300000002120700F808A91305120701040000000208A912FD12073CFC0000000308A912FF0000000700000005120700FC000000050000000312073D0408A912FD12073CFC0000000308A912FF0000000512070108000000040500010000000005135D81010000000500000000120700FC08A912FF0000000512070108000000040500010000000005135D810100000005000000000000000300000002000000011151E8FD0A0001081151E8FF0000000700000004115224FF0000000408A912F912073CF80000000108A91305120701040000000208A912FF00000007120701080000000405000100135D45010000000000000009135D8101050000FC135D80FD000000030CFD9BF90F350CF80000000104548A05000000070000000700000007000000070000000012073D0408A912FF12073D0805000100135D450100000000050000FC135D80FD000000030CFD9BF90F350CF8000000010CFD9C0500000007000000070000000700000007135D8101050000FC135D80FD000000030CFD9BF90F350CF8000000010CFD9C050F34D10400000002000000070F350D040CFD9BFF000000070F34D108000000040C9A86F8000000070F8750F90C9A87040000000A00000007000000010000000200000007000000070000000000000004120701080000000405000100135D450100000000050000FC135D80FD000000030CFD9BF90F350CF8000000010CFD9C050F34D10400000002000000090000000900000009135D44FD0CFD9BF90F350CF8000000010CFD9C0500000007000000070000000700000003135D8101050000FC135D80FD000000030CFD9BF90F350CF8000000010CFD9C050F34D10400000002045489FF000000071386710800000004000000090F350D04045489FF1386AD080C9A86F80F878CF900000001000000050F8750F90C9A87040000000A0F878D050780010000000007128A7D01000000070000000000000002000000010000000413867108000000040C9A86F8000000050F8750F90C9A8704000000050000000900000001000000020F34D0F80CFD9C050F34D10400000002000000070000000900000001135D44FD0CFD9BF90F350CF8000000010CFD9C050F34D10400000002000000070F350D04045489FF000000071386710800000004000000090000000200000007000000030000000000000002120700F808A9130512070104000000020000000712073D0408A912FF0000000712070108000000040000000700000002000000010000000300000002"
theorem small_8357708_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8357708_left_root small_8357708_left_fuel small_8357708_left_count small_8357708_left_encoded = true := by
  decide +kernel
theorem small_8357708_left_covered : CoveredBy scale carrier boxes small_8357708_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8357708_left_root small_8357708_left_fuel small_8357708_left_count small_8357708_left_encoded small_8357708_left_checked

theorem cover_8357708 : CoveredBy scale carrier boxes root_8357708 := by
  apply coveredBy_split_literal root_8357708 small_8357708_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3131.root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact small_8357708_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3131.covered
#print axioms cover_8357708

def root_8357702 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8357702_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8357702_left_fuel : Nat := 1
def small_8357702_left_count : Nat := 1
def small_8357702_left_encoded : String := "00000000"
theorem small_8357702_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8357702_left_root small_8357702_left_fuel small_8357702_left_count small_8357702_left_encoded = true := by
  decide +kernel
theorem small_8357702_left_covered : CoveredBy scale carrier boxes small_8357702_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8357702_left_root small_8357702_left_fuel small_8357702_left_count small_8357702_left_encoded small_8357702_left_checked

theorem cover_8357702 : CoveredBy scale carrier boxes root_8357702 := by
  apply coveredBy_split_literal root_8357702 small_8357702_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.root_8357708 coord0 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_8357702_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.cover_8357708
#print axioms cover_8357702

def root_8362262 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8362262_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8362262_right_fuel : Nat := 21
def small_8362262_right_count : Nat := 321
def small_8362262_right_encoded : String := "120700F808A91305120701040000000208A912FD12073CFC0000000308A912FF12073D0804548A011386710000000000045489F91386ACF80000000104548A0513867104000000020CFD9BFD000000070F34D0FC00000007000000031386AD040CFD9BFD000000060F34D0FC0CFD9BFF000000060F34D10800000004022A45810000000A13E20100067ECE790000000A00000006000000000000000300000002138670F804548A050000000700000006000000011386AD00045489F91386ACF80000000104548A051386710400000002000000071386AD040CFD9BFD0F350CFC00000003000000070F34D0FC0CFD9BFF000000060F34D10800000004067ECE8100000007000000070000000300000002138670F804548A05000000071386AD040000000600000002000000010000000000000004120701080000000404548A011386710000000000045489F91386ACF80000000104548A050000000A1386AD040CFD9BFD0000000A0F34D0FC0000000A0000000300000002138670F804548A05000000071386AD040CFD9BFD000000070F34D0FC0000000A0000000300000002000000011386AD00045489F91386ACF80000000104548A0513867104000000020CFD9BFD000000070F34D0FC00000007000000031386AD040CFD9BFD0F350CFC00000003000000070F34D0FC0000000A0000000300000002138670F804548A05000000071386AD040CFD9BFD000000070F34D0FC0000000500000003000000020000000100000000120700FC08A912FF12073D0804548A011386710000000000045489F91386ACF80000000104548A051386710400000002045489FD1386ACFC000000030CFD9BFF0F350D0800000007000000040000000A138670FC0CFD9BFF0000000800000005000000031386AD04045489FD1386ACFC000000030CFD9BFF00000006000000050000000500000002138670F804548A051386710400000002045489FD1386ACFC000000030CFD9BFF00000006000000050000000500000005000000011386AD00045489F91386ACF80000000104548A051386710400000002045489FD1386ACFC000000030CFD9BFF00000008000000050000000500000005000000050000000000000004120701080000000404548A0113867100000000000000000A000000050000000312073D0408A912FD12073CFC0000000308A912FF12073D080000000600000004120701080000000404548A011386710000000000045489F91386ACF8000000010CFD9C050F34D104000000020CFD9BFD0F350CFC00000003045489FF00000006000000080F34D0FC045489FF1386AD08022A45810000000A000000050000000400000005000000030F350D040CFD9BFD000000060F34D0FC000000050000000300000002138670F80CFD9C050F34D104000000020CFD9BFD000000060F34D0FC000000050000000300000006000000011386AD00045489F91386ACF8000000010CFD9C050F34D104000000020CFD9BFD0F350CFC00000003045489FF0000000613867108000000040C9A86FC0F878CFD00000003067ECE810000000800000005000000080F34D0FC00000005000000030F350D040CFD9BFD000000060000000500000002138670F80CFD9C050F34D104000000020CFD9BFD000000060F34D0FC00000005000000030F350D0400000005000000020000000100000000120700FC08A912FF12073D080000000500000004120701080000000404548A01000000051386AD000000000500000000000000030000000200000001"
theorem small_8362262_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8362262_right_root small_8362262_right_fuel small_8362262_right_count small_8362262_right_encoded = true := by
  decide +kernel
theorem small_8362262_right_covered : CoveredBy scale carrier boxes small_8362262_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8362262_right_root small_8362262_right_fuel small_8362262_right_count small_8362262_right_encoded small_8362262_right_checked

theorem cover_8362262 : CoveredBy scale carrier boxes root_8362262 := by
  apply coveredBy_split_literal root_8362262 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3132.root small_8362262_right_root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3132.covered
  · exact small_8362262_right_covered
#print axioms cover_8362262

def root_8362256 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8362256_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8362256_left_fuel : Nat := 1
def small_8362256_left_count : Nat := 1
def small_8362256_left_encoded : String := "00000000"
theorem small_8362256_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8362256_left_root small_8362256_left_fuel small_8362256_left_count small_8362256_left_encoded = true := by
  decide +kernel
theorem small_8362256_left_covered : CoveredBy scale carrier boxes small_8362256_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8362256_left_root small_8362256_left_fuel small_8362256_left_count small_8362256_left_encoded small_8362256_left_checked

theorem cover_8362256 : CoveredBy scale carrier boxes root_8362256 := by
  apply coveredBy_split_literal root_8362256 small_8362256_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.root_8362262 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_8362256_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.cover_8362262
#print axioms cover_8362256

def root_8367985 : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8367985 : CoveredBy scale carrier boxes root_8367985 := by
  apply coveredBy_split_literal root_8367985 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3134.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3135.root coord2 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3134.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3135.covered
#print axioms cover_8367985

def root_8367979 : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8367979_left_root : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8367979_left_fuel : Nat := 1
def small_8367979_left_count : Nat := 1
def small_8367979_left_encoded : String := "00000001"
theorem small_8367979_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8367979_left_root small_8367979_left_fuel small_8367979_left_count small_8367979_left_encoded = true := by
  decide +kernel
theorem small_8367979_left_covered : CoveredBy scale carrier boxes small_8367979_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8367979_left_root small_8367979_left_fuel small_8367979_left_count small_8367979_left_encoded small_8367979_left_checked

theorem cover_8367979 : CoveredBy scale carrier boxes root_8367979 := by
  apply coveredBy_split_literal root_8367979 small_8367979_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.root_8367985 coord1 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_8367979_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.cover_8367985
#print axioms cover_8367979

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
  apply coveredBy_split_literal root_8367978 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.root_8367979 small_8367978_right_root coord1 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.cover_8367979
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
  apply coveredBy_split_literal root_8367972 small_8367972_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.root_8367978 coord0 false (12755968)
  · decide +kernel
  · decide +kernel
  · exact small_8367972_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.cover_8367978
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
  apply coveredBy_split_literal root_8373951 small_8373951_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.root_8373957 coord1 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_8373951_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.cover_8373957
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
  apply coveredBy_split_literal root_8373950 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.root_8373951 small_8373950_right_root coord1 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.cover_8373951
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
  apply coveredBy_split_literal root_8373945 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.root_8373950 small_8373945_right_root coord0 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.cover_8373950
  · exact small_8373945_right_covered
#print axioms cover_8373945

def root_8367971 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8367971 : CoveredBy scale carrier boxes root_8367971 := by
  apply coveredBy_split_literal root_8367971 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.root_8367972 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.root_8373945 coord0 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.cover_8367972
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.cover_8373945
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
  apply coveredBy_split_literal root_8367965 small_8367965_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.root_8367971 coord4 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_8367965_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.cover_8367971
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
  apply coveredBy_split_literal root_8367321 small_8367321_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.root_8367965 coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_8367321_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.cover_8367965
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
  apply coveredBy_split_literal root_8367315 small_8367315_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.root_8367321 coord3 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_8367315_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.cover_8367321
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
  apply coveredBy_split_literal root_8367314 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.root_8367315 small_8367314_right_root coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.cover_8367315
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
  apply coveredBy_split_literal root_8367309 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.root_8367314 small_8367309_right_root coord2 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.cover_8367314
  · exact small_8367309_right_covered
#print axioms cover_8367309

def root_8365543 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8365543 : CoveredBy scale carrier boxes root_8365543 := by
  apply coveredBy_split_literal root_8365543 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3133.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.root_8367309 coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3133.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.cover_8367309
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
  apply coveredBy_split_literal root_8365537 small_8365537_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.root_8365543 coord1 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_8365537_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.cover_8365543
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
  apply coveredBy_split_literal root_8365536 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.root_8365537 small_8365536_right_root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.cover_8365537
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
  apply coveredBy_split_literal root_8365531 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.root_8365536 small_8365531_right_root coord0 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.cover_8365536
  · exact small_8365531_right_covered
#print axioms cover_8365531

def root_8362255 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8362255 : CoveredBy scale carrier boxes root_8362255 := by
  apply coveredBy_split_literal root_8362255 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.root_8362256 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.root_8365531 coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.cover_8362256
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.cover_8365531
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
  apply coveredBy_split_literal root_8362249 small_8362249_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.root_8362255 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_8362249_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201.cover_8362255
#print axioms cover_8362249

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0201
