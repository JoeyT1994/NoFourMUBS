import TaoBundleAssembly0036
import TaoBundleChunkBatch0155
import TaoBundleChunkBatch0156
import TaoBundleChunkBatch0157
import TaoBundleChunkBatch0158
import TaoBundleChunkBatch0160
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0037
def root_1587751 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1587751_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1587751_right_fuel : Nat := 20
def small_1587751_right_count : Nat := 287
def small_1587751_right_encoded : String := "12073D0408A912FD12073CFC00000003050000F6135D80F70000000005000108135D4509000000040CFD9BF90F350D020CFD9C050F34D104000000020CFD9BFD0F350CFC000000030C9A8702000000050F878CF9000000010C9A86FC000000050F8750FD078000F600000005128A40F70000000700000000000000030000000500000005000000010F34D102000000010CFD9C050F34D104000000020CFD9BFD0F350CFC000000030C9A86FC000000050F8750FD078000F600000005128A40F7028001080000000513D7ED0900000007000000040000000000000003000000060F350D040000000500000002135D81090CFD9BF90F350D020CFD9C050F34D104000000020CFD9BFD0F350CFC000000030C9A87020F8750F90C9A86FC0000000800000007000000010F878CF9000000010C9A86FC000000080F8750FD00000007000000030F34D0FC0C9A87020000000500000008000000030F350D040CFD9BFD000000080F34D0FC000000050000000300000002000000010F34D102000000010CFD9C050F34D104000000020CFD9BFD0F350CFC000000030C9A86FC000000080F8750FD00000008000000030F34D0FC00000008000000030000000800000004135D44F705000108135D4509000000040CFD9BF90F350D020CFD9C050F34D104000000020CFD9BFD0F350CFC000000030C9A8702000000070F878CF9000000010C9A86FC0F878CFD0000000300000007000000070F34D0FC00000005000000030F350D040CFD9BFD0F350CFC000000030C9A8702000000050F878CF9000000010C9A8704000000050F878D050C9A86FC0000000500000007000000020000000500000002000000010F34D102000000010CFD9C050F34D104000000020CFD9BFD0F350CFC000000030C9A86FC000000060F8750FD028000F6000000070000000700000003000000060F350D040CFD9BFD0F350CFC000000030C9A87040F87510500000002000000050F878D050C9A86FC0000000600000007000000020F34D0FC000000050000000300000002135D81090CFD9BF90F350D020CFD9C050F34D104000000020CFD9BFD0F350CFC000000030C9A8702000000070F878CF9000000010C9A86FC0F878CFD0000000300000007000000070F34D0FC0C9A8702000000070F878CF900000001028000F60000000700000007000000030F350D040CFD9BFD0F350CFC000000030C9A87020F8750F90C9A87040F87510500000002000000080000000700000001000000080F34D0FC000000080000000300000002000000010F34D102000000010CFD9C050F34D104000000020CFD9BFD0F350CFC000000030C9A86FC0F878CFD00000003028000F60000000700000007000000070F34D0FC00000006000000030F350D040CFD9BFD000000080F34D0FC0000000800000003000000020000000400000000120700FC050000F600000005135D44F70500010800000005135D81090CFD9BF90F350D020CFD9C050F34D10400000002045489FD1386ACFC000000030C9A870200000005000000060000000500000005000000010F34D102000000010000000600000004000000000000000300000002"
theorem small_1587751_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1587751_right_root small_1587751_right_fuel small_1587751_right_count small_1587751_right_encoded = true := by
  decide +kernel
theorem small_1587751_right_covered : CoveredBy scale carrier boxes small_1587751_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1587751_right_root small_1587751_right_fuel small_1587751_right_count small_1587751_right_encoded small_1587751_right_checked

theorem cover_1587751 : CoveredBy scale carrier boxes root_1587751 := by
  apply coveredBy_split_literal root_1587751 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0036.root_1587752 small_1587751_right_root coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0036.cover_1587752
  · exact small_1587751_right_covered
#print axioms cover_1587751

def root_1587746 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1587746_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1587746_right_fuel : Nat := 1
def small_1587746_right_count : Nat := 1
def small_1587746_right_encoded : String := "00000001"
theorem small_1587746_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1587746_right_root small_1587746_right_fuel small_1587746_right_count small_1587746_right_encoded = true := by
  decide +kernel
theorem small_1587746_right_covered : CoveredBy scale carrier boxes small_1587746_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1587746_right_root small_1587746_right_fuel small_1587746_right_count small_1587746_right_encoded small_1587746_right_checked

theorem cover_1587746 : CoveredBy scale carrier boxes root_1587746 := by
  apply coveredBy_split_literal root_1587746 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0037.root_1587751 small_1587746_right_root coord1 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0037.cover_1587751
  · exact small_1587746_right_covered
#print axioms cover_1587746

def root_1587745 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1587745_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1587745_right_fuel : Nat := 25
def small_1587745_right_count : Nat := 253
def small_1587745_right_encoded : String := "120701020000000108A91305120701040000000208A912FD12073CFC00000003050000F6135D80F70000000005000108135D45090000000400000006135D8109045489F91386AD0204548A0513867104000000020CFD9BFD0F350CFC000000030C9A86FC0F878CFD00000003078000F6128A7CF7000000000780010800000006128A7D090000000900000004000000090F8750FD078000F6128A7CF70000000007800108128A410900000004067ECE7912EA9502022A458500000009000000060000000100000006128A7D09067ECE7912EA9502022A458500000009000000080000000112EA590200000001022A4585000000090000000800000004128A40F707800108128A41090000000400000006128A7D09067ECE7900000009000000090000000400000000000000030F34D0FC00000006000000031386AD040CFD9BFD0F350CFC000000030C9A86FC0F878CFD00000003000000060F8750FD078000F6128A7CF7000000000000000A128A40F70780010800000006128A7D09000000080000000400000000000000030F34D0FC00000006000000030000000200000001138671020000000104548A0513867104000000020CFD9BFD0F350CFC000000030C9A86FC000000060F8750FD078000F6128A7CF7000000000780010800000006128A7D09022A45790000000600000006000000040000000900000003000000060000000600000004135D44F70500010800000006135D8109045489F91386AD0204548A051386710400000002000000091386AD040CFD9BFD0F350CFC000000030C9A86FC000000060F8750FD028000F613D7ECF70000000007800108000000060000000700000007000000030000000600000002000000011386710200000001000000060000000400000000120700FC000000060000000312073D0408A912FD12073CFC00000003050000F6135D80F70000000005000108135D450900000004045489F91386AD020CFD9C050F34D1040000000200000006000000060000000100000006135D8109045489F91386AD020CFD9C050F34D104000000020CFD9BFD000000080F34D0FC0000000600000003000000080000000113867102000000010CFD9C050F34D10400000002000000060000000800000004135D44F705000108135D450900000004045489F91386AD020CFD9C050F34D1040000000200000006000000060000000100000006135D8109045489F91386AD020CFD9C050F34D104000000020CFD9BFD0F350CFC000000030C9A86FC0000000600000007000000060F350D040CFD9BFD000000080F34D0FC0000000600000003000000020000000113867102000000010CFD9C050F34D1040000000200000006000000060000000400000000120700FC000000060000000300000002"
theorem small_1587745_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1587745_right_root small_1587745_right_fuel small_1587745_right_count small_1587745_right_encoded = true := by
  decide +kernel
theorem small_1587745_right_covered : CoveredBy scale carrier boxes small_1587745_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1587745_right_root small_1587745_right_fuel small_1587745_right_count small_1587745_right_encoded small_1587745_right_checked

theorem cover_1587745 : CoveredBy scale carrier boxes root_1587745 := by
  apply coveredBy_split_literal root_1587745 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0037.root_1587746 small_1587745_right_root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0037.cover_1587746
  · exact small_1587745_right_covered
#print axioms cover_1587745

def root_1587739 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1587739_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1587739_left_fuel : Nat := 1
def small_1587739_left_count : Nat := 1
def small_1587739_left_encoded : String := "00000004"
theorem small_1587739_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1587739_left_root small_1587739_left_fuel small_1587739_left_count small_1587739_left_encoded = true := by
  decide +kernel
theorem small_1587739_left_covered : CoveredBy scale carrier boxes small_1587739_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1587739_left_root small_1587739_left_fuel small_1587739_left_count small_1587739_left_encoded small_1587739_left_checked

theorem cover_1587739 : CoveredBy scale carrier boxes root_1587739 := by
  apply coveredBy_split_literal root_1587739 small_1587739_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0037.root_1587745 coord4 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_1587739_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0037.cover_1587745
#print axioms cover_1587739

def root_1587738 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1587738 : CoveredBy scale carrier boxes root_1587738 := by
  apply coveredBy_split_literal root_1587738 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0037.root_1587739 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0620.root coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0037.cover_1587739
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0620.covered
#print axioms cover_1587738

def root_1587732 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1587732_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1587732_left_fuel : Nat := 1
def small_1587732_left_count : Nat := 1
def small_1587732_left_encoded : String := "00000003"
theorem small_1587732_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1587732_left_root small_1587732_left_fuel small_1587732_left_count small_1587732_left_encoded = true := by
  decide +kernel
theorem small_1587732_left_covered : CoveredBy scale carrier boxes small_1587732_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1587732_left_root small_1587732_left_fuel small_1587732_left_count small_1587732_left_encoded small_1587732_left_checked

theorem cover_1587732 : CoveredBy scale carrier boxes root_1587732 := by
  apply coveredBy_split_literal root_1587732 small_1587732_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0037.root_1587738 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_1587732_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0037.cover_1587738
#print axioms cover_1587732

def root_1595492 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-6291456)⟩, ⟨(-15553280), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(-15553280), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1595492_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-6291456)⟩, ⟨(-15553280), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(-15553280), (-14529024)⟩⟩, ⟨⟨(0), (2097152)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1595492_left_fuel : Nat := 19
def small_1595492_left_count : Nat := 287
def small_1595492_left_encoded : String := "13D7B10900000004022A458513E1C504000000020DE7CA020E5FD8F908C000F611FC24F70000000008C000FC11FC24FD000000030140010813F5D9090000000401152345000000080000000513F615090115234513F85904000000020D412882000000080EFA4CF9000000010000000813F895040D412882000000050EFA4CF900000001096000F60000000511AA80F70000000900000000000000020000000411FBE8FD014001080000000813F61509011523450000000800000009000000040000000311FBE8F708C000FC11FC24FD00000003014001080000000813F61509011523450000000813F895040D412882000000080EFA4CF9000000010000000800000002000000040000000800000000000000010E6014F90000000108C000F611FC24F70000000008C000FC11FC24FD000000030140010813F5D9090000000401152345000000080000000513F615090115234513F85904000000020DAED8790E966102096000F611AABCF7000000000000000800000008000000010E96250200000001096000F611AABCF700000000000000080000000813F895040DAED8790E966102096000F60000000511AA80F7096000FC000000050000000800000000000000010E96250200000001096000F60000000511AA80F70000000600000000000000020000000411FBE8FD014001080000000813F61509011523450000000813F895040DAED8790E96610200000009000000010E96250200000001096000F60000000A0000000800000002000000040000000311FBE8F708C000FC11FC24FD00000003014001080000000813F61509011523450000000813F895040DAED8790E966102082000F6124698F700000000096000FC000000060000000800000008000000010E96250200000001000000060000000200000004000000080000000013E201040DE7CA020E5FD8F908C000F611FC24F7000000000000000911FBE8F708C000FC11FC24FD000000030140010813F5D909000000040000000913F61509033F67C513BBF504000000020D412882000000070EFA4CF9000000010000000900000007000000040000000900000000000000010E6014F90000000108C000F611FC24F70000000008C000FC11FC24FD00000003014001080000000513F61509033F67C513BBF504000000020DAED8790E966102000000050000000100000005000000050000000411FBE8FD0140010800000009000000090000000311FBE8F708C000FC11FC24FD000000030140010813F5D909000000040000000613F61509033F67C513BBF504000000020DAED8790E966102082000F6124698F700000000096000FC000000050000000912465CF7096000FC000000060000000700000000000000010E962502000000010000000613BC31040DAED8790E96610200000007000000010E9625020000000100000006000000020000000411FBE8FD0140010813F5D90900000004033F67C5000000080000000913F61509033F67C513BBF504000000020DAED8790E96610200000009000000010E96250200000001082000F600000009000000080000000900000004000000030000000000000002"
theorem small_1595492_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1595492_left_root small_1595492_left_fuel small_1595492_left_count small_1595492_left_encoded = true := by
  decide +kernel
theorem small_1595492_left_covered : CoveredBy scale carrier boxes small_1595492_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1595492_left_root small_1595492_left_fuel small_1595492_left_count small_1595492_left_encoded small_1595492_left_checked

theorem cover_1595492 : CoveredBy scale carrier boxes root_1595492 := by
  apply coveredBy_split_literal root_1595492 small_1595492_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0621.root coord4 false (2097152)
  · decide +kernel
  · decide +kernel
  · exact small_1595492_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0621.covered
#print axioms cover_1595492

def root_1595486 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-6291456)⟩, ⟨(-15553280), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1595486_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-6291456)⟩, ⟨(-15553280), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(-16244736), (-15553280)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1595486_left_fuel : Nat := 1
def small_1595486_left_count : Nat := 1
def small_1595486_left_encoded : String := "00000003"
theorem small_1595486_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1595486_left_root small_1595486_left_fuel small_1595486_left_count small_1595486_left_encoded = true := by
  decide +kernel
theorem small_1595486_left_covered : CoveredBy scale carrier boxes small_1595486_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1595486_left_root small_1595486_left_fuel small_1595486_left_count small_1595486_left_encoded small_1595486_left_checked

theorem cover_1595486 : CoveredBy scale carrier boxes root_1595486 := by
  apply coveredBy_split_literal root_1595486 small_1595486_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0037.root_1595492 coord3 true (-15553280)
  · decide +kernel
  · decide +kernel
  · exact small_1595486_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0037.cover_1595492
#print axioms cover_1595486

def root_1595485 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-6291456)⟩, ⟨(-15553280), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1595485_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-6291456)⟩, ⟨(-15553280), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-6291456), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1595485_right_fuel : Nat := 16
def small_1595485_right_count : Nat := 101
def small_1595485_right_encoded : String := "128A40FD0280010813D7B10900000004022A458513E1C504000000020DE7CA02000000080E6014F90000000108C000F611FC24F700000000000000080000000813E201040DE7CA02000000090E6014F90000000108C000F60000000911FBE8F700000009000000000000000213D7ED09022A458513E1C504000000020DE7CA020E5FD8F908C000F60000000911FBE8F7064000FC12FFACFD0000000303C0010800000008000000050000000500000000000000010E6014F90000000108C000F611FC24F700000000064000FC12FFACFD0000000303C0010813A511090000000401152345000000080000000913A54D090115234513F859040000000200000005000000090000000412FF70FD03C0010800000009000000050000000311FBE8F7064000FC12FFACFD0000000303C0010813A51109000000040000000800000005000000050000000013E201040DE7CA02000000090E6014F90000000108C000F60000000911FBE8F7064000FC12FFACFD0000000303C0010800000009000000090000000900000000000000020000000400000003"
theorem small_1595485_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1595485_right_root small_1595485_right_fuel small_1595485_right_count small_1595485_right_encoded = true := by
  decide +kernel
theorem small_1595485_right_covered : CoveredBy scale carrier boxes small_1595485_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1595485_right_root small_1595485_right_fuel small_1595485_right_count small_1595485_right_encoded small_1595485_right_checked

theorem cover_1595485 : CoveredBy scale carrier boxes root_1595485 := by
  apply coveredBy_split_literal root_1595485 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0037.root_1595486 small_1595485_right_root coord3 false (-6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0037.cover_1595486
  · exact small_1595485_right_covered
#print axioms cover_1595485

def root_1595479 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-6291456)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1595479_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-6291456)⟩, ⟨(-16244736), (-15553280)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1595479_left_fuel : Nat := 1
def small_1595479_left_count : Nat := 1
def small_1595479_left_encoded : String := "00000000"
theorem small_1595479_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1595479_left_root small_1595479_left_fuel small_1595479_left_count small_1595479_left_encoded = true := by
  decide +kernel
theorem small_1595479_left_covered : CoveredBy scale carrier boxes small_1595479_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1595479_left_root small_1595479_left_fuel small_1595479_left_count small_1595479_left_encoded small_1595479_left_checked

theorem cover_1595479 : CoveredBy scale carrier boxes root_1595479 := by
  apply coveredBy_split_literal root_1595479 small_1595479_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0037.root_1595485 coord0 true (-15553280)
  · decide +kernel
  · decide +kernel
  · exact small_1595479_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0037.cover_1595485
#print axioms cover_1595479

def root_1595478 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1595478_right_root : ZRayBox := fun j => (#[⟨⟨(-6291456), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1595478_right_fuel : Nat := 23
def small_1595478_right_count : Nat := 217
def small_1595478_right_encoded : String := "128A40F7078000FC128A7CFD000000030280010813D7B10900000004022A458513E1C504000000020DE7CA02000000080E6014F900000001064000F612FFACF70000000008C000FC11FC24FD0000000300000008000000080000000813E201040DE7CA020E5FD8F9064000F612FFACF70000000008C000FC11FC24FD00000003000000070000000700000007000000010E6014F900000001064000F612FFACF70000000008C000FC11FC24FD00000003014001080000000613F61509033F67C513BBF504000000020DAED8790E966102000000070000000100000006000000070000000411FBE8FD014001080000000813F61509033F67C50000000800000007000000040000000312FF70F708C000FC11FC24FD0000000301400108000000060000000711FBE8FD01400108000000080000000700000003000000000000000213D7ED09022A458513E1C504000000020DE7CA020E5FD8F9064000F612FFACF70000000008C000FC0000000A11FBE8FD03C0010800000008000000050000000300000007000000010E6014F900000001064000F612FFACF70000000008C000FC11FC24FD0000000303C0010813A5110900000004011523450000000813F895040DAED8790E96610200000007000000010E9625020000000106E000F612C820F700000000096000FC0000000600000008000000070000000213A54D090115234513F859040000000200000005000000070000000411FBE8FD03C0010813A511090000000400000008000000050000000312FF70F708C000FC0000000A000000050000000013E201040DE7CA02000000070E6014F900000001064000F612FFACF70000000008C000FC11FC24FD000000030000000700000007000000070000000200000004128A40FD0280010813D7B10900000004022A45850000000813E201040DE7CA020E5FD8F900000009000000010E6014F900000001064000F612FFACF700000000064000FC12FFACFD00000003014001080000000813F61509033F67C500000008000000070000000400000008000000080000000213D7ED09022A458513E1C504000000020DE7CA020E5FD8F900000005000000010000000513E201040DE7CA02000000070E6014F900000001064000F612FFACF700000000064000FC12FFACFD0000000300000007000000050000000500000002000000040000000300000000"
theorem small_1595478_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1595478_right_root small_1595478_right_fuel small_1595478_right_count small_1595478_right_encoded = true := by
  decide +kernel
theorem small_1595478_right_covered : CoveredBy scale carrier boxes small_1595478_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1595478_right_root small_1595478_right_fuel small_1595478_right_count small_1595478_right_encoded small_1595478_right_checked

theorem cover_1595478 : CoveredBy scale carrier boxes root_1595478 := by
  apply coveredBy_split_literal root_1595478 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0037.root_1595479 small_1595478_right_root coord0 false (-6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0037.cover_1595479
  · exact small_1595478_right_covered
#print axioms cover_1595478

def root_1595472 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1595472_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-13027072)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1595472_left_fuel : Nat := 1
def small_1595472_left_count : Nat := 1
def small_1595472_left_encoded : String := "00000001"
theorem small_1595472_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1595472_left_root small_1595472_left_fuel small_1595472_left_count small_1595472_left_encoded = true := by
  decide +kernel
theorem small_1595472_left_covered : CoveredBy scale carrier boxes small_1595472_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1595472_left_root small_1595472_left_fuel small_1595472_left_count small_1595472_left_encoded small_1595472_left_checked

theorem cover_1595472 : CoveredBy scale carrier boxes root_1595472 := by
  apply coveredBy_split_literal root_1595472 small_1595472_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0037.root_1595478 coord1 true (-13027072)
  · decide +kernel
  · decide +kernel
  · exact small_1595472_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0037.cover_1595478
#print axioms cover_1595472

def root_1595300 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1595300_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (10572672)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1595300_left_fuel : Nat := 19
def small_1595300_left_count : Nat := 83
def small_1595300_left_encoded : String := "0F8750F9078000F6128A7CF700000000078000FC128A7CFD000000030280010813D7B10900000004022A458513E1C504000000020B4D44020000000A10804CF90000000108C000F611FC24F70000000008C000FC0000000A000000090000000A0000000913D7ED09022A458513E1C504000000020B4D4402108010F90000000A0000000110804CF90000000108C000F611FC24F70000000008C000FC11FC24FD0000000303C0010813A51109000000040000000913A54D09011523450000000A00000007000000040000000911FBE8F708C000FC0000000A00000007000000000000000700000004128A40FD02800108000000090000000900000003128A40F7078000FC128A7CFD000000030280010813D7B109000000040000000A00000007128A40FD0280010813D7B10900000004022A4585000000080000000700000007000000030000000000000001"
theorem small_1595300_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1595300_left_root small_1595300_left_fuel small_1595300_left_count small_1595300_left_encoded = true := by
  decide +kernel
theorem small_1595300_left_covered : CoveredBy scale carrier boxes small_1595300_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1595300_left_root small_1595300_left_fuel small_1595300_left_count small_1595300_left_encoded small_1595300_left_checked

theorem cover_1595300 : CoveredBy scale carrier boxes root_1595300 := by
  apply coveredBy_split_literal root_1595300 small_1595300_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0037.root_1595472 coord1 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_1595300_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0037.cover_1595472
#print axioms cover_1595300

def root_1595294 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1595294_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1595294_left_fuel : Nat := 1
def small_1595294_left_count : Nat := 1
def small_1595294_left_encoded : String := "00000002"
theorem small_1595294_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1595294_left_root small_1595294_left_fuel small_1595294_left_count small_1595294_left_encoded = true := by
  decide +kernel
theorem small_1595294_left_covered : CoveredBy scale carrier boxes small_1595294_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1595294_left_root small_1595294_left_fuel small_1595294_left_count small_1595294_left_encoded small_1595294_left_checked

theorem cover_1595294 : CoveredBy scale carrier boxes root_1595294 := by
  apply coveredBy_split_literal root_1595294 small_1595294_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0037.root_1595300 coord2 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_1595294_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0037.cover_1595300
#print axioms cover_1595294

def root_1595293 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1595293_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1595293_right_fuel : Nat := 19
def small_1595293_right_count : Nat := 103
def small_1595293_right_encoded : String := "1386AD040C9A87020F8750F9078000F60000000900000007000000010F878CF900000001078000F6128A7CF700000000078000FC128A7CFD000000030280010813D7B10900000004067ECE8512EA5904000000020DE7CA020E5FD8F900000009000000010E6014F90000000108C000F60000000911FBE8F708C000FC11FC24FD000000030000000500000009000000000000000913D7ED09067ECE8512EA5904000000020DE7CA02000000070E6014F90000000108C000F611FC24F70000000008C000FC11FC24FD0000000303C0010800000005000000070000000911FBE8F700000007000000000000000700000004128A40FD02800108000000090000000900000003128A40F7078000FC128A7CFD000000030280010813D7B10900000004067ECE8512EA5904000000020DE7CA02000000070E6014F900000001064000F612FFACF70000000008C000FC11FC24FD000000030000000700000007000000070000000700000007128A40FD0280010813D7B10900000004067ECE8512EA590400000002000000090000000700000007000000030000000000000002"
theorem small_1595293_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1595293_right_root small_1595293_right_fuel small_1595293_right_count small_1595293_right_encoded = true := by
  decide +kernel
theorem small_1595293_right_covered : CoveredBy scale carrier boxes small_1595293_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1595293_right_root small_1595293_right_fuel small_1595293_right_count small_1595293_right_encoded small_1595293_right_checked

theorem cover_1595293 : CoveredBy scale carrier boxes root_1595293 := by
  apply coveredBy_split_literal root_1595293 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0037.root_1595294 small_1595293_right_root coord2 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0037.cover_1595294
  · exact small_1595293_right_covered
#print axioms cover_1595293

def root_1595288 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1595288_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1595288_right_fuel : Nat := 1
def small_1595288_right_count : Nat := 1
def small_1595288_right_encoded : String := "00000001"
theorem small_1595288_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1595288_right_root small_1595288_right_fuel small_1595288_right_count small_1595288_right_encoded = true := by
  decide +kernel
theorem small_1595288_right_covered : CoveredBy scale carrier boxes small_1595288_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1595288_right_root small_1595288_right_fuel small_1595288_right_count small_1595288_right_encoded small_1595288_right_checked

theorem cover_1595288 : CoveredBy scale carrier boxes root_1595288 := by
  apply coveredBy_split_literal root_1595288 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0037.root_1595293 small_1595288_right_root coord1 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0037.cover_1595293
  · exact small_1595288_right_covered
#print axioms cover_1595288

def root_1595287 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1595287 : CoveredBy scale carrier boxes root_1595287 := by
  apply coveredBy_split_literal root_1595287 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0037.root_1595288 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0622.root coord1 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0037.cover_1595288
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0622.covered
#print axioms cover_1595287

def root_1595281 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1595281_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(14529024), (16243968)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1595281_left_fuel : Nat := 1
def small_1595281_left_count : Nat := 1
def small_1595281_left_encoded : String := "00000004"
theorem small_1595281_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1595281_left_root small_1595281_left_fuel small_1595281_left_count small_1595281_left_encoded = true := by
  decide +kernel
theorem small_1595281_left_covered : CoveredBy scale carrier boxes small_1595281_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1595281_left_root small_1595281_left_fuel small_1595281_left_count small_1595281_left_encoded small_1595281_left_checked

theorem cover_1595281 : CoveredBy scale carrier boxes root_1595281 := by
  apply coveredBy_split_literal root_1595281 small_1595281_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0037.root_1595287 coord4 true (16243968)
  · decide +kernel
  · decide +kernel
  · exact small_1595281_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0037.cover_1595287
#print axioms cover_1595281

def root_1595280 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1595280 : CoveredBy scale carrier boxes root_1595280 := by
  apply coveredBy_split_literal root_1595280 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0037.root_1595281 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0623.root coord4 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0037.cover_1595281
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0623.covered
#print axioms cover_1595280

def root_1595274 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1595274_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1595274_left_fuel : Nat := 1
def small_1595274_left_count : Nat := 1
def small_1595274_left_encoded : String := "00000003"
theorem small_1595274_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1595274_left_root small_1595274_left_fuel small_1595274_left_count small_1595274_left_encoded = true := by
  decide +kernel
theorem small_1595274_left_covered : CoveredBy scale carrier boxes small_1595274_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1595274_left_root small_1595274_left_fuel small_1595274_left_count small_1595274_left_encoded small_1595274_left_checked

theorem cover_1595274 : CoveredBy scale carrier boxes root_1595274 := by
  apply coveredBy_split_literal root_1595274 small_1595274_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0037.root_1595280 coord3 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_1595274_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0037.cover_1595280
#print axioms cover_1595274

def root_1595273 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1595273_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1595273_right_fuel : Nat := 19
def small_1595273_right_count : Nat := 155
def small_1595273_right_encoded : String := "135D44FD05000108135D4509000000040CFD9BF90F350D0204548A0513867104000000020C9A87020F8750F9078000F600000009128A40F70000000900000000000000010F878CF900000001078000F6128A7CF700000000028000FC13D7ECFD000000030280010813D7B10900000004022A4585000000080000000913D7ED09022A458513E1C504000000020DE7CA020000000900000005000000090000000400000009128A40F7028000FC13D7ECFD0000000302800108000000080000000500000005000000001386AD040C9A8702000000090F878CF900000001078000F600000009128A40F7000000090000000000000002000000010F34D1020000000104548A051386710400000002078000F6128A7CF700000000028000FC13D7ECFD000000030000000A0000000A128A40F7028000FC13D7ECFD000000030280010813D7B109000000040AD3577910D13D02000000080000000110D1010200000001000000050000000500000005000000001386AD04078000F60000000A128A40F7028000FC13D7ECFD000000030280010813D7B109000000040AD3577910D13D0200000009000000010000000A13D7ED090AD3577910D13D020000000A000000010000000A000000040000000A0000000000000002135D81090CFD9BF90F350D0204548A0513867104000000020C9A87020F8750F9078000F6128A7CF700000000000000060000000500000001000000051386AD040C9A8702000000070F878CF900000001078000F6128A7CF700000000000000090000000700000002000000010F34D1020000000104548A051386710400000002000000051386AD040000000A000000020000000400000003"
theorem small_1595273_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1595273_right_root small_1595273_right_fuel small_1595273_right_count small_1595273_right_encoded = true := by
  decide +kernel
theorem small_1595273_right_covered : CoveredBy scale carrier boxes small_1595273_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1595273_right_root small_1595273_right_fuel small_1595273_right_count small_1595273_right_encoded small_1595273_right_checked

theorem cover_1595273 : CoveredBy scale carrier boxes root_1595273 := by
  apply coveredBy_split_literal root_1595273 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0037.root_1595274 small_1595273_right_root coord3 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0037.cover_1595274
  · exact small_1595273_right_covered
#print axioms cover_1595273

def root_1595267 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1595267_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1595267_left_fuel : Nat := 1
def small_1595267_left_count : Nat := 1
def small_1595267_left_encoded : String := "00000000"
theorem small_1595267_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1595267_left_root small_1595267_left_fuel small_1595267_left_count small_1595267_left_encoded = true := by
  decide +kernel
theorem small_1595267_left_covered : CoveredBy scale carrier boxes small_1595267_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1595267_left_root small_1595267_left_fuel small_1595267_left_count small_1595267_left_encoded small_1595267_left_checked

theorem cover_1595267 : CoveredBy scale carrier boxes root_1595267 := by
  apply coveredBy_split_literal root_1595267 small_1595267_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0037.root_1595273 coord0 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_1595267_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0037.cover_1595273
#print axioms cover_1595267

def root_1595266 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1595266_right_root : ZRayBox := fun j => (#[⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1595266_right_fuel : Nat := 23
def small_1595266_right_count : Nat := 271
def small_1595266_right_encoded : String := "135D44F7050000FC135D80FD0000000305000108135D4509000000040CFD9BF90F350D0204548A0513867104000000020C9A87020F8750F90000000A000000010F878CF900000001028000F613D7ECF700000000078000FC128A7CFD000000030280010813D7B10900000004022A4585000000080000000713D7ED09022A45850000000A0000000700000004128A40FD0280010800000008000000050000000313D7B0F7078000FC0000000A000000050000000000000007000000010F34D1020000000104548A051386710400000002028000F613D7ECF700000000078000FC128A7CFD000000030280010813D7B109000000040AD3577910D13D02022A45850000000800000006000000010000000613D7ED090AD3577910D13D02022A45850000000513E2010403C000F613A54CF70000000008C000FC000000070000000500000005000000020000000110D1010200000001022A4585000000050000000600000004128A40FD0280010813D7B109000000040AD3577910D13D02000000080000000110D101020000000100000005000000050000000313D7B0F7078000FC128A7CFD000000030280010813D7B109000000040AD3577910D13D020000000800000001000000060000000500000005000000001386AD04028000F613D7ECF700000000078000FC128A7CFD000000030280010813D7B109000000040AD3577910D13D02067ECE8512EA5904000000020000000600000006000000010000000613D7ED090AD357790000000710D1010200000001067ECE8512EA590400000002000000060000000600000004128A40FD0280010813D7B109000000040AD3577910D13D02067ECE8512EA59040000000203C000F613A54CF700000000064000FC000000070000000700000007000000070000000110D1010200000001067ECE8512EA590400000002000000060000000613D7ED090AD357790000000710D1010200000001067ECE850000000500000007000000040000000313D7B0F7078000FC128A7CFD00000003028001080000000600000007128A40FD0280010813D7B109000000040AD357790000000710D10102000000010000000600000005000000030000000000000002135D81090CFD9BF90F350D0204548A0513867104000000020000000700000007000000010F34D1020000000104548A051386710400000002000000050000000700000004135D44FD05000108135D4509000000040CFD9BF90F350D0204548A0513867104000000020C9A8702000000080000000500000007000000010F34D1020000000104548A05000000051386AD04028000F613D7ECF700000000028000FC13D7ECFD000000030280010813D7B109000000040AD3577910D13D02067ECE8500000005000000070000000110D1010200000001067ECE85000000050000000A00000005000000050000000500000002135D81090CFD9BF9000000050F34D1020000000100000005000000040000000300000000"
theorem small_1595266_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1595266_right_root small_1595266_right_fuel small_1595266_right_count small_1595266_right_encoded = true := by
  decide +kernel
theorem small_1595266_right_covered : CoveredBy scale carrier boxes small_1595266_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1595266_right_root small_1595266_right_fuel small_1595266_right_count small_1595266_right_encoded small_1595266_right_checked

theorem cover_1595266 : CoveredBy scale carrier boxes root_1595266 := by
  apply coveredBy_split_literal root_1595266 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0037.root_1595267 small_1595266_right_root coord0 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0037.cover_1595267
  · exact small_1595266_right_covered
#print axioms cover_1595266

def root_1595260 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1595260_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1595260_left_fuel : Nat := 1
def small_1595260_left_count : Nat := 1
def small_1595260_left_encoded : String := "00000002"
theorem small_1595260_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1595260_left_root small_1595260_left_fuel small_1595260_left_count small_1595260_left_encoded = true := by
  decide +kernel
theorem small_1595260_left_covered : CoveredBy scale carrier boxes small_1595260_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1595260_left_root small_1595260_left_fuel small_1595260_left_count small_1595260_left_encoded small_1595260_left_checked

theorem cover_1595260 : CoveredBy scale carrier boxes root_1595260 := by
  apply coveredBy_split_literal root_1595260 small_1595260_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0037.root_1595266 coord2 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_1595260_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0037.cover_1595266
#print axioms cover_1595260

def root_1595259 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1595259_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1595259_right_fuel : Nat := 20
def small_1595259_right_count : Nat := 177
def small_1595259_right_encoded : String := "12073D04050000F6135D80F700000000050000FC135D80FD0000000305000108135D4509000000040CFD9BF90F350D020CFD9C050F34D104000000020C9A8702000000070F878CF900000001078000F600000009128A40F7000000070000000000000009000000010F34D102000000010CFD9C050F34D10400000002078000F60000000A128A40F7078000FC128A7CFD000000030280010813D7B109000000040AD3577910D13D0200000007000000010000000A000000070000000A000000000F350D040000000A00000002135D81090CFD9BF90F350D020CFD9C050F34D10400000002000000070F350D040C9A8702000000070000000800000002000000010F34D102000000010CFD9C050F34D10400000002078000F60000000A128A40F700000007000000000000000800000004135D44FD05000108135D4509000000040CFD9BF9000000090F34D102000000010CFD9C050000000A00000009135D81090CFD9BF90F350D020CFD9C050F34D104000000020000000700000007000000010F34D102000000010000000A0000000400000003135D44F7050000FC135D80FD0000000305000108135D4509000000040CFD9BF90F350D020CFD9C050F34D104000000020000000700000007000000010F34D102000000010CFD9C050F34D10400000002028000F613D7ECF700000000078000FC0000000700000007000000070F350D040C9A87040F87510500000002000000070000000700000002135D81090CFD9BF90F350D020CFD9C050F34D104000000020000000700000007000000010F34D102000000010CFD9C050F34D10400000002000000070000000700000004135D44FD05000108135D4509000000040CFD9BF90F350D0200000007000000010F34D102000000010CFD9C050F34D104000000020000000700000007135D81090CFD9BF90F350D0200000007000000010000000700000004000000030000000000000002"
theorem small_1595259_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1595259_right_root small_1595259_right_fuel small_1595259_right_count small_1595259_right_encoded = true := by
  decide +kernel
theorem small_1595259_right_covered : CoveredBy scale carrier boxes small_1595259_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1595259_right_root small_1595259_right_fuel small_1595259_right_count small_1595259_right_encoded small_1595259_right_checked

theorem cover_1595259 : CoveredBy scale carrier boxes root_1595259 := by
  apply coveredBy_split_literal root_1595259 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0037.root_1595260 small_1595259_right_root coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0037.cover_1595260
  · exact small_1595259_right_covered
#print axioms cover_1595259

def root_1595254 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1595254_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1595254_right_fuel : Nat := 1
def small_1595254_right_count : Nat := 1
def small_1595254_right_encoded : String := "00000001"
theorem small_1595254_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1595254_right_root small_1595254_right_fuel small_1595254_right_count small_1595254_right_encoded = true := by
  decide +kernel
theorem small_1595254_right_covered : CoveredBy scale carrier boxes small_1595254_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1595254_right_root small_1595254_right_fuel small_1595254_right_count small_1595254_right_encoded small_1595254_right_checked

theorem cover_1595254 : CoveredBy scale carrier boxes root_1595254 := by
  apply coveredBy_split_literal root_1595254 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0037.root_1595259 small_1595254_right_root coord1 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0037.cover_1595259
  · exact small_1595254_right_covered
#print axioms cover_1595254

def root_1595253 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1595253_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1595253_right_fuel : Nat := 24
def small_1595253_right_count : Nat := 281
def small_1595253_right_encoded : String := "120701020000000108A913051207010400000002050000F6135D80F700000000050000FC135D80FD0000000305000108135D450900000004045489F91386AD0204548A051386710400000002078000F6128A7CF700000000078000FC128A7CFD000000030000000A0000000A128A40F7078000FC128A7CFD0000000300000006128A40FD0000000A00000003000000000000000A00000001138671020000000104548A051386710400000002078000F60000000A0000000A00000006135D8109045489F91386AD0204548A051386710400000002078000F6128A7CF700000000078000FC128A7CFD00000003078001080000000A128A7D090000000A000000040000000A128A40F7078000FC128A7CFD0000000307800108128A410900000004067ECE7912EA9502022A45850000000513E201040000000A000000020000000112EA590200000001022A458500000005000000060000000500000005000000001386AD04078000F60000000A0000000A0000000200000001138671020000000104548A051386710400000002078000F60000000A128A40F7078000FC128A7CFD0000000307800108000000060000000500000005000000000000000A00000004135D44FD050001080000000A135D8109045489F90000000A0000000A0000000400000003135D44F7050000FC135D80FD0000000305000108135D450900000004045489F91386AD0204548A051386710400000002028000F613D7ECF700000000078000FC00000006128A40FD0280010800000006000000050000000313D7B0F7078000FC0000000600000005000000001386AD04028000F613D7ECF700000000078000FC000000060000000A13D7B0F7078000FC00000006128A40FD02800108000000060000000500000003000000000000000200000001138671020000000100000006135D8109045489F91386AD0204548A05000000051386AD04028000F613D7ECF700000000078000FC128A7CFD0000000307800108128A410900000004067ECE7912EA95020000000700000001000000060000000500000005000000050000000200000001138671020000000104548A05000000051386AD04028000F60000000A000000050000000200000004135D44FD05000108135D450900000004045489F91386AD0204548A05000000051386AD04028000F60000000A00000005000000020000000113867102000000010000000A00000005000000030000000012073D04050000F6135D80F7000000000000000A135D44F7050000FC135D80FD0000000305000108135D450900000004045489F91386AD020CFD9C050F34D10400000002028000F60000000A13D7B0F7078000FC0000000600000007000000000F350D040000000A00000002000000010000000A135D8109045489F91386AD020CFD9C050F34D1040000000200000007000000070000000113867102000000010000000A00000004135D44FD05000108135D450900000004045489F91386AD020CFD9C050000000A0000000A000000010000000A0000000A000000030000000000000002"
theorem small_1595253_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1595253_right_root small_1595253_right_fuel small_1595253_right_count small_1595253_right_encoded = true := by
  decide +kernel
theorem small_1595253_right_covered : CoveredBy scale carrier boxes small_1595253_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1595253_right_root small_1595253_right_fuel small_1595253_right_count small_1595253_right_encoded small_1595253_right_checked

theorem cover_1595253 : CoveredBy scale carrier boxes root_1595253 := by
  apply coveredBy_split_literal root_1595253 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0037.root_1595254 small_1595253_right_root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0037.cover_1595254
  · exact small_1595253_right_covered
#print axioms cover_1595253

def root_1595247 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1595247_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1595247_left_fuel : Nat := 1
def small_1595247_left_count : Nat := 1
def small_1595247_left_encoded : String := "00000004"
theorem small_1595247_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1595247_left_root small_1595247_left_fuel small_1595247_left_count small_1595247_left_encoded = true := by
  decide +kernel
theorem small_1595247_left_covered : CoveredBy scale carrier boxes small_1595247_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1595247_left_root small_1595247_left_fuel small_1595247_left_count small_1595247_left_encoded small_1595247_left_checked

theorem cover_1595247 : CoveredBy scale carrier boxes root_1595247 := by
  apply coveredBy_split_literal root_1595247 small_1595247_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0037.root_1595253 coord4 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_1595247_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0037.cover_1595253
#print axioms cover_1595247

def root_1595246 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1595246_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1595246_right_fuel : Nat := 20
def small_1595246_right_count : Nat := 181
def small_1595246_right_encoded : String := "1152250908A912F912073D0208A91305120701040000000208A9130912070108000000040000000512073D08050000F6135D80F700000000050000FC135D80FD000000030CFD9BF90F350D0204548A0513867104000000020CFD9C09000000050F350D08000000070000000400000007000000010F34D1020000000104548A051386710400000002000000051386AD040CFD9C09000000070F350D080C9A87080F8751090000000400000007000000050000000400000002135D44FD0CFD9BF9000000050F34D102000000010000000500000003135D44F7050000FC135D80FD000000030CFD9BF9000000050F34D102000000010000000500000005000000000000000412073D0408A9130912070108000000040000000712073D08050000F6135D80F700000000050000FC135D80FD000000030CFD9BF9000000080F34D1020000000100000008135D44FD0CFD9BF90F350D0200000007000000010F34D102000000010000000A00000003135D44F7050000FC135D80FD000000030CFD9BF90F350D020CFD9C050F34D104000000020000000700000007000000010F34D102000000010CFD9C050F34D104000000020000000700000007135D44FD000000070000000300000000000000040000000200000001120701020000000108A91305120701040000000208A913090000000512073D08050000F6135D80F700000000050000FC135D80FD00000003045489F91386AD0204548A05000000051386AD040CFD9C09000000050F350D080C9A87080000000A00000005000000040000000200000001138671020000000104548A05000000051386AD040CFD9C09000000050F350D080000000A000000040000000200000005000000050000000412073D0408A913090000000A12073D08050000F6135D80F700000000050000FC000000080000000A135D44F7050000FC135D80FD00000003045489F900000008000000070000000700000000000000040000000200000004"
theorem small_1595246_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1595246_right_root small_1595246_right_fuel small_1595246_right_count small_1595246_right_encoded = true := by
  decide +kernel
theorem small_1595246_right_covered : CoveredBy scale carrier boxes small_1595246_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1595246_right_root small_1595246_right_fuel small_1595246_right_count small_1595246_right_encoded small_1595246_right_checked

theorem cover_1595246 : CoveredBy scale carrier boxes root_1595246 := by
  apply coveredBy_split_literal root_1595246 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0037.root_1595247 small_1595246_right_root coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0037.cover_1595247
  · exact small_1595246_right_covered
#print axioms cover_1595246

def root_1595241 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1595241_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1595241_right_fuel : Nat := 1
def small_1595241_right_count : Nat := 1
def small_1595241_right_encoded : String := "00000003"
theorem small_1595241_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1595241_right_root small_1595241_right_fuel small_1595241_right_count small_1595241_right_encoded = true := by
  decide +kernel
theorem small_1595241_right_covered : CoveredBy scale carrier boxes small_1595241_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1595241_right_root small_1595241_right_fuel small_1595241_right_count small_1595241_right_encoded small_1595241_right_checked

theorem cover_1595241 : CoveredBy scale carrier boxes root_1595241 := by
  apply coveredBy_split_literal root_1595241 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0037.root_1595246 small_1595241_right_root coord3 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0037.cover_1595246
  · exact small_1595241_right_covered
#print axioms cover_1595241

def root_1587731 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1587731 : CoveredBy scale carrier boxes root_1587731 := by
  apply coveredBy_split_literal root_1587731 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0037.root_1587732 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0037.root_1595241 coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0037.cover_1587732
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0037.cover_1595241
#print axioms cover_1587731

def root_1587726 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1587726_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1587726_right_fuel : Nat := 1
def small_1587726_right_count : Nat := 1
def small_1587726_right_encoded : String := "00000002"
theorem small_1587726_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1587726_right_root small_1587726_right_fuel small_1587726_right_count small_1587726_right_encoded = true := by
  decide +kernel
theorem small_1587726_right_covered : CoveredBy scale carrier boxes small_1587726_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1587726_right_root small_1587726_right_fuel small_1587726_right_count small_1587726_right_encoded small_1587726_right_checked

theorem cover_1587726 : CoveredBy scale carrier boxes root_1587726 := by
  apply coveredBy_split_literal root_1587726 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0037.root_1587731 small_1587726_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0037.cover_1587731
  · exact small_1587726_right_covered
#print axioms cover_1587726

def root_1587438 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1587438_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1587438_left_fuel : Nat := 18
def small_1587438_left_count : Nat := 135
def small_1587438_left_encoded : String := "1151E905000000020A0000FC115224FD000000030A0001081151E9090000000408A912F912073D0208A912FD12073CFC00000003050000F600000005135D44F70500010400000005135D81050500010800000005135D81090CFD9BF9000000080F34D1020000000100000008000000040000000200000000120700FC000000050000000300000001120701020000000108A912FD12073CFC00000003050000F600000005135D44F70500010400000005135D81050500010800000005000000080000000200000000120700FC00000005000000031152250908A912F912073D0208A912FD00000008120700FC000000080000000300000001120701020000000100000008000000041151E8FD0A0001081151E9090000000408A912F912073D02050000F6135D80F700000000050001040000000A135D8105050000FC135D80FD000000030500010800000005000000080000000900000002135D44F705000104135D45050000000200000009135D8105050000FC135D80FD0000000305000108135D45090000000400000009135D81090CFD9BF9000000080000000A000000040000000900000002000000000000000112070102000000010000000A1152250908A912F912073D0208A913090000000812073D08050000F600000008135D44F7050001040000000A135D8105050000FC0000000800000007000000020000000000000004000000011207010200000001000000080000000400000003"
theorem small_1587438_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1587438_left_root small_1587438_left_fuel small_1587438_left_count small_1587438_left_encoded = true := by
  decide +kernel
theorem small_1587438_left_covered : CoveredBy scale carrier boxes small_1587438_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1587438_left_root small_1587438_left_fuel small_1587438_left_count small_1587438_left_encoded small_1587438_left_checked

theorem cover_1587438 : CoveredBy scale carrier boxes root_1587438 := by
  apply coveredBy_split_literal root_1587438 small_1587438_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0037.root_1587726 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_1587438_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0037.cover_1587726
#print axioms cover_1587438

def root_1587432 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1587432_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1587432_left_fuel : Nat := 1
def small_1587432_left_count : Nat := 1
def small_1587432_left_encoded : String := "00000001"
theorem small_1587432_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1587432_left_root small_1587432_left_fuel small_1587432_left_count small_1587432_left_encoded = true := by
  decide +kernel
theorem small_1587432_left_covered : CoveredBy scale carrier boxes small_1587432_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1587432_left_root small_1587432_left_fuel small_1587432_left_count small_1587432_left_encoded small_1587432_left_checked

theorem cover_1587432 : CoveredBy scale carrier boxes root_1587432 := by
  apply coveredBy_split_literal root_1587432 small_1587432_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0037.root_1587438 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_1587432_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0037.cover_1587438
#print axioms cover_1587432

def root_1586106 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1586106 : CoveredBy scale carrier boxes root_1586106 := by
  apply coveredBy_split_literal root_1586106 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0617.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0037.root_1587432 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0617.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0037.cover_1587432
#print axioms cover_1586106

def root_1586101 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1586101_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1586101_right_fuel : Nat := 1
def small_1586101_right_count : Nat := 1
def small_1586101_right_encoded : String := "00000000"
theorem small_1586101_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1586101_right_root small_1586101_right_fuel small_1586101_right_count small_1586101_right_encoded = true := by
  decide +kernel
theorem small_1586101_right_covered : CoveredBy scale carrier boxes small_1586101_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1586101_right_root small_1586101_right_fuel small_1586101_right_count small_1586101_right_encoded small_1586101_right_checked

theorem cover_1586101 : CoveredBy scale carrier boxes root_1586101 := by
  apply coveredBy_split_literal root_1586101 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0037.root_1586106 small_1586101_right_root coord0 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0037.cover_1586106
  · exact small_1586101_right_covered
#print axioms cover_1586101

def root_1576751 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1576751 : CoveredBy scale carrier boxes root_1576751 := by
  apply coveredBy_split_literal root_1576751 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0036.root_1576752 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0037.root_1586101 coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0036.cover_1576752
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0037.cover_1586101
#print axioms cover_1576751

def root_1575943 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1575943_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1575943_left_fuel : Nat := 21
def small_1575943_left_count : Nat := 375
def small_1575943_left_encoded : String := "0A0000F6115224F7000000000A0001021151E8F90A0001041151E905000000020A0000FC115224FD000000030A0001081151E8FF0000000800000004000000081151E8FD0A0001081151E8FF00000007000000040000000800000003115225050A0000FC115224FD000000030A0001081151E8FF08A912F7000000080000000800000004115224FF0000000408A912F712073CF60000000008A91305120701040000000208A912FD12073CFC00000003000000070000000712073D0408A912FD000000080000000800000002120700F608A9130512070104000000020000000800000008000000001151E8FD0A0001081151E8FF0000000A00000004115224FF0000000408A912F712073CF60000000008A913050000000600000007120700F60000000600000000000000030000000200000001115224F9000000010A0001041151E905000000020A0000FC115224FD000000030A0001081151E8FF0000000800000004000000081151E8FD0A0001081151E8FF00000008000000040000000800000003115225050A0000FC115224FD000000030A0001081151E8FF08A912F712073CF60000000008A912F912073D0208A91305000000090000000800000001120701020000000108A913050000000900000008120700F608A912F9000000081207010200000001000000080000000000000004115224FF0000000408A912F712073CF60000000008A912F912073D0208A91305120701040000000208A912FD12073CFC0000000308A912FF00000008120701080000000400000008120700FC00000008000000030000000800000001120701020000000108A91305120701040000000208A912FD00000008120700FC000000080000000300000008120700F608A912F912073D0208A913051207010400000002000000080000000800000001120701020000000108A9130512070104000000020000000800000008000000001151E8FD0A0001081151E8FF08A912F712073CF60000000008A912F912073D020000000A00000001120701020000000108A913050000000900000008120700F608A912F9000000081207010200000001000000080000000000000004115224FF0000000408A912F712073CF60000000008A912F912073D0208A9130512070104000000020000000A0000000800000001120701020000000108A9130512070104000000020000000A00000008120700F608A912F912073D020000000600000001120701020000000108A9130500000006000000080000000000000003000000021151E8F70A0001021151E8F90A0001041151E905000000020A0000FC115224FD000000030A0001081151E8FF0000000800000004000000081151E8FD0000000A00000003115225050A0000FC115224FD000000030A0001081151E8FF0000000700000004115224FF0000000408A91305120701040000000208A912FD00000007120700FC000000070000000312073D0408A912FD12073CFC0000000308A912FF0000000800000007120700FC0000000800000003000000021151E8FD0A0001081151E8FF000000050000000400000007000000030000000200000001115224F9000000010A0001041151E905000000020A0000FC115224FD000000030A0001081151E8FF0000000700000004000000081151E8FD0A0001080000000A0000000700000003115225050A0000FC115224FD000000030A0001081151E8FF08A912F912073D0208A913050000000900000007000000010000000900000004115224FF0000000408A912F912073D0208A91305120701040000000208A912FD000000070000000712073D0408A912FD00000008120700FC00000008000000030000000200000001120701020000000108A91305120701040000000208A912FD12073CFC0000000308A912FF000000070000000900000007000000081151E8FD0A0001081151E8FF0000000A00000004115224FF0000000408A912F912073D0208A913051207010400000002000000050000000700000001120701020000000108A9130512070104000000020000000500000008000000030000000200000000"
theorem small_1575943_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1575943_left_root small_1575943_left_fuel small_1575943_left_count small_1575943_left_encoded = true := by
  decide +kernel
theorem small_1575943_left_covered : CoveredBy scale carrier boxes small_1575943_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1575943_left_root small_1575943_left_fuel small_1575943_left_count small_1575943_left_encoded small_1575943_left_checked

theorem cover_1575943 : CoveredBy scale carrier boxes root_1575943 := by
  apply coveredBy_split_literal root_1575943 small_1575943_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0037.root_1576751 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact small_1575943_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0037.cover_1576751
#print axioms cover_1575943

def root_1533407 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1533407 : CoveredBy scale carrier boxes root_1533407 := by
  apply coveredBy_split_literal root_1533407 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0036.root_1533408 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0037.root_1575943 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0036.cover_1533408
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0037.cover_1575943
#print axioms cover_1533407

def root_1611069 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1611069 : CoveredBy scale carrier boxes root_1611069 := by
  apply coveredBy_split_literal root_1611069 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0627.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0628.root coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0627.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0628.covered
#print axioms cover_1611069

def root_1611063 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1611063_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1611063_left_fuel : Nat := 1
def small_1611063_left_count : Nat := 1
def small_1611063_left_encoded : String := "00000001"
theorem small_1611063_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1611063_left_root small_1611063_left_fuel small_1611063_left_count small_1611063_left_encoded = true := by
  decide +kernel
theorem small_1611063_left_covered : CoveredBy scale carrier boxes small_1611063_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1611063_left_root small_1611063_left_fuel small_1611063_left_count small_1611063_left_encoded small_1611063_left_checked

theorem cover_1611063 : CoveredBy scale carrier boxes root_1611063 := by
  apply coveredBy_split_literal root_1611063 small_1611063_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0037.root_1611069 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_1611063_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0037.cover_1611069
#print axioms cover_1611063

def root_1609957 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1609957 : CoveredBy scale carrier boxes root_1609957 := by
  apply coveredBy_split_literal root_1609957 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0626.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0037.root_1611063 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0626.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0037.cover_1611063
#print axioms cover_1609957

def root_1609951 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1609951_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1609951_left_fuel : Nat := 1
def small_1609951_left_count : Nat := 1
def small_1609951_left_encoded : String := "00000000"
theorem small_1609951_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1609951_left_root small_1609951_left_fuel small_1609951_left_count small_1609951_left_encoded = true := by
  decide +kernel
theorem small_1609951_left_covered : CoveredBy scale carrier boxes small_1609951_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1609951_left_root small_1609951_left_fuel small_1609951_left_count small_1609951_left_encoded small_1609951_left_checked

theorem cover_1609951 : CoveredBy scale carrier boxes root_1609951 := by
  apply coveredBy_split_literal root_1609951 small_1609951_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0037.root_1609957 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_1609951_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0037.cover_1609957
#print axioms cover_1609951

def root_1617444 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1617444_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1617444_left_fuel : Nat := 25
def small_1617444_left_count : Nat := 395
def small_1617444_left_encoded : String := "1207010800000004050000F6135D80F70000000005000102135D44F9050000FC135D81070CFD9C050F34D10400000002000000080000000800000003135D4507000000030CFD9C050F34D1040000000204548A09000000081386AD08078000F600000008128A40F70280010213D7B0F900000008000000010000000800000000000000040F350D0404548A09000000081386AD080C9A87040F87510500000002000000080F878D05078000F600000008128A40F7000000080000000000000002000000040000000200000001135D80F900000001050000FC135D81070CFD9C050F34D10400000002000000080000000800000003135D4507000000030CFD9C050F34D1040000000204548A0900000008000000070F350D0404548A09000000081386AD080C9A87040F87510500000002000000080F878D05078000F600000007128A40F70000000800000000000000020000000400000002135D44F705000102135D44F9050000FC135D81070CFD9C050F34D1040000000204548A09000000081386AD08028000F60000000813D7B0F70280010213D7B0F9078000FC00000008128A410700000003000000080000000113D7ECF900000001078000FC00000008128A4107000000030000000800000000000000040F350D0404548A09000000081386AD080C9A87040F87510500000002000000080F878D05028000F60000000813D7B0F70280010200000008000000080000000000000002000000040000000200000003135D4507000000030CFD9C050F34D1040000000204548A091386710800000004028000F60000000813D7B0F7028001020000000600000005000000001386AD08028000F613D7ECF7000000000280010213D7B0F9028000FC0000000813D7B107000000030AD3578510D1010400000002067ECE89000000070000000710D13D04067ECE890000000612EA95080000000800000004000000020000000113D7ECF900000001028000FC0000000813D7B107000000030AD35785000000070000000813D7B0F70280010213D7B0F9028000FC13D7ED070AD3578510D1010400000002067ECE890000000612EA9508014000F60000000813F5D8F7014001020000000600000005000000000000000410D13D04067ECE890000000612EA9508014000F6000000080000000600000004000000020000000313D7B107000000030AD3578510D10104000000020000000510D13D0400000006000000020000000113D7ECF900000001028000FC13D7ED070AD3578510D10104000000020000000510D13D04067ECE890000000812EA9508000000080000000400000002000000030000000500000000000000040F350D0404548A091386710800000004000000061386AD080C9A87040F87510500000002028000F613D7ECF700000000028001020000000600000008000000060F878D05028000F613D7ECF7000000000280010213D7B0F9028000FC00000008000000060000000113D7ECF900000001028000FC000000080000000A13D7B0F7028001020000000613D7ECF900000001028000FC13D7ED07067ECE890000000612EA95080000000800000004000000030000000A0000000000000002000000040000000200000001135D80F900000001050000FC135D81070CFD9C050F34D1040000000204548A09000000081386AD08028000F60000000813D7B0F707800102128A40F9078000FC00000008128A4107000000030000000800000001128A7CF900000001078000FC000000080000000500000000000000040F350D0404548A09000000081386AD080C9A87040F87510500000002000000080F878D05028000F60000000813D7B0F7000000080000000000000002000000040000000200000003135D4507000000030CFD9C050F34D1040000000204548A091386710800000004000000051386AD08028000F613D7ECF70000000007800102128A40F9028000FC0000000800000005000000010000000500000005000000040F350D0404548A0913867108000000040C9A87040F8751050000000200000008000000081386AD080C9A87040F875105000000020000000A0F878D05028000F613D7ECF70000000007800102128A40F90000000A000000010000000A13D7B0F707800102128A40F90000000A00000001000000050000000000000002000000040000000200000000"
theorem small_1617444_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1617444_left_root small_1617444_left_fuel small_1617444_left_count small_1617444_left_encoded = true := by
  decide +kernel
theorem small_1617444_left_covered : CoveredBy scale carrier boxes small_1617444_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1617444_left_root small_1617444_left_fuel small_1617444_left_count small_1617444_left_encoded small_1617444_left_checked

theorem cover_1617444 : CoveredBy scale carrier boxes root_1617444 := by
  apply coveredBy_split_literal root_1617444 small_1617444_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0630.root coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_1617444_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0630.covered
#print axioms cover_1617444

def root_1617439 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1617439_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1617439_right_fuel : Nat := 1
def small_1617439_right_count : Nat := 1
def small_1617439_right_encoded : String := "00000002"
theorem small_1617439_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1617439_right_root small_1617439_right_fuel small_1617439_right_count small_1617439_right_encoded = true := by
  decide +kernel
theorem small_1617439_right_covered : CoveredBy scale carrier boxes small_1617439_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1617439_right_root small_1617439_right_fuel small_1617439_right_count small_1617439_right_encoded small_1617439_right_checked

theorem cover_1617439 : CoveredBy scale carrier boxes root_1617439 := by
  apply coveredBy_split_literal root_1617439 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0037.root_1617444 small_1617439_right_root coord2 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0037.cover_1617444
  · exact small_1617439_right_covered
#print axioms cover_1617439

def root_1617129 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1617129_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1617129_left_fuel : Nat := 23
def small_1617129_left_count : Nat := 153
def small_1617129_left_encoded : String := "120701040000000208A913091207010800000004050000F6135D80F70000000005000102135D44F9050000FC135D810704548A05000000070000000800000003135D45070000000304548A05000000071386AD0404548A0900000007000000070000000200000001135D80F900000001050000FC0000000700000007135D44F705000102135D44F9050000FC135D810704548A05000000091386AD0404548A09000000081386AD08028000F613D7ECF70000000002800102000000080000000700000009000000040000000200000003135D45070000000304548A05138671040000000204548A0900000007000000071386AD0404548A091386710800000004028000F600000008000000051386AD08028000F60000000713D7B0F70280010213D7B0F9028000FC13D7ED07067ECE850000000712EA9504067ECE890000000800000007000000020000000300000005000000010000000500000000000000040000000200000001135D80F900000001050000FC135D81070000000900000003000000050000000012073D08050000F6135D80F70000000005000102135D44F9050000FC00000007000000070000000100000007135D44F705000102135D44F9050000FC135D810704548A05000000071386AD040CFD9C090F34D10800000004028000F60000000713D7B0F70280010213D7B0F9078000FC00000007000000070000000100000007000000000F350D0800000007000000040000000200000003135D45070000000304548A05000000071386AD040CFD9C0900000007000000070000000200000001135D80F900000001050000FC00000007000000070000000000000004"
theorem small_1617129_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1617129_left_root small_1617129_left_fuel small_1617129_left_count small_1617129_left_encoded = true := by
  decide +kernel
theorem small_1617129_left_covered : CoveredBy scale carrier boxes small_1617129_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1617129_left_root small_1617129_left_fuel small_1617129_left_count small_1617129_left_encoded small_1617129_left_checked

theorem cover_1617129 : CoveredBy scale carrier boxes root_1617129 := by
  apply coveredBy_split_literal root_1617129 small_1617129_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0037.root_1617439 coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_1617129_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0037.cover_1617439
#print axioms cover_1617129

def root_1617124 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1617124_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1617124_right_fuel : Nat := 1
def small_1617124_right_count : Nat := 1
def small_1617124_right_encoded : String := "00000004"
theorem small_1617124_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1617124_right_root small_1617124_right_fuel small_1617124_right_count small_1617124_right_encoded = true := by
  decide +kernel
theorem small_1617124_right_covered : CoveredBy scale carrier boxes small_1617124_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1617124_right_root small_1617124_right_fuel small_1617124_right_count small_1617124_right_encoded small_1617124_right_checked

theorem cover_1617124 : CoveredBy scale carrier boxes root_1617124 := by
  apply coveredBy_split_literal root_1617124 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0037.root_1617129 small_1617124_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0037.cover_1617129
  · exact small_1617124_right_covered
#print axioms cover_1617124

def root_1617048 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1617048_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1617048_left_fuel : Nat := 13
def small_1617048_left_count : Nat := 35
def small_1617048_left_encoded : String := "1151E9090000000408A9130512070104000000020000000712073D04050000F6135D80F70000000005000102135D44F9000000090000000100000007135D44F705000102135D44F90000000900000001135D80F900000001050000FC135D81070500010800000007135D81090CFD9C0500000007000000090000000400000003000000070000000000000002"
theorem small_1617048_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1617048_left_root small_1617048_left_fuel small_1617048_left_count small_1617048_left_encoded = true := by
  decide +kernel
theorem small_1617048_left_covered : CoveredBy scale carrier boxes small_1617048_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1617048_left_root small_1617048_left_fuel small_1617048_left_count small_1617048_left_encoded small_1617048_left_checked

theorem cover_1617048 : CoveredBy scale carrier boxes root_1617048 := by
  apply coveredBy_split_literal root_1617048 small_1617048_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0037.root_1617124 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_1617048_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0037.cover_1617124
#print axioms cover_1617048

def root_1617042 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1617042_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1617042_left_fuel : Nat := 1
def small_1617042_left_count : Nat := 1
def small_1617042_left_encoded : String := "00000003"
theorem small_1617042_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1617042_left_root small_1617042_left_fuel small_1617042_left_count small_1617042_left_encoded = true := by
  decide +kernel
theorem small_1617042_left_covered : CoveredBy scale carrier boxes small_1617042_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1617042_left_root small_1617042_left_fuel small_1617042_left_count small_1617042_left_encoded small_1617042_left_checked

theorem cover_1617042 : CoveredBy scale carrier boxes root_1617042 := by
  apply coveredBy_split_literal root_1617042 small_1617042_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0037.root_1617048 coord3 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_1617042_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0037.cover_1617048
#print axioms cover_1617042

def root_1615896 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1615896 : CoveredBy scale carrier boxes root_1615896 := by
  apply coveredBy_split_literal root_1615896 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0629.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0037.root_1617042 coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0629.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0037.cover_1617042
#print axioms cover_1615896

def root_1615891 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1615891_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1615891_right_fuel : Nat := 1
def small_1615891_right_count : Nat := 1
def small_1615891_right_encoded : String := "00000002"
theorem small_1615891_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1615891_right_root small_1615891_right_fuel small_1615891_right_count small_1615891_right_encoded = true := by
  decide +kernel
theorem small_1615891_right_covered : CoveredBy scale carrier boxes small_1615891_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1615891_right_root small_1615891_right_fuel small_1615891_right_count small_1615891_right_encoded small_1615891_right_checked

theorem cover_1615891 : CoveredBy scale carrier boxes root_1615891 := by
  apply coveredBy_split_literal root_1615891 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0037.root_1615896 small_1615891_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0037.cover_1615896
  · exact small_1615891_right_covered
#print axioms cover_1615891

def root_1615437 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1615437_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1615437_left_fuel : Nat := 25
def small_1615437_left_count : Nat := 217
def small_1615437_left_encoded : String := "1151E905000000020A0000FC115225070A000108000000051152250908A91307120700FC000000050000000312073CFC0000000308A913091207010800000004050000F600000005135D44F70500010200000005000000080000000012073D08050000F600000005135D44F70500010200000005135D80F9000000010500010400000005135D81050CFD9C070F34D0FC00000005000000030F350CFC000000030CFD9C090F34D108000000040C9A86FC000000050F87510700000003000000080F350D08000000050000000400000002000000000000000400000004000000031151E907000000030A0001081151E90900000004000000091152250908A913091207010800000004050000F6135D80F70000000005000102135D44F90500010400000005135D8105050000FC00000005135D45070000000304548A0900000006000000090000000200000001135D80F90000000105000104135D450500000002050000FC0000000500000006135D8105050000FC00000008135D45070000000304548A09000000080000000A00000002135D44F705000102135D44F90500010400000006135D8105050000FC00000006000000060000000200000001135D80F90000000105000104135D450500000002050000FC0000000600000006135D8105050000FC135D810700000008000000030000000A000000020000000012073D08050000F6135D80F70000000005000102135D44F90000000900000001135D80F90000000105000104135D45050000000200000009135D8105050000FC135D81070CFD9C090F34D10800000004078000F600000005128A40F70780010200000005000000080000000000000009000000030000000900000002135D44F705000102135D44F90000000900000001135D80F90000000105000104135D45050000000200000009135D8105050000FC135D81070CFD9C090F34D10800000004028000F613D7ECF70000000007800102128A40F90780010400000005128A7D05078000FC00000005000000090000000200000001128A7CF900000001078001040000000A0000000813D7B0F707800102128A40F90780010400000009128A7D05078000FC00000008000000090000000200000001128A7CF900000001078001040000000A0000000A0000000000000009000000030000000900000002000000000000000400000004"
theorem small_1615437_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1615437_left_root small_1615437_left_fuel small_1615437_left_count small_1615437_left_encoded = true := by
  decide +kernel
theorem small_1615437_left_covered : CoveredBy scale carrier boxes small_1615437_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1615437_left_root small_1615437_left_fuel small_1615437_left_count small_1615437_left_encoded small_1615437_left_checked

theorem cover_1615437 : CoveredBy scale carrier boxes root_1615437 := by
  apply coveredBy_split_literal root_1615437 small_1615437_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0037.root_1615891 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_1615437_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0037.cover_1615891
#print axioms cover_1615437

def root_1615432 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1615432_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1615432_right_fuel : Nat := 1
def small_1615432_right_count : Nat := 1
def small_1615432_right_encoded : String := "00000001"
theorem small_1615432_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1615432_right_root small_1615432_right_fuel small_1615432_right_count small_1615432_right_encoded = true := by
  decide +kernel
theorem small_1615432_right_covered : CoveredBy scale carrier boxes small_1615432_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1615432_right_root small_1615432_right_fuel small_1615432_right_count small_1615432_right_encoded small_1615432_right_checked

theorem cover_1615432 : CoveredBy scale carrier boxes root_1615432 := by
  apply coveredBy_split_literal root_1615432 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0037.root_1615437 small_1615432_right_root coord1 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0037.cover_1615437
  · exact small_1615432_right_covered
#print axioms cover_1615432

def root_1620661 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1620661 : CoveredBy scale carrier boxes root_1620661 := by
  apply coveredBy_split_literal root_1620661 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0631.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0632.root coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0631.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0632.covered
#print axioms cover_1620661

def root_1620655 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1620655_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1620655_left_fuel : Nat := 1
def small_1620655_left_count : Nat := 1
def small_1620655_left_encoded : String := "00000001"
theorem small_1620655_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1620655_left_root small_1620655_left_fuel small_1620655_left_count small_1620655_left_encoded = true := by
  decide +kernel
theorem small_1620655_left_covered : CoveredBy scale carrier boxes small_1620655_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1620655_left_root small_1620655_left_fuel small_1620655_left_count small_1620655_left_encoded small_1620655_left_checked

theorem cover_1620655 : CoveredBy scale carrier boxes root_1620655 := by
  apply coveredBy_split_literal root_1620655 small_1620655_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0037.root_1620661 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_1620655_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0037.cover_1620661
#print axioms cover_1620655

def root_1615431 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1615431 : CoveredBy scale carrier boxes root_1615431 := by
  apply coveredBy_split_literal root_1615431 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0037.root_1615432 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0037.root_1620655 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0037.cover_1615432
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0037.cover_1620655
#print axioms cover_1615431

def root_1615426 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1615426_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1615426_right_fuel : Nat := 1
def small_1615426_right_count : Nat := 1
def small_1615426_right_encoded : String := "00000000"
theorem small_1615426_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1615426_right_root small_1615426_right_fuel small_1615426_right_count small_1615426_right_encoded = true := by
  decide +kernel
theorem small_1615426_right_covered : CoveredBy scale carrier boxes small_1615426_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1615426_right_root small_1615426_right_fuel small_1615426_right_count small_1615426_right_encoded small_1615426_right_checked

theorem cover_1615426 : CoveredBy scale carrier boxes root_1615426 := by
  apply coveredBy_split_literal root_1615426 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0037.root_1615431 small_1615426_right_root coord0 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0037.cover_1615431
  · exact small_1615426_right_covered
#print axioms cover_1615426

def root_1609950 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1609950 : CoveredBy scale carrier boxes root_1609950 := by
  apply coveredBy_split_literal root_1609950 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0037.root_1609951 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0037.root_1615426 coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0037.cover_1609951
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0037.cover_1615426
#print axioms cover_1609950

def root_1607864 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1607864 : CoveredBy scale carrier boxes root_1607864 := by
  apply coveredBy_split_literal root_1607864 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0625.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0037.root_1609950 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0625.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0037.cover_1609950
#print axioms cover_1607864

def root_1605736 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1605736 : CoveredBy scale carrier boxes root_1605736 := by
  apply coveredBy_split_literal root_1605736 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0624.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0037.root_1607864 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0624.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0037.cover_1607864
#print axioms cover_1605736

def root_1533406 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1533406 : CoveredBy scale carrier boxes root_1533406 := by
  apply coveredBy_split_literal root_1533406 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0037.root_1533407 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0037.root_1605736 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0037.cover_1533407
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0037.cover_1605736
#print axioms cover_1533406

def root_1637263 : ZRayBox := fun j => (#[⟨⟨(-9480640), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16678144), (16777216)⟩, ⟨(-1816224), (0)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(15552512), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1637263_right_root : ZRayBox := fun j => (#[⟨⟨(-9480640), (-8388608)⟩, ⟨(-13841408), (-13026304)⟩⟩, ⟨⟨(16678144), (16777216)⟩, ⟨(-1816224), (0)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(15552512), (16244736)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1637263_right_fuel : Nat := 1
def small_1637263_right_count : Nat := 1
def small_1637263_right_encoded : String := "00000000"
theorem small_1637263_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1637263_right_root small_1637263_right_fuel small_1637263_right_count small_1637263_right_encoded = true := by
  decide +kernel
theorem small_1637263_right_covered : CoveredBy scale carrier boxes small_1637263_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1637263_right_root small_1637263_right_fuel small_1637263_right_count small_1637263_right_encoded small_1637263_right_checked

theorem cover_1637263 : CoveredBy scale carrier boxes root_1637263 := by
  apply coveredBy_split_literal root_1637263 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0638.root small_1637263_right_root coord0 true (-13841408)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0638.covered
  · exact small_1637263_right_covered
#print axioms cover_1637263

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0037
