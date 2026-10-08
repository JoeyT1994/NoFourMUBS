import TaoBundleAssembly0436
import TaoBundleChunkBatch0596
import TaoBundleChunkBatch0597
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0437
def root_6322804 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6322804_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6322804_left_fuel : Nat := 22
def small_6322804_left_count : Nat := 341
def small_6322804_left_encoded : String := "1151E8F70A0000F8115225030A0001041151E905000000020A0000FC115225070A00010800000005115224FF0000000408A91303120700F8000000050000000112073CF80000000108A91307120700FC000000050000000312073CFC0000000308A912FF12073D08000000050000000412070108000000040000000A000000031151E907000000030A0001081151E8FF0000000500000004115224FF0000000408A91303120700F808A912FF0000000512070108000000040000000A0000000112073CF80000000108A912FF12073D0805000100135D44F70000000A00000000000000090000000412070108000000040000000A115225050A0000FC115225070A0001081151E8FF08A91303120700F808A9130500000009000000050000000112073CF80000000108A91305120701040000000208A91307120700FC0000000500000003000000050000000500000004115224FF0000000408A91303120700F808A91305120701040000000208A91307120700FC08A912FF12073D0805000100000000050000000900000004000000050000000312073CFC0000000308A912FF000000090000000512073D0408A91307120700FC000000050000000300000005000000020000000112073CF80000000108A91305120701040000000208A91307120700FC08A912FF12073D080500010000000005135D80F7000000000000000500000004000000050000000312073CFC0000000308A912FF12073D080500010000000005000000090000000412070108000000040000000A12073D0408A91307120700FC000000050000000312073CFC0000000308A912FF12073D080500010000000005000000090000000412070108000000040000000A00000002000000031151E907000000030A0001081151E8FF08A91303120700F800000005000000010000000900000004115224FF0000000408A91303120700F808A91305120701040000000208A912FF0000000912070108000000040000000612073D0408A912FF12073D08050001000000000500000007000000041207010800000004050001000000000A135D80F700000000050000FC0000000A00000007000000020000000112073CF80000000108A913050000000A12073D0408A912FF12073D0805000100135D44F70000000900000000000000090000000412070108000000040000000A0000000200000002000000011151E903000000010A0001041151E905000000020A0000FC115225070A0001081151E8FF0000000500000004115224FF0000000408A91307120700FC08A912FF0000000512070108000000040000000A0000000300000009000000031151E907000000030A0001081151E8FF000000090000000400000009115225050A0000FC115225070A0001081151E8FF08A91305120701040000000208A91307120700FC0000000500000003000000090000000900000004115224FF0000000408A91305120701040000000208A91307120700FC08A912FF12073D08050001000000000A135D80F700000000050000F80000000A135D45030000000104548A050000000A1386AD040000000A000000020000000412070108000000040000000A000000030000000A12073D0408A91307120700FC08A912FF12073D080500010000000005135D80F700000000050000F800000005135D4503000000010CFD9C050000000900000006000000041207010800000004050001000000000A135D80F700000000050000F80000000A135D4503000000010000000A0000000312073CFC0000000308A912FF12073D08000000090000000412070108000000040000000A00000002000000031151E907000000030A00010800000009115224FF00000004000000090000000200000000"
theorem small_6322804_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6322804_left_root small_6322804_left_fuel small_6322804_left_count small_6322804_left_encoded = true := by
  decide +kernel
theorem small_6322804_left_covered : CoveredBy scale carrier boxes small_6322804_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6322804_left_root small_6322804_left_fuel small_6322804_left_count small_6322804_left_encoded small_6322804_left_checked

theorem cover_6322804 : CoveredBy scale carrier boxes root_6322804 := by
  apply coveredBy_split_literal root_6322804 small_6322804_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0436.root_6323542 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_6322804_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0436.cover_6323542
#print axioms cover_6322804

def root_6327541 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6327541_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6327541_left_fuel : Nat := 21
def small_6327541_left_count : Nat := 357
def small_6327541_left_encoded : String := "1151E8F70A0000F8115225030A0001041151E905000000020A0000FC115225070A0001081151E9090000000408A91303120700F80000000800000001000000081152250908A91303120700F808A91307120700FC000000050000000312073CFC0000000308A91309120701080000000405000100000000050000000A12073D0805000100135D44F705000104000000050000000A0000000000000008000000040000000112073CF80000000108A91307120700FC08A91309120701080000000405000100000000050000000A12073D0805000100135D44F705000104000000050000000A00000000135D80F70000000000000008000000040000000312073CFC0000000308A9130912070108000000040000000A12073D08000000080000000400000004000000031151E907000000030A0001081151E90900000004000000081152250908A91303120700F808A9130912070108000000040000000A00000008000000010000000800000004115225050A0000FC115225070A0001081151E9090000000408A91303120700F808A913050000000A12073D0408A913070000000512073CFC0000000300000008000000020000000112073CF80000000108A91305120701040000000200000007000000081152250908A91303120700F808A91305120701040000000208A913070000000A0000000A12073D0408A91307120700FC000000050000000312073CFC0000000308A9130912070108000000040000000A12073D08050001000000000A0000000A00000004000000020000000112073CF80000000108A91305120701040000000208A91307120700FC0000000A000000030000000A12073D0408A91307120700FC08A9130912070108000000040000000A12073D08050001000000000A00000008000000040000000312073CFC0000000308A9130912070108000000040000000A12073D0805000100135D44F70CFD9C030000000A000000080000000000000008000000040000000200000004000000031151E907000000030A0001081151E9090000000408A91303120700F808A9130512070104000000020000000A12073D0405000100135D44F70000000800000000135D80F700000000050000FC0000000800000008000000020000000112073CF80000000108A913051207010400000002050001000000000A0000000A12073D0400000008000000021152250908A91303120700F808A9130512070104000000020000000A12073D0408A9130912070108000000040000000A12073D080000000800000004000000020000000112073CF80000000108A913050000000A12073D0408A9130912070108000000040000000A00000008000000020000000400000002000000011151E903000000010A0001041151E905000000020A0000FC115225070A0001081151E9090000000408A9130700000007000000081152250908A91307120700FC08A9130912070108000000040000000A12073D080500010000000007135D80F700000000050000F8135D8103050001040000000A000000070000000100000007000000040000000312073CFC0000000308A9130912070108000000040000000A12073D0805000100135D44F70000000A00000000135D80F700000000050000F800000008135D450300000001000000080000000400000004000000031151E907000000030A00010800000008115225090000000800000004115225050A0000FC115225070A0001081151E90900000004000000071152250908A91305120701040000000208A91307120700FC00000007000000030000000A12073D0408A91307120700FC08A9130912070108000000040000000A000000070000000312073CFC0000000308A9130912070108000000040000000A12073D0800000008000000040000000200000004000000031151E907000000030A0001081151E9090000000400000008000000080000000200000000"
theorem small_6327541_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6327541_left_root small_6327541_left_fuel small_6327541_left_count small_6327541_left_encoded = true := by
  decide +kernel
theorem small_6327541_left_covered : CoveredBy scale carrier boxes small_6327541_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6327541_left_root small_6327541_left_fuel small_6327541_left_count small_6327541_left_encoded small_6327541_left_checked

theorem cover_6327541 : CoveredBy scale carrier boxes root_6327541 := by
  apply coveredBy_split_literal root_6327541 small_6327541_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2381.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_6327541_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2381.covered
#print axioms cover_6327541

def root_6322803 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6322803 : CoveredBy scale carrier boxes root_6322803 := by
  apply coveredBy_split_literal root_6322803 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0437.root_6322804 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0437.root_6327541 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0437.cover_6322804
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0437.cover_6327541
#print axioms cover_6322803

def root_6311979 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6311979 : CoveredBy scale carrier boxes root_6311979 := by
  apply coveredBy_split_literal root_6311979 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0436.root_6311980 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0437.root_6322803 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0436.cover_6311980
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0437.cover_6322803
#print axioms cover_6311979

def root_6302583 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6302583 : CoveredBy scale carrier boxes root_6302583 := by
  apply coveredBy_split_literal root_6302583 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0436.root_6302584 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0437.root_6311979 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0436.cover_6302584
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0437.cover_6311979
#print axioms cover_6302583

def root_6334000 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6334000 : CoveredBy scale carrier boxes root_6334000 := by
  apply coveredBy_split_literal root_6334000 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2383.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2384.root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2383.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2384.covered
#print axioms cover_6334000

def root_6333995 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6333995_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6333995_right_fuel : Nat := 1
def small_6333995_right_count : Nat := 1
def small_6333995_right_encoded : String := "00000000"
theorem small_6333995_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6333995_right_root small_6333995_right_fuel small_6333995_right_count small_6333995_right_encoded = true := by
  decide +kernel
theorem small_6333995_right_covered : CoveredBy scale carrier boxes small_6333995_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6333995_right_root small_6333995_right_fuel small_6333995_right_count small_6333995_right_encoded small_6333995_right_checked

theorem cover_6333995 : CoveredBy scale carrier boxes root_6333995 := by
  apply coveredBy_split_literal root_6333995 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0437.root_6334000 small_6333995_right_root coord0 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0437.cover_6334000
  · exact small_6333995_right_covered
#print axioms cover_6333995

def root_6339818 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(16678144), (16777216)⟩, ⟨(0), (1816224)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6339818_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (11664704)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(16678144), (16777216)⟩, ⟨(0), (1816224)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6339818_left_fuel : Nat := 22
def small_6339818_left_count : Nat := 109
def small_6339818_left_encoded : String := "0E5FD8F70B4D43F80000000510801103000000010DE7CA06000000050E6014FD000000030B4D43FE0000000510801109000000040115234513F85904000000020DAED87D0E9661060D412880000000050EFA4CF7000000000AA6A2780000000510ED7103000000010AA6A27E00000005000000BC000000030E962506000000030D4128800EFA10F70AA6A2780000000510ED7103000000010AA6A27E00000005000000BC000000000EFA4CF7000000000AA6A27810EDAD030AA6A27E0000000510ED710900000004008A922513FDF904000000020D563A3D000000050EE751060000000300000009000000090000000110ED7103000000010AA6A27E10EDAD09008A9225000000070000000A00000004000000BC13F895040DAED87D0E9661060D412880000000050EFA4CF7000000000AA6A2780000000510ED7103000000010AA6A27E0000000510ED71090000000400000009000000030E962506000000030D4128800EFA10F700000009000000000EFA4CF7000000000AA6A27810EDAD03000000090000000110ED7103000000010AA6A27E10EDAD090000000A0000000410ED710900000004000000090000000200000000"
theorem small_6339818_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6339818_left_root small_6339818_left_fuel small_6339818_left_count small_6339818_left_encoded = true := by
  decide +kernel
theorem small_6339818_left_covered : CoveredBy scale carrier boxes small_6339818_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6339818_left_root small_6339818_left_fuel small_6339818_left_count small_6339818_left_encoded small_6339818_left_checked

theorem cover_6339818 : CoveredBy scale carrier boxes root_6339818 := by
  apply coveredBy_split_literal root_6339818 small_6339818_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2385.root coord0 false (11664704)
  · decide +kernel
  · decide +kernel
  · exact small_6339818_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2385.covered
#print axioms cover_6339818

def root_6339812 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (1816224)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6339812_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(16378880), (16678144)⟩, ⟨(0), (1816224)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6339812_left_fuel : Nat := 1
def small_6339812_left_count : Nat := 1
def small_6339812_left_encoded : String := "00000002"
theorem small_6339812_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6339812_left_root small_6339812_left_fuel small_6339812_left_count small_6339812_left_encoded = true := by
  decide +kernel
theorem small_6339812_left_covered : CoveredBy scale carrier boxes small_6339812_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6339812_left_root small_6339812_left_fuel small_6339812_left_count small_6339812_left_encoded small_6339812_left_checked

theorem cover_6339812 : CoveredBy scale carrier boxes root_6339812 := by
  apply coveredBy_split_literal root_6339812 small_6339812_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0437.root_6339818 coord2 false (16678144)
  · decide +kernel
  · decide +kernel
  · exact small_6339812_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0437.cover_6339818
#print axioms cover_6339812

def root_6339811 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6339811_right_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(1816224), (3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6339811_right_fuel : Nat := 20
def small_6339811_right_count : Nat := 173
def small_6339811_right_encoded : String := "13E201040DE7CA000E5FD8F70B4D43F810804D03000000050000000110801103000000010DE7CA060E5FD8FD00000005000000030E6014FD000000030B4D43FE10804D0900000005000000041080110900000004033F67C513BBF504000000020DAED87D000000090E962506000000030000000900000009000000000E6014F7000000000B4D43F810804D030DE7CA060E5FD8FD00000005000000030E6014FD000000030B4D43FE10804D09033F67C50000000513BC31040000000500000002000000041080110900000004033F67C513BBF504000000020DAED8770E96610000000009000000000E9625000000000000000007000000090000000110801103000000010DE7CA060E5FD8FD0B4D43FE000000061080110900000004033F67C513BBF504000000020DAED877000000060E962500000000000000000600000006000000030E6014FD000000030B4D43FE10804D09033F67C513BBF504000000020DAED8770E9661000DAED87D000000060E962506000000030000000A000000000E962500000000000DAED87D000000060000000600000006000000041080110900000004033F67C513BBF504000000020DAED8770E9661000DAED87D0E9661060AA6A27810EDAD03000000090000000110ED7103000000010AA6A27E0000000610ED71090000000400000006000000030E962506000000030AA6A27810EDAD0300000009000000010000000A000000000E962500000000000DAED87D0E9661060AA6A27810EDAD03000000070000000110ED71030000000100000006000000030E962506000000030AA6A27810EDAD030AA6A27E10EDAD09000000070000000400000007000000010000000A13BC31040DAED8770E9661000DAED87D000000090E9625060000000300000009000000000E962500000000000DAED87D0E9661060000000600000003000000070000000200000002"
theorem small_6339811_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6339811_right_root small_6339811_right_fuel small_6339811_right_count small_6339811_right_encoded = true := by
  decide +kernel
theorem small_6339811_right_covered : CoveredBy scale carrier boxes small_6339811_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6339811_right_root small_6339811_right_fuel small_6339811_right_count small_6339811_right_encoded small_6339811_right_checked

theorem cover_6339811 : CoveredBy scale carrier boxes root_6339811 := by
  apply coveredBy_split_literal root_6339811 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0437.root_6339812 small_6339811_right_root coord2 true (1816224)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0437.cover_6339812
  · exact small_6339811_right_covered
#print axioms cover_6339811

def root_6339805 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6339805_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(10897344), (13026304)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6339805_left_fuel : Nat := 1
def small_6339805_left_count : Nat := 1
def small_6339805_left_encoded : String := "00000004"
theorem small_6339805_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6339805_left_root small_6339805_left_fuel small_6339805_left_count small_6339805_left_encoded = true := by
  decide +kernel
theorem small_6339805_left_covered : CoveredBy scale carrier boxes small_6339805_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6339805_left_root small_6339805_left_fuel small_6339805_left_count small_6339805_left_encoded small_6339805_left_checked

theorem cover_6339805 : CoveredBy scale carrier boxes root_6339805 := by
  apply coveredBy_split_literal root_6339805 small_6339805_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0437.root_6339811 coord4 true (13026304)
  · decide +kernel
  · decide +kernel
  · exact small_6339805_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0437.cover_6339811
#print axioms cover_6339805

def root_6339773 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6339773_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-12756736), (-10572672)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6339773_left_fuel : Nat := 8
def small_6339773_left_count : Nat := 15
def small_6339773_left_encoded : String := "0F878D09022A45850000000513E201040DE7CA00000000050E6014F7000000000B4D43F8000000051080110300000001000000060000000200000004"
theorem small_6339773_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6339773_left_root small_6339773_left_fuel small_6339773_left_count small_6339773_left_encoded = true := by
  decide +kernel
theorem small_6339773_left_covered : CoveredBy scale carrier boxes small_6339773_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6339773_left_root small_6339773_left_fuel small_6339773_left_count small_6339773_left_encoded small_6339773_left_checked

theorem cover_6339773 : CoveredBy scale carrier boxes root_6339773 := by
  apply coveredBy_split_literal root_6339773 small_6339773_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0437.root_6339805 coord4 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact small_6339773_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0437.cover_6339805
#print axioms cover_6339773

def root_6339767 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6339767_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-13027072)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6339767_left_fuel : Nat := 1
def small_6339767_left_count : Nat := 1
def small_6339767_left_encoded : String := "00000003"
theorem small_6339767_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6339767_left_root small_6339767_left_fuel small_6339767_left_count small_6339767_left_encoded = true := by
  decide +kernel
theorem small_6339767_left_covered : CoveredBy scale carrier boxes small_6339767_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6339767_left_root small_6339767_left_fuel small_6339767_left_count small_6339767_left_encoded small_6339767_left_checked

theorem cover_6339767 : CoveredBy scale carrier boxes root_6339767 := by
  apply coveredBy_split_literal root_6339767 small_6339767_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0437.root_6339773 coord3 true (-13027072)
  · decide +kernel
  · decide +kernel
  · exact small_6339767_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0437.cover_6339773
#print axioms cover_6339767

def root_6339759 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6339759_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (10572672)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6339759_left_fuel : Nat := 2
def small_6339759_left_count : Nat := 3
def small_6339759_left_encoded : String := "0F8750FD0000000500000003"
theorem small_6339759_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6339759_left_root small_6339759_left_fuel small_6339759_left_count small_6339759_left_encoded = true := by
  decide +kernel
theorem small_6339759_left_covered : CoveredBy scale carrier boxes small_6339759_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6339759_left_root small_6339759_left_fuel small_6339759_left_count small_6339759_left_encoded small_6339759_left_checked

theorem cover_6339759 : CoveredBy scale carrier boxes root_6339759 := by
  apply coveredBy_split_literal root_6339759 small_6339759_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0437.root_6339767 coord3 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_6339759_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0437.cover_6339767
#print axioms cover_6339759

def root_6339753 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6339753_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(10897344), (13026304)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6339753_left_fuel : Nat := 1
def small_6339753_left_count : Nat := 1
def small_6339753_left_encoded : String := "00000001"
theorem small_6339753_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6339753_left_root small_6339753_left_fuel small_6339753_left_count small_6339753_left_encoded = true := by
  decide +kernel
theorem small_6339753_left_covered : CoveredBy scale carrier boxes small_6339753_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6339753_left_root small_6339753_left_fuel small_6339753_left_count small_6339753_left_encoded small_6339753_left_checked

theorem cover_6339753 : CoveredBy scale carrier boxes root_6339753 := by
  apply coveredBy_split_literal root_6339753 small_6339753_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0437.root_6339759 coord1 true (13026304)
  · decide +kernel
  · decide +kernel
  · exact small_6339753_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0437.cover_6339759
#print axioms cover_6339753

def root_6339689 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6339689_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-12756736), (-10572672)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6339689_left_fuel : Nat := 16
def small_6339689_left_count : Nat := 31
def small_6339689_left_encoded : String := "0F878D030C9A8706000000050F878CFD000000030C9A86FE000000050F87510900000004022A45850000000513E201040DE7CA00000000050E6014F7000000000DE7C9F8000000050E5FD903000000010DE7CA06000000050E6014FD000000030B4D43FE000000051080110900000004000000070000000200000001"
theorem small_6339689_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6339689_left_root small_6339689_left_fuel small_6339689_left_count small_6339689_left_encoded = true := by
  decide +kernel
theorem small_6339689_left_covered : CoveredBy scale carrier boxes small_6339689_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6339689_left_root small_6339689_left_fuel small_6339689_left_count small_6339689_left_encoded small_6339689_left_checked

theorem cover_6339689 : CoveredBy scale carrier boxes root_6339689 := by
  apply coveredBy_split_literal root_6339689 small_6339689_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0437.root_6339753 coord1 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact small_6339689_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0437.cover_6339753
#print axioms cover_6339689

def root_6339683 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6339683_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-13027072)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6339683_left_fuel : Nat := 1
def small_6339683_left_count : Nat := 1
def small_6339683_left_encoded : String := "00000000"
theorem small_6339683_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6339683_left_root small_6339683_left_fuel small_6339683_left_count small_6339683_left_encoded = true := by
  decide +kernel
theorem small_6339683_left_covered : CoveredBy scale carrier boxes small_6339683_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6339683_left_root small_6339683_left_fuel small_6339683_left_count small_6339683_left_encoded small_6339683_left_checked

theorem cover_6339683 : CoveredBy scale carrier boxes root_6339683 := by
  apply coveredBy_split_literal root_6339683 small_6339683_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0437.root_6339689 coord0 true (-13027072)
  · decide +kernel
  · decide +kernel
  · exact small_6339683_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0437.cover_6339689
#print axioms cover_6339683

def root_6339675 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6339675_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (10572672)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6339675_left_fuel : Nat := 2
def small_6339675_left_count : Nat := 3
def small_6339675_left_encoded : String := "0F8750F70000000500000000"
theorem small_6339675_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6339675_left_root small_6339675_left_fuel small_6339675_left_count small_6339675_left_encoded = true := by
  decide +kernel
theorem small_6339675_left_covered : CoveredBy scale carrier boxes small_6339675_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6339675_left_root small_6339675_left_fuel small_6339675_left_count small_6339675_left_encoded small_6339675_left_checked

theorem cover_6339675 : CoveredBy scale carrier boxes root_6339675 := by
  apply coveredBy_split_literal root_6339675 small_6339675_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0437.root_6339683 coord0 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_6339675_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0437.cover_6339683
#print axioms cover_6339675

def root_6339669 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6339669_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6339669_left_fuel : Nat := 1
def small_6339669_left_count : Nat := 1
def small_6339669_left_encoded : String := "00000004"
theorem small_6339669_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6339669_left_root small_6339669_left_fuel small_6339669_left_count small_6339669_left_encoded = true := by
  decide +kernel
theorem small_6339669_left_covered : CoveredBy scale carrier boxes small_6339669_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6339669_left_root small_6339669_left_fuel small_6339669_left_count small_6339669_left_encoded small_6339669_left_checked

theorem cover_6339669 : CoveredBy scale carrier boxes root_6339669 := by
  apply coveredBy_split_literal root_6339669 small_6339669_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0437.root_6339675 coord4 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_6339669_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0437.cover_6339675
#print axioms cover_6339669

def root_6339661 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6339661_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6339661_left_fuel : Nat := 2
def small_6339661_left_count : Nat := 3
def small_6339661_left_encoded : String := "0F34D0FE0000000500000004"
theorem small_6339661_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6339661_left_root small_6339661_left_fuel small_6339661_left_count small_6339661_left_encoded = true := by
  decide +kernel
theorem small_6339661_left_covered : CoveredBy scale carrier boxes small_6339661_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6339661_left_root small_6339661_left_fuel small_6339661_left_count small_6339661_left_encoded small_6339661_left_checked

theorem cover_6339661 : CoveredBy scale carrier boxes root_6339661 := by
  apply coveredBy_split_literal root_6339661 small_6339661_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0437.root_6339669 coord4 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_6339661_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0437.cover_6339669
#print axioms cover_6339661

def root_6339656 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6339656_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6339656_right_fuel : Nat := 1
def small_6339656_right_count : Nat := 1
def small_6339656_right_encoded : String := "00000003"
theorem small_6339656_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6339656_right_root small_6339656_right_fuel small_6339656_right_count small_6339656_right_encoded = true := by
  decide +kernel
theorem small_6339656_right_covered : CoveredBy scale carrier boxes small_6339656_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6339656_right_root small_6339656_right_fuel small_6339656_right_count small_6339656_right_encoded small_6339656_right_checked

theorem cover_6339656 : CoveredBy scale carrier boxes root_6339656 := by
  apply coveredBy_split_literal root_6339656 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0437.root_6339661 small_6339656_right_root coord3 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0437.cover_6339661
  · exact small_6339656_right_covered
#print axioms cover_6339656

def root_6339655 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6339655 : CoveredBy scale carrier boxes root_6339655 := by
  apply coveredBy_split_literal root_6339655 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0437.root_6339656 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2386.root coord3 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0437.cover_6339656
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2386.covered
#print axioms cover_6339655

def root_6339649 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6339649_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6339649_left_fuel : Nat := 1
def small_6339649_left_count : Nat := 1
def small_6339649_left_encoded : String := "00000002"
theorem small_6339649_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6339649_left_root small_6339649_left_fuel small_6339649_left_count small_6339649_left_encoded = true := by
  decide +kernel
theorem small_6339649_left_covered : CoveredBy scale carrier boxes small_6339649_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6339649_left_root small_6339649_left_fuel small_6339649_left_count small_6339649_left_encoded small_6339649_left_checked

theorem cover_6339649 : CoveredBy scale carrier boxes root_6339649 := by
  apply coveredBy_split_literal root_6339649 small_6339649_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0437.root_6339655 coord2 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_6339649_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0437.cover_6339655
#print axioms cover_6339649

def root_6339648 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6339648_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6339648_right_fuel : Nat := 27
def small_6339648_right_count : Nat := 249
def small_6339648_right_encoded : String := "1386AD040CFD9BFD0F350D060CFD9C090F34D0FE00000005000000040F350CFE000000040C9A87000F8750F70C9A86F8000000050F875103000000010C9A8706000000050F878CFD000000030C9A86FE000000050F87510900000004067ECE850000000500000008000000000F878CF7000000000C9A86F80F878D030C9A8706000000050F878CFD000000030C9A86FE000000050F87510900000004067ECE8512EA5904000000020DE7CA00000000050E6014F7000000000DE7C9F8000000050E5FD903000000010000000900000009000000010F875103000000010C9A87060F8750FD0C9A86FE000000050F87510900000004067ECE850000000500000006000000030F878CFD000000030C9A86FE0F878D09067ECE8512EA5904000000020DE7CA00000000050000000600000006000000040F87510900000004067ECE8512EA5904000000020DE7CA000E5FD8F70B4D43F810804D03000000090000000110801103000000010DE7CA060E5FD8FD00000005000000030E6014FD000000030000000A000000000E6014F7000000000B4D43F810804D030DE7CA060E5FD8FD00000006000000030E6014FD000000030B4D43FE00000009000000090000000110801103000000010DE7CA06000000060E6014FD000000030B4D43FE0000000610801109000000040569AC451340D504000000020DAED87700000006000000070000000612EA95040DE7CA000E5FD8F700000009000000000E6014F7000000000B4D43F8000000060000000600000002000000030F34D106000000030CFD9C090F34D0FE0C9A8700000000050F878CF7000000000C9A86F8000000050000000A000000040F350CFE000000040C9A87000F8750F70C9A86F80F878D030C9A86FE0000000500000009000000010F875103000000010C9A86FE0F878D090000000A000000040F8751090000000400000009000000000F878CF7000000000C9A86F80F878D030C9A86FE0F878D09067ECE8512EA5904000000020AD3577D10D13D06000000050000000310D10106000000030DE7CA00000000050E6014F7000000000000000A12EA95040AD3577D0000000910D10106000000030000000900000002000000040F87510900000004067ECE8512EA5904000000020AD3577D0000000910D10106000000030000000900000009000000010F875103000000010C9A86FE0F878D090000000A000000040F87510900000004067ECE8512EA5904000000020AD3577D10D13D060DE7CA000E5FD8F70B4D43F8000000090000000A000000000E6014F7000000000B4D43F810804D030B4D43FE0000000900000009000000010000000A0000000310D10106000000030000000A12EA95040000000A0000000200000002"
theorem small_6339648_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6339648_right_root small_6339648_right_fuel small_6339648_right_count small_6339648_right_encoded = true := by
  decide +kernel
theorem small_6339648_right_covered : CoveredBy scale carrier boxes small_6339648_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6339648_right_root small_6339648_right_fuel small_6339648_right_count small_6339648_right_encoded small_6339648_right_checked

theorem cover_6339648 : CoveredBy scale carrier boxes root_6339648 := by
  apply coveredBy_split_literal root_6339648 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0437.root_6339649 small_6339648_right_root coord2 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0437.cover_6339649
  · exact small_6339648_right_covered
#print axioms cover_6339648

def root_6339642 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6339642_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6339642_left_fuel : Nat := 1
def small_6339642_left_count : Nat := 1
def small_6339642_left_encoded : String := "00000001"
theorem small_6339642_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6339642_left_root small_6339642_left_fuel small_6339642_left_count small_6339642_left_encoded = true := by
  decide +kernel
theorem small_6339642_left_covered : CoveredBy scale carrier boxes small_6339642_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6339642_left_root small_6339642_left_fuel small_6339642_left_count small_6339642_left_encoded small_6339642_left_checked

theorem cover_6339642 : CoveredBy scale carrier boxes root_6339642 := by
  apply coveredBy_split_literal root_6339642 small_6339642_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0437.root_6339648 coord1 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_6339642_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0437.cover_6339648
#print axioms cover_6339642

def root_6339514 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6339514_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6339514_left_fuel : Nat := 18
def small_6339514_left_count : Nat := 59
def small_6339514_left_encoded : String := "0F34D0F804548A0513867104000000020CFD9BFD0F350D0600000005000000030F34D106000000030CFD9C090F34D0FE00000005000000040F350CFE000000040C9A8700000000050F878CF7000000000C9A86FE000000050F875109000000040AD357830000000910D13CF800000001022A458513E1C504000000020AD3577D0000000510D101060000000300000009000000091386AD040CFD9BFD0F350D0600000005000000030F34D106000000030CFD9C090F34D0FE00000005000000040F350CFE000000040C9A8700000000050F878CF7000000000C9A86FE00000005000000090000000200000001"
theorem small_6339514_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6339514_left_root small_6339514_left_fuel small_6339514_left_count small_6339514_left_encoded = true := by
  decide +kernel
theorem small_6339514_left_covered : CoveredBy scale carrier boxes small_6339514_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6339514_left_root small_6339514_left_fuel small_6339514_left_count small_6339514_left_encoded small_6339514_left_checked

theorem cover_6339514 : CoveredBy scale carrier boxes root_6339514 := by
  apply coveredBy_split_literal root_6339514 small_6339514_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0437.root_6339642 coord1 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_6339514_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0437.cover_6339642
#print axioms cover_6339514

def root_6339509 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6339509_right_root : ZRayBox := fun j => (#[⟨⟨(12756736), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6339509_right_fuel : Nat := 1
def small_6339509_right_count : Nat := 1
def small_6339509_right_encoded : String := "00000000"
theorem small_6339509_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6339509_right_root small_6339509_right_fuel small_6339509_right_count small_6339509_right_encoded = true := by
  decide +kernel
theorem small_6339509_right_covered : CoveredBy scale carrier boxes small_6339509_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6339509_right_root small_6339509_right_fuel small_6339509_right_count small_6339509_right_encoded small_6339509_right_checked

theorem cover_6339509 : CoveredBy scale carrier boxes root_6339509 := by
  apply coveredBy_split_literal root_6339509 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0437.root_6339514 small_6339509_right_root coord0 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0437.cover_6339514
  · exact small_6339509_right_covered
#print axioms cover_6339509

def root_6347357 : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6347357 : CoveredBy scale carrier boxes root_6347357 := by
  apply coveredBy_split_literal root_6347357 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2387.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2388.root coord3 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2387.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2388.covered
#print axioms cover_6347357

def root_6347351 : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6347351_left_root : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6347351_left_fuel : Nat := 1
def small_6347351_left_count : Nat := 1
def small_6347351_left_encoded : String := "00000002"
theorem small_6347351_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6347351_left_root small_6347351_left_fuel small_6347351_left_count small_6347351_left_encoded = true := by
  decide +kernel
theorem small_6347351_left_covered : CoveredBy scale carrier boxes small_6347351_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6347351_left_root small_6347351_left_fuel small_6347351_left_count small_6347351_left_encoded small_6347351_left_checked

theorem cover_6347351 : CoveredBy scale carrier boxes root_6347351 := by
  apply coveredBy_split_literal root_6347351 small_6347351_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0437.root_6347357 coord2 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_6347351_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0437.cover_6347357
#print axioms cover_6347351

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0437
