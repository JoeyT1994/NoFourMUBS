import TaoBundleAssembly0543
import TaoBundleAssembly0544
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0545
def root_7924056 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7924056_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7924056_right_fuel : Nat := 21
def small_7924056_right_count : Nat := 223
def small_7924056_right_encoded : String := "135D44F9050000FA135D80FB0000000205000108135D45090000000404548A0113867100000000000CFD9BFD0F350D060C9A87060F8750FD028000F813D7ECF900000001078000FA00000007128A40FB000000070000000200000007000000030F878CFD00000003028000F813D7ECF900000001078000FA128A7CFB000000020280010813D7B10900000004022A4581000000060000000713D7ED09022A458113E1C500000000000DE7CA0600000007000000050000000700000004128A40FB0280010800000006000000050000000213D7B0F9078000FA000000070000000500000001000000030F34D10600000003028000F813D7ECF900000001078000FA128A7CFB000000020000000A128A40FB0280010813D7B10900000004022A45810000000613E201000AD3577D10D13D0600000006000000030000000A00000000000000050000000213D7B0F9078000FA0000000A00000005000000011386AD000CFD9BFD0F350D060C9A8706000000070F878CFD00000003028000F813D7ECF900000001078000FA00000007128A40FB000000070000000200000007000000030F34D10600000003028000F813D7ECF900000001078000FA0000000A128A40FB0280010813D7B10900000004067ECE8112EA5900000000000AD3577D10D13D0600000007000000030000000A0000000A13D7ED09067ECE810000000A0000000A00000004000000020000000A00000000135D810904548A0113867100000000000CFD9BFD0F350D060C9A87060F8750FD028000F800000008000000050000000300000005000000030F34D10600000003000000051386AD000CFD9BFD0F350D060C9A8706000000090F878CFD00000003028000F80000000900000009000000030F34D106000000030000000A0000000000000004135D44FB05000108135D45090000000404548A0113867100000000000CFD9BFD0F350D060C9A87060000000600000005000000030F34D10600000003000000051386AD000CFD9BFD0F350D0600000009000000030F34D10600000003028000F813D7ECF900000001028000FA13D7ECFB000000020280010813D7B10900000004067ECE8112EA5900000000000AD3577D0000000510D10106000000030000000512EA95000AD3577D0000000710D10106000000030000000A0000000000000005000000050000000500000000135D810904548A010000000500000009000000040000000200000001"
theorem small_7924056_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7924056_right_root small_7924056_right_fuel small_7924056_right_count small_7924056_right_encoded = true := by
  decide +kernel
theorem small_7924056_right_covered : CoveredBy scale carrier boxes small_7924056_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7924056_right_root small_7924056_right_fuel small_7924056_right_count small_7924056_right_encoded small_7924056_right_checked

theorem cover_7924056 : CoveredBy scale carrier boxes root_7924056 := by
  apply coveredBy_split_literal root_7924056 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0544.root_7924057 small_7924056_right_root coord1 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0544.cover_7924057
  · exact small_7924056_right_covered
#print axioms cover_7924056

def root_7924051 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7924051_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7924051_right_fuel : Nat := 1
def small_7924051_right_count : Nat := 1
def small_7924051_right_encoded : String := "00000003"
theorem small_7924051_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7924051_right_root small_7924051_right_fuel small_7924051_right_count small_7924051_right_encoded = true := by
  decide +kernel
theorem small_7924051_right_covered : CoveredBy scale carrier boxes small_7924051_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7924051_right_root small_7924051_right_fuel small_7924051_right_count small_7924051_right_encoded small_7924051_right_checked

theorem cover_7924051 : CoveredBy scale carrier boxes root_7924051 := by
  apply coveredBy_split_literal root_7924051 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0545.root_7924056 small_7924051_right_root coord3 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0545.cover_7924056
  · exact small_7924051_right_covered
#print axioms cover_7924051

def root_7924050 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7924050_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7924050_right_fuel : Nat := 21
def small_7924050_right_count : Nat := 217
def small_7924050_right_encoded : String := "1207010600000003050000F8135D80F900000001050000FA135D80FB0000000205000108135D45090000000404548A011386710000000000045489FD1386AD06078000F8128A7CF900000001078000FA128A7CFB000000020000000A128A40FB0000000800000002128A40F9078000FA0000000A0000000A00000001000000031386710600000003078000F8000000080000000A1386AD00045489FD0000000A0000000A00000000135D810904548A011386710000000000045489FD1386AD06078000F8128A7CF900000001078000FA128A7CFB00000002078001080000000A128A7D090000000A00000004128A40FB07800108128A410900000004022A458113E1C500000000000000000513E20100067ECE7D0000000A0000000A000000000000000500000002128A40F9078000FA0000000A0000000500000001000000031386710600000003078000F8128A7CF900000001078000FA0000000A128A40FB078001080000000800000005000000020000000A1386AD00045489FD1386AD06078000F8128A7CF9000000010000000A0000000A000000030000000A0000000000000004135D44FB05000108135D45090000000404548A011386710000000000045489FD1386AD06078000F800000008128A40F9028000FA13D7ECFB00000002028001080000000800000005000000050000000100000003000000081386AD00045489FD1386AD06078000F800000008128A40F9028000FA0000000A13D7B0FB0280010800000008000000050000000200000001000000030000000800000000135D810904548A011386710000000000000000051386AD00045489FD1386AD06078000F8128A7CF900000001028000FA13D7ECFB0000000207800108128A410900000004067ECE8112EA5900000000000000000500000008000000050000000500000005000000031386710600000003078000F8128A7CF9000000010000000800000005000000000000000400000002135D44F9050000FA135D80FB00000002050001080000000A135D810904548A011386710000000000000000050000000A00000004135D44FB05000108135D45090000000404548A011386710000000000000000051386AD00045489FD1386AD06028000F813D7ECF900000001028000FA0000000A0000000500000005000000030000000A00000000000000050000000200000001"
theorem small_7924050_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7924050_right_root small_7924050_right_fuel small_7924050_right_count small_7924050_right_encoded = true := by
  decide +kernel
theorem small_7924050_right_covered : CoveredBy scale carrier boxes small_7924050_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7924050_right_root small_7924050_right_fuel small_7924050_right_count small_7924050_right_encoded small_7924050_right_checked

theorem cover_7924050 : CoveredBy scale carrier boxes root_7924050 := by
  apply coveredBy_split_literal root_7924050 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0545.root_7924051 small_7924050_right_root coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0545.cover_7924051
  · exact small_7924050_right_covered
#print axioms cover_7924050

def root_7924044 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7924044_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7924044_left_fuel : Nat := 1
def small_7924044_left_count : Nat := 1
def small_7924044_left_encoded : String := "00000000"
theorem small_7924044_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7924044_left_root small_7924044_left_fuel small_7924044_left_count small_7924044_left_encoded = true := by
  decide +kernel
theorem small_7924044_left_covered : CoveredBy scale carrier boxes small_7924044_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7924044_left_root small_7924044_left_fuel small_7924044_left_count small_7924044_left_encoded small_7924044_left_checked

theorem cover_7924044 : CoveredBy scale carrier boxes root_7924044 := by
  apply coveredBy_split_literal root_7924044 small_7924044_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0545.root_7924050 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_7924044_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0545.cover_7924050
#print axioms cover_7924044

def root_7924043 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7924043_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7924043_right_fuel : Nat := 22
def small_7924043_right_count : Nat := 227
def small_7924043_right_encoded : String := "12073D0008A912FD12073D06050000F8135D80F900000001050000FA135D80FB0000000205000108135D4509000000040CFD9C010F34D100000000000CFD9BFD0F350D060C9A8706000000070F878CFD00000003078000F8128A7CF900000001078000FA000000070000000900000007000000030F34D10600000003078000F8128A7CF900000001078000FA0000000A128A40FB0280010813D7B109000000040AD3578110D101000000000000000008000000090000000900000002128A40F9078000FA0000000A128A40FB0000000A00000002000000010F350D000CFD9BFD000000070F34D106000000030000000A00000000135D81090CFD9C010F34D100000000000CFD9BFD0F350D0600000009000000030F34D10600000003078000F8128A7CF9000000010000000A0000000A0F350D000CFD9BFD0F350D060C9A87000000000700000007000000030F34D10600000003000000060000000000000004135D44FB05000108135D4509000000040CFD9C010F34D100000000000CFD9BFD0F350D0600000009000000030F34D10600000003078000F800000009000000090F350D000CFD9BFD0F350D0600000007000000030F34D106000000030C9A87000F87510100000000000000090000000900000000135D81090CFD9C010F34D10000000000000000090F350D000CFD9BFD0F350D06000000090000000300000009000000000000000400000002135D44F9050000FA135D80FB0000000205000108135D4509000000040CFD9C010F34D100000000000CFD9BFD000000070F34D106000000030000000A00000007135D81090CFD9C010F34D100000000000CFD9BFD000000090F34D106000000030000000A0F350D000CFD9BFD00000007000000090000000000000004135D44FB05000108135D4509000000040CFD9C010F34D100000000000000000900000009135D81090CFD9C010000000900000009000000040000000200000001000000031207010600000003050000F8135D80F900000001050000FA0000000A135D44FB05000108135D4509000000040CFD9C010F34D10000000000045489FD1386AD06078000F8000000080000000A00000003000000080F350D000000000A00000000135D81090CFD9C010F34D10000000000045489FD000000090000000A000000090000000400000002135D44F9050000FA0000000A135D44FB05000108135D4509000000040CFD9C010000000A0000000A0000000A000000020000000100000000"
theorem small_7924043_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7924043_right_root small_7924043_right_fuel small_7924043_right_count small_7924043_right_encoded = true := by
  decide +kernel
theorem small_7924043_right_covered : CoveredBy scale carrier boxes small_7924043_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7924043_right_root small_7924043_right_fuel small_7924043_right_count small_7924043_right_encoded small_7924043_right_checked

theorem cover_7924043 : CoveredBy scale carrier boxes root_7924043 := by
  apply coveredBy_split_literal root_7924043 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0545.root_7924044 small_7924043_right_root coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0545.cover_7924044
  · exact small_7924043_right_covered
#print axioms cover_7924043

def root_7924037 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7924037_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7924037_left_fuel : Nat := 1
def small_7924037_left_count : Nat := 1
def small_7924037_left_encoded : String := "00000004"
theorem small_7924037_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7924037_left_root small_7924037_left_fuel small_7924037_left_count small_7924037_left_encoded = true := by
  decide +kernel
theorem small_7924037_left_covered : CoveredBy scale carrier boxes small_7924037_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7924037_left_root small_7924037_left_fuel small_7924037_left_count small_7924037_left_encoded small_7924037_left_checked

theorem cover_7924037 : CoveredBy scale carrier boxes root_7924037 := by
  apply coveredBy_split_literal root_7924037 small_7924037_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0545.root_7924043 coord4 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_7924037_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0545.cover_7924043
#print axioms cover_7924037

def root_7924036 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7924036_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7924036_right_fuel : Nat := 20
def small_7924036_right_count : Nat := 177
def small_7924036_right_encoded : String := "1152250908A91301120701000000000008A912FD12073D0608A9130912070108000000040000000512073D08050000F8135D80F900000001050000FA135D80FB0000000204548A0113867100000000000CFD9BFD0F350D060CFD9C09000000050F350D080000000900000004000000030F34D10600000003000000051386AD000CFD9BFD0F350D0600000009000000030F34D106000000030CFD9C09000000060F350D080C9A87080F8751090000000400000009000000050000000400000000135D44FB04548A01000000050000000900000002135D44F9050000FA135D80FB0000000204548A01000000051386AD000CFD9BFD000000050F34D10600000003000000050000000000000005000000010000000400000003120701060000000308A913090000000512073D08050000F8135D80F900000001050000FA135D80FB0000000204548A011386710000000000000000051386AD00045489FD1386AD060CFD9C09000000050F350D080C9A87080000000A00000005000000040000000313867106000000030CFD9C09000000050F350D080000000A000000040000000000000005000000050000000412073D0008A912FD12073D0608A9130912070108000000040000000612073D08050000F8135D80F900000001050000FA135D80FB000000020CFD9C010F34D100000000000CFD9BFD000000060000000900000006135D44FB0CFD9C010F34D10000000000000000090F350D000CFD9BFD00000006000000090000000000000002135D44F9050000FA135D80FB000000020CFD9C010F34D100000000000000000900000009135D44FB0000000900000002000000010000000400000003120701060000000308A913090000000A12073D08050000F8135D80F900000001050000FA00000006135D44FB0CFD9C010F34D10000000000000000090000000600000002135D44F90000000A00000001000000040000000000000004"
theorem small_7924036_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7924036_right_root small_7924036_right_fuel small_7924036_right_count small_7924036_right_encoded = true := by
  decide +kernel
theorem small_7924036_right_covered : CoveredBy scale carrier boxes small_7924036_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7924036_right_root small_7924036_right_fuel small_7924036_right_count small_7924036_right_encoded small_7924036_right_checked

theorem cover_7924036 : CoveredBy scale carrier boxes root_7924036 := by
  apply coveredBy_split_literal root_7924036 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0545.root_7924037 small_7924036_right_root coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0545.cover_7924037
  · exact small_7924036_right_covered
#print axioms cover_7924036

def root_7924030 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7924030_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7924030_left_fuel : Nat := 1
def small_7924030_left_count : Nat := 1
def small_7924030_left_encoded : String := "00000003"
theorem small_7924030_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7924030_left_root small_7924030_left_fuel small_7924030_left_count small_7924030_left_encoded = true := by
  decide +kernel
theorem small_7924030_left_covered : CoveredBy scale carrier boxes small_7924030_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7924030_left_root small_7924030_left_fuel small_7924030_left_count small_7924030_left_encoded small_7924030_left_checked

theorem cover_7924030 : CoveredBy scale carrier boxes root_7924030 := by
  apply coveredBy_split_literal root_7924030 small_7924030_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0545.root_7924036 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_7924030_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0545.cover_7924036
#print axioms cover_7924030

def root_7923796 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7923796_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7923796_left_fuel : Nat := 18
def small_7923796_left_count : Nat := 113
def small_7923796_left_encoded : String := "1151E8FD0A0001081151E9090000000408A913011207010000000000050000F8135D80F900000001050000FA135D80FB000000020500010600000009135D80FD0000000305000108135D45090000000404548A011386710000000000078000F80000000A128A40F9000000070000000100000007135D81090000000900000004135D44FB0500010600000009135D80FD000000030000000900000002135D44F9050000FA135D80FB000000020500010600000007135D80FD00000003050001080000000700000009000000090000000112073D00050000F8135D80F900000001050000FA135D80FB000000020500010600000007135D80FD00000003050001080000000700000007135D44FB0500010600000007135D80FD000000030500010800000009000000090000000200000007000000001152250908A91301120701000000000008A913090000000812073D08050000F8135D80F900000001050000FA0000000900000008000000080000000412073D0008A913090000000912073D08050000F8135D80F900000001050000FA00000008135D44FB0500010600000008135D80FD0000000300000009000000020000000800000004000000000000000400000003"
theorem small_7923796_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7923796_left_root small_7923796_left_fuel small_7923796_left_count small_7923796_left_encoded = true := by
  decide +kernel
theorem small_7923796_left_covered : CoveredBy scale carrier boxes small_7923796_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7923796_left_root small_7923796_left_fuel small_7923796_left_count small_7923796_left_encoded small_7923796_left_checked

theorem cover_7923796 : CoveredBy scale carrier boxes root_7923796 := by
  apply coveredBy_split_literal root_7923796 small_7923796_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0545.root_7924030 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_7923796_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0545.cover_7924030
#print axioms cover_7923796

def root_7923791 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7923791_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7923791_right_fuel : Nat := 1
def small_7923791_right_count : Nat := 1
def small_7923791_right_encoded : String := "00000002"
theorem small_7923791_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7923791_right_root small_7923791_right_fuel small_7923791_right_count small_7923791_right_encoded = true := by
  decide +kernel
theorem small_7923791_right_covered : CoveredBy scale carrier boxes small_7923791_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7923791_right_root small_7923791_right_fuel small_7923791_right_count small_7923791_right_encoded small_7923791_right_checked

theorem cover_7923791 : CoveredBy scale carrier boxes root_7923791 := by
  apply coveredBy_split_literal root_7923791 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0545.root_7923796 small_7923791_right_root coord2 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0545.cover_7923796
  · exact small_7923791_right_covered
#print axioms cover_7923791

def root_7919503 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7919503 : CoveredBy scale carrier boxes root_7919503 := by
  apply coveredBy_split_literal root_7919503 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0544.root_7919504 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0545.root_7923791 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0544.cover_7919504
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0545.cover_7923791
#print axioms cover_7919503

def root_7919498 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7919498_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7919498_right_fuel : Nat := 1
def small_7919498_right_count : Nat := 1
def small_7919498_right_encoded : String := "00000001"
theorem small_7919498_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7919498_right_root small_7919498_right_fuel small_7919498_right_count small_7919498_right_encoded = true := by
  decide +kernel
theorem small_7919498_right_covered : CoveredBy scale carrier boxes small_7919498_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7919498_right_root small_7919498_right_fuel small_7919498_right_count small_7919498_right_encoded small_7919498_right_checked

theorem cover_7919498 : CoveredBy scale carrier boxes root_7919498 := by
  apply coveredBy_split_literal root_7919498 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0545.root_7919503 small_7919498_right_root coord1 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0545.cover_7919503
  · exact small_7919498_right_covered
#print axioms cover_7919498

def root_7905904 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7905904 : CoveredBy scale carrier boxes root_7905904 := by
  apply coveredBy_split_literal root_7905904 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0543.root_7905905 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0545.root_7919498 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0543.cover_7905905
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0545.cover_7919498
#print axioms cover_7905904

def root_7905899 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7905899_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7905899_right_fuel : Nat := 1
def small_7905899_right_count : Nat := 1
def small_7905899_right_encoded : String := "00000000"
theorem small_7905899_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7905899_right_root small_7905899_right_fuel small_7905899_right_count small_7905899_right_encoded = true := by
  decide +kernel
theorem small_7905899_right_covered : CoveredBy scale carrier boxes small_7905899_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7905899_right_root small_7905899_right_fuel small_7905899_right_count small_7905899_right_encoded small_7905899_right_checked

theorem cover_7905899 : CoveredBy scale carrier boxes root_7905899 := by
  apply coveredBy_split_literal root_7905899 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0545.root_7905904 small_7905899_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0545.cover_7905904
  · exact small_7905899_right_covered
#print axioms cover_7905899

def root_7905287 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7905287_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7905287_left_fuel : Nat := 22
def small_7905287_left_count : Nat := 283
def small_7905287_left_encoded : String := "1151E901000000000A0000F8115224F9000000010A0000FA115224FB000000020A0001061151E8FD0A000108000000051152250908A912F912073CF80000000108A912FB00000006120700FA0000000500000002120700F800000005000000010000000400000003115224FD000000030A0001081151E9090000000408A912F912073CF80000000108A912FB00000005120700FA0000000500000002120700F808A912FB00000005120700FA0000000500000002000000011152250908A912F912073CF80000000108A912FB00000006120700FA0000000600000002120700F80000000600000001000000041151E8FB0A0001061151E8FD0A0001081151E90900000004000000051152250908A912F912073CF80000000108A913090000000612073D0805000100135D45010000000000000006135D8101050000FA00000006135D44FB05000106135D44FD000000060000000300000006000000020000000000000004120700F800000006000000010000000400000003115224FD000000030A0001081151E9090000000408A912F912073CF80000000108A912FD12073D060500010000000005135D8101050000FA00000005135D44FB0500010800000005135D81090CFD9BF9000000060F34D0F800000005000000010000000400000002000000000000000312070106000000030500010000000005135D8101050000FA00000005135D44FB0500010800000005000000060000000200000000120700F800000005000000011152250908A912F912073CF80000000108A912FD00000006120701060000000300000006120700F8000000060000000100000004000000021151E8F90A0000FA115224FB000000020A0001061151E8FD0A0001081151E90900000004000000050000000800000003115224FD000000030A0001081151E9090000000408A912FB12073CFA0000000208A912FD12073D060500010000000005135D8101050000F8000000050000000A00000000000000030000000A120700FA00000005000000021152250908A912FB12073CFA0000000208A912FD000000060000000A0000000A000000041151E8FB0A0001061151E8FD0A0001081151E90900000004000000071152250908A9130912070108000000040000000612073D08050001000000000800000008000000040000000400000003115224FD000000030A0001081151E9090000000408A912FD12073D0605000100135D450100000000050000F8135D80F9000000010000000A00000007135D8101050000F8135D80F900000001050000FA135D80FB00000002050001080000000500000006135D44FB05000108135D45090000000400000007135D81090CFD9BFD000000060000000A0000000400000002135D44F9050000FA00000007135D44FB000000070000000200000001000000000000000312070106000000030000000A1152250908A912FD12073D0608A913090000000612073D08050001000000000A135D8101050000F8000000060000000A000000000000000400000003120701060000000300000006000000040000000200000001"
theorem small_7905287_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7905287_left_root small_7905287_left_fuel small_7905287_left_count small_7905287_left_encoded = true := by
  decide +kernel
theorem small_7905287_left_covered : CoveredBy scale carrier boxes small_7905287_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7905287_left_root small_7905287_left_fuel small_7905287_left_count small_7905287_left_encoded small_7905287_left_checked

theorem cover_7905287 : CoveredBy scale carrier boxes root_7905287 := by
  apply coveredBy_split_literal root_7905287 small_7905287_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0545.root_7905899 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_7905287_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0545.cover_7905899
#print axioms cover_7905287

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0545
