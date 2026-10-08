import TaoBundleAssembly0485
import TaoBundleAssembly0487
import TaoBundleChunkBatch0673
import TaoBundleChunkBatch0674
import TaoBundleChunkBatch0675
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0488
def root_7137973 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7137973_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7137973_left_fuel : Nat := 23
def small_7137973_left_count : Nat := 309
def small_7137973_left_encoded : String := "1151E8F70A0001021151E903000000010A0000FA115224FB000000020A0000FC115224FD000000030A000108000000051152250900000009000000041151E8FD0A0001081151E90900000004000000051152250908A912FB00000009120700FA08A9130900000009000000050000000200000004000000031151E8FB0A0000FC115224FD000000030A0001081151E90900000004000000050000000A1151E8FD0A000108000000091152250900000009000000040000000300000002115225030A0000FA115224FB000000020A0000FC115224FD000000030A0001081151E9090000000408A91303120701020000000108A912FB12073CFA0000000208A912FD00000007120700FC0000000500000003120700FA000000050000000212073D0200000005000000011152250908A91303120701020000000108A912FB12073CFA0000000208A912FD12073CFC0000000308A9130912070108000000040000000900000009120700FC08A9130912070108000000040000000A12073D080500010000000009135D80F70000000004548A0313867102000000010CFD9BFB0000000600000009000000090000000400000003120700FA08A912FD12073CFC0000000308A9130912070108000000040000000912073D0805000100135D44F704548A031386710200000001045489FB00000009000000050000000500000000135D80F70000000004548A031386710200000001045489FB00000009000000090000000900000004120700FC08A9130912070108000000040000000900000005000000030000000212073D0208A912FB12073CFA0000000208A912FD12073CFC0000000300000009120700FC0000000A00000003120700FA08A912FD00000009120700FC00000005000000030000000200000001000000041151E8FD0A0001081151E9090000000408A91303120701020000000108A912FB00000007120700FA000000070000000212073D0208A912FB12073CFA0000000205000100135D44F7050000FC00000007135D44FD000000070000000300000000135D80F700000000050000FC00000009135D44FD0000000800000003120700FA0000000500000002000000011152250908A91303120701020000000108A912FB12073CFA0000000208A913090000000912073D0805000100000000060000000900000004120700FA08A9130912070108000000040000000912073D0805000100135D44F70000000800000000135D80F700000000050000FC0000000800000008000000040000000212073D0208A912FB00000009120700FA08A913090000000912073D0805000100135D44F700000008000000000000000800000004000000020000000100000004000000031151E8FB0A0000FC115224FD000000030A0001081151E9090000000408A91303120701020000000108A912FD00000007120700FC0000000700000003000000091152250908A91303120701020000000108A912FD12073CFC0000000308A9130912070108000000040000000600000009120700FC08A9130912070108000000040000000612073D0805000100000000090000000A000000040000000312073D0208A912FD12073CFC0000000308A91309120701080000000400000009000000090000000A00000001000000041151E8FD0A0001081151E90900000004000000090000000900000003000000020000000100000000"
theorem small_7137973_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7137973_left_root small_7137973_left_fuel small_7137973_left_count small_7137973_left_encoded = true := by
  decide +kernel
theorem small_7137973_left_covered : CoveredBy scale carrier boxes small_7137973_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7137973_left_root small_7137973_left_fuel small_7137973_left_count small_7137973_left_encoded small_7137973_left_checked

theorem cover_7137973 : CoveredBy scale carrier boxes root_7137973 := by
  apply coveredBy_split_literal root_7137973 small_7137973_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0487.root_7138643 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_7137973_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0487.cover_7138643
#print axioms cover_7137973

def root_7081625 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7081625 : CoveredBy scale carrier boxes root_7081625 := by
  apply coveredBy_split_literal root_7081625 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0487.root_7081626 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0488.root_7137973 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0487.cover_7081626
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0488.cover_7137973
#print axioms cover_7081625

def root_7075997 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7075997 : CoveredBy scale carrier boxes root_7075997 := by
  apply coveredBy_split_literal root_7075997 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0485.root_7075998 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0488.root_7081625 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0485.cover_7075998
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0488.cover_7081625
#print axioms cover_7075997

def root_7150143 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7150143 : CoveredBy scale carrier boxes root_7150143 := by
  apply coveredBy_split_literal root_7150143 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2694.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2695.root coord2 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2694.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2695.covered
#print axioms cover_7150143

def root_7150137 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7150137_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7150137_left_fuel : Nat := 1
def small_7150137_left_count : Nat := 1
def small_7150137_left_encoded : String := "00000000"
theorem small_7150137_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7150137_left_root small_7150137_left_fuel small_7150137_left_count small_7150137_left_encoded = true := by
  decide +kernel
theorem small_7150137_left_covered : CoveredBy scale carrier boxes small_7150137_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7150137_left_root small_7150137_left_fuel small_7150137_left_count small_7150137_left_encoded small_7150137_left_checked

theorem cover_7150137 : CoveredBy scale carrier boxes root_7150137 := by
  apply coveredBy_split_literal root_7150137 small_7150137_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0488.root_7150143 coord0 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_7150137_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0488.cover_7150143
#print axioms cover_7150137

def root_7149709 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7149709_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7149709_left_fuel : Nat := 23
def small_7149709_left_count : Nat := 207
def small_7149709_left_encoded : String := "1386AD00045489FB1386ACFA000000020CFD9C07000000050F350CFC000000030C9A86FC0F878D0700000005000000030F8751070000000307800102128A410300000001078000FE000000050000000A128A7D03078000FE00000005128A410900000004067ECE770000000512EA590000000000067ECE7B0000000512EA58FA0B4D43FC0000000510801107000000030000000A0000000200000001138670FA0CFD9C070F34D0FC00000005000000030F350CFC000000030C9A86FC0F878D0707800102128A410300000001078000FE128A7D09067ECE770000000512EA590000000000022A457B000000050000000600000004128A410900000004067ECE770000000512EA590000000000022A457B0000000500000008128A7D03078000FE128A7D09067ECE77000000050000000800000004128A410900000004067ECE77000000050000000800000001000000030F8751070000000307800102128A410300000001078000FE128A7D09067ECE7712EA9500022A457B0000000513E1C4FA00000006000000020000000012EA590000000000022A457B13E200FA000000020B4D43FC10804D07000000050000000310801107000000030640010212FF71030000000108C000FE11FC250900000005000000040000000A12FFAD0308C000FE11FC2509000000050000000411FBE909000000040569AC3700000005000000080000000113E1C4FA0B4D43FC0000000610801107000000030640010200000006000000060000000200000004128A410900000004067ECE770000000A12EA590000000000022A457B0000000A13E1C4FA0B4D43FC00000008108011070000000306400102000000080000000800000002128A7D03078000FE128A7D09067ECE7712EA9500022A457B00000005000000080000000012EA590000000000022A457B13E200FA000000020B4D43FC00000008108011070000000308C0010211FBE9030000000108C000FE0000000500000008000000080000000800000004128A410900000004067ECE7712EA9500022A457B00000005000000080000000012EA590000000000022A457B13E200FA000000020B4D43FC00000008108011070000000308C00102000000080000000800000008000000010000000200000000"
theorem small_7149709_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7149709_left_root small_7149709_left_fuel small_7149709_left_count small_7149709_left_encoded = true := by
  decide +kernel
theorem small_7149709_left_covered : CoveredBy scale carrier boxes small_7149709_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7149709_left_root small_7149709_left_fuel small_7149709_left_count small_7149709_left_encoded small_7149709_left_checked

theorem cover_7149709 : CoveredBy scale carrier boxes root_7149709 := by
  apply coveredBy_split_literal root_7149709 small_7149709_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0488.root_7150137 coord0 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact small_7149709_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0488.cover_7150137
#print axioms cover_7149709

def root_7149704 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7149704_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7149704_right_fuel : Nat := 1
def small_7149704_right_count : Nat := 1
def small_7149704_right_encoded : String := "00000004"
theorem small_7149704_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7149704_right_root small_7149704_right_fuel small_7149704_right_count small_7149704_right_encoded = true := by
  decide +kernel
theorem small_7149704_right_covered : CoveredBy scale carrier boxes small_7149704_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7149704_right_root small_7149704_right_fuel small_7149704_right_count small_7149704_right_encoded small_7149704_right_checked

theorem cover_7149704 : CoveredBy scale carrier boxes root_7149704 := by
  apply coveredBy_split_literal root_7149704 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0488.root_7149709 small_7149704_right_root coord4 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0488.cover_7149709
  · exact small_7149704_right_covered
#print axioms cover_7149704

def root_7149703 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7149703_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7149703_right_fuel : Nat := 20
def small_7149703_right_count : Nat := 217
def small_7149703_right_encoded : String := "135D450900000004045489F71386AD00045489FB1386ACFA000000020CFD9C07000000050F350CFC000000030C9A86FC0000000A0F875107000000030000000A138670FA0CFD9C070F34D0FC0780010200000009128A7D03028000FE000000050000000800000001000000030F350CFC000000030C9A86FC0F878D0707800102128A4103000000010000000A128A7D03028000FE13D7ED09067ECE770000000800000008000000040000000A00000001000000030F8751070000000307800102128A4103000000010000000A128A7D03028000FE13D7ED09067ECE770000000A12EA590000000000022A457B0000000A00000008000000040000000A0000000100000002000000001386710000000000045489FB1386ACFA000000020CFD9C070F34D0FC078001020000000900000007000000030F350CFC000000030C9A86FC0F878D0707800102128A41030000000100000009128A7D03028000FE13D7ED09022A457713E20100067ECE7B000000050000000800000000000000070000000413D7B109000000040000000700000001000000030F8751070000000307800102128A410300000001028000FE13D7ED09022A45770000000A13E1C50000000000067ECE7B0000000A000000090000000400000009128A7D03028000FE13D7ED09022A457713E20100067ECE7B0000000A12EA58FA0B4D43FC0000000A10801107000000030000000A000000020000000013E1C50000000000067ECE7B0000000712EA58FA00000007000000020000000413D7B10900000004022A45770000000A13E1C50000000000067ECE7B000000060000000700000001138670FA0CFD9C070F34D0FC00000009000000030F350CFC000000030C9A86FC0F878D070780010200000009128A7D03028000FE000000080000000800000001000000030F8751070000000307800102128A410300000001028000FE13D7ED09022A457713E20100022A457B0000000A13E1C4FA0B4D43FC000000081080110700000003000000080000000200000000000000090000000400000009128A7D03028000FE13D7ED09022A457713E20100022A457B13E200FA000000020B4D43FC00000008108011070000000300000008000000080000000013E1C50000000000022A457B00000007000000080000000413D7B10900000004022A457700000008000000080000000100000002"
theorem small_7149703_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7149703_right_root small_7149703_right_fuel small_7149703_right_count small_7149703_right_encoded = true := by
  decide +kernel
theorem small_7149703_right_covered : CoveredBy scale carrier boxes small_7149703_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7149703_right_root small_7149703_right_fuel small_7149703_right_count small_7149703_right_encoded small_7149703_right_checked

theorem cover_7149703 : CoveredBy scale carrier boxes root_7149703 := by
  apply coveredBy_split_literal root_7149703 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0488.root_7149704 small_7149703_right_root coord4 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0488.cover_7149704
  · exact small_7149703_right_covered
#print axioms cover_7149703

def root_7149698 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7149698_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7149698_right_fuel : Nat := 1
def small_7149698_right_count : Nat := 1
def small_7149698_right_encoded : String := "00000001"
theorem small_7149698_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7149698_right_root small_7149698_right_fuel small_7149698_right_count small_7149698_right_encoded = true := by
  decide +kernel
theorem small_7149698_right_covered : CoveredBy scale carrier boxes small_7149698_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7149698_right_root small_7149698_right_fuel small_7149698_right_count small_7149698_right_encoded small_7149698_right_checked

theorem cover_7149698 : CoveredBy scale carrier boxes root_7149698 := by
  apply coveredBy_split_literal root_7149698 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0488.root_7149703 small_7149698_right_root coord1 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0488.cover_7149703
  · exact small_7149698_right_covered
#print axioms cover_7149698

def root_7147506 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7147506 : CoveredBy scale carrier boxes root_7147506 := by
  apply coveredBy_split_literal root_7147506 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2693.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0488.root_7149698 coord1 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2693.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0488.cover_7149698
#print axioms cover_7147506

def root_7147500 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7147500_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7147500_left_fuel : Nat := 1
def small_7147500_left_count : Nat := 1
def small_7147500_left_encoded : String := "00000003"
theorem small_7147500_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7147500_left_root small_7147500_left_fuel small_7147500_left_count small_7147500_left_encoded = true := by
  decide +kernel
theorem small_7147500_left_covered : CoveredBy scale carrier boxes small_7147500_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7147500_left_root small_7147500_left_fuel small_7147500_left_count small_7147500_left_encoded small_7147500_left_checked

theorem cover_7147500 : CoveredBy scale carrier boxes root_7147500 := by
  apply coveredBy_split_literal root_7147500 small_7147500_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0488.root_7147506 coord3 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_7147500_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0488.cover_7147506
#print axioms cover_7147500

def root_7147460 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7147460_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7147460_left_fuel : Nat := 7
def small_7147460_left_count : Nat := 19
def small_7147460_left_encoded : String := "120700FC05000102135D450300000001050000FE135D8109045489F700000005000000090000000400000009135D8103050000FE00000005135D450900000004000000090000000100000003"
theorem small_7147460_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7147460_left_root small_7147460_left_fuel small_7147460_left_count small_7147460_left_encoded = true := by
  decide +kernel
theorem small_7147460_left_covered : CoveredBy scale carrier boxes small_7147460_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7147460_left_root small_7147460_left_fuel small_7147460_left_count small_7147460_left_encoded small_7147460_left_checked

theorem cover_7147460 : CoveredBy scale carrier boxes root_7147460 := by
  apply coveredBy_split_literal root_7147460 small_7147460_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0488.root_7147500 coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_7147460_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0488.cover_7147500
#print axioms cover_7147460

def root_7147455 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7147455_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7147455_right_fuel : Nat := 1
def small_7147455_right_count : Nat := 1
def small_7147455_right_encoded : String := "00000002"
theorem small_7147455_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7147455_right_root small_7147455_right_fuel small_7147455_right_count small_7147455_right_encoded = true := by
  decide +kernel
theorem small_7147455_right_covered : CoveredBy scale carrier boxes small_7147455_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7147455_right_root small_7147455_right_fuel small_7147455_right_count small_7147455_right_encoded small_7147455_right_checked

theorem cover_7147455 : CoveredBy scale carrier boxes root_7147455 := by
  apply coveredBy_split_literal root_7147455 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0488.root_7147460 small_7147455_right_root coord2 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0488.cover_7147460
  · exact small_7147455_right_covered
#print axioms cover_7147455

def root_7147067 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7147067_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7147067_left_fuel : Nat := 26
def small_7147067_left_count : Nat := 179
def small_7147067_left_encoded : String := "12073CFA0000000208A91307120700FC000000050000000312073CFC0000000305000102135D450300000001050000FE135D8109045489F70000000513867100000000000CFD9BFB000000050F34D0FA0CFD9C07000000050F350CFC000000030C9A86FC0F878D0700000005000000030F87510700000003028001020000000A13D7ED03078000FE128A7D0900000005000000040000000A000000010000000200000004135D450900000004045489F70000000A13867100000000000CFD9BFB0000000A0F34D0FA0CFD9C07000000050000000A00000002135D8103050000FE135D8109045489F71386AD000CFD9BFB000000050F34D0FA00000005000000020000000013867100000000000CFD9BFB0F350CFA000000020CFD9C07000000050F350CFC000000030C9A86FA000000050F8750FB00000005000000020F34D0FA0CFD9C07000000050F350CFC000000030C9A86FC0F878D0700000005000000030F8751070000000307800102128A410300000001078000FE128A7D090000000500000004128A4109000000040000000A128A7D03078000FE128A7D090000000500000004128A410900000004022A45770000000513E1C500000000000AD3577B0000000510D100FA0B4D43FC10804D07000000050000000310801107000000030000000600000002000000010000000200000004135D450900000004045489F71386AD000CFD9BFB0F350CFA000000020000000A0F34D0FA0CFD9C07000000050000000A000000020000000013867100000000000CFD9BFB0F350CFA000000020CFD9C070F34D0FC00000005000000030F350CFC000000030C9A86FA0000000A0000000A0F34D0FA0CFD9C070F34D0FC00000005000000030F350CFC000000030C9A86FC0F878D07078001020000000A128A7D03028000FE13D7ED09022A45770000000500000007000000040000000A00000001000000030F875107000000030000000A0000000200000001"
theorem small_7147067_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7147067_left_root small_7147067_left_fuel small_7147067_left_count small_7147067_left_encoded = true := by
  decide +kernel
theorem small_7147067_left_covered : CoveredBy scale carrier boxes small_7147067_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7147067_left_root small_7147067_left_fuel small_7147067_left_count small_7147067_left_encoded small_7147067_left_checked

theorem cover_7147067 : CoveredBy scale carrier boxes root_7147067 := by
  apply coveredBy_split_literal root_7147067 small_7147067_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0488.root_7147455 coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_7147067_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0488.cover_7147455
#print axioms cover_7147067

def root_7147061 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7147061_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7147061_left_fuel : Nat := 1
def small_7147061_left_count : Nat := 1
def small_7147061_left_encoded : String := "00000000"
theorem small_7147061_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7147061_left_root small_7147061_left_fuel small_7147061_left_count small_7147061_left_encoded = true := by
  decide +kernel
theorem small_7147061_left_covered : CoveredBy scale carrier boxes small_7147061_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7147061_left_root small_7147061_left_fuel small_7147061_left_count small_7147061_left_encoded small_7147061_left_checked

theorem cover_7147061 : CoveredBy scale carrier boxes root_7147061 := by
  apply coveredBy_split_literal root_7147061 small_7147061_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0488.root_7147067 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_7147061_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0488.cover_7147067
#print axioms cover_7147061

def root_7146917 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7146917_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7146917_left_fuel : Nat := 20
def small_7146917_left_count : Nat := 71
def small_7146917_left_encoded : String := "12073D0008A912FB00000005120700FA08A913070000000512073CFC0000000305000102135D450300000001050000FE135D81090CFD9BF7000000050F34D10000000000045489FB00000005138670FA0CFD9C07000000050F350CFC000000030C9A86FC0000000A0000000500000002000000040000000A135D8103050000FE135D81090CFD9BF7000000050F34D10000000000045489FB00000005138670FA0CFD9C07000000050F350CFC000000030C9A86FC000000050F875107000000030780010200000005128A7D0300000005000000010000000200000004135D4509000000040CFD9BF7000000050F34D10000000000045489FB00000005138670FA0CFD9C07000000050000000A00000002000000010000000200000000"
theorem small_7146917_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7146917_left_root small_7146917_left_fuel small_7146917_left_count small_7146917_left_encoded = true := by
  decide +kernel
theorem small_7146917_left_covered : CoveredBy scale carrier boxes small_7146917_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7146917_left_root small_7146917_left_fuel small_7146917_left_count small_7146917_left_encoded small_7146917_left_checked

theorem cover_7146917 : CoveredBy scale carrier boxes root_7146917 := by
  apply coveredBy_split_literal root_7146917 small_7146917_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0488.root_7147061 coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_7146917_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0488.cover_7147061
#print axioms cover_7146917

def root_7146911 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7146911_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7146911_left_fuel : Nat := 1
def small_7146911_left_count : Nat := 1
def small_7146911_left_encoded : String := "00000004"
theorem small_7146911_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7146911_left_root small_7146911_left_fuel small_7146911_left_count small_7146911_left_encoded = true := by
  decide +kernel
theorem small_7146911_left_covered : CoveredBy scale carrier boxes small_7146911_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7146911_left_root small_7146911_left_fuel small_7146911_left_count small_7146911_left_encoded small_7146911_left_checked

theorem cover_7146911 : CoveredBy scale carrier boxes root_7146911 := by
  apply coveredBy_split_literal root_7146911 small_7146911_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0488.root_7146917 coord4 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_7146911_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0488.cover_7146917
#print axioms cover_7146911

def root_7144405 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7144405 : CoveredBy scale carrier boxes root_7144405 := by
  apply coveredBy_split_literal root_7144405 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2692.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0488.root_7146911 coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2692.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0488.cover_7146911
#print axioms cover_7144405

def root_7144400 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7144400_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7144400_right_fuel : Nat := 1
def small_7144400_right_count : Nat := 1
def small_7144400_right_encoded : String := "00000003"
theorem small_7144400_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7144400_right_root small_7144400_right_fuel small_7144400_right_count small_7144400_right_encoded = true := by
  decide +kernel
theorem small_7144400_right_covered : CoveredBy scale carrier boxes small_7144400_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7144400_right_root small_7144400_right_fuel small_7144400_right_count small_7144400_right_encoded small_7144400_right_checked

theorem cover_7144400 : CoveredBy scale carrier boxes root_7144400 := by
  apply coveredBy_split_literal root_7144400 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0488.root_7144405 small_7144400_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0488.cover_7144405
  · exact small_7144400_right_covered
#print axioms cover_7144400

def root_7161475 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(15552512), (16244736)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7161475_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(15552512), (16244736)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(-6291456), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7161475_right_fuel : Nat := 19
def small_7161475_right_count : Nat := 79
def small_7161475_right_encoded : String := "128A410900000004022A457713E20100067ECE7B0000000A12EA58FA064001020000000A12FFAD0308C000FC0000000A11FBE907000000030000000A00000001000000020000000013E1C50000000000067ECE7B12EA94FA0000000206400102000000060000000612EA58FA0640010212FF71030000000108C000FC11FC2507064000FE12FFAD09011523370000000A13F85900000000000569AC3B000000060000000500000004000000060000000311FBE907000000030000000612FFAD0308C000FC11FC2507064000FE12FFAD090115233713F895000569AC3B000000061340D4FA06E001020000000A12C82103096000FC0000000A0000000600000001000000020000000013F85900000000000569AC3B000000061340D4FA0000000600000002000000040000000600000003000000060000000100000002"
theorem small_7161475_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7161475_right_root small_7161475_right_fuel small_7161475_right_count small_7161475_right_encoded = true := by
  decide +kernel
theorem small_7161475_right_covered : CoveredBy scale carrier boxes small_7161475_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7161475_right_root small_7161475_right_fuel small_7161475_right_count small_7161475_right_encoded small_7161475_right_checked

theorem cover_7161475 : CoveredBy scale carrier boxes root_7161475 := by
  apply coveredBy_split_literal root_7161475 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2698.root small_7161475_right_root coord4 false (-6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2698.covered
  · exact small_7161475_right_covered
#print axioms cover_7161475

def root_7161470 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(15552512), (16244736)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7161470_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(15552512), (16244736)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(15553280), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7161470_right_fuel : Nat := 1
def small_7161470_right_count : Nat := 1
def small_7161470_right_encoded : String := "00000003"
theorem small_7161470_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7161470_right_root small_7161470_right_fuel small_7161470_right_count small_7161470_right_encoded = true := by
  decide +kernel
theorem small_7161470_right_covered : CoveredBy scale carrier boxes small_7161470_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7161470_right_root small_7161470_right_fuel small_7161470_right_count small_7161470_right_encoded small_7161470_right_checked

theorem cover_7161470 : CoveredBy scale carrier boxes root_7161470 := by
  apply coveredBy_split_literal root_7161470 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0488.root_7161475 small_7161470_right_root coord3 true (15553280)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0488.cover_7161475
  · exact small_7161470_right_covered
#print axioms cover_7161470

def root_7161469 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(15552512), (16244736)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7161469_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(15552512), (16244736)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-6291456), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7161469_right_fuel : Nat := 17
def small_7161469_right_count : Nat := 115
def small_7161469_right_encoded : String := "128A410700000003078000FE128A7D09022A457713E20100067ECE7B12EA94FA000000020640010212FF710300000001064000FC0000000A0000000612FFAD03064000FC12FFAD0708C000FE000000090000000600000003000000060000000112EA58FA0640010212FF710300000001064000FC12FFAD0708C000FE0000000700000007000000030000000712FFAD03064000FC12FFAD0708C000FE0000000911FBE90900000004033F67B70000000913BBF500000000000569AC3B00000006000000090000000312FF7107000000030000000900000001000000020000000013E1C50000000000067ECE7B12EA94FA0000000206400102000000060000000612EA58FA0640010212FF710300000001064000FC12FFAD0708C000FE11FC25090115233713F895000569AC3B00000006000000070000000013F85900000000000569AC3B000000060000000500000004000000060000000312FF7107000000030000000612FFAD03064000FC12FFAD0708C000FE11FC25090000000900000004000000060000000300000006000000010000000200000004128A410900000004022A457713E20100067ECE7B0000000612EA58FA064001020000000600000006000000020000000000000006"
theorem small_7161469_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7161469_right_root small_7161469_right_fuel small_7161469_right_count small_7161469_right_encoded = true := by
  decide +kernel
theorem small_7161469_right_covered : CoveredBy scale carrier boxes small_7161469_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7161469_right_root small_7161469_right_fuel small_7161469_right_count small_7161469_right_encoded small_7161469_right_checked

theorem cover_7161469 : CoveredBy scale carrier boxes root_7161469 := by
  apply coveredBy_split_literal root_7161469 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0488.root_7161470 small_7161469_right_root coord3 false (-6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0488.cover_7161470
  · exact small_7161469_right_covered
#print axioms cover_7161469

def root_7161463 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7161463_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(14529024), (15552512)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7161463_left_fuel : Nat := 1
def small_7161463_left_count : Nat := 1
def small_7161463_left_encoded : String := "00000001"
theorem small_7161463_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7161463_left_root small_7161463_left_fuel small_7161463_left_count small_7161463_left_encoded = true := by
  decide +kernel
theorem small_7161463_left_covered : CoveredBy scale carrier boxes small_7161463_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7161463_left_root small_7161463_left_fuel small_7161463_left_count small_7161463_left_encoded small_7161463_left_checked

theorem cover_7161463 : CoveredBy scale carrier boxes root_7161463 := by
  apply coveredBy_split_literal root_7161463 small_7161463_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0488.root_7161469 coord1 true (15552512)
  · decide +kernel
  · decide +kernel
  · exact small_7161463_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0488.cover_7161469
#print axioms cover_7161463

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0488
