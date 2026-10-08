import TaoBundleAssembly0449
import TaoBundleChunkBatch0613
import TaoBundleChunkBatch0614
import TaoBundleChunkBatch0615
import TaoBundleChunkBatch0616
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0450
def root_6515281 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6515281_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6515281_left_fuel : Nat := 24
def small_6515281_left_count : Nat := 333
def small_6515281_left_encoded : String := "1151E8FF08A912F712073D0008A912F912073D0208A912FB12073CFA0000000208A91307120700FC05000108135D44FF0CFD9BF70F350D000CFD9BF90F350D020CFD9BFB000000050F34D0FA0000000900000002000000010F34D1020000000100000009000000000F34D100000000000CFD9BF9000000090F34D102000000010000000900000004135D80FF000000040CFD9BF70F350D000CFD9BF90F350D0200000006000000010F34D102000000010CFD9BFB000000060F34D0FA0000000900000002000000000F34D100000000000CFD9BF90F350D020CFD9BFB000000060F34D0FA0000000900000002000000010F34D102000000010CFD9BFB000000060F34D0FA00000009000000020000000312073CFC000000030500010800000009135D80FF000000040CFD9BF70000000900000006120700FA08A91307120700FC05000108135D44FF0CFD9BF7000000090F34D100000000000000000900000004135D80FF000000040CFD9BF70F350D000CFD9BF90F350D02045489FB1386ACFA0000000204548A07138670FC0C9A870000000006000000090000000300000006138670FA04548A07138670FC0C9A87000F8750F70C9A87020F8750F90000000900000001000000090000000000000009000000030000000900000002000000010F34D10200000001045489FB00000009138670FA0000000900000002000000000F34D100000000000CFD9BF90F350D02045489FB00000009138670FA0000000900000002000000010F34D102000000010000000900000003000000090000000200000001120701020000000108A912FB12073CFA0000000208A91307120700FC05000108135D44FF0CFD9BF7000000090F34D100000000000000000800000004135D80FF000000040CFD9BF70F350D00045489F91386AD020CFD9BFB0F350CFA00000002000000090F34D0FA00000009000000020000000113867102000000010CFD9BFB000000080F34D0FA0000000800000002000000000F34D10000000000000000080000000300000009120700FA08A91307120700FC05000108135D44FF0000000900000004135D80FF000000040CFD9BF70F350D00045489F91386AD02045489FB00000009138670FA0000000900000002000000011386710200000001045489FB00000009138670FA0000000900000002000000000F34D10000000000045489F9000000090000000900000003000000090000000200000000120701000000000008A912F912073D0208A912FB12073CFA0000000208A91307120700FC05000108135D44FF045489F70000000913867100000000000000000900000004135D80FF00000004045489F71386AD000CFD9BF90F350D020CFD9BFB0F350CFA00000002000000060F34D0FA0000000900000002000000010F34D10200000001000000090000000013867100000000000CFD9BF90F350D020CFD9BFB000000090000000A000000010F34D10200000001000000090000000300000009120700FA08A91307120700FC05000108135D44FF0000000900000004135D80FF00000004045489F71386AD000CFD9BF90F350D02045489FB000000090000000A000000010F34D10200000001000000090000000013867100000000000CFD9BF9000000070F34D102000000010000000900000003000000090000000200000001120701020000000108A912FB12073CFA0000000208A91307120700FC0500010800000008135D80FF00000004000000080000000300000009120700FA08A91307120700FC0500010800000009135D80FF00000004045489F70000000913867100000000000000000800000003000000090000000200000004"
theorem small_6515281_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6515281_left_root small_6515281_left_fuel small_6515281_left_count small_6515281_left_encoded = true := by
  decide +kernel
theorem small_6515281_left_covered : CoveredBy scale carrier boxes small_6515281_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6515281_left_root small_6515281_left_fuel small_6515281_left_count small_6515281_left_encoded small_6515281_left_checked

theorem cover_6515281 : CoveredBy scale carrier boxes root_6515281 := by
  apply coveredBy_split_literal root_6515281 small_6515281_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2453.root coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_6515281_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2453.covered
#print axioms cover_6515281

def root_6515276 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6515276_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6515276_right_fuel : Nat := 1
def small_6515276_right_count : Nat := 1
def small_6515276_right_encoded : String := "00000003"
theorem small_6515276_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6515276_right_root small_6515276_right_fuel small_6515276_right_count small_6515276_right_encoded = true := by
  decide +kernel
theorem small_6515276_right_covered : CoveredBy scale carrier boxes small_6515276_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6515276_right_root small_6515276_right_fuel small_6515276_right_count small_6515276_right_encoded small_6515276_right_checked

theorem cover_6515276 : CoveredBy scale carrier boxes root_6515276 := by
  apply coveredBy_split_literal root_6515276 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0450.root_6515281 small_6515276_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0450.cover_6515281
  · exact small_6515276_right_covered
#print axioms cover_6515276

def root_6515275 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6515275_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6515275_right_fuel : Nat := 13
def small_6515275_right_count : Nat := 59
def small_6515275_right_encoded : String := "1151E907000000030A0001081151E8FF08A912F712073D0008A912F9000000091207010200000001000000090000000012070100000000000000000900000004115224FF0000000408A912F712073D0008A912F912073D0208A912FB000000060000000600000001120701020000000108A912FB00000006120700FA000000060000000200000000120701000000000008A912F912073D0208A912FB12073CFA0000000208A912FF12073D08050000FC00000006000000060000000400000006120700FA08A912FF12073D080000000900000004000000060000000200000001120701020000000100000008"
theorem small_6515275_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6515275_right_root small_6515275_right_fuel small_6515275_right_count small_6515275_right_encoded = true := by
  decide +kernel
theorem small_6515275_right_covered : CoveredBy scale carrier boxes small_6515275_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6515275_right_root small_6515275_right_fuel small_6515275_right_count small_6515275_right_encoded small_6515275_right_checked

theorem cover_6515275 : CoveredBy scale carrier boxes root_6515275 := by
  apply coveredBy_split_literal root_6515275 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0450.root_6515276 small_6515275_right_root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0450.cover_6515276
  · exact small_6515275_right_covered
#print axioms cover_6515275

def root_6515269 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6515269_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6515269_left_fuel : Nat := 1
def small_6515269_left_count : Nat := 1
def small_6515269_left_encoded : String := "00000002"
theorem small_6515269_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6515269_left_root small_6515269_left_fuel small_6515269_left_count small_6515269_left_encoded = true := by
  decide +kernel
theorem small_6515269_left_covered : CoveredBy scale carrier boxes small_6515269_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6515269_left_root small_6515269_left_fuel small_6515269_left_count small_6515269_left_encoded small_6515269_left_checked

theorem cover_6515269 : CoveredBy scale carrier boxes root_6515269 := by
  apply coveredBy_split_literal root_6515269 small_6515269_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0450.root_6515275 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6515269_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0450.cover_6515275
#print axioms cover_6515269

def root_6515268 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6515268_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6515268_right_fuel : Nat := 19
def small_6515268_right_count : Nat := 187
def small_6515268_right_encoded : String := "1151E8FB0A0000FC115225070A0001081151E8FF08A912F712073D0008A912F912073D0208A91307120700FC050000FA135D80FB0000000205000108135D44FF0CFD9BF700000005000000060000000400000006135D44FB05000108135D44FF000000050000000400000005000000020000000312073CFC00000003050000FA000000060000000600000001120701020000000108A91307120700FC050000FA135D80FB0000000205000108135D44FF0000000900000004135D80FF000000040CFD9BF70F350D00045489F90000000500000008000000000F34D1000000000000000008135D44FB05000108135D44FF0CFD9BF7000000070000000900000004135D80FF000000040CFD9BF70000000500000006000000020000000312073CFC00000003050000FA00000009135D44FB0500010800000007000000060000000200000000120701000000000008A912F912073D0208A91307120700FC050000FA135D80FB0000000205000108135D44FF00000006000000040000000600000006000000030000000600000001120701020000000108A91307120700FC050000FA0000000800000009000000030000000900000004115224FF0000000408A912F712073D0008A912F912073D0208A91307000000060000000600000001120701020000000108A91307120700FC08A912FF12073D08050000FA135D80FB000000020CFD9BF70F350D00000000060000000000000006135D44FB0000000600000002000000041207010800000004000000060000000312073CFC0000000308A912FF000000060000000600000000120701000000000008A912F912073D0208A91307120700FC00000006000000030000000600000001120701020000000108A91307120700FC08A912FF00000006000000060000000300000006000000031151E907000000030A0001081151E8FF0000000600000004115224FF0000000408A912F712073D0008A912F912073D020000000600000001000000060000000012070100000000000000000600000002"
theorem small_6515268_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6515268_right_root small_6515268_right_fuel small_6515268_right_count small_6515268_right_encoded = true := by
  decide +kernel
theorem small_6515268_right_covered : CoveredBy scale carrier boxes small_6515268_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6515268_right_root small_6515268_right_fuel small_6515268_right_count small_6515268_right_encoded small_6515268_right_checked

theorem cover_6515268 : CoveredBy scale carrier boxes root_6515268 := by
  apply coveredBy_split_literal root_6515268 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0450.root_6515269 small_6515268_right_root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0450.cover_6515269
  · exact small_6515268_right_covered
#print axioms cover_6515268

def root_6515262 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6515262_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6515262_left_fuel : Nat := 1
def small_6515262_left_count : Nat := 1
def small_6515262_left_encoded : String := "00000001"
theorem small_6515262_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6515262_left_root small_6515262_left_fuel small_6515262_left_count small_6515262_left_encoded = true := by
  decide +kernel
theorem small_6515262_left_covered : CoveredBy scale carrier boxes small_6515262_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6515262_left_root small_6515262_left_fuel small_6515262_left_count small_6515262_left_encoded small_6515262_left_checked

theorem cover_6515262 : CoveredBy scale carrier boxes root_6515262 := by
  apply coveredBy_split_literal root_6515262 small_6515262_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0450.root_6515268 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6515262_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0450.cover_6515268
#print axioms cover_6515262

def root_6513232 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6513232 : CoveredBy scale carrier boxes root_6513232 := by
  apply coveredBy_split_literal root_6513232 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2452.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0450.root_6515262 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2452.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0450.cover_6515262
#print axioms cover_6513232

def root_6513226 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6513226_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6513226_left_fuel : Nat := 1
def small_6513226_left_count : Nat := 1
def small_6513226_left_encoded : String := "00000000"
theorem small_6513226_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6513226_left_root small_6513226_left_fuel small_6513226_left_count small_6513226_left_encoded = true := by
  decide +kernel
theorem small_6513226_left_covered : CoveredBy scale carrier boxes small_6513226_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6513226_left_root small_6513226_left_fuel small_6513226_left_count small_6513226_left_encoded small_6513226_left_checked

theorem cover_6513226 : CoveredBy scale carrier boxes root_6513226 := by
  apply coveredBy_split_literal root_6513226 small_6513226_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0450.root_6513232 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6513226_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0450.cover_6513232
#print axioms cover_6513226

def root_6511278 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6511278 : CoveredBy scale carrier boxes root_6511278 := by
  apply coveredBy_split_literal root_6511278 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2451.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0450.root_6513226 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2451.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0450.cover_6513226
#print axioms cover_6511278

def root_6511277 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6511277 : CoveredBy scale carrier boxes root_6511277 := by
  apply coveredBy_split_literal root_6511277 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0450.root_6511278 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2454.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0450.cover_6511278
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2454.covered
#print axioms cover_6511277

def root_6507107 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6507107 : CoveredBy scale carrier boxes root_6507107 := by
  apply coveredBy_split_literal root_6507107 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0449.root_6507108 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0450.root_6511277 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0449.cover_6507108
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0450.cover_6511277
#print axioms cover_6507107

def root_6455933 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6455933 : CoveredBy scale carrier boxes root_6455933 := by
  apply coveredBy_split_literal root_6455933 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0449.root_6455934 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0450.root_6507107 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0449.cover_6455934
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0450.cover_6507107
#print axioms cover_6455933

def root_6523618 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6523618_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6523618_left_fuel : Nat := 21
def small_6523618_left_count : Nat := 247
def small_6523618_left_encoded : String := "1151E8F70A0001021151E8F90A0000FA115224FB000000020A0001061151E8FD0A0000FE1152250908A912FB12073CFA0000000208A913090000000500000006120700FA08A91309000000080000000900000002000000041151E909000000040000000600000003115224FD000000030A0000FE1152250908A912FB12073CFA0000000208A912FD12073D0600000006000000030000000600000009000000041151E90900000004000000091151E8FB0A0001061151E8FD0000000500000003115224FD000000030A0000FE1152250900000006000000041151E9090000000408A912FD000000061207010600000003000000090000000200000001115224F9000000010A0000FA115224FB000000020A0001061151E8FD0A0000FE1152250908A912F912073D0208A912FB12073CFA0000000208A913090000000A12073CFE000000040500010000000006135D80F70000000005000106135D44FD0CFD9BF9000000060000000A0000000300000006120700FA0000000A000000020000000112070102000000010000000A000000041151E9090000000408A912F900000006120701020000000108A912FB000000060000000A00000003115224FD000000030A0000FE1152250908A912F912073D0208A912FB12073CFA0000000208A912FD0000000A0000000A120700FA000000090000000200000001120701020000000108A912FB12073CFA0000000208A912FD0000000A120701060000000300000006120700FA08A912FD0000000A12070106000000030000000900000002000000041151E9090000000408A912F912073D0208A912FB12073CFA0000000208A912FD000000061207010600000003000000060000000600000001120701020000000108A912FB000000060000000A1151E8FB0A0001061151E8FD0A0000FE1152250908A912F912073D0208A91309000000050000000600000001120701020000000108A913090000000A00000007000000041151E909000000040000000600000003115224FD000000030A0000FE1152250908A912F912073D0208A912FD12073D06000000060000000312070106000000030000000A00000001120701020000000108A912FD0000000A0000000A000000041151E9090000000408A912F912073D0208A912FD12073D0605000100135D44F7050000FA00000006135D44FB0000000600000002000000000000000600000003120701060000000305000100135D44F70000000900000000135D80F700000000050000FA00000006135D44FB050000FE00000006000000050000000200000001120701020000000108A912FD000000061207010600000003050001000000000A000000060000000200000000"
theorem small_6523618_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6523618_left_root small_6523618_left_fuel small_6523618_left_count small_6523618_left_encoded = true := by
  decide +kernel
theorem small_6523618_left_covered : CoveredBy scale carrier boxes small_6523618_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6523618_left_root small_6523618_left_fuel small_6523618_left_count small_6523618_left_encoded small_6523618_left_checked

theorem cover_6523618 : CoveredBy scale carrier boxes root_6523618 := by
  apply coveredBy_split_literal root_6523618 small_6523618_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2456.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_6523618_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2456.covered
#print axioms cover_6523618

def root_6521608 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6521608 : CoveredBy scale carrier boxes root_6521608 := by
  apply coveredBy_split_literal root_6521608 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2455.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0450.root_6523618 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2455.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0450.cover_6523618
#print axioms cover_6521608

def root_6527861 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6527861 : CoveredBy scale carrier boxes root_6527861 := by
  apply coveredBy_split_literal root_6527861 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2457.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2458.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2457.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2458.covered
#print axioms cover_6527861

def root_6526931 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6526931_left_root : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6526931_left_fuel : Nat := 21
def small_6526931_left_count : Nat := 429
def small_6526931_left_encoded : String := "0A0001001151E8F70A0001021151E8F90A0000FA115224FB000000020A0001061151E8FD0000000500000003115224FD000000030A0001081151E8FF0000000500000004115224FF0000000408A912FB12073CFA0000000208A912FD00000005120701060000000300000005120700FA08A912FD12073D0608A912FF0000000512070108000000040000000500000003120701060000000300000007000000021151E8FB000000050000000200000001115224F9000000010A0000FA115224FB000000020A0001061151E8FD0A0001081151E8FF0000000500000004115224FF0000000408A912F912073D0208A912FB00000005120700FA08A912FF000000051207010800000004000000050000000200000001120701020000000108A912FB00000005120700FA08A912FF000000051207010800000004000000050000000200000003115224FD000000030A0001081151E8FF08A912F912073D0208A912FB000000050000000700000001120701020000000108A912FB00000005120700FA08A912FD00000005000000070000000200000004115224FF0000000408A912F912073D0208A912FB12073CFA0000000208A912FD00000005120701060000000300000005120700FA08A912FD12073D0608A912FF0000000512070108000000040000000500000003120701060000000308A912FF000000051207010800000004000000050000000200000001120701020000000108A912FB12073CFA0000000208A912FD00000005120701060000000300000005120700FA08A912FD12073D0608A912FF0000000512070108000000040000000500000003120701060000000300000005000000021151E8FB0A0001061151E8FD0000000500000003115224FD000000030A0001081151E8FF0000000500000004000000050000000200000000115224F7000000000A0001021151E8F90A0000FA115224FB000000020A0001061151E8FD0A0001081151E8FF0000000500000004115224FF0000000408A912F712073D0008A912FB00000005120700FA08A912FF000000051207010800000004000000050000000200000000120701000000000008A912FB000000050000000A00000003115224FD000000030A0001081151E8FF08A912F70000000812070100000000000000000800000004115224FF0000000408A912F712073D0008A912FB12073CFA0000000208A912FD00000005120701060000000300000005120700FA08A912FD12073D0608A912FF000000050000000A00000003120701060000000308A912FF000000051207010800000004000000050000000200000000120701000000000008A912FB12073CFA0000000208A912FD0000000500000008120700FA08A912FD0000000A00000008000000021151E8FB0A0001061151E8FD0000000500000003115224FD000000030A0001081151E8FF0000000500000004000000050000000200000001115224F9000000010A0000FA115224FB000000020A0001061151E8FD0A0001081151E8FF08A912F712073D0008A912F90000000512070102000000010000000500000000120701000000000008A912F90000000512070102000000010000000500000004115224FF0000000408A912F712073D0008A912F912073D0208A912FB00000005120700FA08A912FF000000050000000A0000000200000001120701020000000108A912FB00000005120700FA08A912FF000000051207010800000004000000050000000200000000120701000000000008A912F90000000A12070102000000010000000500000003115224FD000000030A0001081151E8FF08A912F712073D0008A912F912073D0208A912FB00000005120700FA08A912FD00000005000000070000000200000001120701020000000108A912FB00000005120700FA08A912FD00000005000000070000000200000000120701000000000008A912F90000000812070102000000010000000500000004115224FF0000000408A912F712073D0008A912F912073D0208A912FB12073CFA0000000200000005120700FA08A912FD12073D0608A912FF00000005120701080000000400000005000000031207010600000003000000050000000200000001120701020000000108A912FB00000005120700FA08A912FD000000051207010600000003000000050000000200000000120701000000000008A912F912073D0208A912FB00000005120700FA08A912FD0000000512070106000000030000000500000002000000011207010200000001000000051151E8FB0A0001061151E8FD0A0001081151E8FF00000005000000040000000500000003115224FD000000030A0001081151E8FF00000005000000040000000500000002"
theorem small_6526931_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6526931_left_root small_6526931_left_fuel small_6526931_left_count small_6526931_left_encoded = true := by
  decide +kernel
theorem small_6526931_left_covered : CoveredBy scale carrier boxes small_6526931_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6526931_left_root small_6526931_left_fuel small_6526931_left_count small_6526931_left_encoded small_6526931_left_checked

theorem cover_6526931 : CoveredBy scale carrier boxes root_6526931 := by
  apply coveredBy_split_literal root_6526931 small_6526931_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0450.root_6527861 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact small_6526931_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0450.cover_6527861
#print axioms cover_6526931

def root_6521607 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6521607 : CoveredBy scale carrier boxes root_6521607 := by
  apply coveredBy_split_literal root_6521607 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0450.root_6521608 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0450.root_6526931 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0450.cover_6521608
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0450.cover_6526931
#print axioms cover_6521607

def root_6538516 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6538516 : CoveredBy scale carrier boxes root_6538516 := by
  apply coveredBy_split_literal root_6538516 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2462.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2463.root coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2462.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2463.covered
#print axioms cover_6538516

def root_6538510 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6538510_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6538510_left_fuel : Nat := 1
def small_6538510_left_count : Nat := 1
def small_6538510_left_encoded : String := "00000000"
theorem small_6538510_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6538510_left_root small_6538510_left_fuel small_6538510_left_count small_6538510_left_encoded = true := by
  decide +kernel
theorem small_6538510_left_covered : CoveredBy scale carrier boxes small_6538510_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6538510_left_root small_6538510_left_fuel small_6538510_left_count small_6538510_left_encoded small_6538510_left_checked

theorem cover_6538510 : CoveredBy scale carrier boxes root_6538510 := by
  apply coveredBy_split_literal root_6538510 small_6538510_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0450.root_6538516 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6538510_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0450.cover_6538516
#print axioms cover_6538510

def root_6536692 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6536692 : CoveredBy scale carrier boxes root_6536692 := by
  apply coveredBy_split_literal root_6536692 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2461.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0450.root_6538510 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2461.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0450.cover_6538510
#print axioms cover_6536692

def root_6534958 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6534958 : CoveredBy scale carrier boxes root_6534958 := by
  apply coveredBy_split_literal root_6534958 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2460.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0450.root_6536692 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2460.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0450.cover_6536692
#print axioms cover_6534958

def root_6532142 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6532142 : CoveredBy scale carrier boxes root_6532142 := by
  apply coveredBy_split_literal root_6532142 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2459.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0450.root_6534958 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2459.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0450.cover_6534958
#print axioms cover_6532142

def root_6521606 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6521606 : CoveredBy scale carrier boxes root_6521606 := by
  apply coveredBy_split_literal root_6521606 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0450.root_6521607 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0450.root_6532142 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0450.cover_6521607
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0450.cover_6532142
#print axioms cover_6521606

def root_6455932 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6455932 : CoveredBy scale carrier boxes root_6455932 := by
  apply coveredBy_split_literal root_6455932 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0450.root_6455933 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0450.root_6521606 coord3 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0450.cover_6455933
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0450.cover_6521606
#print axioms cover_6455932

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0450
