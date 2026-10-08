import TaoBundleAssembly0670
import TaoBundleAssembly0673
import TaoBundleAssembly0674
import TaoBundleAssembly0675
import TaoBundleChunkBatch0941
import TaoBundleChunkBatch0942
import TaoBundleChunkBatch0943
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0676
def root_10031052 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10031052_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10031052_right_fuel : Nat := 27
def small_10031052_right_count : Nat := 313
def small_10031052_right_encoded : String := "135D44FB050000FE135D80FF000000040CFD9C010F34D100000000000CFD9C030F34D10200000001000000050F350D0204548A071386710600000003000000051386AD060C9A87020F87510300000001028000FA13D7ECFB00000002078000FE128A7CFF000000040AD3578110D1010000000000000000050000000800000005000000050000000500000003000000010F350D000CFD9C030F34D1020000000104548A07138671060000000300000005000000060F350D0204548A0713867106000000030C9A87000F875101000000000C9A87020F87510300000001028000FA13D7ECFB00000002078000FE128A7CFF00000004022A458713E1C506000000030B4D440010801101000000000B4D44020000000810804D0300000008000000010000000800000008128A40FF022A458713E1C506000000030B4D440010801101000000000B4D44020000000910804D03000000090000000110804D010B4D4402108011030000000100000009000000050000000013E201060B4D440010801101000000000B4D440210801103000000010000000810804D0303C000FA13A54CFB00000002064000FE0000000600000005000000050000000110804D010B4D4402000000080000000500000000000000030000000413D7B0FB078000FE128A7CFF00000004022A458713E1C50600000003000000080000000600000005000000020F878D03028000FA13D7ECFB00000002078000FE128A7CFF00000004022A458713E1C506000000030B4D440010801101000000000DE7CA020E5FD90300000001000000060000000610804D010DE7CA020E5FD9030000000103C000FA13A54CFB0000000208C000FE0000000600000005000000050000000500000000000000060000000500000005000000010F878D010C9A87020F87510300000001028000FA13D7ECFB00000002078000FE128A7CFF00000004022A458713E1C506000000030DE7CA000E5FD90100000000000000080000000800000008000000050000000500000005000000001386AD060C9A87000F875101000000000C9A87020F87510300000001028000FA13D7ECFB00000002078000FE00000008128A40FF067ECE8712EA5906000000030B4D440010801101000000000B4D4402000000080000000610804D010B4D4402000000080000000500000000000000060000000413D7B0FB00000006000000020F878D0300000006000000010F878D010C9A87020F87510300000001028000FA13D7ECFB00000002078000FE00000008128A40FF067ECE8712EA5906000000030000000512EA950600000006000000030000000413D7B0FB078000FE0000000600000005000000020F878D03028000FA13D7ECFB00000002078000FE0000000600000005000000050000000100000000000000030000000100000000135D44FF0CFD9C010F34D10000000000000000050F350D000CFD9C030F34D10200000001000000050F350D0204548A071386710600000003000000051386AD060C9A87000F875101000000000C9A87020F87510300000001028000FA13D7ECFB00000002028000FE13D7ECFF00000004067ECE8712EA5906000000030B4D440010801101000000000B4D4402108011030000000103C000FA0000000A00000005000000050000000512EA95060B4D4400000000060000000500000003000000050000000500000005000000050000000300000001000000000000000400000002"
theorem small_10031052_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10031052_right_root small_10031052_right_fuel small_10031052_right_count small_10031052_right_encoded = true := by
  decide +kernel
theorem small_10031052_right_covered : CoveredBy scale carrier boxes small_10031052_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10031052_right_root small_10031052_right_fuel small_10031052_right_count small_10031052_right_encoded small_10031052_right_checked

theorem cover_10031052 : CoveredBy scale carrier boxes root_10031052 := by
  apply coveredBy_split_literal root_10031052 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0675.root_10031053 small_10031052_right_root coord2 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0675.cover_10031053
  · exact small_10031052_right_covered
#print axioms cover_10031052

def root_10031046 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10031046_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10031046_left_fuel : Nat := 1
def small_10031046_left_count : Nat := 1
def small_10031046_left_encoded : String := "00000003"
theorem small_10031046_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10031046_left_root small_10031046_left_fuel small_10031046_left_count small_10031046_left_encoded = true := by
  decide +kernel
theorem small_10031046_left_covered : CoveredBy scale carrier boxes small_10031046_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10031046_left_root small_10031046_left_fuel small_10031046_left_count small_10031046_left_encoded small_10031046_left_checked

theorem cover_10031046 : CoveredBy scale carrier boxes root_10031046 := by
  apply coveredBy_split_literal root_10031046 small_10031046_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0676.root_10031052 coord3 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_10031046_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0676.cover_10031052
#print axioms cover_10031046

def root_10031045 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10031045_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10031045_right_fuel : Nat := 23
def small_10031045_right_count : Nat := 235
def small_10031045_right_encoded : String := "12073D06050000FA135D80FB00000002050000FE135D80FF000000040CFD9C010F34D100000000000CFD9C030F34D10200000001000000090F350D020CFD9C070F34D106000000030C9A8702000000070F878D03000000070000000100000007000000010F350D000CFD9C030F34D102000000010CFD9C070F34D106000000030C9A8700000000060F878D010000000600000000000000060F350D020CFD9C070F34D106000000030C9A87000F875101000000000C9A87020F87510300000001078000FA128A7CFB00000002078000FE128A7CFF000000040AD3578710D10106000000030B4D440000000005000000070000000600000007128A40FB078000FE00000006128A40FF0AD3578710D1010600000003000000060000000600000004000000020F878D03078000FA128A7CFB00000002078000FE00000006128A40FF000000070000000400000006000000010F878D010C9A87020F87510300000001078000FA00000007128A40FB078000FE128A7CFF000000040000000600000007000000020F878D03078000FA128A7CFB00000002000000070000000600000001000000000F350D060C9A87000F875101000000000C9A87020F875103000000010C9A87060000000600000006000000060F878D010000000700000000000000030000000100000000135D44FF0CFD9C010F34D10000000000000000070F350D000CFD9C030F34D102000000010CFD9C070F34D106000000030C9A87000F875101000000000000000700000007000000070F350D020CFD9C070F34D106000000030C9A87000F875101000000000C9A8702000000070F878D0300000007000000010000000700000007000000010000000000000004135D44FB050000FE135D80FF000000040CFD9C010F34D100000000000CFD9C030F34D10200000001000000060F350D020CFD9C070F34D106000000030C9A87020F87510300000001000000060000000600000006000000010F350D000CFD9C030F34D10200000001000000060F350D020CFD9C070F34D106000000030C9A8700000000060F878D010000000600000000000000060000000100000000135D44FF0CFD9C010F34D100000000000CFD9C03000000070F350D0200000007000000010F350D000CFD9C030F34D10200000001000000060F350D020CFD9C070F34D106000000030C9A87000F875101000000000C9A87020F87510300000001028000FA0000000700000006000000060F878D0100000007000000000F350D0600000006000000030000000100000000000000040000000200000003"
theorem small_10031045_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10031045_right_root small_10031045_right_fuel small_10031045_right_count small_10031045_right_encoded = true := by
  decide +kernel
theorem small_10031045_right_covered : CoveredBy scale carrier boxes small_10031045_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10031045_right_root small_10031045_right_fuel small_10031045_right_count small_10031045_right_encoded small_10031045_right_checked

theorem cover_10031045 : CoveredBy scale carrier boxes root_10031045 := by
  apply coveredBy_split_literal root_10031045 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0676.root_10031046 small_10031045_right_root coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0676.cover_10031046
  · exact small_10031045_right_covered
#print axioms cover_10031045

def root_10031040 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10031040_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10031040_right_fuel : Nat := 1
def small_10031040_right_count : Nat := 1
def small_10031040_right_encoded : String := "00000001"
theorem small_10031040_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10031040_right_root small_10031040_right_fuel small_10031040_right_count small_10031040_right_encoded = true := by
  decide +kernel
theorem small_10031040_right_covered : CoveredBy scale carrier boxes small_10031040_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10031040_right_root small_10031040_right_fuel small_10031040_right_count small_10031040_right_encoded small_10031040_right_checked

theorem cover_10031040 : CoveredBy scale carrier boxes root_10031040 := by
  apply coveredBy_split_literal root_10031040 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0676.root_10031045 small_10031040_right_root coord1 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0676.cover_10031045
  · exact small_10031040_right_covered
#print axioms cover_10031040

def root_10030842 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10030842_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10030842_left_fuel : Nat := 21
def small_10030842_left_count : Nat := 93
def small_10030842_left_encoded : String := "120701020000000108A913071207010600000003050000FA135D80FB00000002050000FE135D80FF000000040CFD9C010F34D10000000000000000050F350D0004548A03138671020000000104548A07138671060000000300000005000000061386AD0204548A0713867106000000030C9A87000F87510100000000078000FA128A7CFB00000002078000FE128A7CFF00000004067ECE8300000006000000060000000500000005000000051386AD060C9A8700000000060F878D010000000600000000000000030000000100000000000000050000000512073D06050000FA135D80FB00000002050000FE135D80FF000000040CFD9C01000000060F350D0004548A03000000060000000600000000135D44FF0CFD9C010F34D10000000000000000070F350D0004548A031386710200000001000000061386AD020CFD9C070F34D106000000030000000600000006000000010000000000000004135D44FB050000FE00000006000000060000000200000003"
theorem small_10030842_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10030842_left_root small_10030842_left_fuel small_10030842_left_count small_10030842_left_encoded = true := by
  decide +kernel
theorem small_10030842_left_covered : CoveredBy scale carrier boxes small_10030842_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10030842_left_root small_10030842_left_fuel small_10030842_left_count small_10030842_left_encoded small_10030842_left_checked

theorem cover_10030842 : CoveredBy scale carrier boxes root_10030842 := by
  apply coveredBy_split_literal root_10030842 small_10030842_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0676.root_10031040 coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_10030842_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0676.cover_10031040
#print axioms cover_10030842

def root_10030837 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10030837_right_root : ZRayBox := fun j => (#[⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10030837_right_fuel : Nat := 1
def small_10030837_right_count : Nat := 1
def small_10030837_right_encoded : String := "00000000"
theorem small_10030837_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10030837_right_root small_10030837_right_fuel small_10030837_right_count small_10030837_right_encoded = true := by
  decide +kernel
theorem small_10030837_right_covered : CoveredBy scale carrier boxes small_10030837_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10030837_right_root small_10030837_right_fuel small_10030837_right_count small_10030837_right_encoded small_10030837_right_checked

theorem cover_10030837 : CoveredBy scale carrier boxes root_10030837 := by
  apply coveredBy_split_literal root_10030837 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0676.root_10030842 small_10030837_right_root coord0 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0676.cover_10030842
  · exact small_10030837_right_covered
#print axioms cover_10030837

def root_10030587 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10030587_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10030587_left_fuel : Nat := 23
def small_10030587_left_count : Nat := 117
def small_10030587_left_encoded : String := "120701000000000008A91303120701020000000108A9130712070106000000030000000512073D06050000FA00000007000000050000000312073D0208A913071207010600000003050000FA135D80FB00000002050000FE135D80FF0000000404548A0113867100000000000CFD9C030F34D10200000001000000050F350D0204548A0713867106000000030000000500000007000000011386AD000CFD9C030F34D10200000001000000050F350D0204548A0713867106000000030C9A87020F87510300000001078000FA128A7CFB00000002078000FE128A7CFF00000004067ECE8100000007000000070000000500000005000000051386AD060C9A8702000000070F878D030000000700000001000000030000000100000000000000050000000512073D06050000FA135D80FB00000002050000FE135D80FF0000000404548A01000000071386AD000CFD9C03000000070F350D0200000007000000010000000000000007135D44FB050000FE135D80FF0000000404548A0113867100000000000CFD9C03000000060F350D0200000007000000011386AD000CFD9C03000000060F350D020CFD9C070F34D106000000030000000600000006000000010000000000000007000000020000000300000001"
theorem small_10030587_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10030587_left_root small_10030587_left_fuel small_10030587_left_count small_10030587_left_encoded = true := by
  decide +kernel
theorem small_10030587_left_covered : CoveredBy scale carrier boxes small_10030587_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10030587_left_root small_10030587_left_fuel small_10030587_left_count small_10030587_left_encoded small_10030587_left_checked

theorem cover_10030587 : CoveredBy scale carrier boxes root_10030587 := by
  apply coveredBy_split_literal root_10030587 small_10030587_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0676.root_10030837 coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_10030587_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0676.cover_10030837
#print axioms cover_10030587

def root_10030582 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10030582_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10030582_right_fuel : Nat := 1
def small_10030582_right_count : Nat := 1
def small_10030582_right_encoded : String := "00000004"
theorem small_10030582_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10030582_right_root small_10030582_right_fuel small_10030582_right_count small_10030582_right_encoded = true := by
  decide +kernel
theorem small_10030582_right_covered : CoveredBy scale carrier boxes small_10030582_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10030582_right_root small_10030582_right_fuel small_10030582_right_count small_10030582_right_encoded small_10030582_right_checked

theorem cover_10030582 : CoveredBy scale carrier boxes root_10030582 := by
  apply coveredBy_split_literal root_10030582 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0676.root_10030587 small_10030582_right_root coord4 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0676.cover_10030587
  · exact small_10030582_right_covered
#print axioms cover_10030582

def root_10026318 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10026318 : CoveredBy scale carrier boxes root_10026318 := by
  apply coveredBy_split_literal root_10026318 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0674.root_10026319 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0676.root_10030582 coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0674.cover_10026319
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0676.cover_10030582
#print axioms cover_10026318

def root_10026313 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10026313_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10026313_right_fuel : Nat := 1
def small_10026313_right_count : Nat := 1
def small_10026313_right_encoded : String := "00000003"
theorem small_10026313_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10026313_right_root small_10026313_right_fuel small_10026313_right_count small_10026313_right_encoded = true := by
  decide +kernel
theorem small_10026313_right_covered : CoveredBy scale carrier boxes small_10026313_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10026313_right_root small_10026313_right_fuel small_10026313_right_count small_10026313_right_encoded small_10026313_right_checked

theorem cover_10026313 : CoveredBy scale carrier boxes root_10026313 := by
  apply coveredBy_split_literal root_10026313 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0676.root_10026318 small_10026313_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0676.cover_10026318
  · exact small_10026313_right_covered
#print axioms cover_10026313

def root_10026063 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10026063_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10026063_left_fuel : Nat := 16
def small_10026063_left_count : Nat := 113
def small_10026063_left_encoded : String := "1151E907000000030A0000FE115224FF0000000408A91301120701000000000008A913030000000912073D0208A912FF00000009120700FE00000009000000040000000112073D0008A9130312070102000000010000000612073D0208A912FF12073CFE00000004050000FA135D80FB0000000205000106135D4507000000030CFD9C010F34D10000000000000000090F350D000000000600000000135D81070CFD9C01000000060F350D00000000060000000000000003135D44FB05000106135D4507000000030CFD9C010F34D1000000000000000009000000060000000600000002120700FE050000FA135D80FB0000000205000106135D4507000000030000000600000006135D44FB05000106135D4507000000030000000600000006000000020000000400000001000000001151E8FF08A9130112070100000000000000000712073D0008A9130312070102000000010000000612073D02050000FA135D80FB0000000205000106135D45070000000300000007135D8107050000FE135D80FF000000040CFD9C01000000060F350D0000000006000000000000000700000003135D44FB05000106000000060000000600000002000000010000000000000004"
theorem small_10026063_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10026063_left_root small_10026063_left_fuel small_10026063_left_count small_10026063_left_encoded = true := by
  decide +kernel
theorem small_10026063_left_covered : CoveredBy scale carrier boxes small_10026063_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10026063_left_root small_10026063_left_fuel small_10026063_left_count small_10026063_left_encoded small_10026063_left_checked

theorem cover_10026063 : CoveredBy scale carrier boxes root_10026063 := by
  apply coveredBy_split_literal root_10026063 small_10026063_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0676.root_10026313 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_10026063_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0676.cover_10026313
#print axioms cover_10026063

def root_10026058 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10026058_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10026058_right_fuel : Nat := 1
def small_10026058_right_count : Nat := 1
def small_10026058_right_encoded : String := "00000002"
theorem small_10026058_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10026058_right_root small_10026058_right_fuel small_10026058_right_count small_10026058_right_encoded = true := by
  decide +kernel
theorem small_10026058_right_covered : CoveredBy scale carrier boxes small_10026058_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10026058_right_root small_10026058_right_fuel small_10026058_right_count small_10026058_right_encoded small_10026058_right_checked

theorem cover_10026058 : CoveredBy scale carrier boxes root_10026058 := by
  apply coveredBy_split_literal root_10026058 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0676.root_10026063 small_10026058_right_root coord2 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0676.cover_10026063
  · exact small_10026058_right_covered
#print axioms cover_10026058

def root_10010898 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10010898 : CoveredBy scale carrier boxes root_10010898 := by
  apply coveredBy_split_literal root_10010898 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0674.root_10010899 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0676.root_10026058 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0674.cover_10010899
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0676.cover_10026058
#print axioms cover_10010898

def root_10010893 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10010893_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10010893_right_fuel : Nat := 1
def small_10010893_right_count : Nat := 1
def small_10010893_right_encoded : String := "00000001"
theorem small_10010893_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10010893_right_root small_10010893_right_fuel small_10010893_right_count small_10010893_right_encoded = true := by
  decide +kernel
theorem small_10010893_right_covered : CoveredBy scale carrier boxes small_10010893_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10010893_right_root small_10010893_right_fuel small_10010893_right_count small_10010893_right_encoded small_10010893_right_checked

theorem cover_10010893 : CoveredBy scale carrier boxes root_10010893 := by
  apply coveredBy_split_literal root_10010893 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0676.root_10010898 small_10010893_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0676.cover_10010898
  · exact small_10010893_right_covered
#print axioms cover_10010893

def root_10005401 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10005401 : CoveredBy scale carrier boxes root_10005401 := by
  apply coveredBy_split_literal root_10005401 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0673.root_10005402 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0676.root_10010893 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0673.cover_10005402
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0676.cover_10010893
#print axioms cover_10005401

def root_10005396 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10005396_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10005396_right_fuel : Nat := 1
def small_10005396_right_count : Nat := 1
def small_10005396_right_encoded : String := "00000000"
theorem small_10005396_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10005396_right_root small_10005396_right_fuel small_10005396_right_count small_10005396_right_encoded = true := by
  decide +kernel
theorem small_10005396_right_covered : CoveredBy scale carrier boxes small_10005396_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10005396_right_root small_10005396_right_fuel small_10005396_right_count small_10005396_right_encoded small_10005396_right_checked

theorem cover_10005396 : CoveredBy scale carrier boxes root_10005396 := by
  apply coveredBy_split_literal root_10005396 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0676.root_10005401 small_10005396_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0676.cover_10005401
  · exact small_10005396_right_covered
#print axioms cover_10005396

def root_9996298 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9996298 : CoveredBy scale carrier boxes root_9996298 := by
  apply coveredBy_split_literal root_9996298 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0673.root_9996299 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0676.root_10005396 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0673.cover_9996299
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0676.cover_10005396
#print axioms cover_9996298

def root_10046018 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10046018_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10046018_left_fuel : Nat := 23
def small_10046018_left_count : Nat := 369
def small_10046018_left_encoded : String := "1151E907000000030A0000FE1152250908A91301120701000000000008A91303120701020000000108A912FB00000009120700FA000000090000000212073D0208A912FB12073CFA0000000208A91309120700FE000000090000000412073CFE0000000405000106135D45070000000304548A0113867100000000000CFD9C03000000090F350D020CFD9BFB000000090F34D0FA0000000900000002000000011386AD000CFD9C030F34D10200000001000000060F350D020CFD9BFB000000060F34D0FA0CFD9C090000000600000006000000020000000100000000135D810704548A0113867100000000000CFD9C030F34D10200000001000000060F350D020CFD9BFB000000060F34D0FA0000000900000002000000011386AD000CFD9C03000000060F350D0200000006000000010000000000000003120700FA08A91309120700FE000000090000000412073CFE0000000405000106135D45070000000304548A011386710000000000000000091386AD000CFD9C030F34D10200000001000000090F350D02045489FB1386ACFA000000020CFD9C09000000090F350CFE0000000400000006138670FA0CFD9C09000000090000000A000000020000000100000000135D810704548A0113867100000000000CFD9C03000000090F350D02045489FB00000009138670FA0000000900000002000000011386AD000CFD9C030F34D10200000001000000060F350D02045489FB1386ACFA000000020CFD9C090000000600000006138670FA0CFD9C090F34D0FE00000009000000040000000A00000002000000010000000000000003000000020000000112073D0008A91303120701020000000108A912FB12073CFA0000000200000006120700FA08A91309120700FE0000000900000004000000060000000212073D0208A912FB12073CFA0000000208A91309120700FE05000106135D4507000000030CFD9C010F34D10000000000000000090F350D000CFD9C03000000060F350D02000000060000000100000000135D81070CFD9C010F34D100000000000CFD9C03000000060F350D020CFD9BFB000000060F34D0FA0000000600000002000000010F350D000000000600000000000000030000000412073CFE0000000405000106135D4507000000030CFD9C010F34D100000000000CFD9C03000000060F350D0200000006000000010000000600000006120700FA08A91309120700FE05000106135D4507000000030CFD9C010F34D10000000000000000090F350D000CFD9C030F34D10200000001000000090F350D02045489FB1386ACFA0000000204548A090000000600000006138670FA04548A09000000091386ACFE000000040C9A87000000000600000009000000020000000100000000135D81070CFD9C010F34D10000000000000000090F350D000CFD9C03000000060F350D02045489FB00000006138670FA04548A09138670FE0C9A870000000006000000090000000400000006000000020000000100000000000000030000000412073CFE0000000405000106135D4507000000030CFD9C010F34D100000000000CFD9C030F34D10200000001000000060F350D02045489FB1386ACFA0000000200000006138670FA0CFD9C090F34D0FE00000009000000040000000500000002000000010F350D000CFD9C03000000060F350D02000000060000000100000000135D81070CFD9C010F34D100000000000CFD9C03000000060F350D02045489FB00000006138670FA0CFD9C09000000060000000500000002000000010F350D00000000060000000000000003000000020000000100000000000000041151E9090000000408A91301120701000000000008A9130312070102000000010000000612073D0208A912FB00000006120700FA05000106135D450700000003050000FE135D810904548A0113867100000000000CFD9C03000000060F350D02000000060000000100000006000000040000000600000006000000020000000112073D0008A913030000000612073D02000000060000000100000000"
theorem small_10046018_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10046018_left_root small_10046018_left_fuel small_10046018_left_count small_10046018_left_encoded = true := by
  decide +kernel
theorem small_10046018_left_covered : CoveredBy scale carrier boxes small_10046018_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10046018_left_root small_10046018_left_fuel small_10046018_left_count small_10046018_left_encoded small_10046018_left_checked

theorem cover_10046018 : CoveredBy scale carrier boxes root_10046018 := by
  apply coveredBy_split_literal root_10046018 small_10046018_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3764.root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_10046018_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3764.covered
#print axioms cover_10046018

def root_10046012 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10046012_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10046012_left_fuel : Nat := 1
def small_10046012_left_count : Nat := 1
def small_10046012_left_encoded : String := "00000002"
theorem small_10046012_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10046012_left_root small_10046012_left_fuel small_10046012_left_count small_10046012_left_encoded = true := by
  decide +kernel
theorem small_10046012_left_covered : CoveredBy scale carrier boxes small_10046012_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10046012_left_root small_10046012_left_fuel small_10046012_left_count small_10046012_left_encoded small_10046012_left_checked

theorem cover_10046012 : CoveredBy scale carrier boxes root_10046012 := by
  apply coveredBy_split_literal root_10046012 small_10046012_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0676.root_10046018 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_10046012_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0676.cover_10046018
#print axioms cover_10046012

def root_10046011 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10046011_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10046011_right_fuel : Nat := 20
def small_10046011_right_count : Nat := 161
def small_10046011_right_encoded : String := "1151E8FB0A0001061151E907000000030A0000FE1152250908A91301120701000000000008A9130312070102000000010000000A12073D0208A91309120700FE050000FA000000090000000A0000000412073CFE00000004050000FA135D80FB0000000205000106135D45070000000304548A0113867100000000000CFD9C03000000060F350D0200000008000000010000000600000006135D44FB05000106135D45070000000304548A0113867100000000000CFD9C030000000A000000080000000A00000006000000020000000112073D0008A91303120701020000000108A91309000000060000000A12073D0208A91309120700FE050000FA00000006135D44FB00000006000000020000000412073CFE00000004000000060000000100000000000000041151E9090000000408A91301120701000000000008A913031207010200000001050000FA00000006135D44FB0500010600000006000000060000000212073D02000000060000000112073D0008A913031207010200000001050000FA000000060000000A0000000600000000115225070A0000FE1152250908A91301120701000000000008A9130312070102000000010000000A12073D0208A9130712070106000000030000000A12073D0608A91309120700FE000000080000000412073CFE00000004050000FA0000000600000006000000030000000112073D0008A9130312070102000000010000000612073D0208A91307120701060000000308A91309120700FE000000060000000400000006000000060000000100000000000000041151E9090000000408A9130112070100000000000000000612073D0008A9130312070102000000010000000A00000006000000000000000300000002"
theorem small_10046011_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10046011_right_root small_10046011_right_fuel small_10046011_right_count small_10046011_right_encoded = true := by
  decide +kernel
theorem small_10046011_right_covered : CoveredBy scale carrier boxes small_10046011_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10046011_right_root small_10046011_right_fuel small_10046011_right_count small_10046011_right_encoded small_10046011_right_checked

theorem cover_10046011 : CoveredBy scale carrier boxes root_10046011 := by
  apply coveredBy_split_literal root_10046011 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0676.root_10046012 small_10046011_right_root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0676.cover_10046012
  · exact small_10046011_right_covered
#print axioms cover_10046011

def root_10046006 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10046006_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10046006_right_fuel : Nat := 1
def small_10046006_right_count : Nat := 1
def small_10046006_right_encoded : String := "00000001"
theorem small_10046006_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10046006_right_root small_10046006_right_fuel small_10046006_right_count small_10046006_right_encoded = true := by
  decide +kernel
theorem small_10046006_right_covered : CoveredBy scale carrier boxes small_10046006_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10046006_right_root small_10046006_right_fuel small_10046006_right_count small_10046006_right_encoded small_10046006_right_checked

theorem cover_10046006 : CoveredBy scale carrier boxes root_10046006 := by
  apply coveredBy_split_literal root_10046006 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0676.root_10046011 small_10046006_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0676.cover_10046011
  · exact small_10046006_right_covered
#print axioms cover_10046006

def root_10043848 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10043848 : CoveredBy scale carrier boxes root_10043848 := by
  apply coveredBy_split_literal root_10043848 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3763.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0676.root_10046006 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3763.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0676.cover_10046006
#print axioms cover_10043848

def root_10043843 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10043843_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10043843_right_fuel : Nat := 1
def small_10043843_right_count : Nat := 1
def small_10043843_right_encoded : String := "00000000"
theorem small_10043843_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10043843_right_root small_10043843_right_fuel small_10043843_right_count small_10043843_right_encoded = true := by
  decide +kernel
theorem small_10043843_right_covered : CoveredBy scale carrier boxes small_10043843_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10043843_right_root small_10043843_right_fuel small_10043843_right_count small_10043843_right_encoded small_10043843_right_checked

theorem cover_10043843 : CoveredBy scale carrier boxes root_10043843 := by
  apply coveredBy_split_literal root_10043843 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0676.root_10043848 small_10043843_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0676.cover_10043848
  · exact small_10043843_right_covered
#print axioms cover_10043843

def root_10041913 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10041913 : CoveredBy scale carrier boxes root_10041913 := by
  apply coveredBy_split_literal root_10041913 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3762.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0676.root_10043843 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3762.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0676.cover_10043843
#print axioms cover_10041913

def root_9996297 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9996297 : CoveredBy scale carrier boxes root_9996297 := by
  apply coveredBy_split_literal root_9996297 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0676.root_9996298 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0676.root_10041913 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0676.cover_9996298
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0676.cover_10041913
#print axioms cover_9996297

def root_10049912 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10049912 : CoveredBy scale carrier boxes root_10049912 := by
  apply coveredBy_split_literal root_10049912 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3765.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3766.root coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3765.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3766.covered
#print axioms cover_10049912

def root_10049906 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10049906_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10049906_left_fuel : Nat := 1
def small_10049906_left_count : Nat := 1
def small_10049906_left_encoded : String := "00000000"
theorem small_10049906_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10049906_left_root small_10049906_left_fuel small_10049906_left_count small_10049906_left_encoded = true := by
  decide +kernel
theorem small_10049906_left_covered : CoveredBy scale carrier boxes small_10049906_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10049906_left_root small_10049906_left_fuel small_10049906_left_count small_10049906_left_encoded small_10049906_left_checked

theorem cover_10049906 : CoveredBy scale carrier boxes root_10049906 := by
  apply coveredBy_split_literal root_10049906 small_10049906_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0676.root_10049912 coord0 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_10049906_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0676.cover_10049912
#print axioms cover_10049906

def root_10049905 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10049905 : CoveredBy scale carrier boxes root_10049905 := by
  apply coveredBy_split_literal root_10049905 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0676.root_10049906 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3767.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0676.cover_10049906
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3767.covered
#print axioms cover_10049905

def root_10049904 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10049904 : CoveredBy scale carrier boxes root_10049904 := by
  apply coveredBy_split_literal root_10049904 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0676.root_10049905 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3768.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0676.cover_10049905
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3768.covered
#print axioms cover_10049904

def root_9996296 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9996296 : CoveredBy scale carrier boxes root_9996296 := by
  apply coveredBy_split_literal root_9996296 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0676.root_9996297 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0676.root_10049904 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0676.cover_9996297
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0676.cover_10049904
#print axioms cover_9996296

def root_9944476 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9944476 : CoveredBy scale carrier boxes root_9944476 := by
  apply coveredBy_split_literal root_9944476 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0673.root_9944477 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0676.root_9996296 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0673.cover_9944477
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0676.cover_9996296
#print axioms cover_9944476

def root_9831140 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9831140 : CoveredBy scale carrier boxes root_9831140 := by
  apply coveredBy_split_literal root_9831140 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0670.root_9831141 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0676.root_9944476 coord3 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0670.cover_9831141
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0676.cover_9944476
#print axioms cover_9831140

def root_10060850 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10060850 : CoveredBy scale carrier boxes root_10060850 := by
  apply coveredBy_split_literal root_10060850 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3770.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3771.root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3770.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3771.covered
#print axioms cover_10060850

def root_10060845 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10060845_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10060845_right_fuel : Nat := 1
def small_10060845_right_count : Nat := 1
def small_10060845_right_encoded : String := "00000001"
theorem small_10060845_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10060845_right_root small_10060845_right_fuel small_10060845_right_count small_10060845_right_encoded = true := by
  decide +kernel
theorem small_10060845_right_covered : CoveredBy scale carrier boxes small_10060845_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10060845_right_root small_10060845_right_fuel small_10060845_right_count small_10060845_right_encoded small_10060845_right_checked

theorem cover_10060845 : CoveredBy scale carrier boxes root_10060845 := by
  apply coveredBy_split_literal root_10060845 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0676.root_10060850 small_10060845_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0676.cover_10060850
  · exact small_10060845_right_covered
#print axioms cover_10060845

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0676
