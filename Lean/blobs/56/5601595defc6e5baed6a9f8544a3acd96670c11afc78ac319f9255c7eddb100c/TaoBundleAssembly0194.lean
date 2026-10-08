import TaoBundleAssembly0189
import TaoBundleAssembly0191
import TaoBundleAssembly0192
import TaoBundleAssembly0193
import TaoBundleChunkBatch0745
import TaoBundleChunkBatch0747
import TaoBundleChunkBatch0750
import TaoBundleChunkBatch0751
import TaoBundleChunkBatch0752
import TaoBundleChunkBatch0753
import TaoBundleChunkBatch0754
import TaoBundleChunkBatch0755
import TaoBundleChunkBatch0756
import TaoBundleChunkBatch0757
import TaoBundleChunkBatch0758
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194
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
  apply coveredBy_split_literal root_8002899 small_8002899_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0193.root_8003449 coord3 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_8002899_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0193.cover_8003449
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
  apply coveredBy_split_literal root_8002893 small_8002893_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.root_8002899 coord0 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_8002893_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.cover_8002899
#print axioms cover_8002893

def root_8002892 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8002892 : CoveredBy scale carrier boxes root_8002892 := by
  apply coveredBy_split_literal root_8002892 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.root_8002893 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3003.root coord0 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.cover_8002893
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
  apply coveredBy_split_literal root_8002886 small_8002886_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.root_8002892 coord2 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_8002886_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.cover_8002892
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
  apply coveredBy_split_literal root_8002885 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.root_8002886 small_8002885_right_root coord2 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.cover_8002886
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
  apply coveredBy_split_literal root_8002879 small_8002879_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.root_8002885 coord1 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_8002879_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.cover_8002885
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
  apply coveredBy_split_literal root_8002878 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.root_8002879 small_8002878_right_root coord1 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.cover_8002879
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
  apply coveredBy_split_literal root_8002873 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.root_8002878 small_8002873_right_root coord4 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.cover_8002878
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
  apply coveredBy_split_literal root_8002737 small_8002737_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.root_8002873 coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_8002737_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.cover_8002873
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
  apply coveredBy_split_literal root_8002732 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.root_8002737 small_8002732_right_root coord3 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.cover_8002737
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
  apply coveredBy_split_literal root_8002580 small_8002580_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.root_8002732 coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_8002580_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.cover_8002732
#print axioms cover_8002580

def root_8002574 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8002574_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8002574_left_fuel : Nat := 1
def small_8002574_left_count : Nat := 1
def small_8002574_left_encoded : String := "00000000"
theorem small_8002574_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8002574_left_root small_8002574_left_fuel small_8002574_left_count small_8002574_left_encoded = true := by
  decide +kernel
theorem small_8002574_left_covered : CoveredBy scale carrier boxes small_8002574_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8002574_left_root small_8002574_left_fuel small_8002574_left_count small_8002574_left_encoded small_8002574_left_checked

theorem cover_8002574 : CoveredBy scale carrier boxes root_8002574 := by
  apply coveredBy_split_literal root_8002574 small_8002574_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.root_8002580 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_8002574_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.cover_8002580
#print axioms cover_8002574

def root_8002573 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8002573_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8002573_right_fuel : Nat := 27
def small_8002573_right_count : Nat := 315
def small_8002573_right_encoded : String := "12073D0008A91307120701060000000308A913091207010800000004050000F8000000060000000512073D08050000F8135D80F900000001050000FA135D80FB000000020CFD9C010F34D1000000000004548A070000000A0000000A00000006135D44FB0CFD9C010F34D1000000000004548A07000000091386AD060CFD9C090000000900000009000000030000000900000002135D44F9050000FA0000000A0000000A000000010000000412073D0608A913091207010800000004050000F8135D80F900000001050000FA135D80FB000000020CFD9C010F34D100000000000CFD9C07000000090F350D0600000009000000030000000600000009135D44F9050000FA135D80FB000000020CFD9C010F34D100000000000CFD9C07000000090000000A0000000A000000090000000112073D08050000F8135D80F900000001050000FA135D80FB000000020CFD9C010F34D100000000000CFD9C070F34D106000000030CFD9C090000000A0F350D080C9A87080000000A0F878D090000000A00000004000000040F350D060CFD9C090F34D108000000040C9A8706000000090F878D0700000009000000030F350D080C9A87060F875107000000030C9A87080F87510900000004078000F8128A7CF900000001078000FA128A7CFB000000020AD3578110D10100000000000B4D440600000005000000080000000900000009128A40F9078000FA0000000A128A40FB0AD3578110D1010000000000000000090000000900000002000000010F878D09078000F800000009128A40F9078000FA128A7CFB00000002000000070000000900000001000000040F878D070C9A87080F87510900000004078000F8128A7CF900000001078000FA0000000A128A40FB00000008000000020000000A0F878D09078000F8128A7CF900000001000000090000000A000000040000000300000004000000030F350D000CFD9C070F34D106000000030000000A0F350D060CFD9C090F34D10800000004000000090F350D080C9A87000F87510100000000000000090F878D010C9A87060F875107000000030C9A87080000000A000000090000000A00000000000000040000000300000000135D44FB0CFD9C010F34D100000000000CFD9C070F34D106000000030CFD9C09000000090F350D080C9A87080F875109000000040000000900000009000000040F350D060CFD9C09000000090F350D080C9A8706000000090F878D07000000090000000300000004000000030F350D000CFD9C07000000090F350D0600000009000000030000000000000002135D44F9050000FA135D80FB000000020CFD9C010F34D100000000000CFD9C070F34D106000000030000000A0F350D060CFD9C090F34D108000000040C9A87060F875107000000030000000A0000000A0F350D080C9A87060F875107000000030C9A87080000000A0F878D090000000A000000040000000A00000004000000030F350D000CFD9C070000000A0000000A00000000135D44FB0CFD9C010F34D100000000000CFD9C070F34D10600000003000000050F350D060CFD9C090F34D10800000004000000050F350D080C9A87060F875107000000030C9A87080F87510900000004028000F80000000900000009000000090F878D070000000A0000000300000004000000030F350D000CFD9C07000000090F350D060CFD9C09000000090000000900000003000000000000000200000001000000040000000300000000"
theorem small_8002573_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8002573_right_root small_8002573_right_fuel small_8002573_right_count small_8002573_right_encoded = true := by
  decide +kernel
theorem small_8002573_right_covered : CoveredBy scale carrier boxes small_8002573_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8002573_right_root small_8002573_right_fuel small_8002573_right_count small_8002573_right_encoded small_8002573_right_checked

theorem cover_8002573 : CoveredBy scale carrier boxes root_8002573 := by
  apply coveredBy_split_literal root_8002573 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.root_8002574 small_8002573_right_root coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.cover_8002574
  · exact small_8002573_right_covered
#print axioms cover_8002573

def root_8002568 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8002568_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8002568_right_fuel : Nat := 1
def small_8002568_right_count : Nat := 1
def small_8002568_right_encoded : String := "00000004"
theorem small_8002568_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8002568_right_root small_8002568_right_fuel small_8002568_right_count small_8002568_right_encoded = true := by
  decide +kernel
theorem small_8002568_right_covered : CoveredBy scale carrier boxes small_8002568_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8002568_right_root small_8002568_right_fuel small_8002568_right_count small_8002568_right_encoded small_8002568_right_checked

theorem cover_8002568 : CoveredBy scale carrier boxes root_8002568 := by
  apply coveredBy_split_literal root_8002568 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.root_8002573 small_8002568_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.cover_8002573
  · exact small_8002568_right_covered
#print axioms cover_8002568

def root_8000398 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8000398 : CoveredBy scale carrier boxes root_8000398 := by
  apply coveredBy_split_literal root_8000398 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2999.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.root_8002568 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2999.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.cover_8002568
#print axioms cover_8000398

def root_8000393 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8000393_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8000393_right_fuel : Nat := 1
def small_8000393_right_count : Nat := 1
def small_8000393_right_encoded : String := "00000003"
theorem small_8000393_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8000393_right_root small_8000393_right_fuel small_8000393_right_count small_8000393_right_encoded = true := by
  decide +kernel
theorem small_8000393_right_covered : CoveredBy scale carrier boxes small_8000393_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8000393_right_root small_8000393_right_fuel small_8000393_right_count small_8000393_right_encoded small_8000393_right_checked

theorem cover_8000393 : CoveredBy scale carrier boxes root_8000393 := by
  apply coveredBy_split_literal root_8000393 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.root_8000398 small_8000393_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.cover_8000398
  · exact small_8000393_right_covered
#print axioms cover_8000393

def root_7997015 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7997015 : CoveredBy scale carrier boxes root_7997015 := by
  apply coveredBy_split_literal root_7997015 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0193.root_7997016 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.root_8000393 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0193.cover_7997016
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.cover_8000393
#print axioms cover_7997015

def root_7997010 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7997010_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7997010_right_fuel : Nat := 1
def small_7997010_right_count : Nat := 1
def small_7997010_right_encoded : String := "00000002"
theorem small_7997010_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7997010_right_root small_7997010_right_fuel small_7997010_right_count small_7997010_right_encoded = true := by
  decide +kernel
theorem small_7997010_right_covered : CoveredBy scale carrier boxes small_7997010_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7997010_right_root small_7997010_right_fuel small_7997010_right_count small_7997010_right_encoded small_7997010_right_checked

theorem cover_7997010 : CoveredBy scale carrier boxes root_7997010 := by
  apply coveredBy_split_literal root_7997010 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.root_7997015 small_7997010_right_root coord2 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.cover_7997015
  · exact small_7997010_right_covered
#print axioms cover_7997010

def root_7991368 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7991368 : CoveredBy scale carrier boxes root_7991368 := by
  apply coveredBy_split_literal root_7991368 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0193.root_7991369 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.root_7997010 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0193.cover_7991369
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.cover_7997010
#print axioms cover_7991368

def root_7991363 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7991363_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7991363_right_fuel : Nat := 1
def small_7991363_right_count : Nat := 1
def small_7991363_right_encoded : String := "00000001"
theorem small_7991363_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7991363_right_root small_7991363_right_fuel small_7991363_right_count small_7991363_right_encoded = true := by
  decide +kernel
theorem small_7991363_right_covered : CoveredBy scale carrier boxes small_7991363_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7991363_right_root small_7991363_right_fuel small_7991363_right_count small_7991363_right_encoded small_7991363_right_checked

theorem cover_7991363 : CoveredBy scale carrier boxes root_7991363 := by
  apply coveredBy_split_literal root_7991363 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.root_7991368 small_7991363_right_root coord1 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.cover_7991368
  · exact small_7991363_right_covered
#print axioms cover_7991363

def root_7970399 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7970399 : CoveredBy scale carrier boxes root_7970399 := by
  apply coveredBy_split_literal root_7970399 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0193.root_7970400 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.root_7991363 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0193.cover_7970400
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.cover_7991363
#print axioms cover_7970399

def root_7970394 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7970394_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7970394_right_fuel : Nat := 1
def small_7970394_right_count : Nat := 1
def small_7970394_right_encoded : String := "00000000"
theorem small_7970394_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7970394_right_root small_7970394_right_fuel small_7970394_right_count small_7970394_right_encoded = true := by
  decide +kernel
theorem small_7970394_right_covered : CoveredBy scale carrier boxes small_7970394_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7970394_right_root small_7970394_right_fuel small_7970394_right_count small_7970394_right_encoded small_7970394_right_checked

theorem cover_7970394 : CoveredBy scale carrier boxes root_7970394 := by
  apply coveredBy_split_literal root_7970394 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.root_7970399 small_7970394_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.cover_7970399
  · exact small_7970394_right_covered
#print axioms cover_7970394

def root_7967472 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7967472 : CoveredBy scale carrier boxes root_7967472 := by
  apply coveredBy_split_literal root_7967472 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2988.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.root_7970394 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2988.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.cover_7970394
#print axioms cover_7967472

def root_7937766 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7937766 : CoveredBy scale carrier boxes root_7937766 := by
  apply coveredBy_split_literal root_7937766 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0192.root_7937767 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.root_7967472 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0192.cover_7937767
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.cover_7967472
#print axioms cover_7937766

def root_7934718 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7934718 : CoveredBy scale carrier boxes root_7934718 := by
  apply coveredBy_split_literal root_7934718 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2978.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.root_7937766 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2978.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.cover_7937766
#print axioms cover_7934718

def root_7862136 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7862136 : CoveredBy scale carrier boxes root_7862136 := by
  apply coveredBy_split_literal root_7862136 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0191.root_7862137 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.root_7934718 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0191.cover_7862137
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.cover_7934718
#print axioms cover_7862136

def root_7759102 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7759102 : CoveredBy scale carrier boxes root_7759102 := by
  apply coveredBy_split_literal root_7759102 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0189.root_7759103 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.root_7862136 coord3 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0189.cover_7759103
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.cover_7862136
#print axioms cover_7759102

def root_8017391 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8017391 : CoveredBy scale carrier boxes root_8017391 := by
  apply coveredBy_split_literal root_8017391 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3006.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3007.root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3006.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3007.covered
#print axioms cover_8017391

def root_8017386 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8017386_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8017386_right_fuel : Nat := 1
def small_8017386_right_count : Nat := 1
def small_8017386_right_encoded : String := "00000004"
theorem small_8017386_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8017386_right_root small_8017386_right_fuel small_8017386_right_count small_8017386_right_encoded = true := by
  decide +kernel
theorem small_8017386_right_covered : CoveredBy scale carrier boxes small_8017386_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8017386_right_root small_8017386_right_fuel small_8017386_right_count small_8017386_right_encoded small_8017386_right_checked

theorem cover_8017386 : CoveredBy scale carrier boxes root_8017386 := by
  apply coveredBy_split_literal root_8017386 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.root_8017391 small_8017386_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.cover_8017391
  · exact small_8017386_right_covered
#print axioms cover_8017386

def root_8017385 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8017385_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8017385_right_fuel : Nat := 24
def small_8017385_right_count : Nat := 319
def small_8017385_right_encoded : String := "1151E9090000000408A912F912073CF80000000108A912FD12073CFC0000000305000100135D450100000000050000FA135D8105050000FE135D81090CFD9BF90F350CF800000001000000070000000800000004135D4509000000040CFD9BF9000000050000000800000002135D450500000002050000FE135D81090CFD9BF9000000050F34D0F80CFD9BFD000000050F34D0FC0280010013D7B10100000000028000FA0000000713D7B10500000002078000FE000000070000000713D7ED010000000800000000000000030000000100000004135D4509000000040CFD9BF9000000050F34D0F80000000800000001135D8101050000FA135D8105050000FE000000080000000500000002135D450500000002050000FE135D810900000005000000040000000500000000120700FC05000100135D450100000000050000FA00000007135D450500000002050000FE135D81090CFD9BF9000000070F34D0F8045489FD1386ACFC00000003028001000000000700000007138670FC0000000700000003000000010000000400000007135D8101050000FA00000007135D450500000002050000FE135D81090CFD9BF9000000070F34D0F8045489FD00000007000000070000000100000004000000070000000000000003120700F808A912FD12073CFC0000000305000100135D450100000000050000FA00000008135D450500000002050000FE135D8109045489F900000008000000080000000400000008135D8101050000FA00000008135D4505000000020000000800000000120700FC05000100135D450100000000050000FA135D8105050000FE135D8109045489F91386ACF8000000010000000A0000000A000000040000000A00000002135D450500000002050000FE135D8109045489F91386ACF800000001045489FD1386ACFC000000030280010013D7B10100000000028000FA0000000813D7B10500000002078000FE128A7D09067ECE7912EA94F8000000010000000A0000000A000000040000000A13D7ED01028000FA0000000813D7B10500000002078000FE128A7D09067ECE790000000700000008000000040000000800000000138670FC028001000000000A13D7ED01028000FA0000000713D7B105000000020000000A0000000000000003138670F8045489FD1386ACFC0000000300000008000000050000000100000004135D450900000004045489F91386ACF800000001045489FD000000080000000A00000008135D8101050000FA135D8105050000FE135D8109045489F91386ACF800000001045489FD000000070000000700000008000000040000000800000002135D450500000002050000FE135D8109045489F91386ACF800000001045489FD1386ACFC0000000307800100128A410100000000028000FA0000000713D7B105000000020000000800000008138670FC07800100128A410100000000028000FA0000000713D7B10500000002078000FE128A7D09067ECE790000000712EA58F80000000A000000010000000400000007128A7D01028000FA0000000713D7B10500000002078000FE00000007000000070000000000000003138670F8045489FD00000008138670FC07800100128A41010000000000000005128A7D01028000FA0000000813D7B10500000002078000FE128A7D0900000008000000040000000800000000000000030000000100000004135D450900000004045489F91386ACF8000000010000000800000008000000000000000300000001"
theorem small_8017385_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8017385_right_root small_8017385_right_fuel small_8017385_right_count small_8017385_right_encoded = true := by
  decide +kernel
theorem small_8017385_right_covered : CoveredBy scale carrier boxes small_8017385_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8017385_right_root small_8017385_right_fuel small_8017385_right_count small_8017385_right_encoded small_8017385_right_checked

theorem cover_8017385 : CoveredBy scale carrier boxes root_8017385 := by
  apply coveredBy_split_literal root_8017385 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.root_8017386 small_8017385_right_root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.cover_8017386
  · exact small_8017385_right_covered
#print axioms cover_8017385

def root_8017379 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8017379_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8017379_left_fuel : Nat := 1
def small_8017379_left_count : Nat := 1
def small_8017379_left_encoded : String := "00000003"
theorem small_8017379_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8017379_left_root small_8017379_left_fuel small_8017379_left_count small_8017379_left_encoded = true := by
  decide +kernel
theorem small_8017379_left_covered : CoveredBy scale carrier boxes small_8017379_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8017379_left_root small_8017379_left_fuel small_8017379_left_count small_8017379_left_encoded small_8017379_left_checked

theorem cover_8017379 : CoveredBy scale carrier boxes root_8017379 := by
  apply coveredBy_split_literal root_8017379 small_8017379_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.root_8017385 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_8017379_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.cover_8017385
#print axioms cover_8017379

def root_8017378 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8017378_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8017378_right_fuel : Nat := 15
def small_8017378_right_count : Nat := 49
def small_8017378_right_encoded : String := "1151E8FD0A0000FE1152250908A912F912073CF80000000108A913090000000512073CFE0000000400000005120700F808A913090000000612073CFE0000000405000100135D450100000000050000FA135D8105050000FC00000008135D44FD000000080000000300000002135D450500000002050000FC135D80FD00000003045489F9000000050000000600000005135D8101050000FA00000006000000050000000000000001000000041151E9090000000408A912F9000000050000000800000003"
theorem small_8017378_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8017378_right_root small_8017378_right_fuel small_8017378_right_count small_8017378_right_encoded = true := by
  decide +kernel
theorem small_8017378_right_covered : CoveredBy scale carrier boxes small_8017378_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8017378_right_root small_8017378_right_fuel small_8017378_right_count small_8017378_right_encoded small_8017378_right_checked

theorem cover_8017378 : CoveredBy scale carrier boxes root_8017378 := by
  apply coveredBy_split_literal root_8017378 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.root_8017379 small_8017378_right_root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.cover_8017379
  · exact small_8017378_right_covered
#print axioms cover_8017378

def root_8017372 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8017372_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8017372_left_fuel : Nat := 1
def small_8017372_left_count : Nat := 1
def small_8017372_left_encoded : String := "00000002"
theorem small_8017372_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8017372_left_root small_8017372_left_fuel small_8017372_left_count small_8017372_left_encoded = true := by
  decide +kernel
theorem small_8017372_left_covered : CoveredBy scale carrier boxes small_8017372_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8017372_left_root small_8017372_left_fuel small_8017372_left_count small_8017372_left_encoded small_8017372_left_checked

theorem cover_8017372 : CoveredBy scale carrier boxes root_8017372 := by
  apply coveredBy_split_literal root_8017372 small_8017372_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.root_8017378 coord2 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_8017372_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.cover_8017378
#print axioms cover_8017372

def root_8015530 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8015530 : CoveredBy scale carrier boxes root_8015530 := by
  apply coveredBy_split_literal root_8015530 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3005.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.root_8017372 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3005.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.cover_8017372
#print axioms cover_8015530

def root_8015524 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8015524_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8015524_left_fuel : Nat := 1
def small_8015524_left_count : Nat := 1
def small_8015524_left_encoded : String := "00000001"
theorem small_8015524_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8015524_left_root small_8015524_left_fuel small_8015524_left_count small_8015524_left_encoded = true := by
  decide +kernel
theorem small_8015524_left_covered : CoveredBy scale carrier boxes small_8015524_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8015524_left_root small_8015524_left_fuel small_8015524_left_count small_8015524_left_encoded small_8015524_left_checked

theorem cover_8015524 : CoveredBy scale carrier boxes root_8015524 := by
  apply coveredBy_split_literal root_8015524 small_8015524_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.root_8015530 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_8015524_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.cover_8015530
#print axioms cover_8015524

def root_8015523 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8015523_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8015523_right_fuel : Nat := 21
def small_8015523_right_count : Nat := 181
def small_8015523_right_encoded : String := "1151E8F90A0000FA115225050A0000FC115224FD000000030A0000FE1152250908A91305120700FA08A912FD12073CFC0000000308A91309120700FE000000070000000400000007120700FC00000007000000030000000212073CFA0000000208A912FD12073CFC0000000308A91309120700FE05000100135D450100000000050000F8135D80F9000000010CFD9C05000000050F350CFA000000020000000500000005000000050000000412073CFE0000000405000100135D450100000000050000F8135D80F9000000010CFD9C0500000007000000070000000500000005120700FC08A91309120700FE05000100135D450100000000050000F8135D80F9000000010CFD9C05000000070F350CFA00000002045489FD000000070000000700000007135D8101050000F8135D80F9000000010CFD9C050F34D0FA00000007000000020F350CFA00000002045489FD000000050000000700000005000000000000000412073CFE000000040000000700000003000000041151E9090000000408A9130500000007000000071151E8FD0000000500000003000000021151E905000000020A0000FC115224FD000000030A0000FE1152250908A912FD12073CFC0000000308A913090000000512073CFE0000000400000005120700FC08A91309120700FE05000100135D450100000000050000F8135D80F900000001050000FA135D8105045489FD00000005138670FC0000000800000003000000020000000500000005000000050000000412073CFE0000000405000100135D450100000000050000F8135D80F900000001050000FA00000007135D450500000002045489FD00000005138670FC0000000700000003135D44F90000000700000001135D8101050000F8135D80F900000001050000FA0000000700000005000000050000000000000003000000041151E9090000000408A912FD00000005120700FC00000007000000031151E8FD000000050000000300000001"
theorem small_8015523_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8015523_right_root small_8015523_right_fuel small_8015523_right_count small_8015523_right_encoded = true := by
  decide +kernel
theorem small_8015523_right_covered : CoveredBy scale carrier boxes small_8015523_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8015523_right_root small_8015523_right_fuel small_8015523_right_count small_8015523_right_encoded small_8015523_right_checked

theorem cover_8015523 : CoveredBy scale carrier boxes root_8015523 := by
  apply coveredBy_split_literal root_8015523 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.root_8015524 small_8015523_right_root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.cover_8015524
  · exact small_8015523_right_covered
#print axioms cover_8015523

def root_8015517 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8015517_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8015517_left_fuel : Nat := 1
def small_8015517_left_count : Nat := 1
def small_8015517_left_encoded : String := "00000000"
theorem small_8015517_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8015517_left_root small_8015517_left_fuel small_8015517_left_count small_8015517_left_encoded = true := by
  decide +kernel
theorem small_8015517_left_covered : CoveredBy scale carrier boxes small_8015517_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8015517_left_root small_8015517_left_fuel small_8015517_left_count small_8015517_left_encoded small_8015517_left_checked

theorem cover_8015517 : CoveredBy scale carrier boxes root_8015517 := by
  apply coveredBy_split_literal root_8015517 small_8015517_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.root_8015523 coord0 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_8015517_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.cover_8015523
#print axioms cover_8015517

def root_8015516 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8015516 : CoveredBy scale carrier boxes root_8015516 := by
  apply coveredBy_split_literal root_8015516 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.root_8015517 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3008.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.cover_8015517
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3008.covered
#print axioms cover_8015516

def root_8013996 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8013996 : CoveredBy scale carrier boxes root_8013996 := by
  apply coveredBy_split_literal root_8013996 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3004.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.root_8015516 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3004.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.cover_8015516
#print axioms cover_8013996

def root_8013995 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8013995 : CoveredBy scale carrier boxes root_8013995 := by
  apply coveredBy_split_literal root_8013995 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.root_8013996 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3009.root coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.cover_8013996
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3009.covered
#print axioms cover_8013995

def root_8031564 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8031564_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8031564_left_fuel : Nat := 20
def small_8031564_left_count : Nat := 283
def small_8031564_left_encoded : String := "12073CF80000000108A91305120700FA08A91307120700FC08A913090000000512073CFE0000000404548A01000000051386AD000CFD9BF9000000050F34D0F804548A05000000050000000700000001000000000000000312073CFC0000000308A91309120700FE04548A01000000051386AD000CFD9BF9000000050000000A000000000000000412073CFE0000000404548A0113867100000000000CFD9BF9000000050F34D0F804548A05000000051386ACFA000000020CFD9C07000000050F350CFC000000030CFD9C090000000500000007000000011386AD000CFD9BF90F350CF80000000104548A0500000005000000070F34D0F804548A05138670FA0CFD9C070F34D0FC00000007000000030F350CFC000000030CFD9C090000000500000007000000021386ACFA000000020CFD9C070F34D0FC00000007000000030F350CFC000000030CFD9C090000000A0000000700000001000000000000000212073CFA0000000208A91307120700FC08A91309120700FE04548A01000000051386AD000CFD9BF9000000050F34D0F80000000600000001000000000000000412073CFE0000000404548A0113867100000000000CFD9BF9000000050F34D0F80CFD9C05000000050F350CFA0000000204548A07000000051386ACFC000000030CFD9C090000000500000007000000011386AD000CFD9BF90F350CF8000000010CFD9C0500000005000000070F34D0F80CFD9C050F34D0FA04548A070000000700000007000000020F350CFA0000000204548A07138670FC0CFD9C090000000500000007000000031386ACFC000000030CFD9C090F34D0FE0C9A86FA000000060F8751050000000200000006000000040000000700000001000000000000000312073CFC0000000308A91309120700FE04548A0113867100000000000CFD9BF9000000050F34D0F80CFD9C05000000050000000A000000011386AD000CFD9BF90F350CF8000000010CFD9C05000000050000000A0000000A000000000000000412073CFE0000000404548A0113867100000000000CFD9BF90F350CF8000000010CFD9C050F34D0FA00000007000000020F350CFA000000020CFD9C07000000050F350CFC000000030CFD9C0900000005000000070F34D0F80CFD9C050F34D0FA0CFD9C070F34D0FC00000007000000030F350CFC000000030CFD9C090000000A00000007000000020F350CFA000000020CFD9C070F34D0FC0CFD9C090F34D0FE0C9A86FA00000007000000050000000400000007000000030F350CFC000000030CFD9C090000000A0F350CFE0000000400000007000000011386AD000CFD9BF90F350CF8000000010CFD9C050F34D0FA00000007000000020F350CFA000000020CFD9C070F34D0FC0000000700000003000000070F34D0F80CFD9C050F34D0FA0CFD9C070F34D0FC00000007000000030F350CFC000000030CFD9C090000000A00000007000000020F350CFA000000020CFD9C070F34D0FC0CFD9C090000000A00000007000000030F350CFC000000030CFD9C090000000A0F350CFE00000004000000070000000100000000"
theorem small_8031564_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8031564_left_root small_8031564_left_fuel small_8031564_left_count small_8031564_left_encoded = true := by
  decide +kernel
theorem small_8031564_left_covered : CoveredBy scale carrier boxes small_8031564_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8031564_left_root small_8031564_left_fuel small_8031564_left_count small_8031564_left_encoded small_8031564_left_checked

theorem cover_8031564 : CoveredBy scale carrier boxes root_8031564 := by
  apply coveredBy_split_literal root_8031564 small_8031564_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3012.root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_8031564_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3012.covered
#print axioms cover_8031564

def root_8031558 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8031558_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8031558_left_fuel : Nat := 1
def small_8031558_left_count : Nat := 1
def small_8031558_left_encoded : String := "00000000"
theorem small_8031558_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8031558_left_root small_8031558_left_fuel small_8031558_left_count small_8031558_left_encoded = true := by
  decide +kernel
theorem small_8031558_left_covered : CoveredBy scale carrier boxes small_8031558_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8031558_left_root small_8031558_left_fuel small_8031558_left_count small_8031558_left_encoded small_8031558_left_checked

theorem cover_8031558 : CoveredBy scale carrier boxes root_8031558 := by
  apply coveredBy_split_literal root_8031558 small_8031558_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.root_8031564 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_8031558_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.cover_8031564
#print axioms cover_8031558

def root_8031557 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8031557 : CoveredBy scale carrier boxes root_8031557 := by
  apply coveredBy_split_literal root_8031557 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.root_8031558 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3013.root coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.cover_8031558
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3013.covered
#print axioms cover_8031557

def root_8031552 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8031552_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8031552_right_fuel : Nat := 1
def small_8031552_right_count : Nat := 1
def small_8031552_right_encoded : String := "00000004"
theorem small_8031552_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8031552_right_root small_8031552_right_fuel small_8031552_right_count small_8031552_right_encoded = true := by
  decide +kernel
theorem small_8031552_right_covered : CoveredBy scale carrier boxes small_8031552_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8031552_right_root small_8031552_right_fuel small_8031552_right_count small_8031552_right_encoded small_8031552_right_checked

theorem cover_8031552 : CoveredBy scale carrier boxes root_8031552 := by
  apply coveredBy_split_literal root_8031552 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.root_8031557 small_8031552_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.cover_8031557
  · exact small_8031552_right_covered
#print axioms cover_8031552

def root_8031551 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8031551_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8031551_right_fuel : Nat := 24
def small_8031551_right_count : Nat := 417
def small_8031551_right_encoded : String := "1151E9090000000408A91301120701000000000008A912F912073CF80000000108A91305120700FA08A9130700000005000000070000000212073CFA0000000208A91307120700FC000000070000000300000007120700F808A91305120700FA08A91307120700FC050000FE135D810904548A01000000080000000700000004000000070000000312073CFC00000003050000FE135D810904548A011386710000000000045489F900000007138670F804548A05138670FA0CFD9C070F34D0FC000000070000000300000007000000021386ACFA000000020CFD9C070F34D0FC000000070000000300000007000000011386AD00045489F900000007138670F804548A05138670FA0CFD9C070F34D0FC000000070000000300000007000000021386ACFA000000020CFD9C070000000700000007000000010000000000000004135D450900000004000000070000000212073CFA0000000208A91307120700FC050000FE135D810904548A01000000081386AD00045489F900000007000000080000000000000004000000080000000312073CFC00000003050000FE135D810904548A011386710000000000045489F91386ACF8000000010CFD9C050F34D0FA000000070000000200000007138670F80CFD9C050F34D0FA0CFD9C070F34D0FC000000070000000300000007000000020F350CFA000000020CFD9C07000000080F350CFC000000030C9A86FA000000070F875105000000020C9A86FC000000070F8751070000000300000007000000011386AD00045489F91386ACF8000000010CFD9C050F34D0FA000000070000000200000007138670F80CFD9C050F34D0FA0CFD9C070F34D0FC000000070000000300000007000000020F350CFA000000020CFD9C070F34D0FC00000007000000030F350CFC000000030C9A86FA000000070F8751050000000200000007000000010000000000000004135D45090000000404548A011386710000000000045489F900000007138670F80CFD9C050F34D0FA00000007000000020000000700000001000000070000000112073D0008A912F912073CF80000000108A91305120700FA08A91307120700FC0000000700000003000000070000000212073CFA0000000208A91307120700FC000000070000000312073CFC00000003050000FE135D81090CFD9C010F34D1000000000000000007000000070000000400000007120700F808A91305120700FA08A91307120700FC050000FE135D81090CFD9C010F34D10000000000000000070000000700000004000000070000000312073CFC00000003050000FE135D81090CFD9C010F34D10000000000045489F900000007138670F804548A05138670FA0CFD9C070000000700000007000000021386ACFA000000020CFD9C070000000700000007000000010F350D00045489F900000007138670F804548A05138670FA0CFD9C070000000700000007000000021386ACFA000000020CFD9C070F34D0FC000000070000000300000007000000010000000000000004135D4509000000040CFD9C010F34D1000000000000000007000000070000000212073CFA0000000208A91307120700FC050000FE135D81090CFD9C010F34D10000000000045489F900000007138670F80CFD9C050000000900000008000000010F350D00045489F900000007138670F80CFD9C05000000090F350CFA0000000204548A070000000800000007000000010000000000000004135D4509000000040CFD9C010F34D1000000000000000007000000070000000312073CFC00000003050000FE135D81090CFD9C010F34D10000000000045489F91386ACF8000000010CFD9C050F34D0FA000000070000000200000007138670F80CFD9C050F34D0FA0CFD9C070F34D0FC000000070000000300000007000000020F350CFA000000020CFD9C070F34D0FC00000007000000030F350CFC000000030C9A86FA000000070F8751050000000200000005000000010F350D00045489F91386ACF8000000010CFD9C050F34D0FA00000007000000020F350CFA000000020CFD9C070000000A00000007138670F80CFD9C050F34D0FA0CFD9C070F34D0FC000000070000000300000005000000020F350CFA000000020CFD9C070000000A00000005000000010000000000000004135D4509000000040CFD9C010F34D10000000000045489F900000007138670F80CFD9C050F34D0FA000000070000000200000007000000010F350D00045489F900000007138670F80CFD9C050F34D0FA00000007000000020000000500000001000000000000000100000000"
theorem small_8031551_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8031551_right_root small_8031551_right_fuel small_8031551_right_count small_8031551_right_encoded = true := by
  decide +kernel
theorem small_8031551_right_covered : CoveredBy scale carrier boxes small_8031551_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8031551_right_root small_8031551_right_fuel small_8031551_right_count small_8031551_right_encoded small_8031551_right_checked

theorem cover_8031551 : CoveredBy scale carrier boxes root_8031551 := by
  apply coveredBy_split_literal root_8031551 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.root_8031552 small_8031551_right_root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.cover_8031552
  · exact small_8031551_right_covered
#print axioms cover_8031551

def root_8031546 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8031546_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8031546_right_fuel : Nat := 1
def small_8031546_right_count : Nat := 1
def small_8031546_right_encoded : String := "00000003"
theorem small_8031546_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8031546_right_root small_8031546_right_fuel small_8031546_right_count small_8031546_right_encoded = true := by
  decide +kernel
theorem small_8031546_right_covered : CoveredBy scale carrier boxes small_8031546_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8031546_right_root small_8031546_right_fuel small_8031546_right_count small_8031546_right_encoded small_8031546_right_checked

theorem cover_8031546 : CoveredBy scale carrier boxes root_8031546 := by
  apply coveredBy_split_literal root_8031546 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.root_8031551 small_8031546_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.cover_8031551
  · exact small_8031546_right_covered
#print axioms cover_8031546

def root_8031545 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8031545 : CoveredBy scale carrier boxes root_8031545 := by
  apply coveredBy_split_literal root_8031545 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.root_8031546 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3014.root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.cover_8031546
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3014.covered
#print axioms cover_8031545

def root_8031540 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8031540_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8031540_right_fuel : Nat := 1
def small_8031540_right_count : Nat := 1
def small_8031540_right_encoded : String := "00000002"
theorem small_8031540_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8031540_right_root small_8031540_right_fuel small_8031540_right_count small_8031540_right_encoded = true := by
  decide +kernel
theorem small_8031540_right_covered : CoveredBy scale carrier boxes small_8031540_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8031540_right_root small_8031540_right_fuel small_8031540_right_count small_8031540_right_encoded small_8031540_right_checked

theorem cover_8031540 : CoveredBy scale carrier boxes root_8031540 := by
  apply coveredBy_split_literal root_8031540 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.root_8031545 small_8031540_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.cover_8031545
  · exact small_8031540_right_covered
#print axioms cover_8031540

def root_8039009 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8039009 : CoveredBy scale carrier boxes root_8039009 := by
  apply coveredBy_split_literal root_8039009 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3015.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3016.root coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3015.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3016.covered
#print axioms cover_8039009

def root_8039004 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8039004_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8039004_right_fuel : Nat := 1
def small_8039004_right_count : Nat := 1
def small_8039004_right_encoded : String := "00000004"
theorem small_8039004_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8039004_right_root small_8039004_right_fuel small_8039004_right_count small_8039004_right_encoded = true := by
  decide +kernel
theorem small_8039004_right_covered : CoveredBy scale carrier boxes small_8039004_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8039004_right_root small_8039004_right_fuel small_8039004_right_count small_8039004_right_encoded small_8039004_right_checked

theorem cover_8039004 : CoveredBy scale carrier boxes root_8039004 := by
  apply coveredBy_split_literal root_8039004 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.root_8039009 small_8039004_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.cover_8039009
  · exact small_8039004_right_covered
#print axioms cover_8039004

def root_8039003 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8039003 : CoveredBy scale carrier boxes root_8039003 := by
  apply coveredBy_split_literal root_8039003 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.root_8039004 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3017.root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.cover_8039004
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3017.covered
#print axioms cover_8039003

def root_8038998 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8038998_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8038998_right_fuel : Nat := 1
def small_8038998_right_count : Nat := 1
def small_8038998_right_encoded : String := "00000003"
theorem small_8038998_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8038998_right_root small_8038998_right_fuel small_8038998_right_count small_8038998_right_encoded = true := by
  decide +kernel
theorem small_8038998_right_covered : CoveredBy scale carrier boxes small_8038998_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8038998_right_root small_8038998_right_fuel small_8038998_right_count small_8038998_right_encoded small_8038998_right_checked

theorem cover_8038998 : CoveredBy scale carrier boxes root_8038998 := by
  apply coveredBy_split_literal root_8038998 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.root_8039003 small_8038998_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.cover_8039003
  · exact small_8038998_right_covered
#print axioms cover_8038998

def root_8038997 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8038997_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8038997_right_fuel : Nat := 27
def small_8038997_right_count : Nat := 343
def small_8038997_right_encoded : String := "1151E907000000030A0000FE1152250908A91301120701000000000008A912F912073CF80000000108A91309120700FE050000FA0000000A135D450500000002050000FC0000000A0000000A0000000412073CFE00000004050000FA135D8105050000FC135D810704548A0113867100000000000CFD9BF90F350CF8000000010000000A0000000A1386AD000000000A00000000000000030000000A00000002135D450500000002050000FC135D810704548A0113867100000000000CFD9BF90F350CF8000000010CFD9C09000000050F350CFE000000040C9A86F8000000090000000A0F34D0F80CFD9C090000000A0F350CFE000000040000000A000000011386AD000CFD9BF90F350CF8000000010CFD9C090000000A0F350CFE000000040C9A86F80000000A0000000A0F34D0F80000000A000000010000000000000003135D45070000000304548A0113867100000000000CFD9BF9000000090000000A1386AD000000000A00000000120700F808A913090000000A12073CFE00000004050000FA135D8105050000FC135D81070000000A000000030000000A00000002135D450500000002050000FC135D810704548A011386710000000000045489F90000000A0000000A0000000A000000030000000A0000000112073D0008A912F912073CF80000000108A91309120700FE050000FA0000000A135D450500000002050000FC0000000A0000000A0000000412073CFE00000004050000FA135D8105050000FC135D81070CFD9C010000000A0000000A000000030000000A00000002135D450500000002050000FC135D81070CFD9C010F34D100000000000CFD9BF90F350CF8000000010CFD9C090000000A0F350CFE00000004000000060000000A0F350D000CFD9BF90F350CF8000000010000000A0000000A0000000000000003135D4507000000030CFD9C010000000A0000000A120700F80000000A0000000100000000000000041151E9090000000408A91301120701000000000008A912F912073CF800000001050000FA135D8105050000FC000000070000000600000002135D450500000002050000FC135D8107050000FE135D810904548A0113867100000000000CFD9BF9000000070F34D0F8028000FA0000000713D7B10500000002078000FC00000007000000060000000100000007000000040000000600000003135D45070000000300000006120700F8050000FA135D8105050000FC135D8107050000FE135D810904548A011386710000000000045489F91386ACF800000001078000FA00000007128A4105000000020000000A138670F8078000FA128A7D05078000FC128A7D070000000A000000030000000A00000002128A410500000002078000FC128A7D070000000A000000030000000A000000011386AD00045489F90000000A000000050000000000000004135D45090000000404548A011386710000000000045489F900000006000000050000000500000003135D450700000003050000FE0000000A0000000600000002135D450500000002050000FC135D8107050000FE135D810904548A011386710000000000045489F91386ACF800000001028000FA13D7ED05078000FC128A7D07078000FE0000000A00000007000000030000000A0000000213D7B10500000002078000FC128A7D07078000FE128A7D09022A458113E1C50000000000067ECE79000000070000000A0000000A0000000400000007000000030000000A000000050000000500000004135D45090000000404548A011386710000000000045489F900000006000000050000000500000003135D450700000003050000FE0000000A000000060000000112073D0008A912F912073CF800000001050000FA00000006000000060000000500000000"
theorem small_8038997_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8038997_right_root small_8038997_right_fuel small_8038997_right_count small_8038997_right_encoded = true := by
  decide +kernel
theorem small_8038997_right_covered : CoveredBy scale carrier boxes small_8038997_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8038997_right_root small_8038997_right_fuel small_8038997_right_count small_8038997_right_encoded small_8038997_right_checked

theorem cover_8038997 : CoveredBy scale carrier boxes root_8038997 := by
  apply coveredBy_split_literal root_8038997 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.root_8038998 small_8038997_right_root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.cover_8038998
  · exact small_8038997_right_covered
#print axioms cover_8038997

def root_8038991 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8038991_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8038991_left_fuel : Nat := 1
def small_8038991_left_count : Nat := 1
def small_8038991_left_encoded : String := "00000002"
theorem small_8038991_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8038991_left_root small_8038991_left_fuel small_8038991_left_count small_8038991_left_encoded = true := by
  decide +kernel
theorem small_8038991_left_covered : CoveredBy scale carrier boxes small_8038991_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8038991_left_root small_8038991_left_fuel small_8038991_left_count small_8038991_left_encoded small_8038991_left_checked

theorem cover_8038991 : CoveredBy scale carrier boxes root_8038991 := by
  apply coveredBy_split_literal root_8038991 small_8038991_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.root_8038997 coord2 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_8038991_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.cover_8038997
#print axioms cover_8038991

def root_8031539 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8031539 : CoveredBy scale carrier boxes root_8031539 := by
  apply coveredBy_split_literal root_8031539 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.root_8031540 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.root_8038991 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.cover_8031540
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.cover_8038991
#print axioms cover_8031539

def root_8031533 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8031533_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8031533_left_fuel : Nat := 1
def small_8031533_left_count : Nat := 1
def small_8031533_left_encoded : String := "00000001"
theorem small_8031533_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8031533_left_root small_8031533_left_fuel small_8031533_left_count small_8031533_left_encoded = true := by
  decide +kernel
theorem small_8031533_left_covered : CoveredBy scale carrier boxes small_8031533_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8031533_left_root small_8031533_left_fuel small_8031533_left_count small_8031533_left_encoded small_8031533_left_checked

theorem cover_8031533 : CoveredBy scale carrier boxes root_8031533 := by
  apply coveredBy_split_literal root_8031533 small_8031533_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.root_8031539 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_8031533_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.cover_8031539
#print axioms cover_8031533

def root_8031532 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8031532 : CoveredBy scale carrier boxes root_8031532 := by
  apply coveredBy_split_literal root_8031532 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.root_8031533 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3018.root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.cover_8031533
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3018.covered
#print axioms cover_8031532

def root_8031527 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8031527_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8031527_right_fuel : Nat := 1
def small_8031527_right_count : Nat := 1
def small_8031527_right_encoded : String := "00000000"
theorem small_8031527_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8031527_right_root small_8031527_right_fuel small_8031527_right_count small_8031527_right_encoded = true := by
  decide +kernel
theorem small_8031527_right_covered : CoveredBy scale carrier boxes small_8031527_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8031527_right_root small_8031527_right_fuel small_8031527_right_count small_8031527_right_encoded small_8031527_right_checked

theorem cover_8031527 : CoveredBy scale carrier boxes root_8031527 := by
  apply coveredBy_split_literal root_8031527 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.root_8031532 small_8031527_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.cover_8031532
  · exact small_8031527_right_covered
#print axioms cover_8031527

def root_8029521 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8029521 : CoveredBy scale carrier boxes root_8029521 := by
  apply coveredBy_split_literal root_8029521 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3011.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.root_8031527 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3011.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.cover_8031527
#print axioms cover_8029521

def root_8028213 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8028213 : CoveredBy scale carrier boxes root_8028213 := by
  apply coveredBy_split_literal root_8028213 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3010.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.root_8029521 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3010.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.cover_8029521
#print axioms cover_8028213

def root_8046750 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8046750 : CoveredBy scale carrier boxes root_8046750 := by
  apply coveredBy_split_literal root_8046750 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3019.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3020.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3019.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3020.covered
#print axioms cover_8046750

def root_8028212 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8028212 : CoveredBy scale carrier boxes root_8028212 := by
  apply coveredBy_split_literal root_8028212 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.root_8028213 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.root_8046750 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.cover_8028213
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.cover_8046750
#print axioms cover_8028212

def root_8013994 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8013994 : CoveredBy scale carrier boxes root_8013994 := by
  apply coveredBy_split_literal root_8013994 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.root_8013995 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.root_8028212 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.cover_8013995
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.cover_8028212
#print axioms cover_8013994

def root_8053174 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8053174 : CoveredBy scale carrier boxes root_8053174 := by
  apply coveredBy_split_literal root_8053174 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3022.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3023.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3022.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3023.covered
#print axioms cover_8053174

def root_8050288 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8050288 : CoveredBy scale carrier boxes root_8050288 := by
  apply coveredBy_split_literal root_8050288 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3021.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.root_8053174 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3021.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.cover_8053174
#print axioms cover_8050288

def root_8058408 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8058408 : CoveredBy scale carrier boxes root_8058408 := by
  apply coveredBy_split_literal root_8058408 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3024.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3025.root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3024.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3025.covered
#print axioms cover_8058408

def root_8058403 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8058403_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8058403_right_fuel : Nat := 1
def small_8058403_right_count : Nat := 1
def small_8058403_right_encoded : String := "00000000"
theorem small_8058403_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8058403_right_root small_8058403_right_fuel small_8058403_right_count small_8058403_right_encoded = true := by
  decide +kernel
theorem small_8058403_right_covered : CoveredBy scale carrier boxes small_8058403_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8058403_right_root small_8058403_right_fuel small_8058403_right_count small_8058403_right_encoded small_8058403_right_checked

theorem cover_8058403 : CoveredBy scale carrier boxes root_8058403 := by
  apply coveredBy_split_literal root_8058403 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.root_8058408 small_8058403_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.cover_8058408
  · exact small_8058403_right_covered
#print axioms cover_8058403

def root_8057639 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8057639_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8057639_left_fuel : Nat := 22
def small_8057639_left_count : Nat := 355
def small_8057639_left_encoded : String := "1151E901000000000A0000F8115224F9000000010A0000FA115225050A0001061151E907000000030A0000FE115224FF0000000408A912F912073CF80000000108A91305120700FA08A912FF12073CFE0000000400000005120700FE05000100135D450100000000000000080000000A000000040000000212073CFA0000000208A912FF12073CFE000000040500010000000008135D81010000000500000000120700FE05000100135D45010000000000000008135D810105000106135D45070000000300000008135D81070CFD9BF90000000800000007000000030000000000000004120700F808A91305120700FA08A912FF12073CFE000000040500010000000007135D810105000106000000080000000500000000120700FE00000008000000040000000212073CFA0000000208A912FF12073CFE0000000405000100135D45010000000000000008135D810105000106135D45070000000300000008135D8107045489F900000008138670F800000008000000010000000300000000120700FE05000100000000070000000A00000004000000011151E8FF08A912F900000005120700F808A913050000000512073CFA00000002000000050000000100000004115225070A0000FE115224FF0000000408A912F912073CF80000000108A913050000000512073CFA0000000208A913070000000512073D0608A912FF00000005120700FE0500010000000007135D81010CFD9BF90000000500000007000000000000000400000003120700F808A91305120700FA08A9130700000005000000070000000212073CFA0000000208A913070000000712073D0608A912FF12073CFE000000040500010000000007135D8101045489F9000000050000000700000000120700FE000000070000000400000003000000011151E8FF000000050000000400000003000000021151E905000000020A0001061151E907000000030A0000FE115224FF0000000408A912F912073CF80000000108A912FF00000008120700FE0000000800000004120700F808A912FF00000008120700FE0000000800000004000000011151E8FF0000000800000004115225070A0000FE115224FF0000000408A912F912073CF80000000108A9130712070106000000030000000712073D0608A912FF00000005120700FE000000070000000400000003120700F808A913070000000712073D0608A912FF12073CFE000000040500010000000007135D8101050000FA135D8105045489F9000000050000000700000002135D450500000002045489F9000000050000000700000000120700FE000000070000000400000003000000011151E8FF08A912F912073CF80000000108A913070000000512073D060500010000000005135D8101000000050000000000000003120700F808A913070000000512073D060500010000000005135D8101050000FA00000005135D450500000002050000FE000000050000000900000000000000030000000100000004000000031151E8F90A0000FA115225050A0001061151E907000000030A0000FE115224FF0000000408A913050000000512073CFA00000002000000051151E8FF0000000500000004115225070A0000FE000000051151E8FF000000050000000400000003000000021151E905000000020A0001061151E907000000030A0000FE000000081151E8FF0000000500000004115225070A0000FE115224FF0000000408A9130712070106000000030000000712073D0608A912FF12073CFE000000040500010000000005135D81010000000500000000120700FE0000000700000004000000031151E8FF08A9130712070106000000030500010000000005135D8101050000F800000005000000070000000012073D060500010000000005135D8101050000F800000005135D44F900000008000000010000000000000003000000040000000300000001"
theorem small_8057639_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8057639_left_root small_8057639_left_fuel small_8057639_left_count small_8057639_left_encoded = true := by
  decide +kernel
theorem small_8057639_left_covered : CoveredBy scale carrier boxes small_8057639_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8057639_left_root small_8057639_left_fuel small_8057639_left_count small_8057639_left_encoded small_8057639_left_checked

theorem cover_8057639 : CoveredBy scale carrier boxes root_8057639 := by
  apply coveredBy_split_literal root_8057639 small_8057639_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.root_8058403 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_8057639_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.cover_8058403
#print axioms cover_8057639

def root_8057638 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8057638 : CoveredBy scale carrier boxes root_8057638 := by
  apply coveredBy_split_literal root_8057638 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.root_8057639 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3026.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.cover_8057639
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3026.covered
#print axioms cover_8057638

def root_8065207 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8065207 : CoveredBy scale carrier boxes root_8065207 := by
  apply coveredBy_split_literal root_8065207 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3027.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3028.root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3027.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3028.covered
#print axioms cover_8065207

def root_8065201 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8065201_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8065201_left_fuel : Nat := 1
def small_8065201_left_count : Nat := 1
def small_8065201_left_encoded : String := "00000000"
theorem small_8065201_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8065201_left_root small_8065201_left_fuel small_8065201_left_count small_8065201_left_encoded = true := by
  decide +kernel
theorem small_8065201_left_covered : CoveredBy scale carrier boxes small_8065201_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8065201_left_root small_8065201_left_fuel small_8065201_left_count small_8065201_left_encoded small_8065201_left_checked

theorem cover_8065201 : CoveredBy scale carrier boxes root_8065201 := by
  apply coveredBy_split_literal root_8065201 small_8065201_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.root_8065207 coord0 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_8065201_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.cover_8065207
#print axioms cover_8065201

def root_8069720 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8069720_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8069720_right_fuel : Nat := 24
def small_8069720_right_count : Nat := 475
def small_8069720_right_encoded : String := "1151E905000000020A0001061151E907000000030A0001081151E8FF08A91301120701000000000008A912F90000000A120700F80000000A0000000112073D0008A912F912073CF800000001050000FA135D81050500010600000005135D81070500010800000005135D80FF000000040000000A00000003000000020000000A120700F8050000FA135D81050500010600000009135D810705000108135D44FF000000050000000400000009000000030000000200000009000000010000000000000004115224FF0000000408A91301120701000000000008A912F912073CF80000000108A912FF12073D080000000A000000040000000A120700F808A912FF12073D08050000FA135D81050500010600000007135D810704548A0100000007000000070000000300000002135D4505000000020000000A000000041207010800000004050000FA00000007000000070000000112073D0008A912F912073CF80000000108A912FF12073D08050000FA135D810505000106135D4507000000030CFD9C010000000A0000000A135D81070CFD9C010F34D100000000000000000A0F350D000CFD9BF90000000A0F34D0F80000000900000001000000000000000300000002135D4505000000020000000A000000041207010800000004050000FA135D81050000000A000000020000000A120700F808A912FF12073D08050000FA135D8105000000090000000200000009000000041207010800000004050000FA135D81050500010600000009135D81070CFD9C010F34D10000000000000000070000000A0000000300000002135D4505000000020000000A0000000100000000115225070A0001081151E8FF08A91301120701000000000008A912F912073CF80000000108A913071207010600000003050000FA0000000A0000000A0000000A120700F80000000A0000000112073D0008A912F912073CF80000000108A913071207010600000003050000FA135D810505000108135D44FF00000006000000040000000600000002135D45050000000205000108135D44FF0CFD9C010F34D10000000000000000060000000600000004135D80FF000000040CFD9C010F34D10000000000000000060000000612073D06050000FA135D810505000108135D44FF0CFD9C010F34D100000000000CFD9BF90000000A0000000A0F350D000CFD9BF9000000050F34D0F800000005000000010000000000000004135D80FF000000040CFD9C010F34D100000000000000000A0F350D000CFD9BF90F350CF8000000010CFD9C070F34D10600000003000000060F350D060000000A000000030F34D0F80000000A000000010000000000000002135D45050000000205000108135D44FF0CFD9C010F34D100000000000000000A0F350D000CFD9BF90F350CF8000000010CFD9C070F34D106000000030C9A87000F87510100000000000000080F878D010000000A00000000000000080F34D0F80000000A000000010000000000000004135D80FF000000040CFD9C010F34D100000000000000000A0F350D000CFD9BF90F350CF8000000010CFD9C070000000A0000000A0F34D0F800000009000000010000000000000003120700F808A9130712070106000000030000000612073D06050000FA135D810505000108135D44FF0CFD9C01000000050000000600000004135D80FF000000040CFD9C010F34D10000000000000000060000000600000002135D4505000000020000000A00000003000000010000000000000004115224FF0000000408A91301120701000000000008A912F912073CF80000000108A913070000000A12073D060000000A00000003120700F808A913070000000A12073D0608A912FF12073D08050000FA135D810504548A0113867100000000000000000A0000000A000000020000000A000000040000000A000000030000000112073D0008A912F912073CF80000000108A91307120701060000000308A912FF12073D08050000FA135D81050CFD9C010000000A0F350D000CFD9BF900000006000000060000000000000002135D4505000000020CFD9C010000000A0F350D000CFD9BF90000000A0000000A00000000000000040000000A12073D0608A912FF12073D08050000FA135D81050CFD9C010F34D100000000000000000A0F350D000CFD9BF90000000A0F34D0F80000000A000000010000000000000002135D4505000000020000000A000000040000000A00000003120700F808A91307120701060000000308A912FF12073D080000000A000000040000000A12073D0608A912FF12073D08050000FA135D81050CFD9C010F34D10000000000045489F90000000A138670F80CFD9C070000000600000009000000010F350D00045489F91386ACF8000000010CFD9C070000000A0F350D060000000A00000003138670F80CFD9C07000000060F350D060000000900000003000000010000000000000002135D4505000000020CFD9C010F34D100000000000000000A0000000A000000041207010800000004050000FA135D81050CFD9C010F34D100000000000000000A0F350D00045489F90000000A138670F80000000A0000000100000000000000020000000A00000003000000010000000000000003"
theorem small_8069720_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8069720_right_root small_8069720_right_fuel small_8069720_right_count small_8069720_right_encoded = true := by
  decide +kernel
theorem small_8069720_right_covered : CoveredBy scale carrier boxes small_8069720_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8069720_right_root small_8069720_right_fuel small_8069720_right_count small_8069720_right_encoded small_8069720_right_checked

theorem cover_8069720 : CoveredBy scale carrier boxes root_8069720 := by
  apply coveredBy_split_literal root_8069720 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3029.root small_8069720_right_root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3029.covered
  · exact small_8069720_right_covered
#print axioms cover_8069720

def root_8069714 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8069714_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8069714_left_fuel : Nat := 1
def small_8069714_left_count : Nat := 1
def small_8069714_left_encoded : String := "00000001"
theorem small_8069714_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8069714_left_root small_8069714_left_fuel small_8069714_left_count small_8069714_left_encoded = true := by
  decide +kernel
theorem small_8069714_left_covered : CoveredBy scale carrier boxes small_8069714_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8069714_left_root small_8069714_left_fuel small_8069714_left_count small_8069714_left_encoded small_8069714_left_checked

theorem cover_8069714 : CoveredBy scale carrier boxes root_8069714 := by
  apply coveredBy_split_literal root_8069714 small_8069714_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.root_8069720 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_8069714_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.cover_8069720
#print axioms cover_8069714

def root_8075677 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8075677_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8075677_left_fuel : Nat := 23
def small_8075677_left_count : Nat := 145
def small_8075677_left_encoded : String := "120701000000000008A913071207010600000003050000F8135D80F900000001050000FA135D810505000108135D44FF04548A010000000A00000006000000040000000A00000002135D45050000000205000108135D44FF04548A010000000A1386AD0004548A07000000060000000A00000000000000040000000A135D44F9050000FA135D810505000108135D44FF04548A01000000081386AD0004548A07000000061386AD06028000F813D7ECF900000001078000FA000000060000000A00000008000000030000000000000004135D80FF000000040000000800000002135D45050000000205000108135D44FF04548A01138671000000000004548A07000000080000000A1386AD0004548A071386710600000003028000F800000006000000051386AD06028000F80000000A13D7B0F9028000FA13D7ED050280010813D7B0FF067ECE810000000812EA9500067ECE87000000060000000A000000000000000400000005000000020000000500000001000000030000000000000004000000050000000112073D06050000F8135D80F900000001050000FA0000000A0000000A135D44F9050000FA135D810505000108135D44FF04548A010000000A1386AD000CFD9C070F34D10600000003028000F80000000A13D7B0F9078000FA0000000A0000000A000000010F350D060000000A0000000300000000000000040000000A00000002135D45050000000205000108135D44FF04548A010000000A1386AD000CFD9C070000000A0000000A00000000000000040000000A0000000100000003"
theorem small_8075677_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8075677_left_root small_8075677_left_fuel small_8075677_left_count small_8075677_left_encoded = true := by
  decide +kernel
theorem small_8075677_left_covered : CoveredBy scale carrier boxes small_8075677_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8075677_left_root small_8075677_left_fuel small_8075677_left_count small_8075677_left_encoded small_8075677_left_checked

theorem cover_8075677 : CoveredBy scale carrier boxes root_8075677 := by
  apply coveredBy_split_literal root_8075677 small_8075677_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3031.root coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_8075677_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3031.covered
#print axioms cover_8075677

def root_8075672 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8075672_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8075672_right_fuel : Nat := 1
def small_8075672_right_count : Nat := 1
def small_8075672_right_encoded : String := "00000004"
theorem small_8075672_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8075672_right_root small_8075672_right_fuel small_8075672_right_count small_8075672_right_encoded = true := by
  decide +kernel
theorem small_8075672_right_covered : CoveredBy scale carrier boxes small_8075672_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8075672_right_root small_8075672_right_fuel small_8075672_right_count small_8075672_right_encoded small_8075672_right_checked

theorem cover_8075672 : CoveredBy scale carrier boxes root_8075672 := by
  apply coveredBy_split_literal root_8075672 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.root_8075677 small_8075672_right_root coord4 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.cover_8075677
  · exact small_8075672_right_covered
#print axioms cover_8075672

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194
