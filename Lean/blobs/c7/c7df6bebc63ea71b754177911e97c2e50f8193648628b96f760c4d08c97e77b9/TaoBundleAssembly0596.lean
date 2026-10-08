import TaoBundleAssembly0589
import TaoBundleAssembly0592
import TaoBundleAssembly0595
import TaoBundleChunkBatch0812
import TaoBundleChunkBatch0813
import TaoBundleChunkBatch0815
import TaoBundleChunkBatch0816
import TaoBundleChunkBatch0817
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0596
def root_8678138 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8678138_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8678138_right_fuel : Nat := 30
def small_8678138_right_count : Nat := 499
def small_8678138_right_encoded : String := "12073CFA0000000208A91307120701060000000308A91309120701080000000404548A01138671000000000004548A030000000A1386ACF8000000010CFD9C050F34D0FA00000006000000020000000A1386AD0004548A030000000A1386ACF8000000010CFD9C0500000006000000060000000012073D0804548A01138671000000000004548A030000000A1386ACF8000000010CFD9C050F34D0FA0000000A000000020000000A0000000A0000000412073D0608A91309120701080000000404548A01138671000000000004548A03000000081386ACF8000000010CFD9C050F34D0FA0CFD9C070F34D1060000000304548A09000000061386AD08022A45810000000800000008000000040F350D06000000080000000300000002000000081386AD0004548A03138670F80CFD9C050F34D0FA000000080000000200000008000000011386ACF8000000010CFD9C050F34D0FA0CFD9C070F34D10600000003000000060F350D06000000080000000300000002000000080000000012073D0804548A01138671000000000004548A03138670F80CFD9C050F34D0FA0CFD9C070F34D106000000030CFD9C090000000A0F350D080000000A000000040F350D060CFD9C090F34D108000000040C9A8706000000080F878D0700000008000000030F350D080C9A87060F875107000000030C9A87080F87510900000004022A458113E1C50000000000022A458313E1C4F80AD3578510D100FA0000000700000002000000070000000113E200F8000000010AD3578510D100FA0B4D440610801107000000030000000610804D070000000A00000003000000020000000513E20100022A45830000000A00000005000000000F878D09022A45810000000800000008000000040F878D070C9A87080000000A0F878D09022A458113E1C50000000000022A45830000000A13E200F8000000010AD3578510D100FA0DE7CA060E5FD907000000030DE7CA0800000008000000070000000A00000002000000080000000A00000004000000030000000400000003000000020F350CFA000000020CFD9C070F34D106000000030000000A0F350D060CFD9C09000000080F350D080C9A86FA0F878D050C9A8706000000080000000A000000020F87510500000002000000050000000400000003000000011386ACF8000000010CFD9C050F34D0FA0CFD9C070F34D106000000030CFD9C090F34D10800000004022A458113E1C50000000000067ECE8312EA58F80AD3578510D100FA0AD357870000000A10D13D060AD357890000000810D13D080000000A0000000400000003000000020000000A0000000112EA94F8000000010AD3578510D100FA0AD357870000000A10D13D060AD3578910D10108000000040000000500000005000000030000000210D13CFA000000020000000A13E20100067ECE830000000A12EA94F8000000010AD3578510D100FA0AD357870000000A000000050000000200000005000000000F350D080C9A87080000000A0F878D09022A458113E1C50000000000067ECE830000000A12EA94F8000000010000000A0000000A00000004000000040F350D060CFD9C090F34D108000000040C9A87060F87510700000003022A458100000008000000080F878D07022A458113E1C50000000000067ECE8312EA58F8000000080000000112EA94F8000000010AD3578510D100FA0AD357890000000800000005000000020000000513E20100067ECE8312EA58F800000008000000010000000500000000000000030F350D080C9A87060F875107000000030C9A87080F87510900000004000000050F878D09022A458113E1C50000000000067ECE8312EA58F80AD3578510D100FA0B4D440600000008000000050000000200000005000000010000000500000005000000040F878D070C9A87080F87510900000004022A458113E1C50000000000067ECE830000000A00000005000000050F878D09022A458113E1C50000000000067ECE8312EA58F80AD3578510D100FA0DE7CA060E5FD907000000030DE7CA080E5FD9090000000400000005000000050E6015070000000A00000003000000020000000500000001000000050000000500000004000000030000000400000003000000020F350CFA000000020CFD9C070F34D106000000030000000A0F350D060CFD9C090F34D108000000040000000500000005000000031386AD0004548A03138670F80CFD9C050F34D0FA0CFD9C070F34D106000000030000000A0F350D060CFD9C090F34D108000000040C9A8706000000080F878D0700000008000000030F350D080C9A87060F875107000000030C9A87080000000A0F878D09067ECE810000000800000005000000040000000A0000000400000003000000020F350CFA000000020CFD9C070000000A0F350D060CFD9C090000000A0F350D080000000A0000000400000003000000011386ACF8000000010CFD9C050F34D0FA0CFD9C070F34D106000000030CFD9C090F34D10800000004067ECE8112EA5900000000000000000A0000000A0F350D080000000A000000040F350D060CFD9C090F34D108000000040C9A87060F87510700000003067ECE8100000008000000050F878D07067ECE8112EA590000000000067ECE8312EA58F800000008000000010000000500000005000000030F350D080C9A87060F8751070000000300000005000000050000000400000003000000020F350CFA000000020CFD9C070000000A00000005000000000000000400000003"
theorem small_8678138_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8678138_right_root small_8678138_right_fuel small_8678138_right_count small_8678138_right_encoded = true := by
  decide +kernel
theorem small_8678138_right_covered : CoveredBy scale carrier boxes small_8678138_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8678138_right_root small_8678138_right_fuel small_8678138_right_count small_8678138_right_encoded small_8678138_right_checked

theorem cover_8678138 : CoveredBy scale carrier boxes root_8678138 := by
  apply coveredBy_split_literal root_8678138 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0595.root_8678139 small_8678138_right_root coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0595.cover_8678139
  · exact small_8678138_right_covered
#print axioms cover_8678138

def root_8678133 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8678133_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8678133_right_fuel : Nat := 1
def small_8678133_right_count : Nat := 1
def small_8678133_right_encoded : String := "00000001"
theorem small_8678133_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8678133_right_root small_8678133_right_fuel small_8678133_right_count small_8678133_right_encoded = true := by
  decide +kernel
theorem small_8678133_right_covered : CoveredBy scale carrier boxes small_8678133_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8678133_right_root small_8678133_right_fuel small_8678133_right_count small_8678133_right_encoded small_8678133_right_checked

theorem cover_8678133 : CoveredBy scale carrier boxes root_8678133 := by
  apply coveredBy_split_literal root_8678133 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0596.root_8678138 small_8678133_right_root coord1 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0596.cover_8678138
  · exact small_8678133_right_covered
#print axioms cover_8678133

def root_8678132 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8678132 : CoveredBy scale carrier boxes root_8678132 := by
  apply coveredBy_split_literal root_8678132 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0596.root_8678133 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3259.root coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0596.cover_8678133
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3259.covered
#print axioms cover_8678132

def root_8678126 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8678126_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8678126_left_fuel : Nat := 1
def small_8678126_left_count : Nat := 1
def small_8678126_left_encoded : String := "00000000"
theorem small_8678126_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8678126_left_root small_8678126_left_fuel small_8678126_left_count small_8678126_left_encoded = true := by
  decide +kernel
theorem small_8678126_left_covered : CoveredBy scale carrier boxes small_8678126_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8678126_left_root small_8678126_left_fuel small_8678126_left_count small_8678126_left_encoded small_8678126_left_checked

theorem cover_8678126 : CoveredBy scale carrier boxes root_8678126 := by
  apply coveredBy_split_literal root_8678126 small_8678126_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0596.root_8678132 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_8678126_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0596.cover_8678132
#print axioms cover_8678126

def root_8678125 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8678125 : CoveredBy scale carrier boxes root_8678125 := by
  apply coveredBy_split_literal root_8678125 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0596.root_8678126 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3260.root coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0596.cover_8678126
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3260.covered
#print axioms cover_8678125

def root_8678120 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8678120_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8678120_right_fuel : Nat := 1
def small_8678120_right_count : Nat := 1
def small_8678120_right_encoded : String := "00000004"
theorem small_8678120_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8678120_right_root small_8678120_right_fuel small_8678120_right_count small_8678120_right_encoded = true := by
  decide +kernel
theorem small_8678120_right_covered : CoveredBy scale carrier boxes small_8678120_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8678120_right_root small_8678120_right_fuel small_8678120_right_count small_8678120_right_encoded small_8678120_right_checked

theorem cover_8678120 : CoveredBy scale carrier boxes root_8678120 := by
  apply coveredBy_split_literal root_8678120 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0596.root_8678125 small_8678120_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0596.cover_8678125
  · exact small_8678120_right_covered
#print axioms cover_8678120

def root_8675620 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8675620 : CoveredBy scale carrier boxes root_8675620 := by
  apply coveredBy_split_literal root_8675620 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3249.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0596.root_8678120 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3249.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0596.cover_8678120
#print axioms cover_8675620

def root_8675615 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8675615_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8675615_right_fuel : Nat := 1
def small_8675615_right_count : Nat := 1
def small_8675615_right_encoded : String := "00000003"
theorem small_8675615_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8675615_right_root small_8675615_right_fuel small_8675615_right_count small_8675615_right_encoded = true := by
  decide +kernel
theorem small_8675615_right_covered : CoveredBy scale carrier boxes small_8675615_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8675615_right_root small_8675615_right_fuel small_8675615_right_count small_8675615_right_encoded small_8675615_right_checked

theorem cover_8675615 : CoveredBy scale carrier boxes root_8675615 := by
  apply coveredBy_split_literal root_8675615 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0596.root_8675620 small_8675615_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0596.cover_8675620
  · exact small_8675615_right_covered
#print axioms cover_8675615

def root_8671515 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8671515 : CoveredBy scale carrier boxes root_8671515 := by
  apply coveredBy_split_literal root_8671515 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0592.root_8671516 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0596.root_8675615 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0592.cover_8671516
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0596.cover_8675615
#print axioms cover_8671515

def root_8671510 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8671510_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8671510_right_fuel : Nat := 1
def small_8671510_right_count : Nat := 1
def small_8671510_right_encoded : String := "00000002"
theorem small_8671510_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8671510_right_root small_8671510_right_fuel small_8671510_right_count small_8671510_right_encoded = true := by
  decide +kernel
theorem small_8671510_right_covered : CoveredBy scale carrier boxes small_8671510_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8671510_right_root small_8671510_right_fuel small_8671510_right_count small_8671510_right_encoded small_8671510_right_checked

theorem cover_8671510 : CoveredBy scale carrier boxes root_8671510 := by
  apply coveredBy_split_literal root_8671510 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0596.root_8671515 small_8671510_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0596.cover_8671515
  · exact small_8671510_right_covered
#print axioms cover_8671510

def root_8671509 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8671509_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8671509_right_fuel : Nat := 21
def small_8671509_right_count : Nat := 203
def small_8671509_right_encoded : String := "1151E905000000020A0001061151E907000000030A0001081151E90900000004000000051152250908A91301120701000000000008A91303120700F808A913091207010800000004050000FA00000008135D4505000000020000000812073D08050000FA135D810505000106135D45070000000304548A010000000800000005000000050000000200000005000000040000000112073CF80000000108A913091207010800000004000000050000000512073D0008A91303120700F808A913091207010800000004050000FA135D810505000106135D4507000000030CFD9C010F34D1000000000000000005000000050000000500000002000000050000000500000001000000050000000000000004115225070A0001081151E9090000000408A91301120701000000000008A91303120700F808A913070000000A12073D06050000FA0000000A00000005000000030000000112073CF80000000108A913070000000A0000000512073D0008A913030000000A00000005000000001152250908A91301120701000000000008A91303120700F808A9130712070106000000030000000A12073D0608A9130912070108000000040000000812073D08050000FA135D810504548A01138671000000000004548A03138670F80CFD9C070000000800000008000000011386ACF800000001000000050000000A00000002135D4505000000020000000500000004000000030000000112073CF80000000108A91307120701060000000308A913091207010800000004000000050000000512073D0608A91309120701080000000400000005000000050000000312073D0008A91303120700F808A913070000000A12073D0608A913091207010800000004050000FA135D81050CFD9C010F34D1000000000004548A0300000008000000050F350D0004548A030000000A000000050000000000000002135D4505000000020000000512073D08050000FA0000000A0000000500000004000000030000000112073CF80000000108A91307120701060000000308A913091207010800000004000000050000000512073D0608A913091207010800000004000000050000000500000003000000000000000400000003"
theorem small_8671509_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8671509_right_root small_8671509_right_fuel small_8671509_right_count small_8671509_right_encoded = true := by
  decide +kernel
theorem small_8671509_right_covered : CoveredBy scale carrier boxes small_8671509_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8671509_right_root small_8671509_right_fuel small_8671509_right_count small_8671509_right_encoded small_8671509_right_checked

theorem cover_8671509 : CoveredBy scale carrier boxes root_8671509 := by
  apply coveredBy_split_literal root_8671509 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0596.root_8671510 small_8671509_right_root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0596.cover_8671510
  · exact small_8671509_right_covered
#print axioms cover_8671509

def root_8671504 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8671504_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8671504_right_fuel : Nat := 1
def small_8671504_right_count : Nat := 1
def small_8671504_right_encoded : String := "00000001"
theorem small_8671504_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8671504_right_root small_8671504_right_fuel small_8671504_right_count small_8671504_right_encoded = true := by
  decide +kernel
theorem small_8671504_right_covered : CoveredBy scale carrier boxes small_8671504_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8671504_right_root small_8671504_right_fuel small_8671504_right_count small_8671504_right_encoded small_8671504_right_checked

theorem cover_8671504 : CoveredBy scale carrier boxes root_8671504 := by
  apply coveredBy_split_literal root_8671504 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0596.root_8671509 small_8671504_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0596.cover_8671509
  · exact small_8671504_right_covered
#print axioms cover_8671504

def root_8671503 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8671503_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8671503_right_fuel : Nat := 24
def small_8671503_right_count : Nat := 235
def small_8671503_right_encoded : String := "1151E903000000010A0000FA115225050A0001061151E907000000030A0001081151E90900000004000000051152250908A91301120701000000000008A91305120700FA08A913090000000912073D08050000F80000000900000005000000040000000212073CFA0000000208A91309000000090000000512073D0008A9130500000009000000050000000000000004115225070A0001081151E9090000000408A91301120701000000000008A91305120700FA08A913071207010600000003050000F800000007135D4503000000010000000712073D06050000F8135D810305000108135D45090000000404548A010000000700000005000000050000000100000005000000030000000212073CFA0000000208A913071207010600000003000000050000000512073D0008A91305120700FA08A913071207010600000003050000F8135D810305000108135D4509000000040CFD9C010F34D100000000000000000500000005000000050000000100000005000000050000000200000005000000001152250908A91301120701000000000008A91305120700FA08A91307120701060000000308A913090000000712073D08000000070000000412073D0608A9130912070108000000040000000912073D08050000F8135D810304548A01138671000000000004548A05138670FA0CFD9C07000000070F350D060000000900000003000000021386ACFA00000002000000050000000900000001135D4503000000010000000500000004000000030000000212073CFA0000000208A91307120701060000000308A913091207010800000004000000050000000512073D0608A91309120701080000000400000005000000050000000312073D0008A91305120700FA08A91307120701060000000308A913090000000912073D08050000F8135D81030CFD9C010F34D1000000000004548A0500000007000000050F350D0004548A0500000009000000050000000000000001135D450300000001000000050000000412073D0608A913090000000912073D08050000F8000000090000000500000004000000030000000212073CFA0000000208A91307120701060000000308A913091207010800000004000000050000000512073D0608A913091207010800000004000000050000000500000003000000000000000400000003000000021151E905000000020A0001061151E9070000000300000005115225070A0001081151E90900000004000000051152250908A91301120701000000000000000005000000050000000400000003"
theorem small_8671503_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8671503_right_root small_8671503_right_fuel small_8671503_right_count small_8671503_right_encoded = true := by
  decide +kernel
theorem small_8671503_right_covered : CoveredBy scale carrier boxes small_8671503_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8671503_right_root small_8671503_right_fuel small_8671503_right_count small_8671503_right_encoded small_8671503_right_checked

theorem cover_8671503 : CoveredBy scale carrier boxes root_8671503 := by
  apply coveredBy_split_literal root_8671503 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0596.root_8671504 small_8671503_right_root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0596.cover_8671504
  · exact small_8671503_right_covered
#print axioms cover_8671503

def root_8671498 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8671498_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8671498_right_fuel : Nat := 1
def small_8671498_right_count : Nat := 1
def small_8671498_right_encoded : String := "00000000"
theorem small_8671498_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8671498_right_root small_8671498_right_fuel small_8671498_right_count small_8671498_right_encoded = true := by
  decide +kernel
theorem small_8671498_right_covered : CoveredBy scale carrier boxes small_8671498_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8671498_right_root small_8671498_right_fuel small_8671498_right_count small_8671498_right_encoded small_8671498_right_checked

theorem cover_8671498 : CoveredBy scale carrier boxes root_8671498 := by
  apply coveredBy_split_literal root_8671498 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0596.root_8671503 small_8671498_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0596.cover_8671503
  · exact small_8671498_right_covered
#print axioms cover_8671498

def root_8669456 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8669456 : CoveredBy scale carrier boxes root_8669456 := by
  apply coveredBy_split_literal root_8669456 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3246.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0596.root_8671498 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3246.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0596.cover_8671498
#print axioms cover_8669456

def root_8665446 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8665446 : CoveredBy scale carrier boxes root_8665446 := by
  apply coveredBy_split_literal root_8665446 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0592.root_8665447 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0596.root_8669456 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0592.cover_8665447
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0596.cover_8669456
#print axioms cover_8665446

def root_8659458 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8659458 : CoveredBy scale carrier boxes root_8659458 := by
  apply coveredBy_split_literal root_8659458 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0592.root_8659459 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0596.root_8665446 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0592.cover_8659459
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0596.cover_8665446
#print axioms cover_8659458

def root_8650260 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8650260 : CoveredBy scale carrier boxes root_8650260 := by
  apply coveredBy_split_literal root_8650260 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0592.root_8650261 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0596.root_8659458 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0592.cover_8650261
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0596.cover_8659458
#print axioms cover_8650260

def root_8603106 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8603106 : CoveredBy scale carrier boxes root_8603106 := by
  apply coveredBy_split_literal root_8603106 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0592.root_8603107 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0596.root_8650260 coord3 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0592.cover_8603107
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0596.cover_8650260
#print axioms cover_8603106

def root_8529358 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8529358 : CoveredBy scale carrier boxes root_8529358 := by
  apply coveredBy_split_literal root_8529358 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0589.root_8529359 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0596.root_8603106 coord2 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0589.cover_8529359
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0596.cover_8603106
#print axioms cover_8529358

def root_8712879 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8712879 : CoveredBy scale carrier boxes root_8712879 := by
  apply coveredBy_split_literal root_8712879 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3262.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3263.root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3262.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3263.covered
#print axioms cover_8712879

def root_8712873 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8712873_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8712873_left_fuel : Nat := 1
def small_8712873_left_count : Nat := 1
def small_8712873_left_encoded : String := "00000003"
theorem small_8712873_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8712873_left_root small_8712873_left_fuel small_8712873_left_count small_8712873_left_encoded = true := by
  decide +kernel
theorem small_8712873_left_covered : CoveredBy scale carrier boxes small_8712873_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8712873_left_root small_8712873_left_fuel small_8712873_left_count small_8712873_left_encoded small_8712873_left_checked

theorem cover_8712873 : CoveredBy scale carrier boxes root_8712873 := by
  apply coveredBy_split_literal root_8712873 small_8712873_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0596.root_8712879 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_8712873_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0596.cover_8712879
#print axioms cover_8712873

def root_8712872 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8712872_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8712872_right_fuel : Nat := 22
def small_8712872_right_count : Nat := 91
def small_8712872_right_encoded : String := "1151E8FD0A0000FE1152250900000005000000041151E9090000000408A91303120700F8000000050000000112073CF80000000108A912FB12073D040500010000000005135D8101000000050000000000000002120701040000000205000100135D450100000000050000FC135D80FD00000003050000FE0000000500000009135D44FD050000FE000000050000000900000003135D8101050000FC135D80FD00000003050000FE135D81090CFD9C03000000050F350CF800000001045489FB0000000513867104000000020C9A86F8000000050F875103000000010780010000000005128A7D01000000050000000000000004135D4509000000040CFD9C030F34D0F8000000050000000100000009135D44FD050000FE135D81090CFD9C03000000050F350CF800000001045489FB0000000513867104000000020000000900000004135D4509000000040CFD9C030F34D0F8000000050000000100000009000000030000000000000003"
theorem small_8712872_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8712872_right_root small_8712872_right_fuel small_8712872_right_count small_8712872_right_encoded = true := by
  decide +kernel
theorem small_8712872_right_covered : CoveredBy scale carrier boxes small_8712872_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8712872_right_root small_8712872_right_fuel small_8712872_right_count small_8712872_right_encoded small_8712872_right_checked

theorem cover_8712872 : CoveredBy scale carrier boxes root_8712872 := by
  apply coveredBy_split_literal root_8712872 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0596.root_8712873 small_8712872_right_root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0596.cover_8712873
  · exact small_8712872_right_covered
#print axioms cover_8712872

def root_8712866 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8712866_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8712866_left_fuel : Nat := 1
def small_8712866_left_count : Nat := 1
def small_8712866_left_encoded : String := "00000002"
theorem small_8712866_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8712866_left_root small_8712866_left_fuel small_8712866_left_count small_8712866_left_encoded = true := by
  decide +kernel
theorem small_8712866_left_covered : CoveredBy scale carrier boxes small_8712866_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8712866_left_root small_8712866_left_fuel small_8712866_left_count small_8712866_left_encoded small_8712866_left_checked

theorem cover_8712866 : CoveredBy scale carrier boxes root_8712866 := by
  apply coveredBy_split_literal root_8712866 small_8712866_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0596.root_8712872 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_8712866_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0596.cover_8712872
#print axioms cover_8712866

def root_8712766 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8712766_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8712766_left_fuel : Nat := 15
def small_8712766_left_count : Nat := 47
def small_8712766_left_encoded : String := "1151E8FB0A0000FC115224FD000000030A0000FE1152250908A91303120700F808A912FD00000005120700FC08A913090000000512073CFE0000000400000005000000030000000112073CF80000000108A912FD00000005120700FC08A913090000000512073CFE0000000405000100135D4501000000000500010400000007000000050000000500000003000000041151E9090000000408A913030000000512073CF800000001000000051151E8FD000000050000000300000002"
theorem small_8712766_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8712766_left_root small_8712766_left_fuel small_8712766_left_count small_8712766_left_encoded = true := by
  decide +kernel
theorem small_8712766_left_covered : CoveredBy scale carrier boxes small_8712766_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8712766_left_root small_8712766_left_fuel small_8712766_left_count small_8712766_left_encoded small_8712766_left_checked

theorem cover_8712766 : CoveredBy scale carrier boxes root_8712766 := by
  apply coveredBy_split_literal root_8712766 small_8712766_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0596.root_8712866 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_8712766_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0596.cover_8712866
#print axioms cover_8712766

def root_8712761 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8712761_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8712761_right_fuel : Nat := 1
def small_8712761_right_count : Nat := 1
def small_8712761_right_encoded : String := "00000001"
theorem small_8712761_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8712761_right_root small_8712761_right_fuel small_8712761_right_count small_8712761_right_encoded = true := by
  decide +kernel
theorem small_8712761_right_covered : CoveredBy scale carrier boxes small_8712761_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8712761_right_root small_8712761_right_fuel small_8712761_right_count small_8712761_right_encoded small_8712761_right_checked

theorem cover_8712761 : CoveredBy scale carrier boxes root_8712761 := by
  apply coveredBy_split_literal root_8712761 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0596.root_8712766 small_8712761_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0596.cover_8712766
  · exact small_8712761_right_covered
#print axioms cover_8712761

def root_8721783 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8721783 : CoveredBy scale carrier boxes root_8721783 := by
  apply coveredBy_split_literal root_8721783 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3265.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3266.root coord3 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3265.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3266.covered
#print axioms cover_8721783

def root_8721777 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8721777_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8721777_left_fuel : Nat := 1
def small_8721777_left_count : Nat := 1
def small_8721777_left_encoded : String := "00000002"
theorem small_8721777_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8721777_left_root small_8721777_left_fuel small_8721777_left_count small_8721777_left_encoded = true := by
  decide +kernel
theorem small_8721777_left_covered : CoveredBy scale carrier boxes small_8721777_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8721777_left_root small_8721777_left_fuel small_8721777_left_count small_8721777_left_encoded small_8721777_left_checked

theorem cover_8721777 : CoveredBy scale carrier boxes root_8721777 := by
  apply coveredBy_split_literal root_8721777 small_8721777_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0596.root_8721783 coord2 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_8721777_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0596.cover_8721783
#print axioms cover_8721777

def root_8721349 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8721349_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8721349_left_fuel : Nat := 23
def small_8721349_left_count : Nat := 207
def small_8721349_left_encoded : String := "1386AD04045489FD1386ACFC000000030CFD9C09000000050F350CFE000000040C9A86FE0F878D0900000005000000040F8751090000000407800100128A410100000000078000F80000000500000007128A7D01078000F800000005128A410300000001067ECE7B0000000512EA590400000002067ECE7D0000000512EA58FC0B4D43FE000000051080110900000004000000070000000300000000138670FC0CFD9C090F34D0FE00000005000000040F350CFE000000040C9A86FE0F878D0907800100128A410100000000078000F8128A7D03067ECE7B0000000512EA590400000002022A457D000000050000000800000001128A410300000001067ECE7B0000000512EA590400000002022A457D0000000500000009128A7D01078000F8128A7D03067ECE7B000000050000000900000001128A410300000001067ECE7B000000050000000900000000000000040F8751090000000407800100128A410100000000078000F8128A7D03067ECE7B12EA9504022A457D0000000513E1C4FC00000008000000030000000212EA590400000002022A457D13E200FC000000030B4D43FE10804D09000000050000000410801109000000040640010012FF71010000000008C000F811FC250300000005000000010000000712FFAD0108C000F811FC2503000000050000000111FBE903000000010569AC3B00000005000000090000000013E1C4FC0B4D43FE0000000810801109000000040640010000000008000000080000000300000001128A410300000001067ECE7B0000000712EA590400000002022A457D0000000713E1C4FC0B4D43FE00000009108011090000000406400100000000090000000900000003128A7D01078000F8128A7D03067ECE7B12EA9504022A457D00000005000000090000000212EA590400000002022A457D13E200FC000000030B4D43FE00000009108011090000000408C0010011FBE9010000000008C000F80000000500000009000000090000000900000001128A410300000001067ECE7B12EA9504022A457D00000005000000090000000212EA590400000002022A457D13E200FC000000030B4D43FE00000009108011090000000408C00100000000090000000900000009000000000000000300000002"
theorem small_8721349_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8721349_left_root small_8721349_left_fuel small_8721349_left_count small_8721349_left_encoded = true := by
  decide +kernel
theorem small_8721349_left_covered : CoveredBy scale carrier boxes small_8721349_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8721349_left_root small_8721349_left_fuel small_8721349_left_count small_8721349_left_encoded small_8721349_left_checked

theorem cover_8721349 : CoveredBy scale carrier boxes root_8721349 := by
  apply coveredBy_split_literal root_8721349 small_8721349_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0596.root_8721777 coord2 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact small_8721349_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0596.cover_8721777
#print axioms cover_8721349

def root_8721344 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8721344_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8721344_right_fuel : Nat := 1
def small_8721344_right_count : Nat := 1
def small_8721344_right_encoded : String := "00000001"
theorem small_8721344_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8721344_right_root small_8721344_right_fuel small_8721344_right_count small_8721344_right_encoded = true := by
  decide +kernel
theorem small_8721344_right_covered : CoveredBy scale carrier boxes small_8721344_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8721344_right_root small_8721344_right_fuel small_8721344_right_count small_8721344_right_encoded small_8721344_right_checked

theorem cover_8721344 : CoveredBy scale carrier boxes root_8721344 := by
  apply coveredBy_split_literal root_8721344 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0596.root_8721349 small_8721344_right_root coord1 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0596.cover_8721349
  · exact small_8721344_right_covered
#print axioms cover_8721344

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0596
