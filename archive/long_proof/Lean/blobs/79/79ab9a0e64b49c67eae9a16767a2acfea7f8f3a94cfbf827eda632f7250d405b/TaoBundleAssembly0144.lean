import TaoBundleAssembly0143
import TaoBundleChunkBatch0553
import TaoBundleChunkBatch0554
import TaoBundleChunkBatch0555
import TaoBundleChunkBatch0556
import TaoBundleChunkBatch0557
import TaoBundleChunkBatch0558
import TaoBundleChunkBatch0559
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144
def root_5886308 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5886308_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5886308_left_fuel : Nat := 23
def small_5886308_left_count : Nat := 291
def small_5886308_left_encoded : String := "1151E8F70A0000F8115225030A0000FA115224FB000000020A0000FC115225070A0000FE1152250908A91303120700F808A912FB12073CFA0000000208A91307120700FC08A91309000000070000000A0000000312073CFC0000000308A913090000000712073CFE000000040000000A120700FA08A91307120700FC08A913090000000712073CFE00000004000000080000000312073CFC0000000308A913090000000712073CFE000000040500010000000007135D80F70000000004548A03138670F8045489FB00000007000000070000000100000007000000020000000112073CF80000000108A912FB12073CFA0000000208A91307120700FC08A91309120700FE05000100135D44F70000000A00000000135D80F7000000000CFD9C03000000070000000A0000000412073CFE000000040000000A0000000312073CFC0000000308A91309120700FE050001000000000A000000070000000412073CFE000000040000000A120700FA08A91307120700FC08A913090000000712073CFE0000000405000100135D44F70CFD9C03000000080000000A00000000135D80F7000000000CFD9C030F34D0F80000000A000000010F350CF800000001045489FB0000000A000000070000000312073CFC0000000308A913090000000712073CFE0000000405000100000000070000000700000002000000041151E9090000000408A91303120700F808A912FB0000000A120700FA08A913070000000A0000000A000000020000000112073CF80000000108A912FB0000000A120700FA08A91307120700FC0000000A000000030000000A00000002000000031151E907000000030A0000FE1152250908A91303120700F8000000070000000112073CF80000000108A912FB0000000A00000007000000041151E9090000000408A91303120700F80000000A000000010000000A1151E8FB0A0000FC115225070A0000FE1152250908A91303120700F808A91307120700FC0000000A000000030000000A0000000112073CF80000000108A91307120700FC0000000A000000030000000A000000041151E9090000000400000005000000031151E907000000030000000500000002000000011151E903000000010A0000FA115224FB000000020A0000FC115225070A0000FE1152250908A912FB12073CFA0000000208A91307120700FC08A91309120700FE0500010000000008000000050000000412073CFE000000040000000A000000030000000A120700FA08A91307120700FC08A91309120700FE000000080000000412073CFE0000000405000100135D44F70000000A00000000135D80F700000000050000F8135D8103045489FB0000000A138670FA0000000A0000000200000001000000050000000312073CFC0000000308A913090000000712073CFE00000004050001000000000A135D80F700000000050000F800000007135D4503000000010000000A00000002000000041151E9090000000408A912FB0000000A120700FA0000000A00000002000000031151E907000000030A0000FE1152250908A912FB0000000A120700FA0000000700000002000000040000000A1151E8FB000000050000000200000000"
theorem small_5886308_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5886308_left_root small_5886308_left_fuel small_5886308_left_count small_5886308_left_encoded = true := by
  decide +kernel
theorem small_5886308_left_covered : CoveredBy scale carrier boxes small_5886308_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5886308_left_root small_5886308_left_fuel small_5886308_left_count small_5886308_left_encoded small_5886308_left_checked

theorem cover_5886308 : CoveredBy scale carrier boxes root_5886308 := by
  apply coveredBy_split_literal root_5886308 small_5886308_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0143.root_5886932 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_5886308_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0143.cover_5886932
#print axioms cover_5886308

def root_5884974 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5884974 : CoveredBy scale carrier boxes root_5884974 := by
  apply coveredBy_split_literal root_5884974 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2212.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.root_5886308 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2212.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.cover_5886308
#print axioms cover_5884974

def root_5884973 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5884973 : CoveredBy scale carrier boxes root_5884973 := by
  apply coveredBy_split_literal root_5884973 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.root_5884974 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2215.root coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.cover_5884974
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2215.covered
#print axioms cover_5884973

def root_5870927 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5870927 : CoveredBy scale carrier boxes root_5870927 := by
  apply coveredBy_split_literal root_5870927 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0143.root_5870928 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.root_5884973 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0143.cover_5870928
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.cover_5884973
#print axioms cover_5870927

def root_5899399 : ZRayBox := fun j => (#[⟨⟨(2097152), (4194304)⟩, ⟨(-16645888), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5899399 : CoveredBy scale carrier boxes root_5899399 := by
  apply coveredBy_split_literal root_5899399 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2216.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2217.root coord1 true (5448672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2216.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2217.covered
#print axioms cover_5899399

def root_5899393 : ZRayBox := fun j => (#[⟨⟨(2097152), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5899393_left_root : ZRayBox := fun j => (#[⟨⟨(2097152), (4194304)⟩, ⟨(-16777216), (-16645888)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5899393_left_fuel : Nat := 1
def small_5899393_left_count : Nat := 1
def small_5899393_left_encoded : String := "00000000"
theorem small_5899393_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5899393_left_root small_5899393_left_fuel small_5899393_left_count small_5899393_left_encoded = true := by
  decide +kernel
theorem small_5899393_left_covered : CoveredBy scale carrier boxes small_5899393_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5899393_left_root small_5899393_left_fuel small_5899393_left_count small_5899393_left_encoded small_5899393_left_checked

theorem cover_5899393 : CoveredBy scale carrier boxes root_5899393 := by
  apply coveredBy_split_literal root_5899393 small_5899393_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.root_5899399 coord0 true (-16645888)
  · decide +kernel
  · decide +kernel
  · exact small_5899393_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.cover_5899399
#print axioms cover_5899393

def root_5898915 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5898915_left_root : ZRayBox := fun j => (#[⟨⟨(0), (2097152)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5898915_left_fuel : Nat := 21
def small_5898915_left_count : Nat := 225
def small_5898915_left_encoded : String := "13D7B0F7067ECE8312EA58F8022A457D13E201060B4D43FA10804CFB0000000200000008108010FB0B4D43FE10804CFF00000004014001000000000813F614F7000000000569AC431340D4F8033F67BD0000000513BBF506000000030000000800000001134110F800000001033F67BD0000000813BBF506000000030AA6A27A10EDACFB00000002000000080000000700000008000000020000000313E1C506000000030B4D43FA10804CFB000000020B4D43FE10804CFF00000004014001000000000813F614F7000000000569AC4300000009134110F8000000010115233D000000080000000500000008108010FB0B4D43FE10804CFF000000040140010013F5D8F70569AC431340D4F80115233D000000080000000600000001134110F8000000010115233D00000007000000060000000013F614F7000000000569AC431340D4F80115233D13F895060AA6A27A10EDACFB000000020000000910ED70FB0BF3E57E100928FF00000004000000091008ECFF0000000800000004000000020000000313F85906000000030AA6A27A0000000910ED70FB000000060000000200000001134110F8000000010115233D13F895060AA6A27A10EDACFB000000020BF3E57E100928FF0000000401E0010000000007000000090000000810ED70FB00000007000000020000000313F85906000000030AA6A27A10EDACFB000000020BF3E57E000000091008ECFF01E0010000000007000000090000000410ED70FB0000000600000002108010FF014001000000000813F614F7000000000569AC4300000008134110F8000000010000000800000004000000020000000112EA94F800000001022A457D13E201060B4D43FA10804CFB000000020B4D43FE10804CFF000000040000000800000008108010FB0B4D43FE10804CFF00000004014001000000000713F614F7000000000793F0C3128220F800000007000000010000000700000008000000020000000313E1C506000000030B4D43FA10804CFB000000020B4D43FE10804CFF0000000400000005108010FF0000000800000004108010FB0B4D43FE10804CFF00000004014001000000000713F614F7000000000793F0C3128220F80115233D00000007000000050000000100000005108010FF014001000000000713F614F7000000000793F0C3128220F80115233D0000000813F85906000000030AA6A27A00000008000000070000000100000007000000040000000200000000"
theorem small_5898915_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5898915_left_root small_5898915_left_fuel small_5898915_left_count small_5898915_left_encoded = true := by
  decide +kernel
theorem small_5898915_left_covered : CoveredBy scale carrier boxes small_5898915_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5898915_left_root small_5898915_left_fuel small_5898915_left_count small_5898915_left_encoded small_5898915_left_checked

theorem cover_5898915 : CoveredBy scale carrier boxes root_5898915 := by
  apply coveredBy_split_literal root_5898915 small_5898915_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.root_5899393 coord0 false (2097152)
  · decide +kernel
  · decide +kernel
  · exact small_5898915_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.cover_5899393
#print axioms cover_5898915

def root_5898910 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5898910_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-13026304), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5898910_right_fuel : Nat := 1
def small_5898910_right_count : Nat := 1
def small_5898910_right_encoded : String := "00000004"
theorem small_5898910_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5898910_right_root small_5898910_right_fuel small_5898910_right_count small_5898910_right_encoded = true := by
  decide +kernel
theorem small_5898910_right_covered : CoveredBy scale carrier boxes small_5898910_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5898910_right_root small_5898910_right_fuel small_5898910_right_count small_5898910_right_encoded small_5898910_right_checked

theorem cover_5898910 : CoveredBy scale carrier boxes root_5898910 := by
  apply coveredBy_split_literal root_5898910 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.root_5898915 small_5898910_right_root coord4 true (-13026304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.cover_5898915
  · exact small_5898910_right_covered
#print axioms cover_5898910

def root_5898336 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5898336_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-10572672)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5898336_left_fuel : Nat := 20
def small_5898336_left_count : Nat := 273
def small_5898336_left_encoded : String := "0F878CFF000000040280010013D7B0F7067ECE8312EA58F8022A457D13E201060B4D43FA10804CFB000000020DE7C9FE000000090E5FD8FF0140010013F5D8F7000000090000000013F614F7000000000569AC4300000009134110F800000001033F67BD0000000A0000000900000004108010FB0DE7C9FE0000000A0E5FD8FF0140010013F5D8F70569AC431340D4F8033F67BD000000080000000900000001000000070000000013F614F7000000000569AC430000000A134110F800000001033F67BD0000000A13BBF506000000030AA6A27A10EDACFB000000020000000A0000000700000004000000020000000313E1C506000000030B4D43FA10804CFB0000000200000009108010FB0DE7C9FE0E6014FF00000004000000090E5FD8FF0140010013F5D8F70569AC4300000006134110F800000001000000060000000013F614F7000000000569AC4300000009134110F8000000010115233D13F895060AA6A27A0000000900000007000000030000000500000004000000020000000112EA94F800000001022A457D13E201060B4D43FA10804CFB000000020DE7C9FE0E6014FF000000040140010013F5D8F70793F0C300000009000000050000000013F614F7000000000793F0C300000009000000050E5FD8FF0140010013F5D8F70793F0C300000008000000070000000013F614F7000000000793F0C3128220F8033F67BD13BC31060BF3E57A100928FB00000002000000080000000A0000000300000005000000010000000500000004108010FB0DE7C9FE000000070E5FD8FF0000000700000004000000020000000313E1C506000000030B4D43FA10804CFB0000000200000005000000050000000013D7ECF700000000067ECE8312EA58F8022A457D13E201060B4D43FA10804CFB000000020000000A0000000A0000000313E1C506000000030B4D43FA10804CFB000000020DE7C9FE000000090E5FD8FF0000000900000004108010FB0DE7C9FE0E6014FF00000004000000090E5FD8FF03C0010013A510F70569AC4300000009134110F8000000010115233D13F895060AA6A27A000000090000000A00000003000000050000000013A54CF7000000000569AC4300000009134110F8000000010115233D0000000A0000000500000004000000020000000112EA94F800000001022A457D13E201060B4D43FA10804CFB000000020DE7C9FE0E6014FF00000004000000050E5FD8FF03C0010013A510F70793F0C3128220F8033F67BD0000000A0000000500000001000000050000000013A54CF7000000000793F0C30000000A0000000500000004108010FB0DE7C9FE0E6014FF000000040000000A0E5FD8FF03C0010013A510F70793F0C3128220F8033F67BD0000000A13BBF506000000030AA6A27A10EDACFB000000020000000A0000000700000001000000070000000013A54CF7000000000793F0C30000000A12825CF800000001033F67BD0000000A0000000500000004000000020000000300000005"
theorem small_5898336_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5898336_left_root small_5898336_left_fuel small_5898336_left_count small_5898336_left_encoded = true := by
  decide +kernel
theorem small_5898336_left_covered : CoveredBy scale carrier boxes small_5898336_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5898336_left_root small_5898336_left_fuel small_5898336_left_count small_5898336_left_encoded small_5898336_left_checked

theorem cover_5898336 : CoveredBy scale carrier boxes root_5898336 := by
  apply coveredBy_split_literal root_5898336 small_5898336_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.root_5898910 coord4 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact small_5898336_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.cover_5898910
#print axioms cover_5898336

def root_5898331 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5898331_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-13026304), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5898331_right_fuel : Nat := 1
def small_5898331_right_count : Nat := 1
def small_5898331_right_encoded : String := "00000002"
theorem small_5898331_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5898331_right_root small_5898331_right_fuel small_5898331_right_count small_5898331_right_encoded = true := by
  decide +kernel
theorem small_5898331_right_covered : CoveredBy scale carrier boxes small_5898331_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5898331_right_root small_5898331_right_fuel small_5898331_right_count small_5898331_right_encoded small_5898331_right_checked

theorem cover_5898331 : CoveredBy scale carrier boxes root_5898331 := by
  apply coveredBy_split_literal root_5898331 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.root_5898336 small_5898331_right_root coord2 true (-13026304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.cover_5898336
  · exact small_5898331_right_covered
#print axioms cover_5898331

def root_5897949 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5897949_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-12756736), (-10572672)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5897949_left_fuel : Nat := 19
def small_5897949_left_count : Nat := 181
def small_5897949_left_encoded : String := "0F878CFB000000020C9A86FE0F878CFF000000040280010013D7B0F7067ECE8312EA58F8000000090000000112EA94F800000001022A457D13E201060DE7C9FA0E6014FB00000002000000050E5FD8FB0DE7C9FE0E6014FF00000004000000050E5FD8FF014001000000000813F614F7000000000793F0C30000000900000005000000040000000200000003000000050000000013D7ECF700000000067ECE8312EA58F8022A457D13E201060DE7C9FA000000090E5FD8FB000000090000000200000003000000090000000112EA94F800000001022A457D13E201060DE7C9FA0E6014FB00000002000000050E5FD8FB0DE7C9FE0E6014FF0000000400000005000000050000000200000003000000050F8750FF0280010013D7B0F7067ECE8312EA58F8022A457D0000000813E1C506000000030DE7C9FA000000080E5FD8FB0B4D43FE0000000900000008000000020000000112EA94F800000001022A457D0000000813E1C506000000030DE7C9FA0E6014FB0000000200000005000000050000000013D7ECF700000000067ECE8312EA58F8022A457D13E201060DE7C9FA0E6014FB00000002000000080E5FD8FB0B4D43FE10804CFF0000000403C001000000000813A54CF7000000000569AC43000000090000000600000008000000020000000313E1C506000000030DE7C9FA0E6014FB00000002000000090E5FD8FB0B4D43FE10804CFF0000000400000009108010FF03C001000000000813A54CF7000000000569AC4300000008134110F8000000010115233D000000060000000500000004000000020000000112EA94F800000001022A457D13E201060DE7C9FA0E6014FB000000020B4D43FE00000006000000060E5FD8FB0B4D43FE10804CFF0000000403C0010013A510F70793F0C300000008000000050000000013A54CF7000000000793F0C30000000600000005108010FF03C0010000000008000000060000000400000002000000030000000500000004"
theorem small_5897949_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5897949_left_root small_5897949_left_fuel small_5897949_left_count small_5897949_left_encoded = true := by
  decide +kernel
theorem small_5897949_left_covered : CoveredBy scale carrier boxes small_5897949_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5897949_left_root small_5897949_left_fuel small_5897949_left_count small_5897949_left_encoded small_5897949_left_checked

theorem cover_5897949 : CoveredBy scale carrier boxes root_5897949 := by
  apply coveredBy_split_literal root_5897949 small_5897949_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.root_5898331 coord2 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact small_5897949_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.cover_5898331
#print axioms cover_5897949

def root_5897943 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5897943_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5897943_left_fuel : Nat := 1
def small_5897943_left_count : Nat := 1
def small_5897943_left_encoded : String := "00000004"
theorem small_5897943_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5897943_left_root small_5897943_left_fuel small_5897943_left_count small_5897943_left_encoded = true := by
  decide +kernel
theorem small_5897943_left_covered : CoveredBy scale carrier boxes small_5897943_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5897943_left_root small_5897943_left_fuel small_5897943_left_count small_5897943_left_encoded small_5897943_left_checked

theorem cover_5897943 : CoveredBy scale carrier boxes root_5897943 := by
  apply coveredBy_split_literal root_5897943 small_5897943_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.root_5897949 coord4 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_5897943_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.cover_5897949
#print axioms cover_5897943

def root_5897942 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5897942_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-10897344), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5897942_right_fuel : Nat := 12
def small_5897942_right_count : Nat := 31
def small_5897942_right_encoded : String := "0F34D0FE0C9A86FA0F878CFB000000020280010000000009000000090F8750FB0280010013D7B0F7067ECE830000000912EA94F800000001022A457D13E201060AD3577F10D13CFE00000004000000050000000500000003000000050000000013D7ECF700000000067ECE830000000A000000050000000200000004"
theorem small_5897942_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5897942_right_root small_5897942_right_fuel small_5897942_right_count small_5897942_right_encoded = true := by
  decide +kernel
theorem small_5897942_right_covered : CoveredBy scale carrier boxes small_5897942_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5897942_right_root small_5897942_right_fuel small_5897942_right_count small_5897942_right_encoded small_5897942_right_checked

theorem cover_5897942 : CoveredBy scale carrier boxes root_5897942 := by
  apply coveredBy_split_literal root_5897942 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.root_5897943 small_5897942_right_root coord4 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.cover_5897943
  · exact small_5897942_right_covered
#print axioms cover_5897942

def root_5897936 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5897936_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5897936_left_fuel : Nat := 1
def small_5897936_left_count : Nat := 1
def small_5897936_left_encoded : String := "00000003"
theorem small_5897936_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5897936_left_root small_5897936_left_fuel small_5897936_left_count small_5897936_left_encoded = true := by
  decide +kernel
theorem small_5897936_left_covered : CoveredBy scale carrier boxes small_5897936_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5897936_left_root small_5897936_left_fuel small_5897936_left_count small_5897936_left_encoded small_5897936_left_checked

theorem cover_5897936 : CoveredBy scale carrier boxes root_5897936 := by
  apply coveredBy_split_literal root_5897936 small_5897936_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.root_5897942 coord3 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_5897936_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.cover_5897942
#print axioms cover_5897936

def root_5897318 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5897318_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5897318_left_fuel : Nat := 23
def small_5897318_left_count : Nat := 289
def small_5897318_left_encoded : String := "1386AD060CFD9BFF0F350CFE000000040C9A86FA0F878CFB000000020C9A86FE0F878CFF000000040280010013D7B0F7067ECE8312EA58F8067ECE7D0000000A12EA5906000000030DE7C9FA0E6014FB00000002000000080E5FD8FB0000000A000000020000000112EA94F800000001067ECE7D12EA95060DE7C9FA0E6014FB00000002000000080E5FD8FB0DE7C9FE0000000A00000008000000020000000312EA5906000000030DE7C9FA0E6014FB000000020DE7C9FE0E6014FF0000000400000009000000080E5FD8FB0DE7C9FE0E6014FF000000040140010013F5D8F70793F0C30000000812825CF8000000010569AC3D0000000700000005000000000000000A0E5FD8FF0000000800000004000000020000000013D7ECF700000000067ECE830000000A12EA94F800000001067ECE7D0000000A12EA5906000000030DE7C9FA0E6014FB000000020DE7C9FE0000000A0E5FD8FF00000006000000040E5FD8FB0000000A000000020F8750FF028001000000000813D7ECF700000000067ECE8312EA58F8067ECE7D00000006000000080000000112EA94F800000001067ECE7D0000000612EA5906000000030DE7C9FA000000060E5FD8FB0000000600000002000000040F8750FB0C9A86FE0F878CFF000000040280010013D7B0F7067ECE8312EA58F8067ECE7D0000000A12EA5906000000030B4D43FA10804CFB000000020000000A0000000A0000000112EA94F800000001067ECE7D12EA95060B4D43FA10804CFB000000020000000A0000000A0000000312EA5906000000030B4D43FA10804CFB000000020DE7C9FE0E6014FF0000000401400100000000070000000A0E5FD8FF014001000000000713F614F7000000000793F0C3000000080000000700000004108010FB0DE7C9FE000000070E5FD8FF0000000700000004000000020000000013D7ECF700000000067ECE830000000A12EA94F800000001067ECE7D0000000A12EA5906000000030B4D43FA10804CFB000000020000000A0000000A0F8750FF0280010013D7B0F7067ECE830000000812EA94F800000001000000080000000013D7ECF700000000067ECE8312EA58F8067ECE7D0000000512EA5906000000030B4D43FA10804CFB000000020B4D43FE0000000A00000008108010FB00000005000000020000000112EA94F800000001067ECE7D12EA95060B4D43FA00000006108010FB00000005000000020000000312EA5906000000030B4D43FA10804CFB000000020B4D43FE10804CFF0000000403C0010013A510F7000000080000000000000006108010FF0000000600000004108010FB0B4D43FE10804CFF0000000403C0010013A510F70793F0C30000000A000000070000000013A54CF7000000000793F0C30000000A12825CF8000000010000000A108010FF03C001000000000813A54CF7000000000793F0C30000000500000006000000040000000200000004000000020F34D0FE0C9A86FA0F878CFB000000020280010013D7B0F7067ECE830000000912EA94F800000001067ECE7D0000000A12EA5906000000030000000A000000000000000A0F8750FB0000000A000000020000000400000003"
theorem small_5897318_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5897318_left_root small_5897318_left_fuel small_5897318_left_count small_5897318_left_encoded = true := by
  decide +kernel
theorem small_5897318_left_covered : CoveredBy scale carrier boxes small_5897318_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5897318_left_root small_5897318_left_fuel small_5897318_left_count small_5897318_left_encoded small_5897318_left_checked

theorem cover_5897318 : CoveredBy scale carrier boxes root_5897318 := by
  apply coveredBy_split_literal root_5897318 small_5897318_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.root_5897936 coord3 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact small_5897318_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.cover_5897936
#print axioms cover_5897318

def root_5897312 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5897312_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5897312_left_fuel : Nat := 1
def small_5897312_left_count : Nat := 1
def small_5897312_left_encoded : String := "00000002"
theorem small_5897312_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5897312_left_root small_5897312_left_fuel small_5897312_left_count small_5897312_left_encoded = true := by
  decide +kernel
theorem small_5897312_left_covered : CoveredBy scale carrier boxes small_5897312_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5897312_left_root small_5897312_left_fuel small_5897312_left_count small_5897312_left_encoded small_5897312_left_checked

theorem cover_5897312 : CoveredBy scale carrier boxes root_5897312 := by
  apply coveredBy_split_literal root_5897312 small_5897312_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.root_5897318 coord2 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_5897312_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.cover_5897318
#print axioms cover_5897312

def root_5897311 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5897311_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5897311_right_fuel : Nat := 15
def small_5897311_right_count : Nat := 69
def small_5897311_right_encoded : String := "0F34D0FA045489FD1386AD060CFD9BFF0F350CFE000000040C9A86FE0F878CFF000000040280010013D7B0F7067ECE830000000812EA94F8000000010AD3577B10D13CFA00000002067ECE7D0000000600000008000000080000000013D7ECF700000000067ECE8312EA58F80AD3577B000000060000000600000001000000060F8750FF028001000000000800000006000000040F34D0FE028001000000000900000009000000040000000313867106000000030CFD9BFF0F350CFE000000040C9A86FE0F878CFF000000040280010000000009000000090F8750FF028001000000000813D7ECF700000000067ECE8312EA58F80AD3577B00000009000000050000000100000005000000040000000500000002"
theorem small_5897311_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5897311_right_root small_5897311_right_fuel small_5897311_right_count small_5897311_right_encoded = true := by
  decide +kernel
theorem small_5897311_right_covered : CoveredBy scale carrier boxes small_5897311_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5897311_right_root small_5897311_right_fuel small_5897311_right_count small_5897311_right_encoded small_5897311_right_checked

theorem cover_5897311 : CoveredBy scale carrier boxes root_5897311 := by
  apply coveredBy_split_literal root_5897311 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.root_5897312 small_5897311_right_root coord2 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.cover_5897312
  · exact small_5897311_right_covered
#print axioms cover_5897311

def root_5897305 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5897305_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-16379648)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5897305_left_fuel : Nat := 1
def small_5897305_left_count : Nat := 1
def small_5897305_left_encoded : String := "00000001"
theorem small_5897305_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5897305_left_root small_5897305_left_fuel small_5897305_left_count small_5897305_left_encoded = true := by
  decide +kernel
theorem small_5897305_left_covered : CoveredBy scale carrier boxes small_5897305_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5897305_left_root small_5897305_left_fuel small_5897305_left_count small_5897305_left_encoded small_5897305_left_checked

theorem cover_5897305 : CoveredBy scale carrier boxes root_5897305 := by
  apply coveredBy_split_literal root_5897305 small_5897305_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.root_5897311 coord1 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_5897305_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.cover_5897311
#print axioms cover_5897305

def root_5896695 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5896695_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5896695_left_fuel : Nat := 34
def small_5896695_left_count : Nat := 285
def small_5896695_left_encoded : String := "138670F80CFD9BFB0F350CFA00000002045489FD1386AD060CFD9BFF0F350CFE000000040C9A86FA0F878CFB000000020C9A86FE0000000A0F8750FF00000008000000040F8750FB0C9A86FE0000000A0F8750FF0000000500000004000000020F34D0FE0000000A000000040000000313867106000000030CFD9BFF0F350CFE000000040C9A86FA0F878CFB000000020C9A86FE0F878CFF00000004000000090F8750FF0280010013D7B0F7022A458300000008000000080000000013D7ECF700000000022A45830000000913E200F800000001022A457D13E201060DE7C9FA000000090E5FD8FB0B4D43FE0000000900000008000000020000000300000009000000040F8750FB0C9A86FE0F878CFF000000040280010013D7B0F7022A45830000000913E200F800000001022A457D13E201060B4D43FA000000090000000A00000003000000090000000013D7ECF700000000022A45830000000913E200F800000001022A457D0000000A000000090F8750FF0280010013D7B0F7022A458313E1C4F8022A457D0000000513E1C50600000003000000090000000113E200F800000001022A457D13E201060B4D43FA10804CFB0000000200000008108010FB00000005000000020000000313E1C506000000030B4D43FA10804CFB000000020B4D43FE0000000900000008108010FB0B4D43FE10804CFF00000004014001000000000900000009108010FF014001000000000813F614F700000000033F67C3000000050000000800000004000000020000000013D7ECF700000000022A458313E1C4F8022A457D0000000513E1C506000000030B4D43FA00000009108010FB00000005000000020000000113E200F800000001022A457D13E201060B4D43FA10804CFB000000020B4D43FE0000000A108010FF0000000500000004108010FB00000005000000020000000313E1C506000000030B4D43FA10804CFB000000020B4D43FE00000009108010FF03C0010013A510F7000000090000000013A54CF700000000033F67C30000000913BC30F8000000010115233D13F895060BF3E57A000000090000000A000000030000000900000004108010FB0B4D43FE10804CFF0000000403C0010013A510F7000000090000000013A54CF7000000000000000A108010FF03C0010013A510F7033F67C30000000513BC30F8000000010115233D0000000513F85906000000030AA6A27A10EDACFB000000020000000910ED70FB0AA6A27E0000000910ED70FF0000000500000004000000020000000013A54CF700000000033F67C30000000513BC30F8000000010115233D0000000513F85906000000030AA6A27A10EDACFB000000020000000910ED70FB0AA6A27E10EDACFF000000040000000910ED70FF046001001383DCF70000000500000000000000050000000400000002000000040000000200000004000000020F34D0FE00000009000000040F34D0FA045489FD1386AD060CFD9BFF0F350CFE000000040C9A86FE0F878CFF000000040000000900000008000000090000000313867106000000030CFD9BFF00000009000000090000000200000001"
theorem small_5896695_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5896695_left_root small_5896695_left_fuel small_5896695_left_count small_5896695_left_encoded = true := by
  decide +kernel
theorem small_5896695_left_covered : CoveredBy scale carrier boxes small_5896695_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5896695_left_root small_5896695_left_fuel small_5896695_left_count small_5896695_left_encoded small_5896695_left_checked

theorem cover_5896695 : CoveredBy scale carrier boxes root_5896695 := by
  apply coveredBy_split_literal root_5896695 small_5896695_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.root_5897305 coord1 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact small_5896695_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.cover_5897305
#print axioms cover_5896695

def root_5896690 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5896690_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16243968), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5896690_right_fuel : Nat := 1
def small_5896690_right_count : Nat := 1
def small_5896690_right_encoded : String := "00000000"
theorem small_5896690_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5896690_right_root small_5896690_right_fuel small_5896690_right_count small_5896690_right_encoded = true := by
  decide +kernel
theorem small_5896690_right_covered : CoveredBy scale carrier boxes small_5896690_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5896690_right_root small_5896690_right_fuel small_5896690_right_count small_5896690_right_encoded small_5896690_right_checked

theorem cover_5896690 : CoveredBy scale carrier boxes root_5896690 := by
  apply coveredBy_split_literal root_5896690 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.root_5896695 small_5896690_right_root coord0 true (-16243968)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.cover_5896695
  · exact small_5896690_right_covered
#print axioms cover_5896690

def root_5896689 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5896689 : CoveredBy scale carrier boxes root_5896689 := by
  apply coveredBy_split_literal root_5896689 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.root_5896690 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2218.root coord0 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.cover_5896690
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2218.covered
#print axioms cover_5896689

def root_5896683 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5896683_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5896683_left_fuel : Nat := 1
def small_5896683_left_count : Nat := 1
def small_5896683_left_encoded : String := "00000004"
theorem small_5896683_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5896683_left_root small_5896683_left_fuel small_5896683_left_count small_5896683_left_encoded = true := by
  decide +kernel
theorem small_5896683_left_covered : CoveredBy scale carrier boxes small_5896683_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5896683_left_root small_5896683_left_fuel small_5896683_left_count small_5896683_left_encoded small_5896683_left_checked

theorem cover_5896683 : CoveredBy scale carrier boxes root_5896683 := by
  apply coveredBy_split_literal root_5896683 small_5896683_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.root_5896689 coord4 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_5896683_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.cover_5896689
#print axioms cover_5896683

def root_5896682 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5896682_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5896682_right_fuel : Nat := 11
def small_5896682_right_count : Nat := 41
def small_5896682_right_encoded : String := "120700FE05000100135D44F704548A03000000091386ACF8000000010CFD9BFB0F350CFA00000002045489FD1386AD06045489FF0000000A0000000500000003000000050000000900000000135D80F70000000004548A03138670F80CFD9BFB0F350CFA00000002045489FD0000000A0000000800000009000000011386ACF8000000010CFD9BFB0F350CFA00000002045489FD0000000A000000050000000500000004"
theorem small_5896682_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5896682_right_root small_5896682_right_fuel small_5896682_right_count small_5896682_right_encoded = true := by
  decide +kernel
theorem small_5896682_right_covered : CoveredBy scale carrier boxes small_5896682_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5896682_right_root small_5896682_right_fuel small_5896682_right_count small_5896682_right_encoded small_5896682_right_checked

theorem cover_5896682 : CoveredBy scale carrier boxes root_5896682 := by
  apply coveredBy_split_literal root_5896682 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.root_5896683 small_5896682_right_root coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.cover_5896683
  · exact small_5896682_right_covered
#print axioms cover_5896682

def root_5896676 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5896676_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5896676_left_fuel : Nat := 1
def small_5896676_left_count : Nat := 1
def small_5896676_left_encoded : String := "00000003"
theorem small_5896676_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5896676_left_root small_5896676_left_fuel small_5896676_left_count small_5896676_left_encoded = true := by
  decide +kernel
theorem small_5896676_left_covered : CoveredBy scale carrier boxes small_5896676_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5896676_left_root small_5896676_left_fuel small_5896676_left_count small_5896676_left_encoded small_5896676_left_checked

theorem cover_5896676 : CoveredBy scale carrier boxes root_5896676 := by
  apply coveredBy_split_literal root_5896676 small_5896676_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.root_5896682 coord3 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_5896676_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.cover_5896682
#print axioms cover_5896676

def root_5896014 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5896014_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5896014_left_fuel : Nat := 22
def small_5896014_left_count : Nat := 305
def small_5896014_left_encoded : String := "12073D0608A912FF12073CFE0000000405000100135D44F704548A03138670F80CFD9BFB0F350CFA000000020CFD9BFD000000050F34D106000000030CFD9BFF000000050F34D0FE0000000A000000040F34D0FA0CFD9BFD0000000A0F34D106000000030000000A00000002000000011386ACF8000000010CFD9BFB0F350CFA000000020CFD9BFD0F350D060CFD9BFF000000050F34D0FE0C9A86FA0F878CFB000000020000000A0000000A00000004000000030F34D106000000030CFD9BFF0F350CFE000000040C9A86FA0F878CFB000000020C9A86FE0F878CFF000000040280010013D7B0F7067ECE830000000812EA94F80000000100000008000000000000000A0F8750FF00000008000000040F8750FB0C9A86FE0F878CFF000000040280010013D7B0F70000000A000000000000000A0F8750FF0000000500000004000000020F34D0FE0000000A000000040F34D0FA0CFD9BFD0F350D060CFD9BFF000000060F34D0FE0000000600000004000000030F34D106000000030CFD9BFF0F350CFE000000040C9A86FE00000006000000060F34D0FE0000000A000000040000000200000000135D80F70000000004548A03138670F80CFD9BFB0F350CFA000000020CFD9BFD0F350D060CFD9BFF000000050F34D0FE0000000A00000004000000030F34D106000000030CFD9BFF0000000A0F34D0FE0000000A000000040F34D0FA0CFD9BFD0000000A0F34D106000000030000000A00000002000000011386ACF8000000010CFD9BFB0F350CFA000000020CFD9BFD0F350D060CFD9BFF000000060F34D0FE0C9A86FA000000060000000A00000004000000030F34D106000000030CFD9BFF0F350CFE000000040C9A86FA0F878CFB00000002000000060F8750FB0C9A86FE0000000A0F8750FF0000000600000004000000020F34D0FE0000000A000000040F34D0FA0CFD9BFD000000060F34D106000000030CFD9BFF000000060000000A00000002120700FE05000100135D44F704548A03138670F80CFD9BFB0F350CFA000000020CFD9BFD0F350D06045489FF0000000A138670FE0C9A86FA0000000A0000000A00000004000000030F34D106000000030000000A0F34D0FA0000000A00000002000000011386ACF8000000010CFD9BFB0F350CFA000000020CFD9BFD0F350D06045489FF1386ACFE000000040C9A86FA0000000A0000000A138670FE0C9A86FA0F878CFB000000020000000A0F8750FB0C9A87060F8750FD0000000A000000030000000A0000000200000004000000030F34D10600000003045489FF0000000A138670FE0000000A000000040F34D0FA0CFD9BFD0000000A0000000A0000000200000000135D80F70000000004548A03138670F80CFD9BFB0F350CFA000000020CFD9BFD0F350D06045489FF0000000A138670FE0C9A86FA0000000A0000000A00000004000000030F34D106000000030000000A0F34D0FA0000000A00000002000000011386ACF8000000010CFD9BFB0F350CFA000000020CFD9BFD0F350D06045489FF1386ACFE000000040C9A86FA0000000A0000000A138670FE0C9A86FA0F878CFB000000020000000A0F8750FB0C9A87060F8750FD0000000A000000030000000A0000000200000004000000030F34D106000000030000000A0F34D0FA0CFD9BFD0000000A0000000A000000020000000400000003"
theorem small_5896014_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5896014_left_root small_5896014_left_fuel small_5896014_left_count small_5896014_left_encoded = true := by
  decide +kernel
theorem small_5896014_left_covered : CoveredBy scale carrier boxes small_5896014_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5896014_left_root small_5896014_left_fuel small_5896014_left_count small_5896014_left_encoded small_5896014_left_checked

theorem cover_5896014 : CoveredBy scale carrier boxes root_5896014 := by
  apply coveredBy_split_literal root_5896014 small_5896014_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.root_5896676 coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_5896014_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.cover_5896676
#print axioms cover_5896014

def root_5896008 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5896008_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5896008_left_fuel : Nat := 1
def small_5896008_left_count : Nat := 1
def small_5896008_left_encoded : String := "00000002"
theorem small_5896008_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5896008_left_root small_5896008_left_fuel small_5896008_left_count small_5896008_left_encoded = true := by
  decide +kernel
theorem small_5896008_left_covered : CoveredBy scale carrier boxes small_5896008_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5896008_left_root small_5896008_left_fuel small_5896008_left_count small_5896008_left_encoded small_5896008_left_checked

theorem cover_5896008 : CoveredBy scale carrier boxes root_5896008 := by
  apply coveredBy_split_literal root_5896008 small_5896008_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.root_5896014 coord2 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_5896008_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.cover_5896014
#print axioms cover_5896008

def root_5896007 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5896007_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5896007_right_fuel : Nat := 17
def small_5896007_right_count : Nat := 103
def small_5896007_right_encoded : String := "120700FA08A912FD12073D0608A912FF12073CFE0000000405000100135D44F704548A03138670F8045489FB1386ACFA000000020CFD9BFD0000000A0F34D106000000030000000A00000008000000011386ACF800000001045489FB1386ACFA000000020CFD9BFD000000060F34D106000000030CFD9BFF000000060F34D0FE00000006000000040000000600000000135D80F70000000004548A030000000A00000006120700FE0000000A0000000400000003120701060000000308A912FF12073CFE0000000405000100135D44F704548A03000000091386ACF800000001045489FB1386ACFA00000002045489FD1386AD060CFD9BFF0F350CFE000000040C9A86FE000000060000000600000009000000031386710600000003000000090000000900000000135D80F70000000004548A03138670F8045489FB1386ACFA00000002045489FD0000000A0000000900000009000000011386ACF800000001045489FB1386ACFA00000002045489FD1386AD060CFD9BFF0000000600000005000000030000000500000005120700FE000000090000000400000002"
theorem small_5896007_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5896007_right_root small_5896007_right_fuel small_5896007_right_count small_5896007_right_encoded = true := by
  decide +kernel
theorem small_5896007_right_covered : CoveredBy scale carrier boxes small_5896007_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5896007_right_root small_5896007_right_fuel small_5896007_right_count small_5896007_right_encoded small_5896007_right_checked

theorem cover_5896007 : CoveredBy scale carrier boxes root_5896007 := by
  apply coveredBy_split_literal root_5896007 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.root_5896008 small_5896007_right_root coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.cover_5896008
  · exact small_5896007_right_covered
#print axioms cover_5896007

def root_5896002 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5896002_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5896002_right_fuel : Nat := 1
def small_5896002_right_count : Nat := 1
def small_5896002_right_encoded : String := "00000001"
theorem small_5896002_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5896002_right_root small_5896002_right_fuel small_5896002_right_count small_5896002_right_encoded = true := by
  decide +kernel
theorem small_5896002_right_covered : CoveredBy scale carrier boxes small_5896002_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5896002_right_root small_5896002_right_fuel small_5896002_right_count small_5896002_right_encoded small_5896002_right_checked

theorem cover_5896002 : CoveredBy scale carrier boxes root_5896002 := by
  apply coveredBy_split_literal root_5896002 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.root_5896007 small_5896002_right_root coord1 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.cover_5896007
  · exact small_5896002_right_covered
#print axioms cover_5896002

def root_5905466 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5905466 : CoveredBy scale carrier boxes root_5905466 := by
  apply coveredBy_split_literal root_5905466 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2219.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2220.root coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2219.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2220.covered
#print axioms cover_5905466

def root_5905460 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5905460_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5905460_left_fuel : Nat := 1
def small_5905460_left_count : Nat := 1
def small_5905460_left_encoded : String := "00000002"
theorem small_5905460_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5905460_left_root small_5905460_left_fuel small_5905460_left_count small_5905460_left_encoded = true := by
  decide +kernel
theorem small_5905460_left_covered : CoveredBy scale carrier boxes small_5905460_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5905460_left_root small_5905460_left_fuel small_5905460_left_count small_5905460_left_encoded small_5905460_left_checked

theorem cover_5905460 : CoveredBy scale carrier boxes root_5905460 := by
  apply coveredBy_split_literal root_5905460 small_5905460_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.root_5905466 coord2 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_5905460_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.cover_5905466
#print axioms cover_5905460

def root_5905459 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5905459_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5905459_right_fuel : Nat := 16
def small_5905459_right_count : Nat := 87
def small_5905459_right_encoded : String := "120700FA08A912FD12073D0608A912FF12073CFE0000000405000100135D44F70CFD9C030F34D0F8045489FB1386ACFA000000020CFD9BFD000000060F34D106000000030CFD9BFF000000060F34D0FE000000060000000400000006000000010F350CF800000001045489FB1386ACFA000000020CFD9BFD000000060F34D106000000030CFD9BFF0000000600000005000000060000000000000006120700FE05000100135D44F70CFD9C030F34D0F8045489FB0000000A0000000A000000010F350CF8000000010000000500000000135D80F7000000000CFD9C030000000A000000050000000400000003120701060000000308A912FF12073CFE0000000405000100135D44F70CFD9C030F34D0F8045489FB1386ACFA00000002045489FD1386AD060CFD9BFF0F350CFE000000040000000500000005000000030000000500000005000000010000000500000000000000050000000500000002"
theorem small_5905459_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5905459_right_root small_5905459_right_fuel small_5905459_right_count small_5905459_right_encoded = true := by
  decide +kernel
theorem small_5905459_right_covered : CoveredBy scale carrier boxes small_5905459_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5905459_right_root small_5905459_right_fuel small_5905459_right_count small_5905459_right_encoded small_5905459_right_checked

theorem cover_5905459 : CoveredBy scale carrier boxes root_5905459 := by
  apply coveredBy_split_literal root_5905459 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.root_5905460 small_5905459_right_root coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.cover_5905460
  · exact small_5905459_right_covered
#print axioms cover_5905459

def root_5905453 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5905453_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5905453_left_fuel : Nat := 1
def small_5905453_left_count : Nat := 1
def small_5905453_left_encoded : String := "00000001"
theorem small_5905453_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5905453_left_root small_5905453_left_fuel small_5905453_left_count small_5905453_left_encoded = true := by
  decide +kernel
theorem small_5905453_left_covered : CoveredBy scale carrier boxes small_5905453_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5905453_left_root small_5905453_left_fuel small_5905453_left_count small_5905453_left_encoded small_5905453_left_checked

theorem cover_5905453 : CoveredBy scale carrier boxes root_5905453 := by
  apply coveredBy_split_literal root_5905453 small_5905453_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.root_5905459 coord1 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_5905453_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.cover_5905459
#print axioms cover_5905453

def root_5896001 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5896001 : CoveredBy scale carrier boxes root_5896001 := by
  apply coveredBy_split_literal root_5896001 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.root_5896002 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.root_5905453 coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.cover_5896002
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.cover_5905453
#print axioms cover_5896001

def root_5895995 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5895995_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5895995_left_fuel : Nat := 1
def small_5895995_left_count : Nat := 1
def small_5895995_left_encoded : String := "00000004"
theorem small_5895995_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5895995_left_root small_5895995_left_fuel small_5895995_left_count small_5895995_left_encoded = true := by
  decide +kernel
theorem small_5895995_left_covered : CoveredBy scale carrier boxes small_5895995_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5895995_left_root small_5895995_left_fuel small_5895995_left_count small_5895995_left_encoded small_5895995_left_checked

theorem cover_5895995 : CoveredBy scale carrier boxes root_5895995 := by
  apply coveredBy_split_literal root_5895995 small_5895995_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.root_5896001 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5895995_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.cover_5896001
#print axioms cover_5895995

def root_5908879 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5908879 : CoveredBy scale carrier boxes root_5908879 := by
  apply coveredBy_split_literal root_5908879 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2221.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2222.root coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2221.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2222.covered
#print axioms cover_5908879

def root_5908874 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5908874_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5908874_right_fuel : Nat := 1
def small_5908874_right_count : Nat := 1
def small_5908874_right_encoded : String := "00000004"
theorem small_5908874_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5908874_right_root small_5908874_right_fuel small_5908874_right_count small_5908874_right_encoded = true := by
  decide +kernel
theorem small_5908874_right_covered : CoveredBy scale carrier boxes small_5908874_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5908874_right_root small_5908874_right_fuel small_5908874_right_count small_5908874_right_encoded small_5908874_right_checked

theorem cover_5908874 : CoveredBy scale carrier boxes root_5908874 := by
  apply coveredBy_split_literal root_5908874 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.root_5908879 small_5908874_right_root coord4 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.cover_5908879
  · exact small_5908874_right_covered
#print axioms cover_5908874

def root_5895994 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5895994 : CoveredBy scale carrier boxes root_5895994 := by
  apply coveredBy_split_literal root_5895994 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.root_5895995 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.root_5908874 coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.cover_5895995
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.cover_5908874
#print axioms cover_5895994

def root_5895988 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5895988_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5895988_left_fuel : Nat := 1
def small_5895988_left_count : Nat := 1
def small_5895988_left_encoded : String := "00000003"
theorem small_5895988_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5895988_left_root small_5895988_left_fuel small_5895988_left_count small_5895988_left_encoded = true := by
  decide +kernel
theorem small_5895988_left_covered : CoveredBy scale carrier boxes small_5895988_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5895988_left_root small_5895988_left_fuel small_5895988_left_count small_5895988_left_encoded small_5895988_left_checked

theorem cover_5895988 : CoveredBy scale carrier boxes root_5895988 := by
  apply coveredBy_split_literal root_5895988 small_5895988_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.root_5895994 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5895988_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.cover_5895994
#print axioms cover_5895988

def root_5895132 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5895132_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5895132_left_fuel : Nat := 28
def small_5895132_left_count : Nat := 403
def small_5895132_left_encoded : String := "1151E8FD0A0000FE115224FF0000000408A91303120700F808A912FB12073CFA0000000208A912FF12073CFE0000000405000100135D44F70500010600000008135D80FD0000000304548A03000000051386ACF8000000010CFD9BFB000000050000000600000000135D80F7000000000500010600000006135D80FD0000000304548A03138670F80CFD9BFB00000005000000060000000100000006120700FE05000100135D44F705000106135D44FD04548A03138670F800000008000000011386ACF8000000010CFD9BFB0F350CFA00000002045489FF00000005138670FE0C9A86FA0F878CFB00000002000000060F8750FB02800100000000050000000600000002000000040000000600000003135D80FD0000000304548A03138670F80CFD9BFB0F350CFA00000002045489FF00000005138670FE0C9A86FA0F878CFB000000020000000A0F8750FB0000000500000002000000040F34D0FA0000000A00000002000000011386ACF8000000010CFD9BFB0F350CFA00000002045489FF1386ACFE000000040C9A86FA0F878CFB000000020000000A0F8750FB0000000500000002138670FE0C9A86FA0F878CFB00000002028001000000000A0000000A0F8750FB0280010013D7B0F707800106128A40FD067ECE830000000512EA94F8000000010000000A000000030000000A0000000013D7ECF70000000007800106128A40FD067ECE830000000500000006000000030000000A00000002000000040F34D0FA0000000A0000000200000000135D80F70000000005000106135D44FD04548A03138670F80CFD9BFB0F350CFA00000002045489FF00000005138670FE0C9A86FA000000060F8750FB00000005000000020000000400000006000000010000000600000003135D80FD0000000304548A03138670F80CFD9BFB0F350CFA00000002045489FF1386ACFE000000040C9A86FA000000060F8750FB0000000500000002138670FE0C9A86FA0F878CFB00000002078001000000000A000000060F8750FB07800100128A40F707800106000000050000000A00000000128A7CF70000000007800106128A40FD00000006000000030000000A00000002000000040F34D0FA0000000600000002000000011386ACF8000000010CFD9BFB0F350CFA00000002045489FF00000006138670FE0C9A86FA000000060F8750FB07800100128A40F707800106128A40FD00000006000000030000000A000000000000000600000002000000040000000600000004120700FA08A912FF00000006120700FE0000000600000004000000020000000112073CF80000000108A912FB12073CFA0000000208A912FF12073CFE0000000405000100135D44F705000106135D44FD0000000600000003135D80FD000000030CFD9C030F34D0F80CFD9BFB0F350CFA000000020CFD9BFF000000050F34D0FE000000060000000400000006000000010F350CF8000000010CFD9BFB0F350CFA000000020CFD9BFF0000000600000009000000060000000000000006120700FE05000100135D44F705000106135D44FD0CFD9C030F34D0F80CFD9BFB0F350CFA00000002045489FF00000006138670FE000000060000000400000006000000010000000600000003135D80FD000000030CFD9C030F34D0F80CFD9BFB0F350CFA00000002045489FF1386ACFE000000040C9A86FA000000060F8750FB0280010013D7B0F707800106000000060000000A000000000000000600000002138670FE0C9A86FA0F878CFB00000002028001000000000A000000060F8750FB0280010013D7B0F707800106128A40FD0AD357830000000A00000006000000030000000A0000000013D7ECF70000000007800106128A40FD00000006000000030000000A00000002000000040F34D0FA0000000600000002000000010F350CF8000000010CFD9BFB0F350CFA00000002045489FF00000006138670FE0C9A86F80F878D030C9A86FA0F878CFB00000002000000060F8750FB0000000700000002000000010F875103000000010C9A86FA0000000600000007000000040000000600000000135D80F7000000000500010600000006135D80FD000000030CFD9C030F34D0F800000006000000010000000600000004120700FA00000006000000021151E8FF08A91303120700F8000000080000000112073CF80000000108A912FB12073CFA00000002050001000000000900000006000000060000000400000003"
theorem small_5895132_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5895132_left_root small_5895132_left_fuel small_5895132_left_count small_5895132_left_encoded = true := by
  decide +kernel
theorem small_5895132_left_covered : CoveredBy scale carrier boxes small_5895132_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5895132_left_root small_5895132_left_fuel small_5895132_left_count small_5895132_left_encoded small_5895132_left_checked

theorem cover_5895132 : CoveredBy scale carrier boxes root_5895132 := by
  apply coveredBy_split_literal root_5895132 small_5895132_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.root_5895988 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_5895132_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.cover_5895988
#print axioms cover_5895132

def root_5895126 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5895126_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5895126_left_fuel : Nat := 1
def small_5895126_left_count : Nat := 1
def small_5895126_left_encoded : String := "00000002"
theorem small_5895126_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5895126_left_root small_5895126_left_fuel small_5895126_left_count small_5895126_left_encoded = true := by
  decide +kernel
theorem small_5895126_left_covered : CoveredBy scale carrier boxes small_5895126_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5895126_left_root small_5895126_left_fuel small_5895126_left_count small_5895126_left_encoded small_5895126_left_checked

theorem cover_5895126 : CoveredBy scale carrier boxes root_5895126 := by
  apply coveredBy_split_literal root_5895126 small_5895126_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.root_5895132 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5895126_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.cover_5895132
#print axioms cover_5895126

def root_5914674 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5914674 : CoveredBy scale carrier boxes root_5914674 := by
  apply coveredBy_split_literal root_5914674 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2224.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2225.root coord0 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2224.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2225.covered
#print axioms cover_5914674

def root_5914668 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5914668_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5914668_left_fuel : Nat := 1
def small_5914668_left_count : Nat := 1
def small_5914668_left_encoded : String := "00000004"
theorem small_5914668_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5914668_left_root small_5914668_left_fuel small_5914668_left_count small_5914668_left_encoded = true := by
  decide +kernel
theorem small_5914668_left_covered : CoveredBy scale carrier boxes small_5914668_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5914668_left_root small_5914668_left_fuel small_5914668_left_count small_5914668_left_encoded small_5914668_left_checked

theorem cover_5914668 : CoveredBy scale carrier boxes root_5914668 := by
  apply coveredBy_split_literal root_5914668 small_5914668_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.root_5914674 coord4 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_5914668_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.cover_5914674
#print axioms cover_5914668

def root_5914667 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5914667_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5914667_right_fuel : Nat := 13
def small_5914667_right_count : Nat := 37
def small_5914667_right_encoded : String := "120700FE05000100135D44F7050000FA135D80FB0000000204548A03138670F8045489FD1386AD06045489FF0000000A000000060000000300000006000000011386ACF800000001045489FD1386AD06045489FF1386ACFE00000004028001000000000A00000008000000080000000300000008135D44FB04548A03000000060000000600000002000000000000000800000004"
theorem small_5914667_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5914667_right_root small_5914667_right_fuel small_5914667_right_count small_5914667_right_encoded = true := by
  decide +kernel
theorem small_5914667_right_covered : CoveredBy scale carrier boxes small_5914667_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5914667_right_root small_5914667_right_fuel small_5914667_right_count small_5914667_right_encoded small_5914667_right_checked

theorem cover_5914667 : CoveredBy scale carrier boxes root_5914667 := by
  apply coveredBy_split_literal root_5914667 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.root_5914668 small_5914667_right_root coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.cover_5914668
  · exact small_5914667_right_covered
#print axioms cover_5914667

def root_5914661 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5914661_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5914661_left_fuel : Nat := 1
def small_5914661_left_count : Nat := 1
def small_5914661_left_encoded : String := "00000003"
theorem small_5914661_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5914661_left_root small_5914661_left_fuel small_5914661_left_count small_5914661_left_encoded = true := by
  decide +kernel
theorem small_5914661_left_covered : CoveredBy scale carrier boxes small_5914661_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5914661_left_root small_5914661_left_fuel small_5914661_left_count small_5914661_left_encoded small_5914661_left_checked

theorem cover_5914661 : CoveredBy scale carrier boxes root_5914661 := by
  apply coveredBy_split_literal root_5914661 small_5914661_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.root_5914667 coord3 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_5914661_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.cover_5914667
#print axioms cover_5914661

def root_5913597 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5913597 : CoveredBy scale carrier boxes root_5913597 := by
  apply coveredBy_split_literal root_5913597 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2223.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.root_5914661 coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2223.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.cover_5914661
#print axioms cover_5913597

def root_5913592 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5913592_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5913592_right_fuel : Nat := 1
def small_5913592_right_count : Nat := 1
def small_5913592_right_encoded : String := "00000001"
theorem small_5913592_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5913592_right_root small_5913592_right_fuel small_5913592_right_count small_5913592_right_encoded = true := by
  decide +kernel
theorem small_5913592_right_covered : CoveredBy scale carrier boxes small_5913592_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5913592_right_root small_5913592_right_fuel small_5913592_right_count small_5913592_right_encoded small_5913592_right_checked

theorem cover_5913592 : CoveredBy scale carrier boxes root_5913592 := by
  apply coveredBy_split_literal root_5913592 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.root_5913597 small_5913592_right_root coord1 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.cover_5913597
  · exact small_5913592_right_covered
#print axioms cover_5913592

def root_5913591 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5913591 : CoveredBy scale carrier boxes root_5913591 := by
  apply coveredBy_split_literal root_5913591 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.root_5913592 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2226.root coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.cover_5913592
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2226.covered
#print axioms cover_5913591

def root_5913585 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5913585_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5913585_left_fuel : Nat := 1
def small_5913585_left_count : Nat := 1
def small_5913585_left_encoded : String := "00000004"
theorem small_5913585_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5913585_left_root small_5913585_left_fuel small_5913585_left_count small_5913585_left_encoded = true := by
  decide +kernel
theorem small_5913585_left_covered : CoveredBy scale carrier boxes small_5913585_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5913585_left_root small_5913585_left_fuel small_5913585_left_count small_5913585_left_encoded small_5913585_left_checked

theorem cover_5913585 : CoveredBy scale carrier boxes root_5913585 := by
  apply coveredBy_split_literal root_5913585 small_5913585_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.root_5913591 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5913585_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.cover_5913591
#print axioms cover_5913585

def root_5913584 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5913584 : CoveredBy scale carrier boxes root_5913584 := by
  apply coveredBy_split_literal root_5913584 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.root_5913585 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2227.root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.cover_5913585
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2227.covered
#print axioms cover_5913584

def root_5913578 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5913578_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5913578_left_fuel : Nat := 1
def small_5913578_left_count : Nat := 1
def small_5913578_left_encoded : String := "00000003"
theorem small_5913578_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5913578_left_root small_5913578_left_fuel small_5913578_left_count small_5913578_left_encoded = true := by
  decide +kernel
theorem small_5913578_left_covered : CoveredBy scale carrier boxes small_5913578_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5913578_left_root small_5913578_left_fuel small_5913578_left_count small_5913578_left_encoded small_5913578_left_checked

theorem cover_5913578 : CoveredBy scale carrier boxes root_5913578 := by
  apply coveredBy_split_literal root_5913578 small_5913578_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.root_5913584 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5913578_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.cover_5913584
#print axioms cover_5913578

def root_5912764 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5912764_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5912764_left_fuel : Nat := 31
def small_5912764_left_count : Nat := 385
def small_5912764_left_encoded : String := "1151E8FD0A0000FE115224FF0000000408A91303120700F808A912FF00000005120700FE05000100135D44F7050000FA135D80FB0000000205000106135D44FD04548A03000000051386ACF800000001045489FF00000005138670FE000000050000000400000003135D80FD0000000304548A03000000051386ACF800000001045489FF00000005138670FE0280010013D7B0F7078000FA128A7CFB0000000207800106128A40FD0000000500000003128A7CFD00000003067ECE830000000500000007128A40FB07800106128A40FD000000050000000300000007000000020000000013D7ECF700000000078000FA128A7CFB0000000207800106128A40FD067ECE830000000512EA94F800000001022A457F0000000513E1C4FE03C0010000000009000000090000000400000003128A7CFD00000003067ECE830000000A12EA94F8000000010000000A128A40FB07800106128A40FD067ECE83000000050000000900000003128A7CFD00000003067ECE8300000005000000070000000200000004135D44FB05000106135D44FD0000000500000003135D80FD0000000304548A03000000051386ACF800000001045489FF00000005138670FE028001000000000713D7ECF700000000028000FA13D7ECFB0000000207800106000000090000000700000007000000040000000200000000135D80F700000000050000FA135D80FB0000000205000106135D44FD04548A03000000051386ACF800000001045489FF00000005138670FE0780010000000009000000060000000400000003135D80FD0000000304548A03138670F8045489FF00000005138670FE07800100128A40F70000000500000000128A7CF700000000078000FA128A7CFB0000000207800106128A40FD0000000500000003128A7CFD00000003022A45830000000513E200F8000000010000000A128A40FB000000050000000200000004000000011386ACF800000001045489FF1386ACFE0000000407800100128A40F7078000FA000000050000000900000000128A7CF700000000078000FA0000000600000009138670FE07800100128A40F7078000FA128A7CFB0000000207800106128A40FD067ECE8312EA58F800000005000000010000000600000003128A7CFD00000003067ECE830000000A12EA94F8000000010000000A128A40FB0780010600000009128A7CFD00000003067ECE8312EA58F8022A457F0000000513E1C4FE0640010012FF70F7064000FA000000050000000A0000000012FFACF700000000064000FA0000000A000000090000000400000001000000090000000200000000128A7CF700000000078000FA128A7CFB000000020780010600000006128A7CFD00000003067ECE830000000A00000006128A40FB0780010600000009128A7CFD00000003067ECE8312EA58F8022A457F000000090000000900000001000000090000000200000004135D44FB05000106135D44FD0000000900000003135D80FD0000000304548A03000000051386ACF800000001045489FF00000005138670FE0780010000000009000000090000000400000002000000040000000112073CF80000000108A912FF12073CFE000000040500010000000009135D80F70000000000000009120700FE05000100135D44F7050000FA135D80FB0000000205000106135D44FD0CFD9C030F34D0F800000009000000010000000900000003135D80FD000000030CFD9C030F34D0F8045489FF1386ACFE0000000400000009138670FE028001000000000713D7ECF700000000078000FA128A7CFB000000020780010600000009000000070000000900000004000000010F350CF80000000100000009135D44FB000000090000000200000000135D80F700000000050000FA135D80FB0000000205000106135D44FD0000000900000003135D80FD000000030CFD9C030F34D0F8045489FF00000009138670FE07800100128A40F7078000FA128A7CFB000000020780010600000009128A7CFD000000030AD357830000000A000000060000000900000000128A7CF7000000000000000900000004000000010F350CF80000000100000009135D44FB0000000900000002000000041151E8FF000000050000000400000003"
theorem small_5912764_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5912764_left_root small_5912764_left_fuel small_5912764_left_count small_5912764_left_encoded = true := by
  decide +kernel
theorem small_5912764_left_covered : CoveredBy scale carrier boxes small_5912764_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5912764_left_root small_5912764_left_fuel small_5912764_left_count small_5912764_left_encoded small_5912764_left_checked

theorem cover_5912764 : CoveredBy scale carrier boxes root_5912764 := by
  apply coveredBy_split_literal root_5912764 small_5912764_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.root_5913578 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_5912764_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.cover_5913578
#print axioms cover_5912764

def root_5912759 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5912759_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5912759_right_fuel : Nat := 1
def small_5912759_right_count : Nat := 1
def small_5912759_right_encoded : String := "00000002"
theorem small_5912759_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5912759_right_root small_5912759_right_fuel small_5912759_right_count small_5912759_right_encoded = true := by
  decide +kernel
theorem small_5912759_right_covered : CoveredBy scale carrier boxes small_5912759_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5912759_right_root small_5912759_right_fuel small_5912759_right_count small_5912759_right_encoded small_5912759_right_checked

theorem cover_5912759 : CoveredBy scale carrier boxes root_5912759 := by
  apply coveredBy_split_literal root_5912759 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.root_5912764 small_5912759_right_root coord2 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.cover_5912764
  · exact small_5912759_right_covered
#print axioms cover_5912759

def root_5895125 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5895125 : CoveredBy scale carrier boxes root_5895125 := by
  apply coveredBy_split_literal root_5895125 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.root_5895126 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.root_5912759 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.cover_5895126
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.cover_5912759
#print axioms cover_5895125

def root_5895120 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5895120_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5895120_right_fuel : Nat := 1
def small_5895120_right_count : Nat := 1
def small_5895120_right_encoded : String := "00000001"
theorem small_5895120_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5895120_right_root small_5895120_right_fuel small_5895120_right_count small_5895120_right_encoded = true := by
  decide +kernel
theorem small_5895120_right_covered : CoveredBy scale carrier boxes small_5895120_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5895120_right_root small_5895120_right_fuel small_5895120_right_count small_5895120_right_encoded small_5895120_right_checked

theorem cover_5895120 : CoveredBy scale carrier boxes root_5895120 := by
  apply coveredBy_split_literal root_5895120 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.root_5895125 small_5895120_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.cover_5895125
  · exact small_5895120_right_covered
#print axioms cover_5895120

def root_5895119 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5895119 : CoveredBy scale carrier boxes root_5895119 := by
  apply coveredBy_split_literal root_5895119 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.root_5895120 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2228.root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.cover_5895120
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2228.covered
#print axioms cover_5895119

def root_5895114 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5895114_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5895114_right_fuel : Nat := 1
def small_5895114_right_count : Nat := 1
def small_5895114_right_encoded : String := "00000000"
theorem small_5895114_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5895114_right_root small_5895114_right_fuel small_5895114_right_count small_5895114_right_encoded = true := by
  decide +kernel
theorem small_5895114_right_covered : CoveredBy scale carrier boxes small_5895114_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5895114_right_root small_5895114_right_fuel small_5895114_right_count small_5895114_right_encoded small_5895114_right_checked

theorem cover_5895114 : CoveredBy scale carrier boxes root_5895114 := by
  apply coveredBy_split_literal root_5895114 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.root_5895119 small_5895114_right_root coord0 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.cover_5895119
  · exact small_5895114_right_covered
#print axioms cover_5895114

def root_5924873 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5924873 : CoveredBy scale carrier boxes root_5924873 := by
  apply coveredBy_split_literal root_5924873 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2229.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2230.root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2229.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2230.covered
#print axioms cover_5924873

def root_5924868 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5924868_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5924868_right_fuel : Nat := 1
def small_5924868_right_count : Nat := 1
def small_5924868_right_encoded : String := "00000001"
theorem small_5924868_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5924868_right_root small_5924868_right_fuel small_5924868_right_count small_5924868_right_encoded = true := by
  decide +kernel
theorem small_5924868_right_covered : CoveredBy scale carrier boxes small_5924868_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5924868_right_root small_5924868_right_fuel small_5924868_right_count small_5924868_right_encoded small_5924868_right_checked

theorem cover_5924868 : CoveredBy scale carrier boxes root_5924868 := by
  apply coveredBy_split_literal root_5924868 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.root_5924873 small_5924868_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.cover_5924873
  · exact small_5924868_right_covered
#print axioms cover_5924868

def root_5924867 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5924867 : CoveredBy scale carrier boxes root_5924867 := by
  apply coveredBy_split_literal root_5924867 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.root_5924868 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2231.root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.cover_5924868
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2231.covered
#print axioms cover_5924867

def root_5924861 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5924861_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5924861_left_fuel : Nat := 1
def small_5924861_left_count : Nat := 1
def small_5924861_left_encoded : String := "00000000"
theorem small_5924861_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5924861_left_root small_5924861_left_fuel small_5924861_left_count small_5924861_left_encoded = true := by
  decide +kernel
theorem small_5924861_left_covered : CoveredBy scale carrier boxes small_5924861_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5924861_left_root small_5924861_left_fuel small_5924861_left_count small_5924861_left_encoded small_5924861_left_checked

theorem cover_5924861 : CoveredBy scale carrier boxes root_5924861 := by
  apply coveredBy_split_literal root_5924861 small_5924861_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.root_5924867 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5924861_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.cover_5924867
#print axioms cover_5924861

def root_5895113 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5895113 : CoveredBy scale carrier boxes root_5895113 := by
  apply coveredBy_split_literal root_5895113 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.root_5895114 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.root_5924861 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.cover_5895114
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.cover_5924861
#print axioms cover_5895113

def root_5935954 : ZRayBox := fun j => (#[⟨⟨(2097152), (4194304)⟩, ⟨(-16645888), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16645888), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5935954 : CoveredBy scale carrier boxes root_5935954 := by
  apply coveredBy_split_literal root_5935954 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2233.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2234.root coord1 true (5448672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2233.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2234.covered
#print axioms cover_5935954

def root_5935948 : ZRayBox := fun j => (#[⟨⟨(2097152), (4194304)⟩, ⟨(-16645888), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5935948_left_root : ZRayBox := fun j => (#[⟨⟨(2097152), (4194304)⟩, ⟨(-16645888), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(2097152), (4194304)⟩, ⟨(-16777216), (-16645888)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5935948_left_fuel : Nat := 1
def small_5935948_left_count : Nat := 1
def small_5935948_left_encoded : String := "00000003"
theorem small_5935948_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5935948_left_root small_5935948_left_fuel small_5935948_left_count small_5935948_left_encoded = true := by
  decide +kernel
theorem small_5935948_left_covered : CoveredBy scale carrier boxes small_5935948_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5935948_left_root small_5935948_left_fuel small_5935948_left_count small_5935948_left_encoded small_5935948_left_checked

theorem cover_5935948 : CoveredBy scale carrier boxes root_5935948 := by
  apply coveredBy_split_literal root_5935948 small_5935948_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.root_5935954 coord3 true (-16645888)
  · decide +kernel
  · decide +kernel
  · exact small_5935948_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.cover_5935954
#print axioms cover_5935948

def root_5935266 : ZRayBox := fun j => (#[⟨⟨(2097152), (4194304)⟩, ⟨(-16645888), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5935266_left_root : ZRayBox := fun j => (#[⟨⟨(2097152), (4194304)⟩, ⟨(-16645888), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(0), (2097152)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5935266_left_fuel : Nat := 23
def small_5935266_left_count : Nat := 329
def small_5935266_left_encoded : String := "13D7B0FD067ECE8312EA58F8067ECE8912EA58FE0B4D43FA10804CFB0000000203C001000000000813A54CF700000000014001060000000813F614FD000000030569AC430000000800000006108010FB03C001000000000813A54CF700000000014001060000000813F614FD000000030569AC4300000008134110F8000000010569AC4900000008134110FE000000040AA6A27A10EDACFB000000020000000800000008000000020000000412EA94FE000000040B4D43FA10804CFB0000000203C0010013A510F7014001060000000813F614FD000000030569AC4300000008134110F8000000010793F0C90000000812825CFE000000040BF3E57A100928FB0000000200000008000000080000000013A54CF7000000000140010613F5D8FD0569AC43000000080000000A0000000313F614FD000000030569AC431340D4F80793F0C9128220FE000000080000000412825CFE000000040000000A00000001134110F8000000010793F0C9128220FE0BF3E57A100928FB000000020460010000000008000000061008ECFB04600100000000080000000A000000020000000412825CFE000000040BF3E57A0000000A0000000A108010FB03C0010013A510F7014001060000000813F614FD000000030569AC4300000008134110F8000000010793F0C9000000080000000A0000000013A54CF700000000014001060000000A13F614FD000000030569AC430000000A0000000A000000020000000112EA94F800000001067ECE8912EA58FE0B4D43FA10804CFB0000000203C0010013A510F7014001060000000813F614FD000000030793F0C300000008000000060000000000000006108010FB03C0010013A510F7014001060000000813F614FD000000030793F0C300000008000000090000000013A54CF70000000000000009000000020000000412EA94FE000000040B4D43FA10804CFB0000000203C0010013A510F70140010613F5D8FD0793F0C3128220F80793F0C9000000080000000A0000000112825CF8000000010793F0C9000000080000000A0000000313F614FD000000030793F0C3128220F80793F0C9128220FE0BF3E57A100928FB0000000200000008000000080000000412825CFE000000040BF3E57A100928FB0000000203200100000000080000000A1008ECFB0000000A000000020000000112825CF8000000010793F0C9128220FE0BF3E57A100928FB000000020320010000000008000000061008ECFB0320010013C108F7000000080000000013C144F70000000001E0010600000006000000050000000200000004000000050000000013A54CF7000000000140010613F5D8FD0793F0C3128220F80793F0C9000000060000000A0000000112825CF8000000010793F0C900000006000000050000000313F614FD000000030793F0C3128220F80793F0C9128220FE0BF3E57A100928FB00000002000000061008ECFB046001001383DCF701E001060000000813E994FD0000000307095FA30000000A000000050000000000000006000000020000000412825CFE00000004000000050000000112825CF80000000100000005108010FB03C0010013A510F7014001060000000A13F614FD000000030793F0C3128220F80793F0C9128220FE0AA6A27A0000000A0000000A000000040000000A0000000112825CF8000000010793F0C900000009000000050000000013A54CF700000000014001060000000A13F614FD000000030793F0C3128220F80793F0C9128220FE0AA6A27A0000000A00000009000000040000000A0000000112825CF800000001000000050000000200000003"
theorem small_5935266_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5935266_left_root small_5935266_left_fuel small_5935266_left_count small_5935266_left_encoded = true := by
  decide +kernel
theorem small_5935266_left_covered : CoveredBy scale carrier boxes small_5935266_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5935266_left_root small_5935266_left_fuel small_5935266_left_count small_5935266_left_encoded small_5935266_left_checked

theorem cover_5935266 : CoveredBy scale carrier boxes root_5935266 := by
  apply coveredBy_split_literal root_5935266 small_5935266_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.root_5935948 coord3 false (2097152)
  · decide +kernel
  · decide +kernel
  · exact small_5935266_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.cover_5935948
#print axioms cover_5935266

def root_5935260 : ZRayBox := fun j => (#[⟨⟨(2097152), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5935260_left_root : ZRayBox := fun j => (#[⟨⟨(2097152), (4194304)⟩, ⟨(-16777216), (-16645888)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5935260_left_fuel : Nat := 1
def small_5935260_left_count : Nat := 1
def small_5935260_left_encoded : String := "00000000"
theorem small_5935260_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5935260_left_root small_5935260_left_fuel small_5935260_left_count small_5935260_left_encoded = true := by
  decide +kernel
theorem small_5935260_left_covered : CoveredBy scale carrier boxes small_5935260_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5935260_left_root small_5935260_left_fuel small_5935260_left_count small_5935260_left_encoded small_5935260_left_checked

theorem cover_5935260 : CoveredBy scale carrier boxes root_5935260 := by
  apply coveredBy_split_literal root_5935260 small_5935260_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.root_5935266 coord0 true (-16645888)
  · decide +kernel
  · decide +kernel
  · exact small_5935260_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.cover_5935266
#print axioms cover_5935260

def root_5934344 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5934344_left_root : ZRayBox := fun j => (#[⟨⟨(0), (2097152)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5934344_left_fuel : Nat := 25
def small_5934344_left_count : Nat := 435
def small_5934344_left_encoded : String := "13D7B0F70280010613D7B0FD067ECE8312EA58F8067ECE890000000812EA94FE000000040B4D43FA10804CFB0000000200000008000000080000000112EA94F800000001067ECE8912EA58FE0B4D43FA10804CFB0000000200000008000000080000000412EA94FE000000040B4D43FA10804CFB00000002014001000000000813F614F700000000014001060000000813F614FD000000030793F0C3128220F80793F0C90000000812825CFE00000004000000080000000112825CF8000000010793F0C90000000812825CFE000000040BF3E57A100928FB0000000201E0010000000008000000051008ECFB0000000700000002108010FB014001000000000813F614F700000000014001060000000813F614FD000000030793F0C3128220F80793F0C9000000080000000A0000000112825CF8000000010793F0C90000000700000007000000020000000313D7ECFD00000003067ECE8312EA58F8067ECE8912EA58FE0B4D43FA10804CFB00000002014001000000000813F614F70000000003C001060000000813A54CFD000000030569AC4300000008134110F8000000010569AC490000000800000009108010FB014001000000000813F614F70000000003C001060000000813A54CFD000000030569AC4300000008134110F8000000010569AC4900000008134110FE000000040AA6A27A10EDACFB000000020000000800000008000000020000000412EA94FE000000040B4D43FA10804CFB000000020140010013F5D8F7000000090000000013F614F70000000003C0010613A510FD0569AC4300000008134110F8000000010793F0C900000008000000090000000300000009108010FB014001000000000613F614F70000000003C0010613A510FD0569AC4300000006134110F8000000010793F0C900000008000000060000000313A54CFD0000000300000006000000020000000112EA94F800000001067ECE8912EA58FE0B4D43FA10804CFB000000020140010013F5D8F703C001060000000813A54CFD000000030793F0C300000008000000070000000013F614F70000000003C0010613A510FD0793F0C30000000812825CF8000000010569AC4900000008134110FE000000040BF3E57A100928FB0000000200000008000000070000000313A54CFD000000030793F0C3128220F80569AC491340D4FE0000000800000004134110FE000000040BF3E57A100928FB0000000201E001000000000813E994F7000000000460010600000008000000091008ECFB01E001000000000713E994F700000000046001060000000800000007000000020000000112825CF8000000010569AC491340D4FE0000000700000004134110FE000000040BF3E57A0000000700000007108010FB0140010013F5D8F7000000070000000013F614F70000000003C0010613A510FD0793F0C300000008000000070000000313A54CFD000000030793F0C3128220F80569AC4900000007000000070000000100000007000000020000000412EA94FE000000040B4D43FA10804CFB000000020140010013F5D8F703C0010613A510FD0793F0C3128220F80793F0C90000000812825CFE00000004000000080000000112825CF8000000010793F0C900000007000000070000000313A54CFD000000030793F0C3128220F8000000090000000112825CF800000001000000070000000013F614F70000000003C0010613A510FD0793F0C3128220F80793F0C9128220FE0BF3E57A100928FB0000000200000008000000080000000412825CFE000000040BF3E57A100928FB0000000201E001000000000813E994F700000000000000051008ECFB01E001000000000613E994F700000000032001060000000A00000005000000020000000112825CF8000000010793F0C9128220FE0BF3E57A100928FB0000000201E001000000000713E994F700000000000000051008ECFB000000070000000200000004000000050000000313A54CFD000000030793F0C3128220F80793F0C9128220FE0BF3E57A100928FB00000002000000091008ECFB01E001000000000713E994F700000000046001061383DCFD07095FA3000000090000000500000003000000090000000200000004000000090000000112825CF80000000100000005108010FB0140010013F5D8F703C0010613A510FD0000000700000003000000070000000013F614F70000000003C0010613A510FD0793F0C3128220F80793F0C9128220FE0AA6A27A00000007000000070000000412825CFE00000004000000060000000112825CF8000000010793F0C900000007000000050000000313A54CFD000000030793F0C3128220F80793F0C9128220FE0AA6A27A000000070000000600000004000000060000000112825CF800000001000000050000000200000000"
theorem small_5934344_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5934344_left_root small_5934344_left_fuel small_5934344_left_count small_5934344_left_encoded = true := by
  decide +kernel
theorem small_5934344_left_covered : CoveredBy scale carrier boxes small_5934344_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5934344_left_root small_5934344_left_fuel small_5934344_left_count small_5934344_left_encoded small_5934344_left_checked

theorem cover_5934344 : CoveredBy scale carrier boxes root_5934344 := by
  apply coveredBy_split_literal root_5934344 small_5934344_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.root_5935260 coord0 false (2097152)
  · decide +kernel
  · decide +kernel
  · exact small_5934344_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.cover_5935260
#print axioms cover_5934344

def root_5934339 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5934339_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-13026304), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5934339_right_fuel : Nat := 1
def small_5934339_right_count : Nat := 1
def small_5934339_right_encoded : String := "00000002"
theorem small_5934339_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5934339_right_root small_5934339_right_fuel small_5934339_right_count small_5934339_right_encoded = true := by
  decide +kernel
theorem small_5934339_right_covered : CoveredBy scale carrier boxes small_5934339_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5934339_right_root small_5934339_right_fuel small_5934339_right_count small_5934339_right_encoded small_5934339_right_checked

theorem cover_5934339 : CoveredBy scale carrier boxes root_5934339 := by
  apply coveredBy_split_literal root_5934339 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.root_5934344 small_5934339_right_root coord2 true (-13026304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.cover_5934344
  · exact small_5934339_right_covered
#print axioms cover_5934339

def root_5932993 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5932993 : CoveredBy scale carrier boxes root_5932993 := by
  apply coveredBy_split_literal root_5932993 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2232.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.root_5934339 coord2 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2232.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.cover_5934339
#print axioms cover_5932993

def root_5932987 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5932987_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(-16777216), (-16379648)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5932987_left_fuel : Nat := 1
def small_5932987_left_count : Nat := 1
def small_5932987_left_encoded : String := "00000004"
theorem small_5932987_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5932987_left_root small_5932987_left_fuel small_5932987_left_count small_5932987_left_encoded = true := by
  decide +kernel
theorem small_5932987_left_covered : CoveredBy scale carrier boxes small_5932987_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5932987_left_root small_5932987_left_fuel small_5932987_left_count small_5932987_left_encoded small_5932987_left_checked

theorem cover_5932987 : CoveredBy scale carrier boxes root_5932987 := by
  apply coveredBy_split_literal root_5932987 small_5932987_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.root_5932993 coord4 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_5932987_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144.cover_5932993
#print axioms cover_5932987

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0144
