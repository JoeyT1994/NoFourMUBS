import TaoBundleAssembly0653
import TaoBundleAssembly0659
import TaoBundleAssembly0660
import TaoBundleAssembly0663
import TaoBundleChunkBatch0913
import TaoBundleChunkBatch0918
import TaoBundleChunkBatch0919
import TaoBundleChunkBatch0920
import TaoBundleChunkBatch0921
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0664
def root_9799488 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9799488_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9799488_right_fuel : Nat := 18
def small_9799488_right_count : Nat := 191
def small_9799488_right_encoded : String := "120701020000000108A91305120701040000000208A91307120700FC08A91309120700FE000000060000000412073CFE0000000404548A0100000006000000090000000312073CFC0000000308A91309120700FE04548A01000000061386AD00045489F91386AD0204548A0513867104000000020CFD9C070F34D0FC000000060000000300000006000000060000000100000006000000000000000412073CFE0000000404548A011386710000000000045489F91386AD0204548A051386710400000002000000060000000600000001000000061386AD00045489F91386AD0204548A0513867104000000020CFD9C07000000090F350CFC000000030CFD9C090F34D0FE0000000600000004000000061386AD040CFD9C07000000090F350CFC000000030CFD9C090F34D0FE0000000600000004000000060000000200000001138671020000000104548A0513867104000000020CFD9C070000000900000006000000060000000012073D0408A91307120700FC08A91309120700FE000000060000000412073CFE0000000404548A0100000006000000090000000312073CFC0000000308A91309120700FE04548A01000000061386AD00045489F91386AD020CFD9C050F34D10400000002000000060F350D04000000060000000200000001138671020000000100000006000000000000000412073CFE0000000404548A011386710000000000045489F91386AD020CFD9C050F34D10400000002000000060F350D040CFD9C07000000060000000600000002000000011386710200000001000000061386AD00045489F91386AD020CFD9C050F34D104000000020CFD9C07000000090F350CFC000000030CFD9C090F34D0FE0000000600000004000000060F350D040CFD9C070F34D0FC00000006000000030F350CFC000000030CFD9C090F34D0FE00000006000000040F350CFE0000000400000005000000020000000113867102000000010CFD9C050F34D10400000002000000060F350D040CFD9C070F34D0FC000000060000000300000006000000020000000000000002"
theorem small_9799488_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9799488_right_root small_9799488_right_fuel small_9799488_right_count small_9799488_right_encoded = true := by
  decide +kernel
theorem small_9799488_right_covered : CoveredBy scale carrier boxes small_9799488_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9799488_right_root small_9799488_right_fuel small_9799488_right_count small_9799488_right_encoded small_9799488_right_checked

theorem cover_9799488 : CoveredBy scale carrier boxes root_9799488 := by
  apply coveredBy_split_literal root_9799488 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0663.root_9799489 small_9799488_right_root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0663.cover_9799489
  · exact small_9799488_right_covered
#print axioms cover_9799488

def root_9799482 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9799482_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9799482_left_fuel : Nat := 1
def small_9799482_left_count : Nat := 1
def small_9799482_left_encoded : String := "00000000"
theorem small_9799482_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9799482_left_root small_9799482_left_fuel small_9799482_left_count small_9799482_left_encoded = true := by
  decide +kernel
theorem small_9799482_left_covered : CoveredBy scale carrier boxes small_9799482_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9799482_left_root small_9799482_left_fuel small_9799482_left_count small_9799482_left_encoded small_9799482_left_checked

theorem cover_9799482 : CoveredBy scale carrier boxes root_9799482 := by
  apply coveredBy_split_literal root_9799482 small_9799482_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0664.root_9799488 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_9799482_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0664.cover_9799488
#print axioms cover_9799482

def root_9799481 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9799481 : CoveredBy scale carrier boxes root_9799481 := by
  apply coveredBy_split_literal root_9799481 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0664.root_9799482 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3670.root coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0664.cover_9799482
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3670.covered
#print axioms cover_9799481

def root_9799476 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9799476_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9799476_right_fuel : Nat := 1
def small_9799476_right_count : Nat := 1
def small_9799476_right_encoded : String := "00000004"
theorem small_9799476_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9799476_right_root small_9799476_right_fuel small_9799476_right_count small_9799476_right_encoded = true := by
  decide +kernel
theorem small_9799476_right_covered : CoveredBy scale carrier boxes small_9799476_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9799476_right_root small_9799476_right_fuel small_9799476_right_count small_9799476_right_encoded small_9799476_right_checked

theorem cover_9799476 : CoveredBy scale carrier boxes root_9799476 := by
  apply coveredBy_split_literal root_9799476 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0664.root_9799481 small_9799476_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0664.cover_9799481
  · exact small_9799476_right_covered
#print axioms cover_9799476

def root_9799475 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9799475_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9799475_right_fuel : Nat := 31
def small_9799475_right_count : Nat := 409
def small_9799475_right_encoded : String := "1151E9090000000408A91301120701000000000008A912F912073D0208A91305120701040000000208A913070000000912073CFC00000003050000FE135D810904548A0113867100000000000CFD9BF90F350D0204548A05000000091386AD040CFD9C07000000090F350CFC000000030C9A8702000000090000000900000002000000010F34D10200000001000000091386AD000CFD9BF90F350D0200000009000000010000000900000000000000040000000912073D0408A91307120700FC050000FE135D810904548A0113867100000000000CFD9BF90F350D020000000900000001000000090000000900000004000000090000000312073CFC00000003050000FE135D810904548A0113867100000000000CFD9BF90F350D020CFD9C050F34D104000000020CFD9C070F34D0FC00000009000000030F350CFC000000030C9A87020F8750F90C9A86FC0F878D0700000009000000030F87510700000003078000FE128A7D09022A458113E1C500000000000AD3578510D10104000000020000000500000005000000050000000400000005000000010F878CF9000000010C9A86FC00000009000000050F350D040CFD9C070F34D0FC0C9A87020F8750F90C9A87040F87510500000002078000FE128A7D09022A45810000000800000007000000040000000700000009000000010F878CF9000000010C9A87040000000800000009000000030F350CFC000000030C9A87020F8750F90C9A87040F875105000000020C9A86FC0F878D07078000FE128A7D09022A458100000008000000070000000400000007000000030F87510700000003000000080F878D050C9A86FC0F878D07078000FE128A7D09022A458113E1C500000000000B4D44020000000800000006000000090000000400000009000000030F87510700000003078000FE128A7D09022A458113E1C500000000000000000500000005000000040000000500000002000000010F878CF9000000010C9A8704000000080F878D050C9A86FC0F878D07078000FE000000080000000500000003000000050000000200000002000000010F34D102000000010CFD9C050F34D10400000002000000090F350D040CFD9C07000000080F350CFC0000000300000005000000021386AD000CFD9BF90F350D020CFD9C050F34D10400000002000000090F350D040CFD9C070F34D0FC00000009000000030F350CFC000000030C9A87020F8750F90C9A87040F875105000000020C9A86FC0F878D0700000007000000030F87510700000003000000050F878D050C9A86FC000000090F875107000000030000000500000002000000010F878CF9000000010C9A87040F87510500000002000000050000000500000002000000010F34D102000000010CFD9C050F34D10400000002000000090F350D040CFD9C070000000900000005000000020000000000000004135D45090000000404548A0113867100000000000CFD9BF90F350D020CFD9C050F34D10400000002000000090F350D040CFD9C070F34D0FC00000009000000030F350CFC000000030C9A87020F8750F90C9A87040000000800000005000000010000000500000002000000010F34D102000000010CFD9C0500000009000000051386AD000CFD9BF90F350D020CFD9C05000000090F350D040CFD9C07000000090F350CFC0000000300000005000000020000000100000009000000000000000200000001120701020000000108A9130512070104000000020000000912073D0408A913070000000912073CFC00000003050000FE135D810904548A011386710000000000000000081386AD00045489F91386AD020000000900000001000000050000000000000004000000050000000212073D0008A912F912073D0208A9130512070104000000020000000912073D0408A91307120700FC000000090000000312073CFC00000003050000FE135D81090CFD9C010F34D100000000000CFD9BF90F350D020CFD9C050F34D10400000002000000090F350D040CFD9C07000000090F350CFC000000030C9A87020F8750F90C9A87040F875105000000020000000900000009000000010F878CF9000000010000000900000002000000010F34D10200000001000000090F350D000CFD9BF90F350D020000000900000001000000090000000000000004135D4509000000040CFD9C010F34D1000000000000000009000000090000000200000001120701020000000108A913051207010400000002000000090000000900000000"
theorem small_9799475_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9799475_right_root small_9799475_right_fuel small_9799475_right_count small_9799475_right_encoded = true := by
  decide +kernel
theorem small_9799475_right_covered : CoveredBy scale carrier boxes small_9799475_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9799475_right_root small_9799475_right_fuel small_9799475_right_count small_9799475_right_encoded small_9799475_right_checked

theorem cover_9799475 : CoveredBy scale carrier boxes root_9799475 := by
  apply coveredBy_split_literal root_9799475 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0664.root_9799476 small_9799475_right_root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0664.cover_9799476
  · exact small_9799475_right_covered
#print axioms cover_9799475

def root_9799470 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9799470_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9799470_right_fuel : Nat := 1
def small_9799470_right_count : Nat := 1
def small_9799470_right_encoded : String := "00000003"
theorem small_9799470_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9799470_right_root small_9799470_right_fuel small_9799470_right_count small_9799470_right_encoded = true := by
  decide +kernel
theorem small_9799470_right_covered : CoveredBy scale carrier boxes small_9799470_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9799470_right_root small_9799470_right_fuel small_9799470_right_count small_9799470_right_encoded small_9799470_right_checked

theorem cover_9799470 : CoveredBy scale carrier boxes root_9799470 := by
  apply coveredBy_split_literal root_9799470 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0664.root_9799475 small_9799470_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0664.cover_9799475
  · exact small_9799470_right_covered
#print axioms cover_9799470

def root_9799469 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9799469 : CoveredBy scale carrier boxes root_9799469 := by
  apply coveredBy_split_literal root_9799469 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0664.root_9799470 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3671.root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0664.cover_9799470
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3671.covered
#print axioms cover_9799469

def root_9799464 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9799464_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9799464_right_fuel : Nat := 1
def small_9799464_right_count : Nat := 1
def small_9799464_right_encoded : String := "00000002"
theorem small_9799464_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9799464_right_root small_9799464_right_fuel small_9799464_right_count small_9799464_right_encoded = true := by
  decide +kernel
theorem small_9799464_right_covered : CoveredBy scale carrier boxes small_9799464_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9799464_right_root small_9799464_right_fuel small_9799464_right_count small_9799464_right_encoded small_9799464_right_checked

theorem cover_9799464 : CoveredBy scale carrier boxes root_9799464 := by
  apply coveredBy_split_literal root_9799464 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0664.root_9799469 small_9799464_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0664.cover_9799469
  · exact small_9799464_right_covered
#print axioms cover_9799464

def root_9792436 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9792436 : CoveredBy scale carrier boxes root_9792436 := by
  apply coveredBy_split_literal root_9792436 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0663.root_9792437 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0664.root_9799464 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0663.cover_9792437
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0664.cover_9799464
#print axioms cover_9792436

def root_9792430 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9792430_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9792430_left_fuel : Nat := 1
def small_9792430_left_count : Nat := 1
def small_9792430_left_encoded : String := "00000001"
theorem small_9792430_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9792430_left_root small_9792430_left_fuel small_9792430_left_count small_9792430_left_encoded = true := by
  decide +kernel
theorem small_9792430_left_covered : CoveredBy scale carrier boxes small_9792430_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9792430_left_root small_9792430_left_fuel small_9792430_left_count small_9792430_left_encoded small_9792430_left_checked

theorem cover_9792430 : CoveredBy scale carrier boxes root_9792430 := by
  apply coveredBy_split_literal root_9792430 small_9792430_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0664.root_9792436 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_9792430_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0664.cover_9792436
#print axioms cover_9792430

def root_9755890 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9755890 : CoveredBy scale carrier boxes root_9755890 := by
  apply coveredBy_split_literal root_9755890 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0663.root_9755891 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0664.root_9792430 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0663.cover_9755891
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0664.cover_9792430
#print axioms cover_9755890

def root_9755885 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9755885_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9755885_right_fuel : Nat := 1
def small_9755885_right_count : Nat := 1
def small_9755885_right_encoded : String := "00000000"
theorem small_9755885_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9755885_right_root small_9755885_right_fuel small_9755885_right_count small_9755885_right_encoded = true := by
  decide +kernel
theorem small_9755885_right_covered : CoveredBy scale carrier boxes small_9755885_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9755885_right_root small_9755885_right_fuel small_9755885_right_count small_9755885_right_encoded small_9755885_right_checked

theorem cover_9755885 : CoveredBy scale carrier boxes root_9755885 := by
  apply coveredBy_split_literal root_9755885 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0664.root_9755890 small_9755885_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0664.cover_9755890
  · exact small_9755885_right_covered
#print axioms cover_9755885

def root_9753877 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9753877 : CoveredBy scale carrier boxes root_9753877 := by
  apply coveredBy_split_literal root_9753877 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3651.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0664.root_9755885 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3651.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0664.cover_9755885
#print axioms cover_9753877

def root_9748045 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9748045 : CoveredBy scale carrier boxes root_9748045 := by
  apply coveredBy_split_literal root_9748045 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0660.root_9748046 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0664.root_9753877 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0660.cover_9748046
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0664.cover_9753877
#print axioms cover_9748045

def root_9810520 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9810520 : CoveredBy scale carrier boxes root_9810520 := by
  apply coveredBy_split_literal root_9810520 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3672.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3673.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3672.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3673.covered
#print axioms cover_9810520

def root_9748044 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9748044 : CoveredBy scale carrier boxes root_9748044 := by
  apply coveredBy_split_literal root_9748044 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0664.root_9748045 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0664.root_9810520 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0664.cover_9748045
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0664.cover_9810520
#print axioms cover_9748044

def root_9726650 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9726650 : CoveredBy scale carrier boxes root_9726650 := by
  apply coveredBy_split_literal root_9726650 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0660.root_9726651 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0664.root_9748044 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0660.cover_9726651
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0664.cover_9748044
#print axioms cover_9726650

def root_9813941 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9813941 : CoveredBy scale carrier boxes root_9813941 := by
  apply coveredBy_split_literal root_9813941 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3674.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3675.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3674.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3675.covered
#print axioms cover_9813941

def root_9818552 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9818552 : CoveredBy scale carrier boxes root_9818552 := by
  apply coveredBy_split_literal root_9818552 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3676.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3677.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3676.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3677.covered
#print axioms cover_9818552

def root_9813940 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9813940 : CoveredBy scale carrier boxes root_9813940 := by
  apply coveredBy_split_literal root_9813940 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0664.root_9813941 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0664.root_9818552 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0664.cover_9813941
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0664.cover_9818552
#print axioms cover_9813940

def root_9821911 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9821911_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9821911_left_fuel : Nat := 24
def small_9821911_left_count : Nat := 279
def small_9821911_left_encoded : String := "1151E901000000000A0001021151E8F90A0001041151E905000000020A0001061151E9070000000300000008115225070A0000FE115224FF0000000408A9130712070106000000030000000712073D0608A912FF0000000700000006000000031151E8FF08A9130700000007000000080000000400000003115225050A0001061151E9070000000300000008115225070A0000FE115224FF0000000408A9130512070104000000020000000612073D0408A9130712070106000000030000000700000006000000021151E8FF0000000700000004000000030000000200000001115224F9000000010A0001041151E905000000020A0001061151E907000000030A0000FE115224FF0000000408A912F912073D0208A912FF00000008120700FE0500010000000008135D810105000104135D45050000000205000106000000080000000600000007000000000000000400000001120701020000000108A912FF00000007120700FE00000007000000041151E8FF08A912F9000000060000000700000004115225070A0000FE115224FF0000000408A912F912073D0208A9130712070106000000030000000712073D0608A912FF00000007120700FE00000007000000040000000300000001120701020000000108A91307120701060000000308A912FF12073CFE0000000400000007120700FE0500010000000006000000070000000412073D0608A912FF00000007120700FE0000000700000004000000031151E8FF000000070000000400000003115225050A0001061151E907000000030A0000FE115224FF0000000408A912F900000008120701020000000108A9130512070104000000020000000812073D0408A912FF00000007120700FE0000000700000004000000021151E8FF0000000700000004115225070A0000FE115224FF0000000408A912F912073D0208A9130512070104000000020000000612073D0408A91307120701060000000308A912FF12073CFE00000004000000060000000612073D0608A912FF0000000700000006000000030000000200000001120701020000000108A91305120701040000000208A9130712070106000000030000000512073D0608A912FF00000006000000060000000312073D0408A91307120701060000000308A912FF12073CFE00000004050001000000000600000005120700FE0500010000000006000000050000000412073D0608A912FF12073CFE0000000405000100135D450100000000045489F90000000613867102000000010CFD9C05000000060000000700000007120700FE05000100135D450100000000045489F90000000613867102000000010CFD9C05000000060F350D040000000600000002135D8101045489F900000007138671020000000100000005000000000000000400000003000000021151E8FF08A912F912073D0208A913051207010400000002000000060000000700000001120701020000000108A9130512070104000000020000000512073D040000000700000002000000040000000300000002"
theorem small_9821911_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9821911_left_root small_9821911_left_fuel small_9821911_left_count small_9821911_left_encoded = true := by
  decide +kernel
theorem small_9821911_left_covered : CoveredBy scale carrier boxes small_9821911_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9821911_left_root small_9821911_left_fuel small_9821911_left_count small_9821911_left_encoded small_9821911_left_checked

theorem cover_9821911 : CoveredBy scale carrier boxes root_9821911 := by
  apply coveredBy_split_literal root_9821911 small_9821911_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3678.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_9821911_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3678.covered
#print axioms cover_9821911

def root_9825568 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9825568 : CoveredBy scale carrier boxes root_9825568 := by
  apply coveredBy_split_literal root_9825568 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3679.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3680.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3679.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3680.covered
#print axioms cover_9825568

def root_9821910 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9821910 : CoveredBy scale carrier boxes root_9821910 := by
  apply coveredBy_split_literal root_9821910 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0664.root_9821911 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0664.root_9825568 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0664.cover_9821911
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0664.cover_9825568
#print axioms cover_9821910

def root_9821909 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9821909 : CoveredBy scale carrier boxes root_9821909 := by
  apply coveredBy_split_literal root_9821909 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0664.root_9821910 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3681.root coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0664.cover_9821910
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3681.covered
#print axioms cover_9821909

def root_9813939 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9813939 : CoveredBy scale carrier boxes root_9813939 := by
  apply coveredBy_split_literal root_9813939 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0664.root_9813940 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0664.root_9821909 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0664.cover_9813940
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0664.cover_9821909
#print axioms cover_9813939

def root_9726649 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9726649 : CoveredBy scale carrier boxes root_9726649 := by
  apply coveredBy_split_literal root_9726649 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0664.root_9726650 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0664.root_9813939 coord3 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0664.cover_9726650
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0664.cover_9813939
#print axioms cover_9726649

def root_9584499 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9584499 : CoveredBy scale carrier boxes root_9584499 := by
  apply coveredBy_split_literal root_9584499 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0659.root_9584500 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0664.root_9726649 coord2 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0659.cover_9584500
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0664.cover_9726649
#print axioms cover_9584499

def root_9151627 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9151627 : CoveredBy scale carrier boxes root_9151627 := by
  apply coveredBy_split_literal root_9151627 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0653.root_9151628 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0664.root_9584499 coord2 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0653.cover_9151628
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0664.cover_9584499
#print axioms cover_9151627

def root_9833198 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9833198_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9833198_left_fuel : Nat := 26
def small_9833198_left_count : Nat := 351
def small_9833198_left_encoded : String := "1151E903000000010A0000FA115224FB000000020A0000FC115224FD000000030A0001081151E8FF0000000800000004115224FF0000000408A91301120701000000000008A912FB12073CFA0000000208A912FD12073CFC0000000308A912FF12073D080000000600000004120701080000000405000102135D45030000000104548A0113867100000000000CFD9BFB0F350CFA00000002000000080000000600000008135D810304548A0113867100000000000CFD9BFB0F350CFA000000020CFD9BFD0F350CFC0000000300000008000000080F34D0FA0CFD9BFD0000000600000005000000021386AD000CFD9BFB000000080F34D0FA00000005000000020000000000000001120700FC0000000800000003120700FA08A912FD00000006120700FC00000005000000030000000212073D0008A912FB12073CFA0000000208A912FD12073CFC0000000308A912FF0000000812070108000000040000000800000008120700FA08A912FD12073CFC0000000308A912FF0000000512070108000000040500010200000005135D81030000000500000001120700FC000000080000000300000002000000001151E8FD0A0001081151E8FF0000000600000004115224FF0000000408A91301120701000000000008A912FB12073CFA0000000208A912FF00000006120701080000000405000102135D45030000000100000006135D8103050000FC135D80FD0000000304548A0113867100000000000CFD9BFB0F350CFA00000002045489FF0000000613867108000000040C9A86FA000000060F8750FB0000000600000002000000061386AD000CFD9BFB0F350CFA00000002045489FF0000000613867108000000040C9A86FA00000006000000080000000600000000135D44FD04548A0113867100000000000CFD9BFB00000006000000060000000600000003000000010000000612073D0008A912FB12073CFA0000000208A912FF12073D0805000102000000060000000800000004120701080000000405000102135D450300000001050000FC135D80FD000000030CFD9C010000000800000006135D44FD0000000600000003135D8103050000FC135D80FD000000030CFD9C010F34D100000000000000000800000008135D44FD0CFD9C010F34D100000000000CFD9BFB00000006000000060F350D0000000008000000000000000300000001120700FA08A912FF000000061207010800000004000000060000000200000000000000031151E8FB0A0000FC115224FD000000030A0001081151E8FF08A913010000000812073D0008A912FD00000008120700FC00000005000000030000000000000004115224FF0000000408A91301120701000000000008A912FD12073CFC0000000308A912FF000000081207010800000004000000080000000812073D0008A912FD00000008120700FC0000000800000003000000001151E8FD0A0001081151E8FF0000000800000004115224FF0000000408A91301120701000000000008A912FF12073D0805000102000000080000000800000004120701080000000405000102135D450300000001050000FA135D80FB00000002050000FC135D80FD0000000304548A010000000800000006135D44FD04548A011386710000000000000000060000000600000003135D44FB050000FC00000008135D44FD04548A0100000008000000080000000300000002135D8103050000FA135D80FB00000002050000FC135D80FD0000000304548A010000000800000008135D44FD04548A011386710000000000000000051386AD00045489FF0000000613867108000000040780010200000008000000050000000000000003135D44FB050000FC0000000800000005000000020000000112073D0008A912FF000000081207010800000004050001020000000800000008000000000000000300000002"
theorem small_9833198_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9833198_left_root small_9833198_left_fuel small_9833198_left_count small_9833198_left_encoded = true := by
  decide +kernel
theorem small_9833198_left_covered : CoveredBy scale carrier boxes small_9833198_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9833198_left_root small_9833198_left_fuel small_9833198_left_count small_9833198_left_encoded small_9833198_left_checked

theorem cover_9833198 : CoveredBy scale carrier boxes root_9833198 := by
  apply coveredBy_split_literal root_9833198 small_9833198_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3683.root coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_9833198_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3683.covered
#print axioms cover_9833198

def root_9833193 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9833193_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9833193_right_fuel : Nat := 1
def small_9833193_right_count : Nat := 1
def small_9833193_right_encoded : String := "00000000"
theorem small_9833193_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9833193_right_root small_9833193_right_fuel small_9833193_right_count small_9833193_right_encoded = true := by
  decide +kernel
theorem small_9833193_right_covered : CoveredBy scale carrier boxes small_9833193_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9833193_right_root small_9833193_right_fuel small_9833193_right_count small_9833193_right_encoded small_9833193_right_checked

theorem cover_9833193 : CoveredBy scale carrier boxes root_9833193 := by
  apply coveredBy_split_literal root_9833193 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0664.root_9833198 small_9833193_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0664.cover_9833198
  · exact small_9833193_right_covered
#print axioms cover_9833193

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0664
