import TaoBundleAssembly0179
import TaoBundleAssembly0180
import TaoBundleChunkBatch0705
import TaoBundleChunkBatch0707
import TaoBundleChunkBatch0708
import TaoBundleChunkBatch0709
import TaoBundleChunkBatch0710
import TaoBundleChunkBatch0711
import TaoBundleChunkBatch0712
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0181
def root_7505741 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7505741_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7505741_left_fuel : Nat := 21
def small_7505741_left_count : Nat := 243
def small_7505741_left_encoded : String := "120701020000000105000104135D44FB050000FC135D8107050000FE135D8109045489F71386AD0004548A03000000080000000800000000138671000000000004548A031386710200000001028001040000000813D7ECFB00000002078000FC00000008000000081386AD020280010413D7B0FB078000FC128A7D070000000800000003128A410700000003000000090000000213D7ECFB00000002078000FC128A7D070000000800000003128A410700000003078000FE128A7D0900000009000000040000000800000001000000040000000800000003135D450700000003050000FE135D8109045489F71386AD0004548A03000000091386AD02028001040000000913D7ECFB00000002028000FC13D7ED07078000FE00000009000000080000000313D7B10700000003078000FE00000009000000050000000100000000138671000000000004548A03000000091386AD02028001040000000913D7ECFB00000002028000FC13D7ED07078000FE000000090000000500000003000000050000000100000004135D450900000004045489F71386AD0004548A03000000081386AD020280010413D7B0FB028000FC00000008000000050000000200000005000000010000000013867100000000000000000500000002135D80FB00000002050000FC135D8107050000FE135D8109045489F71386AD0004548A03000000081386AD020780010400000008128A7CFB00000002000000080000000100000000138671000000000004548A03138671020000000107800104128A40FB078000FC00000008128A410700000003078000FE000000090000000500000002128A7CFB00000002078000FC00000008000000051386AD0207800104128A40FB078000FC128A7D07078000FE128A7D0900000008000000040000000800000003128A410700000003078000FE128A7D09022A457713E20100067ECE8300000008000000080000000013E1C5000000000000000005000000040000000500000002128A7CFB00000002078000FC128A7D07078000FE128A7D0900000008000000040000000500000003000000050000000100000004135D450900000004045489F70000000813867100000000000000000500000003135D450700000003050000FE135D8109045489F71386AD0004548A03138671020000000107800104128A40FB0000000900000002000000051386AD0207800104128A40FB028000FC13D7ED07078000FE128A7D09067ECE770000000712EA5900000000000000000500000004000000050000000300000005000000020000000500000001000000001386710000000000000000050000000400000005"
theorem small_7505741_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7505741_left_root small_7505741_left_fuel small_7505741_left_count small_7505741_left_encoded = true := by
  decide +kernel
theorem small_7505741_left_covered : CoveredBy scale carrier boxes small_7505741_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7505741_left_root small_7505741_left_fuel small_7505741_left_count small_7505741_left_encoded small_7505741_left_checked

theorem cover_7505741 : CoveredBy scale carrier boxes root_7505741 := by
  apply coveredBy_split_literal root_7505741 small_7505741_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0180.root_7506253 coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_7505741_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0180.cover_7506253
#print axioms cover_7505741

def root_7505735 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7505735_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7505735_left_fuel : Nat := 1
def small_7505735_left_count : Nat := 1
def small_7505735_left_encoded : String := "00000000"
theorem small_7505735_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7505735_left_root small_7505735_left_fuel small_7505735_left_count small_7505735_left_encoded = true := by
  decide +kernel
theorem small_7505735_left_covered : CoveredBy scale carrier boxes small_7505735_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7505735_left_root small_7505735_left_fuel small_7505735_left_count small_7505735_left_encoded small_7505735_left_checked

theorem cover_7505735 : CoveredBy scale carrier boxes root_7505735 := by
  apply coveredBy_split_literal root_7505735 small_7505735_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0181.root_7505741 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_7505735_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0181.cover_7505741
#print axioms cover_7505735

def root_7505201 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7505201_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7505201_left_fuel : Nat := 22
def small_7505201_left_count : Nat := 249
def small_7505201_left_encoded : String := "12073D0008A91303120701020000000105000104135D44FB050000FC135D81070000000800000003135D450700000003050000FE135D81090CFD9BF70F350D0000000008000000000F34D1000000000004548A03000000081386AD02028001040000000913D7ECFB00000002028000FC00000008000000070000000100000004135D4509000000040CFD9BF7000000080000000800000002135D80FB00000002050000FC00000008135D450700000003050000FE135D81090CFD9BF7000000070F34D1000000000004548A030000000800000007000000040000000812073D0205000104135D44FB050000FC135D8107050000FE135D81090CFD9BF70F350D000CFD9C030F34D10200000001000000080000000A000000000F34D100000000000CFD9C030F34D102000000010280010413D7B0FB078000FC00000008128A410700000003078000FE128A7D090AD357770000000710D10100000000000000000900000004000000080000000213D7ECFB00000002078000FC00000008128A410700000003078000FE128A7D090000000700000004000000070F350D020C9A8702000000070F878D030280010413D7B0FB0000000A0000000213D7ECFB0000000200000007000000010000000100000004135D4509000000040CFD9BF70000000A0F34D100000000000CFD9C030F34D10200000001000000080000000A00000003135D450700000003050000FE135D81090CFD9BF70F350D000CFD9C030F34D102000000010C9A87000F8750F70000000700000000000000070F350D020000000700000001000000000F34D100000000000CFD9C030F34D102000000010280010413D7B0FB028000FC13D7ED07078000FE0000000700000007000000030000000700000002000000070F350D02000000070000000100000004135D4509000000040CFD9BF7000000070F34D100000000000000000700000002135D80FB00000002050000FC135D8107050000FE135D81090CFD9BF70F350D000CFD9C030F34D10200000001000000060F350D020C9A87000000000A0000000700000001000000000F34D100000000000CFD9C030F34D1020000000107800104128A40FB078000FC000000080000000700000002128A7CFB00000002000000060F350D02000000070000000100000004135D4509000000040CFD9BF70F350D000CFD9C03000000070000000A000000000F34D100000000000CFD9C030F34D10200000001000000080000000700000003135D450700000003050000FE135D81090CFD9BF70F350D000CFD9C03000000070F350D020000000700000001000000000F34D100000000000000000700000004135D4509000000040CFD9BF700000007000000070000000100000000"
theorem small_7505201_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7505201_left_root small_7505201_left_fuel small_7505201_left_count small_7505201_left_encoded = true := by
  decide +kernel
theorem small_7505201_left_covered : CoveredBy scale carrier boxes small_7505201_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7505201_left_root small_7505201_left_fuel small_7505201_left_count small_7505201_left_encoded small_7505201_left_checked

theorem cover_7505201 : CoveredBy scale carrier boxes root_7505201 := by
  apply coveredBy_split_literal root_7505201 small_7505201_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0181.root_7505735 coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_7505201_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0181.cover_7505735
#print axioms cover_7505201

def root_7505195 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7505195_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7505195_left_fuel : Nat := 1
def small_7505195_left_count : Nat := 1
def small_7505195_left_encoded : String := "00000004"
theorem small_7505195_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7505195_left_root small_7505195_left_fuel small_7505195_left_count small_7505195_left_encoded = true := by
  decide +kernel
theorem small_7505195_left_covered : CoveredBy scale carrier boxes small_7505195_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7505195_left_root small_7505195_left_fuel small_7505195_left_count small_7505195_left_encoded small_7505195_left_checked

theorem cover_7505195 : CoveredBy scale carrier boxes root_7505195 := by
  apply coveredBy_split_literal root_7505195 small_7505195_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0181.root_7505201 coord4 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_7505195_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0181.cover_7505201
#print axioms cover_7505195

def root_7497895 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7497895 : CoveredBy scale carrier boxes root_7497895 := by
  apply coveredBy_split_literal root_7497895 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0180.root_7497896 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0181.root_7505195 coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0180.cover_7497896
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0181.cover_7505195
#print axioms cover_7497895

def root_7497889 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7497889_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7497889_left_fuel : Nat := 1
def small_7497889_left_count : Nat := 1
def small_7497889_left_encoded : String := "00000003"
theorem small_7497889_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7497889_left_root small_7497889_left_fuel small_7497889_left_count small_7497889_left_encoded = true := by
  decide +kernel
theorem small_7497889_left_covered : CoveredBy scale carrier boxes small_7497889_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7497889_left_root small_7497889_left_fuel small_7497889_left_count small_7497889_left_encoded small_7497889_left_checked

theorem cover_7497889 : CoveredBy scale carrier boxes root_7497889 := by
  apply coveredBy_split_literal root_7497889 small_7497889_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0181.root_7497895 coord3 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_7497889_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0181.cover_7497895
#print axioms cover_7497889

def root_7490601 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7490601 : CoveredBy scale carrier boxes root_7490601 := by
  apply coveredBy_split_literal root_7490601 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0180.root_7490602 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0181.root_7497889 coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0180.cover_7490602
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0181.cover_7497889
#print axioms cover_7490601

def root_7490596 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7490596_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7490596_right_fuel : Nat := 1
def small_7490596_right_count : Nat := 1
def small_7490596_right_encoded : String := "00000002"
theorem small_7490596_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7490596_right_root small_7490596_right_fuel small_7490596_right_count small_7490596_right_encoded = true := by
  decide +kernel
theorem small_7490596_right_covered : CoveredBy scale carrier boxes small_7490596_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7490596_right_root small_7490596_right_fuel small_7490596_right_count small_7490596_right_encoded small_7490596_right_checked

theorem cover_7490596 : CoveredBy scale carrier boxes root_7490596 := by
  apply coveredBy_split_literal root_7490596 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0181.root_7490601 small_7490596_right_root coord2 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0181.cover_7490601
  · exact small_7490596_right_covered
#print axioms cover_7490596

def root_7517141 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7517141 : CoveredBy scale carrier boxes root_7517141 := by
  apply coveredBy_split_literal root_7517141 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2828.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2829.root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2828.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2829.covered
#print axioms cover_7517141

def root_7517135 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7517135_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7517135_left_fuel : Nat := 1
def small_7517135_left_count : Nat := 1
def small_7517135_left_encoded : String := "00000002"
theorem small_7517135_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7517135_left_root small_7517135_left_fuel small_7517135_left_count small_7517135_left_encoded = true := by
  decide +kernel
theorem small_7517135_left_covered : CoveredBy scale carrier boxes small_7517135_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7517135_left_root small_7517135_left_fuel small_7517135_left_count small_7517135_left_encoded small_7517135_left_checked

theorem cover_7517135 : CoveredBy scale carrier boxes root_7517135 := by
  apply coveredBy_split_literal root_7517135 small_7517135_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0181.root_7517141 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_7517135_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0181.cover_7517141
#print axioms cover_7517135

def root_7490595 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7490595 : CoveredBy scale carrier boxes root_7490595 := by
  apply coveredBy_split_literal root_7490595 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0181.root_7490596 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0181.root_7517135 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0181.cover_7490596
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0181.cover_7517135
#print axioms cover_7490595

def root_7490590 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7490590_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7490590_right_fuel : Nat := 1
def small_7490590_right_count : Nat := 1
def small_7490590_right_encoded : String := "00000001"
theorem small_7490590_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7490590_right_root small_7490590_right_fuel small_7490590_right_count small_7490590_right_encoded = true := by
  decide +kernel
theorem small_7490590_right_covered : CoveredBy scale carrier boxes small_7490590_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7490590_right_root small_7490590_right_fuel small_7490590_right_count small_7490590_right_encoded small_7490590_right_checked

theorem cover_7490590 : CoveredBy scale carrier boxes root_7490590 := by
  apply coveredBy_split_literal root_7490590 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0181.root_7490595 small_7490590_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0181.cover_7490595
  · exact small_7490590_right_covered
#print axioms cover_7490590

def root_7487766 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7487766 : CoveredBy scale carrier boxes root_7487766 := by
  apply coveredBy_split_literal root_7487766 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2819.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0181.root_7490590 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2819.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0181.cover_7490590
#print axioms cover_7487766

def root_7487760 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7487760_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7487760_left_fuel : Nat := 1
def small_7487760_left_count : Nat := 1
def small_7487760_left_encoded : String := "00000000"
theorem small_7487760_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7487760_left_root small_7487760_left_fuel small_7487760_left_count small_7487760_left_encoded = true := by
  decide +kernel
theorem small_7487760_left_covered : CoveredBy scale carrier boxes small_7487760_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7487760_left_root small_7487760_left_fuel small_7487760_left_count small_7487760_left_encoded small_7487760_left_checked

theorem cover_7487760 : CoveredBy scale carrier boxes root_7487760 := by
  apply coveredBy_split_literal root_7487760 small_7487760_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0181.root_7487766 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_7487760_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0181.cover_7487766
#print axioms cover_7487760

def root_7487148 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7487148_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7487148_left_fuel : Nat := 22
def small_7487148_left_count : Nat := 283
def small_7487148_left_encoded : String := "1151E8F70A0001021151E903000000010A0001041151E8FB0A0000FC000000051151E907000000030A0000FE000000050000000A00000002115224FB000000020A0000FC115225070A0000FE1152250908A912FB12073D040000000500000002120701040000000200000006000000041151E9090000000400000009000000031151E907000000030A0000FE1152250908A912FB12073D0408A91309120700FE000000050000000412073CFE0000000405000100135D44F70000000600000000135D80F70000000005000102135D450300000001050000FC00000006135D450700000003000000060000000600000002120701040000000200000006000000041151E9090000000408A912FB12073D0405000100000000090000000900000002120701040000000200000006115225030A0001041151E8FB0A0000FC115225070A0000FE1152250908A91303120701020000000108A913070000000812073CFC0000000308A91309120700FE00000005000000040000000512073D0208A91307120700FC00000005000000030000000500000001000000041151E9090000000408A913030000000812073D0208A91307120700FC000000050000000312073CFC000000030500010000000005135D80F70000000005000104000000050000000800000001000000031151E907000000030A0000FE1152250908A91303120701020000000108A91309120700FE000000050000000412073CFE000000040500010000000005135D80F7000000000500010400000005135D80FB000000020000000612073D0208A91309120700FE000000050000000412073CFE000000040500010000000005135D80F7000000000500010400000005135D80FB00000002050000FC00000005135D4507000000030CFD9C030F34D10200000001000000060000000600000001000000041151E9090000000408A9130312070102000000010000000812073D0205000100135D44F7050001040000000A0000000800000000135D80F70000000005000104135D44FB050000FC0000000A135D4507000000030000000A00000002135D80FB00000002050000FC00000008135D450700000003050000FE135D81090CFD9C03000000080000000600000004000000070000000100000002115224FB000000020A0000FC115225070A0000FE1152250908A9130312070102000000010000000612073D0208A912FB12073D0408A91307120700FC000000050000000300000006000000020000000600000001000000041151E9090000000408A9130312070102000000010000000600000008000000031151E907000000030A0000FE1152250908A9130312070102000000010000000612073D0208A912FB12073D0408A91309120700FE000000060000000400000006000000020000000600000001000000041151E9090000000408A9130312070102000000010000000612073D0208A912FB12073D040500010000000008135D80F700000000050000FC00000006135D450700000003050000FE00000006000000070000000200000006000000010000000100000000"
theorem small_7487148_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7487148_left_root small_7487148_left_fuel small_7487148_left_count small_7487148_left_encoded = true := by
  decide +kernel
theorem small_7487148_left_covered : CoveredBy scale carrier boxes small_7487148_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7487148_left_root small_7487148_left_fuel small_7487148_left_count small_7487148_left_encoded small_7487148_left_checked

theorem cover_7487148 : CoveredBy scale carrier boxes root_7487148 := by
  apply coveredBy_split_literal root_7487148 small_7487148_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0181.root_7487760 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_7487148_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0181.cover_7487760
#print axioms cover_7487148

def root_7472474 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7472474 : CoveredBy scale carrier boxes root_7472474 := by
  apply coveredBy_split_literal root_7472474 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0180.root_7472475 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0181.root_7487148 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0180.cover_7472475
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0181.cover_7487148
#print axioms cover_7472474

def root_7520486 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7520486 : CoveredBy scale carrier boxes root_7520486 := by
  apply coveredBy_split_literal root_7520486 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2830.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2831.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2830.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2831.covered
#print axioms cover_7520486

def root_7520485 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7520485 : CoveredBy scale carrier boxes root_7520485 := by
  apply coveredBy_split_literal root_7520485 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0181.root_7520486 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2832.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0181.cover_7520486
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2832.covered
#print axioms cover_7520485

def root_7472473 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7472473 : CoveredBy scale carrier boxes root_7472473 := by
  apply coveredBy_split_literal root_7472473 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0181.root_7472474 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0181.root_7520485 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0181.cover_7472474
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0181.cover_7520485
#print axioms cover_7472473

def root_7456053 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7456053 : CoveredBy scale carrier boxes root_7456053 := by
  apply coveredBy_split_literal root_7456053 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0179.root_7456054 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0181.root_7472473 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0179.cover_7456054
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0181.cover_7472473
#print axioms cover_7456053

def root_7527202 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7527202 : CoveredBy scale carrier boxes root_7527202 := by
  apply coveredBy_split_literal root_7527202 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2834.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2835.root coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2834.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2835.covered
#print axioms cover_7527202

def root_7527197 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7527197_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7527197_right_fuel : Nat := 1
def small_7527197_right_count : Nat := 1
def small_7527197_right_encoded : String := "00000000"
theorem small_7527197_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7527197_right_root small_7527197_right_fuel small_7527197_right_count small_7527197_right_encoded = true := by
  decide +kernel
theorem small_7527197_right_covered : CoveredBy scale carrier boxes small_7527197_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7527197_right_root small_7527197_right_fuel small_7527197_right_count small_7527197_right_encoded small_7527197_right_checked

theorem cover_7527197 : CoveredBy scale carrier boxes root_7527197 := by
  apply coveredBy_split_literal root_7527197 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0181.root_7527202 small_7527197_right_root coord0 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0181.cover_7527202
  · exact small_7527197_right_covered
#print axioms cover_7527197

def root_7527196 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7527196 : CoveredBy scale carrier boxes root_7527196 := by
  apply coveredBy_split_literal root_7527196 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0181.root_7527197 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2836.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0181.cover_7527197
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2836.covered
#print axioms cover_7527196

def root_7525632 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7525632 : CoveredBy scale carrier boxes root_7525632 := by
  apply coveredBy_split_literal root_7525632 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2833.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0181.root_7527196 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2833.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0181.cover_7527196
#print axioms cover_7525632

def root_7525631 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7525631 : CoveredBy scale carrier boxes root_7525631 := by
  apply coveredBy_split_literal root_7525631 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0181.root_7525632 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2837.root coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0181.cover_7525632
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2837.covered
#print axioms cover_7525631

def root_7536493 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7536493_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7536493_right_fuel : Nat := 26
def small_7536493_right_count : Nat := 311
def small_7536493_right_encoded : String := "115225070A0000FE115224FF0000000408A912FB12073D0408A9130712070106000000030000000712073D0608A912FF12073CFE0000000405000100135D44F705000102135D45030000000100000007135D81030CFD9BFB000000070F34D10400000002000000070000000100000000135D80F70000000005000102135D4503000000010CFD9BFB0F350D040CFD9C07000000070F350D060CFD9BFF000000070F34D0FE000000070000000400000003000000020F34D1040000000200000007135D81030CFD9BFB0F350D040CFD9C070F34D10600000003000000070F350D060CFD9BFF0F350CFE000000040C9A87040F8750FB0C9A87060F875107000000030C9A86FE000000070F8750FF00000007000000040000000700000002000000070F34D0FE000000070000000400000003000000020F34D104000000020CFD9C07000000070F350D060CFD9BFF000000070F34D0FE00000007000000040000000300000001120700FE0500010000000007135D80F70000000005000102135D4503000000010CFD9BFB000000070F34D1040000000200000007135D81030CFD9BFB0F350D040CFD9C07000000070F350D06045489FF00000007138670FE000000070000000400000003000000020F34D104000000020000000700000001000000040000000300000002120701040000000208A9130712070106000000030000000712073D0608A912FF12073CFE000000040500010000000007135D80F70000000005000102135D450300000001045489FB00000007138671040000000200000007135D8103045489FB1386AD040CFD9C07000000070F350D060CFD9BFF000000070F34D0FE0000000700000004000000030000000213867104000000020CFD9C07000000070F350D060CFD9BFF000000070000000A0000000300000001120700FE05000100000000070000000A00000004000000031151E8FF08A912FB12073D0408A9130712070106000000030000000712073D0605000100135D44F705000102135D45030000000100000009135D8103050000FE135D80FF000000040CFD9BFB000000070F34D1040000000200000007135D44FF0CFD9BFB0F350D04000000080000000200000008000000040000000100000000135D80F70000000005000102135D450300000001050000FE135D80FF000000040CFD9BFB0F350D040CFD9C07000000070F350D060C9A87040F8750FB000000070000000200000007000000030000000200000009135D44FF0CFD9BFB0F350D0400000009000000020000000900000004135D8103050000FE135D80FF000000040CFD9BFB0F350D040CFD9C070F34D10600000003000000070F350D060C9A87040F8750FB0C9A87060F875107000000030780010000000006128A7CF70000000007800102000000060000000600000006000000020F878CFB000000020C9A87060F875107000000030780010000000007128A7CF7000000000780010200000007000000080000000700000003000000020F34D104000000020CFD9C07000000070F350D060C9A87060F87510700000003000000070000000700000003135D44FF0CFD9BFB0F350D040CFD9C07000000080F350D060C9A8704000000060000000500000003000000020F34D104000000020000000500000004000000010000000300000002120701040000000208A913070000000912073D0600000009000000030000000400000003"
theorem small_7536493_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7536493_right_root small_7536493_right_fuel small_7536493_right_count small_7536493_right_encoded = true := by
  decide +kernel
theorem small_7536493_right_covered : CoveredBy scale carrier boxes small_7536493_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7536493_right_root small_7536493_right_fuel small_7536493_right_count small_7536493_right_encoded small_7536493_right_checked

theorem cover_7536493 : CoveredBy scale carrier boxes root_7536493 := by
  apply coveredBy_split_literal root_7536493 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2839.root small_7536493_right_root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2839.covered
  · exact small_7536493_right_covered
#print axioms cover_7536493

def root_7536487 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7536487_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7536487_left_fuel : Nat := 1
def small_7536487_left_count : Nat := 1
def small_7536487_left_encoded : String := "00000002"
theorem small_7536487_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7536487_left_root small_7536487_left_fuel small_7536487_left_count small_7536487_left_encoded = true := by
  decide +kernel
theorem small_7536487_left_covered : CoveredBy scale carrier boxes small_7536487_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7536487_left_root small_7536487_left_fuel small_7536487_left_count small_7536487_left_encoded small_7536487_left_checked

theorem cover_7536487 : CoveredBy scale carrier boxes root_7536487 := by
  apply coveredBy_split_literal root_7536487 small_7536487_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0181.root_7536493 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_7536487_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0181.cover_7536493
#print axioms cover_7536487

def root_7535315 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7535315 : CoveredBy scale carrier boxes root_7535315 := by
  apply coveredBy_split_literal root_7535315 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2838.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0181.root_7536487 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2838.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0181.cover_7536487
#print axioms cover_7535315

def root_7535309 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7535309_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7535309_left_fuel : Nat := 1
def small_7535309_left_count : Nat := 1
def small_7535309_left_encoded : String := "00000001"
theorem small_7535309_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7535309_left_root small_7535309_left_fuel small_7535309_left_count small_7535309_left_encoded = true := by
  decide +kernel
theorem small_7535309_left_covered : CoveredBy scale carrier boxes small_7535309_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7535309_left_root small_7535309_left_fuel small_7535309_left_count small_7535309_left_encoded small_7535309_left_checked

theorem cover_7535309 : CoveredBy scale carrier boxes root_7535309 := by
  apply coveredBy_split_literal root_7535309 small_7535309_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0181.root_7535315 coord1 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_7535309_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0181.cover_7535315
#print axioms cover_7535309

def root_7542016 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7542016_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7542016_right_fuel : Nat := 20
def small_7542016_right_count : Nat := 385
def small_7542016_right_encoded : String := "1151E8FF08A91303120701020000000108A912FB12073D0405000100135D44F705000106135D450700000003050000FE135D80FF0000000404548A0313867102000000010CFD9BFB0F350D0400000009000000020F34D10400000002000000051386AD020CFD9BFB0F350D0400000008000000020F34D104000000020280010013D7B0F700000008000000000000000800000001135D44FF04548A031386710200000001000000050000000800000004135D8107050000FE135D80FF0000000404548A0313867102000000010000000500000008000000050000000300000000135D80F70000000005000106135D450700000003050000FE135D80FF0000000404548A0313867102000000010CFD9BFB00000005000000071386AD020CFD9BFB0F350D0400000008000000020F34D104000000020000000500000001000000050000000500000002120701040000000205000100135D44F705000106135D450700000003050000FE135D80FF0000000404548A031386710200000001000000051386AD02045489FB1386AD040280010013D7B0F702800106000000060000000500000000000000050000000200000006000000010000000500000005000000000000000512073D0208A912FB12073D0405000100135D44F705000106135D450700000003050000FE135D80FF000000040CFD9C030F34D102000000010CFD9BFB0F350D040000000800000002000000080F350D020CFD9BFB0F350D0400000008000000020F34D104000000020C9A87020F87510300000001000000080000000800000001135D44FF0CFD9C030F34D10200000001000000080000000800000004135D8107050000FE135D80FF000000040CFD9C030F34D10200000001000000080F350D020CFD9BFB0F350D0400000008000000020000000800000001135D44FF0CFD9C030000000800000008000000040000000300000000135D80F70000000005000106135D450700000003050000FE135D80FF000000040CFD9C030F34D102000000010CFD9BFB0F350D0400000008000000020F34D104000000020780010000000008000000050F350D020CFD9BFB0F350D040C9A87020F875103000000010C9A8704000000080F878CFB00000002000000080F878D030000000800000001000000020F34D104000000020C9A87020F875103000000010780010000000008000000080000000800000001135D44FF0CFD9C030F34D10200000001000000080F350D020CFD9BFB0F350D040000000800000002000000080000000100000004135D8107050000FE135D80FF000000040CFD9C030F34D102000000010CFD9BFB0F350D040000000800000002000000080F350D020CFD9BFB0F350D040C9A87020F875103000000010C9A8704000000080F878CFB00000002000000080F878D030000000800000001000000020F34D104000000020C9A87020F875103000000010780010000000008000000080000000800000001135D44FF0CFD9C030F34D102000000010000000500000008000000040000000300000002120701040000000205000100135D44F705000106135D450700000003050000FE135D80FF000000040CFD9C030F34D10200000001045489FB00000008000000060F350D02045489FB1386AD0400000008000000020000000800000001135D44FF0CFD9C030F34D10200000001045489FB000000051386710400000002000000050000000800000004135D8107050000FE135D80FF000000040CFD9C030F34D102000000010000000800000008000000080000000300000000135D80F70000000005000106135D450700000003050000FE135D80FF000000040CFD9C030F34D10200000001045489FB1386AD040000000800000002000000080F350D02045489FB1386AD040C9A87020F8751030000000100000008000000080000000213867104000000020C9A8702000000060000000600000001135D44FF0CFD9C030F34D10200000001000000050000000800000004135D8107050000FE135D80FF000000040CFD9C030F34D10200000001000000050F350D02045489FB1386AD040C9A87020F87510300000001000000080000000500000002000000080000000100000005000000030000000100000004"
theorem small_7542016_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7542016_right_root small_7542016_right_fuel small_7542016_right_count small_7542016_right_encoded = true := by
  decide +kernel
theorem small_7542016_right_covered : CoveredBy scale carrier boxes small_7542016_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7542016_right_root small_7542016_right_fuel small_7542016_right_count small_7542016_right_encoded small_7542016_right_checked

theorem cover_7542016 : CoveredBy scale carrier boxes root_7542016 := by
  apply coveredBy_split_literal root_7542016 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2841.root small_7542016_right_root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2841.covered
  · exact small_7542016_right_covered
#print axioms cover_7542016

def root_7542010 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7542010_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7542010_left_fuel : Nat := 1
def small_7542010_left_count : Nat := 1
def small_7542010_left_encoded : String := "00000003"
theorem small_7542010_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7542010_left_root small_7542010_left_fuel small_7542010_left_count small_7542010_left_encoded = true := by
  decide +kernel
theorem small_7542010_left_covered : CoveredBy scale carrier boxes small_7542010_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7542010_left_root small_7542010_left_fuel small_7542010_left_count small_7542010_left_encoded small_7542010_left_checked

theorem cover_7542010 : CoveredBy scale carrier boxes root_7542010 := by
  apply coveredBy_split_literal root_7542010 small_7542010_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0181.root_7542016 coord3 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_7542010_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0181.cover_7542016
#print axioms cover_7542010

def root_7542009 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7542009 : CoveredBy scale carrier boxes root_7542009 := by
  apply coveredBy_split_literal root_7542009 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0181.root_7542010 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2842.root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0181.cover_7542010
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2842.covered
#print axioms cover_7542009

def root_7542003 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7542003_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7542003_left_fuel : Nat := 1
def small_7542003_left_count : Nat := 1
def small_7542003_left_encoded : String := "00000002"
theorem small_7542003_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7542003_left_root small_7542003_left_fuel small_7542003_left_count small_7542003_left_encoded = true := by
  decide +kernel
theorem small_7542003_left_covered : CoveredBy scale carrier boxes small_7542003_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7542003_left_root small_7542003_left_fuel small_7542003_left_count small_7542003_left_encoded small_7542003_left_checked

theorem cover_7542003 : CoveredBy scale carrier boxes root_7542003 := by
  apply coveredBy_split_literal root_7542003 small_7542003_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0181.root_7542009 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_7542003_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0181.cover_7542009
#print axioms cover_7542003

def root_7539685 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7539685 : CoveredBy scale carrier boxes root_7539685 := by
  apply coveredBy_split_literal root_7539685 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2840.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0181.root_7542003 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2840.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0181.cover_7542003
#print axioms cover_7539685

def root_7539680 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7539680_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7539680_right_fuel : Nat := 1
def small_7539680_right_count : Nat := 1
def small_7539680_right_encoded : String := "00000001"
theorem small_7539680_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7539680_right_root small_7539680_right_fuel small_7539680_right_count small_7539680_right_encoded = true := by
  decide +kernel
theorem small_7539680_right_covered : CoveredBy scale carrier boxes small_7539680_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7539680_right_root small_7539680_right_fuel small_7539680_right_count small_7539680_right_encoded small_7539680_right_checked

theorem cover_7539680 : CoveredBy scale carrier boxes root_7539680 := by
  apply coveredBy_split_literal root_7539680 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0181.root_7539685 small_7539680_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0181.cover_7539685
  · exact small_7539680_right_covered
#print axioms cover_7539680

def root_7535308 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7535308 : CoveredBy scale carrier boxes root_7535308 := by
  apply coveredBy_split_literal root_7535308 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0181.root_7535309 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0181.root_7539680 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0181.cover_7535309
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0181.cover_7539680
#print axioms cover_7535308

def root_7535303 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7535303_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7535303_right_fuel : Nat := 1
def small_7535303_right_count : Nat := 1
def small_7535303_right_encoded : String := "00000000"
theorem small_7535303_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7535303_right_root small_7535303_right_fuel small_7535303_right_count small_7535303_right_encoded = true := by
  decide +kernel
theorem small_7535303_right_covered : CoveredBy scale carrier boxes small_7535303_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7535303_right_root small_7535303_right_fuel small_7535303_right_count small_7535303_right_encoded small_7535303_right_checked

theorem cover_7535303 : CoveredBy scale carrier boxes root_7535303 := by
  apply coveredBy_split_literal root_7535303 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0181.root_7535308 small_7535303_right_root coord0 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0181.cover_7535308
  · exact small_7535303_right_covered
#print axioms cover_7535303

def root_7549940 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7549940_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7549940_right_fuel : Nat := 20
def small_7549940_right_count : Nat := 427
def small_7549940_right_encoded : String := "1151E8FF08A912F712073D0008A91307120701060000000305000102135D45030000000105000104135D44FB050000FE135D80FF000000040CFD9BF70F350D0004548A0713867106000000030000000700000006000000000F34D1000000000004548A071386710600000003000000051386AD060280010213D7B10300000001000000060000000600000003135D44FF0CFD9BF70F350D0000000006000000000F34D10000000000000000050000000400000002135D80FB00000002050000FE135D80FF000000040CFD9BF70F350D0000000007000000000F34D100000000000000000500000005135D810305000104135D44FB050000FE135D80FF000000040CFD9BF70F350D0004548A070000000500000006000000000F34D10000000000000000050000000500000002000000050000000112073D0605000102135D45030000000105000104135D44FB050000FE135D80FF000000040CFD9BF70F350D000CFD9C070F34D106000000030000000600000006000000000F34D100000000000CFD9C070F34D10600000003000000060F350D060C9A87060F87510700000003000000060000000600000003135D44FF0CFD9BF70F350D000000000600000000000000060000000400000002135D80FB00000002050000FE135D80FF000000040CFD9BF70F350D000CFD9C070F34D10600000003000000060F350D060C9A87000F8750F70C9A87060F875107000000030000000600000006000000000F878CF7000000000C9A87060F87510700000003000000060000000600000003000000000F34D100000000000CFD9C070F34D106000000030280010200000006000000050F350D060C9A87060F875107000000030280010200000006000000060000000600000003135D44FF0CFD9BF70F350D000CFD9C070000000600000006000000000F34D100000000000CFD9C070F34D10600000003000000050000000600000004135D810305000104135D44FB050000FE135D80FF000000040CFD9BF70F350D000CFD9C070F34D106000000030000000600000006000000000F34D100000000000CFD9C070F34D106000000030000000600000006135D44FF0CFD9BF70F350D000000000600000000000000060000000400000002135D80FB00000002050000FE135D80FF000000040CFD9BF70F350D000CFD9C070F34D10600000003000000060F350D060C9A87000F8750F70C9A87060F875107000000030000000600000006000000000F878CF7000000000C9A87060F87510700000003000000060000000600000003000000000F34D100000000000CFD9C070F34D10600000003000000050F350D060C9A87060F875107000000030780010200000006000000060000000600000003135D44FF0CFD9BF70F350D000CFD9C070000000600000006000000000F34D100000000000000000500000004000000010000000300000000120701000000000008A91307120701060000000305000102135D45030000000105000104135D44FB050000FE135D80FF00000004045489F71386AD0004548A071386710600000003000000051386AD0602800102000000080000000500000003000000001386710000000000000000080000000500000002000000050000000512073D0605000102135D45030000000105000104135D44FB050000FE135D80FF00000004045489F71386AD000CFD9C070F34D1060000000300000006000000060000000013867100000000000CFD9C070F34D106000000030000000800000006135D44FF045489F71386AD000CFD9C070F34D1060000000300000005000000060000000013867100000000000CFD9C0700000007000000060000000400000002135D80FB00000002050000FE135D80FF00000004045489F71386AD000CFD9C070F34D10600000003000000060F350D060C9A87060F875107000000030000000600000006000000030000000013867100000000000CFD9C070F34D10600000003000000050F350D060C9A8706000000080000000600000003135D44FF045489F71386AD000CFD9C070F34D1060000000300000005000000060000000013867100000000000000000500000004135D810305000104135D44FB050000FE135D80FF00000004045489F71386AD000CFD9C070F34D1060000000300000005000000060000000013867100000000000CFD9C070F34D1060000000300000005000000060000000600000002135D80FB00000002050000FE135D80FF00000004045489F71386AD000CFD9C070F34D10600000003000000050F350D060C9A87060F875107000000030000000600000005000000030000000013867100000000000000000500000005000000010000000300000004"
theorem small_7549940_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7549940_right_root small_7549940_right_fuel small_7549940_right_count small_7549940_right_encoded = true := by
  decide +kernel
theorem small_7549940_right_covered : CoveredBy scale carrier boxes small_7549940_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7549940_right_root small_7549940_right_fuel small_7549940_right_count small_7549940_right_encoded small_7549940_right_checked

theorem cover_7549940 : CoveredBy scale carrier boxes root_7549940 := by
  apply coveredBy_split_literal root_7549940 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2844.root small_7549940_right_root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2844.covered
  · exact small_7549940_right_covered
#print axioms cover_7549940

def root_7549935 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7549935_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7549935_right_fuel : Nat := 1
def small_7549935_right_count : Nat := 1
def small_7549935_right_encoded : String := "00000003"
theorem small_7549935_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7549935_right_root small_7549935_right_fuel small_7549935_right_count small_7549935_right_encoded = true := by
  decide +kernel
theorem small_7549935_right_covered : CoveredBy scale carrier boxes small_7549935_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7549935_right_root small_7549935_right_fuel small_7549935_right_count small_7549935_right_encoded small_7549935_right_checked

theorem cover_7549935 : CoveredBy scale carrier boxes root_7549935 := by
  apply coveredBy_split_literal root_7549935 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0181.root_7549940 small_7549935_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0181.cover_7549940
  · exact small_7549935_right_covered
#print axioms cover_7549935

def root_7547427 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7547427 : CoveredBy scale carrier boxes root_7547427 := by
  apply coveredBy_split_literal root_7547427 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2843.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0181.root_7549935 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2843.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0181.cover_7549935
#print axioms cover_7547427

def root_7547422 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7547422_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7547422_right_fuel : Nat := 1
def small_7547422_right_count : Nat := 1
def small_7547422_right_encoded : String := "00000002"
theorem small_7547422_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7547422_right_root small_7547422_right_fuel small_7547422_right_count small_7547422_right_encoded = true := by
  decide +kernel
theorem small_7547422_right_covered : CoveredBy scale carrier boxes small_7547422_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7547422_right_root small_7547422_right_fuel small_7547422_right_count small_7547422_right_encoded small_7547422_right_checked

theorem cover_7547422 : CoveredBy scale carrier boxes root_7547422 := by
  apply coveredBy_split_literal root_7547422 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0181.root_7547427 small_7547422_right_root coord2 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0181.cover_7547427
  · exact small_7547422_right_covered
#print axioms cover_7547422

def root_7556481 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7556481_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (10572672)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7556481_left_fuel : Nat := 27
def small_7556481_left_count : Nat := 423
def small_7556481_left_encoded : String := "0F8750FB0C9A86FE0F878CFF000000040280010213D7B103000000010780010600000005128A7D070DE7CA0000000005000000080000000313D7ED0307800106128A41070000000300000005128A7D070DE7CA000E5FD8F70B4D4404108010FB0DE7C9FE000000050E5FD8FF03C001020000000513A54D0308C00106000000050000000600000001000000040000000210804CFB000000020DE7C9FE000000050E5FD8FF03C001020000000513A54D0308C0010600000005000000070000000100000004000000000E6014F7000000000B4D4404108010FB0DE7C9FE000000050E5FD8FF03C001020000000513A54D0308C00106000000050000000600000001000000040000000210804CFB000000020DE7C9FE000000080E5FD8FF03C001020000000813A54D0308C0010611FBE907000000030000000800000008000000010000000400000003000000010F8750FF0280010213D7B1030000000107800106128A4107000000030DE7CA00000000050E6014F70000000000000005128A7D070DE7CA000E5FD8F70B4D4404108010FB0B4D43FE00000005000000060000000210804CFB000000020B4D43FE00000007108010FF0000000600000004000000000E6014F7000000000B4D4404108010FB0B4D43FE00000008000000060000000210804CFB000000020B4D43FE00000008108010FF014001020000000600000006000000040000000313D7ED0307800106128A4107000000030DE7CA000E5FD8F70B4D4404108010FB0B4D43FE000000050000000A0000000210804CFB000000020B4D43FE10804CFF0000000400000005108010FF03C0010213A5110300000001064001060000000512FFAD070D412880000000050EFA4CF700000000000000050000000313A54D030640010612FF7107000000030000000A12FFAD070D4128800EFA10F70000000A000000000EFA4CF7000000000BF3E58400000006100928FB000000020AA6A27E10EDACFF000000040000000600000006000000030000000100000004000000000E6014F7000000000B4D4404108010FB0B4D43FE00000005108010FF03C0010213A51103000000010000000513A54D030640010612FF710700000003000000050000000600000001000000040000000210804CFB000000020B4D43FE10804CFF0000000403C001020000000513A54D03064001060000000512FFAD070DAED8770E9661000BF3E58400000005100928FB000000020BF3E57E000000051008ECFF04600102000000051384190306E0010600000005000000060000000100000004000000000E96250000000000000000080000000300000001108010FF03C0010213A5110300000001064001060000000512FFAD070DAED8770E9661000BF3E584000000050000000600000000000000060000000313A54D030640010612FF7107000000030DAED8770E9661000BF3E58400000005100928FB000000020AA6A27E0000000510ED70FF046001020000000513841903000000060000000100000004000000000E962500000000000BF3E5841008ECFB0AA6A27E000000050000000600000002100928FB000000020AA6A27E10EDACFF0000000404600102000000050000000910ED70FF0460010200000006000000060000000412FFAD070DAED8770E9661000BF3E58400000006100928FB000000020AA6A27E10EDACFF000000040000000600000006000000000E962500000000000BF3E5840000000600000006000000030000000100000004128A7D070DE7CA000E5FD8F70B4D4404108010FB0B4D43FE10804CFF0000000403C001020000000600000006000000060000000210804CFB000000020B4D43FE10804CFF0000000403C0010213A511030000000108C0010611FBE90700000003000000050000000613A54D0308C0010611FBE907000000030D4128800EFA10F700000007000000000EFA4CF7000000000BF3E58400000006100928FB00000002000000070000000600000001108010FF03C001020000000613A54D03000000060000000100000004000000000E6014F7000000000B4D4404108010FB0B4D43FE10804CFF0000000403C001020000000600000006000000060000000210804CFB000000020B4D43FE10804CFF0000000403C0010213A511030000000108C0010611FBE90700000003000000080000000613A54D0308C0010611FBE907000000030DAED8770E9661000BF3E58400000006100928FB000000020BF3E57E0000000800000006000000000E96250000000000000000080000000600000001108010FF03C001020000000613A54D0300000006000000010000000400000003000000010000000400000002"
theorem small_7556481_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7556481_left_root small_7556481_left_fuel small_7556481_left_count small_7556481_left_encoded = true := by
  decide +kernel
theorem small_7556481_left_covered : CoveredBy scale carrier boxes small_7556481_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7556481_left_root small_7556481_left_fuel small_7556481_left_count small_7556481_left_encoded small_7556481_left_checked

theorem cover_7556481 : CoveredBy scale carrier boxes root_7556481 := by
  apply coveredBy_split_literal root_7556481 small_7556481_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2846.root coord2 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_7556481_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2846.covered
#print axioms cover_7556481

def root_7556475 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7556475_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-13027072)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7556475_left_fuel : Nat := 1
def small_7556475_left_count : Nat := 1
def small_7556475_left_encoded : String := "00000000"
theorem small_7556475_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7556475_left_root small_7556475_left_fuel small_7556475_left_count small_7556475_left_encoded = true := by
  decide +kernel
theorem small_7556475_left_covered : CoveredBy scale carrier boxes small_7556475_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7556475_left_root small_7556475_left_fuel small_7556475_left_count small_7556475_left_encoded small_7556475_left_checked

theorem cover_7556475 : CoveredBy scale carrier boxes root_7556475 := by
  apply coveredBy_split_literal root_7556475 small_7556475_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0181.root_7556481 coord0 true (-13027072)
  · decide +kernel
  · decide +kernel
  · exact small_7556475_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0181.cover_7556481
#print axioms cover_7556475

def root_7556077 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7556077_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (10572672)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7556077_left_fuel : Nat := 20
def small_7556077_left_count : Nat := 189
def small_7556077_left_encoded : String := "0F8750F70C9A87040F8750FB0C9A86FE0F878CFF00000004028001020000000513D7ED030780010600000005128A7D070B4D44000000000510804CF7000000000B4D44040000000510804CFB000000020000000700000003000000010F8750FF0280010213D7B103000000010780010600000005128A7D070B4D44000000000510804CF7000000000B4D440400000005000000070000000313D7ED0307800106128A4107000000030B4D44000000000510804CF7000000000B4D44040000000510804CFB000000020B4D43FE000000050000000A128A7D070B4D4400108010F70B4D4404108010FB0000000700000002000000070000000010804CF7000000000B4D4404108010FB0B4D43FE10804CFF0000000403C001020000000500000006000000060000000210804CFB000000020B4D43FE00000007108010FF0000000700000004000000030000000100000004000000020F878CFB000000020C9A86FE0F878CFF000000040280010213D7B1030000000107800106000000050000000713D7ED0307800106128A41070000000300000005128A7D070000000700000003000000010F8750FF0280010213D7B1030000000107800106128A4107000000030B4D44000000000510804CF7000000000DE7CA04000000050E6014FB00000002000000050000000713D7ED0307800106128A4107000000030B4D4400108010F70DE7CA040E5FD8FB0B4D43FE000000050000000A00000002000000070000000010804CF7000000000DE7CA040E5FD8FB0B4D43FE10804CFF0000000400000005108010FF03C0010213A511030000000106400106000000050000000713A54D030640010612FF7107000000030000000A000000070000000100000004000000020E6014FB000000020B4D43FE00000007108010FF03C001020000000713A54D030640010612FF71070000000300000007000000070000000100000004128A7D070B4D44000000000710804CF7000000000DE7CA040E5FD8FB00000007000000020000000700000003000000010000000400000000"
theorem small_7556077_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7556077_left_root small_7556077_left_fuel small_7556077_left_count small_7556077_left_encoded = true := by
  decide +kernel
theorem small_7556077_left_covered : CoveredBy scale carrier boxes small_7556077_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7556077_left_root small_7556077_left_fuel small_7556077_left_count small_7556077_left_encoded small_7556077_left_checked

theorem cover_7556077 : CoveredBy scale carrier boxes root_7556077 := by
  apply coveredBy_split_literal root_7556077 small_7556077_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0181.root_7556475 coord0 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_7556077_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0181.cover_7556475
#print axioms cover_7556077

def root_7556071 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7556071_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7556071_left_fuel : Nat := 1
def small_7556071_left_count : Nat := 1
def small_7556071_left_encoded : String := "00000004"
theorem small_7556071_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7556071_left_root small_7556071_left_fuel small_7556071_left_count small_7556071_left_encoded = true := by
  decide +kernel
theorem small_7556071_left_covered : CoveredBy scale carrier boxes small_7556071_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7556071_left_root small_7556071_left_fuel small_7556071_left_count small_7556071_left_encoded small_7556071_left_checked

theorem cover_7556071 : CoveredBy scale carrier boxes root_7556071 := by
  apply coveredBy_split_literal root_7556071 small_7556071_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0181.root_7556077 coord4 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_7556071_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0181.cover_7556077
#print axioms cover_7556071

def root_7556070 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7556070_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-10897344), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7556070_right_fuel : Nat := 10
def small_7556070_right_count : Nat := 19
def small_7556070_right_encoded : String := "0F34D0FE0C9A8700000000050F878CF7000000000C9A8704000000050F878CFB00000002028001020000000513D7ED030780010600000005128A7D070000000A000000030000000100000004"
theorem small_7556070_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7556070_right_root small_7556070_right_fuel small_7556070_right_count small_7556070_right_encoded = true := by
  decide +kernel
theorem small_7556070_right_covered : CoveredBy scale carrier boxes small_7556070_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7556070_right_root small_7556070_right_fuel small_7556070_right_count small_7556070_right_encoded small_7556070_right_checked

theorem cover_7556070 : CoveredBy scale carrier boxes root_7556070 := by
  apply coveredBy_split_literal root_7556070 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0181.root_7556071 small_7556070_right_root coord4 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0181.cover_7556071
  · exact small_7556070_right_covered
#print axioms cover_7556070

def root_7556065 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7556065_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7556065_right_fuel : Nat := 1
def small_7556065_right_count : Nat := 1
def small_7556065_right_encoded : String := "00000002"
theorem small_7556065_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7556065_right_root small_7556065_right_fuel small_7556065_right_count small_7556065_right_encoded = true := by
  decide +kernel
theorem small_7556065_right_covered : CoveredBy scale carrier boxes small_7556065_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7556065_right_root small_7556065_right_fuel small_7556065_right_count small_7556065_right_encoded small_7556065_right_checked

theorem cover_7556065 : CoveredBy scale carrier boxes root_7556065 := by
  apply coveredBy_split_literal root_7556065 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0181.root_7556070 small_7556065_right_root coord2 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0181.cover_7556070
  · exact small_7556065_right_covered
#print axioms cover_7556065

def root_7556064 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7556064_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7556064_right_fuel : Nat := 27
def small_7556064_right_count : Nat := 239
def small_7556064_right_encoded : String := "0F34D104000000020CFD9BFF0F350CFE000000040C9A87000F8750F70C9A86FE0F878CFF00000004028001020000000913D7ED0307800106128A4107000000030AD3577B10D13D040B4D44000000000510804CF7000000000DE7C9FE0000000500000009000000020000000900000007000000010F8750FF028001020000000913D7ED0307800106128A4107000000030AD3577B10D13D040B4D44000000000710804CF7000000000B4D43FE00000007000000090000000200000009000000070000000100000004000000000F878CF7000000000C9A86FE0F878CFF000000040280010213D7B1030000000107800106128A4107000000030AD3577B10D13D040DE7CA00000000050E6014F7000000000000000A0000000200000009128A7D07000000090000000313D7ED0307800106128A4107000000030AD3577B10D13D040DE7CA000E5FD8F70DE7C9FE0000000A0E5FD8FF03C00102000000090000000A00000004000000000000000A000000020000000A0000000A000000010F8750FF0280010213D7B1030000000107800106128A4107000000030AD3577B10D13D040DE7CA00000000090E6014F7000000000000000900000002000000090000000913D7ED0307800106128A4107000000030AD3577B10D13D040DE7CA000E5FD8F70B4D43FE10804CFF0000000403C001020000000913A54D030640010612FF7107000000030BE879BB1011AD040D412880000000070EFA4CF7000000000000000A00000002000000090000000700000001108010FF03C001020000000913A54D030640010612FF7107000000030BE879BB1011AD040D412880000000070EFA4CF700000000000000090000000200000009000000070000000100000004000000000E6014F7000000000B4D43FE10804CFF0000000403C001020000000A0000000A108010FF03C0010213A51103000000010640010612FF7107000000030BE879BB1011AD040DAED877000000090000000900000002000000090000000913A54D030640010612FF7107000000030BE879BB1011AD040DAED8770E9661000AA6A27E0000000A00000009000000000000000A000000020000000A12FFAD070000000A0000000300000001000000040000000210D10104000000020DE7CA00000000090000000A128A7D070AD3577B10D13D040DE7CA000E5FD8F700000007000000000E6014F7000000000000000A00000002000000090000000300000001000000040F34D0FE0C9A87000F8750F7028001020000000513D7ED0307800106000000050000000A00000001000000000F878CF7000000000000000A00000004"
theorem small_7556064_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7556064_right_root small_7556064_right_fuel small_7556064_right_count small_7556064_right_encoded = true := by
  decide +kernel
theorem small_7556064_right_covered : CoveredBy scale carrier boxes small_7556064_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7556064_right_root small_7556064_right_fuel small_7556064_right_count small_7556064_right_encoded small_7556064_right_checked

theorem cover_7556064 : CoveredBy scale carrier boxes root_7556064 := by
  apply coveredBy_split_literal root_7556064 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0181.root_7556065 small_7556064_right_root coord2 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0181.cover_7556065
  · exact small_7556064_right_covered
#print axioms cover_7556064

def root_7556059 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7556059_right_root : ZRayBox := fun j => (#[⟨⟨(12756736), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7556059_right_fuel : Nat := 1
def small_7556059_right_count : Nat := 1
def small_7556059_right_encoded : String := "00000000"
theorem small_7556059_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7556059_right_root small_7556059_right_fuel small_7556059_right_count small_7556059_right_encoded = true := by
  decide +kernel
theorem small_7556059_right_covered : CoveredBy scale carrier boxes small_7556059_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7556059_right_root small_7556059_right_fuel small_7556059_right_count small_7556059_right_encoded small_7556059_right_checked

theorem cover_7556059 : CoveredBy scale carrier boxes root_7556059 := by
  apply coveredBy_split_literal root_7556059 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0181.root_7556064 small_7556059_right_root coord0 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0181.cover_7556064
  · exact small_7556059_right_covered
#print axioms cover_7556059

def root_7556058 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7556058_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7556058_right_fuel : Nat := 34
def small_7556058_right_count : Nat := 497
def small_7556058_right_encoded : String := "0F34D100000000000CFD9BFB0F350D040CFD9BFF0F350CFE000000040C9A87040F8750FB0C9A86FE0F878CFF00000004028001020000000813D7ED0307800106128A4107000000030AD3577710D13D000B4D44040000000500000008000000000000000800000008000000010F8750FF0280010213D7B1030000000107800106128A4107000000030AD3577710D13D000000000800000000000000080000000813D7ED0307800106128A4107000000030AD3577710D13D000B4D4404108010FB0B4D43FE10804CFF0000000403C001020000000513A54D030000000800000001108010FF03C0010213A51103000000010000000813A54D030640010612FF710700000003000000070000000600000001000000040000000210804CFB000000020B4D43FE10804CFF0000000403C001020000000813A54D0306400106000000080000000800000001108010FF03C0010213A511030000000106400106000000080000000813A54D030640010612FF7107000000030BE879B71011AD000BF3E5841008ECFB0000000900000002100928FB000000020AA6A27E0000000810ED70FF04600102000000060000000900000004000000000000000812FFAD070BE879B71011AD000BF3E584000000060000000600000000000000060000000300000001000000040000000010D101000000000000000008128A7D070AD3577710D13D000B4D4404108010FB0B4D43FE10804CFF0000000400000008000000060000000210804CFB000000020B4D43FE10804CFF0000000400000008108010FF03C001020000000613A54D0308C0010611FBE90700000003000000060000000600000001000000040000000010D101000000000000000008000000030000000100000004000000020F878CFB000000020C9A86FE0F878CFF000000040280010213D7B1030000000107800106000000080000000813D7ED0307800106128A4107000000030AD3577710D13D000DE7CA040E5FD8FB0DE7C9FE000000080E5FD8FF0000000800000004000000020000000A00000000000000080000000A000000010F8750FF0280010213D7B1030000000107800106128A4107000000030AD3577710D13D000DE7CA040E5FD8FB00000008000000020E6014FB000000020B4D43FE00000008108010FF00000008000000040000000000000008128A7D070AD3577710D13D000DE7CA040E5FD8FB00000008000000020E6014FB000000020B4D43FE00000008108010FF000000080000000400000000000000080000000313D7ED0307800106128A4107000000030AD3577710D13D000DE7CA040E5FD8FB0B4D43FE10804CFF0000000403C001020000000813A54D030640010612FF710700000003000000080000000800000001108010FF03C0010213A51103000000010640010612FF710700000003000000080000000813A54D030640010612FF7107000000030BE879B71011AD000D4128840EFA10FB0AA6A27E0000000810ED70FF04600102000000081384190305A0010600000007000000080000000100000004000000020EFA4CFB000000020AA6A27E0000000810ED70FF04600102000000081384190305A001061331350700000003000000080000000800000001000000040000000010117100000000000000000812FFAD070BE879B71011AD000D4128840EFA10FB0AA6A27E0000000810ED70FF0000000600000004000000020EFA4CFB000000020AA6A27E0000000810ED70FF0460010200000008138419030000000A00000001000000040000000000000008000000030000000100000004000000020E6014FB000000020B4D43FE10804CFF0000000403C00102000000080000000A108010FF03C0010213A51103000000010640010612FF7107000000030BE879B71011AD000DAED87B000000080E9625040000000200000008000000000000000812FFAD070BE879B71011AD000000000800000000000000080000000313A54D030640010612FF7107000000030BE879B71011AD000DAED87B0E9661040AA6A27E0000000A10ED70FF0460010200000008138419030000000A0000000100000004000000020000000A000000000000000A12FFAD070000000A0000000300000001000000040000000010D10100000000000DE7CA040E5FD8FB00000008000000020000000A128A7D070AD3577710D13D000DE7CA040E5FD8FB0B4D43FE10804CFF0000000403C00102000000080000000A108010FF03C0010213A511030000000108C0010611FBE90700000003000000080000000813A54D0308C0010611FBE907000000030BE879B71011AD000D4128840EFA10FB00000006000000020EFA4CFB000000020000000A0000000000000008000000050000000100000004000000020E6014FB000000020000000A0000000010D10100000000000000000A0000000300000001000000040F34D0FE0C9A87040F8750FB00000008000000020F878CFB000000020000000A00000004000000020F34D104000000020CFD9BFF0F350CFE000000040C9A86FE0000000A0F8750FF0280010213D7B1030000000107800106128A4107000000030AD3577710D13D000AD3577B10D13D040B4D43FE00000008108010FF014001020000000813F615030000000A0000000100000004000000020000000A000000000000000A128A7D070000000A0000000313D7ED0307800106128A4107000000030AD357770000000A0000000A0000000A00000001000000040F34D0FE0000000A00000004"
theorem small_7556058_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7556058_right_root small_7556058_right_fuel small_7556058_right_count small_7556058_right_encoded = true := by
  decide +kernel
theorem small_7556058_right_covered : CoveredBy scale carrier boxes small_7556058_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7556058_right_root small_7556058_right_fuel small_7556058_right_count small_7556058_right_encoded small_7556058_right_checked

theorem cover_7556058 : CoveredBy scale carrier boxes root_7556058 := by
  apply coveredBy_split_literal root_7556058 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0181.root_7556059 small_7556058_right_root coord0 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0181.cover_7556059
  · exact small_7556058_right_covered
#print axioms cover_7556058

def root_7556053 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7556053_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7556053_right_fuel : Nat := 1
def small_7556053_right_count : Nat := 1
def small_7556053_right_encoded : String := "00000003"
theorem small_7556053_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7556053_right_root small_7556053_right_fuel small_7556053_right_count small_7556053_right_encoded = true := by
  decide +kernel
theorem small_7556053_right_covered : CoveredBy scale carrier boxes small_7556053_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7556053_right_root small_7556053_right_fuel small_7556053_right_count small_7556053_right_encoded small_7556053_right_checked

theorem cover_7556053 : CoveredBy scale carrier boxes root_7556053 := by
  apply coveredBy_split_literal root_7556053 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0181.root_7556058 small_7556053_right_root coord3 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0181.cover_7556058
  · exact small_7556053_right_covered
#print axioms cover_7556053

def root_7553827 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7553827 : CoveredBy scale carrier boxes root_7553827 := by
  apply coveredBy_split_literal root_7553827 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2845.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0181.root_7556053 coord3 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2845.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0181.cover_7556053
#print axioms cover_7553827

def root_7553821 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7553821_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(14529024), (16243968)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7553821_left_fuel : Nat := 1
def small_7553821_left_count : Nat := 1
def small_7553821_left_encoded : String := "00000001"
theorem small_7553821_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7553821_left_root small_7553821_left_fuel small_7553821_left_count small_7553821_left_encoded = true := by
  decide +kernel
theorem small_7553821_left_covered : CoveredBy scale carrier boxes small_7553821_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7553821_left_root small_7553821_left_fuel small_7553821_left_count small_7553821_left_encoded small_7553821_left_checked

theorem cover_7553821 : CoveredBy scale carrier boxes root_7553821 := by
  apply coveredBy_split_literal root_7553821 small_7553821_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0181.root_7553827 coord1 true (16243968)
  · decide +kernel
  · decide +kernel
  · exact small_7553821_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0181.cover_7553827
#print axioms cover_7553821

def root_7561659 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7561659_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (10572672)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7561659_left_fuel : Nat := 29
def small_7561659_left_count : Nat := 487
def small_7561659_left_encoded : String := "0F8750F70C9A87040F8750FB0C9A86FE0F878CFF000000040780010200000005128A7D03028001060000000513D7ED070B4D44000000000510804CF7000000000B4D4404000000050000000900000003000000010F8750FF07800102128A410300000001028001060000000513D7ED070B4D44000000000510804CF7000000000B4D44040000000510804CFB000000020B4D43FE000000050000000A00000003128A7D030280010613D7B107000000030B4D4400000000050000000913D7ED070B4D4400108010F70B4D4404108010FB000000090000000210804CFB000000020B4D43FE10804CFF0000000408C001020000000500000008000000080000000010804CF7000000000B4D44040000000910804CFB000000020B4D43FE00000009108010FF0000000900000004000000030000000100000004000000020F878CFB000000020C9A86FE0F878CFF0000000407800102128A41030000000100000005128A7D030280010613D7B107000000030B4D44000000000510804CF7000000000000000513D7ED070B4D4400108010F70DE7CA040E5FD8FB0DE7C9FE000000050E5FD8FF08C001020000000511FC250303C0010600000005000000080000000100000004000000020E6014FB000000020DE7C9FE000000050E5FD8FF08C001020000000500000006000000040000000010804CF7000000000DE7CA040E5FD8FB0DE7C9FE000000050E5FD8FF08C00102000000050000000900000004000000020E6014FB000000020DE7C9FE000000060E5FD8FF08C0010211FBE9030000000100000006000000060000000400000003000000010F8750FF07800102128A4103000000010280010613D7B107000000030B4D44000000000510804CF7000000000DE7CA04000000050E6014FB000000020000000513D7ED070B4D4400108010F70DE7CA040E5FD8FB0B4D43FE000000050000000A000000020E6014FB000000020B4D43FE00000005108010FF0640010212FF7103000000010000000512FFAD030000000800000001000000040000000010804CF7000000000DE7CA040E5FD8FB0B4D43FE10804CFF0000000400000005108010FF0640010212FF7103000000010000000A12FFAD0303C0010613A51107000000030BF3E58000000005100928F7000000000000000513A54D070BF3E5801008ECF70000000800000000100928F7000000000D4128840EFA10FB0000000A000000020EFA4CFB000000020AA6A27E10EDACFF000000040000000800000008000000030000000100000004000000020E6014FB000000020B4D43FE10804CFF00000004064001020000000512FFAD0303C001060000000513A54D070DAED87B0E9661040BF3E58000000005100928F7000000000BF3E57E000000051008ECFF06E00102000000050000000600000004000000020E96250400000002000000060000000300000001108010FF0640010212FF71030000000103C001060000000513A54D070DAED87B0E9661040BF3E58000000005100928F7000000000AA6A27E0000000510ED70FF05A00102000000050000000800000004000000020E962504000000020BF3E5801008ECF70AA6A27E000000050000000800000000100928F7000000000AA6A27E10EDACFF0000000405A00102000000050000000610ED70FF05A00102133135030000000104600106000000050000000700000008000000040000000312FFAD0303C0010613A51107000000030DAED87B0E9661040BF3E5800000000500000008000000020000000813A54D070DAED87B0E9661040BF3E58000000008100928F7000000000AA6A27E10EDACFF000000040000000800000008000000020E962504000000020BF3E580000000080000000800000003000000010000000400000003128A7D030280010613D7B107000000030B4D4400108010F70DE7CA040E5FD8FB0B4D43FE0000000500000008000000020E6014FB000000020B4D43FE00000006000000080000000010804CF7000000000DE7CA040E5FD8FB0B4D43FE00000009108010FF0000000800000004000000020E6014FB000000020B4D43FE00000006108010FF08C0010211FBE9030000000100000006000000060000000413D7ED070B4D4400108010F70DE7CA040E5FD8FB0B4D43FE10804CFF0000000408C0010211FBE90300000001000000080000000800000008000000020E6014FB000000020B4D43FE10804CFF0000000408C0010211FBE903000000010000000800000008000000080000000010804CF7000000000DE7CA040E5FD8FB0B4D43FE10804CFF0000000408C0010211FBE9030000000103C0010613A51107000000030000000513A54D070BF3E5801008ECF70000000800000000100928F7000000000D41288400000009000000090000000300000009108010FF08C0010211FBE9030000000103C0010600000008000000080000000800000004000000020E6014FB000000020B4D43FE10804CFF0000000408C0010211FBE9030000000103C001060000000613A54D070DAED87B0E9661040BF3E58000000008100928F7000000000BF3E57E0000000600000008000000020E96250400000002000000060000000311FC250303C00106000000060000000800000001108010FF08C0010211FBE9030000000103C001060000000800000008000000080000000400000003000000010000000400000000"
theorem small_7561659_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7561659_left_root small_7561659_left_fuel small_7561659_left_count small_7561659_left_encoded = true := by
  decide +kernel
theorem small_7561659_left_covered : CoveredBy scale carrier boxes small_7561659_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7561659_left_root small_7561659_left_fuel small_7561659_left_count small_7561659_left_encoded small_7561659_left_checked

theorem cover_7561659 : CoveredBy scale carrier boxes root_7561659 := by
  apply coveredBy_split_literal root_7561659 small_7561659_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2847.root coord0 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_7561659_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2847.covered
#print axioms cover_7561659

def root_7561653 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7561653_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7561653_left_fuel : Nat := 1
def small_7561653_left_count : Nat := 1
def small_7561653_left_encoded : String := "00000004"
theorem small_7561653_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7561653_left_root small_7561653_left_fuel small_7561653_left_count small_7561653_left_encoded = true := by
  decide +kernel
theorem small_7561653_left_covered : CoveredBy scale carrier boxes small_7561653_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7561653_left_root small_7561653_left_fuel small_7561653_left_count small_7561653_left_encoded small_7561653_left_checked

theorem cover_7561653 : CoveredBy scale carrier boxes root_7561653 := by
  apply coveredBy_split_literal root_7561653 small_7561653_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0181.root_7561659 coord4 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_7561653_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0181.cover_7561659
#print axioms cover_7561653

def root_7561652 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7561652_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-10897344), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7561652_right_fuel : Nat := 9
def small_7561652_right_count : Nat := 17
def small_7561652_right_encoded : String := "0F34D0FE0C9A8700000000050F878CF7000000000C9A8704000000050F878CFB000000020780010200000005128A7D0302800106000000050000000A0000000100000004"
theorem small_7561652_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7561652_right_root small_7561652_right_fuel small_7561652_right_count small_7561652_right_encoded = true := by
  decide +kernel
theorem small_7561652_right_covered : CoveredBy scale carrier boxes small_7561652_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7561652_right_root small_7561652_right_fuel small_7561652_right_count small_7561652_right_encoded small_7561652_right_checked

theorem cover_7561652 : CoveredBy scale carrier boxes root_7561652 := by
  apply coveredBy_split_literal root_7561652 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0181.root_7561653 small_7561652_right_root coord4 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0181.cover_7561653
  · exact small_7561652_right_covered
#print axioms cover_7561652

def root_7561647 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7561647_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_7561647_right_fuel : Nat := 1
def small_7561647_right_count : Nat := 1
def small_7561647_right_encoded : String := "00000002"
theorem small_7561647_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_7561647_right_root small_7561647_right_fuel small_7561647_right_count small_7561647_right_encoded = true := by
  decide +kernel
theorem small_7561647_right_covered : CoveredBy scale carrier boxes small_7561647_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_7561647_right_root small_7561647_right_fuel small_7561647_right_count small_7561647_right_encoded small_7561647_right_checked

theorem cover_7561647 : CoveredBy scale carrier boxes root_7561647 := by
  apply coveredBy_split_literal root_7561647 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0181.root_7561652 small_7561647_right_root coord2 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0181.cover_7561652
  · exact small_7561647_right_covered
#print axioms cover_7561647

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0181
