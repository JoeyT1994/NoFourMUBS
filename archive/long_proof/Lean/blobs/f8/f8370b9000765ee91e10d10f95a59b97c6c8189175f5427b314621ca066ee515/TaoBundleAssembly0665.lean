import TaoBundleAssembly0664
import TaoBundleChunkBatch0921
import TaoBundleChunkBatch0922
import TaoBundleChunkBatch0923
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0665
def root_9832497 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9832497_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9832497_left_fuel : Nat := 23
def small_9832497_left_count : Nat := 327
def small_9832497_left_encoded : String := "1151E901000000000A0001021151E903000000010A0000FA115224FB000000020A0000FC115224FD000000030A0001081151E8FF0000000500000004115224FF0000000408A912FB00000008120700FA08A912FD0000000500000008000000021151E8FD0A00010800000005115224FF0000000408A912FB00000008120700FA0000000500000002000000031151E8FB0A0000FC115224FD000000030A00010800000005115224FF0000000408A912FD00000008120700FC00000005000000031151E8FD0A0001081151E8FF0000000800000004000000080000000300000002115225030A0000FA115224FB000000020A0000FC115224FD000000030A0001081151E8FF08A91303120701020000000108A912FB12073CFA0000000208A912FD00000007120700FC0000000500000003120700FA000000050000000212073D02000000050000000100000004115224FF0000000408A91303120701020000000108A912FB12073CFA0000000208A912FD12073CFC0000000308A912FF12073D08000000070000000400000007120700FC08A912FF12073D0800000005000000040000000500000003120700FA08A912FD12073CFC0000000308A912FF12073D08000000050000000400000005120700FC00000005000000030000000212073D0208A912FB12073CFA0000000208A912FD12073CFC0000000308A912FF12073D08050001000000000500000008000000041207010800000004050001000000000500000008120700FC08A912FF000000050000000800000003120700FA08A912FD12073CFC0000000308A912FF0000000512070108000000040500010000000005135D81010000000500000000120700FC08A912FF0000000512070108000000040500010000000005000000070000000300000002000000011151E8FD0A0001081151E8FF08A91303120701020000000108A912FB00000007120700FA00000007000000020000000800000004115224FF0000000408A91303120701020000000108A912FB00000007120700FA08A912FF12073D080500010000000007135D8101050000FC00000007135D44FD00000007000000030000000000000004000000070000000212073D0208A912FB12073CFA0000000208A912FF12073D08000000080000000400000007120700FA08A912FF12073D080500010000000005135D8101050000FC00000005135D44FD0CFD9C03000000060000000600000003000000000000000412070108000000040500010000000007135D8101050000FC00000007135D44FD0CFD9C03000000070F350D02045489FB00000005000000060000000100000003000000000000000200000001000000031151E8FB0A0000FC115224FD000000030A0001081151E8FF08A91303120701020000000108A912FD00000007120700FC000000070000000312073D0208A912FD12073CFC0000000305000100135D4501000000000000000700000008120700FC00000005000000030000000100000004115224FF0000000408A91303120701020000000108A912FD00000007120700FC08A912FF12073D080500010000000007135D8101050000FA00000007000000090000000000000004000000070000000312073D0208A912FD12073CFC0000000308A912FF12073D0805000100135D45010000000000000008000000080000000400000007120700FC08A912FF12073D08050001000000000500000009000000040000000800000003000000011151E8FD0A0001081151E8FF0000000800000004115224FF0000000400000008000000030000000200000001"
theorem small_9832497_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9832497_left_root small_9832497_left_fuel small_9832497_left_count small_9832497_left_encoded = true := by
  decide +kernel
theorem small_9832497_left_covered : CoveredBy scale carrier boxes small_9832497_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9832497_left_root small_9832497_left_fuel small_9832497_left_count small_9832497_left_encoded small_9832497_left_checked

theorem cover_9832497 : CoveredBy scale carrier boxes root_9832497 := by
  apply coveredBy_split_literal root_9832497 small_9832497_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0664.root_9833193 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_9832497_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0664.cover_9833193
#print axioms cover_9832497

def root_9837450 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9837450 : CoveredBy scale carrier boxes root_9837450 := by
  apply coveredBy_split_literal root_9837450 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3684.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3685.root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3684.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3685.covered
#print axioms cover_9837450

def root_9837444 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9837444_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9837444_left_fuel : Nat := 1
def small_9837444_left_count : Nat := 1
def small_9837444_left_encoded : String := "00000001"
theorem small_9837444_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9837444_left_root small_9837444_left_fuel small_9837444_left_count small_9837444_left_encoded = true := by
  decide +kernel
theorem small_9837444_left_covered : CoveredBy scale carrier boxes small_9837444_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9837444_left_root small_9837444_left_fuel small_9837444_left_count small_9837444_left_encoded small_9837444_left_checked

theorem cover_9837444 : CoveredBy scale carrier boxes root_9837444 := by
  apply coveredBy_split_literal root_9837444 small_9837444_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0665.root_9837450 coord1 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_9837444_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0665.cover_9837450
#print axioms cover_9837444

def root_9837443 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9837443 : CoveredBy scale carrier boxes root_9837443 := by
  apply coveredBy_split_literal root_9837443 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0665.root_9837444 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3686.root coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0665.cover_9837444
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3686.covered
#print axioms cover_9837443

def root_9837438 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9837438_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9837438_right_fuel : Nat := 1
def small_9837438_right_count : Nat := 1
def small_9837438_right_encoded : String := "00000000"
theorem small_9837438_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9837438_right_root small_9837438_right_fuel small_9837438_right_count small_9837438_right_encoded = true := by
  decide +kernel
theorem small_9837438_right_covered : CoveredBy scale carrier boxes small_9837438_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9837438_right_root small_9837438_right_fuel small_9837438_right_count small_9837438_right_encoded small_9837438_right_checked

theorem cover_9837438 : CoveredBy scale carrier boxes root_9837438 := by
  apply coveredBy_split_literal root_9837438 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0665.root_9837443 small_9837438_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0665.cover_9837443
  · exact small_9837438_right_covered
#print axioms cover_9837438

def root_9837094 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9837094_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9837094_left_fuel : Nat := 20
def small_9837094_left_count : Nat := 159
def small_9837094_left_encoded : String := "1151E901000000000A0001021151E903000000010A0000FA115224FB000000020A0000FC115224FD000000030A0001081151E90900000004000000071152250908A912FB12073CFA0000000208A912FD12073CFC0000000308A913090000000800000007120700FC0000000800000003120700FA08A912FD12073CFC0000000308A9130912070108000000040500010000000005135D81010500010200000005000000070000000000000007120700FC000000080000000300000002000000041151E8FD0A0001081151E90900000004000000071152250908A912FB12073CFA0000000208A9130912070108000000040500010000000007135D810105000102135D450300000001050000FC00000005135D44FD0000000700000003000000070000000000000007120700FA08A9130912070108000000040500010000000005135D810105000102000000050000000700000000000000070000000200000004000000031151E8FB0A0000FC115224FD000000030A0001081151E90900000004000000071152250908A912FD12073CFC0000000308A913090000000800000007120700FC0000000800000003000000041151E8FD000000070000000300000002115225030A0000FA115224FB000000020A0000FC115224FD000000030A0001081151E90900000004000000071152250908A91303120701020000000108A912FB000000070000000712073D0208A912FB12073CFA0000000208A912FD00000007120700FC0000000700000003120700FA08A912FD00000007120700FC00000007000000030000000200000001000000041151E8FD00000007000000031151E8FB0A0000FC000000071151E8FD00000007000000030000000200000001"
theorem small_9837094_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9837094_left_root small_9837094_left_fuel small_9837094_left_count small_9837094_left_encoded = true := by
  decide +kernel
theorem small_9837094_left_covered : CoveredBy scale carrier boxes small_9837094_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9837094_left_root small_9837094_left_fuel small_9837094_left_count small_9837094_left_encoded small_9837094_left_checked

theorem cover_9837094 : CoveredBy scale carrier boxes root_9837094 := by
  apply coveredBy_split_literal root_9837094 small_9837094_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0665.root_9837438 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_9837094_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0665.cover_9837438
#print axioms cover_9837094

def root_9832496 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9832496 : CoveredBy scale carrier boxes root_9832496 := by
  apply coveredBy_split_literal root_9832496 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0665.root_9832497 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0665.root_9837094 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0665.cover_9832497
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0665.cover_9837094
#print axioms cover_9832496

def root_9831142 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9831142 : CoveredBy scale carrier boxes root_9831142 := by
  apply coveredBy_split_literal root_9831142 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3682.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0665.root_9832496 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3682.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0665.cover_9832496
#print axioms cover_9831142

def root_9852724 : ZRayBox := fun j => (#[⟨⟨(2097152), (4194304)⟩, ⟨(16243968), (16645888)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(16243968), (16645888)⟩⟩, ⟨⟨(-16379648), (-15867392)⟩, ⟨(-5448672), (-3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9852724 : CoveredBy scale carrier boxes root_9852724 := by
  apply coveredBy_split_literal root_9852724 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3691.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3692.root coord4 true (-5448672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3691.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3692.covered
#print axioms cover_9852724

def root_9852719 : ZRayBox := fun j => (#[⟨⟨(2097152), (4194304)⟩, ⟨(16243968), (16645888)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(16243968), (16645888)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-5448672), (-3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9852719_right_root : ZRayBox := fun j => (#[⟨⟨(2097152), (4194304)⟩, ⟨(16243968), (16645888)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(16243968), (16645888)⟩⟩, ⟨⟨(-15867392), (-15122432)⟩, ⟨(-5448672), (-3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9852719_right_fuel : Nat := 1
def small_9852719_right_count : Nat := 1
def small_9852719_right_encoded : String := "00000002"
theorem small_9852719_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9852719_right_root small_9852719_right_fuel small_9852719_right_count small_9852719_right_encoded = true := by
  decide +kernel
theorem small_9852719_right_covered : CoveredBy scale carrier boxes small_9852719_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9852719_right_root small_9852719_right_fuel small_9852719_right_count small_9852719_right_encoded small_9852719_right_checked

theorem cover_9852719 : CoveredBy scale carrier boxes root_9852719 := by
  apply coveredBy_split_literal root_9852719 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0665.root_9852724 small_9852719_right_root coord2 false (-15867392)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0665.cover_9852724
  · exact small_9852719_right_covered
#print axioms cover_9852719

def root_9850541 : ZRayBox := fun j => (#[⟨⟨(2097152), (4194304)⟩, ⟨(16243968), (16645888)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(16243968), (16645888)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9850541 : CoveredBy scale carrier boxes root_9850541 := by
  apply coveredBy_split_literal root_9850541 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3690.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0665.root_9852719 coord2 true (-5448672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3690.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0665.cover_9852719
#print axioms cover_9850541

def root_9850536 : ZRayBox := fun j => (#[⟨⟨(2097152), (4194304)⟩, ⟨(16243968), (16645888)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9850536_right_root : ZRayBox := fun j => (#[⟨⟨(2097152), (4194304)⟩, ⟨(16243968), (16645888)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(16645888), (16777216)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9850536_right_fuel : Nat := 1
def small_9850536_right_count : Nat := 1
def small_9850536_right_encoded : String := "00000001"
theorem small_9850536_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9850536_right_root small_9850536_right_fuel small_9850536_right_count small_9850536_right_encoded = true := by
  decide +kernel
theorem small_9850536_right_covered : CoveredBy scale carrier boxes small_9850536_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9850536_right_root small_9850536_right_fuel small_9850536_right_count small_9850536_right_encoded small_9850536_right_checked

theorem cover_9850536 : CoveredBy scale carrier boxes root_9850536 := by
  apply coveredBy_split_literal root_9850536 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0665.root_9850541 small_9850536_right_root coord1 true (16645888)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0665.cover_9850541
  · exact small_9850536_right_covered
#print axioms cover_9850536

def root_9849828 : ZRayBox := fun j => (#[⟨⟨(2097152), (4194304)⟩, ⟨(16243968), (16645888)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9849828_left_root : ZRayBox := fun j => (#[⟨⟨(2097152), (4194304)⟩, ⟨(16243968), (16645888)⟩⟩, ⟨⟨(0), (2097152)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9849828_left_fuel : Nat := 23
def small_9849828_left_count : Nat := 339
def small_9849828_left_encoded : String := "13D7B10300000001067ECE7B12EA94FA00000002067ECE7F12EA94FE000000040B4D43FC10804D0703C0010013A51101000000000140010213F5D903000000010793F0BB12825CFA000000020793F0BF0000000800000008128220FA0793F0BF12825CFE0000000400000009000000090000000213F615030793F0BB12825CFA000000020793F0BF00000005128220FE0BF3E57C10092907032001000000000900000008000000031008ED07000000030000000800000004128220FA0793F0BF12825CFE000000040BF3E57C10092907032001000000000900000006000000031008ED07000000030320010013C10901000000000000000913C1450101E00102000000060000000500000000128220FE0BF3E57C1009290700000009000000030000000900000004000000020000000113A54D010140010213F5D903000000010793F0BB12825CFA0000000200000008128220FA000000060000000213F615030793F0BB12825CFA0000000200000005128220FA0793F0BF00000006128220FE0BF3E57C1009290700000006000000031008ED0700000003046001001383DD010000000001E001020000000813E9950307095F9B000000050000000600000001000000060000000400000002000000010000000000000003108011070000000303C0010013A5110100000000014001020000000813F615030793F0BB12825CFA000000020793F0BF0000000500000008128220FA0793F0BF12825CFE0000000400000007128220FE0AA6A27C000000080000000800000004000000020000000113A54D01014001020000000813F615030793F0BB12825CFA0000000200000005128220FA0793F0BF00000007128220FE0AA6A27C00000008000000070000000400000002000000010000000012EA58FE0B4D43FC10804D0703C0010013A5110100000000014001020000000913F615030793F0BB12825CFA000000020569AC3F134110FE000000040BF3E57C1009290700000009000000030000000800000009000000090000000113A54D010140010213F5D903000000010793F0BB000000080000000913F615030793F0BB12825CFA000000020569AC3F134110FE000000040BF3E57C00000008000000081340D4FE0000000800000004128220FA0569AC3F134110FE000000040BF3E57C10092907046001000000000900000006000000031008ED07000000030460010000000009000000081340D4FE000000090000000400000002000000010000000000000003108011070000000303C0010013A5110100000000014001020000000813F615030793F0BB00000008000000090000000113A54D01014001020000000813F615030793F0BB00000008128220FA0569AC3F00000008000000080000000200000001000000000000000412EA58FA067ECE7F12EA94FE000000040B4D43FC10804D0703C0010013A5110100000000014001020000000913F615030569AC3B134110FA000000020793F0BF000000060000000900000006000000010000000600000003108011070000000303C0010013A5110100000000014001020000000713F615030569AC3B134110FA000000020793F0BF0000000700000009000000070000000113A54D01000000070000000012EA58FE0B4D43FC10804D0703C001000000000913A54D01014001020000000913F615030569AC3B134110FA000000020569AC3F000000060000000900000006000000010000000000000003108011070000000303C001000000000913A54D01014001020000000913F615030569AC3B134110FA000000020569AC3F134110FE000000040AA6A27C10EDAD07000000090000000300000009000000090000000900000001000000000000000400000002"
theorem small_9849828_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9849828_left_root small_9849828_left_fuel small_9849828_left_count small_9849828_left_encoded = true := by
  decide +kernel
theorem small_9849828_left_covered : CoveredBy scale carrier boxes small_9849828_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9849828_left_root small_9849828_left_fuel small_9849828_left_count small_9849828_left_encoded small_9849828_left_checked

theorem cover_9849828 : CoveredBy scale carrier boxes root_9849828 := by
  apply coveredBy_split_literal root_9849828 small_9849828_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0665.root_9850536 coord1 false (2097152)
  · decide +kernel
  · decide +kernel
  · exact small_9849828_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0665.cover_9850536
#print axioms cover_9849828

def root_9849823 : ZRayBox := fun j => (#[⟨⟨(2097152), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9849823_right_root : ZRayBox := fun j => (#[⟨⟨(2097152), (4194304)⟩, ⟨(16645888), (16777216)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9849823_right_fuel : Nat := 1
def small_9849823_right_count : Nat := 1
def small_9849823_right_encoded : String := "00000000"
theorem small_9849823_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9849823_right_root small_9849823_right_fuel small_9849823_right_count small_9849823_right_encoded = true := by
  decide +kernel
theorem small_9849823_right_covered : CoveredBy scale carrier boxes small_9849823_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9849823_right_root small_9849823_right_fuel small_9849823_right_count small_9849823_right_encoded small_9849823_right_checked

theorem cover_9849823 : CoveredBy scale carrier boxes root_9849823 := by
  apply coveredBy_split_literal root_9849823 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0665.root_9849828 small_9849823_right_root coord0 true (16645888)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0665.cover_9849828
  · exact small_9849823_right_covered
#print axioms cover_9849823

def root_9848933 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9848933_left_root : ZRayBox := fun j => (#[⟨⟨(0), (2097152)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9848933_left_fuel : Nat := 25
def small_9848933_left_count : Nat := 425
def small_9848933_left_encoded : String := "13D7B101000000000280010213D7B10300000001067ECE7B12EA94FA00000002067ECE7F12EA94FE000000040B4D43FC10804D07014001000000000913F61501014001020000000913F615030793F0BB12825CFA000000020793F0BF12825CFE000000040BF3E57C1009290701E001000000000900000005000000031008ED07000000030000000800000009128220FA0793F0BF12825CFE000000040000000900000009000000020000000100000000000000031080110700000003014001000000000913F61501014001020000000913F615030793F0BB12825CFA000000020793F0BF0000000800000008128220FA0793F0BF0000000A0000000900000002000000010000000012EA58FE0B4D43FC10804D070000000900000003000000090000000412EA58FA067ECE7F12EA94FE000000040B4D43FC10804D07000000090000000300000009000000090000000213D7ED03067ECE7B12EA94FA00000002067ECE7F12EA94FE000000040B4D43FC10804D070140010013F5D9010000000003C0010213A51103000000010793F0BB12825CFA000000020793F0BF0000000A00000009128220FA0793F0BF0000000A000000090000000213A54D030793F0BB12825CFA000000020793F0BF0000000500000006128220FA0793F0BF0000000A00000007000000020000000113F6150103C0010213A51103000000010793F0BB12825CFA000000020793F0BF00000005128220FE0BF3E57C1009290701E001000000000713E995010000000500000000000000031008ED070000000301E001000000000613E995010320010200000008000000050000000000000004128220FA0793F0BF12825CFE000000040BF3E57C1009290701E001000000000913E995010000000500000000000000031008ED07000000030000000A128220FE0BF3E57C10092907000000090000000300000009000000040000000213A54D030793F0BB12825CFA0000000200000005128220FA0793F0BF12825CFE0000000400000005128220FE0BF3E57C1009290700000007000000031008ED070000000301E001000000000A13E99501046001021383DD030000000107095F9B000000050000000A0000000700000000000000040000000200000001000000000000000310801107000000030140010013F5D9010000000003C0010213A51103000000010000000A0000000A13F6150103C0010213A51103000000010793F0BB12825CFA000000020793F0BF0000000500000006128220FA0793F0BF0000000A128220FE0AA6A27C0000000A0000000A000000040000000213A54D030793F0BB12825CFA0000000200000005128220FA0793F0BF0000000A128220FE0AA6A27C0000000A000000060000000400000002000000010000000012EA58FE0B4D43FC10804D070140010013F5D901000000000000000713F6150103C0010213A51103000000010793F0BB00000007000000090000000700000000000000031080110700000003014001000000000613F6150103C0010213A51103000000010793F0BB000000060000000913A54D030000000600000001000000000000000412EA58FA067ECE7F12EA94FE000000040B4D43FC10804D070140010013F5D9010000000003C001020000000913A54D030569AC3B0000000A000000090000000113F6150103C0010213A51103000000010569AC3B134110FA000000020793F0BF12825CFE000000040BF3E57C10092907000000090000000300000009000000090000000913A54D030569AC3B134110FA000000020793F0BF12825CFE000000040BF3E57C0000000A0000000A128220FE0BF3E57C1009290701E001000000000913E9950104600102000000090000000700000000000000031008ED070000000301E001000000000913E9950104600102000000090000000A00000000000000041340D4FA0793F0BF12825CFE000000040000000A128220FE00000009000000040000000200000001000000000000000310801107000000030140010013F5D901000000000000000A13F6150103C0010213A51103000000010569AC3B134110FA000000020793F0BF0000000A000000090000000913A54D030569AC3B0000000A0000000A000000010000000012EA58FE0B4D43FC10804D07014001000000000913F6150103C001020000000913A54D030569AC3B00000007000000090000000100000000000000031080110700000003014001000000000913F6150103C001020000000913A54D030569AC3B134110FA000000020569AC3F134110FE000000040AA6A27C10EDAD0700000009000000030000000900000009000000090000000100000000000000040000000200000001"
theorem small_9848933_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9848933_left_root small_9848933_left_fuel small_9848933_left_count small_9848933_left_encoded = true := by
  decide +kernel
theorem small_9848933_left_covered : CoveredBy scale carrier boxes small_9848933_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9848933_left_root small_9848933_left_fuel small_9848933_left_count small_9848933_left_encoded small_9848933_left_checked

theorem cover_9848933 : CoveredBy scale carrier boxes root_9848933 := by
  apply coveredBy_split_literal root_9848933 small_9848933_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0665.root_9849823 coord0 false (2097152)
  · decide +kernel
  · decide +kernel
  · exact small_9848933_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0665.cover_9849823
#print axioms cover_9848933

def root_9848927 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9848927_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(10897344), (13026304)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9848927_left_fuel : Nat := 1
def small_9848927_left_count : Nat := 1
def small_9848927_left_encoded : String := "00000003"
theorem small_9848927_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9848927_left_root small_9848927_left_fuel small_9848927_left_count small_9848927_left_encoded = true := by
  decide +kernel
theorem small_9848927_left_covered : CoveredBy scale carrier boxes small_9848927_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9848927_left_root small_9848927_left_fuel small_9848927_left_count small_9848927_left_encoded small_9848927_left_checked

theorem cover_9848927 : CoveredBy scale carrier boxes root_9848927 := by
  apply coveredBy_split_literal root_9848927 small_9848927_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0665.root_9848933 coord3 true (13026304)
  · decide +kernel
  · decide +kernel
  · exact small_9848927_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0665.cover_9848933
#print axioms cover_9848927

def root_9847581 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9847581 : CoveredBy scale carrier boxes root_9847581 := by
  apply coveredBy_split_literal root_9847581 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3689.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0665.root_9848927 coord3 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3689.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0665.cover_9848927
#print axioms cover_9847581

def root_9847575 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9847575_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-16379648)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9847575_left_fuel : Nat := 1
def small_9847575_left_count : Nat := 1
def small_9847575_left_encoded : String := "00000004"
theorem small_9847575_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9847575_left_root small_9847575_left_fuel small_9847575_left_count small_9847575_left_encoded = true := by
  decide +kernel
theorem small_9847575_left_covered : CoveredBy scale carrier boxes small_9847575_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9847575_left_root small_9847575_left_fuel small_9847575_left_count small_9847575_left_encoded small_9847575_left_checked

theorem cover_9847575 : CoveredBy scale carrier boxes root_9847575 := by
  apply coveredBy_split_literal root_9847575 small_9847575_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0665.root_9847581 coord4 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_9847575_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0665.cover_9847581
#print axioms cover_9847575

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0665
