import TaoBundleAssembly0551
import TaoBundleChunkBatch0750
import TaoBundleChunkBatch0751
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0552
def root_7991375 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7991375_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7991375_left_fuel : Nat := 20
def small_7991375_left_count : Nat := 281
def small_7991375_left_encoded : String := "1151E907000000030A0001081151E9090000000408A91301120701000000000008A912FB12073CFA00000002050000F8135D80F9000000010500010600000005135D81070500010800000005135D810904548A01000000051386AD000CFD9BFB0000000500000007000000000000000400000003135D44F905000106135D45070000000300000007135D810705000108135D45090000000404548A01000000051386AD000000000500000000135D810904548A0113867100000000000000000700000007000000040000000300000001120700FA000000070000000212073D0008A912FB12073CFA00000002050000F8135D80F90000000105000106135D450700000003050001080000000500000007135D81070500010800000005135D81090CFD9C010F34D100000000000CFD9BFB00000005000000070F350D000CFD9BFB0000000500000007000000000000000400000003135D44F905000106135D45070000000300000007135D8107050001080000000A135D81090CFD9C010F34D100000000000000000700000007000000040000000300000001120700FA0000000700000002000000001152250908A91301120701000000000008A912FB12073CFA0000000208A913091207010800000004050000F8135D80F9000000010500010600000007135D810704548A011386710000000000000000070000000700000003135D44F9000000070000000112073D08050000F8135D80F9000000010500010600000007135D810704548A0113867100000000000CFD9BFB0F350CFA000000020CFD9C090F34D108000000040000000700000007000000071386AD000CFD9BFB0F350CFA000000020CFD9C090F34D108000000040000000700000007000000070000000000000003135D44F90500010600000007135D810704548A0113867100000000000000000700000007000000030000000100000004120700FA000000070000000212073D0008A912FB12073CFA0000000208A913091207010800000004050000F8135D80F9000000010500010600000007135D81070CFD9C010F34D10000000000000000070F350D000CFD9BFB0F350CFA0000000200000009000000070000000000000003135D44F90500010600000007135D81070CFD9C010F34D100000000000000000700000007000000030000000112073D08050000F8135D80F90000000105000106135D4507000000030CFD9C010F34D100000000000000000700000007135D81070CFD9C010F34D100000000000CFD9BFB0F350CFA000000020CFD9C090F34D108000000040000000700000007000000070F350D000CFD9BFB0F350CFA000000020CFD9C090F34D10800000004000000070F350D0800000007000000040F34D0FA00000007000000020000000000000003135D44F90500010600000007135D81070CFD9C010F34D10000000000000000070F350D000CFD9BFB0F350CFA000000020CFD9C090F34D1080000000400000007000000070000000700000000000000030000000100000004120700FA00000007000000020000000000000004"
theorem small_7991375_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7991375_left_root small_7991375_left_fuel small_7991375_left_count small_7991375_left_encoded = true := by
  decide +kernel
theorem small_7991375_left_covered : CoveredBy scale carrier boxes small_7991375_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7991375_left_root small_7991375_left_fuel small_7991375_left_count small_7991375_left_encoded small_7991375_left_checked

theorem cover_7991375 : CoveredBy scale carrier boxes root_7991375 := by
  apply coveredBy_split_literal root_7991375 small_7991375_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0551.root_7991985 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_7991375_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0551.cover_7991985
#print axioms cover_7991375

def root_7991369 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7991369_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7991369_left_fuel : Nat := 1
def small_7991369_left_count : Nat := 1
def small_7991369_left_encoded : String := "00000002"
theorem small_7991369_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7991369_left_root small_7991369_left_fuel small_7991369_left_count small_7991369_left_encoded = true := by
  decide +kernel
theorem small_7991369_left_covered : CoveredBy scale carrier boxes small_7991369_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7991369_left_root small_7991369_left_fuel small_7991369_left_count small_7991369_left_encoded small_7991369_left_checked

theorem cover_7991369 : CoveredBy scale carrier boxes root_7991369 := by
  apply coveredBy_split_literal root_7991369 small_7991369_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0552.root_7991375 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_7991369_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0552.cover_7991375
#print axioms cover_7991369

def root_7997022 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7997022 : CoveredBy scale carrier boxes root_7997022 := by
  apply coveredBy_split_literal root_7997022 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2997.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2998.root coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2997.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2998.covered
#print axioms cover_7997022

def root_7997016 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7997016_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7997016_left_fuel : Nat := 1
def small_7997016_left_count : Nat := 1
def small_7997016_left_encoded : String := "00000003"
theorem small_7997016_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7997016_left_root small_7997016_left_fuel small_7997016_left_count small_7997016_left_encoded = true := by
  decide +kernel
theorem small_7997016_left_covered : CoveredBy scale carrier boxes small_7997016_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7997016_left_root small_7997016_left_fuel small_7997016_left_count small_7997016_left_encoded small_7997016_left_checked

theorem cover_7997016 : CoveredBy scale carrier boxes root_7997016 := by
  apply coveredBy_split_literal root_7997016 small_7997016_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0552.root_7997022 coord3 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_7997016_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0552.cover_7997022
#print axioms cover_7997016

def root_8006518 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8006518 : CoveredBy scale carrier boxes root_8006518 := by
  apply coveredBy_split_literal root_8006518 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3001.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3002.root coord4 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3001.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3002.covered
#print axioms cover_8006518

def root_8006513 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8006513_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(13027072), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8006513_right_fuel : Nat := 1
def small_8006513_right_count : Nat := 1
def small_8006513_right_encoded : String := "00000003"
theorem small_8006513_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8006513_right_root small_8006513_right_fuel small_8006513_right_count small_8006513_right_encoded = true := by
  decide +kernel
theorem small_8006513_right_covered : CoveredBy scale carrier boxes small_8006513_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8006513_right_root small_8006513_right_fuel small_8006513_right_count small_8006513_right_encoded small_8006513_right_checked

theorem cover_8006513 : CoveredBy scale carrier boxes root_8006513 := by
  apply coveredBy_split_literal root_8006513 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0552.root_8006518 small_8006513_right_root coord3 true (13027072)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0552.cover_8006518
  · exact small_8006513_right_covered
#print axioms cover_8006513

def root_8004009 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8004009 : CoveredBy scale carrier boxes root_8004009 := by
  apply coveredBy_split_literal root_8004009 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3000.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0552.root_8006513 coord3 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3000.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0552.cover_8006513
#print axioms cover_8004009

def root_8004004 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8004004_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8004004_right_fuel : Nat := 1
def small_8004004_right_count : Nat := 1
def small_8004004_right_encoded : String := "00000004"
theorem small_8004004_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8004004_right_root small_8004004_right_fuel small_8004004_right_count small_8004004_right_encoded = true := by
  decide +kernel
theorem small_8004004_right_covered : CoveredBy scale carrier boxes small_8004004_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8004004_right_root small_8004004_right_fuel small_8004004_right_count small_8004004_right_encoded small_8004004_right_checked

theorem cover_8004004 : CoveredBy scale carrier boxes root_8004004 := by
  apply coveredBy_split_literal root_8004004 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0552.root_8004009 small_8004004_right_root coord4 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0552.cover_8004009
  · exact small_8004004_right_covered
#print axioms cover_8004004

def root_8003454 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8003454_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8003454_left_fuel : Nat := 33
def small_8003454_left_count : Nat := 257
def small_8003454_left_encoded : String := "0F34D108000000040C9A87060F87510700000003078000F8128A7CF900000001078000FA128A7CFB00000002022A458113E1C500000000000AD3578910D10108000000040B4D440610801107000000030000000710804D0708C000F800000009000000050000000310D13D080B4D4406108011070000000308C000F811FC24F90000000108C000FA0000000711FBE8FB000000090000000211FBE8F9000000070000000110804D0708C000F811FC24F90000000108C000FA11FC24FB000000020115234113F85900000000000BE879C9101171080000000400000007000000070000000711FBE8FB000000090000000211FBE8F908C000FA11FC24FB00000002000000070000000500000001000000030000000413E201000AD3578910D10108000000040000000910D13D080B4D44060000000710804D0708C000F811FC24F9000000010000000911FBE8F908C000FA000000070000000900000001000000030000000400000000128A40FB022A458113E1C500000000000AD3578910D10108000000040000000510D13D080B4D44060000000900000005000000040000000900000002128A40F9078000FA128A7CFB00000002022A458113E1C500000000000AD3578910D10108000000040000000510D13D080B4D440600000007000000050000000413E201000AD3578910D101080000000400000007000000070000000000000005000000010F878D07078000F8128A7CF900000001078000FA128A7CFB00000002022A458113E1C500000000000AD3578910D10108000000040000000510D13D080DE7CA060E5FD9070000000308C000F811FC24F90000000108C000FA11FC24FB000000020115234113F85900000000000BE879C91011710800000004000000051011AD080D4128860EFA110700000003096000F811AABCF900000001096000FA11AABCFB00000002000000070000000911AA80F9096000FA0000000700000005000000010EFA4D07096000F811AABCF900000001096000FA11AABCFB00000002008A922113FDF900000000000C730AE9000000080FA745080D947946000000080000000500000004000000090000000500000005000000030000000413F895000BE879C9000000091011AD080D412886000000090EFA4D07000000090000000300000004000000000000000500000005000000050000000413E201000AD3578910D10108000000040000000510D13D080DE7CA060E5FD9070000000308C000F811FC24F9000000010000000911FBE8F908C000FA11FC24FB00000002033F67C113BBF500000000000BE879C900000005000000070000000700000005000000010E60150708C000F811FC24F90000000108C000FA11FC24FB00000002000000090000000500000005000000030000000400000000000000050000000500000003"
theorem small_8003454_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8003454_left_root small_8003454_left_fuel small_8003454_left_count small_8003454_left_encoded = true := by
  decide +kernel
theorem small_8003454_left_covered : CoveredBy scale carrier boxes small_8003454_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8003454_left_root small_8003454_left_fuel small_8003454_left_count small_8003454_left_encoded small_8003454_left_checked

theorem cover_8003454 : CoveredBy scale carrier boxes root_8003454 := by
  apply coveredBy_split_literal root_8003454 small_8003454_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0552.root_8004004 coord4 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_8003454_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0552.cover_8004004
#print axioms cover_8003454

def root_8003449 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8003449_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8003449_right_fuel : Nat := 1
def small_8003449_right_count : Nat := 1
def small_8003449_right_encoded : String := "00000003"
theorem small_8003449_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8003449_right_root small_8003449_right_fuel small_8003449_right_count small_8003449_right_encoded = true := by
  decide +kernel
theorem small_8003449_right_covered : CoveredBy scale carrier boxes small_8003449_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8003449_right_root small_8003449_right_fuel small_8003449_right_count small_8003449_right_encoded small_8003449_right_checked

theorem cover_8003449 : CoveredBy scale carrier boxes root_8003449 := by
  apply coveredBy_split_literal root_8003449 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0552.root_8003454 small_8003449_right_root coord3 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0552.cover_8003454
  · exact small_8003449_right_covered
#print axioms cover_8003449

def root_8002899 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8002899_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8002899_left_fuel : Nat := 35
def small_8002899_left_count : Nat := 257
def small_8002899_left_encoded : String := "0F34D106000000030CFD9C090F34D10800000004000000050F350D080C9A87080F87510900000004078000F8128A7CF900000001078000FA128A7CFB00000002022A458113E1C500000000000AD3578710D10106000000030B4D440810801109000000040000000810804D0908C000F811FC24F90000000108C000FA0000000A00000005000000050000000410D13D060B4D4408108011090000000408C000F80000000811FBE8F908C000FA11FC24FB000000020000000A11FBE8FB00000008000000020000000110804D0908C000F811FC24F90000000108C000FA11FC24FB000000020115234113F85900000000000BE879C7101171060000000300000008000000080000000811FBE8FB000000080000000211FBE8F908C000FA11FC24FB000000020000000A0000000500000001000000040000000313E201000AD3578710D10106000000030000000A10D13D060B4D44080000000810804D0908C000F8000000080000000A000000040000000300000000128A40FB022A458113E1C500000000000AD3578710D10106000000030000000510D13D060B4D440800000008000000050000000313E201000AD3578710D101060000000300000008000000080000000000000002128A40F9078000FA128A7CFB00000002022A458113E1C500000000000AD3578710D10106000000030000000510D13D060B4D44080000000A00000005000000030000000A00000005000000010F878D09078000F8128A7CF900000001078000FA128A7CFB00000002022A458113E1C500000000000AD3578710D10106000000030000000510D13D060DE7CA080E5FD9090000000408C000F811FC24F90000000108C000FA11FC24FB000000020115234113F85900000000000BE879C71011710600000003000000051011AD060D4128880EFA110900000004096000F811AABCF9000000010000000811AA80F9096000FA0000000A00000005000000010EFA4D09096000F811AABCF900000001096000FA11AABCFB00000002008A922113FDF900000000000C730AE7000000070FA745060D9479480000000700000005000000030000000A0000000500000005000000040000000313F895000BE879C70000000A1011AD060D4128880000000A0EFA4D090000000A0000000400000003000000000000000500000005000000050000000313E201000AD3578710D10106000000030000000510D13D060DE7CA080E5FD9090000000408C000F811FC24F90000000108C000FA11FC24FB000000020000000A11FBE8FB033F67C113BBF500000000000BE879C7000000050000000800000008000000020000000A0E60150908C000F811FC24F90000000108C000FA11FC24FB000000020000000A000000050000000500000004000000030000000000000005000000050000000400000004"
theorem small_8002899_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8002899_left_root small_8002899_left_fuel small_8002899_left_count small_8002899_left_encoded = true := by
  decide +kernel
theorem small_8002899_left_covered : CoveredBy scale carrier boxes small_8002899_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8002899_left_root small_8002899_left_fuel small_8002899_left_count small_8002899_left_encoded small_8002899_left_checked

theorem cover_8002899 : CoveredBy scale carrier boxes root_8002899 := by
  apply coveredBy_split_literal root_8002899 small_8002899_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0552.root_8003449 coord3 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_8002899_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0552.cover_8003449
#print axioms cover_8002899

def root_8002893 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8002893_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8002893_left_fuel : Nat := 1
def small_8002893_left_count : Nat := 1
def small_8002893_left_encoded : String := "00000000"
theorem small_8002893_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8002893_left_root small_8002893_left_fuel small_8002893_left_count small_8002893_left_encoded = true := by
  decide +kernel
theorem small_8002893_left_covered : CoveredBy scale carrier boxes small_8002893_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8002893_left_root small_8002893_left_fuel small_8002893_left_count small_8002893_left_encoded small_8002893_left_checked

theorem cover_8002893 : CoveredBy scale carrier boxes root_8002893 := by
  apply coveredBy_split_literal root_8002893 small_8002893_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0552.root_8002899 coord0 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_8002893_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0552.cover_8002899
#print axioms cover_8002893

def root_8002892 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8002892 : CoveredBy scale carrier boxes root_8002892 := by
  apply coveredBy_split_literal root_8002892 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0552.root_8002893 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3003.root coord0 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0552.cover_8002893
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3003.covered
#print axioms cover_8002892

def root_8002886 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8002886_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8002886_left_fuel : Nat := 1
def small_8002886_left_count : Nat := 1
def small_8002886_left_encoded : String := "00000002"
theorem small_8002886_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8002886_left_root small_8002886_left_fuel small_8002886_left_count small_8002886_left_encoded = true := by
  decide +kernel
theorem small_8002886_left_covered : CoveredBy scale carrier boxes small_8002886_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8002886_left_root small_8002886_left_fuel small_8002886_left_count small_8002886_left_encoded small_8002886_left_checked

theorem cover_8002886 : CoveredBy scale carrier boxes root_8002886 := by
  apply coveredBy_split_literal root_8002886 small_8002886_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0552.root_8002892 coord2 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_8002886_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0552.cover_8002892
#print axioms cover_8002886

def root_8002885 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8002885_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8002885_right_fuel : Nat := 23
def small_8002885_right_count : Nat := 239
def small_8002885_right_encoded : String := "135D44FB04548A0113867100000000000CFD9C070F34D10600000003000000050F350D060CFD9C090F34D10800000004000000050F350D080C9A87060F875107000000030C9A87080F87510900000004078000F8128A7CF900000001028000FA13D7ECFB00000002022A458113E1C500000000000B4D440610801107000000030B4D44080000000610804D090000000800000004000000080000000813D7B0FB022A458113E1C50000000000000000080000000800000002128A40F9028000FA13D7ECFB00000002022A458113E1C500000000000B4D440610801107000000030B4D44080000000610804D09000000060000000410804D070B4D4408108011090000000400000006000000050000000313E201000B4D440610801107000000030B4D440810801109000000040000000810804D09064000F800000009000000050000000410804D070B4D44080000000800000005000000030000000000000005000000010F878D09078000F8128A7CF900000001028000FA13D7ECFB00000002022A458113E1C500000000000B4D440610801107000000030DE7CA080E5FD90900000004000000090000000910804D070DE7CA080E5FD9090000000408C000F800000009000000050000000500000003000000090000000500000005000000040F878D070C9A87080F87510900000004078000F8128A7CF900000001028000FA13D7ECFB00000002022A458113E1C500000000000DE7CA060E5FD907000000030000000800000008000000080000000500000005000000050000000300000004000000031386AD000CFD9C070F34D106000000030CFD9C090F34D10800000004000000050F350D080C9A87080F87510900000004078000F8128A7CF900000001028000FA13D7ECFB00000002067ECE8112EA5900000000000000000500000008000000050000000500000005000000040F350D060CFD9C090F34D10800000004000000090F350D080C9A87060F875107000000030C9A87080F87510900000004078000F800000008128A40F9028000FA13D7ECFB00000002067ECE8112EA5900000000000B4D440610801107000000030B4D4408000000080000000910804D070B4D44080000000800000005000000030000000900000009000000010F878D0900000009000000040F878D070C9A87080F87510900000004078000F800000008128A40F9028000FA13D7ECFB00000002067ECE8112EA5900000000000000000512EA9500000000090000000000000005000000010F878D09078000F80000000900000005000000040000000300000004000000030000000000000002"
theorem small_8002885_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8002885_right_root small_8002885_right_fuel small_8002885_right_count small_8002885_right_encoded = true := by
  decide +kernel
theorem small_8002885_right_covered : CoveredBy scale carrier boxes small_8002885_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8002885_right_root small_8002885_right_fuel small_8002885_right_count small_8002885_right_encoded small_8002885_right_checked

theorem cover_8002885 : CoveredBy scale carrier boxes root_8002885 := by
  apply coveredBy_split_literal root_8002885 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0552.root_8002886 small_8002885_right_root coord2 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0552.cover_8002886
  · exact small_8002885_right_covered
#print axioms cover_8002885

def root_8002879 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8002879_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8002879_left_fuel : Nat := 1
def small_8002879_left_count : Nat := 1
def small_8002879_left_encoded : String := "00000001"
theorem small_8002879_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8002879_left_root small_8002879_left_fuel small_8002879_left_count small_8002879_left_encoded = true := by
  decide +kernel
theorem small_8002879_left_covered : CoveredBy scale carrier boxes small_8002879_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8002879_left_root small_8002879_left_fuel small_8002879_left_count small_8002879_left_encoded small_8002879_left_checked

theorem cover_8002879 : CoveredBy scale carrier boxes root_8002879 := by
  apply coveredBy_split_literal root_8002879 small_8002879_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0552.root_8002885 coord1 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_8002879_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0552.cover_8002885
#print axioms cover_8002879

def root_8002878 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8002878_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8002878_right_fuel : Nat := 27
def small_8002878_right_count : Nat := 301
def small_8002878_right_encoded : String := "135D44F9050000FA135D80FB0000000204548A0113867100000000000CFD9C070F34D10600000003000000050F350D060CFD9C090F34D10800000004000000050F350D080C9A87060F875107000000030C9A87080F87510900000004028000F813D7ECF900000001078000FA128A7CFB00000002022A458113E1C500000000000B4D44060000000710804D070B4D4408108011090000000400000007000000070000000300000007128A40FB022A458113E1C500000000000B4D440610801107000000030B4D44080000000610804D09000000060000000410804D070B4D4408108011090000000400000006000000050000000313E201000B4D440610801107000000030B4D44081080110900000004000000070000000710804D070B4D4408108011090000000403C000F813A54CF900000001064000FA0000000A00000005000000050000000500000003000000000000000213D7B0F9078000FA128A7CFB00000002022A458113E1C50000000000000000070000000700000005000000010F878D09028000F813D7ECF900000001078000FA128A7CFB00000002022A458113E1C500000000000B4D44060000000710804D070DE7CA080E5FD90900000004000000070000000500000003000000070000000500000005000000040F878D070C9A87080F87510900000004028000F813D7ECF900000001078000FA128A7CFB00000002022A458113E1C500000000000DE7CA060E5FD907000000030B4D44080000000A10804D0903C000F813A54CF90000000108C000FA0000000A0000000500000005000000040000000A0000000A0000000500000005000000050000000300000004000000031386AD000CFD9C070F34D106000000030CFD9C090000000A0F350D080000000A000000040F350D060CFD9C090F34D108000000040C9A87060F87510700000003028000F813D7ECF900000001078000FA128A7CFB00000002067ECE8112EA59000000000000000005000000070000000500000005000000050F350D080C9A87060F875107000000030C9A87080F87510900000004028000F813D7ECF900000001078000FA00000007128A40FB067ECE8112EA5900000000000B4D4406000000070000000A0000000A0000000213D7B0F90000000A000000010F878D09028000F813D7ECF900000001078000FA00000007128A40FB067ECE8112EA5900000000000000000512EA95000000000A000000000000000213D7B0F9078000FA000000070000000500000001000000040F878D070C9A87080000000A0F878D09028000F813D7ECF900000001078000FA0000000A00000005000000050000000400000003000000040000000300000000135D44FB04548A011386710000000000000000051386AD000CFD9C070F34D10600000003000000050F350D060CFD9C090F34D10800000004000000050F350D080C9A87060F875107000000030C9A87080F87510900000004028000F813D7ECF900000001028000FA13D7ECFB00000002067ECE8112EA5900000000000B4D440610801107000000030B4D4408108011090000000403C000F80000000800000005000000050000000512EA95000B4D4406000000090000000500000000000000050000000500000005000000050000000400000003000000000000000200000001"
theorem small_8002878_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8002878_right_root small_8002878_right_fuel small_8002878_right_count small_8002878_right_encoded = true := by
  decide +kernel
theorem small_8002878_right_covered : CoveredBy scale carrier boxes small_8002878_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8002878_right_root small_8002878_right_fuel small_8002878_right_count small_8002878_right_encoded small_8002878_right_checked

theorem cover_8002878 : CoveredBy scale carrier boxes root_8002878 := by
  apply coveredBy_split_literal root_8002878 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0552.root_8002879 small_8002878_right_root coord1 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0552.cover_8002879
  · exact small_8002878_right_covered
#print axioms cover_8002878

def root_8002873 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8002873_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8002873_right_fuel : Nat := 1
def small_8002873_right_count : Nat := 1
def small_8002873_right_encoded : String := "00000004"
theorem small_8002873_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8002873_right_root small_8002873_right_fuel small_8002873_right_count small_8002873_right_encoded = true := by
  decide +kernel
theorem small_8002873_right_covered : CoveredBy scale carrier boxes small_8002873_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8002873_right_root small_8002873_right_fuel small_8002873_right_count small_8002873_right_encoded small_8002873_right_checked

theorem cover_8002873 : CoveredBy scale carrier boxes root_8002873 := by
  apply coveredBy_split_literal root_8002873 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0552.root_8002878 small_8002873_right_root coord4 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0552.cover_8002878
  · exact small_8002873_right_covered
#print axioms cover_8002873

def root_8002737 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8002737_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8002737_left_fuel : Nat := 21
def small_8002737_left_count : Nat := 63
def small_8002737_left_encoded : String := "1207010800000004050000F8135D80F900000001050000FA135D80FB0000000204548A0113867100000000000CFD9C070F34D10600000003000000050F350D0604548A091386710800000004000000051386AD080C9A87060F87510700000003078000F8128A7CF900000001078000FA128A7CFB00000002022A458113E1C50000000000067ECE8900000009000000090000000900000005000000050000000500000004000000031386AD000CFD9C070F34D10600000003000000050F350D0604548A091386710800000004000000091386AD080C9A8706000000090F878D0700000009000000030000000400000003000000000000000500000005"
theorem small_8002737_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8002737_left_root small_8002737_left_fuel small_8002737_left_count small_8002737_left_encoded = true := by
  decide +kernel
theorem small_8002737_left_covered : CoveredBy scale carrier boxes small_8002737_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8002737_left_root small_8002737_left_fuel small_8002737_left_count small_8002737_left_encoded small_8002737_left_checked

theorem cover_8002737 : CoveredBy scale carrier boxes root_8002737 := by
  apply coveredBy_split_literal root_8002737 small_8002737_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0552.root_8002873 coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_8002737_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0552.cover_8002873
#print axioms cover_8002737

def root_8002732 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8002732_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8002732_right_fuel : Nat := 1
def small_8002732_right_count : Nat := 1
def small_8002732_right_encoded : String := "00000003"
theorem small_8002732_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8002732_right_root small_8002732_right_fuel small_8002732_right_count small_8002732_right_encoded = true := by
  decide +kernel
theorem small_8002732_right_covered : CoveredBy scale carrier boxes small_8002732_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8002732_right_root small_8002732_right_fuel small_8002732_right_count small_8002732_right_encoded small_8002732_right_checked

theorem cover_8002732 : CoveredBy scale carrier boxes root_8002732 := by
  apply coveredBy_split_literal root_8002732 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0552.root_8002737 small_8002732_right_root coord3 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0552.cover_8002737
  · exact small_8002732_right_covered
#print axioms cover_8002732

def root_8002580 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8002580_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8002580_left_fuel : Nat := 23
def small_8002580_left_count : Nat := 71
def small_8002580_left_encoded : String := "120701060000000308A9130912070108000000040000000512073D08050000F8135D80F900000001050000FA135D80FB0000000204548A01138671000000000004548A071386710600000003000000051386AD060CFD9C090F34D10800000004000000050F350D080C9A87080F87510900000004078000F8128A7CF900000001078000FA128A7CFB00000002022A458113E1C50000000000067ECE870000000A0000000A0000000A00000005000000050000000500000004000000031386AD0004548A0713867106000000030CFD9C090000000A0F350D080000000A000000041386AD060CFD9C090000000A0F350D080C9A87080000000A0F878D090000000A00000004000000040000000300000000000000050000000500000004"
theorem small_8002580_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8002580_left_root small_8002580_left_fuel small_8002580_left_count small_8002580_left_encoded = true := by
  decide +kernel
theorem small_8002580_left_covered : CoveredBy scale carrier boxes small_8002580_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8002580_left_root small_8002580_left_fuel small_8002580_left_count small_8002580_left_encoded small_8002580_left_checked

theorem cover_8002580 : CoveredBy scale carrier boxes root_8002580 := by
  apply coveredBy_split_literal root_8002580 small_8002580_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0552.root_8002732 coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_8002580_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0552.cover_8002732
#print axioms cover_8002580

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0552
