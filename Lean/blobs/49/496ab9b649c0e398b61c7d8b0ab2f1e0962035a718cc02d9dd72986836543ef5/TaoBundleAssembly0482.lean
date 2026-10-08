import TaoBundleAssembly0481
import TaoBundleChunkBatch0659
import TaoBundleChunkBatch0660
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0482
def root_7008622 : ZRayBox := fun j => (#[⟨⟨(2097152), (4194304)⟩, ⟨(-16645888), (-16243968)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7008622_left_root : ZRayBox := fun j => (#[⟨⟨(2097152), (4194304)⟩, ⟨(-16645888), (-16243968)⟩⟩, ⟨⟨(0), (2097152)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7008622_left_fuel : Nat := 25
def small_7008622_left_count : Nat := 371
def small_7008622_left_encoded : String := "13D7B0F9078000FC128A7D070AD3578510D10104000000020DE7CA080E5FD909000000040000000A0000000A10D13D040DE7CA080E5FD9090000000403C0010013A510F7014001020000000513F614F90000000108C000FC0000000511FBE907000000030BE879C500000007000000090000000013A54CF7000000000140010213F5D8F908C000FC0000000511FBE907000000030000000A0000000113F614F90000000108C000FC11FC25070000000A0000000311FBE907000000030BE879C510117104000000020000000A1011AD0400000009000000020E60150903C0010013A510F70140010213F5D8F908C000FC0000000511FBE907000000030BE879C50000000A1011AD040DAED8890E962508000000040000000A00000009000000020000000113F614F90000000108C000FC11FC25070BE879C50000000A1011AD040DAED8890E962508000000040000000A0000000A000000020000000311FBE907000000030BE879C510117104000000020000000A1011AD040DAED8890E962508000000040320010013C108F701E001020000000A13E994F900000001082000FC0000000A000000090000000013C144F70000000001E001020000000A13E994F900000001082000FC0000000A12465D07000000030C730AE50000000A000000090E9661080000000900000004000000020000000013A54CF7000000000140010213F5D8F908C000FC0000000A11FBE907000000030BE879C50000000A1011AD040000000A000000020000000113F614F90000000108C000FC11FC25070BE879C50000000A1011AD040DAED8890E962508000000040000000A0000000A000000020000000311FBE907000000030BE879C510117104000000020000000A1011AD040DAED8890E96250800000004046001001383DCF701E001020000000A13E994F900000001082000FC0000000A12465D07000000030C730AE5000000060000000600000000138418F70000000001E001020000000613E994F900000001082000FC0000000A000000060E966108046001001383DCF701E001020000000913E994F900000001082000FC0000000A0000000900000000138418F70000000001E001020000000A13E994F900000001082000FC0000000A000000090000000400000002000000040000000200000003128A4107000000030AD3578510D10104000000020DE7CA080E5FD9090000000403C001000000000713A54CF700000000014001020000000A000000070E60150903C0010013A510F70140010213F5D8F9064000FC0000000A0000000700000001000000070000000013A54CF700000000014001020000000A13F614F900000001064000FC0000000A000000050000000410D13D040DE7CA080E5FD90900000004000000090E60150903C0010013A510F70140010213F5D8F9064000FC12FFAD070BE879C510117104000000020000000A0000000900000003000000090000000113F614F900000001064000FC12FFAD070BE879C510117104000000020DAED8890E96250800000004032001000000000713C144F700000000000000070E96610800000007000000040000000900000003000000090000000013A54CF7000000000140010213F5D8F9064000FC12FFAD070BE879C510117104000000020000000A1011AD04000000090000000200000003000000090000000113F614F900000001064000FC12FFAD070BE879C510117104000000020DAED8890E96250800000004046001001383DCF701E001020000000A13E994F90000000106E000FC0000000A0000000500000000138418F70000000001E001020000000A000000050E966108046001001383DCF7000000070000000000000008000000041011AD040DAED8890E96250800000004046001001383DCF70000000900000000138418F70000000001E001020000000613E994F90000000106E000FC000000060000000500000009000000020000000312FF7107000000030BE879C510117104000000020DAED8890E96250800000004000000050000000800000009000000040000000200000001"
theorem small_7008622_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7008622_left_root small_7008622_left_fuel small_7008622_left_count small_7008622_left_encoded = true := by
  decide +kernel
theorem small_7008622_left_covered : CoveredBy scale carrier boxes small_7008622_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7008622_left_root small_7008622_left_fuel small_7008622_left_count small_7008622_left_encoded small_7008622_left_checked

theorem cover_7008622 : CoveredBy scale carrier boxes root_7008622 := by
  apply coveredBy_split_literal root_7008622 small_7008622_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2636.root coord1 false (2097152)
  · decide +kernel
  · decide +kernel
  · exact small_7008622_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2636.covered
#print axioms cover_7008622

def root_7008616 : ZRayBox := fun j => (#[⟨⟨(2097152), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7008616_left_root : ZRayBox := fun j => (#[⟨⟨(2097152), (4194304)⟩, ⟨(-16777216), (-16645888)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7008616_left_fuel : Nat := 1
def small_7008616_left_count : Nat := 1
def small_7008616_left_encoded : String := "00000000"
theorem small_7008616_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7008616_left_root small_7008616_left_fuel small_7008616_left_count small_7008616_left_encoded = true := by
  decide +kernel
theorem small_7008616_left_covered : CoveredBy scale carrier boxes small_7008616_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7008616_left_root small_7008616_left_fuel small_7008616_left_count small_7008616_left_encoded small_7008616_left_checked

theorem cover_7008616 : CoveredBy scale carrier boxes root_7008616 := by
  apply coveredBy_split_literal root_7008616 small_7008616_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0482.root_7008622 coord0 true (-16645888)
  · decide +kernel
  · decide +kernel
  · exact small_7008616_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0482.cover_7008622
#print axioms cover_7008616

def root_7008332 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7008332_left_root : ZRayBox := fun j => (#[⟨⟨(0), (2097152)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7008332_left_fuel : Nat := 19
def small_7008332_left_count : Nat := 135
def small_7008332_left_encoded : String := "13D7B0F70280010213D7B0F9078000FC128A7D070AD3578510D10104000000020DE7CA08000000070E601509000000070000000410D13D040DE7CA08000000050E601509014001000000000513F614F700000000014001020000000513F614F90000000108C000FC0000000511FBE907000000030BE879C5000000071011AD040000000900000002000000040000000200000003128A4107000000030AD3578510D10104000000020000000710D13D040DE7CA08000000090E601509014001000000000913F614F700000000014001020000000913F614F900000001064000FC12FFAD070BE879C50000000700000009000000030000000900000004000000020000000113D7ECF900000001078000FC128A7D070AD3578510D10104000000020000000710D13D040DE7CA080E5FD90900000004000000070E601509014001000000000713F614F70000000003C0010213A510F908C000FC11FC25070BE879C5000000071011AD040DAED8890000000700000007000000020000000311FBE907000000030BE879C5000000071011AD0400000007000000020000000113A54CF90000000108C000FC0000000700000007000000040000000200000003128A4107000000030AD357850000000710D13D040DE7CA08000000070E601509014001000000000713F614F70000000003C0010213A510F9064000FC12FFAD070000000700000003000000070000000100000007000000040000000200000000"
theorem small_7008332_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7008332_left_root small_7008332_left_fuel small_7008332_left_count small_7008332_left_encoded = true := by
  decide +kernel
theorem small_7008332_left_covered : CoveredBy scale carrier boxes small_7008332_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7008332_left_root small_7008332_left_fuel small_7008332_left_count small_7008332_left_encoded small_7008332_left_checked

theorem cover_7008332 : CoveredBy scale carrier boxes root_7008332 := by
  apply coveredBy_split_literal root_7008332 small_7008332_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0482.root_7008616 coord0 false (2097152)
  · decide +kernel
  · decide +kernel
  · exact small_7008332_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0482.cover_7008616
#print axioms cover_7008332

def root_7008327 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7008327_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(13027072), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7008327_right_fuel : Nat := 1
def small_7008327_right_count : Nat := 1
def small_7008327_right_encoded : String := "00000004"
theorem small_7008327_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7008327_right_root small_7008327_right_fuel small_7008327_right_count small_7008327_right_encoded = true := by
  decide +kernel
theorem small_7008327_right_covered : CoveredBy scale carrier boxes small_7008327_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7008327_right_root small_7008327_right_fuel small_7008327_right_count small_7008327_right_encoded small_7008327_right_checked

theorem cover_7008327 : CoveredBy scale carrier boxes root_7008327 := by
  apply coveredBy_split_literal root_7008327 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0482.root_7008332 small_7008327_right_root coord4 true (13027072)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0482.cover_7008332
  · exact small_7008327_right_covered
#print axioms cover_7008327

def root_7008105 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7008105_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (10572672)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7008105_left_fuel : Nat := 22
def small_7008105_left_count : Nat := 105
def small_7008105_left_encoded : String := "0F875109000000040280010013D7B0F70280010213D7B0F9078000FC128A7D070AD35785000000050000000900000003000000070000000113D7ECF900000001078000FC00000007000000070000000013D7ECF7000000000280010213D7B0F9078000FC128A7D070AD3578510D10104000000020000000710D13D040B4D440810801109000000040000000910804D0903C001000000000513A54CF700000000014001020000000513F614F90000000108C000FC0000000500000009000000040000000200000003128A4107000000030AD3578510D101040000000200000007000000090000000113D7ECF900000001078000FC128A7D070AD357850000000710D13D040B4D440810801109000000040000000710804D0903C001000000000713A54CF70000000003C0010213A510F908C000FC11FC25070BE879C5000000071011AD040BF3E588000000051009290900000007000000040000000200000003000000070000000113A54CF90000000108C000FC0000000700000007000000040000000200000003128A4107000000030AD357850000000710D13D040000000900000002"
theorem small_7008105_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7008105_left_root small_7008105_left_fuel small_7008105_left_count small_7008105_left_encoded = true := by
  decide +kernel
theorem small_7008105_left_covered : CoveredBy scale carrier boxes small_7008105_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7008105_left_root small_7008105_left_fuel small_7008105_left_count small_7008105_left_encoded small_7008105_left_checked

theorem cover_7008105 : CoveredBy scale carrier boxes root_7008105 := by
  apply coveredBy_split_literal root_7008105 small_7008105_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0482.root_7008327 coord4 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_7008105_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0482.cover_7008327
#print axioms cover_7008105

def root_7008100 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7008100_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7008100_right_fuel : Nat := 1
def small_7008100_right_count : Nat := 1
def small_7008100_right_encoded : String := "00000004"
theorem small_7008100_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7008100_right_root small_7008100_right_fuel small_7008100_right_count small_7008100_right_encoded = true := by
  decide +kernel
theorem small_7008100_right_covered : CoveredBy scale carrier boxes small_7008100_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7008100_right_root small_7008100_right_fuel small_7008100_right_count small_7008100_right_encoded small_7008100_right_checked

theorem cover_7008100 : CoveredBy scale carrier boxes root_7008100 := by
  apply coveredBy_split_literal root_7008100 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0482.root_7008105 small_7008100_right_root coord4 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0482.cover_7008105
  · exact small_7008100_right_covered
#print axioms cover_7008100

def root_7003560 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7003560 : CoveredBy scale carrier boxes root_7003560 := by
  apply coveredBy_split_literal root_7003560 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0481.root_7003561 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0482.root_7008100 coord4 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0481.cover_7003561
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0482.cover_7008100
#print axioms cover_7003560

def root_7003554 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7003554_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (12755968)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7003554_left_fuel : Nat := 1
def small_7003554_left_count : Nat := 1
def small_7003554_left_encoded : String := "00000002"
theorem small_7003554_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7003554_left_root small_7003554_left_fuel small_7003554_left_count small_7003554_left_encoded = true := by
  decide +kernel
theorem small_7003554_left_covered : CoveredBy scale carrier boxes small_7003554_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7003554_left_root small_7003554_left_fuel small_7003554_left_count small_7003554_left_encoded small_7003554_left_checked

theorem cover_7003554 : CoveredBy scale carrier boxes root_7003554 := by
  apply coveredBy_split_literal root_7003554 small_7003554_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0482.root_7003560 coord2 false (12755968)
  · decide +kernel
  · decide +kernel
  · exact small_7003554_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0482.cover_7003560
#print axioms cover_7003554

def root_7012100 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7012100_left_root : ZRayBox := fun j => (#[⟨⟨(0), (2097152)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7012100_left_fuel : Nat := 27
def small_7012100_left_count : Nat := 429
def small_7012100_left_encoded : String := "13D7B0F70280010213D7B0F9078000FC128A7D070AD3578910D10108000000040DE7CA04000000060E601505000000060000000210D13D080DE7CA04000000050E601505014001000000000513F614F700000000014001020000000513F614F90000000108C000FC0000000511FBE907000000030BE879C9000000061011AD080000000900000004000000020000000400000003128A4107000000030AD3578910D10108000000040000000610D13D080DE7CA04000000090E601505014001000000000913F614F700000000014001020000000913F614F900000001064000FC12FFAD070BE879C90000000600000009000000030000000900000002000000040000000113D7ECF900000001078000FC128A7D070AD3578910D10108000000040DE7CA040E5FD90500000002000000080000000810D13D080DE7CA040E5FD905000000020140010013F5D8F703C001020000000513A54CF90000000108C000FC0000000511FBE90700000003000000080000000013F614F70000000003C0010213A510F908C000FC0000000511FBE907000000030BE879C900000006000000090000000113A54CF90000000108C000FC11FC2507000000080000000311FBE907000000030BE879C91011710800000004000000081011AD0800000009000000040E6015050140010013F5D8F703C0010213A510F908C000FC0000000511FBE907000000030BE879C9000000081011AD080DAED8850E962504000000020000000800000008000000040000000113A54CF90000000108C000FC0000000811FBE907000000030BE879C9000000081011AD0800000008000000040000000013F614F70000000003C0010213A510F908C000FC11FC25070BE879C9000000081011AD080DAED8850E962504000000020000000800000008000000040000000311FBE907000000030BE879C91011710800000004000000081011AD080DAED8850E9625040000000201E0010013E958F70320010213C108F90000000800000001000000080000000013E994F7000000000320010213C108F9082000FC00000008000000090000000113C144F900000001082000FC0000000812465D07000000030C730AE900000008000000090E9661040000000900000002000000040000000113A54CF90000000108C000FC11FC25070BE879C9000000081011AD080DAED8850E962504000000020000000800000008000000040000000311FBE907000000030BE879C91011710800000004000000081011AD080DAED8850E9625040000000201E0010013E958F70460010200000008000000070000000013E994F700000000046001021383DCF9082000FC0000000812465D07000000030C730AE9000000070000000700000001138418F900000001082000FC00000008000000070E96610401E001000000000813E994F700000000046001021383DCF9082000FC000000080000000900000001138418F900000001082000FC00000008000000090000000200000004000000020000000400000003128A4107000000030AD3578910D10108000000040DE7CA040E5FD905000000020140010013F5D8F703C00102000000060000000800000000000000060E6015050140010013F5D8F703C0010213A510F9064000FC000000080000000600000001000000080000000013F614F70000000003C001020000000613A54CF900000001064000FC00000008000000050000000210D13D080DE7CA040E5FD90500000002000000090E6015050140010013F5D8F703C0010213A510F9064000FC12FFAD070BE879C91011710800000004000000080000000900000003000000090000000113A54CF900000001064000FC12FFAD070BE879C91011710800000004000000081011AD08000000090000000400000003000000090000000013F614F70000000003C0010213A510F9064000FC12FFAD070BE879C910117108000000040DAED8850E9625040000000201E0010000000008000000060E96610400000006000000020000000900000003000000090000000113A54CF900000001064000FC12FFAD070BE879C910117108000000040DAED8850E9625040000000201E001000000000813E994F700000000046001021383DCF906E000FC000000080000000500000001000000050E96610401E001000000000813E994F700000000046001020000000600000008000000021011AD080DAED8850E9625040000000201E001000000000713E994F7000000000460010200000009138418F90000000106E000FC000000070000000500000009000000040000000312FF7107000000030BE879C910117108000000040DAED8850E96250400000002000000050000000900000009000000020000000400000000"
theorem small_7012100_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7012100_left_root small_7012100_left_fuel small_7012100_left_count small_7012100_left_encoded = true := by
  decide +kernel
theorem small_7012100_left_covered : CoveredBy scale carrier boxes small_7012100_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7012100_left_root small_7012100_left_fuel small_7012100_left_count small_7012100_left_encoded small_7012100_left_checked

theorem cover_7012100 : CoveredBy scale carrier boxes root_7012100 := by
  apply coveredBy_split_literal root_7012100 small_7012100_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2637.root coord0 false (2097152)
  · decide +kernel
  · decide +kernel
  · exact small_7012100_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2637.covered
#print axioms cover_7012100

def root_7012095 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7012095_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(13027072), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7012095_right_fuel : Nat := 1
def small_7012095_right_count : Nat := 1
def small_7012095_right_encoded : String := "00000002"
theorem small_7012095_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7012095_right_root small_7012095_right_fuel small_7012095_right_count small_7012095_right_encoded = true := by
  decide +kernel
theorem small_7012095_right_covered : CoveredBy scale carrier boxes small_7012095_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7012095_right_root small_7012095_right_fuel small_7012095_right_count small_7012095_right_encoded small_7012095_right_checked

theorem cover_7012095 : CoveredBy scale carrier boxes root_7012095 := by
  apply coveredBy_split_literal root_7012095 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0482.root_7012100 small_7012095_right_root coord2 true (13027072)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0482.cover_7012100
  · exact small_7012095_right_covered
#print axioms cover_7012095

def root_7011865 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7011865_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (10572672)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7011865_left_fuel : Nat := 22
def small_7011865_left_count : Nat := 109
def small_7011865_left_encoded : String := "0F875105000000020280010013D7B0F70280010213D7B0F9078000FC128A7D070AD35789000000050000000900000003000000060000000113D7ECF900000001078000FC128A7D070AD3578910D10108000000040000000610D13D080B4D440410801105000000020000000910804D05014001000000000513F614F70000000003C001020000000513A54CF90000000108C000FC0000000500000009000000020000000400000003128A4107000000030AD3578910D101080000000400000006000000090000000013D7ECF7000000000280010213D7B0F9078000FC00000006000000060000000113D7ECF900000001078000FC128A7D070AD357890000000610D13D080B4D440410801105000000020000000610804D0503C0010013A510F703C001020000000613A54CF90000000108C000FC11FC25070BE879C9000000061011AD080BF3E584000000051009290500000006000000020000000400000003000000060000000013A54CF70000000003C001020000000613A54CF90000000108C000FC0000000600000006000000020000000400000003128A4107000000030AD357890000000610D13D080000000900000004"
theorem small_7011865_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7011865_left_root small_7011865_left_fuel small_7011865_left_count small_7011865_left_encoded = true := by
  decide +kernel
theorem small_7011865_left_covered : CoveredBy scale carrier boxes small_7011865_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7011865_left_root small_7011865_left_fuel small_7011865_left_count small_7011865_left_encoded small_7011865_left_checked

theorem cover_7011865 : CoveredBy scale carrier boxes root_7011865 := by
  apply coveredBy_split_literal root_7011865 small_7011865_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0482.root_7012095 coord2 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_7011865_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0482.cover_7012095
#print axioms cover_7011865

def root_7011859 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7011859_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12755968)⟩, ⟨(7264896), (10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7011859_left_fuel : Nat := 1
def small_7011859_left_count : Nat := 1
def small_7011859_left_encoded : String := "00000004"
theorem small_7011859_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7011859_left_root small_7011859_left_fuel small_7011859_left_count small_7011859_left_encoded = true := by
  decide +kernel
theorem small_7011859_left_covered : CoveredBy scale carrier boxes small_7011859_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7011859_left_root small_7011859_left_fuel small_7011859_left_count small_7011859_left_encoded small_7011859_left_checked

theorem cover_7011859 : CoveredBy scale carrier boxes root_7011859 := by
  apply coveredBy_split_literal root_7011859 small_7011859_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0482.root_7011865 coord4 false (12755968)
  · decide +kernel
  · decide +kernel
  · exact small_7011859_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0482.cover_7011865
#print axioms cover_7011859

def root_7015631 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7015631_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (10572672)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7015631_left_fuel : Nat := 2
def small_7015631_left_count : Nat := 3
def small_7015631_left_encoded : String := "0F8751050000000200000009"
theorem small_7015631_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7015631_left_root small_7015631_left_fuel small_7015631_left_count small_7015631_left_encoded = true := by
  decide +kernel
theorem small_7015631_left_covered : CoveredBy scale carrier boxes small_7015631_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7015631_left_root small_7015631_left_fuel small_7015631_left_count small_7015631_left_encoded small_7015631_left_checked

theorem cover_7015631 : CoveredBy scale carrier boxes root_7015631 := by
  apply coveredBy_split_literal root_7015631 small_7015631_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2638.root coord2 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_7015631_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2638.covered
#print axioms cover_7015631

def root_7015626 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7015626_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7015626_right_fuel : Nat := 1
def small_7015626_right_count : Nat := 1
def small_7015626_right_encoded : String := "00000004"
theorem small_7015626_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7015626_right_root small_7015626_right_fuel small_7015626_right_count small_7015626_right_encoded = true := by
  decide +kernel
theorem small_7015626_right_covered : CoveredBy scale carrier boxes small_7015626_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7015626_right_root small_7015626_right_fuel small_7015626_right_count small_7015626_right_encoded small_7015626_right_checked

theorem cover_7015626 : CoveredBy scale carrier boxes root_7015626 := by
  apply coveredBy_split_literal root_7015626 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0482.root_7015631 small_7015626_right_root coord4 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0482.cover_7015631
  · exact small_7015626_right_covered
#print axioms cover_7015626

def root_7011858 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7011858 : CoveredBy scale carrier boxes root_7011858 := by
  apply coveredBy_split_literal root_7011858 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0482.root_7011859 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0482.root_7015626 coord4 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0482.cover_7011859
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0482.cover_7015626
#print axioms cover_7011858

def root_7011853 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7011853_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7011853_right_fuel : Nat := 1
def small_7011853_right_count : Nat := 1
def small_7011853_right_encoded : String := "00000002"
theorem small_7011853_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7011853_right_root small_7011853_right_fuel small_7011853_right_count small_7011853_right_encoded = true := by
  decide +kernel
theorem small_7011853_right_covered : CoveredBy scale carrier boxes small_7011853_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7011853_right_root small_7011853_right_fuel small_7011853_right_count small_7011853_right_encoded small_7011853_right_checked

theorem cover_7011853 : CoveredBy scale carrier boxes root_7011853 := by
  apply coveredBy_split_literal root_7011853 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0482.root_7011858 small_7011853_right_root coord2 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0482.cover_7011858
  · exact small_7011853_right_covered
#print axioms cover_7011853

def root_7003553 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7003553 : CoveredBy scale carrier boxes root_7003553 := by
  apply coveredBy_split_literal root_7003553 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0482.root_7003554 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0482.root_7011853 coord2 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0482.cover_7003554
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0482.cover_7011853
#print axioms cover_7003553

def root_7003548 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7003548_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7003548_right_fuel : Nat := 1
def small_7003548_right_count : Nat := 1
def small_7003548_right_encoded : String := "00000003"
theorem small_7003548_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7003548_right_root small_7003548_right_fuel small_7003548_right_count small_7003548_right_encoded = true := by
  decide +kernel
theorem small_7003548_right_covered : CoveredBy scale carrier boxes small_7003548_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7003548_right_root small_7003548_right_fuel small_7003548_right_count small_7003548_right_encoded small_7003548_right_checked

theorem cover_7003548 : CoveredBy scale carrier boxes root_7003548 := by
  apply coveredBy_split_literal root_7003548 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0482.root_7003553 small_7003548_right_root coord3 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0482.cover_7003553
  · exact small_7003548_right_covered
#print axioms cover_7003548

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0482
