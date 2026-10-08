import TaoBundleAssembly0660
import TaoBundleAssembly0662
import TaoBundleChunkBatch0916
import TaoBundleChunkBatch0917
import TaoBundleChunkBatch0918
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0663
def root_9784035 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9784035_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9784035_right_fuel : Nat := 18
def small_9784035_right_count : Nat := 143
def small_9784035_right_encoded : String := "135D45070000000304548A0113867100000000000CFD9C050F34D104000000020CFD9C09000000070F350CFE000000040C9A86FE000000070F875109000000040780010200000007000000050F350D040CFD9C090F34D0FE00000007000000040F350CFE000000040C9A87040F875105000000020C9A86FE0F878D0907800102128A40F900000009000000010000000A000000040F8751090000000407800102128A40F9028000FC0000000A0000000500000001000000050F878D050C9A86FE0F878D0900000007000000040F8751090000000407800102128A40F9028000FC13D7ED07022A458113E1C5000000000000000005000000050000000300000005000000010000000500000002000000021386AD000CFD9C050F34D104000000020CFD9C09000000080F350CFE000000040C9A86FE0F878D0900000008000000040F87510900000004000000050F350D040CFD9C090F34D0FE0C9A87040F8751050000000207800102128A40F90000000800000001128A7CF900000001028000FC0000000A0000000700000008000000040F350CFE000000040C9A87040F875105000000020C9A86FE0F878D0907800102128A40F9028000FC13D7ED07067ECE810000000A00000006000000030000000600000001128A7CF900000001028000FC0000000A00000005000000040F87510900000004000000050F878D050C9A86FE0F878D0907800102128A40F90000000800000001128A7CF90000000100000005000000040F8751090000000400000005000000020000000200000000"
theorem small_9784035_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9784035_right_root small_9784035_right_fuel small_9784035_right_count small_9784035_right_encoded = true := by
  decide +kernel
theorem small_9784035_right_covered : CoveredBy scale carrier boxes small_9784035_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9784035_right_root small_9784035_right_fuel small_9784035_right_count small_9784035_right_encoded small_9784035_right_checked

theorem cover_9784035 : CoveredBy scale carrier boxes root_9784035 := by
  apply coveredBy_split_literal root_9784035 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0662.root_9784036 small_9784035_right_root coord3 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0662.cover_9784036
  · exact small_9784035_right_covered
#print axioms cover_9784035

def root_9784029 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9784029_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9784029_left_fuel : Nat := 1
def small_9784029_left_count : Nat := 1
def small_9784029_left_encoded : String := "00000001"
theorem small_9784029_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9784029_left_root small_9784029_left_fuel small_9784029_left_count small_9784029_left_encoded = true := by
  decide +kernel
theorem small_9784029_left_covered : CoveredBy scale carrier boxes small_9784029_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9784029_left_root small_9784029_left_fuel small_9784029_left_count small_9784029_left_encoded small_9784029_left_checked

theorem cover_9784029 : CoveredBy scale carrier boxes root_9784029 := by
  apply coveredBy_split_literal root_9784029 small_9784029_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0663.root_9784035 coord1 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_9784029_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0663.cover_9784035
#print axioms cover_9784029

def root_9781269 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9781269 : CoveredBy scale carrier boxes root_9781269 := by
  apply coveredBy_split_literal root_9781269 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3662.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0663.root_9784029 coord1 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3662.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0663.cover_9784029
#print axioms cover_9781269

def root_9781263 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9781263_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9781263_left_fuel : Nat := 1
def small_9781263_left_count : Nat := 1
def small_9781263_left_encoded : String := "00000004"
theorem small_9781263_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9781263_left_root small_9781263_left_fuel small_9781263_left_count small_9781263_left_encoded = true := by
  decide +kernel
theorem small_9781263_left_covered : CoveredBy scale carrier boxes small_9781263_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9781263_left_root small_9781263_left_fuel small_9781263_left_count small_9781263_left_encoded small_9781263_left_checked

theorem cover_9781263 : CoveredBy scale carrier boxes root_9781263 := by
  apply coveredBy_split_literal root_9781263 small_9781263_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0663.root_9781269 coord4 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_9781263_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0663.cover_9781269
#print axioms cover_9781263

def root_9781245 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9781245_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9781245_left_fuel : Nat := 5
def small_9781245_left_count : Nat := 9
def small_9781245_left_encoded : String := "120700FE0500010200000008135D80F900000001050000FC000000080000000700000004"
theorem small_9781245_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9781245_left_root small_9781245_left_fuel small_9781245_left_count small_9781245_left_encoded = true := by
  decide +kernel
theorem small_9781245_left_covered : CoveredBy scale carrier boxes small_9781245_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9781245_left_root small_9781245_left_fuel small_9781245_left_count small_9781245_left_encoded small_9781245_left_checked

theorem cover_9781245 : CoveredBy scale carrier boxes root_9781245 := by
  apply coveredBy_split_literal root_9781245 small_9781245_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0663.root_9781263 coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_9781245_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0663.cover_9781263
#print axioms cover_9781245

def root_9781240 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9781240_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9781240_right_fuel : Nat := 1
def small_9781240_right_count : Nat := 1
def small_9781240_right_encoded : String := "00000002"
theorem small_9781240_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9781240_right_root small_9781240_right_fuel small_9781240_right_count small_9781240_right_encoded = true := by
  decide +kernel
theorem small_9781240_right_covered : CoveredBy scale carrier boxes small_9781240_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9781240_right_root small_9781240_right_fuel small_9781240_right_count small_9781240_right_encoded small_9781240_right_checked

theorem cover_9781240 : CoveredBy scale carrier boxes root_9781240 := by
  apply coveredBy_split_literal root_9781240 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0663.root_9781245 small_9781240_right_root coord2 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0663.cover_9781245
  · exact small_9781240_right_covered
#print axioms cover_9781240

def root_9781086 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9781086_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9781086_left_fuel : Nat := 21
def small_9781086_left_count : Nat := 73
def small_9781086_left_encoded : String := "120701040000000208A913090000000812073CFE0000000405000102135D44F9050000FC00000008135D4507000000030000000800000001135D80F900000001050000FC135D810704548A01138671000000000004548A0513867104000000020CFD9C09000000070F350CFE000000040C9A86FE000000070F875109000000040780010200000007128A7CF900000001000000071386AD040CFD9C09000000070F350CFE000000040C9A86FE0F878D0900000007000000040F8751090000000407800102128A40F9078000FC000000080000000700000001128A7CF900000001078000FC128A7D07022A458100000007000000080000000300000007000000020000000800000003135D45070000000304548A0113867100000000000000000700000008"
theorem small_9781086_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9781086_left_root small_9781086_left_fuel small_9781086_left_count small_9781086_left_encoded = true := by
  decide +kernel
theorem small_9781086_left_covered : CoveredBy scale carrier boxes small_9781086_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9781086_left_root small_9781086_left_fuel small_9781086_left_count small_9781086_left_encoded small_9781086_left_checked

theorem cover_9781086 : CoveredBy scale carrier boxes root_9781086 := by
  apply coveredBy_split_literal root_9781086 small_9781086_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0663.root_9781240 coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_9781086_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0663.cover_9781240
#print axioms cover_9781086

def root_9781080 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9781080_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9781080_left_fuel : Nat := 1
def small_9781080_left_count : Nat := 1
def small_9781080_left_encoded : String := "00000000"
theorem small_9781080_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9781080_left_root small_9781080_left_fuel small_9781080_left_count small_9781080_left_encoded = true := by
  decide +kernel
theorem small_9781080_left_covered : CoveredBy scale carrier boxes small_9781080_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9781080_left_root small_9781080_left_fuel small_9781080_left_count small_9781080_left_encoded small_9781080_left_checked

theorem cover_9781080 : CoveredBy scale carrier boxes root_9781080 := by
  apply coveredBy_split_literal root_9781080 small_9781080_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0663.root_9781086 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_9781080_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0663.cover_9781086
#print axioms cover_9781080

def root_9781079 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9781079_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9781079_right_fuel : Nat := 25
def small_9781079_right_count : Nat := 103
def small_9781079_right_encoded : String := "12073D0008A9130512070104000000020000000812073D0408A913090000000812073CFE0000000405000102135D44F9050000FC00000008135D4507000000030000000800000001135D80F900000001050000FC135D81070CFD9C010F34D100000000000CFD9C050F34D10400000002000000080F350D040CFD9C09000000080F350CFE000000040C9A87040F875105000000020C9A86FE0F878D090780010200000008128A7CF900000001078000FC00000008128A41070000000300000008000000040F875109000000040780010200000006128A7CF900000001078000FC128A7D070AD357810000000A0000000500000003000000050F878D050C9A86FE000000080F875109000000040780010200000008128A7CF900000001078000FC000000080000000500000002000000020000000800000003135D4507000000030CFD9C010F34D100000000000CFD9C050F34D10400000002000000080F350D040CFD9C09000000080F350CFE000000040C9A8704000000060F878D050C9A86FE00000008000000050000000200000002000000080000000200000000"
theorem small_9781079_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9781079_right_root small_9781079_right_fuel small_9781079_right_count small_9781079_right_encoded = true := by
  decide +kernel
theorem small_9781079_right_covered : CoveredBy scale carrier boxes small_9781079_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9781079_right_root small_9781079_right_fuel small_9781079_right_count small_9781079_right_encoded small_9781079_right_checked

theorem cover_9781079 : CoveredBy scale carrier boxes root_9781079 := by
  apply coveredBy_split_literal root_9781079 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0663.root_9781080 small_9781079_right_root coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0663.cover_9781080
  · exact small_9781079_right_covered
#print axioms cover_9781079

def root_9781074 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9781074_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9781074_right_fuel : Nat := 1
def small_9781074_right_count : Nat := 1
def small_9781074_right_encoded : String := "00000004"
theorem small_9781074_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9781074_right_root small_9781074_right_fuel small_9781074_right_count small_9781074_right_encoded = true := by
  decide +kernel
theorem small_9781074_right_covered : CoveredBy scale carrier boxes small_9781074_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9781074_right_root small_9781074_right_fuel small_9781074_right_count small_9781074_right_encoded small_9781074_right_checked

theorem cover_9781074 : CoveredBy scale carrier boxes root_9781074 := by
  apply coveredBy_split_literal root_9781074 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0663.root_9781079 small_9781074_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0663.cover_9781079
  · exact small_9781074_right_covered
#print axioms cover_9781074

def root_9781073 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9781073 : CoveredBy scale carrier boxes root_9781073 := by
  apply coveredBy_split_literal root_9781073 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0663.root_9781074 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3664.root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0663.cover_9781074
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3664.covered
#print axioms cover_9781073

def root_9781067 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9781067_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9781067_left_fuel : Nat := 1
def small_9781067_left_count : Nat := 1
def small_9781067_left_encoded : String := "00000003"
theorem small_9781067_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9781067_left_root small_9781067_left_fuel small_9781067_left_count small_9781067_left_encoded = true := by
  decide +kernel
theorem small_9781067_left_covered : CoveredBy scale carrier boxes small_9781067_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9781067_left_root small_9781067_left_fuel small_9781067_left_count small_9781067_left_encoded small_9781067_left_checked

theorem cover_9781067 : CoveredBy scale carrier boxes root_9781067 := by
  apply coveredBy_split_literal root_9781067 small_9781067_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0663.root_9781073 coord3 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_9781067_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0663.cover_9781073
#print axioms cover_9781067

def root_9760473 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9760473 : CoveredBy scale carrier boxes root_9760473 := by
  apply coveredBy_split_literal root_9760473 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0662.root_9760474 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0663.root_9781067 coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0662.cover_9760474
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0663.cover_9781067
#print axioms cover_9760473

def root_9760468 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9760468_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9760468_right_fuel : Nat := 1
def small_9760468_right_count : Nat := 1
def small_9760468_right_encoded : String := "00000002"
theorem small_9760468_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9760468_right_root small_9760468_right_fuel small_9760468_right_count small_9760468_right_encoded = true := by
  decide +kernel
theorem small_9760468_right_covered : CoveredBy scale carrier boxes small_9760468_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9760468_right_root small_9760468_right_fuel small_9760468_right_count small_9760468_right_encoded small_9760468_right_checked

theorem cover_9760468 : CoveredBy scale carrier boxes root_9760468 := by
  apply coveredBy_split_literal root_9760468 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0663.root_9760473 small_9760468_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0663.cover_9760473
  · exact small_9760468_right_covered
#print axioms cover_9760468

def root_9755896 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9755896 : CoveredBy scale carrier boxes root_9755896 := by
  apply coveredBy_split_literal root_9755896 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0660.root_9755897 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0663.root_9760468 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0660.cover_9755897
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0663.cover_9760468
#print axioms cover_9755896

def root_9755891 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9755891_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9755891_right_fuel : Nat := 1
def small_9755891_right_count : Nat := 1
def small_9755891_right_encoded : String := "00000001"
theorem small_9755891_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9755891_right_root small_9755891_right_fuel small_9755891_right_count small_9755891_right_encoded = true := by
  decide +kernel
theorem small_9755891_right_covered : CoveredBy scale carrier boxes small_9755891_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9755891_right_root small_9755891_right_fuel small_9755891_right_count small_9755891_right_encoded small_9755891_right_checked

theorem cover_9755891 : CoveredBy scale carrier boxes root_9755891 := by
  apply coveredBy_split_literal root_9755891 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0663.root_9755896 small_9755891_right_root coord1 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0663.cover_9755896
  · exact small_9755891_right_covered
#print axioms cover_9755891

def root_9792455 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9792455 : CoveredBy scale carrier boxes root_9792455 := by
  apply coveredBy_split_literal root_9792455 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3665.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3666.root coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3665.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3666.covered
#print axioms cover_9792455

def root_9792450 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9792450_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9792450_right_fuel : Nat := 1
def small_9792450_right_count : Nat := 1
def small_9792450_right_encoded : String := "00000004"
theorem small_9792450_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9792450_right_root small_9792450_right_fuel small_9792450_right_count small_9792450_right_encoded = true := by
  decide +kernel
theorem small_9792450_right_covered : CoveredBy scale carrier boxes small_9792450_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9792450_right_root small_9792450_right_fuel small_9792450_right_count small_9792450_right_encoded small_9792450_right_checked

theorem cover_9792450 : CoveredBy scale carrier boxes root_9792450 := by
  apply coveredBy_split_literal root_9792450 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0663.root_9792455 small_9792450_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0663.cover_9792455
  · exact small_9792450_right_covered
#print axioms cover_9792450

def root_9792449 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9792449_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9792449_right_fuel : Nat := 21
def small_9792449_right_count : Nat := 263
def small_9792449_right_encoded : String := "1151E9090000000408A91301120701000000000008A912F912073D0208A91307120700FC05000104135D450500000002050000FE0000000700000007135D8105050000FE135D810904548A0113867100000000000CFD9BF90F350D0204548A07000000070000000700000001000000081386AD000CFD9BF900000007000000090000000000000004135D45090000000400000009000000020000000312073CFC0000000305000104135D450500000002050000FE135D810904548A0113867100000000000CFD9BF90F350D020000000800000001000000081386AD000CFD9BF9000000070F34D10200000001000000080000000000000004135D45090000000404548A0113867100000000000000000700000007135D8105050000FE135D810904548A0113867100000000000CFD9BF90F350D020CFD9C070F34D0FC0C9A87020000000800000007000000030F350CFC000000030C9A87020F8750F90C9A86FC00000007000000080000000100000008000000010F34D10200000001000000081386AD000CFD9BF90F350D020CFD9C070F34D0FC00000007000000030F350CFC000000030C9A87020F8750F900000007000000010F878CF9000000010C9A86FC0000000700000005000000010F34D102000000010CFD9C0700000008000000050000000000000004135D45090000000404548A0113867100000000000CFD9BF90F350D020CFD9C07000000070000000700000001000000081386AD000CFD9BF9000000070F34D1020000000100000005000000000000000200000001120701020000000108A913070000000812073CFC000000030500010400000008135D8105050000FE00000008000000050000000212073D0008A912F912073D0208A91307120700FC05000104135D45050000000200000007000000090000000312073CFC0000000305000104135D450500000002050000FE135D81090CFD9C010F34D100000000000CFD9BF9000000070F34D10200000001000000070F350D000CFD9BF9000000070F34D10200000001000000070000000000000004135D4509000000040CFD9C010F34D100000000000000000700000007135D8105050000FE135D81090CFD9C010F34D100000000000CFD9BF90F350D020CFD9C070F34D0FC00000007000000030F350CFC000000030C9A87020F8750F900000007000000010F878CF90000000100000005000000010F34D102000000010CFD9C0700000009000000050F350D000CFD9BF90F350D020CFD9C07000000090F350CFC000000030C9A87000F87510100000000000000050000000700000001000000090000000000000004135D4509000000040CFD9C010F34D100000000000CFD9BF900000007000000050F350D0000000009000000000000000200000001120701020000000108A913070000000912073CFC00000003050001040000000A0000000500000000"
theorem small_9792449_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9792449_right_root small_9792449_right_fuel small_9792449_right_count small_9792449_right_encoded = true := by
  decide +kernel
theorem small_9792449_right_covered : CoveredBy scale carrier boxes small_9792449_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9792449_right_root small_9792449_right_fuel small_9792449_right_count small_9792449_right_encoded small_9792449_right_checked

theorem cover_9792449 : CoveredBy scale carrier boxes root_9792449 := by
  apply coveredBy_split_literal root_9792449 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0663.root_9792450 small_9792449_right_root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0663.cover_9792450
  · exact small_9792449_right_covered
#print axioms cover_9792449

def root_9792444 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9792444_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9792444_right_fuel : Nat := 1
def small_9792444_right_count : Nat := 1
def small_9792444_right_encoded : String := "00000003"
theorem small_9792444_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9792444_right_root small_9792444_right_fuel small_9792444_right_count small_9792444_right_encoded = true := by
  decide +kernel
theorem small_9792444_right_covered : CoveredBy scale carrier boxes small_9792444_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9792444_right_root small_9792444_right_fuel small_9792444_right_count small_9792444_right_encoded small_9792444_right_checked

theorem cover_9792444 : CoveredBy scale carrier boxes root_9792444 := by
  apply coveredBy_split_literal root_9792444 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0663.root_9792449 small_9792444_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0663.cover_9792449
  · exact small_9792444_right_covered
#print axioms cover_9792444

def root_9792443 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9792443 : CoveredBy scale carrier boxes root_9792443 := by
  apply coveredBy_split_literal root_9792443 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0663.root_9792444 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3667.root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0663.cover_9792444
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3667.covered
#print axioms cover_9792443

def root_9792437 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9792437_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9792437_left_fuel : Nat := 1
def small_9792437_left_count : Nat := 1
def small_9792437_left_encoded : String := "00000002"
theorem small_9792437_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9792437_left_root small_9792437_left_fuel small_9792437_left_count small_9792437_left_encoded = true := by
  decide +kernel
theorem small_9792437_left_covered : CoveredBy scale carrier boxes small_9792437_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9792437_left_root small_9792437_left_fuel small_9792437_left_count small_9792437_left_encoded small_9792437_left_checked

theorem cover_9792437 : CoveredBy scale carrier boxes root_9792437 := by
  apply coveredBy_split_literal root_9792437 small_9792437_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0663.root_9792443 coord2 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_9792437_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0663.cover_9792443
#print axioms cover_9792437

def root_9801017 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9801017 : CoveredBy scale carrier boxes root_9801017 := by
  apply coveredBy_split_literal root_9801017 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3668.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3669.root coord0 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3668.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3669.covered
#print axioms cover_9801017

def root_9801011 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9801011_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9801011_left_fuel : Nat := 1
def small_9801011_left_count : Nat := 1
def small_9801011_left_encoded : String := "00000004"
theorem small_9801011_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9801011_left_root small_9801011_left_fuel small_9801011_left_count small_9801011_left_encoded = true := by
  decide +kernel
theorem small_9801011_left_covered : CoveredBy scale carrier boxes small_9801011_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9801011_left_root small_9801011_left_fuel small_9801011_left_count small_9801011_left_encoded small_9801011_left_checked

theorem cover_9801011 : CoveredBy scale carrier boxes root_9801011 := by
  apply coveredBy_split_literal root_9801011 small_9801011_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0663.root_9801017 coord4 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_9801011_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0663.cover_9801017
#print axioms cover_9801011

def root_9800635 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9800635_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9800635_left_fuel : Nat := 18
def small_9800635_left_count : Nat := 175
def small_9800635_left_encoded : String := "120700FE04548A0113867100000000000CFD9BF90F350D020CFD9C050F34D104000000020CFD9C070F34D0FC00000005000000030F350CFC0000000304548A09000000071386ACFE000000040C9A8702000000070F878CF900000001000000060F350D040CFD9C070F34D0FC00000005000000030F350CFC0000000304548A09138670FE0C9A8702000000050F878CF90000000100000006000000041386ACFE000000040C9A87020F8750F90C9A87040F875105000000020C9A86FC000000050F87510700000003000000060F878D050C9A86FC000000050000000700000002000000010F878CF9000000010C9A8704000000060000000600000002000000010F34D102000000010CFD9C050F34D10400000002000000060F350D040CFD9C070000000600000006000000021386AD000CFD9BF90F350D020CFD9C050F34D104000000020CFD9C070F34D0FC0000000800000003000000080F350D040CFD9C070F34D0FC04548A09000000051386ACFE000000040C9A8702000000050F878CF9000000010C9A87040000000500000006000000030F350CFC0000000304548A09000000081386ACFE000000040C9A87020F8750F90C9A87040F875105000000020C9A86FC000000080F875107000000030000000800000008000000010F878CF9000000010C9A87040F875105000000020C9A86FC000000060F875107000000030000000A0F878D050C9A86FC000000080F87510700000003000000080000000200000002000000010F34D102000000010CFD9C050F34D104000000020CFD9C070F34D0FC00000006000000030F350CFC0000000304548A0900000007000000060F350D040CFD9C070F34D0FC00000006000000030F350CFC0000000304548A09138670FE0C9A87040000000A00000006000000041386ACFE000000040C9A87040F875105000000020000000600000006000000020000000000000004"
theorem small_9800635_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9800635_left_root small_9800635_left_fuel small_9800635_left_count small_9800635_left_encoded = true := by
  decide +kernel
theorem small_9800635_left_covered : CoveredBy scale carrier boxes small_9800635_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9800635_left_root small_9800635_left_fuel small_9800635_left_count small_9800635_left_encoded small_9800635_left_checked

theorem cover_9800635 : CoveredBy scale carrier boxes root_9800635 := by
  apply coveredBy_split_literal root_9800635 small_9800635_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0663.root_9801011 coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_9800635_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0663.cover_9801011
#print axioms cover_9800635

def root_9800629 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9800629_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9800629_left_fuel : Nat := 1
def small_9800629_left_count : Nat := 1
def small_9800629_left_encoded : String := "00000003"
theorem small_9800629_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9800629_left_root small_9800629_left_fuel small_9800629_left_count small_9800629_left_encoded = true := by
  decide +kernel
theorem small_9800629_left_covered : CoveredBy scale carrier boxes small_9800629_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9800629_left_root small_9800629_left_fuel small_9800629_left_count small_9800629_left_encoded small_9800629_left_checked

theorem cover_9800629 : CoveredBy scale carrier boxes root_9800629 := by
  apply coveredBy_split_literal root_9800629 small_9800629_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0663.root_9800635 coord3 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_9800629_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0663.cover_9800635
#print axioms cover_9800629

def root_9800333 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9800333_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9800333_left_fuel : Nat := 19
def small_9800333_left_count : Nat := 135
def small_9800333_left_encoded : String := "120700FC08A91309120700FE04548A0113867100000000000CFD9BF9000000050F34D10200000001000000061386AD000CFD9BF90F350D0200000005000000010F34D102000000010CFD9C050F34D104000000020000000600000006000000000000000412073CFE0000000404548A0113867100000000000CFD9BF90F350D020CFD9C050F34D1040000000204548A07000000091386ACFC000000030CFD9C090F34D0FE00000005000000040F350CFE00000004000000090F350D0404548A07138670FC0CFD9C09000000050F350CFE0000000400000009000000031386ACFC000000030CFD9C090F34D0FE00000005000000040F350CFE000000040C9A87020F8750F90C9A87040F875105000000020C9A86FE000000050000000900000009000000010F878CF9000000010C9A8704000000060000000600000002000000010F34D102000000010CFD9C050F34D10400000002000000060F350D0404548A070000000600000006000000021386AD000CFD9BF90F350D020CFD9C050F34D10400000002000000090F350D0404548A07138670FC00000009000000031386ACFC000000030CFD9C090F34D0FE0C9A8702000000050F878CF90000000100000009000000040F350CFE000000040000000900000002000000010F34D102000000010CFD9C050F34D10400000002000000090F350D0404548A07000000091386ACFC000000030CFD9C090000000900000009000000020000000000000003"
theorem small_9800333_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9800333_left_root small_9800333_left_fuel small_9800333_left_count small_9800333_left_encoded = true := by
  decide +kernel
theorem small_9800333_left_covered : CoveredBy scale carrier boxes small_9800333_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9800333_left_root small_9800333_left_fuel small_9800333_left_count small_9800333_left_encoded small_9800333_left_checked

theorem cover_9800333 : CoveredBy scale carrier boxes root_9800333 := by
  apply coveredBy_split_literal root_9800333 small_9800333_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0663.root_9800629 coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_9800333_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0663.cover_9800629
#print axioms cover_9800333

def root_9800328 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9800328_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9800328_right_fuel : Nat := 1
def small_9800328_right_count : Nat := 1
def small_9800328_right_encoded : String := "00000002"
theorem small_9800328_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9800328_right_root small_9800328_right_fuel small_9800328_right_count small_9800328_right_encoded = true := by
  decide +kernel
theorem small_9800328_right_covered : CoveredBy scale carrier boxes small_9800328_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9800328_right_root small_9800328_right_fuel small_9800328_right_count small_9800328_right_encoded small_9800328_right_checked

theorem cover_9800328 : CoveredBy scale carrier boxes root_9800328 := by
  apply coveredBy_split_literal root_9800328 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0663.root_9800333 small_9800328_right_root coord2 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0663.cover_9800333
  · exact small_9800328_right_covered
#print axioms cover_9800328

def root_9799494 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9799494_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9799494_left_fuel : Nat := 27
def small_9799494_left_count : Nat := 389
def small_9799494_left_encoded : String := "120701040000000208A91307120700FC08A91309120700FE04548A01000000051386AD0000000005000000000000000412073CFE0000000404548A0113867100000000000CFD9BF90F350D0204548A0500000009000000090000000100000009000000090000000312073CFC0000000308A91309120700FE04548A0113867100000000000CFD9BF90F350D0204548A0513867104000000020CFD9C070F34D0FC0000000500000003000000081386AD040CFD9C070F34D0FC00000005000000030000000800000002000000010F34D1020000000104548A0513867104000000020CFD9C070F34D0FC0000000600000003000000061386AD040CFD9C070000000600000006000000021386AD000CFD9BF90F350D0200000008000000010F34D1020000000104548A0513867104000000020CFD9C070F34D0FC04548A09000000080000000600000003000000081386AD040CFD9C070F34D0FC00000006000000030F350CFC0000000304548A09000000071386ACFE000000040C9A86FC000000060000000700000002000000000000000412073CFE0000000404548A0113867100000000000CFD9BF90F350D0204548A0513867104000000020CFD9C070F34D0FC0CFD9C090F34D0FE0C9A87020000000500000006000000040F350CFE0000000400000009000000030F350CFC000000030CFD9C090F34D0FE0C9A87020F8750F900000008000000010F878CF9000000010C9A86FC0000000600000007000000040F350CFE000000040C9A87020F8750F90C9A86FC0F878D0700000009000000030F875107000000030C9A86FE0F878D09022A458100000007000000080000000400000009000000010F878CF9000000010C9A86FC0F878D0700000009000000030F875107000000030C9A86FE00000006000000091386AD040CFD9C070F34D0FC0CFD9C090F34D0FE0C9A87020F8750F9000000050000000100000006000000040F350CFE0000000400000009000000030F350CFC000000030CFD9C090F34D0FE0C9A87020F8750F90C9A86FC0000000800000007000000010F878CF90000000100000006000000040F350CFE000000040C9A87020F8750F90C9A86FC0F878D070C9A86FE0F878D09022A458100000006000000090000000400000009000000030F875107000000030C9A86FE0F878D09022A45810000000613E20100067ECE8512EA5904000000020000000712EA95040B4D440200000007000000060000000200000000000000040F87510900000004022A458113E1C50000000000067ECE85000000090000000600000009000000010F878CF9000000010C9A86FC000000060F875107000000030C9A86FE000000060F875109000000040000000500000002000000010F34D1020000000104548A0513867104000000020CFD9C070F34D0FC00000006000000030F350CFC000000030CFD9C090F34D0FE0000000600000004000000061386AD040CFD9C070F34D0FC00000006000000030F350CFC000000030CFD9C090F34D0FE000000060000000400000006000000021386AD000CFD9BF90F350D0204548A0513867104000000020CFD9C070F34D0FC00000009000000030F350CFC000000030CFD9C090F34D0FE00000008000000040F350CFE000000040C9A8702000000090F878CF900000001000000091386AD040CFD9C070F34D0FC0CFD9C090000000900000009000000030F350CFC000000030CFD9C090F34D0FE0C9A8702000000080F878CF9000000010C9A86FC000000080F8751070000000300000008000000040F350CFE000000040C9A87020F8750F90C9A86FC000000090F875107000000030C9A86FE0000000800000009000000010F878CF9000000010C9A86FC000000090F875107000000030C9A86FE0F878D0900000009000000040000000900000002000000010F34D1020000000104548A0513867104000000020CFD9C07000000090F350CFC000000030CFD9C090F34D0FE0C9A86FC000000060F87510700000003067ECE810000000600000008000000040F350CFE00000004000000091386AD040CFD9C070F34D0FC00000009000000030F350CFC000000030CFD9C090F34D0FE0C9A86FC000000060F8751070000000300000006000000040F350CFE00000004000000090000000200000000"
theorem small_9799494_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9799494_left_root small_9799494_left_fuel small_9799494_left_count small_9799494_left_encoded = true := by
  decide +kernel
theorem small_9799494_left_covered : CoveredBy scale carrier boxes small_9799494_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9799494_left_root small_9799494_left_fuel small_9799494_left_count small_9799494_left_encoded small_9799494_left_checked

theorem cover_9799494 : CoveredBy scale carrier boxes root_9799494 := by
  apply coveredBy_split_literal root_9799494 small_9799494_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0663.root_9800328 coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_9799494_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0663.cover_9800328
#print axioms cover_9799494

def root_9799489 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9799489_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9799489_right_fuel : Nat := 1
def small_9799489_right_count : Nat := 1
def small_9799489_right_encoded : String := "00000001"
theorem small_9799489_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9799489_right_root small_9799489_right_fuel small_9799489_right_count small_9799489_right_encoded = true := by
  decide +kernel
theorem small_9799489_right_covered : CoveredBy scale carrier boxes small_9799489_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9799489_right_root small_9799489_right_fuel small_9799489_right_count small_9799489_right_encoded small_9799489_right_checked

theorem cover_9799489 : CoveredBy scale carrier boxes root_9799489 := by
  apply coveredBy_split_literal root_9799489 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0663.root_9799494 small_9799489_right_root coord1 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0663.cover_9799494
  · exact small_9799489_right_covered
#print axioms cover_9799489

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0663
