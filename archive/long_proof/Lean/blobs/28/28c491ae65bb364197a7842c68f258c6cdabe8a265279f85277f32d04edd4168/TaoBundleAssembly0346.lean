import TaoBundleAssembly0345
import TaoBundleChunkBatch0457
import TaoBundleChunkBatch0458
import TaoBundleChunkBatch0459
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0346
def root_4883486 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4883486_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4883486_left_fuel : Nat := 24
def small_4883486_left_count : Nat := 209
def small_4883486_left_encoded : String := "0F34D108000000040C9A87020F87510300000001022A458113E1C4F6022A458513E1C50400000002022A4587000000050000000A13E20104022A458713E1C4FC0AD3578900000005000000070000000300000007000000020000000013E200F600000000022A458513E1C50400000002022A45870000000913E200FC000000030AD357890000000710D13D080B4D44020000000710804D03033F67C10000000A00000009000000010000000413E20104022A45870000000900000007000000020F878D03022A458113E1C4F6022A458513E1C50400000002022A45870000000513E200FC000000030AD357890000000510D13D080DE7CA02000000050E60150300000005000000010000000413E20104022A458713E1C4FC0AD357890000000510D13D080DE7CA020000000500000008000000040000000313E200FC000000030AD357890000000700000007000000020000000013E200F600000000022A458513E1C50400000002022A458713E1C4FC0AD357890000000510D13D080DE7CA02000000050E6015030000000500000001000000040000000313E200FC000000030AD3578910D10108000000040DE7CA02000000070000000810D13D080DE7CA020E5FD90300000001033F67C113BBF4F60115234500000005000000070000000013BC30F6000000000115234513F8590400000002033F67C70000000513BC30FC000000030BE879C9000000051011AD080D412882000000050EFA4D0300000005000000010000000413F89504033F67C70000000900000007000000020E601503033F67C113BBF4F6011523450000000513F89504033F67C70000000500000007000000020000000013BC30F6000000000115234513F8590400000002033F67C70000000513BC30FC000000030BE879C9000000051011AD080DAED883000000050E96610200000005000000010000000413F89504033F67C7000000080000000800000002000000010000000413E20104022A458713E1C4FC0AD357890000000810D13D080DE7CA020E5FD90300000001000000090E6015030000000800000001000000040000000313E200FC000000030AD357890000000710D13D080DE7CA02000000070E601503033F67C1000000080000000800000001000000040000000200000001"
theorem small_4883486_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4883486_left_root small_4883486_left_fuel small_4883486_left_count small_4883486_left_encoded = true := by
  decide +kernel
theorem small_4883486_left_covered : CoveredBy scale carrier boxes small_4883486_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4883486_left_root small_4883486_left_fuel small_4883486_left_count small_4883486_left_encoded small_4883486_left_checked

theorem cover_4883486 : CoveredBy scale carrier boxes root_4883486 := by
  apply coveredBy_split_literal root_4883486 small_4883486_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0345.root_4883916 coord4 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_4883486_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0345.cover_4883916
#print axioms cover_4883486

def root_4883481 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4883481_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16378880), (-15122432)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4883481_right_fuel : Nat := 1
def small_4883481_right_count : Nat := 1
def small_4883481_right_encoded : String := "00000003"
theorem small_4883481_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4883481_right_root small_4883481_right_fuel small_4883481_right_count small_4883481_right_encoded = true := by
  decide +kernel
theorem small_4883481_right_covered : CoveredBy scale carrier boxes small_4883481_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4883481_right_root small_4883481_right_fuel small_4883481_right_count small_4883481_right_encoded small_4883481_right_checked

theorem cover_4883481 : CoveredBy scale carrier boxes root_4883481 := by
  apply coveredBy_split_literal root_4883481 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0346.root_4883486 small_4883481_right_root coord3 false (-16378880)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0346.cover_4883486
  · exact small_4883481_right_covered
#print axioms cover_4883481

def root_4888684 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4888684_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4888684_left_fuel : Nat := 24
def small_4888684_left_count : Nat := 63
def small_4888684_left_encoded : String := "0F34D108000000040C9A87020F87510300000001022A458100000007000000070F878D03022A458113E1C4F6022A458513E1C50400000002067ECE8712EA58FC000000070000000300000007000000070000000013E200F600000000022A458513E1C50400000002067ECE8712EA58FC0AD357890000000710D13D080DE7CA02000000070E601503033F67C10000000713BC30F6000000000115234513F85904000000020569AC471340D4FC0BE879C9000000071011AD080DAED8830E96250200000001000000080E966102000000070000000100000004000000030000000700000007000000010000000400000003000000070000000700000001"
theorem small_4888684_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4888684_left_root small_4888684_left_fuel small_4888684_left_count small_4888684_left_encoded = true := by
  decide +kernel
theorem small_4888684_left_covered : CoveredBy scale carrier boxes small_4888684_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4888684_left_root small_4888684_left_fuel small_4888684_left_count small_4888684_left_encoded small_4888684_left_checked

theorem cover_4888684 : CoveredBy scale carrier boxes root_4888684 := by
  apply coveredBy_split_literal root_4888684 small_4888684_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1831.root coord4 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_4888684_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1831.covered
#print axioms cover_4888684

def root_4888678 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4888678_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-16379648)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4888678_left_fuel : Nat := 1
def small_4888678_left_count : Nat := 1
def small_4888678_left_encoded : String := "00000003"
theorem small_4888678_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4888678_left_root small_4888678_left_fuel small_4888678_left_count small_4888678_left_encoded = true := by
  decide +kernel
theorem small_4888678_left_covered : CoveredBy scale carrier boxes small_4888678_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4888678_left_root small_4888678_left_fuel small_4888678_left_count small_4888678_left_encoded small_4888678_left_checked

theorem cover_4888678 : CoveredBy scale carrier boxes root_4888678 := by
  apply coveredBy_split_literal root_4888678 small_4888678_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0346.root_4888684 coord3 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_4888678_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0346.cover_4888684
#print axioms cover_4888678

def root_4883480 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4883480 : CoveredBy scale carrier boxes root_4883480 := by
  apply coveredBy_split_literal root_4883480 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0346.root_4883481 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0346.root_4888678 coord3 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0346.cover_4883481
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0346.cover_4888678
#print axioms cover_4883480

def root_4883474 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4883474_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4883474_left_fuel : Nat := 1
def small_4883474_left_count : Nat := 1
def small_4883474_left_encoded : String := "00000002"
theorem small_4883474_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4883474_left_root small_4883474_left_fuel small_4883474_left_count small_4883474_left_encoded = true := by
  decide +kernel
theorem small_4883474_left_covered : CoveredBy scale carrier boxes small_4883474_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4883474_left_root small_4883474_left_fuel small_4883474_left_count small_4883474_left_encoded small_4883474_left_checked

theorem cover_4883474 : CoveredBy scale carrier boxes root_4883474 := by
  apply coveredBy_split_literal root_4883474 small_4883474_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0346.root_4883480 coord2 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_4883474_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0346.cover_4883480
#print axioms cover_4883474

def root_4883473 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4883473 : CoveredBy scale carrier boxes root_4883473 := by
  apply coveredBy_split_literal root_4883473 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0346.root_4883474 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1832.root coord2 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0346.cover_4883474
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1832.covered
#print axioms cover_4883473

def root_4883468 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4883468_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4883468_right_fuel : Nat := 1
def small_4883468_right_count : Nat := 1
def small_4883468_right_encoded : String := "00000001"
theorem small_4883468_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4883468_right_root small_4883468_right_fuel small_4883468_right_count small_4883468_right_encoded = true := by
  decide +kernel
theorem small_4883468_right_covered : CoveredBy scale carrier boxes small_4883468_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4883468_right_root small_4883468_right_fuel small_4883468_right_count small_4883468_right_encoded small_4883468_right_checked

theorem cover_4883468 : CoveredBy scale carrier boxes root_4883468 := by
  apply coveredBy_split_literal root_4883468 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0346.root_4883473 small_4883468_right_root coord1 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0346.cover_4883473
  · exact small_4883468_right_covered
#print axioms cover_4883468

def root_4882004 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4882004 : CoveredBy scale carrier boxes root_4882004 := by
  apply coveredBy_split_literal root_4882004 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1828.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0346.root_4883468 coord1 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1828.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0346.cover_4883468
#print axioms cover_4882004

def root_4881999 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4881999_right_root : ZRayBox := fun j => (#[⟨⟨(-16378880), (-15122432)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4881999_right_fuel : Nat := 1
def small_4881999_right_count : Nat := 1
def small_4881999_right_encoded : String := "00000000"
theorem small_4881999_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4881999_right_root small_4881999_right_fuel small_4881999_right_count small_4881999_right_encoded = true := by
  decide +kernel
theorem small_4881999_right_covered : CoveredBy scale carrier boxes small_4881999_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4881999_right_root small_4881999_right_fuel small_4881999_right_count small_4881999_right_encoded small_4881999_right_checked

theorem cover_4881999 : CoveredBy scale carrier boxes root_4881999 := by
  apply coveredBy_split_literal root_4881999 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0346.root_4882004 small_4881999_right_root coord0 false (-16378880)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0346.cover_4882004
  · exact small_4881999_right_covered
#print axioms cover_4881999

def root_4895771 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4895771_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(8388608), (10572672)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4895771_left_fuel : Nat := 24
def small_4895771_left_count : Nat := 283
def small_4895771_left_encoded : String := "0F875103000000010C9A87080F87510900000004067ECE8112EA58F6022A458513E1C50400000002022A458713E1C4FC0B4D44020000000910804D030B4D44080000000700000009000000010000000313E200FC000000030B4D440210801103000000010B4D4408000000080000000810804D030B4D440810801109000000040000000810804D090569AC411340D4F6011523450000000813F89504033F67C70000000813BC30FC00000003000000080000000200000000134110F600000000011523450000000813F89504033F67C7000000080000000800000002000000040000000113E20104022A458713E1C4FC0B4D44020000000910804D030B4D44080000000A00000009000000010000000313E200FC000000030B4D440210801103000000010B4D44081080110900000004000000080000000910804D030B4D440810801109000000040569AC411340D4F6033F67C5000000080000000A000000000000000A10804D090569AC411340D4F6033F67C513BBF50400000002033F67C70000000913BC30FC000000030BF3E5821008ED030000000100000008100929030BF3E5881008ED090000000400000008000000090000000113BC3104033F67C70000000913BC30FC000000030BF3E58200000009100929030000000A000000010000000200000000134110F600000000033F67C513BBF50400000002033F67C70000000913BC30FC000000030BF3E582000000090000000A0000000A0000000400000001000000020000000012EA94F600000000022A458513E1C50400000002022A458713E1C4FC0B4D440200000009000000070000000313E200FC000000030B4D440210801103000000010000000810804D030B4D440810801109000000040000000810804D090793F0C1128220F60115234500000008000000090000000000000009000000040000000113E20104022A45870000000913E200FC000000030B4D440210801103000000010B4D44081080110900000004000000080000000910804D030000000A00000001000000020F878D09067ECE8112EA58F6022A458513E1C50400000002022A45870000000913E200FC000000030B4D440210801103000000010000000910804D030DE7CA080E5FD909000000040569AC411340D4F60115234513F8590400000002033F67C70000000913BC30FC000000030BF3E58200000009000000090000000900000000000000090E60150900000009000000040000000113E20104022A45870000000913E200FC000000030B4D440210801103000000010000000910804D030DE7CA080E5FD909000000040569AC411340D4F6033F67C5000000090000000900000000000000090000000900000001000000020000000012EA94F600000000022A458513E1C50400000002022A45870000000913E200FC000000030B4D44020000000910804D030DE7CA080E5FD9090000000400000009000000090000000113E20104022A45870000000913E200FC000000030B4D44020000000910804D030DE7CA080E5FD909000000040000000900000009000000010000000200000004"
theorem small_4895771_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4895771_left_root small_4895771_left_fuel small_4895771_left_count small_4895771_left_encoded = true := by
  decide +kernel
theorem small_4895771_left_covered : CoveredBy scale carrier boxes small_4895771_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4895771_left_root small_4895771_left_fuel small_4895771_left_count small_4895771_left_encoded small_4895771_left_checked

theorem cover_4895771 : CoveredBy scale carrier boxes root_4895771 := by
  apply coveredBy_split_literal root_4895771 small_4895771_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1834.root coord1 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_4895771_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1834.covered
#print axioms cover_4895771

def root_4895766 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4895766_right_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4895766_right_fuel : Nat := 1
def small_4895766_right_count : Nat := 1
def small_4895766_right_encoded : String := "00000004"
theorem small_4895766_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4895766_right_root small_4895766_right_fuel small_4895766_right_count small_4895766_right_encoded = true := by
  decide +kernel
theorem small_4895766_right_covered : CoveredBy scale carrier boxes small_4895766_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4895766_right_root small_4895766_right_fuel small_4895766_right_count small_4895766_right_encoded small_4895766_right_checked

theorem cover_4895766 : CoveredBy scale carrier boxes root_4895766 := by
  apply coveredBy_split_literal root_4895766 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0346.root_4895771 small_4895766_right_root coord4 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0346.cover_4895771
  · exact small_4895766_right_covered
#print axioms cover_4895766

def root_4895238 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4895238_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4895238_left_fuel : Nat := 27
def small_4895238_left_count : Nat := 255
def small_4895238_left_encoded : String := "0F34D108000000040C9A87020F87510300000001067ECE8112EA58F6022A458513E1C50400000002022A45870000000613E200FC000000030AD35789000000060000000913E20104022A45870000000613E200FC000000030AD3578900000006000000090000000200000000000000060F878D03067ECE8112EA58F6022A458513E1C50400000002022A458713E1C4FC0AD357890000000610D13D080DE7CA02000000060E6015030569AC411340D4F6011523450000000500000009000000000000000600000001000000040000000313E200FC000000030AD3578910D10108000000040000000610D13D080DE7CA020E5FD903000000010569AC411340D4F60115234513F8590400000002033F67C70000000613BC30FC000000030BE879C9000000060000000913F89504033F67C70000000613BC30FC000000030BE879C900000006000000090000000200000000000000060E6015030569AC411340D4F60115234513F8590400000002033F67C713BBF4FC0BE879C9000000051011AD080DAED8830000000500000009000000040000000313BC30FC000000030BE879C9000000081011AD080DAED8830E96250200000001000000080E96610204DF1B211365B4F6008A922500000005000000080000000000000006000000010000000413F89504033F67C713BBF4FC000000080000000313BC30FC000000030BE879C9000000081011AD0800000008000000040000000200000000134110F6000000000115234513F8590400000002033F67C70000000613BC30FC000000030BE879C9000000061011AD080DAED88300000006000000060000000413F89504033F67C70000000613BC30FC000000030BE879C9000000061011AD080DAED883000000060E96610200000006000000010000000400000002000000010000000413E20104022A458713E1C4FC0AD357890000000610D13D080DE7CA02000000060E6015030569AC41000000080000000600000001000000040000000313E200FC000000030AD3578910D10108000000040000000710D13D080DE7CA020E5FD903000000010569AC411340D4F6033F67C513BBF50400000002033F67C700000006000000070000000700000000000000090E6015030569AC411340D4F60000000800000000134110F600000000033F67C513BBF50400000002033F67C70000000600000008000000080000000100000004000000020000000012EA94F600000000022A458513E1C50400000002022A45870000000613E200FC000000030AD357890000000610D13D080DE7CA02000000060E60150300000006000000010000000413E20104022A45870000000613E200FC000000030AD357890000000610D13D080DE7CA02000000060E6015030000000A00000001000000040000000200000001"
theorem small_4895238_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4895238_left_root small_4895238_left_fuel small_4895238_left_count small_4895238_left_encoded = true := by
  decide +kernel
theorem small_4895238_left_covered : CoveredBy scale carrier boxes small_4895238_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4895238_left_root small_4895238_left_fuel small_4895238_left_count small_4895238_left_encoded small_4895238_left_checked

theorem cover_4895238 : CoveredBy scale carrier boxes root_4895238 := by
  apply coveredBy_split_literal root_4895238 small_4895238_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0346.root_4895766 coord4 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_4895238_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0346.cover_4895766
#print axioms cover_4895238

def root_4895233 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4895233_right_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16378880), (-15122432)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4895233_right_fuel : Nat := 1
def small_4895233_right_count : Nat := 1
def small_4895233_right_encoded : String := "00000003"
theorem small_4895233_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4895233_right_root small_4895233_right_fuel small_4895233_right_count small_4895233_right_encoded = true := by
  decide +kernel
theorem small_4895233_right_covered : CoveredBy scale carrier boxes small_4895233_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4895233_right_root small_4895233_right_fuel small_4895233_right_count small_4895233_right_encoded small_4895233_right_checked

theorem cover_4895233 : CoveredBy scale carrier boxes root_4895233 := by
  apply coveredBy_split_literal root_4895233 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0346.root_4895238 small_4895233_right_root coord3 false (-16378880)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0346.cover_4895238
  · exact small_4895233_right_covered
#print axioms cover_4895233

def root_4902037 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15867392)⟩, ⟨(3632448), (5448672)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16678144), (16777216)⟩, ⟨(0), (1816224)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (5448672)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4902037_right_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15867392)⟩, ⟨(3632448), (5448672)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16678144), (16777216)⟩, ⟨(0), (1816224)⟩⟩, ⟨⟨(-15867392), (-15122432)⟩, ⟨(3632448), (5448672)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4902037_right_fuel : Nat := 1
def small_4902037_right_count : Nat := 1
def small_4902037_right_encoded : String := "00000003"
theorem small_4902037_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4902037_right_root small_4902037_right_fuel small_4902037_right_count small_4902037_right_encoded = true := by
  decide +kernel
theorem small_4902037_right_covered : CoveredBy scale carrier boxes small_4902037_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4902037_right_root small_4902037_right_fuel small_4902037_right_count small_4902037_right_encoded small_4902037_right_checked

theorem cover_4902037 : CoveredBy scale carrier boxes root_4902037 := by
  apply coveredBy_split_literal root_4902037 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1836.root small_4902037_right_root coord3 false (-15867392)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1836.covered
  · exact small_4902037_right_covered
#print axioms cover_4902037

def root_4902036 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15867392)⟩, ⟨(3632448), (5448672)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16678144), (16777216)⟩, ⟨(0), (1816224)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4902036_right_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15867392)⟩, ⟨(3632448), (5448672)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16678144), (16777216)⟩, ⟨(0), (1816224)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(5448672), (7264896)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4902036_right_fuel : Nat := 19
def small_4902036_right_count : Nat := 239
def small_4902036_right_encoded : String := "12EA94FC000000030DE7CA020E5FD903000000010DE7CA080E5FD909000000040569AC411340D4F60115234513F85904000000020793F0C7128220FC0D4128820EFA1103000000010D4128880EFA110900000004000000080EFA4D0900000007000000040EFA4D030D4128880EFA110900000004000000060EFA4D0904DF1B21000000071365F0F6000000000000000500000004000000010000000312825CFC000000030D412882000000070000000513F895040793F0C7128220FC0D412882000000070EFA4D030D4128880EFA11090000000400000005000000050000000100000003000000050000000200000000134110F6000000000115234513F85904000000020793F0C7128220FC0D4128820EFA11030000000100000005000000050000000300000005000000050E6015090569AC4100000007134110F6000000000115234513F85904000000020793F0C7128220FC0DAED889000000070E9661080D412882000000070000000500000004000000030000000500000005000000040E6015030DE7CA080E5FD909000000040569AC411340D4F60115234513F85904000000020793F0C7128220FC0DAED8830E96250200000001000000060E9661020D412888000000060EFA4D0904DF1B21000000061365F0F600000000008A922500000009000000050000000400000001000000030000000913F895040793F0C7128220FC0DAED8830E96250200000001000000060E9661020D41288800000006000000050000000100000003000000050000000200000000134110F6000000000115234513F85904000000020793F0C7128220FC0DAED8830E962502000000010D41288800000009000000050E9661020D4128880EFA1109000000040000000500000005000000010000000300000005000000050E6015090569AC411340D4F60115234513F85904000000020793F0C7128220FC0DAED8830E962502000000010DAED8890E96250800000004000000070E96610800000009000000040E9661020DAED889000000070E96610804DF1B21000000071365F0F60000000000000007000000040000000100000003000000070000000700000000134110F6000000000115234513F85904000000020793F0C7128220FC0DAED8830E962502000000010DAED8890E9625080000000405F43D610000000700000005000000050E9661020DAED8890E962508000000040000000500000005000000010000000312825CFC000000030000000513F895040793F0C7128220FC0DAED8830E9625020000000100000005000000050000000300000005000000020000000400000001"
theorem small_4902036_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4902036_right_root small_4902036_right_fuel small_4902036_right_count small_4902036_right_encoded = true := by
  decide +kernel
theorem small_4902036_right_covered : CoveredBy scale carrier boxes small_4902036_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4902036_right_root small_4902036_right_fuel small_4902036_right_count small_4902036_right_encoded small_4902036_right_checked

theorem cover_4902036 : CoveredBy scale carrier boxes root_4902036 := by
  apply coveredBy_split_literal root_4902036 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0346.root_4902037 small_4902036_right_root coord3 true (5448672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0346.cover_4902037
  · exact small_4902036_right_covered
#print axioms cover_4902036

def root_4902030 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15867392)⟩, ⟨(3632448), (5448672)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (1816224)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4902030_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15867392)⟩, ⟨(3632448), (5448672)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16378880), (16678144)⟩, ⟨(0), (1816224)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4902030_left_fuel : Nat := 1
def small_4902030_left_count : Nat := 1
def small_4902030_left_encoded : String := "00000002"
theorem small_4902030_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4902030_left_root small_4902030_left_fuel small_4902030_left_count small_4902030_left_encoded = true := by
  decide +kernel
theorem small_4902030_left_covered : CoveredBy scale carrier boxes small_4902030_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4902030_left_root small_4902030_left_fuel small_4902030_left_count small_4902030_left_encoded small_4902030_left_checked

theorem cover_4902030 : CoveredBy scale carrier boxes root_4902030 := by
  apply coveredBy_split_literal root_4902030 small_4902030_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0346.root_4902036 coord2 false (16678144)
  · decide +kernel
  · decide +kernel
  · exact small_4902030_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0346.cover_4902036
#print axioms cover_4902030

def root_4902029 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15867392)⟩, ⟨(3632448), (5448672)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4902029_right_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15867392)⟩, ⟨(3632448), (5448672)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(1816224), (3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4902029_right_fuel : Nat := 28
def small_4902029_right_count : Nat := 319
def small_4902029_right_encoded : String := "13E20104067ECE8712EA58FC0DE7CA020E5FD903000000010DE7CA080E5FD909000000040569AC411340D4F6033F67C513BBF504000000020569AC471340D4FC0D4128820EFA1103000000010D4128880EFA11090000000404DF1B211365B4F602B4D6A513D0D1040000000204DF1B271365B4FC0CEDD7C20F422D0300000001000000090F4269030CEDD7C8000000060F426909000000070000000400000001000000030000000713D10D0404DF1B270000000A0000000500000002000000001365F0F60000000002B4D6A513D0D1040000000204DF1B270000000A00000005000000050EFA4D0904DF1B21000000071365F0F60000000002B4D6A513D0D104000000020000000700000005000000040EFA4D030D4128880EFA11090000000404DF1B211365B4F602B4D6A513D0D1040000000204DF1B270000000A000000060000000A000000000000000A0EFA4D0904DF1B211365B4F602B4D6A513D0D1040000000204DF1B271365B4FC0D947942000000070000000A000000030000000700000007000000001365F0F60000000002B4D6A513D0D1040000000204DF1B270000000A000000050000000A000000040000000100000003134110FC000000030D412882000000070EFA4D030D4128880EFA11090000000400000005000000050000000113BC31040569AC471340D4FC0D4128820EFA1103000000010D4128880EFA11090000000400000005000000070EFA4D030000000A0000000100000003000000050000000200000000134110F600000000033F67C513BBF504000000020569AC471340D4FC0D4128820EFA1103000000010D4128880000000A000000050EFA4D030000000A000000010000000300000005000000050E6015090569AC411340D4F6033F67C513BBF504000000020569AC471340D4FC0000000700000003000000070000000700000000134110F600000000033F67C513BBF504000000020569AC471340D4FC0DAED8890E96250800000004000000070E9661080D412882000000070EFA4D0305F43D611317BCF602B4D6A513D0D10400000002000000070000000500000000000000050000000100000004000000030000000700000007000000040E6015030DE7CA080E5FD909000000040569AC411340D4F6033F67C513BBF504000000020569AC470000000A134110FC000000030DAED8830E962502000000010000000A0E9661020D4128880000000A0EFA4D0904DF1B21000000070000000500000004000000010000000A00000000134110F6000000000000000A0E6015090569AC411340D4F6033F67C513BBF504000000020569AC471340D4FC0DAED8830E962502000000010DAED889000000080E96610800000008000000040E9661020DAED889000000070E96610804DF1B21000000070000000A000000040000000100000003134110FC000000030000000713BC31040569AC471340D4FC0DAED883000000080E966102000000070000000100000003000000070000000200000000134110F600000000033F67C513BBF504000000020569AC470000000A134110FC000000030DAED8830E9625020000000100000005000000050000000A00000004000000010000000312EA94FC000000030DE7CA020E5FD903000000010DE7CA080E5FD9090000000400000005000000070E6015030DE7CA080E5FD909000000040569AC411340D4F6033F67C513BBF50400000002000000050000000500000000000000050E60150900000007000000040000000100000002"
theorem small_4902029_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4902029_right_root small_4902029_right_fuel small_4902029_right_count small_4902029_right_encoded = true := by
  decide +kernel
theorem small_4902029_right_covered : CoveredBy scale carrier boxes small_4902029_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4902029_right_root small_4902029_right_fuel small_4902029_right_count small_4902029_right_encoded small_4902029_right_checked

theorem cover_4902029 : CoveredBy scale carrier boxes root_4902029 := by
  apply coveredBy_split_literal root_4902029 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0346.root_4902030 small_4902029_right_root coord2 true (1816224)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0346.cover_4902030
  · exact small_4902029_right_covered
#print axioms cover_4902029

def root_4902024 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (5448672)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4902024_right_root : ZRayBox := fun j => (#[⟨⟨(-15867392), (-15122432)⟩, ⟨(3632448), (5448672)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4902024_right_fuel : Nat := 1
def small_4902024_right_count : Nat := 1
def small_4902024_right_encoded : String := "00000000"
theorem small_4902024_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4902024_right_root small_4902024_right_fuel small_4902024_right_count small_4902024_right_encoded = true := by
  decide +kernel
theorem small_4902024_right_covered : CoveredBy scale carrier boxes small_4902024_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4902024_right_root small_4902024_right_fuel small_4902024_right_count small_4902024_right_encoded small_4902024_right_checked

theorem cover_4902024 : CoveredBy scale carrier boxes root_4902024 := by
  apply coveredBy_split_literal root_4902024 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0346.root_4902029 small_4902024_right_root coord0 false (-15867392)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0346.cover_4902029
  · exact small_4902024_right_covered
#print axioms cover_4902024

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0346
