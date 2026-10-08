import TaoBundleAssembly0235
import TaoBundleAssembly0245
import TaoBundleAssembly0246
import TaoBundleAssembly0252
import TaoBundleAssembly0255
import TaoBundleAssembly0256
import TaoBundleChunkBatch0344
import TaoBundleChunkBatch0345
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0257
def root_3628243 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3628243_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3628243_left_fuel : Nat := 23
def small_3628243_left_count : Nat := 299
def small_3628243_left_encoded : String := "1151E907000000030A0001081151E9090000000408A91301120700F608A912FB12073D04050000F8135D8103050001060000000A135D810705000108135D45090000000404548A010000000A1386ACF6000000000CFD9BFB0000000A0F34D10400000002078000F8128A7D0307800106000000060000000600000001128A410300000001078001060000000A000000050000000A0000000300000001135D450300000001050001060000000A135D810705000108135D45090000000404548A010000000A1386ACF6000000000CFD9BFB000000090F34D10400000002000000050000000A00000003000000021207010400000002050000F8135D810305000106135D45070000000305000108135D45090000000404548A01138670F6045489FB0000000A000000050000000000000005135D810904548A01000000070000000500000004135D810705000108135D45090000000404548A01138670F6045489FB1386AD04078000F8128A7D03078001060000000A128A7D070280010800000006000000060000000300000001128A4103000000010000000500000002000000050000000000000005135D810904548A01138670F6045489FB0000000A000000050000000000000005000000040000000300000001135D45030000000105000106135D45070000000300000005135D810705000108135D4509000000040000000500000005000000030000000012073CF60000000008A912FB12073D04050000F8135D810305000106135D45070000000305000108135D4509000000040CFD9C010F34D0F60CFD9BFB00000009000000050000000000000005135D81090CFD9C010000000A0000000500000004135D810705000108135D4509000000040CFD9C010F34D0F60CFD9BFB0F350D040000000600000002000000050000000000000005135D81090CFD9C010F34D0F60CFD9BFB0000000A000000050000000000000005000000040000000300000001135D45030000000105000106135D4507000000030500010800000009135D81090CFD9C010F34D0F60000000A000000000000000500000004135D810705000108135D4509000000040CFD9C010F34D0F60CFD9BFB00000009000000050000000000000005135D81090CFD9C010F34D0F60CFD9BFB0000000A000000050000000000000005000000040000000300000002000000051152250908A91301120700F608A912FB0000000A120701040000000208A9130912070108000000040000000A12073D08050000F80000000A135D450300000001050001060000000A135D810704548A010000000A0000000500000003000000040000000012073CF60000000008A912FB12073D0408A9130912070108000000040000000A12073D08050000F8135D810305000106135D4507000000030000000A135D81070CFD9C010000000A0F350CF6000000000CFD9BFB0000000A0F34D10400000002000000050000000300000001135D45030000000105000106135D4507000000030000000A135D81070CFD9C010000000A0F350CF6000000000CFD9BFB0000000A00000005000000030000000400000002120701040000000208A913090000000612073D08050000F8135D810305000106000000060000000500000001000000050000000400000004"
theorem small_3628243_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3628243_left_root small_3628243_left_fuel small_3628243_left_count small_3628243_left_encoded = true := by
  decide +kernel
theorem small_3628243_left_covered : CoveredBy scale carrier boxes small_3628243_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3628243_left_root small_3628243_left_fuel small_3628243_left_count small_3628243_left_encoded small_3628243_left_checked

theorem cover_3628243 : CoveredBy scale carrier boxes root_3628243 := by
  apply coveredBy_split_literal root_3628243 small_3628243_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0256.root_3628863 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_3628243_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0256.cover_3628863
#print axioms cover_3628243

def root_3628237 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3628237_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3628237_left_fuel : Nat := 1
def small_3628237_left_count : Nat := 1
def small_3628237_left_encoded : String := "00000002"
theorem small_3628237_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3628237_left_root small_3628237_left_fuel small_3628237_left_count small_3628237_left_encoded = true := by
  decide +kernel
theorem small_3628237_left_covered : CoveredBy scale carrier boxes small_3628237_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3628237_left_root small_3628237_left_fuel small_3628237_left_count small_3628237_left_encoded small_3628237_left_checked

theorem cover_3628237 : CoveredBy scale carrier boxes root_3628237 := by
  apply coveredBy_split_literal root_3628237 small_3628237_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0257.root_3628243 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_3628237_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0257.cover_3628243
#print axioms cover_3628237

def root_3618153 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3618153 : CoveredBy scale carrier boxes root_3618153 := by
  apply coveredBy_split_literal root_3618153 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0256.root_3618154 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0257.root_3628237 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0256.cover_3618154
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0257.cover_3628237
#print axioms cover_3618153

def root_3618147 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3618147_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3618147_left_fuel : Nat := 1
def small_3618147_left_count : Nat := 1
def small_3618147_left_encoded : String := "00000001"
theorem small_3618147_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3618147_left_root small_3618147_left_fuel small_3618147_left_count small_3618147_left_encoded = true := by
  decide +kernel
theorem small_3618147_left_covered : CoveredBy scale carrier boxes small_3618147_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3618147_left_root small_3618147_left_fuel small_3618147_left_count small_3618147_left_encoded small_3618147_left_checked

theorem cover_3618147 : CoveredBy scale carrier boxes root_3618147 := by
  apply coveredBy_split_literal root_3618147 small_3618147_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0257.root_3618153 coord1 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_3618147_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0257.cover_3618153
#print axioms cover_3618147

def root_3585827 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3585827 : CoveredBy scale carrier boxes root_3585827 := by
  apply coveredBy_split_literal root_3585827 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0255.root_3585828 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0257.root_3618147 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0255.cover_3585828
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0257.cover_3618147
#print axioms cover_3585827

def root_3585822 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3585822_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3585822_right_fuel : Nat := 1
def small_3585822_right_count : Nat := 1
def small_3585822_right_encoded : String := "00000000"
theorem small_3585822_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3585822_right_root small_3585822_right_fuel small_3585822_right_count small_3585822_right_encoded = true := by
  decide +kernel
theorem small_3585822_right_covered : CoveredBy scale carrier boxes small_3585822_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3585822_right_root small_3585822_right_fuel small_3585822_right_count small_3585822_right_encoded small_3585822_right_checked

theorem cover_3585822 : CoveredBy scale carrier boxes root_3585822 := by
  apply coveredBy_split_literal root_3585822 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0257.root_3585827 small_3585822_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0257.cover_3585827
  · exact small_3585822_right_covered
#print axioms cover_3585822

def root_3633591 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3633591_right_root : ZRayBox := fun j => (#[⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3633591_right_fuel : Nat := 12
def small_3633591_right_count : Nat := 73
def small_3633591_right_encoded : String := "135D45010000000005000104135D44FB0CFD9C030F34D0F804548A0713867106000000030CFD9C09000000070000000700000007000000010F350CF80000000104548A0713867106000000030CFD9C090F34D10800000004000000070F350D0800000008000000041386AD060CFD9C090F34D10800000004000000070F350D0800000008000000040000000300000002135D80FB000000020CFD9C030F34D0F804548A0713867106000000030CFD9C09000000070000000700000007000000010F350CF80000000104548A0713867106000000030CFD9C090F34D10800000004000000070F350D080C9A86F8000000080F8751030000000100000008000000041386AD060CFD9C090F34D10800000004000000070F350D08000000080000000400000003"
theorem small_3633591_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3633591_right_root small_3633591_right_fuel small_3633591_right_count small_3633591_right_encoded = true := by
  decide +kernel
theorem small_3633591_right_covered : CoveredBy scale carrier boxes small_3633591_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3633591_right_root small_3633591_right_fuel small_3633591_right_count small_3633591_right_encoded small_3633591_right_checked

theorem cover_3633591 : CoveredBy scale carrier boxes root_3633591 := by
  apply coveredBy_split_literal root_3633591 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1373.root small_3633591_right_root coord0 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1373.covered
  · exact small_3633591_right_covered
#print axioms cover_3633591

def root_3633586 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3633586_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3633586_right_fuel : Nat := 1
def small_3633586_right_count : Nat := 1
def small_3633586_right_encoded : String := "00000004"
theorem small_3633586_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3633586_right_root small_3633586_right_fuel small_3633586_right_count small_3633586_right_encoded = true := by
  decide +kernel
theorem small_3633586_right_covered : CoveredBy scale carrier boxes small_3633586_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3633586_right_root small_3633586_right_fuel small_3633586_right_count small_3633586_right_encoded small_3633586_right_checked

theorem cover_3633586 : CoveredBy scale carrier boxes root_3633586 := by
  apply coveredBy_split_literal root_3633586 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0257.root_3633591 small_3633586_right_root coord4 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0257.cover_3633591
  · exact small_3633586_right_covered
#print axioms cover_3633586

def root_3633476 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3633476_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3633476_left_fuel : Nat := 16
def small_3633476_left_count : Nat := 53
def small_3633476_left_encoded : String := "1207010800000004050000F6135D810105000104135D44FB0CFD9C03000000070F350CF80000000104548A07138671060000000304548A09000000061386AD080C9A86F8000000060F87510300000001078000F60000000600000007000000040000000700000002135D80FB000000020CFD9C03000000070F350CF80000000104548A07138671060000000304548A09000000071386AD080C9A86F8000000070F87510300000001078000F6128A7D01000000070000000000000007000000040000000700000000135D45010000000000000007"
theorem small_3633476_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3633476_left_root small_3633476_left_fuel small_3633476_left_count small_3633476_left_encoded = true := by
  decide +kernel
theorem small_3633476_left_covered : CoveredBy scale carrier boxes small_3633476_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3633476_left_root small_3633476_left_fuel small_3633476_left_count small_3633476_left_encoded small_3633476_left_checked

theorem cover_3633476 : CoveredBy scale carrier boxes root_3633476 := by
  apply coveredBy_split_literal root_3633476 small_3633476_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0257.root_3633586 coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_3633476_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0257.cover_3633586
#print axioms cover_3633476

def root_3633470 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3633470_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3633470_left_fuel : Nat := 1
def small_3633470_left_count : Nat := 1
def small_3633470_left_encoded : String := "00000003"
theorem small_3633470_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3633470_left_root small_3633470_left_fuel small_3633470_left_count small_3633470_left_encoded = true := by
  decide +kernel
theorem small_3633470_left_covered : CoveredBy scale carrier boxes small_3633470_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3633470_left_root small_3633470_left_fuel small_3633470_left_count small_3633470_left_encoded small_3633470_left_checked

theorem cover_3633470 : CoveredBy scale carrier boxes root_3633470 := by
  apply coveredBy_split_literal root_3633470 small_3633470_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0257.root_3633476 coord3 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_3633470_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0257.cover_3633476
#print axioms cover_3633470

def root_3633469 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3633469_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3633469_right_fuel : Nat := 18
def small_3633469_right_count : Nat := 99
def small_3633469_right_encoded : String := "12073D0608A9130912070108000000040000000712073D08050000F6135D810105000104135D44FB0CFD9C030F34D0F800000007000000010F350CF8000000010CFD9C070F34D106000000030CFD9C090F34D10800000004000000070F350D080C9A86F80F878D03000000070000000100000009000000040F350D06000000090000000300000002135D80FB000000020CFD9C030F34D0F800000007000000010F350CF8000000010CFD9C070F34D106000000030CFD9C090F34D10800000004000000070F350D080C9A86F80F878D0300000007000000010F875103000000010C9A87080F87510900000004000000080F878D090000000700000004000000040F350D060CFD9C0900000007000000070000000300000000135D45010000000005000104135D44FB0CFD9C030F34D0F800000007000000010F350CF8000000010CFD9C070F34D10600000003000000070000000700000002135D80FB000000020CFD9C03000000070F350CF8000000010CFD9C070F34D1060000000300000007000000070000000400000003"
theorem small_3633469_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3633469_right_root small_3633469_right_fuel small_3633469_right_count small_3633469_right_encoded = true := by
  decide +kernel
theorem small_3633469_right_covered : CoveredBy scale carrier boxes small_3633469_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3633469_right_root small_3633469_right_fuel small_3633469_right_count small_3633469_right_encoded small_3633469_right_checked

theorem cover_3633469 : CoveredBy scale carrier boxes root_3633469 := by
  apply coveredBy_split_literal root_3633469 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0257.root_3633470 small_3633469_right_root coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0257.cover_3633470
  · exact small_3633469_right_covered
#print axioms cover_3633469

def root_3633463 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3633463_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3633463_left_fuel : Nat := 1
def small_3633463_left_count : Nat := 1
def small_3633463_left_encoded : String := "00000001"
theorem small_3633463_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3633463_left_root small_3633463_left_fuel small_3633463_left_count small_3633463_left_encoded = true := by
  decide +kernel
theorem small_3633463_left_covered : CoveredBy scale carrier boxes small_3633463_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3633463_left_root small_3633463_left_fuel small_3633463_left_count small_3633463_left_encoded small_3633463_left_checked

theorem cover_3633463 : CoveredBy scale carrier boxes root_3633463 := by
  apply coveredBy_split_literal root_3633463 small_3633463_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0257.root_3633469 coord1 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_3633463_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0257.cover_3633469
#print axioms cover_3633463

def root_3633369 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3633369_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3633369_left_fuel : Nat := 15
def small_3633369_left_count : Nat := 45
def small_3633369_left_encoded : String := "120700F808A91307120701060000000308A9130912070108000000040000000612073D08050000F6135D810105000104135D44FB04548A03000000071386ACF80000000104548A071386710600000003000000060000000700000002135D80FB0000000204548A03000000071386ACF80000000104548A0713867106000000030CFD9C0900000007000000070000000700000000000000070000000412073D0608A9130900000007000000070000000300000001"
theorem small_3633369_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3633369_left_root small_3633369_left_fuel small_3633369_left_count small_3633369_left_encoded = true := by
  decide +kernel
theorem small_3633369_left_covered : CoveredBy scale carrier boxes small_3633369_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3633369_left_root small_3633369_left_fuel small_3633369_left_count small_3633369_left_encoded small_3633369_left_checked

theorem cover_3633369 : CoveredBy scale carrier boxes root_3633369 := by
  apply coveredBy_split_literal root_3633369 small_3633369_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0257.root_3633463 coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_3633369_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0257.cover_3633463
#print axioms cover_3633369

def root_3633364 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3633364_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3633364_right_fuel : Nat := 1
def small_3633364_right_count : Nat := 1
def small_3633364_right_encoded : String := "00000004"
theorem small_3633364_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3633364_right_root small_3633364_right_fuel small_3633364_right_count small_3633364_right_encoded = true := by
  decide +kernel
theorem small_3633364_right_covered : CoveredBy scale carrier boxes small_3633364_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3633364_right_root small_3633364_right_fuel small_3633364_right_count small_3633364_right_encoded small_3633364_right_checked

theorem cover_3633364 : CoveredBy scale carrier boxes root_3633364 := by
  apply coveredBy_split_literal root_3633364 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0257.root_3633369 small_3633364_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0257.cover_3633369
  · exact small_3633364_right_covered
#print axioms cover_3633364

def root_3633126 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3633126_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3633126_left_fuel : Nat := 16
def small_3633126_left_count : Nat := 109
def small_3633126_left_encoded : String := "1151E9090000000408A91303120700F808A913071207010600000003050000F6000000080000000812073D06050000F6135D810105000104135D44FB0000000800000002000000080000000000000008000000030000000112073CF80000000108A913071207010600000003050000F6135D810105000104135D44FB0500010800000008135D81090CFD9C030F34D0F80000000800000001000000080000000400000002135D80FB000000020500010800000008135D81090CFD9C030F34D0F800000008000000010F350CF80000000104548A071386710600000003000000080000000800000004000000000000000812073D06050000F6135D810105000104135D44FB0500010800000008135D81090CFD9C030F34D0F800000008000000010F350CF8000000010CFD9C070F34D1060000000300000008000000080000000400000002135D80FB0000000205000108135D45090000000400000008135D81090CFD9C030F34D0F800000008000000010F350CF8000000010CFD9C070F34D1060000000300000008000000080000000400000000135D45010000000005000104135D44FB00000008000000020000000800000003"
theorem small_3633126_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3633126_left_root small_3633126_left_fuel small_3633126_left_count small_3633126_left_encoded = true := by
  decide +kernel
theorem small_3633126_left_covered : CoveredBy scale carrier boxes small_3633126_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3633126_left_root small_3633126_left_fuel small_3633126_left_count small_3633126_left_encoded small_3633126_left_checked

theorem cover_3633126 : CoveredBy scale carrier boxes root_3633126 := by
  apply coveredBy_split_literal root_3633126 small_3633126_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0257.root_3633364 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_3633126_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0257.cover_3633364
#print axioms cover_3633126

def root_3633121 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3633121_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3633121_right_fuel : Nat := 1
def small_3633121_right_count : Nat := 1
def small_3633121_right_encoded : String := "00000003"
theorem small_3633121_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3633121_right_root small_3633121_right_fuel small_3633121_right_count small_3633121_right_encoded = true := by
  decide +kernel
theorem small_3633121_right_covered : CoveredBy scale carrier boxes small_3633121_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3633121_right_root small_3633121_right_fuel small_3633121_right_count small_3633121_right_encoded small_3633121_right_checked

theorem cover_3633121 : CoveredBy scale carrier boxes root_3633121 := by
  apply coveredBy_split_literal root_3633121 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0257.root_3633126 small_3633121_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0257.cover_3633126
  · exact small_3633121_right_covered
#print axioms cover_3633121

def root_3633017 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3633017_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3633017_left_fuel : Nat := 12
def small_3633017_left_count : Nat := 51
def small_3633017_left_encoded : String := "1151E907000000030A0001081151E9090000000408A91303120700F8050000F600000008000000080000000112073CF800000001050000F6135D810105000104000000090000000900000000000000091152250908A91303120700F808A913090000000712073D08050000F60000000700000009000000040000000112073CF80000000108A913090000000712073D08050000F6135D8101050001040000000A0000000700000000135D45010000000005000104135D44FB0000000A00000002000000070000000400000004"
theorem small_3633017_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3633017_left_root small_3633017_left_fuel small_3633017_left_count small_3633017_left_encoded = true := by
  decide +kernel
theorem small_3633017_left_covered : CoveredBy scale carrier boxes small_3633017_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3633017_left_root small_3633017_left_fuel small_3633017_left_count small_3633017_left_encoded small_3633017_left_checked

theorem cover_3633017 : CoveredBy scale carrier boxes root_3633017 := by
  apply coveredBy_split_literal root_3633017 small_3633017_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0257.root_3633121 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_3633017_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0257.cover_3633121
#print axioms cover_3633017

def root_3633012 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3633012_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3633012_right_fuel : Nat := 1
def small_3633012_right_count : Nat := 1
def small_3633012_right_encoded : String := "00000002"
theorem small_3633012_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3633012_right_root small_3633012_right_fuel small_3633012_right_count small_3633012_right_encoded = true := by
  decide +kernel
theorem small_3633012_right_covered : CoveredBy scale carrier boxes small_3633012_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3633012_right_root small_3633012_right_fuel small_3633012_right_count small_3633012_right_encoded small_3633012_right_checked

theorem cover_3633012 : CoveredBy scale carrier boxes root_3633012 := by
  apply coveredBy_split_literal root_3633012 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0257.root_3633017 small_3633012_right_root coord2 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0257.cover_3633017
  · exact small_3633012_right_covered
#print axioms cover_3633012

def root_3633011 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3633011 : CoveredBy scale carrier boxes root_3633011 := by
  apply coveredBy_split_literal root_3633011 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0257.root_3633012 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1374.root coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0257.cover_3633012
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1374.covered
#print axioms cover_3633011

def root_3633006 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3633006_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3633006_right_fuel : Nat := 1
def small_3633006_right_count : Nat := 1
def small_3633006_right_encoded : String := "00000001"
theorem small_3633006_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3633006_right_root small_3633006_right_fuel small_3633006_right_count small_3633006_right_encoded = true := by
  decide +kernel
theorem small_3633006_right_covered : CoveredBy scale carrier boxes small_3633006_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3633006_right_root small_3633006_right_fuel small_3633006_right_count small_3633006_right_encoded small_3633006_right_checked

theorem cover_3633006 : CoveredBy scale carrier boxes root_3633006 := by
  apply coveredBy_split_literal root_3633006 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0257.root_3633011 small_3633006_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0257.cover_3633011
  · exact small_3633006_right_covered
#print axioms cover_3633006

def root_3638710 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3638710_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3638710_left_fuel : Nat := 18
def small_3638710_left_count : Nat := 95
def small_3638710_left_encoded : String := "1151E9090000000408A913071207010600000003050000F6135D8101050000F8135D810305000104135D44FB0500010800000008135D810904548A07138671060000000300000008000000080000000400000002135D80FB000000020500010800000008135D810904548A071386710600000003078000F6128A7D01078000F800000008128A4103000000010000000600000000000000081386AD06078000F6128A7D01078000F800000008128A410300000001000000060000000000000008000000030000000400000001135D45030000000105000104135D44FB0000000900000002135D80FB000000020500010800000006135D810904548A0700000006000000050000000400000000135D450100000000050000F800000008135D45030000000105000104000000090000000612073D06050000F6135D8101050000F8135D81030500010400000009135D80FB000000020500010800000009135D810900000009000000040000000100000009000000000000000900000003"
theorem small_3638710_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3638710_left_root small_3638710_left_fuel small_3638710_left_count small_3638710_left_encoded = true := by
  decide +kernel
theorem small_3638710_left_covered : CoveredBy scale carrier boxes small_3638710_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3638710_left_root small_3638710_left_fuel small_3638710_left_count small_3638710_left_encoded small_3638710_left_checked

theorem cover_3638710 : CoveredBy scale carrier boxes root_3638710 := by
  apply coveredBy_split_literal root_3638710 small_3638710_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1375.root coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_3638710_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1375.covered
#print axioms cover_3638710

def root_3638705 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3638705_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3638705_right_fuel : Nat := 1
def small_3638705_right_count : Nat := 1
def small_3638705_right_encoded : String := "00000003"
theorem small_3638705_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3638705_right_root small_3638705_right_fuel small_3638705_right_count small_3638705_right_encoded = true := by
  decide +kernel
theorem small_3638705_right_covered : CoveredBy scale carrier boxes small_3638705_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3638705_right_root small_3638705_right_fuel small_3638705_right_count small_3638705_right_encoded small_3638705_right_checked

theorem cover_3638705 : CoveredBy scale carrier boxes root_3638705 := by
  apply coveredBy_split_literal root_3638705 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0257.root_3638710 small_3638705_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0257.cover_3638710
  · exact small_3638705_right_covered
#print axioms cover_3638705

def root_3638653 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3638653_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3638653_left_fuel : Nat := 10
def small_3638653_left_count : Nat := 23
def small_3638653_left_encoded : String := "1151E907000000030A0001081151E90900000004000000051152250908A9130912070108000000040000000712073D08050000F60000000A135D450100000000050000F80000000A135D4503000000010000000A0000000400000004"
theorem small_3638653_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3638653_left_root small_3638653_left_fuel small_3638653_left_count small_3638653_left_encoded = true := by
  decide +kernel
theorem small_3638653_left_covered : CoveredBy scale carrier boxes small_3638653_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3638653_left_root small_3638653_left_fuel small_3638653_left_count small_3638653_left_encoded small_3638653_left_checked

theorem cover_3638653 : CoveredBy scale carrier boxes root_3638653 := by
  apply coveredBy_split_literal root_3638653 small_3638653_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0257.root_3638705 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_3638653_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0257.cover_3638705
#print axioms cover_3638653

def root_3638648 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3638648_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3638648_right_fuel : Nat := 1
def small_3638648_right_count : Nat := 1
def small_3638648_right_encoded : String := "00000002"
theorem small_3638648_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3638648_right_root small_3638648_right_fuel small_3638648_right_count small_3638648_right_encoded = true := by
  decide +kernel
theorem small_3638648_right_covered : CoveredBy scale carrier boxes small_3638648_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3638648_right_root small_3638648_right_fuel small_3638648_right_count small_3638648_right_encoded small_3638648_right_checked

theorem cover_3638648 : CoveredBy scale carrier boxes root_3638648 := by
  apply coveredBy_split_literal root_3638648 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0257.root_3638653 small_3638648_right_root coord2 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0257.cover_3638653
  · exact small_3638648_right_covered
#print axioms cover_3638648

def root_3638647 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3638647_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3638647_right_fuel : Nat := 22
def small_3638647_right_count : Nat := 175
def small_3638647_right_encoded : String := "115224FB000000020A0001061151E907000000030A0001081151E90900000004000000051152250908A912FB12073D0408A9130912070108000000040000000712073D08050000F6135D8101050000F8135D810305000106000000060000000500000001000000050000000000000005000000040000000212070104000000020000000500000004115225070A0001081151E9090000000408A912FB12073D0408A913071207010600000003050000F6135D8101050000F8135D81030500010800000006135D81090CFD9BFB0F350D0404548A07000000060000000500000002000000050000000400000001135D4503000000010000000500000000135D4501000000000000000512073D06050000F6135D8101050000F8135D81030500010800000006000000050000000100000005000000000000000500000003000000021207010400000002000000051152250908A912FB12073D0408A91307120701060000000308A9130912070108000000040000000512073D08050000F6135D8101050000F8135D81030CFD9BFB0F350D0404548A0713867106000000030CFD9C090F34D1080000000400000005000000051386AD060CFD9C090F34D10800000004000000050000000500000003000000020F34D1040000000200000005000000010000000500000000000000050000000412073D0608A913091207010800000004050000F6135D8101050000F8135D81030CFD9BFB0F350D040CFD9C070F34D10600000003000000050000000700000002000000070000000100000005000000000000000512073D08050000F6135D8101050000F8135D81030CFD9BFB0F350D040CFD9C070F34D106000000030000000500000005000000020000000500000001000000050000000000000005000000040000000300000002120701040000000208A91307120701060000000300000005000000050000000400000003"
theorem small_3638647_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3638647_right_root small_3638647_right_fuel small_3638647_right_count small_3638647_right_encoded = true := by
  decide +kernel
theorem small_3638647_right_covered : CoveredBy scale carrier boxes small_3638647_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3638647_right_root small_3638647_right_fuel small_3638647_right_count small_3638647_right_encoded small_3638647_right_checked

theorem cover_3638647 : CoveredBy scale carrier boxes root_3638647 := by
  apply coveredBy_split_literal root_3638647 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0257.root_3638648 small_3638647_right_root coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0257.cover_3638648
  · exact small_3638647_right_covered
#print axioms cover_3638647

def root_3638641 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3638641_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3638641_left_fuel : Nat := 1
def small_3638641_left_count : Nat := 1
def small_3638641_left_encoded : String := "00000001"
theorem small_3638641_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3638641_left_root small_3638641_left_fuel small_3638641_left_count small_3638641_left_encoded = true := by
  decide +kernel
theorem small_3638641_left_covered : CoveredBy scale carrier boxes small_3638641_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3638641_left_root small_3638641_left_fuel small_3638641_left_count small_3638641_left_encoded small_3638641_left_checked

theorem cover_3638641 : CoveredBy scale carrier boxes root_3638641 := by
  apply coveredBy_split_literal root_3638641 small_3638641_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0257.root_3638647 coord1 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_3638641_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0257.cover_3638647
#print axioms cover_3638641

def root_3633005 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3633005 : CoveredBy scale carrier boxes root_3633005 := by
  apply coveredBy_split_literal root_3633005 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0257.root_3633006 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0257.root_3638641 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0257.cover_3633006
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0257.cover_3638641
#print axioms cover_3633005

def root_3632999 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3632999_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3632999_left_fuel : Nat := 1
def small_3632999_left_count : Nat := 1
def small_3632999_left_encoded : String := "00000000"
theorem small_3632999_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3632999_left_root small_3632999_left_fuel small_3632999_left_count small_3632999_left_encoded = true := by
  decide +kernel
theorem small_3632999_left_covered : CoveredBy scale carrier boxes small_3632999_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3632999_left_root small_3632999_left_fuel small_3632999_left_count small_3632999_left_encoded small_3632999_left_checked

theorem cover_3632999 : CoveredBy scale carrier boxes root_3632999 := by
  apply coveredBy_split_literal root_3632999 small_3632999_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0257.root_3633005 coord0 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_3632999_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0257.cover_3633005
#print axioms cover_3632999

def root_3585821 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3585821 : CoveredBy scale carrier boxes root_3585821 := by
  apply coveredBy_split_literal root_3585821 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0257.root_3585822 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0257.root_3632999 coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0257.cover_3585822
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0257.cover_3632999
#print axioms cover_3585821

def root_3541663 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3541663 : CoveredBy scale carrier boxes root_3541663 := by
  apply coveredBy_split_literal root_3541663 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0252.root_3541664 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0257.root_3585821 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0252.cover_3541664
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0257.cover_3585821
#print axioms cover_3541663

def root_3531213 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3531213 : CoveredBy scale carrier boxes root_3531213 := by
  apply coveredBy_split_literal root_3531213 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0246.root_3531214 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0257.root_3541663 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0246.cover_3531214
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0257.cover_3541663
#print axioms cover_3531213

def root_3447769 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3447769 : CoveredBy scale carrier boxes root_3447769 := by
  apply coveredBy_split_literal root_3447769 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0245.root_3447770 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0257.root_3531213 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0245.cover_3447770
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0257.cover_3531213
#print axioms cover_3447769

def root_3334847 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3334847 : CoveredBy scale carrier boxes root_3334847 := by
  apply coveredBy_split_literal root_3334847 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0235.root_3334848 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0257.root_3447769 coord3 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0235.cover_3334848
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0257.cover_3447769
#print axioms cover_3334847

def root_3644345 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3644345 : CoveredBy scale carrier boxes root_3644345 := by
  apply coveredBy_split_literal root_3644345 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1377.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1378.root coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1377.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1378.covered
#print axioms cover_3644345

def root_3644340 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3644340_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3644340_right_fuel : Nat := 1
def small_3644340_right_count : Nat := 1
def small_3644340_right_encoded : String := "00000004"
theorem small_3644340_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3644340_right_root small_3644340_right_fuel small_3644340_right_count small_3644340_right_encoded = true := by
  decide +kernel
theorem small_3644340_right_covered : CoveredBy scale carrier boxes small_3644340_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3644340_right_root small_3644340_right_fuel small_3644340_right_count small_3644340_right_encoded small_3644340_right_checked

theorem cover_3644340 : CoveredBy scale carrier boxes root_3644340 := by
  apply coveredBy_split_literal root_3644340 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0257.root_3644345 small_3644340_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0257.cover_3644345
  · exact small_3644340_right_covered
#print axioms cover_3644340

def root_3644339 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3644339_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3644339_right_fuel : Nat := 24
def small_3644339_right_count : Nat := 343
def small_3644339_right_encoded : String := "1151E9090000000408A91301120700F608A91303120700F808A91305120701040000000208A912FD00000009120700FC050000FE135D810904548A01138670F600000009000000000000000600000004000000060000000312073D0408A912FD00000009120700FC050000FE135D810904548A010000000900000009000000040000000900000003000000020000000112073CF80000000108A91305120701040000000208A912FD00000009120700FC050000FE135D810904548A01138670F60CFD9C030F34D0F800000009000000010F350CF80000000104548A0513867104000000020000000900000009000000001386ACF6000000000CFD9C030F34D0F800000009000000010F350CF80000000104548A051386710400000002000000090000000900000004135D450900000004000000090000000312073D0408A912FD00000009120700FC050000FE135D810904548A01138670F60CFD9C030F34D0F800000009000000010F350CF8000000010CFD9C050F34D104000000020000000900000009000000001386ACF6000000000CFD9C030F34D0F800000009000000010F350CF8000000010CFD9C050F34D10400000002000000090000000900000004135D45090000000404548A01138670F600000009000000000000000900000003000000020000000012073CF60000000008A91303120700F808A91305120701040000000208A912FD00000009120700FC050000FE135D81090CFD9C010F34D0F600000006000000000000000600000004000000060000000312073D0408A912FD00000009120700FC050000FE135D81090CFD9C010F34D0F604548A030000000900000009000000000F350CF60000000004548A03138670F80CFD9C050000000600000009000000011386ACF8000000010CFD9C050F34D10400000002000000090000000900000004135D4509000000040CFD9C010F34D0F600000009000000000000000900000003000000020000000112073CF80000000108A91305120701040000000208A912FD00000009120700FC050000FE135D81090CFD9C010F34D0F60CFD9C030F34D0F800000009000000010F350CF80000000104548A0513867104000000020000000900000009000000000F350CF6000000000CFD9C030F34D0F804548A050000000600000009000000010F350CF80000000104548A051386710400000002045489FD00000009138670FC0C9A86F6000000090F875101000000000C9A86F8000000060F8751030000000100000009000000031386AD04045489FD00000009138670FC0C9A86F6000000090F8751010000000000000009000000030000000200000004135D4509000000040CFD9C010F34D0F60000000900000000000000090000000312073D0408A912FD12073CFC00000003050000FE135D81090CFD9C010F34D0F60000000900000000000000090000000400000009120700FC050000FE135D81090CFD9C010F34D0F60CFD9C030F34D0F80CFD9C050F34D104000000020000000900000009000000010F350CF8000000010CFD9C050F34D10400000002000000090F350D04045489FD000000090000000500000002000000000F350CF6000000000CFD9C030F34D0F80CFD9C050F34D10400000002000000090F350D04045489FD000000090000000500000002000000010F350CF8000000010CFD9C050F34D10400000002045489FD00000009138670FC0C9A86F6000000090F8751010000000000000005000000030F350D040000000A0000000200000004135D4509000000040CFD9C010F34D0F60CFD9C030000000900000009000000000F350CF6000000000CFD9C030F34D0F800000009000000010F350CF8000000010CFD9C050F34D1040000000200000009000000050000000300000002"
theorem small_3644339_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3644339_right_root small_3644339_right_fuel small_3644339_right_count small_3644339_right_encoded = true := by
  decide +kernel
theorem small_3644339_right_covered : CoveredBy scale carrier boxes small_3644339_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3644339_right_root small_3644339_right_fuel small_3644339_right_count small_3644339_right_encoded small_3644339_right_checked

theorem cover_3644339 : CoveredBy scale carrier boxes root_3644339 := by
  apply coveredBy_split_literal root_3644339 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0257.root_3644340 small_3644339_right_root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0257.cover_3644340
  · exact small_3644339_right_covered
#print axioms cover_3644339

def root_3644333 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3644333_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3644333_left_fuel : Nat := 1
def small_3644333_left_count : Nat := 1
def small_3644333_left_encoded : String := "00000003"
theorem small_3644333_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3644333_left_root small_3644333_left_fuel small_3644333_left_count small_3644333_left_encoded = true := by
  decide +kernel
theorem small_3644333_left_covered : CoveredBy scale carrier boxes small_3644333_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3644333_left_root small_3644333_left_fuel small_3644333_left_count small_3644333_left_encoded small_3644333_left_checked

theorem cover_3644333 : CoveredBy scale carrier boxes root_3644333 := by
  apply coveredBy_split_literal root_3644333 small_3644333_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0257.root_3644339 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_3644333_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0257.cover_3644339
#print axioms cover_3644333

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0257
