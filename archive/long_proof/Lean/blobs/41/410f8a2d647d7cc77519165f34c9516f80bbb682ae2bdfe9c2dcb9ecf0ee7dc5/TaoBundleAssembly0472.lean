import TaoBundleAssembly0471
import TaoBundleChunkBatch0649
import TaoBundleChunkBatch0650
import TaoBundleChunkBatch0651
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0472
def root_6856333 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6856333_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6856333_right_fuel : Nat := 17
def small_6856333_right_count : Nat := 155
def small_6856333_right_encoded : String := "120700FC05000104135D45050000000205000108135D4509000000040CFD9BF70F350D0000000005000000000F34D100000000000CFD9BF90F350D0200000005000000010F34D10200000001045489FD00000009138670FC0000000600000003135D81090CFD9BF70F350D000CFD9BF90F350D02045489FD00000005138670FC0000000500000003000000010F34D10200000001045489FD1386ACFC000000030C9A87000F8750F7000000050000000000000009138670FC0C9A87000F8750F700000005000000000F878CF7000000000000000900000003000000000F34D100000000000CFD9BF9000000070000000900000004135D810505000108135D4509000000040CFD9BF70F350D000CFD9BF90F350D02045489FD00000005138670FC0000000500000003000000010F34D1020000000100000006000000000F34D100000000000CFD9BF90F350D02045489FD1386ACFC000000030C9A87020F8750F9000000050000000100000009138670FC0C9A87020F8750F900000005000000010F878CF90000000100000009000000030000000100000009135D81090CFD9BF70F350D000CFD9BF90F350D02045489FD1386ACFC000000030C9A87000F8750F70C9A8702000000050F878CF900000001078001040000000500000009000000000F878CF7000000000C9A87020F8750F90780010400000005000000090000000100000009138670FC0C9A87000F8750F70C9A8702000000050F878CF90000000100000009000000000F878CF7000000000C9A8702000000090000000900000003000000010F34D1020000000100000009000000000F34D1000000000000000009000000040000000200000003"
theorem small_6856333_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6856333_right_root small_6856333_right_fuel small_6856333_right_count small_6856333_right_encoded = true := by
  decide +kernel
theorem small_6856333_right_covered : CoveredBy scale carrier boxes small_6856333_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6856333_right_root small_6856333_right_fuel small_6856333_right_count small_6856333_right_encoded small_6856333_right_checked

theorem cover_6856333 : CoveredBy scale carrier boxes root_6856333 := by
  apply coveredBy_split_literal root_6856333 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0471.root_6856334 small_6856333_right_root coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0471.cover_6856334
  · exact small_6856333_right_covered
#print axioms cover_6856333

def root_6856328 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6856328_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6856328_right_fuel : Nat := 1
def small_6856328_right_count : Nat := 1
def small_6856328_right_encoded : String := "00000001"
theorem small_6856328_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6856328_right_root small_6856328_right_fuel small_6856328_right_count small_6856328_right_encoded = true := by
  decide +kernel
theorem small_6856328_right_covered : CoveredBy scale carrier boxes small_6856328_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6856328_right_root small_6856328_right_fuel small_6856328_right_count small_6856328_right_encoded small_6856328_right_checked

theorem cover_6856328 : CoveredBy scale carrier boxes root_6856328 := by
  apply coveredBy_split_literal root_6856328 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0472.root_6856333 small_6856328_right_root coord1 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0472.cover_6856333
  · exact small_6856328_right_covered
#print axioms cover_6856328

def root_6856327 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6856327_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6856327_right_fuel : Nat := 21
def small_6856327_right_count : Nat := 167
def small_6856327_right_encoded : String := "120701020000000108A912FD12073CFC0000000305000104135D45050000000205000108135D4509000000040CFD9BF70F350D00045489F91386AD020CFD9BFD0F350CFC000000030C9A87000F8750F70C9A86FC000000060000000A000000000F878CF7000000000C9A86FC000000060F8750FD028001040000000600000006000000030F34D0FC00000006000000030000000113867102000000010CFD9BFD0000000600000006000000000F34D10000000000045489F91386AD020CFD9BFD000000090F34D0FC00000006000000030000000100000009135D81090CFD9BF70F350D00045489F91386AD020CFD9BFD0F350CFC000000030C9A87000000000A0F878CF7000000000C9A86FC000000090000000A0000000A00000001138671020000000100000009000000000F34D100000000000000000900000004135D810505000108135D4509000000040CFD9BF70F350D00045489F91386AD020CFD9BFD0F350CFC000000030C9A87000F8750F700000006000000000F878CF7000000000C9A86FC000000060F8750FD078001040000000600000006000000030F34D0FC000000060000000300000001138671020000000100000006000000000F34D1000000000000000009135D81090CFD9BF70F350D00045489F91386AD020CFD9BFD0F350CFC000000030C9A87000F8750F70C9A86FC000000090F8750FD078001040000000A128A7D050780010800000009000000050000000200000003000000000F878CF700000000000000090F34D0FC000000090000000300000001138671020000000100000009000000000F34D10000000000000000090000000400000002120700FC05000104135D45050000000205000108135D4509000000040CFD9BF7000000060000000900000009135D8105000000090000000200000003"
theorem small_6856327_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6856327_right_root small_6856327_right_fuel small_6856327_right_count small_6856327_right_encoded = true := by
  decide +kernel
theorem small_6856327_right_covered : CoveredBy scale carrier boxes small_6856327_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6856327_right_root small_6856327_right_fuel small_6856327_right_count small_6856327_right_encoded small_6856327_right_checked

theorem cover_6856327 : CoveredBy scale carrier boxes root_6856327 := by
  apply coveredBy_split_literal root_6856327 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0472.root_6856328 small_6856327_right_root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0472.cover_6856328
  · exact small_6856327_right_covered
#print axioms cover_6856327

def root_6856322 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6856322_right_root : ZRayBox := fun j => (#[⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6856322_right_fuel : Nat := 1
def small_6856322_right_count : Nat := 1
def small_6856322_right_encoded : String := "00000000"
theorem small_6856322_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6856322_right_root small_6856322_right_fuel small_6856322_right_count small_6856322_right_encoded = true := by
  decide +kernel
theorem small_6856322_right_covered : CoveredBy scale carrier boxes small_6856322_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6856322_right_root small_6856322_right_fuel small_6856322_right_count small_6856322_right_encoded small_6856322_right_checked

theorem cover_6856322 : CoveredBy scale carrier boxes root_6856322 := by
  apply coveredBy_split_literal root_6856322 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0472.root_6856327 small_6856322_right_root coord0 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0472.cover_6856327
  · exact small_6856322_right_covered
#print axioms cover_6856322

def root_6856321 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6856321_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6856321_right_fuel : Nat := 23
def small_6856321_right_count : Nat := 185
def small_6856321_right_encoded : String := "120701000000000008A912F912073D0208A912FD12073CFC0000000305000104135D45050000000205000108135D450900000004045489F71386AD000CFD9BF90F350D020CFD9BFD0F350CFC000000030C9A87020F8750F90C9A86FC0000000700000008000000010F878CF9000000010C9A86FC000000070F8750FD028001040000000700000008000000030F34D0FC0000000700000003000000010F34D102000000010CFD9BFD000000090F34D0FC00000007000000030000000013867100000000000CFD9BF90F350D020CFD9BFD00000007000000070000000100000009135D8109045489F71386AD000CFD9BF90F350D020CFD9BFD0F350CFC000000030C9A87020F8750F900000007000000010F878CF9000000010C9A86FC000000070F8750FD028001040000000700000009000000030F34D0FC0000000700000003000000010F34D10200000001000000090000000013867100000000000CFD9BF9000000070000000900000004135D810505000108135D450900000004045489F71386AD000CFD9BF90F350D020CFD9BFD0F350CFC000000030C9A8702000000080F878CF9000000010C9A86FC000000080000000800000008000000010F34D10200000001000000090000000013867100000000000CFD9BF90000000900000009135D8109045489F71386AD000CFD9BF90F350D020CFD9BFD0F350CFC000000030C9A87020F8750F90C9A86FC000000090F8750FD07800104128A410500000002078001080000000800000007128A7D05000000080000000200000003000000010F878CF900000001000000090F34D0FC0000000900000003000000010F34D1020000000100000009000000001386710000000000000000090000000400000002120700FC05000104135D45050000000205000108135D450900000004045489F71386AD0000000007000000000000000700000007135D810500000009000000020000000300000001120701020000000108A912FD00000009120700FC0000000900000003"
theorem small_6856321_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6856321_right_root small_6856321_right_fuel small_6856321_right_count small_6856321_right_encoded = true := by
  decide +kernel
theorem small_6856321_right_covered : CoveredBy scale carrier boxes small_6856321_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6856321_right_root small_6856321_right_fuel small_6856321_right_count small_6856321_right_encoded small_6856321_right_checked

theorem cover_6856321 : CoveredBy scale carrier boxes root_6856321 := by
  apply coveredBy_split_literal root_6856321 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0472.root_6856322 small_6856321_right_root coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0472.cover_6856322
  · exact small_6856321_right_covered
#print axioms cover_6856321

def root_6856315 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6856315_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6856315_left_fuel : Nat := 1
def small_6856315_left_count : Nat := 1
def small_6856315_left_encoded : String := "00000004"
theorem small_6856315_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6856315_left_root small_6856315_left_fuel small_6856315_left_count small_6856315_left_encoded = true := by
  decide +kernel
theorem small_6856315_left_covered : CoveredBy scale carrier boxes small_6856315_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6856315_left_root small_6856315_left_fuel small_6856315_left_count small_6856315_left_encoded small_6856315_left_checked

theorem cover_6856315 : CoveredBy scale carrier boxes root_6856315 := by
  apply coveredBy_split_literal root_6856315 small_6856315_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0472.root_6856321 coord4 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_6856315_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0472.cover_6856321
#print axioms cover_6856315

def root_6856314 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6856314 : CoveredBy scale carrier boxes root_6856314 := by
  apply coveredBy_split_literal root_6856314 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0472.root_6856315 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2594.root coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0472.cover_6856315
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2594.covered
#print axioms cover_6856314

def root_6856308 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6856308_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6856308_left_fuel : Nat := 1
def small_6856308_left_count : Nat := 1
def small_6856308_left_encoded : String := "00000003"
theorem small_6856308_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6856308_left_root small_6856308_left_fuel small_6856308_left_count small_6856308_left_encoded = true := by
  decide +kernel
theorem small_6856308_left_covered : CoveredBy scale carrier boxes small_6856308_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6856308_left_root small_6856308_left_fuel small_6856308_left_count small_6856308_left_encoded small_6856308_left_checked

theorem cover_6856308 : CoveredBy scale carrier boxes root_6856308 := by
  apply coveredBy_split_literal root_6856308 small_6856308_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0472.root_6856314 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6856308_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0472.cover_6856314
#print axioms cover_6856308

def root_6890092 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6890092_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(0), (2097152)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6890092_left_fuel : Nat := 19
def small_6890092_left_count : Nat := 131
def small_6890092_left_encoded : String := "13D7B10500000002078000FC128A7CFD000000030280010813D7B109000000040AD3577910D13D020DE7CA00000000050E6014F700000000014001040000000513F6150508C000FC0000000511FBE8FD014001080000000513F615090BE879B91011AD0200000009000000010000000A0000000400000003000000020000000110D10102000000010DE7CA000000000A0E6014F7000000000000000A13D7ED090AD3577910D13D020DE7CA000E5FD8F70000000A000000000E6014F700000000014001040000000A13F6150508C000FC11FC24FD0000000303C0010813A51109000000040BE879B91011AD020DAED8770000000A0000000A000000010000000A0000000A11FBE8FD03C0010813A51109000000040BE879B91011AD020000000A000000010000000A0000000A00000003000000020000000110D10102000000010000000A00000004128A40FD0280010813D7B109000000040AD3577910D13D020DE7CA00000000090E6014F700000000014001040000000913F61505064000FC12FFACFD00000003014001080000000913F615090BE879B9000000090000000A0000000400000009000000020000000110D10102000000010000000A13D7ED090AD3577910D13D020DE7CA000000000A0E6014F700000000014001040000000A13F61505064000FC12FFACFD000000030000000A0000000A00000002000000010000000A0000000400000003"
theorem small_6890092_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6890092_left_root small_6890092_left_fuel small_6890092_left_count small_6890092_left_encoded = true := by
  decide +kernel
theorem small_6890092_left_covered : CoveredBy scale carrier boxes small_6890092_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6890092_left_root small_6890092_left_fuel small_6890092_left_count small_6890092_left_encoded small_6890092_left_checked

theorem cover_6890092 : CoveredBy scale carrier boxes root_6890092 := by
  apply coveredBy_split_literal root_6890092 small_6890092_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2596.root coord2 false (2097152)
  · decide +kernel
  · decide +kernel
  · exact small_6890092_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2596.covered
#print axioms cover_6890092

def root_6890086 : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6890086_left_root : ZRayBox := fun j => (#[⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-13027072)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6890086_left_fuel : Nat := 1
def small_6890086_left_count : Nat := 1
def small_6890086_left_encoded : String := "00000000"
theorem small_6890086_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6890086_left_root small_6890086_left_fuel small_6890086_left_count small_6890086_left_encoded = true := by
  decide +kernel
theorem small_6890086_left_covered : CoveredBy scale carrier boxes small_6890086_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6890086_left_root small_6890086_left_fuel small_6890086_left_count small_6890086_left_encoded small_6890086_left_checked

theorem cover_6890086 : CoveredBy scale carrier boxes root_6890086 := by
  apply coveredBy_split_literal root_6890086 small_6890086_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0472.root_6890092 coord0 true (-13027072)
  · decide +kernel
  · decide +kernel
  · exact small_6890086_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0472.cover_6890092
#print axioms cover_6890086

def root_6889888 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6889888_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (10572672)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6889888_left_fuel : Nat := 22
def small_6889888_left_count : Nat := 93
def small_6889888_left_encoded : String := "0F8750F70280010413D7B10500000002078000FC128A7CFD000000030280010813D7B109000000040AD3577900000009000000050000000A0000000A13D7ED05078000FC128A7CFD000000030280010813D7B109000000040AD3577910D13D020B4D4400108010F7000000090000000010804CF70000000003C001040000000513A54D0508C000FC0000000500000009000000020000000110D10102000000010000000613D7ED090AD3577910D13D020B4D4400108010F70000000A0000000010804CF70000000003C001040000000A13A54D0508C000FC11FC24FD0000000303C0010813A51109000000040BE879B91011AD020BF3E58000000005100928F7000000000000000A00000001000000060000000A0000000A00000002000000010000000A00000004128A40FD0280010813D7B109000000040AD357790000000910D10102000000010000000A13D7ED090AD3577910D13D0200000009000000010000000A00000004000000030000000200000000"
theorem small_6889888_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6889888_left_root small_6889888_left_fuel small_6889888_left_count small_6889888_left_encoded = true := by
  decide +kernel
theorem small_6889888_left_covered : CoveredBy scale carrier boxes small_6889888_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6889888_left_root small_6889888_left_fuel small_6889888_left_count small_6889888_left_encoded small_6889888_left_checked

theorem cover_6889888 : CoveredBy scale carrier boxes root_6889888 := by
  apply coveredBy_split_literal root_6889888 small_6889888_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0472.root_6890086 coord0 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_6889888_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0472.cover_6890086
#print axioms cover_6889888

def root_6889882 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6889882_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12755968)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6889882_left_fuel : Nat := 1
def small_6889882_left_count : Nat := 1
def small_6889882_left_encoded : String := "00000001"
theorem small_6889882_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6889882_left_root small_6889882_left_fuel small_6889882_left_count small_6889882_left_encoded = true := by
  decide +kernel
theorem small_6889882_left_covered : CoveredBy scale carrier boxes small_6889882_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6889882_left_root small_6889882_left_fuel small_6889882_left_count small_6889882_left_encoded small_6889882_left_checked

theorem cover_6889882 : CoveredBy scale carrier boxes root_6889882 := by
  apply coveredBy_split_literal root_6889882 small_6889882_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0472.root_6889888 coord1 false (12755968)
  · decide +kernel
  · decide +kernel
  · exact small_6889882_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0472.cover_6889888
#print axioms cover_6889882

def root_6887430 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6887430 : CoveredBy scale carrier boxes root_6887430 := by
  apply coveredBy_split_literal root_6887430 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2595.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0472.root_6889882 coord1 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2595.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0472.cover_6889882
#print axioms cover_6887430

def root_6887425 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6887425_right_root : ZRayBox := fun j => (#[⟨⟨(12756736), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6887425_right_fuel : Nat := 1
def small_6887425_right_count : Nat := 1
def small_6887425_right_encoded : String := "00000000"
theorem small_6887425_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6887425_right_root small_6887425_right_fuel small_6887425_right_count small_6887425_right_encoded = true := by
  decide +kernel
theorem small_6887425_right_covered : CoveredBy scale carrier boxes small_6887425_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6887425_right_root small_6887425_right_fuel small_6887425_right_count small_6887425_right_encoded small_6887425_right_checked

theorem cover_6887425 : CoveredBy scale carrier boxes root_6887425 := by
  apply coveredBy_split_literal root_6887425 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0472.root_6887430 small_6887425_right_root coord0 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0472.cover_6887430
  · exact small_6887425_right_covered
#print axioms cover_6887425

def root_6893664 : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6893664_left_root : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(0), (2097152)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6893664_left_fuel : Nat := 27
def small_6893664_left_count : Nat := 411
def small_6893664_left_encoded : String := "13D7B10500000002078000FC128A7CFD000000030280010813D7B109000000040AD3577710D13D000DE7CA02000000050E6014F900000001014001040000000513F6150508C000FC0000000511FBE8FD014001080000000513F615090BE879B71011AD000000000900000000000000080000000400000003000000020000000010D10100000000000DE7CA02000000080E6014F9000000010000000813D7ED090AD3577710D13D000DE7CA020E5FD8F90140010413F5D9050000000208C000FC0000000511FBE8FD03C0010800000005000000070000000313F6150508C000FC11FC24FD0000000303C00108000000050000000711FBE8FD03C0010813A51109000000040BE879B7000000090000000813A54D090BE879B71011AD000000000900000000101171000000000000000007000000040000000300000002000000010E6014F9000000010140010413F5D9050000000208C000FC11FC24FD000000030000000711FBE8FD03C0010813A51109000000040BE879B71011AD000DAED879000000070E9625020000000100000007000000000000000713A54D090BE879B71011AD00000000070000000000000007000000040000000313F6150508C000FC11FC24FD0000000303C0010813A51109000000040BE879B71011AD000DAED879000000070E9625020000000100000007000000000000000713A54D090BE879B71011AD000DAED879000000070E962502000000010000000700000000000000070000000411FBE8FD03C0010813A51109000000040BE879B71011AD000DAED8790E96610200000009000000010E9625020000000101E0010413E9590500000002082000FC000000070000000913E99505082000FC124698FD0000000303200108000000070000000712465CFD032001080000000913C145090C730AD700000009000000070000000400000003000000020000000010117100000000000000000713A54D090BE879B71011AD000DAED8790E96610201E001040000000713E99505082000FC0000000712465CFD0460010800000009000000070000000300000002000000010E9625020000000101E0010413E9590500000002082000FC000000070000000A13E99505082000FC124698FD000000030000000712465CFD046001081383DD09000000040C730AD70000000A000000070000000A0000000300000002000000001011710000000000000000070000000400000003000000020000000010D10100000000000DE7CA020E5FD8F900000007000000010000000700000004128A40FD0280010813D7B109000000040AD3577710D13D000DE7CA02000000090E6014F900000001014001040000000913F61505064000FC12FFACFD00000003014001080000000813F615090BE879B700000009000000080000000400000009000000020000000010D10100000000000000000813D7ED090AD3577710D13D000DE7CA020E5FD8F900000009000000010E6014F9000000010140010413F5D90500000002064000FC12FFACFD0000000303C0010813A51109000000040BE879B70000000910117100000000000000000713A54D090BE879B71011AD000000000900000000101171000000000000000007000000040000000913F61505064000FC12FFACFD0000000303C0010813A51109000000040BE879B70000000910117100000000000DAED8790E96610200000008000000010E9625020000000101E00104000000070000000813A54D090BE879B71011AD000DAED879000000090E9625020000000101E001040000000A13E9950506E000FC12C820FD0000000304600108000000090000000A00000009000000020000000010117100000000000DAED8790E96610201E001040000000713E9950506E000FC000000070000000600000002000000010E9625020000000101E001040000000713E9950506E000FC0000000700000005000000020000000412FF70FD03C001080000000913A54D090BE879B70000000910117100000000000DAED879000000060E96250200000001000000050000000400000003000000020000000010D10100000000000DE7CA020E5FD8F90140010413F5D90500000002064000FC000000070000000800000008000000010E6014F9000000010140010413F5D90500000002064000FC0000000712FF70FD03C0010800000008000000070000000313F61505064000FC12FFACFD0000000303C00108000000080000000712FF70FD03C00108000000080000000500000003000000020000000400000003"
theorem small_6893664_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6893664_left_root small_6893664_left_fuel small_6893664_left_count small_6893664_left_encoded = true := by
  decide +kernel
theorem small_6893664_left_covered : CoveredBy scale carrier boxes small_6893664_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6893664_left_root small_6893664_left_fuel small_6893664_left_count small_6893664_left_encoded small_6893664_left_checked

theorem cover_6893664 : CoveredBy scale carrier boxes root_6893664 := by
  apply coveredBy_split_literal root_6893664 small_6893664_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2597.root coord2 false (2097152)
  · decide +kernel
  · decide +kernel
  · exact small_6893664_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2597.covered
#print axioms cover_6893664

def root_6893658 : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6893658_left_root : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-13027072)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6893658_left_fuel : Nat := 1
def small_6893658_left_count : Nat := 1
def small_6893658_left_encoded : String := "00000001"
theorem small_6893658_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6893658_left_root small_6893658_left_fuel small_6893658_left_count small_6893658_left_encoded = true := by
  decide +kernel
theorem small_6893658_left_covered : CoveredBy scale carrier boxes small_6893658_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6893658_left_root small_6893658_left_fuel small_6893658_left_count small_6893658_left_encoded small_6893658_left_checked

theorem cover_6893658 : CoveredBy scale carrier boxes root_6893658 := by
  apply coveredBy_split_literal root_6893658 small_6893658_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0472.root_6893664 coord1 true (-13027072)
  · decide +kernel
  · decide +kernel
  · exact small_6893658_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0472.cover_6893664
#print axioms cover_6893658

def root_6893424 : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6893424_left_root : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(8388608), (10572672)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6893424_left_fuel : Nat := 22
def small_6893424_left_count : Nat := 109
def small_6893424_left_encoded : String := "0F8750F90280010413D7B10500000002078000FC128A7CFD000000030280010813D7B109000000040AD35777000000090000000513D7ED090AD3577710D13D000B4D4402108010F9000000090000000110804CF900000001014001040000000513F6150508C000FC0000000500000009000000020000000010D10100000000000000000700000004128A40FD028001080000000913D7ED090AD357770000000910D101000000000000000008000000040000000313D7ED05078000FC128A7CFD00000003028001080000000813D7ED090AD3577710D13D000B4D4402108010F9000000080000000110804CF90000000103C0010413A511050000000208C000FC11FC24FD0000000303C001080000000513A54D090BE879B71011AD000BF3E58200000005100928F9000000010000000800000000000000070000000411FBE8FD03C001080000000813A54D0900000008000000040000000313A54D0508C000FC11FC24FD00000003000000080000000800000002000000000000000800000004128A40FD028001080000000813D7ED090AD3577710D13D0000000009000000000000000800000004000000030000000200000001"
theorem small_6893424_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6893424_left_root small_6893424_left_fuel small_6893424_left_count small_6893424_left_encoded = true := by
  decide +kernel
theorem small_6893424_left_covered : CoveredBy scale carrier boxes small_6893424_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6893424_left_root small_6893424_left_fuel small_6893424_left_count small_6893424_left_encoded small_6893424_left_checked

theorem cover_6893424 : CoveredBy scale carrier boxes root_6893424 := by
  apply coveredBy_split_literal root_6893424 small_6893424_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0472.root_6893658 coord1 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_6893424_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0472.cover_6893658
#print axioms cover_6893424

def root_6893419 : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6893419_right_root : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6893419_right_fuel : Nat := 1
def small_6893419_right_count : Nat := 1
def small_6893419_right_encoded : String := "00000001"
theorem small_6893419_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6893419_right_root small_6893419_right_fuel small_6893419_right_count small_6893419_right_encoded = true := by
  decide +kernel
theorem small_6893419_right_covered : CoveredBy scale carrier boxes small_6893419_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6893419_right_root small_6893419_right_fuel small_6893419_right_count small_6893419_right_encoded small_6893419_right_checked

theorem cover_6893419 : CoveredBy scale carrier boxes root_6893419 := by
  apply coveredBy_split_literal root_6893419 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0472.root_6893424 small_6893419_right_root coord1 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0472.cover_6893424
  · exact small_6893419_right_covered
#print axioms cover_6893419

def root_6897110 : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6897110 : CoveredBy scale carrier boxes root_6897110 := by
  apply coveredBy_split_literal root_6897110 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2598.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2599.root coord2 false (2097152)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2598.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2599.covered
#print axioms cover_6897110

def root_6897104 : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6897104_left_root : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(8388608), (12755968)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6897104_left_fuel : Nat := 1
def small_6897104_left_count : Nat := 1
def small_6897104_left_encoded : String := "00000001"
theorem small_6897104_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6897104_left_root small_6897104_left_fuel small_6897104_left_count small_6897104_left_encoded = true := by
  decide +kernel
theorem small_6897104_left_covered : CoveredBy scale carrier boxes small_6897104_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6897104_left_root small_6897104_left_fuel small_6897104_left_count small_6897104_left_encoded small_6897104_left_checked

theorem cover_6897104 : CoveredBy scale carrier boxes root_6897104 := by
  apply coveredBy_split_literal root_6897104 small_6897104_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0472.root_6897110 coord1 false (12755968)
  · decide +kernel
  · decide +kernel
  · exact small_6897104_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0472.cover_6897110
#print axioms cover_6897104

def root_6893418 : ZRayBox := fun j => (#[⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6893418 : CoveredBy scale carrier boxes root_6893418 := by
  apply coveredBy_split_literal root_6893418 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0472.root_6893419 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0472.root_6897104 coord1 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0472.cover_6893419
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0472.cover_6897104
#print axioms cover_6893418

def root_6893412 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6893412_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12755968)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6893412_left_fuel : Nat := 1
def small_6893412_left_count : Nat := 1
def small_6893412_left_encoded : String := "00000000"
theorem small_6893412_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6893412_left_root small_6893412_left_fuel small_6893412_left_count small_6893412_left_encoded = true := by
  decide +kernel
theorem small_6893412_left_covered : CoveredBy scale carrier boxes small_6893412_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6893412_left_root small_6893412_left_fuel small_6893412_left_count small_6893412_left_encoded small_6893412_left_checked

theorem cover_6893412 : CoveredBy scale carrier boxes root_6893412 := by
  apply coveredBy_split_literal root_6893412 small_6893412_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0472.root_6893418 coord0 false (12755968)
  · decide +kernel
  · decide +kernel
  · exact small_6893412_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0472.cover_6893418
#print axioms cover_6893412

def root_6887424 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6887424 : CoveredBy scale carrier boxes root_6887424 := by
  apply coveredBy_split_literal root_6887424 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0472.root_6887425 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0472.root_6893412 coord0 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0472.cover_6887425
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0472.cover_6893412
#print axioms cover_6887424

def root_6887418 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6887418_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(14529024), (16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6887418_left_fuel : Nat := 1
def small_6887418_left_count : Nat := 1
def small_6887418_left_encoded : String := "00000004"
theorem small_6887418_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6887418_left_root small_6887418_left_fuel small_6887418_left_count small_6887418_left_encoded = true := by
  decide +kernel
theorem small_6887418_left_covered : CoveredBy scale carrier boxes small_6887418_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6887418_left_root small_6887418_left_fuel small_6887418_left_count small_6887418_left_encoded small_6887418_left_checked

theorem cover_6887418 : CoveredBy scale carrier boxes root_6887418 := by
  apply coveredBy_split_literal root_6887418 small_6887418_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0472.root_6887424 coord4 true (16243968)
  · decide +kernel
  · decide +kernel
  · exact small_6887418_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0472.cover_6887424
#print axioms cover_6887418

def root_6901446 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6901446 : CoveredBy scale carrier boxes root_6901446 := by
  apply coveredBy_split_literal root_6901446 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2600.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2601.root coord0 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2600.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2601.covered
#print axioms cover_6901446

def root_6901441 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6901441_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(16244736), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6901441_right_fuel : Nat := 1
def small_6901441_right_count : Nat := 1
def small_6901441_right_encoded : String := "00000004"
theorem small_6901441_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6901441_right_root small_6901441_right_fuel small_6901441_right_count small_6901441_right_encoded = true := by
  decide +kernel
theorem small_6901441_right_covered : CoveredBy scale carrier boxes small_6901441_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6901441_right_root small_6901441_right_fuel small_6901441_right_count small_6901441_right_encoded small_6901441_right_checked

theorem cover_6901441 : CoveredBy scale carrier boxes root_6901441 := by
  apply coveredBy_split_literal root_6901441 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0472.root_6901446 small_6901441_right_root coord4 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0472.cover_6901446
  · exact small_6901441_right_covered
#print axioms cover_6901441

def root_6887417 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6887417 : CoveredBy scale carrier boxes root_6887417 := by
  apply coveredBy_split_literal root_6887417 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0472.root_6887418 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0472.root_6901441 coord4 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0472.cover_6887418
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0472.cover_6901441
#print axioms cover_6887417

def root_6887411 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6887411_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6887411_left_fuel : Nat := 1
def small_6887411_left_count : Nat := 1
def small_6887411_left_encoded : String := "00000003"
theorem small_6887411_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6887411_left_root small_6887411_left_fuel small_6887411_left_count small_6887411_left_encoded = true := by
  decide +kernel
theorem small_6887411_left_covered : CoveredBy scale carrier boxes small_6887411_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6887411_left_root small_6887411_left_fuel small_6887411_left_count small_6887411_left_encoded small_6887411_left_checked

theorem cover_6887411 : CoveredBy scale carrier boxes root_6887411 := by
  apply coveredBy_split_literal root_6887411 small_6887411_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0472.root_6887417 coord3 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_6887411_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0472.cover_6887417
#print axioms cover_6887411

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0472
