import TaoBundleAssembly0543
import TaoBundleChunkBatch0744
import TaoBundleChunkBatch0745
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0544
def root_7919510 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7919510_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7919510_left_fuel : Nat := 25
def small_7919510_left_count : Nat := 219
def small_7919510_left_encoded : String := "1151E8FD0A0001081151E9090000000408A91301120701000000000008A912FB12073CFA00000002050000F8135D80F90000000105000106135D44FD05000108135D45090000000400000007135D810904548A0100000008000000070000000400000003135D80FD0000000305000108135D45090000000404548A0113867100000000000CFD9BFB0F350CFA000000020C9A86FA000000070F8750FB00000007000000020F34D0FA00000005000000021386AD000CFD9BFB000000070000000500000000135D810904548A0113867100000000000CFD9BFB0F350CFA000000020C9A86FA0F878CFB00000002000000070F8750FB078000F8128A7CF9000000010780010600000007128A7CFD0000000307800108000000070000000700000007000000020F34D0FA00000007000000021386AD000CFD9BFB000000070F34D0FA00000007000000020000000000000004135D44F90500010600000007135D80FD0000000305000108135D45090000000400000007135D810904548A0113867100000000000CFD9BFB0000000700000007000000070000000400000001120700FA050000F800000005135D44F900000007000000010000000212073D0008A912FB12073CFA00000002050000F8135D80F9000000010500010600000005135D80FD000000030500010800000005135D81090CFD9C010F34D1000000000000000007000000070000000400000007120700FA0000000500000002000000001152250908A91301120701000000000008A912FB12073CFA0000000208A913090000000812073D08050000F8135D80F9000000010500010600000008135D80FD0000000304548A0113867100000000000CFD9BFB0F350CFA000000020CFD9C09000000080F350D080000000800000004000000081386AD000CFD9BFB0F350CFA00000002000000080000000800000000135D44F90500010600000008135D80FD0000000304548A0100000008000000080000000100000004120700FA08A913090000000812073D08050000F8135D80F9000000010500010600000008135D80FD000000030000000800000008000000040000000212073D0008A912FB12073CFA0000000208A913090000000812073D08050000F8135D80F9000000010500010600000008135D80FD000000030CFD9C010000000800000006000000080000000400000008000000000000000400000003"
theorem small_7919510_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7919510_left_root small_7919510_left_fuel small_7919510_left_count small_7919510_left_encoded = true := by
  decide +kernel
theorem small_7919510_left_covered : CoveredBy scale carrier boxes small_7919510_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7919510_left_root small_7919510_left_fuel small_7919510_left_count small_7919510_left_encoded small_7919510_left_checked

theorem cover_7919510 : CoveredBy scale carrier boxes root_7919510 := by
  apply coveredBy_split_literal root_7919510 small_7919510_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0543.root_7919974 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_7919510_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0543.cover_7919974
#print axioms cover_7919510

def root_7919504 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7919504_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7919504_left_fuel : Nat := 1
def small_7919504_left_count : Nat := 1
def small_7919504_left_encoded : String := "00000002"
theorem small_7919504_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7919504_left_root small_7919504_left_fuel small_7919504_left_count small_7919504_left_encoded = true := by
  decide +kernel
theorem small_7919504_left_covered : CoveredBy scale carrier boxes small_7919504_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7919504_left_root small_7919504_left_fuel small_7919504_left_count small_7919504_left_encoded small_7919504_left_checked

theorem cover_7919504 : CoveredBy scale carrier boxes root_7919504 := by
  apply coveredBy_split_literal root_7919504 small_7919504_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0544.root_7919510 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_7919504_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0544.cover_7919510
#print axioms cover_7919504

def root_7924288 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(-15553280), (-14529024)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(-15553280), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7924288_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(-15553280), (-14529024)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(-15553280), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(0), (2097152)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7924288_left_fuel : Nat := 20
def small_7924288_left_count : Nat := 291
def small_7924288_left_encoded : String := "13D7B10900000004022A458113E1C500000000000DE7CA060E5FD8FD08C000F811FC24F90000000108C000FA11FC24FB000000020140010813F5D9090000000401152341000000060000000513F615090115234113F85900000000000D412886000000060EFA4CFD000000030000000613F895000D412886000000050EFA4CFD00000003096000F80000000500000007000000000000000411FBE8FB014001080000000613F61509011523410000000613F895000D412886000000060EFA4CFD000000030000000600000000000000040000000211FBE8F908C000FA11FC24FB00000002014001080000000613F61509011523410000000600000007000000040000000600000001000000030E6014FD0000000308C000F811FC24F90000000108C000FA11FC24FB000000020140010813F5D9090000000401152341000000060000000513F615090115234113F85900000000000DAED87D0E966106096000F811AABCF9000000010000000600000006000000030E96250600000003096000F8000000080000000613F895000DAED87D0E966106096000F80000000511AA80F9096000FA000000050000000600000001000000030E96250600000003096000F80000000511AA80F9096000FA000000050000000600000001000000000000000411FBE8FB014001080000000613F61509011523410000000613F895000DAED87D0E966106096000F811AABCF9000000010000000800000006000000030E962506000000030000000800000000000000040000000211FBE8F908C000FA11FC24FB00000002014001080000000613F61509011523410000000613F895000DAED87D0E96610600000007000000030E96250600000003082000F8124698F900000001096000FA0000000A00000006000000060000000000000004000000060000000113E201000DE7CA060E5FD8FD08C000F811FC24F90000000108C000FA11FC24FB000000020000000511FBE8FB0140010813F5D909000000040000000713F61509033F67C113BBF500000000000D412886000000070EFA4CFD000000030000000700000007000000040000000211FBE8F90000000700000001000000030E6014FD0000000308C000F811FC24F90000000108C000FA11FC24FB00000002014001080000000513F61509033F67C113BBF500000000000DAED87D0E966106000000050000000300000005000000050000000411FBE8FB0140010813F5D909000000040000000813F61509033F67C113BBF500000000000DAED87D0E966106096000F80000000811AA80F9082000FA0000000712465CFB000000070000000200000001000000030E962506000000030000000813BC31000DAED87D0E96610600000007000000030E962506000000030000000800000000000000040000000211FBE8F908C000FA11FC24FB0000000201400108000000070000000711FBE8FB0140010813F5D90900000004033F67C1000000060000000713F61509033F67C113BBF500000000000DAED87D0E96610600000007000000030E96250600000003082000F8124698F900000001082000FA0000000700000006000000060000000700000004000000020000000100000000"
theorem small_7924288_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7924288_left_root small_7924288_left_fuel small_7924288_left_count small_7924288_left_encoded = true := by
  decide +kernel
theorem small_7924288_left_covered : CoveredBy scale carrier boxes small_7924288_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7924288_left_root small_7924288_left_fuel small_7924288_left_count small_7924288_left_encoded small_7924288_left_checked

theorem cover_7924288 : CoveredBy scale carrier boxes root_7924288 := by
  apply coveredBy_split_literal root_7924288 small_7924288_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2975.root coord4 false (2097152)
  · decide +kernel
  · decide +kernel
  · exact small_7924288_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2975.covered
#print axioms cover_7924288

def root_7924282 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(-15553280), (-14529024)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7924282_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(-15553280), (-14529024)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(-16244736), (-15553280)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7924282_left_fuel : Nat := 1
def small_7924282_left_count : Nat := 1
def small_7924282_left_encoded : String := "00000002"
theorem small_7924282_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7924282_left_root small_7924282_left_fuel small_7924282_left_count small_7924282_left_encoded = true := by
  decide +kernel
theorem small_7924282_left_covered : CoveredBy scale carrier boxes small_7924282_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7924282_left_root small_7924282_left_fuel small_7924282_left_count small_7924282_left_encoded small_7924282_left_checked

theorem cover_7924282 : CoveredBy scale carrier boxes root_7924282 := by
  apply coveredBy_split_literal root_7924282 small_7924282_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0544.root_7924288 coord2 true (-15553280)
  · decide +kernel
  · decide +kernel
  · exact small_7924282_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0544.cover_7924288
#print axioms cover_7924282

def root_7924281 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(-15553280), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7924281_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(-15553280), (-14529024)⟩⟩, ⟨⟨(-6291456), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7924281_right_fuel : Nat := 20
def small_7924281_right_count : Nat := 147
def small_7924281_right_encoded : String := "128A40FB0280010813D7B10900000004022A458113E1C500000000000DE7CA06000000060E6014FD0000000308C000F811FC24F900000001000000060000000613E201000DE7CA060E5FD8FD08C000F811FC24F9000000010000000900000009000000030E6014FD0000000308C000F811FC24F900000001064000FA12FFACFB00000002014001080000000813F61509033F67C113BBF500000000000DAED87D0E966106000000090000000300000008000000090000000412FF70FB0140010800000006000000090000000211FBE8F9064000FA12FFACFB00000002014001080000000613F61509033F67C100000006000000090000000412FF70FB01400108000000060000000600000002000000010000000013D7ED09022A458113E1C500000000000DE7CA060E5FD8FD08C000F80000000A11FBE8F9064000FA12FFACFB0000000203C0010800000006000000050000000500000001000000030E6014FD0000000308C000F811FC24F900000001064000FA12FFACFB0000000203C0010813A5110900000004011523410000000613F895000DAED87D0E96610600000009000000030E96250600000003096000F811AABCF90000000100000008000000060000000013A54D090115234113F859000000000000000005000000090000000412FF70FB0000000A0000000211FBE8F9064000FA12FFACFB0000000203C0010813A51109000000040000000600000005000000050000000113E201000DE7CA06000000090E6014FD0000000308C000F811FC24F9000000010000000900000009000000000000000400000002"
theorem small_7924281_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7924281_right_root small_7924281_right_fuel small_7924281_right_count small_7924281_right_encoded = true := by
  decide +kernel
theorem small_7924281_right_covered : CoveredBy scale carrier boxes small_7924281_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7924281_right_root small_7924281_right_fuel small_7924281_right_count small_7924281_right_encoded small_7924281_right_checked

theorem cover_7924281 : CoveredBy scale carrier boxes root_7924281 := by
  apply coveredBy_split_literal root_7924281 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0544.root_7924282 small_7924281_right_root coord2 false (-6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0544.cover_7924282
  · exact small_7924281_right_covered
#print axioms cover_7924281

def root_7924275 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7924275_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(-16244736), (-15553280)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7924275_left_fuel : Nat := 1
def small_7924275_left_count : Nat := 1
def small_7924275_left_encoded : String := "00000001"
theorem small_7924275_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7924275_left_root small_7924275_left_fuel small_7924275_left_count small_7924275_left_encoded = true := by
  decide +kernel
theorem small_7924275_left_covered : CoveredBy scale carrier boxes small_7924275_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7924275_left_root small_7924275_left_fuel small_7924275_left_count small_7924275_left_encoded small_7924275_left_checked

theorem cover_7924275 : CoveredBy scale carrier boxes root_7924275 := by
  apply coveredBy_split_literal root_7924275 small_7924275_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0544.root_7924281 coord1 true (-15553280)
  · decide +kernel
  · decide +kernel
  · exact small_7924275_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0544.cover_7924281
#print axioms cover_7924275

def root_7924274 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7924274_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-6291456), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7924274_right_fuel : Nat := 18
def small_7924274_right_count : Nat := 163
def small_7924274_right_encoded : String := "128A40F9078000FA128A7CFB000000020280010813D7B10900000004022A458113E1C500000000000DE7CA06000000060E6014FD00000003064000F812FFACF90000000108C000FA11FC24FB0000000200000006000000060000000613E201000DE7CA06000000070E6014FD00000003064000F812FFACF90000000108C000FA0000000711FBE8FB0000000700000002000000070000000013D7ED09022A458113E1C500000000000DE7CA060E5FD8FD064000F812FFACF90000000108C000FA0000000711FBE8FB03C0010800000006000000050000000200000007000000030E6014FD00000003064000F812FFACF90000000108C000FA11FC24FB0000000203C0010813A511090000000401152341000000060000000713A54D090115234113F859000000000000000005000000070000000411FBE8FB03C0010813A511090000000400000006000000050000000212FF70F908C000FA11FC24FB0000000203C001080000000700000005000000050000000113E201000DE7CA06000000070E6014FD00000003064000F812FFACF90000000108C000FA0000000711FBE8FB03C00108000000070000000700000002000000070000000000000004128A40FB0280010813D7B10900000004022A45810000000613E201000DE7CA060E5FD8FD00000007000000030E6014FD00000003064000F812FFACF900000001064000FA12FFACFB00000002014001080000000613F61509033F67C100000006000000070000000400000006000000060000000013D7ED09022A458113E1C500000000000DE7CA060E5FD8FD00000005000000030000000513E201000DE7CA06000000090E6014FD00000003064000F812FFACF900000001000000090000000500000000000000040000000200000001"
theorem small_7924274_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7924274_right_root small_7924274_right_fuel small_7924274_right_count small_7924274_right_encoded = true := by
  decide +kernel
theorem small_7924274_right_covered : CoveredBy scale carrier boxes small_7924274_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7924274_right_root small_7924274_right_fuel small_7924274_right_count small_7924274_right_encoded small_7924274_right_checked

theorem cover_7924274 : CoveredBy scale carrier boxes root_7924274 := by
  apply coveredBy_split_literal root_7924274 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0544.root_7924275 small_7924274_right_root coord1 false (-6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0544.cover_7924275
  · exact small_7924274_right_covered
#print axioms cover_7924274

def root_7924268 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7924268_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-13027072)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7924268_left_fuel : Nat := 1
def small_7924268_left_count : Nat := 1
def small_7924268_left_encoded : String := "00000003"
theorem small_7924268_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7924268_left_root small_7924268_left_fuel small_7924268_left_count small_7924268_left_encoded = true := by
  decide +kernel
theorem small_7924268_left_covered : CoveredBy scale carrier boxes small_7924268_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7924268_left_root small_7924268_left_fuel small_7924268_left_count small_7924268_left_encoded small_7924268_left_checked

theorem cover_7924268 : CoveredBy scale carrier boxes root_7924268 := by
  apply coveredBy_split_literal root_7924268 small_7924268_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0544.root_7924274 coord3 true (-13027072)
  · decide +kernel
  · decide +kernel
  · exact small_7924268_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0544.cover_7924274
#print axioms cover_7924268

def root_7924090 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7924090_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (10572672)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7924090_left_fuel : Nat := 19
def small_7924090_left_count : Nat := 85
def small_7924090_left_encoded : String := "0F8750FD078000F8128A7CF900000001078000FA128A7CFB000000020280010813D7B10900000004022A458113E1C500000000000B4D44060000000A10804CFD0000000308C000F80000000A11FBE8F908C000FA0000000700000006000000010000000713D7ED09022A458113E1C500000000000B4D4406108010FD0000000A0000000310804CFD0000000308C000F811FC24F90000000108C000FA11FC24FB0000000203C0010813A51109000000040000000713A54D09011523410000000A00000007000000040000000A11FBE8F908C000FA0000000711FBE8FB0000000900000002000000010000000900000004128A40FB0280010813D7B109000000040000000A0000000900000002128A40F9078000FA128A7CFB00000002028001080000000700000007128A40FB0280010813D7B10900000004022A4581000000060000000700000009000000020000000100000003"
theorem small_7924090_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7924090_left_root small_7924090_left_fuel small_7924090_left_count small_7924090_left_encoded = true := by
  decide +kernel
theorem small_7924090_left_covered : CoveredBy scale carrier boxes small_7924090_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7924090_left_root small_7924090_left_fuel small_7924090_left_count small_7924090_left_encoded small_7924090_left_checked

theorem cover_7924090 : CoveredBy scale carrier boxes root_7924090 := by
  apply coveredBy_split_literal root_7924090 small_7924090_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0544.root_7924268 coord3 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_7924090_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0544.cover_7924268
#print axioms cover_7924090

def root_7924085 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7924085_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7924085_right_fuel : Nat := 1
def small_7924085_right_count : Nat := 1
def small_7924085_right_encoded : String := "00000003"
theorem small_7924085_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7924085_right_root small_7924085_right_fuel small_7924085_right_count small_7924085_right_encoded = true := by
  decide +kernel
theorem small_7924085_right_covered : CoveredBy scale carrier boxes small_7924085_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7924085_right_root small_7924085_right_fuel small_7924085_right_count small_7924085_right_encoded small_7924085_right_checked

theorem cover_7924085 : CoveredBy scale carrier boxes root_7924085 := by
  apply coveredBy_split_literal root_7924085 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0544.root_7924090 small_7924085_right_root coord3 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0544.cover_7924090
  · exact small_7924085_right_covered
#print axioms cover_7924085

def root_7924084 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7924084 : CoveredBy scale carrier boxes root_7924084 := by
  apply coveredBy_split_literal root_7924084 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0544.root_7924085 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2976.root coord3 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0544.cover_7924085
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2976.covered
#print axioms cover_7924084

def root_7924078 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7924078_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7924078_left_fuel : Nat := 1
def small_7924078_left_count : Nat := 1
def small_7924078_left_encoded : String := "00000000"
theorem small_7924078_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7924078_left_root small_7924078_left_fuel small_7924078_left_count small_7924078_left_encoded = true := by
  decide +kernel
theorem small_7924078_left_covered : CoveredBy scale carrier boxes small_7924078_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7924078_left_root small_7924078_left_fuel small_7924078_left_count small_7924078_left_encoded small_7924078_left_checked

theorem cover_7924078 : CoveredBy scale carrier boxes root_7924078 := by
  apply coveredBy_split_literal root_7924078 small_7924078_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0544.root_7924084 coord0 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_7924078_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0544.cover_7924084
#print axioms cover_7924078

def root_7924077 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7924077_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7924077_right_fuel : Nat := 21
def small_7924077_right_count : Nat := 279
def small_7924077_right_encoded : String := "1386AD000CFD9BFD0F350D060C9A87060F8750FD078000F8128A7CF900000001078000FA000000070000000900000007000000030F878CFD00000003078000F8128A7CF900000001078000FA128A7CFB000000020280010813D7B10900000004067ECE8112EA5900000000000DE7CA060E5FD8FD00000007000000030E6014FD0000000308C000F811FC24F90000000100000005000000070000000713D7ED09067ECE8112EA5900000000000DE7CA06000000090E6014FD0000000308C000F811FC24F90000000108C000FA11FC24FB0000000203C0010800000005000000070000000911FBE8F908C000FA0000000700000009000000010000000900000004128A40FB0280010813D7B10900000004067ECE8112EA5900000000000DE7CA06000000090E6014FD0000000308C000F811FC24F9000000010000000900000009000000090000000900000002128A40F9078000FA128A7CFB00000002028001080000000700000007128A40FB0280010813D7B10900000004067ECE8112EA5900000000000000000700000007000000090000000200000001000000030F34D10600000003078000F8128A7CF900000001078000FA128A7CFB000000020280010813D7B10900000004067ECE8112EA5900000000000AD3577D10D13D0608C000F811FC24F900000001000000080000000A000000030000000A0000000A13D7ED09067ECE8112EA5900000000000AD3577D10D13D0608C000F80000000A0000000A000000030000000A0000000A00000004128A40FB0280010813D7B10900000004067ECE8112EA5900000000000AD3577D10D13D0608C000F80000000811FBE8F9064000FA12FFACFB00000002014001080000000813F615090569AC4100000008000000080000000412FF70FB00000008000000020000000100000003000000080000000813D7ED09067ECE8112EA5900000000000AD3577D10D13D0608C000F811FC24F90000000100000009000000090000000310D101060000000308C000F8000000080000000A12EA95000AD3577D000000090000000A000000000000000400000002128A40F9078000FA128A7CFB000000020000000A128A40FB0280010813D7B10900000004067ECE8112EA5900000000000AD3577D10D13D06064000F812FFACF900000001064000FA12FFACFB000000020140010813F5D909000000040569AC410000000A000000070000000A12FF70FB0140010800000008000000090000000212FF70F9064000FA0000000712FF70FB0140010813F5D90900000004000000070000000900000002000000010000000310D10106000000030000000A12EA95000AD3577D10D13D06064000F812FFACF900000001064000FA000000070000000900000007000000030000000A0000000013D7ED09067ECE8112EA5900000000000AD3577D10D13D06064000F812FFACF900000001064000FA0000000A0000000912FF70F9064000FA0000000A0000000500000001000000030000000A12EA95000000000A0000000000000004000000020000000100000000"
theorem small_7924077_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7924077_right_root small_7924077_right_fuel small_7924077_right_count small_7924077_right_encoded = true := by
  decide +kernel
theorem small_7924077_right_covered : CoveredBy scale carrier boxes small_7924077_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7924077_right_root small_7924077_right_fuel small_7924077_right_count small_7924077_right_encoded small_7924077_right_checked

theorem cover_7924077 : CoveredBy scale carrier boxes root_7924077 := by
  apply coveredBy_split_literal root_7924077 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0544.root_7924078 small_7924077_right_root coord0 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0544.cover_7924078
  · exact small_7924077_right_covered
#print axioms cover_7924077

def root_7924071 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7924071_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(14529024), (16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7924071_left_fuel : Nat := 1
def small_7924071_left_count : Nat := 1
def small_7924071_left_encoded : String := "00000004"
theorem small_7924071_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7924071_left_root small_7924071_left_fuel small_7924071_left_count small_7924071_left_encoded = true := by
  decide +kernel
theorem small_7924071_left_covered : CoveredBy scale carrier boxes small_7924071_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7924071_left_root small_7924071_left_fuel small_7924071_left_count small_7924071_left_encoded small_7924071_left_checked

theorem cover_7924071 : CoveredBy scale carrier boxes root_7924071 := by
  apply coveredBy_split_literal root_7924071 small_7924071_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0544.root_7924077 coord4 true (16243968)
  · decide +kernel
  · decide +kernel
  · exact small_7924071_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0544.cover_7924077
#print axioms cover_7924071

def root_7924070 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7924070 : CoveredBy scale carrier boxes root_7924070 := by
  apply coveredBy_split_literal root_7924070 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0544.root_7924071 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2977.root coord4 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0544.cover_7924071
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2977.covered
#print axioms cover_7924070

def root_7924064 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7924064_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7924064_left_fuel : Nat := 1
def small_7924064_left_count : Nat := 1
def small_7924064_left_encoded : String := "00000002"
theorem small_7924064_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7924064_left_root small_7924064_left_fuel small_7924064_left_count small_7924064_left_encoded = true := by
  decide +kernel
theorem small_7924064_left_covered : CoveredBy scale carrier boxes small_7924064_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7924064_left_root small_7924064_left_fuel small_7924064_left_count small_7924064_left_encoded small_7924064_left_checked

theorem cover_7924064 : CoveredBy scale carrier boxes root_7924064 := by
  apply coveredBy_split_literal root_7924064 small_7924064_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0544.root_7924070 coord2 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_7924064_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0544.cover_7924070
#print axioms cover_7924064

def root_7924063 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7924063_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7924063_right_fuel : Nat := 19
def small_7924063_right_count : Nat := 217
def small_7924063_right_encoded : String := "135D44FB05000108135D45090000000404548A0113867100000000000CFD9BFD0F350D060C9A87060F8750FD0000000A000000030F878CFD00000003078000F8128A7CF900000001028000FA13D7ECFB000000020280010813D7B10900000004022A4581000000060000000913D7ED09022A45810000000A00000009000000040000000A128A40F9028000FA13D7ECFB000000020280010800000006000000050000000500000001000000030F34D10600000003078000F8128A7CF900000001028000FA13D7ECFB000000020280010813D7B10900000004022A458113E1C500000000000AD3577D10D13D060000000600000003000000060000000813D7ED09022A458113E1C500000000000AD3577D0000000510D10106000000030000000513E201000AD3577D10D13D0608C000F800000009000000050000000310D101060000000300000008000000000000000413D7B0FB0280010813D7B10900000004022A458100000006000000080000000500000002128A40F9028000FA13D7ECFB000000020280010813D7B10900000004022A45810000000613E201000AD3577D10D13D06000000060000000310D101060000000300000005000000000000000500000005000000011386AD000CFD9BFD0F350D0600000009000000030F34D10600000003078000F8128A7CF900000001028000FA13D7ECFB000000020280010813D7B10900000004067ECE8112EA590000000000000000080000000813D7ED09067ECE8112EA59000000000000000009000000090000000413D7B0FB02800108000000080000000900000002128A40F9028000FA13D7ECFB000000020280010813D7B10900000004067ECE8112EA5900000000000AD3577D10D13D06064000F800000009000000090000000310D10106000000030000000812EA95000AD3577D0000000910D1010600000003000000080000000013D7ED09067ECE8112EA5900000000000AD3577D0000000510D101060000000300000005000000090000000413D7B0FB0280010813D7B10900000004067ECE8112EA590000000000000000090000000900000005000000020000000100000000135D810904548A0113867100000000000CFD9BFD0F350D0600000009000000030F34D10600000003000000051386AD000CFD9BFD0F350D06000000090000000300000009000000000000000400000002"
theorem small_7924063_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7924063_right_root small_7924063_right_fuel small_7924063_right_count small_7924063_right_encoded = true := by
  decide +kernel
theorem small_7924063_right_covered : CoveredBy scale carrier boxes small_7924063_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7924063_right_root small_7924063_right_fuel small_7924063_right_count small_7924063_right_encoded small_7924063_right_checked

theorem cover_7924063 : CoveredBy scale carrier boxes root_7924063 := by
  apply coveredBy_split_literal root_7924063 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0544.root_7924064 small_7924063_right_root coord2 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0544.cover_7924064
  · exact small_7924063_right_covered
#print axioms cover_7924063

def root_7924057 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7924057_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7924057_left_fuel : Nat := 1
def small_7924057_left_count : Nat := 1
def small_7924057_left_encoded : String := "00000001"
theorem small_7924057_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7924057_left_root small_7924057_left_fuel small_7924057_left_count small_7924057_left_encoded = true := by
  decide +kernel
theorem small_7924057_left_covered : CoveredBy scale carrier boxes small_7924057_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7924057_left_root small_7924057_left_fuel small_7924057_left_count small_7924057_left_encoded small_7924057_left_checked

theorem cover_7924057 : CoveredBy scale carrier boxes root_7924057 := by
  apply coveredBy_split_literal root_7924057 small_7924057_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0544.root_7924063 coord1 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_7924057_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0544.cover_7924063
#print axioms cover_7924057

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0544
