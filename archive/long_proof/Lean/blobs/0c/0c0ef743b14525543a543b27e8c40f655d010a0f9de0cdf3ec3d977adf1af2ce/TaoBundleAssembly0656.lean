import TaoBundleAssembly0655
import TaoBundleChunkBatch0906
import TaoBundleChunkBatch0907
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0656
def root_9659219 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9659219 : CoveredBy scale carrier boxes root_9659219 := by
  apply coveredBy_split_literal root_9659219 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0655.root_9659220 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3622.root coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0655.cover_9659220
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3622.covered
#print axioms cover_9659219

def root_9659214 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9659214_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9659214_right_fuel : Nat := 1
def small_9659214_right_count : Nat := 1
def small_9659214_right_encoded : String := "00000004"
theorem small_9659214_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9659214_right_root small_9659214_right_fuel small_9659214_right_count small_9659214_right_encoded = true := by
  decide +kernel
theorem small_9659214_right_covered : CoveredBy scale carrier boxes small_9659214_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9659214_right_root small_9659214_right_fuel small_9659214_right_count small_9659214_right_encoded small_9659214_right_checked

theorem cover_9659214 : CoveredBy scale carrier boxes root_9659214 := by
  apply coveredBy_split_literal root_9659214 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0656.root_9659219 small_9659214_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0656.cover_9659219
  · exact small_9659214_right_covered
#print axioms cover_9659214

def root_9680411 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9680411 : CoveredBy scale carrier boxes root_9680411 := by
  apply coveredBy_split_literal root_9680411 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3623.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3624.root coord1 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3623.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3624.covered
#print axioms cover_9680411

def root_9680405 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9680405_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9680405_left_fuel : Nat := 1
def small_9680405_left_count : Nat := 1
def small_9680405_left_encoded : String := "00000000"
theorem small_9680405_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9680405_left_root small_9680405_left_fuel small_9680405_left_count small_9680405_left_encoded = true := by
  decide +kernel
theorem small_9680405_left_covered : CoveredBy scale carrier boxes small_9680405_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9680405_left_root small_9680405_left_fuel small_9680405_left_count small_9680405_left_encoded small_9680405_left_checked

theorem cover_9680405 : CoveredBy scale carrier boxes root_9680405 := by
  apply coveredBy_split_literal root_9680405 small_9680405_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0656.root_9680411 coord0 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_9680405_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0656.cover_9680411
#print axioms cover_9680405

def root_9680404 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9680404_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9680404_right_fuel : Nat := 21
def small_9680404_right_count : Nat := 169
def small_9680404_right_encoded : String := "1386AD000CFD9BF90F350D020CFD9BFB0F350D040CFD9C070F34D0FC00000007000000030F350CFC000000030C9A87020F8750F90C9A87040F8750FB0C9A86FC000000070F8751070000000300000007000000020F878CFB000000020C9A86FC0F878D0700000009000000030F87510700000003078000FE128A7D09067ECE8112EA5900000000000B4D44020000000610804CF90000000100000009000000060000000400000009000000010F878CF9000000010C9A87040F8750FB0C9A86FC000000070F8751070000000300000007000000020F878CFB000000020C9A86FC0F878D07078000FE0000000700000007000000030F87510700000003078000FE128A7D09067ECE8112EA5900000000000DE7CA020E5FD8F90DE7CA040000000700000009000000010E6014F9000000010DE7CA040000000700000009000000070000000400000009000000020F34D104000000020CFD9C07000000090F350CFC000000030C9A87020000000900000009000000010F34D102000000010CFD9BFB0F350D040CFD9C070F34D0FC00000007000000030F350CFC000000030C9A87040F8750FB00000007000000020F878CFB000000020C9A86FC0F878D07078000FE0000000700000007000000030F87510700000003078000FE128A7D09067ECE8112EA5900000000000AD3577910D13D020DE7CA04000000070E6014FB00000002000000090000000110D10102000000010DE7CA04000000070E6014FB00000002000000070000000700000004128A410900000004067ECE8112EA5900000000000AD35779000000070000000900000007000000020F34D104000000020CFD9C07000000090F350CFC000000030C9A86FC0F878D0700000009000000030F87510700000003078000FE128A7D09067ECE810000000900000009000000040000000500000000"
theorem small_9680404_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9680404_right_root small_9680404_right_fuel small_9680404_right_count small_9680404_right_encoded = true := by
  decide +kernel
theorem small_9680404_right_covered : CoveredBy scale carrier boxes small_9680404_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9680404_right_root small_9680404_right_fuel small_9680404_right_count small_9680404_right_encoded small_9680404_right_checked

theorem cover_9680404 : CoveredBy scale carrier boxes root_9680404 := by
  apply coveredBy_split_literal root_9680404 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0656.root_9680405 small_9680404_right_root coord0 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0656.cover_9680405
  · exact small_9680404_right_covered
#print axioms cover_9680404

def root_9680399 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9680399_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9680399_right_fuel : Nat := 1
def small_9680399_right_count : Nat := 1
def small_9680399_right_encoded : String := "00000004"
theorem small_9680399_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9680399_right_root small_9680399_right_fuel small_9680399_right_count small_9680399_right_encoded = true := by
  decide +kernel
theorem small_9680399_right_covered : CoveredBy scale carrier boxes small_9680399_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9680399_right_root small_9680399_right_fuel small_9680399_right_count small_9680399_right_encoded small_9680399_right_checked

theorem cover_9680399 : CoveredBy scale carrier boxes root_9680399 := by
  apply coveredBy_split_literal root_9680399 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0656.root_9680404 small_9680399_right_root coord4 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0656.cover_9680404
  · exact small_9680399_right_covered
#print axioms cover_9680399

def root_9680398 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9680398_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9680398_right_fuel : Nat := 17
def small_9680398_right_count : Nat := 117
def small_9680398_right_encoded : String := "135D45090000000404548A0113867100000000000CFD9BF90F350D020CFD9BFB0F350D040CFD9C07000000090F350CFC000000030C9A87020F8750F90C9A87040F8750FB0C9A86FC000000070F87510700000003028000FE00000007000000060000000200000009000000010F878CF9000000010C9A87040F8750FB0C9A86FC000000070F87510700000003028000FE0000000700000007000000020F878CFB0000000200000009000000020F34D1040000000200000009000000010F34D102000000010CFD9BFB0F350D040CFD9C070F34D0FC00000007000000030F350CFC000000030C9A87040F8750FB0C9A86FC000000070F87510700000003028000FE0000000700000005000000020F878CFB000000020C9A86FC0F878D07000000080000000300000005000000020F34D10400000002000000091386AD000CFD9BF90F350D020CFD9BFB0F350D040CFD9C07000000090F350CFC000000030C9A8702000000090F878CF9000000010C9A870400000007000000090000000200000009000000010F34D102000000010CFD9BFB0F350D040CFD9C07000000070F350CFC000000030C9A8704000000070F878CFB000000020C9A86FC0000000700000009000000020F34D104000000020000000900000000"
theorem small_9680398_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9680398_right_root small_9680398_right_fuel small_9680398_right_count small_9680398_right_encoded = true := by
  decide +kernel
theorem small_9680398_right_covered : CoveredBy scale carrier boxes small_9680398_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9680398_right_root small_9680398_right_fuel small_9680398_right_count small_9680398_right_encoded small_9680398_right_checked

theorem cover_9680398 : CoveredBy scale carrier boxes root_9680398 := by
  apply coveredBy_split_literal root_9680398 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0656.root_9680399 small_9680398_right_root coord4 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0656.cover_9680399
  · exact small_9680398_right_covered
#print axioms cover_9680398

def root_9680392 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9680392_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9680392_left_fuel : Nat := 1
def small_9680392_left_count : Nat := 1
def small_9680392_left_encoded : String := "00000003"
theorem small_9680392_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9680392_left_root small_9680392_left_fuel small_9680392_left_count small_9680392_left_encoded = true := by
  decide +kernel
theorem small_9680392_left_covered : CoveredBy scale carrier boxes small_9680392_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9680392_left_root small_9680392_left_fuel small_9680392_left_count small_9680392_left_encoded small_9680392_left_checked

theorem cover_9680392 : CoveredBy scale carrier boxes root_9680392 := by
  apply coveredBy_split_literal root_9680392 small_9680392_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0656.root_9680398 coord3 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_9680392_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0656.cover_9680398
#print axioms cover_9680392

def root_9680306 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9680306_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9680306_left_fuel : Nat := 9
def small_9680306_left_count : Nat := 41
def small_9680306_left_encoded : String := "120700FC050000FE135D810904548A0113867100000000000CFD9BF90F350D020000000A000000010F34D102000000010CFD9BFB00000007000000081386AD000CFD9BF90F350D020CFD9BFB0000000700000009000000010F34D10200000001000000070000000000000004135D45090000000404548A0113867100000000000CFD9BF900000009000000091386AD000CFD9BF900000007000000090000000000000003"
theorem small_9680306_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9680306_left_root small_9680306_left_fuel small_9680306_left_count small_9680306_left_encoded = true := by
  decide +kernel
theorem small_9680306_left_covered : CoveredBy scale carrier boxes small_9680306_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9680306_left_root small_9680306_left_fuel small_9680306_left_count small_9680306_left_encoded small_9680306_left_checked

theorem cover_9680306 : CoveredBy scale carrier boxes root_9680306 := by
  apply coveredBy_split_literal root_9680306 small_9680306_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0656.root_9680392 coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_9680306_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0656.cover_9680392
#print axioms cover_9680306

def root_9680301 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9680301_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9680301_right_fuel : Nat := 1
def small_9680301_right_count : Nat := 1
def small_9680301_right_encoded : String := "00000002"
theorem small_9680301_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9680301_right_root small_9680301_right_fuel small_9680301_right_count small_9680301_right_encoded = true := by
  decide +kernel
theorem small_9680301_right_covered : CoveredBy scale carrier boxes small_9680301_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9680301_right_root small_9680301_right_fuel small_9680301_right_count small_9680301_right_encoded small_9680301_right_checked

theorem cover_9680301 : CoveredBy scale carrier boxes root_9680301 := by
  apply coveredBy_split_literal root_9680301 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0656.root_9680306 small_9680301_right_root coord2 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0656.cover_9680306
  · exact small_9680301_right_covered
#print axioms cover_9680301

def root_9680300 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9680300_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9680300_right_fuel : Nat := 15
def small_9680300_right_count : Nat := 37
def small_9680300_right_encoded : String := "120701040000000208A913070000000912073CFC00000003050000FE135D810904548A0113867100000000000CFD9BF90F350D02045489FB1386AD040CFD9C07000000090F350CFC000000030C9A870200000009000000090000000200000009000000010F34D10200000001000000091386AD000CFD9BF90F350D02000000090000000100000009000000000000000400000009"
theorem small_9680300_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9680300_right_root small_9680300_right_fuel small_9680300_right_count small_9680300_right_encoded = true := by
  decide +kernel
theorem small_9680300_right_covered : CoveredBy scale carrier boxes small_9680300_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9680300_right_root small_9680300_right_fuel small_9680300_right_count small_9680300_right_encoded small_9680300_right_checked

theorem cover_9680300 : CoveredBy scale carrier boxes root_9680300 := by
  apply coveredBy_split_literal root_9680300 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0656.root_9680301 small_9680300_right_root coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0656.cover_9680301
  · exact small_9680300_right_covered
#print axioms cover_9680300

def root_9680295 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9680295_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9680295_right_fuel : Nat := 1
def small_9680295_right_count : Nat := 1
def small_9680295_right_encoded : String := "00000001"
theorem small_9680295_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9680295_right_root small_9680295_right_fuel small_9680295_right_count small_9680295_right_encoded = true := by
  decide +kernel
theorem small_9680295_right_covered : CoveredBy scale carrier boxes small_9680295_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9680295_right_root small_9680295_right_fuel small_9680295_right_count small_9680295_right_encoded small_9680295_right_checked

theorem cover_9680295 : CoveredBy scale carrier boxes root_9680295 := by
  apply coveredBy_split_literal root_9680295 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0656.root_9680300 small_9680295_right_root coord1 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0656.cover_9680300
  · exact small_9680295_right_covered
#print axioms cover_9680295

def root_9680294 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9680294_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9680294_right_fuel : Nat := 27
def small_9680294_right_count : Nat := 321
def small_9680294_right_encoded : String := "120701020000000108A912FB12073D0408A91307120700FC050000FE135D810904548A01000000080000000700000004000000080000000312073CFC00000003050000FE135D810904548A011386710000000000045489F91386AD020CFD9BFB0F350D040CFD9C070F34D0FC00000008000000030F350CFC000000030C9A87040F8750FB0C9A86FC0F878D0700000007000000030F87510700000003078000FE128A7D09022A458113E1C50000000000067ECE7900000008000000080000000700000004128A410900000004022A45810000000800000007000000020F878CFB000000020C9A86FC0F878D07078000FE128A7D09022A45810000000813E20100067ECE790000000700000008000000000000000400000008000000030F87510700000003078000FE128A7D09022A458113E1C50000000000067ECE7912EA95020DE7CA040000000800000005000000010000000513E20100067ECE7912EA95020DE7CA040000000A000000050000000100000005000000000000000400000005000000020F34D104000000020CFD9C070F34D0FC00000008000000030F350CFC000000030C9A86FC0F878D07078000FE128A7D09022A45810000000813E20100067ECE79000000090000000500000000000000040000000500000003000000050000000113867102000000010CFD9BFB0F350D040CFD9C070F34D0FC00000008000000030F350CFC000000030C9A87040F8750FB0C9A86FC000000080F87510700000003078000FE128A7D09022A458100000008000000070000000400000005000000020F878CFB000000020C9A86FC0F878D07000000080000000300000005000000020F34D104000000020CFD9C07000000080F350CFC00000003000000051386AD00045489F91386AD020CFD9BFB0F350D040CFD9C070F34D0FC00000007000000030F350CFC000000030C9A87040F8750FB00000007000000020F878CFB000000020C9A86FC0F878D0700000007000000030F87510700000003078000FE128A7D090000000A0000000400000005000000020F34D104000000020CFD9C07000000090F350CFC000000030C9A86FC0F878D07078000FE128A7D09067ECE810000000900000009000000040000000500000003000000050000000113867102000000010CFD9BFB0F350D040CFD9C07000000070F350CFC000000030C9A87040F8750FB00000007000000020F878CFB000000020C9A86FC0F878D07000000070000000300000005000000020F34D104000000020CFD9C070F34D0FC078000FE0000000900000008000000030F350CFC00000003000000050000000000000004135D45090000000404548A011386710000000000045489F91386AD020CFD9BFB0F350D040CFD9C07000000080F350CFC000000030C9A87040000000800000005000000020F34D10400000002000000050000000113867102000000010CFD9BFB0F350D040000000800000002000000081386AD00045489F91386AD020CFD9BFB0F350D040CFD9C07000000070F350CFC000000030C9A87040000000700000005000000020F34D10400000002000000050000000113867102000000010CFD9BFB0F350D040CFD9C07000000070F350CFC0000000300000005000000020F34D10400000002000000050000000000000002120701040000000208A913070000000912073CFC00000003050000FE135D810904548A011386710000000000045489F900000009000000051386AD00045489F90000000900000005000000000000000400000005"
theorem small_9680294_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9680294_right_root small_9680294_right_fuel small_9680294_right_count small_9680294_right_encoded = true := by
  decide +kernel
theorem small_9680294_right_covered : CoveredBy scale carrier boxes small_9680294_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9680294_right_root small_9680294_right_fuel small_9680294_right_count small_9680294_right_encoded small_9680294_right_checked

theorem cover_9680294 : CoveredBy scale carrier boxes root_9680294 := by
  apply coveredBy_split_literal root_9680294 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0656.root_9680295 small_9680294_right_root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0656.cover_9680295
  · exact small_9680294_right_covered
#print axioms cover_9680294

def root_9680288 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9680288_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9680288_left_fuel : Nat := 1
def small_9680288_left_count : Nat := 1
def small_9680288_left_encoded : String := "00000000"
theorem small_9680288_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9680288_left_root small_9680288_left_fuel small_9680288_left_count small_9680288_left_encoded = true := by
  decide +kernel
theorem small_9680288_left_covered : CoveredBy scale carrier boxes small_9680288_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9680288_left_root small_9680288_left_fuel small_9680288_left_count small_9680288_left_encoded small_9680288_left_checked

theorem cover_9680288 : CoveredBy scale carrier boxes root_9680288 := by
  apply coveredBy_split_literal root_9680288 small_9680288_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0656.root_9680294 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_9680288_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0656.cover_9680294
#print axioms cover_9680288

def root_9680287 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9680287_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9680287_right_fuel : Nat := 22
def small_9680287_right_count : Nat := 255
def small_9680287_right_encoded : String := "12073D0008A912F912073D0208A912FB12073D0408A91307120700FC050000FE135D81090CFD9C010F34D10000000000000000070000000700000004135D4509000000040CFD9C0100000009000000070000000312073CFC00000003050000FE135D81090CFD9C010F34D100000000000CFD9BF90F350D020CFD9BFB0F350D040CFD9C070F34D0FC00000007000000030F350CFC000000030C9A87020F8750F90C9A87040000000700000009000000010F878CF9000000010C9A8704000000070F878CFB0000000200000009000000020F34D1040000000200000009000000010F34D102000000010CFD9BFB0F350D040CFD9C07000000070F350CFC000000030C9A8704000000070F878CFB0000000200000007000000020F34D104000000020CFD9C07000000090F350CFC00000003000000090F350D000CFD9BF90F350D020CFD9BFB0F350D040CFD9C0700000007000000070000000200000009000000010F34D102000000010CFD9BFB000000070F34D10400000002000000090000000000000004135D4509000000040CFD9C010F34D100000000000CFD9BF90F350D020CFD9BFB0F350D040CFD9C07000000070F350CFC00000003000000090000000200000009000000010F34D102000000010CFD9BFB0F350D0400000007000000020F34D10400000002000000090F350D000CFD9BF90F350D0200000009000000010F34D102000000010CFD9BFB00000007000000090000000000000002120701040000000208A913070000000912073CFC00000003050000FE000000090000000900000001120701020000000108A912FB12073D0408A91307120700FC000000070000000312073CFC00000003050000FE135D81090CFD9C010F34D10000000000045489F91386AD020CFD9BFB0F350D0400000007000000020F34D104000000020CFD9C07000000090F350CFC000000030C9A86FC0F878D070000000900000003000000050000000113867102000000010CFD9BFB0F350D0400000007000000020F34D104000000020CFD9C07000000090F350CFC00000003000000050F350D00045489F91386AD020CFD9BFB000000070F34D1040000000200000009000000011386710200000001000000070000000000000004135D4509000000040CFD9C010F34D10000000000045489F91386AD020CFD9BFB0F350D0400000007000000020F34D10400000002000000090000000113867102000000010CFD9BFB0F350D0400000007000000020F34D10400000002000000050F350D00045489F91386AD020CFD9BFB0000000700000007000000011386710200000001000000070000000000000002120701040000000208A913070000000912073CFC00000003050000FE135D81090CFD9C010000000900000009000000040000000900000000"
theorem small_9680287_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9680287_right_root small_9680287_right_fuel small_9680287_right_count small_9680287_right_encoded = true := by
  decide +kernel
theorem small_9680287_right_covered : CoveredBy scale carrier boxes small_9680287_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9680287_right_root small_9680287_right_fuel small_9680287_right_count small_9680287_right_encoded small_9680287_right_checked

theorem cover_9680287 : CoveredBy scale carrier boxes root_9680287 := by
  apply coveredBy_split_literal root_9680287 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0656.root_9680288 small_9680287_right_root coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0656.cover_9680288
  · exact small_9680287_right_covered
#print axioms cover_9680287

def root_9680281 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9680281_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9680281_left_fuel : Nat := 1
def small_9680281_left_count : Nat := 1
def small_9680281_left_encoded : String := "00000004"
theorem small_9680281_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9680281_left_root small_9680281_left_fuel small_9680281_left_count small_9680281_left_encoded = true := by
  decide +kernel
theorem small_9680281_left_covered : CoveredBy scale carrier boxes small_9680281_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9680281_left_root small_9680281_left_fuel small_9680281_left_count small_9680281_left_encoded small_9680281_left_checked

theorem cover_9680281 : CoveredBy scale carrier boxes root_9680281 := by
  apply coveredBy_split_literal root_9680281 small_9680281_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0656.root_9680287 coord4 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_9680281_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0656.cover_9680287
#print axioms cover_9680281

def root_9659213 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9659213 : CoveredBy scale carrier boxes root_9659213 := by
  apply coveredBy_split_literal root_9659213 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0656.root_9659214 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0656.root_9680281 coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0656.cover_9659214
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0656.cover_9680281
#print axioms cover_9659213

def root_9659208 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9659208_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9659208_right_fuel : Nat := 1
def small_9659208_right_count : Nat := 1
def small_9659208_right_encoded : String := "00000003"
theorem small_9659208_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9659208_right_root small_9659208_right_fuel small_9659208_right_count small_9659208_right_encoded = true := by
  decide +kernel
theorem small_9659208_right_covered : CoveredBy scale carrier boxes small_9659208_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9659208_right_root small_9659208_right_fuel small_9659208_right_count small_9659208_right_encoded small_9659208_right_checked

theorem cover_9659208 : CoveredBy scale carrier boxes root_9659208 := by
  apply coveredBy_split_literal root_9659208 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0656.root_9659213 small_9659208_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0656.cover_9659213
  · exact small_9659208_right_covered
#print axioms cover_9659208

def root_9685743 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9685743_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9685743_right_fuel : Nat := 28
def small_9685743_right_count : Nat := 161
def small_9685743_right_encoded : String := "0F34D102000000010CFD9BFB0F350D040CFD9C090000000A0F350CFE000000040C9A87040F8750FB0C9A86FE0F878D0900000009000000040F87510900000004078000FC128A7D07022A458113E1C500000000000AD3577910D13D020B4D44040000000910804CFB000000020000000A0000000110D1010200000001000000090000000A000000030000000A000000020F878CFB000000020C9A86FE0F878D090000000A000000040F87510900000004078000FC128A7D07022A458113E1C500000000000AD3577910D13D020DE7CA040E5FD8FB0B4D43FE0000000A108011090000000408C000FC11FC25070000000A000000030000000A000000020E6014FB000000020B4D43FE10804D090000000A00000004108011090000000408C000FC11FC25070115234113F85900000000000BE879B91011AD020DAED87B0E9661040000000A000000020000000A000000010000000A0000000A00000003000000050000000110D10102000000010000000A13E201000AD357790000000A0000000A00000000000000030000000A000000020F34D104000000020CFD9C090000000A0F350CFE000000040C9A86FE0F878D09078000FC128A7D07022A458113E1C500000000000AD3577910D13D020AD3577B0000000A0000000A000000010000000A0000000A000000030000000A000000040F87510900000004078000FC128A7D07022A458113E1C500000000000AD3577910D13D020AD3577B10D13D040B4D43FE10804D090000000A00000004000000050000000210D1010400000002000000050000000110D10102000000010000000513E201000AD3577910D13D020AD3577B10D13D040000000A000000020000000A000000010000000A000000000000000300000005"
theorem small_9685743_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9685743_right_root small_9685743_right_fuel small_9685743_right_count small_9685743_right_encoded = true := by
  decide +kernel
theorem small_9685743_right_covered : CoveredBy scale carrier boxes small_9685743_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9685743_right_root small_9685743_right_fuel small_9685743_right_count small_9685743_right_encoded small_9685743_right_checked

theorem cover_9685743 : CoveredBy scale carrier boxes root_9685743 := by
  apply coveredBy_split_literal root_9685743 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3625.root small_9685743_right_root coord1 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3625.covered
  · exact small_9685743_right_covered
#print axioms cover_9685743

def root_9685737 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9685737_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9685737_left_fuel : Nat := 1
def small_9685737_left_count : Nat := 1
def small_9685737_left_encoded : String := "00000000"
theorem small_9685737_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9685737_left_root small_9685737_left_fuel small_9685737_left_count small_9685737_left_encoded = true := by
  decide +kernel
theorem small_9685737_left_covered : CoveredBy scale carrier boxes small_9685737_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9685737_left_root small_9685737_left_fuel small_9685737_left_count small_9685737_left_encoded small_9685737_left_checked

theorem cover_9685737 : CoveredBy scale carrier boxes root_9685737 := by
  apply coveredBy_split_literal root_9685737 small_9685737_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0656.root_9685743 coord0 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_9685737_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0656.cover_9685743
#print axioms cover_9685737

def root_9685736 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9685736_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9685736_right_fuel : Nat := 20
def small_9685736_right_count : Nat := 163
def small_9685736_right_encoded : String := "1386AD000CFD9BF90F350D020CFD9BFB0F350D040CFD9C090F34D0FE00000008000000040F350CFE000000040C9A87020F8750F90C9A87040F8750FB0C9A86FE000000080F8751090000000400000008000000020F878CFB000000020C9A86FE000000080F8751090000000400000008000000010F878CF9000000010C9A87040F8750FB0C9A86FE0F878D090000000A000000040F87510900000004078000FC128A7D07067ECE8112EA5900000000000DE7CA02000000060000000A00000006000000030000000A000000020F878CFB000000020C9A86FE0F878D09078000FC0000000800000008000000040F87510900000004078000FC128A7D07067ECE8112EA5900000000000DE7CA020E5FD8F900000008000000010E6014F9000000010000000A00000008000000030000000A000000020F34D104000000020CFD9C090F34D0FE00000008000000040F350CFE000000040C9A87020F8750F900000008000000010F878CF9000000010C9A86FE0F878D09078000FC0000000800000008000000040F87510900000004078000FC128A7D07067ECE8112EA5900000000000AD3577B10D13D040DE7CA02000000080E6014F9000000010000000A0000000210D10104000000020DE7CA02000000080E6014F900000001000000080000000800000003128A410700000003067ECE8112EA5900000000000AD3577B000000080000000A00000008000000010F34D102000000010CFD9BFB0F350D040CFD9C090000000A0F350CFE000000040C9A87040000000A0000000A000000020F34D104000000020CFD9C090000000A0F350CFE000000040C9A86FE0F878D090000000A000000040F87510900000004078000FC128A7D07067ECE810000000A0000000A000000030000000500000000"
theorem small_9685736_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9685736_right_root small_9685736_right_fuel small_9685736_right_count small_9685736_right_encoded = true := by
  decide +kernel
theorem small_9685736_right_covered : CoveredBy scale carrier boxes small_9685736_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9685736_right_root small_9685736_right_fuel small_9685736_right_count small_9685736_right_encoded small_9685736_right_checked

theorem cover_9685736 : CoveredBy scale carrier boxes root_9685736 := by
  apply coveredBy_split_literal root_9685736 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0656.root_9685737 small_9685736_right_root coord0 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0656.cover_9685737
  · exact small_9685736_right_covered
#print axioms cover_9685736

def root_9685731 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9685731_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9685731_right_fuel : Nat := 1
def small_9685731_right_count : Nat := 1
def small_9685731_right_encoded : String := "00000003"
theorem small_9685731_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9685731_right_root small_9685731_right_fuel small_9685731_right_count small_9685731_right_encoded = true := by
  decide +kernel
theorem small_9685731_right_covered : CoveredBy scale carrier boxes small_9685731_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9685731_right_root small_9685731_right_fuel small_9685731_right_count small_9685731_right_encoded small_9685731_right_checked

theorem cover_9685731 : CoveredBy scale carrier boxes root_9685731 := by
  apply coveredBy_split_literal root_9685731 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0656.root_9685736 small_9685731_right_root coord3 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0656.cover_9685736
  · exact small_9685731_right_covered
#print axioms cover_9685731

def root_9685730 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9685730_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9685730_right_fuel : Nat := 17
def small_9685730_right_count : Nat := 109
def small_9685730_right_encoded : String := "135D45070000000304548A0113867100000000000CFD9BF90F350D020CFD9BFB0F350D040CFD9C090000000A0F350CFE000000040C9A87020F8750F90C9A87040F8750FB0C9A86FE000000080F87510900000004028000FC0000000800000006000000020F878CFB000000020C9A86FE000000080F87510900000004028000FC0000000800000008000000010F878CF9000000010C9A87040000000A0F878CFB000000020000000A000000020F34D104000000020CFD9C090F34D0FE00000007000000040F350CFE000000040C9A87020F8750F90C9A86FE000000080F87510900000004028000FC0000000800000005000000010F878CF9000000010C9A86FE0F878D09000000070000000400000005000000010F34D102000000010CFD9BFB0F350D040000000A000000020000000A1386AD000CFD9BF90F350D020CFD9BFB0F350D040CFD9C090000000A0F350CFE000000040C9A87020F8750F900000008000000010000000A000000020F34D104000000020CFD9C09000000080F350CFE000000040C9A8702000000080F878CF9000000010C9A86FE000000080000000A000000010F34D102000000010000000A00000000"
theorem small_9685730_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9685730_right_root small_9685730_right_fuel small_9685730_right_count small_9685730_right_encoded = true := by
  decide +kernel
theorem small_9685730_right_covered : CoveredBy scale carrier boxes small_9685730_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9685730_right_root small_9685730_right_fuel small_9685730_right_count small_9685730_right_encoded small_9685730_right_checked

theorem cover_9685730 : CoveredBy scale carrier boxes root_9685730 := by
  apply coveredBy_split_literal root_9685730 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0656.root_9685731 small_9685730_right_root coord3 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0656.cover_9685731
  · exact small_9685730_right_covered
#print axioms cover_9685730

def root_9685724 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9685724_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9685724_left_fuel : Nat := 1
def small_9685724_left_count : Nat := 1
def small_9685724_left_encoded : String := "00000004"
theorem small_9685724_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9685724_left_root small_9685724_left_fuel small_9685724_left_count small_9685724_left_encoded = true := by
  decide +kernel
theorem small_9685724_left_covered : CoveredBy scale carrier boxes small_9685724_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9685724_left_root small_9685724_left_fuel small_9685724_left_count small_9685724_left_encoded small_9685724_left_checked

theorem cover_9685724 : CoveredBy scale carrier boxes root_9685724 := by
  apply coveredBy_split_literal root_9685724 small_9685724_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0656.root_9685730 coord4 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_9685724_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0656.cover_9685730
#print axioms cover_9685724

def root_9685634 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9685634_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9685634_left_fuel : Nat := 10
def small_9685634_left_count : Nat := 41
def small_9685634_left_encoded : String := "120700FE050000FC135D810704548A0113867100000000000CFD9BF90F350D020CFD9BFB000000090F34D1040000000200000007000000010F34D10200000001000000091386AD000CFD9BF90F350D0200000008000000010F34D102000000010000000A0000000000000003135D45070000000304548A0113867100000000000CFD9BF9000000090000000A1386AD000CFD9BF9000000080000000A0000000000000004"
theorem small_9685634_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9685634_left_root small_9685634_left_fuel small_9685634_left_count small_9685634_left_encoded = true := by
  decide +kernel
theorem small_9685634_left_covered : CoveredBy scale carrier boxes small_9685634_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9685634_left_root small_9685634_left_fuel small_9685634_left_count small_9685634_left_encoded small_9685634_left_checked

theorem cover_9685634 : CoveredBy scale carrier boxes root_9685634 := by
  apply coveredBy_split_literal root_9685634 small_9685634_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0656.root_9685724 coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_9685634_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0656.cover_9685724
#print axioms cover_9685634

def root_9685629 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9685629_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9685629_right_fuel : Nat := 1
def small_9685629_right_count : Nat := 1
def small_9685629_right_encoded : String := "00000002"
theorem small_9685629_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9685629_right_root small_9685629_right_fuel small_9685629_right_count small_9685629_right_encoded = true := by
  decide +kernel
theorem small_9685629_right_covered : CoveredBy scale carrier boxes small_9685629_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9685629_right_root small_9685629_right_fuel small_9685629_right_count small_9685629_right_encoded small_9685629_right_checked

theorem cover_9685629 : CoveredBy scale carrier boxes root_9685629 := by
  apply coveredBy_split_literal root_9685629 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0656.root_9685634 small_9685629_right_root coord2 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0656.cover_9685634
  · exact small_9685629_right_covered
#print axioms cover_9685629

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0656
