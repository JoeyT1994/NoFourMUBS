import TaoBundleChunkBatch0765
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0563
def root_8161382 : ZRayBox := fun j => (#[⟨⟨(2097152), (4194304)⟩, ⟨(16243968), (16645888)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(-15553280), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8161382_right_root : ZRayBox := fun j => (#[⟨⟨(2097152), (4194304)⟩, ⟨(16243968), (16645888)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(-15553280), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-6291456), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8161382_right_fuel : Nat := 17
def small_8161382_right_count : Nat := 77
def small_8161382_right_encoded : String := "128A40FD022A458913E1C508000000040DE7CA040E5FD8FB03C0010013A511010000000008C000F8000000060000000A00000008000000020E6014FB0000000203C0010013A511010000000008C000F811FC24F900000001064000FC12FFACFD00000003011523490000000A13F895080DAED87B0E96610400000006000000020E96250400000002032001000000000A00000008000000040000000611FBE8F9064000FC12FFACFD000000030000000A000000050000000113A54D0108C000F811FC24F900000001064000FC12FFACFD000000030115234913F8590800000004000000050000000800000005000000050000000013E201080DE7CA04000000080E6014FB0000000203C0010013A511010000000008C000F811FC24F9000000010000000800000008000000080000000400000003"
theorem small_8161382_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8161382_right_root small_8161382_right_fuel small_8161382_right_count small_8161382_right_encoded = true := by
  decide +kernel
theorem small_8161382_right_covered : CoveredBy scale carrier boxes small_8161382_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8161382_right_root small_8161382_right_fuel small_8161382_right_count small_8161382_right_encoded small_8161382_right_checked

theorem cover_8161382 : CoveredBy scale carrier boxes root_8161382 := by
  apply coveredBy_split_literal root_8161382 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3057.root small_8161382_right_root coord3 false (-6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3057.covered
  · exact small_8161382_right_covered
#print axioms cover_8161382

def root_8161376 : ZRayBox := fun j => (#[⟨⟨(2097152), (4194304)⟩, ⟨(16243968), (16645888)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8161376_left_root : ZRayBox := fun j => (#[⟨⟨(2097152), (4194304)⟩, ⟨(16243968), (16645888)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(-16244736), (-15553280)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8161376_left_fuel : Nat := 1
def small_8161376_left_count : Nat := 1
def small_8161376_left_encoded : String := "00000001"
theorem small_8161376_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8161376_left_root small_8161376_left_fuel small_8161376_left_count small_8161376_left_encoded = true := by
  decide +kernel
theorem small_8161376_left_covered : CoveredBy scale carrier boxes small_8161376_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8161376_left_root small_8161376_left_fuel small_8161376_left_count small_8161376_left_encoded small_8161376_left_checked

theorem cover_8161376 : CoveredBy scale carrier boxes root_8161376 := by
  apply coveredBy_split_literal root_8161376 small_8161376_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0563.root_8161382 coord1 true (-15553280)
  · decide +kernel
  · decide +kernel
  · exact small_8161376_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0563.cover_8161382
#print axioms cover_8161376

def root_8161375 : ZRayBox := fun j => (#[⟨⟨(2097152), (4194304)⟩, ⟨(16243968), (16645888)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8161375_right_root : ZRayBox := fun j => (#[⟨⟨(2097152), (4194304)⟩, ⟨(16243968), (16645888)⟩⟩, ⟨⟨(-6291456), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8161375_right_fuel : Nat := 16
def small_8161375_right_count : Nat := 111
def small_8161375_right_encoded : String := "128A40F9078000FC128A7CFD00000003022A458913E1C508000000040DE7CA040E5FD8FB03C0010013A5110100000000064000F812FFACF90000000108C000FC000000070000000A0000000713A54D01064000F812FFACF90000000108C000FC00000007000000050000000500000000000000020E6014FB0000000203C0010013A5110100000000064000F812FFACF90000000108C000FC11FC24FD00000003011523490000000A000000070000000A12FF70F908C000FC00000007000000050000000113A54D01064000F812FFACF90000000108C000FC11FC24FD000000030115234913F8590800000004000000050000000700000005000000050000000013E201080DE7CA04000000070E6014FB0000000203C0010013A51101000000000000000713A54D01064000F812FFACF90000000108C000FC0000000611FBE8FD0000000700000003000000070000000000000004128A40FD022A458913E1C508000000040DE7CA040E5FD8FB00000005000000020000000513E201080DE7CA04000000080E6014FB0000000203C0010013A5110100000000064000F812FFACF900000001000000080000000500000005000000040000000300000001"
theorem small_8161375_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8161375_right_root small_8161375_right_fuel small_8161375_right_count small_8161375_right_encoded = true := by
  decide +kernel
theorem small_8161375_right_covered : CoveredBy scale carrier boxes small_8161375_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8161375_right_root small_8161375_right_fuel small_8161375_right_count small_8161375_right_encoded small_8161375_right_checked

theorem cover_8161375 : CoveredBy scale carrier boxes root_8161375 := by
  apply coveredBy_split_literal root_8161375 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0563.root_8161376 small_8161375_right_root coord1 false (-6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0563.cover_8161376
  · exact small_8161375_right_covered
#print axioms cover_8161375

def root_8161370 : ZRayBox := fun j => (#[⟨⟨(2097152), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8161370_right_root : ZRayBox := fun j => (#[⟨⟨(2097152), (4194304)⟩, ⟨(16645888), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8161370_right_fuel : Nat := 1
def small_8161370_right_count : Nat := 1
def small_8161370_right_encoded : String := "00000000"
theorem small_8161370_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8161370_right_root small_8161370_right_fuel small_8161370_right_count small_8161370_right_encoded = true := by
  decide +kernel
theorem small_8161370_right_covered : CoveredBy scale carrier boxes small_8161370_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8161370_right_root small_8161370_right_fuel small_8161370_right_count small_8161370_right_encoded small_8161370_right_checked

theorem cover_8161370 : CoveredBy scale carrier boxes root_8161370 := by
  apply coveredBy_split_literal root_8161370 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0563.root_8161375 small_8161370_right_root coord0 true (16645888)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0563.cover_8161375
  · exact small_8161370_right_covered
#print axioms cover_8161370

def root_8160400 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8160400_left_root : ZRayBox := fun j => (#[⟨⟨(0), (2097152)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8160400_left_fuel : Nat := 25
def small_8160400_left_count : Nat := 461
def small_8160400_left_encoded : String := "13D7B10100000000078000F8128A7CF900000001078000FC128A7CFD00000003022A458913E1C508000000040DE7CA040E5FD8FB0140010013F5D9010000000008C000F811FC24F90000000108C000FC11FC24FD00000003011523490000000A000000050000000A0000000A13F6150108C000F811FC24F90000000108C000FC11FC24FD000000030115234913F85908000000040D4128840000000A0EFA4CFB000000020000000A13F895080D412884000000050EFA4CFB0000000201E0010000000005000000070000000411FBE8FD011523490000000613F895080D412884000000060EFA4CFB000000020000000A000000040000000311FBE8F908C000FC11FC24FD00000003011523490000000A000000070000000A0000000100000000000000020E6014FB000000020140010013F5D9010000000008C000F811FC24F90000000108C000FC11FC24FD00000003011523490000000A000000050000000A11FBE8F90000000A0000000113F6150108C000F811FC24F90000000108C000FC11FC24FD000000030115234913F85908000000040DAED87B0E96610401E001000000000A13E99501096000F811AABCF9000000010000000A0000000A00000000000000020E9625040000000201E001000000000913E99501096000F8000000090000000A0000000013F895080DAED87B0E96610401E001000000000513E99501096000F80000000511AA80F9096000FC000000050000000A0000000100000000000000020E9625040000000201E001000000000513E99501096000F80000000500000009000000000000000411FBE8FD011523490000000A13F895080DAED87B0E96610401E001000000000A13E99501096000F811AABCF900000001000000090000000A00000000000000020E9625040000000200000009000000040000000311FBE8F908C000FC11FC24FD00000003011523490000000A13F895080DAED87B0E96610400000007000000020E9625040000000201E001000000000A13E99501082000F8124698F900000001096000FC000000060000000A0000000600000000000000040000000A000000010000000013E201080DE7CA040E5FD8FB0140010013F5D9010000000008C000F811FC24F90000000108C000FC0000000511FBE8FD00000007000000030000000713F6150108C000F811FC24F90000000108C000FC0000000711FBE8FD033F67C913BBF508000000040D412884000000070EFA4CFB000000020000000700000007000000030000000700000000000000020E6014FB000000020140010013F5D9010000000008C000F811FC24F90000000108C000FC0000000511FBE8FD000000090000000311FBE8F908C000FC0000000711FBE8FD033F67C90000000A00000007000000030000000113F6150108C000F811FC24F90000000108C000FC11FC24FD00000003033F67C913BBF508000000040DAED87B0E9661040000000500000002000000050000000511FBE8FD033F67C913BBF508000000040DAED87B0E96610401E001000000000913E99501096000F80000000911AA80F9000000070000000100000000000000020E962504000000020000000913BC31080DAED87B0E96610400000007000000020E9625040000000200000009000000040000000311FBE8F908C000FC11FC24FD000000030000000711FBE8FD033F67C913BBF508000000040DAED87B0E96610400000007000000020E9625040000000201E001000000000A13E99501082000F8124698F900000001082000FC000000070000000A00000007000000000000000700000003000000010000000000000004128A40FD022A458913E1C508000000040DE7CA040000000A0E6014FB00000002014001000000000A13F6150108C000F811FC24F9000000010000000A0000000A0000000013E201080DE7CA040E5FD8FB0140010013F5D9010000000008C000F811FC24F900000001000000080000000800000008000000020E6014FB000000020140010013F5D9010000000008C000F811FC24F9000000010000000911FBE8F9064000FC12FFACFD000000030000000A0000000A0000000113F6150108C000F811FC24F900000001064000FC12FFACFD00000003033F67C913BBF508000000040DAED87B0E966104000000080000000200000009000000080000000811FBE8F9064000FC12FFACFD00000003033F67C90000000A000000080000000800000001000000000000000400000003128A40F9078000FC128A7CFD00000003022A458913E1C508000000040DE7CA040000000A0E6014FB00000002014001000000000A13F61501064000F812FFACF9000000010000000A0000000A0000000013E201080DE7CA04000000070E6014FB0000000201400100000000070000000700000004128A40FD022A45890000000A13E201080DE7CA040E5FD8FB00000007000000020E6014FB00000002014001000000000A13F61501064000F812FFACF900000001064000FC12FFACFD00000003033F67C90000000A00000007000000080000000A00000000000000040000000300000001"
theorem small_8160400_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8160400_left_root small_8160400_left_fuel small_8160400_left_count small_8160400_left_encoded = true := by
  decide +kernel
theorem small_8160400_left_covered : CoveredBy scale carrier boxes small_8160400_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8160400_left_root small_8160400_left_fuel small_8160400_left_count small_8160400_left_encoded small_8160400_left_checked

theorem cover_8160400 : CoveredBy scale carrier boxes root_8160400 := by
  apply coveredBy_split_literal root_8160400 small_8160400_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0563.root_8161370 coord0 false (2097152)
  · decide +kernel
  · decide +kernel
  · exact small_8160400_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0563.cover_8161370
#print axioms cover_8160400

def root_8160394 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8160394_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-13027072)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8160394_left_fuel : Nat := 1
def small_8160394_left_count : Nat := 1
def small_8160394_left_encoded : String := "00000002"
theorem small_8160394_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8160394_left_root small_8160394_left_fuel small_8160394_left_count small_8160394_left_encoded = true := by
  decide +kernel
theorem small_8160394_left_covered : CoveredBy scale carrier boxes small_8160394_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8160394_left_root small_8160394_left_fuel small_8160394_left_count small_8160394_left_encoded small_8160394_left_checked

theorem cover_8160394 : CoveredBy scale carrier boxes root_8160394 := by
  apply coveredBy_split_literal root_8160394 small_8160394_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0563.root_8160400 coord2 true (-13027072)
  · decide +kernel
  · decide +kernel
  · exact small_8160394_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0563.cover_8160400
#print axioms cover_8160394

def root_8160182 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8160182_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (10572672)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8160182_left_fuel : Nat := 19
def small_8160182_left_count : Nat := 99
def small_8160182_left_encoded : String := "0F8750FB0280010013D7B10100000000078000F8128A7CF900000001078000FC128A7CFD00000003022A458913E1C508000000040B4D44040000000610804CFB000000020140010013F5D9010000000008C000F8000000060000000713F6150108C000F800000006000000070000000000000007128A40FD0000000600000003128A40F9078000FC00000007128A40FD022A45890000000A00000007000000030000000113D7ED01078000F8128A7CF900000001078000FC128A7CFD00000003022A458913E1C508000000040B4D4404108010FB000000060000000210804CFB0000000203C0010013A511010000000008C000F811FC24F90000000108C000FC11FC24FD00000003000000070000000611FBE8F9000000070000000113A54D0108C000F811FC24F90000000108C000FC11FC24FD000000030115234900000006000000070000000611FBE8F900000007000000010000000000000008128A40FD0000000800000003128A40F9078000FC00000007128A40FD0000000800000003000000010000000000000002"
theorem small_8160182_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8160182_left_root small_8160182_left_fuel small_8160182_left_count small_8160182_left_encoded = true := by
  decide +kernel
theorem small_8160182_left_covered : CoveredBy scale carrier boxes small_8160182_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8160182_left_root small_8160182_left_fuel small_8160182_left_count small_8160182_left_encoded small_8160182_left_checked

theorem cover_8160182 : CoveredBy scale carrier boxes root_8160182 := by
  apply coveredBy_split_literal root_8160182 small_8160182_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0563.root_8160394 coord2 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_8160182_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0563.cover_8160394
#print axioms cover_8160182

def root_8160176 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8160176_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8160176_left_fuel : Nat := 1
def small_8160176_left_count : Nat := 1
def small_8160176_left_encoded : String := "00000004"
theorem small_8160176_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8160176_left_root small_8160176_left_fuel small_8160176_left_count small_8160176_left_encoded = true := by
  decide +kernel
theorem small_8160176_left_covered : CoveredBy scale carrier boxes small_8160176_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8160176_left_root small_8160176_left_fuel small_8160176_left_count small_8160176_left_encoded small_8160176_left_checked

theorem cover_8160176 : CoveredBy scale carrier boxes root_8160176 := by
  apply coveredBy_split_literal root_8160176 small_8160176_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0563.root_8160182 coord4 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_8160176_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0563.cover_8160182
#print axioms cover_8160176

def root_8160175 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8160175_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8160175_right_fuel : Nat := 19
def small_8160175_right_count : Nat := 119
def small_8160175_right_encoded : String := "1386AD080C9A87040F8750FB0280010013D7B10100000000078000F8128A7CF900000001078000FC00000007000000080000000700000008000000020F878CFB000000020280010013D7B10100000000078000F8128A7CF900000001078000FC128A7CFD00000003067ECE8912EA5908000000040DE7CA040E5FD8FB00000007000000020E6014FB000000020140010013F5D9010000000008C000F8000000050000000713F6150108C000F811FC24F90000000100000005000000070000000000000007128A40FD067ECE8912EA5908000000040DE7CA04000000080E6014FB000000020140010013F5D9010000000008C000F80000000900000008000000080000000800000003128A40F9078000FC00000007128A40FD067ECE8912EA5908000000040000000700000007000000030000000113D7ED01078000F8128A7CF900000001078000FC128A7CFD00000003067ECE8912EA5908000000040DE7CA04000000080E6014FB0000000203C0010013A511010000000008C000F811FC24F90000000108C000FC00000007000000080000000713A54D0108C000F800000008000000070000000000000008128A40FD0000000800000003128A40F9078000FC00000007128A40FD0000000800000003000000010000000000000004"
theorem small_8160175_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8160175_right_root small_8160175_right_fuel small_8160175_right_count small_8160175_right_encoded = true := by
  decide +kernel
theorem small_8160175_right_covered : CoveredBy scale carrier boxes small_8160175_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8160175_right_root small_8160175_right_fuel small_8160175_right_count small_8160175_right_encoded small_8160175_right_checked

theorem cover_8160175 : CoveredBy scale carrier boxes root_8160175 := by
  apply coveredBy_split_literal root_8160175 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0563.root_8160176 small_8160175_right_root coord4 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0563.cover_8160176
  · exact small_8160175_right_covered
#print axioms cover_8160175

def root_8160170 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8160170_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8160170_right_fuel : Nat := 1
def small_8160170_right_count : Nat := 1
def small_8160170_right_encoded : String := "00000002"
theorem small_8160170_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8160170_right_root small_8160170_right_fuel small_8160170_right_count small_8160170_right_encoded = true := by
  decide +kernel
theorem small_8160170_right_covered : CoveredBy scale carrier boxes small_8160170_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8160170_right_root small_8160170_right_fuel small_8160170_right_count small_8160170_right_encoded small_8160170_right_checked

theorem cover_8160170 : CoveredBy scale carrier boxes root_8160170 := by
  apply coveredBy_split_literal root_8160170 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0563.root_8160175 small_8160170_right_root coord2 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0563.cover_8160175
  · exact small_8160170_right_covered
#print axioms cover_8160170

def root_8160169 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8160169 : CoveredBy scale carrier boxes root_8160169 := by
  apply coveredBy_split_literal root_8160169 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0563.root_8160170 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3058.root coord2 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0563.cover_8160170
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3058.covered
#print axioms cover_8160169

def root_8160163 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8160163_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8160163_left_fuel : Nat := 1
def small_8160163_left_count : Nat := 1
def small_8160163_left_encoded : String := "00000003"
theorem small_8160163_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8160163_left_root small_8160163_left_fuel small_8160163_left_count small_8160163_left_encoded = true := by
  decide +kernel
theorem small_8160163_left_covered : CoveredBy scale carrier boxes small_8160163_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8160163_left_root small_8160163_left_fuel small_8160163_left_count small_8160163_left_encoded small_8160163_left_checked

theorem cover_8160163 : CoveredBy scale carrier boxes root_8160163 := by
  apply coveredBy_split_literal root_8160163 small_8160163_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0563.root_8160169 coord3 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_8160163_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0563.cover_8160169
#print axioms cover_8160163

def root_8160162 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8160162_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8160162_right_fuel : Nat := 19
def small_8160162_right_count : Nat := 199
def small_8160162_right_encoded : String := "135D44FD0CFD9BFB0F350D0404548A0913867108000000040C9A87040F8750FB00000006000000020F878CFB000000020280010013D7B10100000000078000F8128A7CF900000001028000FC13D7ECFD00000003022A45890000000600000008000000060000000A13D7ED01078000F8128A7CF900000001028000FC13D7ECFD00000003022A4589000000060000000800000005000000050000000000000008000000020F34D1040000000204548A0913867108000000040280010013D7B10100000000078000F8128A7CF900000001028000FC13D7ECFD000000030AD3577B10D13D04022A45890000000A00000009000000020000000913D7B0FD0AD3577B10D13D040000000A000000020000000900000003128A40F9028000FC13D7ECFD000000030AD3577B10D13D040000000A0000000210D101040000000200000005000000050000000113D7ED01078000F8128A7CF900000001028000FC13D7ECFD000000030AD3577B10D13D04022A45890000000513E2010803C0010013A511010000000008C000F8000000080000000500000005000000040000000210D1010400000002022A458900000005000000090000000500000005000000001386AD080280010013D7B10100000000078000F8128A7CF900000001028000FC13D7ECFD000000030AD3577B10D13D04067ECE8912EA5908000000040000000800000008000000020000000913D7B0FD0000000800000003128A40F9028000FC13D7ECFD000000030AD3577B10D13D04067ECE8912EA5908000000040140010013F5D90100000000064000F8000000080000000800000008000000080000000210D1010400000002067ECE8912EA590800000004000000090000000913D7B0FD0AD3577B0000000810D101040000000200000009000000030000000113D7ED01078000F8128A7CF900000001028000FC13D7ECFD000000030AD3577B0000000810D1010400000002067ECE8912EA590800000004000000080000000800000008128A40F9028000FC13D7ECFD000000030AD3577B0000000810D1010400000002067ECE8900000005000000080000000500000001000000000000000400000003"
theorem small_8160162_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8160162_right_root small_8160162_right_fuel small_8160162_right_count small_8160162_right_encoded = true := by
  decide +kernel
theorem small_8160162_right_covered : CoveredBy scale carrier boxes small_8160162_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8160162_right_root small_8160162_right_fuel small_8160162_right_count small_8160162_right_encoded small_8160162_right_checked

theorem cover_8160162 : CoveredBy scale carrier boxes root_8160162 := by
  apply coveredBy_split_literal root_8160162 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0563.root_8160163 small_8160162_right_root coord3 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0563.cover_8160163
  · exact small_8160162_right_covered
#print axioms cover_8160162

def root_8160156 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8160156_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8160156_left_fuel : Nat := 1
def small_8160156_left_count : Nat := 1
def small_8160156_left_encoded : String := "00000001"
theorem small_8160156_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8160156_left_root small_8160156_left_fuel small_8160156_left_count small_8160156_left_encoded = true := by
  decide +kernel
theorem small_8160156_left_covered : CoveredBy scale carrier boxes small_8160156_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8160156_left_root small_8160156_left_fuel small_8160156_left_count small_8160156_left_encoded small_8160156_left_checked

theorem cover_8160156 : CoveredBy scale carrier boxes root_8160156 := by
  apply coveredBy_split_literal root_8160156 small_8160156_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0563.root_8160162 coord1 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_8160156_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0563.cover_8160162
#print axioms cover_8160156

def root_8160155 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8160155_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8160155_right_fuel : Nat := 19
def small_8160155_right_count : Nat := 171
def small_8160155_right_encoded : String := "135D44F9050000FC135D80FD000000030CFD9BFB0F350D0404548A0913867108000000040C9A87040F8750FB028001000000000700000007000000020F878CFB000000020280010013D7B10100000000028000F813D7ECF900000001078000FC128A7CFD00000003022A45890000000A000000070000000A0000000A13D7ED01028000F813D7ECF900000001078000FC128A7CFD00000003022A458913E1C508000000040DE7CA040000000700000005000000070000000500000005000000001386AD080C9A8704000000070F878CFB0000000202800100000000070000000700000004000000020F34D1040000000204548A0913867108000000040280010013D7B10100000000028000F813D7ECF900000001078000FC128A7CFD0000000300000006128A40FD0AD3577B10D13D040000000A0000000210D1010400000002000000050000000313D7B0F9078000FC00000006000000050000000113D7ED01028000F813D7ECF900000001078000FC000000060000000500000005000000001386AD080280010013D7B10100000000028000F813D7ECF900000001078000FC00000006128A40FD0AD3577B10D13D04000000070000000200000006000000030000000613D7ED01028000F813D7ECF900000001078000FC00000006128A40FD0AD3577B10D13D0400000006000000020000000600000003000000060000000000000004135D44FD0CFD9BFB0F350D0404548A0913867108000000040C9A87040000000A0000000500000008000000020F34D1040000000204548A09000000051386AD080280010013D7B10100000000028000F813D7ECF900000001028000FC13D7ECFD000000030AD3577B10D13D04067ECE8900000005000000070000000210D1010400000002067ECE890000000500000006000000050000000500000005000000040000000300000001"
theorem small_8160155_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8160155_right_root small_8160155_right_fuel small_8160155_right_count small_8160155_right_encoded = true := by
  decide +kernel
theorem small_8160155_right_covered : CoveredBy scale carrier boxes small_8160155_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8160155_right_root small_8160155_right_fuel small_8160155_right_count small_8160155_right_encoded small_8160155_right_checked

theorem cover_8160155 : CoveredBy scale carrier boxes root_8160155 := by
  apply coveredBy_split_literal root_8160155 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0563.root_8160156 small_8160155_right_root coord1 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0563.cover_8160156
  · exact small_8160155_right_covered
#print axioms cover_8160155

def root_8160149 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8160149_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(14529024), (16243968)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8160149_left_fuel : Nat := 1
def small_8160149_left_count : Nat := 1
def small_8160149_left_encoded : String := "00000000"
theorem small_8160149_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8160149_left_root small_8160149_left_fuel small_8160149_left_count small_8160149_left_encoded = true := by
  decide +kernel
theorem small_8160149_left_covered : CoveredBy scale carrier boxes small_8160149_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8160149_left_root small_8160149_left_fuel small_8160149_left_count small_8160149_left_encoded small_8160149_left_checked

theorem cover_8160149 : CoveredBy scale carrier boxes root_8160149 := by
  apply coveredBy_split_literal root_8160149 small_8160149_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0563.root_8160155 coord0 true (16243968)
  · decide +kernel
  · decide +kernel
  · exact small_8160149_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0563.cover_8160155
#print axioms cover_8160149

def root_8160148 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8160148 : CoveredBy scale carrier boxes root_8160148 := by
  apply coveredBy_split_literal root_8160148 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0563.root_8160149 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3059.root coord0 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0563.cover_8160149
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3059.covered
#print axioms cover_8160148

def root_8160142 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8160142_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8160142_left_fuel : Nat := 1
def small_8160142_left_count : Nat := 1
def small_8160142_left_encoded : String := "00000004"
theorem small_8160142_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8160142_left_root small_8160142_left_fuel small_8160142_left_count small_8160142_left_encoded = true := by
  decide +kernel
theorem small_8160142_left_covered : CoveredBy scale carrier boxes small_8160142_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8160142_left_root small_8160142_left_fuel small_8160142_left_count small_8160142_left_encoded small_8160142_left_checked

theorem cover_8160142 : CoveredBy scale carrier boxes root_8160142 := by
  apply coveredBy_split_literal root_8160142 small_8160142_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0563.root_8160148 coord4 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_8160142_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0563.cover_8160148
#print axioms cover_8160142

def root_8160141 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8160141_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8160141_right_fuel : Nat := 20
def small_8160141_right_count : Nat := 199
def small_8160141_right_encoded : String := "12073D0805000100135D450100000000050000F8135D80F900000001050000FC135D80FD000000030CFD9BFB0F350D040CFD9C090F34D108000000040C9A8704000000070F878CFB000000020280010013D7B101000000000000000713D7ED01000000080000000000000007000000020F34D104000000020CFD9C090F34D108000000040280010013D7B10100000000078000F8128A7CF900000001078000FC00000005128A40FD0AD3577B10D13D0400000008000000020000000600000003128A40F9078000FC00000006128A40FD00000006000000030000000113D7ED01078000F8128A7CF900000001078000FC00000006128A40FD000000080000000300000006000000000F350D080000000600000004135D44FD0CFD9BFB0F350D040CFD9C090F34D108000000040000000800000008000000020F34D104000000020CFD9C090F34D108000000040280010013D7B10100000000078000F80000000800000008000000080F350D080C9A87080F8751090000000400000006000000080000000400000003135D44F9050000FC135D80FD000000030CFD9BFB000000070F34D104000000020CFD9C090000000600000006135D44FD0CFD9BFB0F350D0400000007000000020F34D104000000020CFD9C090F34D1080000000400000008000000080000000300000001135D8101050000F8135D80F900000001050000FC135D80FD000000030CFD9BFB0F350D040CFD9C090F34D10800000004000000080F350D080C9A8704000000070000000A00000004000000020F34D104000000020CFD9C090F34D1080000000407800100128A410100000000078000F80000000600000006128A7D01000000060000000000000006135D44FD0CFD9BFB0F350D040CFD9C090F34D108000000040000000800000008000000020F34D104000000020CFD9C090F34D10800000004000000080000000800000003135D44F9050000FC135D80FD000000030CFD9BFB0F350D040CFD9C090F34D108000000040000000700000007000000020F34D1040000000200000006135D44FD0CFD9BFB0F350D0400000008000000020000000800000003000000010000000000000004"
theorem small_8160141_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8160141_right_root small_8160141_right_fuel small_8160141_right_count small_8160141_right_encoded = true := by
  decide +kernel
theorem small_8160141_right_covered : CoveredBy scale carrier boxes small_8160141_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8160141_right_root small_8160141_right_fuel small_8160141_right_count small_8160141_right_encoded small_8160141_right_checked

theorem cover_8160141 : CoveredBy scale carrier boxes root_8160141 := by
  apply coveredBy_split_literal root_8160141 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0563.root_8160142 small_8160141_right_root coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0563.cover_8160142
  · exact small_8160141_right_covered
#print axioms cover_8160141

def root_8160136 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8160136_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8160136_right_fuel : Nat := 1
def small_8160136_right_count : Nat := 1
def small_8160136_right_encoded : String := "00000002"
theorem small_8160136_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8160136_right_root small_8160136_right_fuel small_8160136_right_count small_8160136_right_encoded = true := by
  decide +kernel
theorem small_8160136_right_covered : CoveredBy scale carrier boxes small_8160136_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8160136_right_root small_8160136_right_fuel small_8160136_right_count small_8160136_right_encoded small_8160136_right_checked

theorem cover_8160136 : CoveredBy scale carrier boxes root_8160136 := by
  apply coveredBy_split_literal root_8160136 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0563.root_8160141 small_8160136_right_root coord2 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0563.cover_8160141
  · exact small_8160136_right_covered
#print axioms cover_8160136

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0563
