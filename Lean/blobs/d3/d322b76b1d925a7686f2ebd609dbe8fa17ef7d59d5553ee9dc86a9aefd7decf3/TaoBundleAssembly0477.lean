import TaoBundleAssembly0475
import TaoBundleAssembly0476
import TaoBundleChunkBatch0652
import TaoBundleChunkBatch0654
import TaoBundleChunkBatch0655
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0477
def root_6940921 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6940921_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6940921_left_fuel : Nat := 21
def small_6940921_left_count : Nat := 241
def small_6940921_left_encoded : String := "120701040000000205000102135D44F9050000FC135D8107050000FE135D8109045489F71386AD0004548A05000000070000000700000000138671000000000004548A051386710400000002028001020000000713D7ECF900000001078000FC0000000A000000071386AD040280010213D7B0F9078000FC0000000A000000070000000113D7ECF900000001078000FC128A7D07078000FE128A7D090000000700000004128A4109000000040000000A00000003128A410700000003000000070000000200000004135D450900000004045489F71386AD0004548A050000000A1386AD04028001020000000A13D7ECF900000001078000FC0000000A128A410700000003028000FE00000007000000050000000200000000138671000000000004548A050000000A1386AD04028001020000000A13D7ECF900000001078000FC0000000A000000050000000200000003135D450700000003050000FE00000007135D450900000004045489F71386AD0004548A05000000071386AD040280010213D7B0F9028000FC13D7ED07028000FE000000070000000500000003000000050000000100000005000000020000000013867100000000000000000500000001135D80F900000001050000FC135D8107050000FE135D8109045489F71386AD0004548A05000000071386AD040780010200000007128A7CF900000001000000070000000200000000138671000000000004548A05138671040000000207800102128A40F9078000FC128A7D07078000FE0000000700000007000000030000000700000001128A7CF900000001078000FC128A7D07078000FE000000070000000500000003000000051386AD0407800102128A40F9078000FC128A7D07078000FE128A7D090000000700000004128A410900000004022A457713E20100067ECE8500000007000000070000000013E1C500000000000000000500000003128A410700000003078000FE000000070000000500000001128A7CF900000001078000FC128A7D07078000FE128A7D0900000007000000040000000500000003000000050000000200000004135D450900000004045489F71386AD0004548A05138671040000000207800102128A40F90000000A00000001000000051386AD0407800102128A40F9078000FC128A7D07028000FE13D7ED09067ECE770000000712EA59000000000000000005000000040000000500000003000000050000000100000005000000020000000013867100000000000000000500000003135D450700000003050000FE135D8109045489F7000000071386710000000000000000050000000400000005"
theorem small_6940921_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6940921_left_root small_6940921_left_fuel small_6940921_left_count small_6940921_left_encoded = true := by
  decide +kernel
theorem small_6940921_left_covered : CoveredBy scale carrier boxes small_6940921_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6940921_left_root small_6940921_left_fuel small_6940921_left_count small_6940921_left_encoded small_6940921_left_checked

theorem cover_6940921 : CoveredBy scale carrier boxes root_6940921 := by
  apply coveredBy_split_literal root_6940921 small_6940921_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0476.root_6941427 coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_6940921_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0476.cover_6941427
#print axioms cover_6940921

def root_6940915 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6940915_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6940915_left_fuel : Nat := 1
def small_6940915_left_count : Nat := 1
def small_6940915_left_encoded : String := "00000000"
theorem small_6940915_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6940915_left_root small_6940915_left_fuel small_6940915_left_count small_6940915_left_encoded = true := by
  decide +kernel
theorem small_6940915_left_covered : CoveredBy scale carrier boxes small_6940915_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6940915_left_root small_6940915_left_fuel small_6940915_left_count small_6940915_left_encoded small_6940915_left_checked

theorem cover_6940915 : CoveredBy scale carrier boxes root_6940915 := by
  apply coveredBy_split_literal root_6940915 small_6940915_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0477.root_6940921 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_6940915_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0477.cover_6940921
#print axioms cover_6940915

def root_6940373 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6940373_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6940373_left_fuel : Nat := 22
def small_6940373_left_count : Nat := 253
def small_6940373_left_encoded : String := "12073D0008A91305120701040000000205000102135D44F9050000FC135D8107050000FE00000007135D4509000000040CFD9BF70F350D0000000007000000000F34D1000000000004548A05000000071386AD04028001020000000A13D7ECF900000001078000FC0000000A000000070000000200000003135D450700000003050000FE00000007135D4509000000040CFD9BF7000000070000000700000001135D80F900000001050000FC135D8107050000FE00000007135D4509000000040CFD9BF7000000070F34D1000000000004548A050000000700000008000000030000000712073D0405000102135D44F9050000FC135D8107050000FE135D81090CFD9BF70F350D000CFD9C050F34D104000000020000000700000009000000000F34D100000000000CFD9C050F34D104000000020280010213D7B0F9078000FC128A7D07078000FE00000005128A4109000000040AD357770000000710D10100000000000000000A00000003128A410700000003078000FE00000007128A410900000004000000070000000113D7ECF900000001078000FC128A7D07078000FE00000007128A4109000000040000000800000003000000070F350D040C9A8704000000080F878D050280010213D7B0F9000000090000000113D7ECF90000000100000008000000020000000200000004135D4509000000040CFD9BF70F350D000CFD9C050F34D104000000020C9A87000F8750F70000000700000000000000080F350D040000000800000002000000000F34D100000000000CFD9C050F34D104000000020280010213D7B0F9078000FC000000080000000800000001000000080F350D04000000080000000200000003135D450700000003050000FE135D81090CFD9BF7000000090F34D100000000000CFD9C050F34D10400000002000000070000000900000004135D4509000000040CFD9BF7000000080F34D100000000000000000800000001135D80F900000001050000FC135D8107050000FE135D81090CFD9BF70F350D000CFD9C050F34D10400000002000000060F350D040C9A8700000000090000000800000002000000000F34D100000000000CFD9C050F34D1040000000207800102128A40F9078000FC000000070000000700000001128A7CF900000001000000060F350D04000000080000000200000004135D4509000000040CFD9BF70F350D000CFD9C05000000080F350D040000000800000002000000000F34D100000000000000000800000003135D450700000003050000FE135D81090CFD9BF70F350D000CFD9C050000000700000009000000000F34D100000000000CFD9C050F34D10400000002000000070000000800000004135D4509000000040CFD9BF700000008000000080000000200000000"
theorem small_6940373_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6940373_left_root small_6940373_left_fuel small_6940373_left_count small_6940373_left_encoded = true := by
  decide +kernel
theorem small_6940373_left_covered : CoveredBy scale carrier boxes small_6940373_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6940373_left_root small_6940373_left_fuel small_6940373_left_count small_6940373_left_encoded small_6940373_left_checked

theorem cover_6940373 : CoveredBy scale carrier boxes root_6940373 := by
  apply coveredBy_split_literal root_6940373 small_6940373_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0477.root_6940915 coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_6940373_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0477.cover_6940915
#print axioms cover_6940373

def root_6940367 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6940367_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6940367_left_fuel : Nat := 1
def small_6940367_left_count : Nat := 1
def small_6940367_left_encoded : String := "00000004"
theorem small_6940367_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6940367_left_root small_6940367_left_fuel small_6940367_left_count small_6940367_left_encoded = true := by
  decide +kernel
theorem small_6940367_left_covered : CoveredBy scale carrier boxes small_6940367_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6940367_left_root small_6940367_left_fuel small_6940367_left_count small_6940367_left_encoded small_6940367_left_checked

theorem cover_6940367 : CoveredBy scale carrier boxes root_6940367 := by
  apply coveredBy_split_literal root_6940367 small_6940367_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0477.root_6940373 coord4 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_6940367_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0477.cover_6940373
#print axioms cover_6940367

def root_6936717 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6936717 : CoveredBy scale carrier boxes root_6936717 := by
  apply coveredBy_split_literal root_6936717 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0475.root_6936718 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0477.root_6940367 coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0475.cover_6936718
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0477.cover_6940367
#print axioms cover_6936717

def root_6936711 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6936711_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6936711_left_fuel : Nat := 1
def small_6936711_left_count : Nat := 1
def small_6936711_left_encoded : String := "00000003"
theorem small_6936711_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6936711_left_root small_6936711_left_fuel small_6936711_left_count small_6936711_left_encoded = true := by
  decide +kernel
theorem small_6936711_left_covered : CoveredBy scale carrier boxes small_6936711_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6936711_left_root small_6936711_left_fuel small_6936711_left_count small_6936711_left_encoded small_6936711_left_checked

theorem cover_6936711 : CoveredBy scale carrier boxes root_6936711 := by
  apply coveredBy_split_literal root_6936711 small_6936711_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0477.root_6936717 coord3 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_6936711_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0477.cover_6936717
#print axioms cover_6936711

def root_6925831 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6925831 : CoveredBy scale carrier boxes root_6925831 := by
  apply coveredBy_split_literal root_6925831 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0475.root_6925832 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0477.root_6936711 coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0475.cover_6925832
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0477.cover_6936711
#print axioms cover_6925831

def root_6925826 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6925826_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6925826_right_fuel : Nat := 1
def small_6925826_right_count : Nat := 1
def small_6925826_right_encoded : String := "00000002"
theorem small_6925826_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6925826_right_root small_6925826_right_fuel small_6925826_right_count small_6925826_right_encoded = true := by
  decide +kernel
theorem small_6925826_right_covered : CoveredBy scale carrier boxes small_6925826_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6925826_right_root small_6925826_right_fuel small_6925826_right_count small_6925826_right_encoded small_6925826_right_checked

theorem cover_6925826 : CoveredBy scale carrier boxes root_6925826 := by
  apply coveredBy_split_literal root_6925826 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0477.root_6925831 small_6925826_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0477.cover_6925831
  · exact small_6925826_right_covered
#print axioms cover_6925826

def root_6924544 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6924544 : CoveredBy scale carrier boxes root_6924544 := by
  apply coveredBy_split_literal root_6924544 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2607.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0477.root_6925826 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2607.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0477.cover_6925826
#print axioms cover_6924544

def root_6924539 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6924539_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6924539_right_fuel : Nat := 1
def small_6924539_right_count : Nat := 1
def small_6924539_right_encoded : String := "00000001"
theorem small_6924539_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6924539_right_root small_6924539_right_fuel small_6924539_right_count small_6924539_right_encoded = true := by
  decide +kernel
theorem small_6924539_right_covered : CoveredBy scale carrier boxes small_6924539_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6924539_right_root small_6924539_right_fuel small_6924539_right_count small_6924539_right_encoded small_6924539_right_checked

theorem cover_6924539 : CoveredBy scale carrier boxes root_6924539 := by
  apply coveredBy_split_literal root_6924539 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0477.root_6924544 small_6924539_right_root coord1 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0477.cover_6924544
  · exact small_6924539_right_covered
#print axioms cover_6924539

def root_6953741 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6953741_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6953741_right_fuel : Nat := 30
def small_6953741_right_count : Nat := 481
def small_6953741_right_encoded : String := "1151E907000000030A0000FE1152250908A912F712073D0008A912F912073D0208A9130512070104000000020000000712073D0408A91309120700FE000000070000000412073CFE00000004050000FC135D81070CFD9BF7000000060F34D100000000000CFD9BF90F350D020CFD9C050F34D104000000020000000600000006000000010000000600000003135D450700000003000000070000000200000001120701020000000108A913051207010400000002000000060000000600000000120701000000000008A912F912073D0208A91305120701040000000208A913090000000712073CFE00000004050000FC135D8107045489F71386AD000CFD9BF90F350D020000000700000001000000070000000013867100000000000CFD9BF90F350D0204548A051386710400000002000000071386AD040CFD9C09000000070F350CFE000000040000000700000002000000010F34D1020000000104548A05000000070000000600000003135D4507000000030000000712073D0408A91309120700FE000000070000000412073CFE00000004050000FC135D8107045489F71386AD000CFD9BF90F350D020CFD9C050F34D10400000002000000070F350D040CFD9C090F34D0FE00000006000000040F350CFE000000040C9A87020F8750F90C9A87040F875105000000020C9A86FE000000060000000800000006000000010000000600000002000000010F34D10200000001000000060000000013867100000000000CFD9BF90F350D020CFD9C050F34D104000000020CFD9C09000000070F350CFE000000040C9A87020F8750F90C9A86FE000000070F87510900000004078000FC0000000600000007000000010F878CF9000000010C9A86FE000000060F87510900000004000000050F350D040CFD9C090F34D0FE0C9A87020F8750F90C9A87040F875105000000020000000700000007000000010F878CF90000000100000007000000040F350CFE000000040C9A87020F8750F90C9A87040F875105000000020C9A86FE0F878D090000000A000000040000000A0F878D050C9A86FE0F878D09078000FC0000000600000007000000040F87510900000004078000FC00000006128A4107000000030000000500000002000000010F878CF9000000010C9A87040000000A0F878D050C9A86FE000000060000000A0000000200000002000000010F34D102000000010CFD9C050F34D10400000002000000060F350D040CFD9C090000000A000000060000000200000003135D450700000003045489F71386AD000CFD9BF90F350D020CFD9C05000000070F350D040CFD9C09000000070F350CFE00000004000000070000000200000001000000070000000013867100000000000CFD9BF90F350D020CFD9C050F34D10400000002000000070F350D040CFD9C090F34D0FE00000007000000040F350CFE000000040C9A87020F8750F90C9A87040000000A00000007000000010F878CF9000000010000000500000002000000010F34D102000000010CFD9C050000000A0F350D040000000A000000020000000200000001120701020000000108A91305120701040000000208A913090000000712073CFE00000004050000FC000000060000000512073D0408A913090000000712073CFE00000004050000FC000000060000000A00000002000000041151E9090000000408A912F712073D0008A912F912073D0208A913051207010400000002050000FC135D8107050000FE00000006135D4509000000040CFD9BF7000000060F34D100000000000000000800000003135D4507000000030000000712073D04050000FC135D8107050000FE135D81090CFD9BF7000000060F34D100000000000CFD9BF90F350D0200000008000000010000000600000004135D4509000000040CFD9BF70F350D000CFD9BF90F350D020CFD9C0500000008000000060000000100000006000000000F34D100000000000000000800000003135D450700000003050000FE135D81090CFD9BF7000000080F34D100000000000000000800000004135D45090000000400000008000000020000000112070102000000010000000800000000120701000000000008A912F912073D0208A913051207010400000002050000FC135D8107050000FE135D8109045489F71386AD000CFD9BF90F350D0204548A051386710400000002000000071386AD040C9A87020000000700000005000000020000000100000007000000001386710000000000000000050000000400000005000000030000000512073D04050000FC135D8107050000FE135D8109045489F71386AD000CFD9BF90F350D020CFD9C050F34D104000000020C9A87020F8750F90000000800000001000000050F350D04000000080000000200000001000000080000000013867100000000000CFD9BF90F350D020CFD9C050F34D10400000002000000050F350D040000000800000002000000010F34D102000000010000000500000004135D450900000004045489F7000000080000000500000003135D450700000003050000FE135D8109045489F71386AD000CFD9BF90F350D020CFD9C050F34D1040000000200000005000000050000000100000005000000000000000500000004000000050000000200000001120701020000000100000005"
theorem small_6953741_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6953741_right_root small_6953741_right_fuel small_6953741_right_count small_6953741_right_encoded = true := by
  decide +kernel
theorem small_6953741_right_covered : CoveredBy scale carrier boxes small_6953741_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6953741_right_root small_6953741_right_fuel small_6953741_right_count small_6953741_right_encoded small_6953741_right_checked

theorem cover_6953741 : CoveredBy scale carrier boxes root_6953741 := by
  apply coveredBy_split_literal root_6953741 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2617.root small_6953741_right_root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2617.covered
  · exact small_6953741_right_covered
#print axioms cover_6953741

def root_6953736 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6953736_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6953736_right_fuel : Nat := 1
def small_6953736_right_count : Nat := 1
def small_6953736_right_encoded : String := "00000002"
theorem small_6953736_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6953736_right_root small_6953736_right_fuel small_6953736_right_count small_6953736_right_encoded = true := by
  decide +kernel
theorem small_6953736_right_covered : CoveredBy scale carrier boxes small_6953736_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6953736_right_root small_6953736_right_fuel small_6953736_right_count small_6953736_right_encoded small_6953736_right_checked

theorem cover_6953736 : CoveredBy scale carrier boxes root_6953736 := by
  apply coveredBy_split_literal root_6953736 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0477.root_6953741 small_6953736_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0477.cover_6953741
  · exact small_6953736_right_covered
#print axioms cover_6953736

def root_6952222 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6952222 : CoveredBy scale carrier boxes root_6952222 := by
  apply coveredBy_split_literal root_6952222 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2616.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0477.root_6953736 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2616.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0477.cover_6953736
#print axioms cover_6952222

def root_6952216 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6952216_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6952216_left_fuel : Nat := 1
def small_6952216_left_count : Nat := 1
def small_6952216_left_encoded : String := "00000001"
theorem small_6952216_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6952216_left_root small_6952216_left_fuel small_6952216_left_count small_6952216_left_encoded = true := by
  decide +kernel
theorem small_6952216_left_covered : CoveredBy scale carrier boxes small_6952216_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6952216_left_root small_6952216_left_fuel small_6952216_left_count small_6952216_left_encoded small_6952216_left_checked

theorem cover_6952216 : CoveredBy scale carrier boxes root_6952216 := by
  apply coveredBy_split_literal root_6952216 small_6952216_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0477.root_6952222 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6952216_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0477.cover_6952222
#print axioms cover_6952216

def root_6924538 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6924538 : CoveredBy scale carrier boxes root_6924538 := by
  apply coveredBy_split_literal root_6924538 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0477.root_6924539 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0477.root_6952216 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0477.cover_6924539
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0477.cover_6952216
#print axioms cover_6924538

def root_6924532 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6924532_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6924532_left_fuel : Nat := 1
def small_6924532_left_count : Nat := 1
def small_6924532_left_encoded : String := "00000000"
theorem small_6924532_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6924532_left_root small_6924532_left_fuel small_6924532_left_count small_6924532_left_encoded = true := by
  decide +kernel
theorem small_6924532_left_covered : CoveredBy scale carrier boxes small_6924532_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6924532_left_root small_6924532_left_fuel small_6924532_left_count small_6924532_left_encoded small_6924532_left_checked

theorem cover_6924532 : CoveredBy scale carrier boxes root_6924532 := by
  apply coveredBy_split_literal root_6924532 small_6924532_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0477.root_6924538 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6924532_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0477.cover_6924538
#print axioms cover_6924532

def root_6923902 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6923902_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6923902_left_fuel : Nat := 22
def small_6923902_left_count : Nat := 289
def small_6923902_left_encoded : String := "1151E8F70A0001021151E8F90A0001041151E905000000020A0000FC000000051151E907000000030A0000FE000000051151E9090000000400000009115225050A0000FC115225070A0000FE1152250908A91305120701040000000208A91307120700FC08A913090000000700000005000000030000000712073D0408A91307120700FC00000005000000030000000500000002000000041151E9090000000408A91305120701040000000208A91307120700FC000000050000000312073CFC000000030500010000000005135D80F7000000000500010200000005135D80F9000000010000000612073D0408A91307120700FC000000050000000312073CFC000000030500010000000005135D80F7000000000500010200000005135D80F900000001050000FE00000005135D4509000000040CFD9C050F34D10400000002000000060000000600000002000000031151E907000000030A0000FE1152250908A913050000000712073D0408A91309120700FE000000050000000412073CFE000000040500010000000005135D80F70000000005000102000000050000000700000002000000041151E9090000000408A9130512070104000000020000000712073D0405000100135D44F705000102000000090000000700000000135D80F70000000005000102135D44F9050000FC135D8107050000FE00000005135D45090000000400000009000000030000000900000001135D80F900000001050000FC135D8107050000FE00000006135D4509000000040CFD9C0500000007000000060000000300000009000000020000000200000001115224F9000000010A0001041151E905000000020A0000FC115225070A0000FE1152250908A912F912073D020000000500000001120701020000000100000006000000041151E9090000000408A912F912073D0208A91307120700FC000000050000000312073CFC0000000305000100135D44F70000000600000000135D80F70000000005000104135D450500000002050000FE00000006135D450900000004000000060000000600000001120701020000000100000006000000031151E907000000030A0000FE0000000A1151E9090000000408A912F912073D02050001000000000A0000000A00000001120701020000000100000006115225050A0000FC115225070A0000FE1152250908A912F912073D0208A9130512070104000000020000000612073D0408A91307120700FC0000000500000003000000060000000200000001120701020000000100000006000000041151E9090000000408A912F912073D0208A9130512070104000000020000000612073D0408A91307120700FC0000000600000003000000060000000200000001120701020000000100000006000000031151E907000000030A0000FE1152250908A912F912073D020000000700000001120701020000000100000006000000041151E9090000000408A912F912073D0208A9130512070104000000020000000612073D040500010000000007135D80F700000000050000FC000000060000000700000002000000011207010200000001000000060000000200000000"
theorem small_6923902_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6923902_left_root small_6923902_left_fuel small_6923902_left_count small_6923902_left_encoded = true := by
  decide +kernel
theorem small_6923902_left_covered : CoveredBy scale carrier boxes small_6923902_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6923902_left_root small_6923902_left_fuel small_6923902_left_count small_6923902_left_encoded small_6923902_left_checked

theorem cover_6923902 : CoveredBy scale carrier boxes root_6923902 := by
  apply coveredBy_split_literal root_6923902 small_6923902_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0477.root_6924532 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_6923902_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0477.cover_6924532
#print axioms cover_6923902

def root_6921608 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6921608 : CoveredBy scale carrier boxes root_6921608 := by
  apply coveredBy_split_literal root_6921608 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2606.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0477.root_6923902 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2606.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0477.cover_6923902
#print axioms cover_6921608

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0477
