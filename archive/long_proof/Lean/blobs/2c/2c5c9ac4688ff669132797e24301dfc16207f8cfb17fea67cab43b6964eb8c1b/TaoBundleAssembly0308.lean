import TaoBundleAssembly0307
import TaoBundleChunkBatch0396
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0308
def root_4224672 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4224672_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4224672_left_fuel : Nat := 21
def small_4224672_left_count : Nat := 193
def small_4224672_left_encoded : String := "1151E907000000030A0001081151E8FF0000000500000004115224FF0000000408A91305120700FA08A912FF000000051207010800000004050000F600000005135D450100000000000000070000000212073CFA0000000208A912FF12073D08050000F6135D81010500010200000005135D80F9000000010500010600000005135D81070CFD9C050F34D0FA00000005000000020F350CFA000000020CFD9BFF0F350D0800000005000000040F34D10800000004000000090000000300000000135D45010000000005000102135D44F90500010600000005135D81070CFD9C050F34D0FA00000005000000020F350CFA000000020CFD9BFF000000080F34D10800000004000000090000000300000001135D80F90000000105000106135D4507000000030CFD9C050F34D0FA00000005000000020F350CFA000000020CFD9BFF0000000800000009135D81070CFD9C050F34D0FA0CFD9BFF000000050F34D1080000000400000009000000020F350CFA000000020CFD9BFF0F350D080C9A86FA0F878D050C9A870800000005000000090000000200000008000000040F34D108000000040000000900000003000000041207010800000004050000F6135D810105000102135D44F905000106135D4507000000030CFD9C050000000500000007135D81070CFD9C050F34D0FA00000005000000020F350CFA00000002045489FF1386AD080C9A86FA0F878D05000000050000000200000009000000041386710800000004000000070000000300000001135D80F90000000105000106135D4507000000030CFD9C050000000900000007135D81070CFD9C050F34D0FA045489FF00000009138671080000000400000007000000020F350CFA00000002045489FF0000000913867108000000040C9A86FA00000007000000090000000300000000135D45010000000005000102135D44F90500010600000007135D81070CFD9C050F34D0FA0000000700000002000000070000000300000001135D80F9000000010500010600000007135D81070CFD9C050F34D0FA00000007000000020000000700000003"
theorem small_4224672_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4224672_left_root small_4224672_left_fuel small_4224672_left_count small_4224672_left_encoded = true := by
  decide +kernel
theorem small_4224672_left_covered : CoveredBy scale carrier boxes small_4224672_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4224672_left_root small_4224672_left_fuel small_4224672_left_count small_4224672_left_encoded small_4224672_left_checked

theorem cover_4224672 : CoveredBy scale carrier boxes root_4224672 := by
  apply coveredBy_split_literal root_4224672 small_4224672_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0307.root_4225090 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_4224672_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0307.cover_4225090
#print axioms cover_4224672

def root_4224667 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4224667_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4224667_right_fuel : Nat := 1
def small_4224667_right_count : Nat := 1
def small_4224667_right_encoded : String := "00000002"
theorem small_4224667_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4224667_right_root small_4224667_right_fuel small_4224667_right_count small_4224667_right_encoded = true := by
  decide +kernel
theorem small_4224667_right_covered : CoveredBy scale carrier boxes small_4224667_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4224667_right_root small_4224667_right_fuel small_4224667_right_count small_4224667_right_encoded small_4224667_right_checked

theorem cover_4224667 : CoveredBy scale carrier boxes root_4224667 := by
  apply coveredBy_split_literal root_4224667 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0308.root_4224672 small_4224667_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0308.cover_4224672
  · exact small_4224667_right_covered
#print axioms cover_4224667

def root_4237254 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16645888), (-16243968)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4237254_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16645888), (-16243968)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (-1816224)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4237254_left_fuel : Nat := 20
def small_4237254_left_count : Nat := 183
def small_4237254_left_encoded : String := "13E201080DE7CA060E5FD9070000000308C000F611FC250103C0010200000008000000080000000011FBE9010000000003C0010213A510F90000000900000001000000090E60150708C000F611FC250103C0010213A510F908C000FA11FC2505033F67BF13BC31080DAED8870E9625060000000300000007000000080000000413BBF508000000040DAED8870E96250600000003096000F60000000711AA8101000000000320010213C108F9096000FA00000005000000060000000113C144F900000001096000FA11AABD050000000600000002000000070E966106096000F60000000811AA810100000000032001020000000800000008000000030000000211FBE90500000002033F67BF0000000813BBF50800000004000000080000000113A54CF90000000108C000FA11FC2505033F67BF13BC31080DAED8870E96250600000003000000070E96610600000008000000030000000413BBF508000000040DAED8870E96250600000003096000F60000000711AA810100000000046001021383DCF9096000FA11AABD0500000009000000020000000700000001000000090E966106096000F60000000800000009000000030000000211FBE90500000002033F67BF0000000713BBF508000000040DAED88700000008000000080000000011FBE9010000000003C0010213A510F908C000FA11FC2505033F67BF0000000913BBF508000000040DAED8870E96250600000003082000F612469901032001020000000613C144F900000001096000FA00000006000000090000000012465D01000000000320010200000006000000090E96610600000009000000030000000211FBE90500000002033F67BF0000000813BBF508000000040DAED8870E96250600000003082000F60000000812465D01000000000320010213C108F90000000800000001000000090E96610600000008000000030000000113A54CF90000000108C000FA11FC25050000000900000002000000090000000300000004"
theorem small_4237254_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4237254_left_root small_4237254_left_fuel small_4237254_left_count small_4237254_left_encoded = true := by
  decide +kernel
theorem small_4237254_left_covered : CoveredBy scale carrier boxes small_4237254_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4237254_left_root small_4237254_left_fuel small_4237254_left_count small_4237254_left_encoded small_4237254_left_checked

theorem cover_4237254 : CoveredBy scale carrier boxes root_4237254 := by
  apply coveredBy_split_literal root_4237254 small_4237254_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1583.root coord4 true (-1816224)
  · decide +kernel
  · decide +kernel
  · exact small_4237254_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1583.covered
#print axioms cover_4237254

def root_4237249 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16645888), (-16243968)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4237249_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16645888), (-16243968)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(15553280), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4237249_right_fuel : Nat := 1
def small_4237249_right_count : Nat := 1
def small_4237249_right_encoded : String := "00000002"
theorem small_4237249_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4237249_right_root small_4237249_right_fuel small_4237249_right_count small_4237249_right_encoded = true := by
  decide +kernel
theorem small_4237249_right_covered : CoveredBy scale carrier boxes small_4237249_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4237249_right_root small_4237249_right_fuel small_4237249_right_count small_4237249_right_encoded small_4237249_right_checked

theorem cover_4237249 : CoveredBy scale carrier boxes root_4237249 := by
  apply coveredBy_split_literal root_4237249 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0308.root_4237254 small_4237249_right_root coord2 true (15553280)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0308.cover_4237254
  · exact small_4237249_right_covered
#print axioms cover_4237249

def root_4237248 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16645888), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4237248_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16645888), (-16243968)⟩⟩, ⟨⟨(-6291456), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4237248_right_fuel : Nat := 14
def small_4237248_right_count : Nat := 65
def small_4237248_right_encoded : String := "128A410500000002022A457F13E201080DE7CA06000000080E60150708C000F60000000811FBE9010000000003C001020000000800000008000000030000000413E1C508000000040DE7CA060E5FD9070000000308C000F60000000811FBE9010000000003C0010200000008000000050E60150708C000F611FC250103C0010213A510F9064000FA12FFAD050115233F000000080000000A00000002000000080000000113A54CF900000001064000FA12FFAD050115233F0000000813F85908000000040000000500000002000000050000000011FBE9010000000003C0010213A510F9064000FA12FFAD050000000A0000000200000005000000010000000500000003"
theorem small_4237248_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4237248_right_root small_4237248_right_fuel small_4237248_right_count small_4237248_right_encoded = true := by
  decide +kernel
theorem small_4237248_right_covered : CoveredBy scale carrier boxes small_4237248_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4237248_right_root small_4237248_right_fuel small_4237248_right_count small_4237248_right_encoded small_4237248_right_checked

theorem cover_4237248 : CoveredBy scale carrier boxes root_4237248 := by
  apply coveredBy_split_literal root_4237248 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0308.root_4237249 small_4237248_right_root coord2 false (-6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0308.cover_4237249
  · exact small_4237248_right_covered
#print axioms cover_4237248

def root_4237242 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4237242_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16777216), (-16645888)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4237242_left_fuel : Nat := 1
def small_4237242_left_count : Nat := 1
def small_4237242_left_encoded : String := "00000001"
theorem small_4237242_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4237242_left_root small_4237242_left_fuel small_4237242_left_count small_4237242_left_encoded = true := by
  decide +kernel
theorem small_4237242_left_covered : CoveredBy scale carrier boxes small_4237242_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4237242_left_root small_4237242_left_fuel small_4237242_left_count small_4237242_left_encoded small_4237242_left_checked

theorem cover_4237242 : CoveredBy scale carrier boxes root_4237242 := by
  apply coveredBy_split_literal root_4237242 small_4237242_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0308.root_4237248 coord1 true (-16645888)
  · decide +kernel
  · decide +kernel
  · exact small_4237242_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0308.cover_4237248
#print axioms cover_4237242

def root_4236546 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4236546_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(0), (2097152)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4236546_left_fuel : Nat := 23
def small_4236546_left_count : Nat := 327
def small_4236546_left_encoded : String := "13D7B0F9078000FA128A7D05022A457F13E201080DE7CA060E5FD9070000000308C000F611FC2501000000080000000011FBE901000000000140010213F5D8F9000000080000000113F614F90000000108C000FA11FC2505033F67BF0000000813BBF508000000040D412886000000080EFA4D07000000080000000300000002000000080E60150708C000F611FC25010140010213F5D8F908C000FA0000000511FBE90500000002000000080000000113F614F90000000108C000FA11FC2505033F67BF0000000513BBF508000000040DAED887000000050E96610600000005000000030000000211FBE90500000002000000080000000011FBE901000000000140010213F5D8F908C000FA11FC2505000000060000000211FBE90500000002033F67BF000000080000000A0000000113F614F90000000108C000FA11FC2505033F67BF13BC31080DAED8870E96250600000003000000060E96610600000008000000030000000413BBF508000000040DAED8870E96250600000003000000060E966106082000F61246990101E001020000000513E994F900000001096000FA00000005000000080000000012465D010000000001E001020000000600000009000000030000000211FBE90500000002033F67BF0000000813BBF508000000040DAED8870E96250600000003082000F6000000080000000A0E9661060000000800000003000000030000000413E1C508000000040DE7CA060E5FD9070000000308C000F611FC25010140010213F5D8F908C000FA11FC25050115233F000000050000000A000000020000000A0000000113F614F90000000108C000FA11FC25050115233F13F895080D412886000000050EFA4D07096000F60000000511AA81010000000000000008000000030000000413F85908000000040D4128860000000A0EFA4D070000000A000000030000000211FBE905000000020115233F000000080000000A0000000011FBE90100000000014001020000000A13F614F90000000108C000FA11FC25050115233F13F895080D412886000000070EFA4D070000000A000000030000000400000007000000020000000A0E60150708C000F611FC25010140010213F5D8F908C000FA11FC25050115233F000000050000000A000000020000000A0000000113F614F90000000108C000FA11FC25050115233F13F895080DAED8870E96250600000003096000F60000000511AA810100000000000000060E966106096000F60000000511AA81010000000001E001020000000513E994F900000001096000FA000000050000000A000000030000000413F85908000000040DAED8870E96250600000003096000F611AABD010000000A000000000000000A0E966106096000F611AABD010000000A000000000000000A000000030000000211FBE905000000020115233F13F895080DAED8870E96250600000003096000F6000000070000000A0E9661060000000800000003000000040000000A0000000011FBE90100000000014001020000000A13F614F90000000108C000FA11FC25050115233F13F895080DAED8870E96250600000003000000060E966106082000F61246990101E00102000000060000000A000000000000000A00000003000000040000000A000000020000000A0000000300000002128A410500000002022A457F13E201080DE7CA06000000080E60150708C000F60000000811FBE9010000000000000008000000030000000413E1C508000000040DE7CA060000000A0E60150708C000F611FC25010000000A000000000000000A0000000300000001"
theorem small_4236546_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4236546_left_root small_4236546_left_fuel small_4236546_left_count small_4236546_left_encoded = true := by
  decide +kernel
theorem small_4236546_left_covered : CoveredBy scale carrier boxes small_4236546_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4236546_left_root small_4236546_left_fuel small_4236546_left_count small_4236546_left_encoded small_4236546_left_checked

theorem cover_4236546 : CoveredBy scale carrier boxes root_4236546 := by
  apply coveredBy_split_literal root_4236546 small_4236546_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0308.root_4237242 coord1 false (2097152)
  · decide +kernel
  · decide +kernel
  · exact small_4236546_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0308.cover_4237242
#print axioms cover_4236546

def root_4236541 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4236541_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-6291456)⟩, ⟨(15553280), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4236541_right_fuel : Nat := 1
def small_4236541_right_count : Nat := 1
def small_4236541_right_encoded : String := "00000000"
theorem small_4236541_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4236541_right_root small_4236541_right_fuel small_4236541_right_count small_4236541_right_encoded = true := by
  decide +kernel
theorem small_4236541_right_covered : CoveredBy scale carrier boxes small_4236541_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4236541_right_root small_4236541_right_fuel small_4236541_right_count small_4236541_right_encoded small_4236541_right_checked

theorem cover_4236541 : CoveredBy scale carrier boxes root_4236541 := by
  apply coveredBy_split_literal root_4236541 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0308.root_4236546 small_4236541_right_root coord0 true (15553280)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0308.cover_4236546
  · exact small_4236541_right_covered
#print axioms cover_4236541

def root_4236540 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4236540_right_root : ZRayBox := fun j => (#[⟨⟨(-6291456), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4236540_right_fuel : Nat := 23
def small_4236540_right_count : Nat := 229
def small_4236540_right_encoded : String := "128A4101000000000280010213D7B0F9078000FA128A7D05022A457F13E201080DE7CA060E5FD90700000003064000F612FFAD010140010213F5D8F908C000FA11FC2505000000090000000200000008000000010000000900000000000000090E601507064000F612FFAD010140010213F5D8F908C000FA000000060000000A0000000113F614F90000000108C000FA11FC2505033F67BF0000000913BBF508000000040DAED887000000060E96610600000009000000030000000211FBE90500000002033F67BF000000090000000A0000000012FF7101000000000140010213F5D8F908C000FA000000060000000A0000000113F614F90000000108C000FA0000000900000009000000030000000413E1C508000000040DE7CA060000000A0E601507064000F612FFAD01014001020000000A0000000A000000000000000A0000000300000002128A410500000002022A457F13E201080DE7CA060E5FD90700000003000000080E601507064000F612FFAD01014001020000000813F614F900000001064000FA12FFAD05033F67BF000000080000000A0000000200000008000000000000000A00000003000000040000000A0000000113D7ECF900000001078000FA128A7D05022A457F13E201080DE7CA06000000090E601507064000F612FFAD0103C0010213A510F908C000FA11FC250500000009000000020000000900000001000000090000000000000009000000030000000413E1C508000000040DE7CA060E5FD90700000003064000F612FFAD0103C0010213A510F908C000FA000000070000000A000000010000000900000000000000070E601507064000F612FFAD0103C0010213A510F908C000FA11FC25050115233F13F895080DAED8870E9625060000000306E000F612C8210103200102000000060000000900000000000000090E9661060000000700000003000000040000000A000000020000000A0000000113A54CF90000000108C000FA11FC25050115233F0000000913F85908000000040000000500000002000000050000000012FF71010000000003C0010213A510F908C000FA000000070000000500000001000000050000000300000002128A410500000002022A457F13E201080DE7CA06000000090E601507064000F612FFAD0103C0010213A510F9064000FA12FFAD0500000009000000020000000500000001000000050000000000000005000000030000000413E1C508000000040DE7CA060E5FD907000000030000000500000005"
theorem small_4236540_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4236540_right_root small_4236540_right_fuel small_4236540_right_count small_4236540_right_encoded = true := by
  decide +kernel
theorem small_4236540_right_covered : CoveredBy scale carrier boxes small_4236540_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4236540_right_root small_4236540_right_fuel small_4236540_right_count small_4236540_right_encoded small_4236540_right_checked

theorem cover_4236540 : CoveredBy scale carrier boxes root_4236540 := by
  apply coveredBy_split_literal root_4236540 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0308.root_4236541 small_4236540_right_root coord0 false (-6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0308.cover_4236541
  · exact small_4236540_right_covered
#print axioms cover_4236540

def root_4236535 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4236535_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(13027072), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4236535_right_fuel : Nat := 1
def small_4236535_right_count : Nat := 1
def small_4236535_right_encoded : String := "00000003"
theorem small_4236535_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4236535_right_root small_4236535_right_fuel small_4236535_right_count small_4236535_right_encoded = true := by
  decide +kernel
theorem small_4236535_right_covered : CoveredBy scale carrier boxes small_4236535_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4236535_right_root small_4236535_right_fuel small_4236535_right_count small_4236535_right_encoded small_4236535_right_checked

theorem cover_4236535 : CoveredBy scale carrier boxes root_4236535 := by
  apply coveredBy_split_literal root_4236535 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0308.root_4236540 small_4236535_right_root coord3 true (13027072)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0308.cover_4236540
  · exact small_4236535_right_covered
#print axioms cover_4236535

def root_4236351 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4236351_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (10572672)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4236351_left_fuel : Nat := 19
def small_4236351_left_count : Nat := 87
def small_4236351_left_encoded : String := "0F87510700000003078000F6128A7D010280010213D7B0F9078000FA128A7D05022A457F0000000813E1C508000000040B4D44060000000710804D0708C000F611FC250101400102000000080000000800000000000000070000000300000002000000080000000113D7ECF900000001078000FA128A7D05022A457F0000000913E1C508000000040B4D440610801107000000030000000710804D0708C000F611FC250103C0010213A510F9000000080000000113A54CF90000000108C000FA11FC25050115233F000000080000000700000002000000080000000011FBE9010000000003C0010213A510F90000000700000001000000090000000300000002128A4105000000020000000800000000128A4101000000000280010213D7B0F9078000FA00000007128A410500000002022A457F000000080000000A0000000113D7ECF900000001078000FA128A7D05000000090000000200000009"
theorem small_4236351_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4236351_left_root small_4236351_left_fuel small_4236351_left_count small_4236351_left_encoded = true := by
  decide +kernel
theorem small_4236351_left_covered : CoveredBy scale carrier boxes small_4236351_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4236351_left_root small_4236351_left_fuel small_4236351_left_count small_4236351_left_encoded small_4236351_left_checked

theorem cover_4236351 : CoveredBy scale carrier boxes root_4236351 := by
  apply coveredBy_split_literal root_4236351 small_4236351_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0308.root_4236535 coord3 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_4236351_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0308.cover_4236535
#print axioms cover_4236351

def root_4236345 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4236345_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4236345_left_fuel : Nat := 1
def small_4236345_left_count : Nat := 1
def small_4236345_left_encoded : String := "00000004"
theorem small_4236345_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4236345_left_root small_4236345_left_fuel small_4236345_left_count small_4236345_left_encoded = true := by
  decide +kernel
theorem small_4236345_left_covered : CoveredBy scale carrier boxes small_4236345_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4236345_left_root small_4236345_left_fuel small_4236345_left_count small_4236345_left_encoded small_4236345_left_checked

theorem cover_4236345 : CoveredBy scale carrier boxes root_4236345 := by
  apply coveredBy_split_literal root_4236345 small_4236345_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0308.root_4236351 coord4 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_4236345_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0308.cover_4236351
#print axioms cover_4236345

def root_4236141 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4236141_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4236141_left_fuel : Nat := 19
def small_4236141_left_count : Nat := 99
def small_4236141_left_encoded : String := "1386AD080C9A87060F87510700000003078000F600000008000000090F878D07078000F6128A7D010280010213D7B0F9078000FA128A7D05067ECE7F0000000812EA5908000000040DE7CA060E5FD90700000003000000080E60150708C000F60000000811FBE901000000000140010200000008000000080000000300000002000000080000000113D7ECF900000001078000FA128A7D05067ECE7F0000000912EA5908000000040DE7CA06000000090E60150708C000F611FC250103C0010200000008000000080000000011FBE901000000000000000900000003000000020000000800000000128A4101000000000280010213D7B0F9078000FA128A7D05067ECE7F0000000912EA5908000000040DE7CA06000000090E601507064000F612FFAD010140010213F5D8F908C000FA0000000600000008000000010000000900000000000000090000000300000002128A410500000002067ECE7F0000000812EA590800000004000000080000000113D7ECF900000001078000FA00000009000000090000000300000004"
theorem small_4236141_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4236141_left_root small_4236141_left_fuel small_4236141_left_count small_4236141_left_encoded = true := by
  decide +kernel
theorem small_4236141_left_covered : CoveredBy scale carrier boxes small_4236141_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4236141_left_root small_4236141_left_fuel small_4236141_left_count small_4236141_left_encoded small_4236141_left_checked

theorem cover_4236141 : CoveredBy scale carrier boxes root_4236141 := by
  apply coveredBy_split_literal root_4236141 small_4236141_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0308.root_4236345 coord4 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact small_4236141_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0308.cover_4236345
#print axioms cover_4236141

def root_4236136 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4236136_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4236136_right_fuel : Nat := 1
def small_4236136_right_count : Nat := 1
def small_4236136_right_encoded : String := "00000003"
theorem small_4236136_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4236136_right_root small_4236136_right_fuel small_4236136_right_count small_4236136_right_encoded = true := by
  decide +kernel
theorem small_4236136_right_covered : CoveredBy scale carrier boxes small_4236136_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4236136_right_root small_4236136_right_fuel small_4236136_right_count small_4236136_right_encoded small_4236136_right_checked

theorem cover_4236136 : CoveredBy scale carrier boxes root_4236136 := by
  apply coveredBy_split_literal root_4236136 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0308.root_4236141 small_4236136_right_root coord3 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0308.cover_4236141
  · exact small_4236136_right_covered
#print axioms cover_4236136

def root_4233462 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4233462 : CoveredBy scale carrier boxes root_4233462 := by
  apply coveredBy_split_literal root_4233462 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1582.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0308.root_4236136 coord3 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1582.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0308.cover_4236136
#print axioms cover_4233462

def root_4233457 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4233457_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4233457_right_fuel : Nat := 1
def small_4233457_right_count : Nat := 1
def small_4233457_right_encoded : String := "00000002"
theorem small_4233457_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4233457_right_root small_4233457_right_fuel small_4233457_right_count small_4233457_right_encoded = true := by
  decide +kernel
theorem small_4233457_right_covered : CoveredBy scale carrier boxes small_4233457_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4233457_right_root small_4233457_right_fuel small_4233457_right_count small_4233457_right_encoded small_4233457_right_checked

theorem cover_4233457 : CoveredBy scale carrier boxes root_4233457 := by
  apply coveredBy_split_literal root_4233457 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0308.root_4233462 small_4233457_right_root coord2 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0308.cover_4233462
  · exact small_4233457_right_covered
#print axioms cover_4233457

def root_4233456 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4233456_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4233456_right_fuel : Nat := 17
def small_4233456_right_count : Nat := 123
def small_4233456_right_encoded : String := "135D4505000000020CFD9C070F34D10600000003045489FF1386AD08078000F600000007128A4101000000000280010213D7B0F9028000FA13D7ED050AD357870000000710D13D06000000080000000300000002000000070000000113D7ECF900000001028000FA13D7ED050AD357870000000710D13D0600000007000000030000000200000005000000041386710800000004078000F6128A7D010280010213D7B0F9028000FA13D7ED05000000070000000200000007000000010000000700000000128A4101000000000280010213D7B0F9028000FA13D7ED050AD3578710D10106000000030000000510D13D060000000A00000003000000020000000500000001000000050F350D06045489FF1386AD080C9A8706000000080F878D07078000F600000008128A41010000000000000008000000030000000413867108000000040C9A87060F87510700000003078000F600000008128A410100000000000000080F878D07078000F6128A7D010280010213D7B0F9028000FA13D7ED05022A457F000000080000000A00000002000000080000000113D7ECF900000001028000FA13D7ED05022A457F0000000813E1C508000000040DE7CA060000000800000005000000020000000500000000128A410100000000028001020000000A000000050000000300000003"
theorem small_4233456_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4233456_right_root small_4233456_right_fuel small_4233456_right_count small_4233456_right_encoded = true := by
  decide +kernel
theorem small_4233456_right_covered : CoveredBy scale carrier boxes small_4233456_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4233456_right_root small_4233456_right_fuel small_4233456_right_count small_4233456_right_encoded small_4233456_right_checked

theorem cover_4233456 : CoveredBy scale carrier boxes root_4233456 := by
  apply coveredBy_split_literal root_4233456 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0308.root_4233457 small_4233456_right_root coord2 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0308.cover_4233457
  · exact small_4233456_right_covered
#print axioms cover_4233456

def root_4233451 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4233451_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16243968), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4233451_right_fuel : Nat := 1
def small_4233451_right_count : Nat := 1
def small_4233451_right_encoded : String := "00000001"
theorem small_4233451_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4233451_right_root small_4233451_right_fuel small_4233451_right_count small_4233451_right_encoded = true := by
  decide +kernel
theorem small_4233451_right_covered : CoveredBy scale carrier boxes small_4233451_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4233451_right_root small_4233451_right_fuel small_4233451_right_count small_4233451_right_encoded small_4233451_right_checked

theorem cover_4233451 : CoveredBy scale carrier boxes root_4233451 := by
  apply coveredBy_split_literal root_4233451 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0308.root_4233456 small_4233451_right_root coord1 true (-16243968)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0308.cover_4233456
  · exact small_4233451_right_covered
#print axioms cover_4233451

def root_4233450 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4233450 : CoveredBy scale carrier boxes root_4233450 := by
  apply coveredBy_split_literal root_4233450 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0308.root_4233451 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1584.root coord1 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0308.cover_4233451
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1584.covered
#print axioms cover_4233450

def root_4233445 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4233445_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4233445_right_fuel : Nat := 1
def small_4233445_right_count : Nat := 1
def small_4233445_right_encoded : String := "00000000"
theorem small_4233445_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4233445_right_root small_4233445_right_fuel small_4233445_right_count small_4233445_right_encoded = true := by
  decide +kernel
theorem small_4233445_right_covered : CoveredBy scale carrier boxes small_4233445_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4233445_right_root small_4233445_right_fuel small_4233445_right_count small_4233445_right_encoded small_4233445_right_checked

theorem cover_4233445 : CoveredBy scale carrier boxes root_4233445 := by
  apply coveredBy_split_literal root_4233445 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0308.root_4233450 small_4233445_right_root coord0 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0308.cover_4233450
  · exact small_4233445_right_covered
#print axioms cover_4233445

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0308
