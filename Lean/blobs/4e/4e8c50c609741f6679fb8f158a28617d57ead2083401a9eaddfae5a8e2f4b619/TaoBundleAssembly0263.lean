import TaoBundleAssembly0262
import TaoBundleChunkBatch0350
import TaoBundleChunkBatch0351
import TaoBundleChunkBatch0352
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0263
def root_3707623 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3707623_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3707623_right_fuel : Nat := 35
def small_3707623_right_count : Nat := 413
def small_3707623_right_encoded : String := "115225050A0001061151E8FD0A0000FE000000051151E8FF000000050000000400000003115224FD000000030A0000FE115224FF0000000408A91301120700F608A913050000000712073D0408A912FD00000005120701060000000300000007000000020000000012073CF60000000008A91305120701040000000208A912FD0000000712070106000000030000000712073D0408A912FD12073D0608A912FF12073CFE00000004050000F800000005135D4503000000010CFD9C01000000050F350CF6000000000CFD9C05000000050F350D040CFD9BFD000000050F34D106000000030000000700000002120700FE050000F8135D81030CFD9C01000000050F350CF6000000000CFD9C05000000050F350D040CFD9BFD000000050F34D10600000003000000070000000200000001135D4503000000010CFD9C01000000070F350CF6000000000CFD9C05000000070F350D040CFD9BFD000000050F34D1060000000300000007000000020000000400000003120701060000000308A912FF12073CFE00000004050000F8135D81030CFD9C010F34D0F600000007000000000F350CF6000000000CFD9C050F34D10400000002000000070F350D04045489FD1386AD060CFD9BFF000000050F34D0FE00000005000000040000000313867106000000030CFD9BFF000000070F34D0FE00000007000000040000000200000001135D4503000000010CFD9C01000000070F350CF6000000000CFD9C05000000070F350D04045489FD0000000713867106000000030000000700000002120700FE050000F8135D81030CFD9C01000000070F350CF6000000000CFD9C05000000070F350D04045489FD000000071386710600000003000000070000000200000001135D4503000000010000000700000004000000021151E8FF08A91301120700F608A913050000000512073D0408A912FD00000005120701060000000300000007000000020000000012073CF60000000008A91305120701040000000208A912FD0000000712070106000000030000000712073D0408A912FD12073D06050000F8135D8103050000FE00000005135D44FF000000050000000400000001135D450300000001050000FE135D80FF000000040CFD9C01000000050F350CF6000000000CFD9C05000000050F350D040000000500000002135D44FF0CFD9C010F34D0F600000005000000000F350CF6000000000CFD9C050F34D104000000020CFD9BFD000000070F34D10600000003000000070F350D040CFD9BFD000000050F34D106000000030C9A86F6000000050F875101000000000C9A8704000000050F878D0500000007000000020000000200000004000000031207010600000003050000F8135D8103050000FE135D80FF000000040CFD9C010F34D0F600000005000000000F350CF6000000000CFD9C050F34D10400000002000000070F350D04045489FD0000000513867106000000030C9A86F6000000070F875101000000000C9A87040F87510500000002078000F800000005128A410300000001078000FE00000005128A40FF00000005000000040000000700000002135D44FF0CFD9C010F34D0F600000005000000000F350CF6000000000CFD9C050F34D10400000002000000070F350D04045489FD1386AD060C9A86F6000000050F875101000000000C9A8704000000050F878D0500000005000000020000000313867106000000030C9A86F60F878D010C9A87040000000500000007000000000F875101000000000C9A87040F87510500000002078000F8128A7D0300000005000000010000000A0F878D05078000F8128A7D03028000FE0000000513D7B0FF022A457D0000000513E1C506000000030B4D43F60000000510801101000000000DE7CA0400000005000000070000000400000001128A410300000001028000FE0000000713D7B0FF022A457D0000000713E1C50600000003000000070000000400000002000000020000000400000001135D450300000001050000FE135D80FF000000040CFD9C01000000070F350CF6000000000CFD9C05000000070F350D04045489FD0000000713867106000000030000000700000002135D44FF0CFD9C010F34D0F600000007000000000F350CF6000000000CFD9C050F34D10400000002000000070F350D04045489FD1386AD060C9A86F6000000070F875101000000000C9A870400000008000000070000000313867106000000030C9A86F60000000A0F875101000000000000000A0000000200000004000000020000000400000002"
theorem small_3707623_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3707623_right_root small_3707623_right_fuel small_3707623_right_count small_3707623_right_encoded = true := by
  decide +kernel
theorem small_3707623_right_covered : CoveredBy scale carrier boxes small_3707623_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3707623_right_root small_3707623_right_fuel small_3707623_right_count small_3707623_right_encoded small_3707623_right_checked

theorem cover_3707623 : CoveredBy scale carrier boxes root_3707623 := by
  apply coveredBy_split_literal root_3707623 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0262.root_3707624 small_3707623_right_root coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0262.cover_3707624
  · exact small_3707623_right_covered
#print axioms cover_3707623

def root_3707617 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3707617_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3707617_left_fuel : Nat := 1
def small_3707617_left_count : Nat := 1
def small_3707617_left_encoded : String := "00000001"
theorem small_3707617_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3707617_left_root small_3707617_left_fuel small_3707617_left_count small_3707617_left_encoded = true := by
  decide +kernel
theorem small_3707617_left_covered : CoveredBy scale carrier boxes small_3707617_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3707617_left_root small_3707617_left_fuel small_3707617_left_count small_3707617_left_encoded small_3707617_left_checked

theorem cover_3707617 : CoveredBy scale carrier boxes root_3707617 := by
  apply coveredBy_split_literal root_3707617 small_3707617_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0263.root_3707623 coord1 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_3707617_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0263.cover_3707623
#print axioms cover_3707617

def root_3704613 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3704613 : CoveredBy scale carrier boxes root_3704613 := by
  apply coveredBy_split_literal root_3704613 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1400.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0263.root_3707617 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1400.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0263.cover_3707617
#print axioms cover_3704613

def root_3704608 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3704608_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3704608_right_fuel : Nat := 1
def small_3704608_right_count : Nat := 1
def small_3704608_right_encoded : String := "00000000"
theorem small_3704608_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3704608_right_root small_3704608_right_fuel small_3704608_right_count small_3704608_right_encoded = true := by
  decide +kernel
theorem small_3704608_right_covered : CoveredBy scale carrier boxes small_3704608_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3704608_right_root small_3704608_right_fuel small_3704608_right_count small_3704608_right_encoded small_3704608_right_checked

theorem cover_3704608 : CoveredBy scale carrier boxes root_3704608 := by
  apply coveredBy_split_literal root_3704608 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0263.root_3704613 small_3704608_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0263.cover_3704613
  · exact small_3704608_right_covered
#print axioms cover_3704608

def root_3714833 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3714833 : CoveredBy scale carrier boxes root_3714833 := by
  apply coveredBy_split_literal root_3714833 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1403.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1404.root coord4 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1403.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1404.covered
#print axioms cover_3714833

def root_3714827 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3714827_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3714827_left_fuel : Nat := 1
def small_3714827_left_count : Nat := 1
def small_3714827_left_encoded : String := "00000003"
theorem small_3714827_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3714827_left_root small_3714827_left_fuel small_3714827_left_count small_3714827_left_encoded = true := by
  decide +kernel
theorem small_3714827_left_covered : CoveredBy scale carrier boxes small_3714827_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3714827_left_root small_3714827_left_fuel small_3714827_left_count small_3714827_left_encoded small_3714827_left_checked

theorem cover_3714827 : CoveredBy scale carrier boxes root_3714827 := by
  apply coveredBy_split_literal root_3714827 small_3714827_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0263.root_3714833 coord3 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_3714827_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0263.cover_3714833
#print axioms cover_3714827

def root_3714445 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3714445_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3714445_left_fuel : Nat := 21
def small_3714445_left_count : Nat := 185
def small_3714445_left_encoded : String := "1386AD06045489FF1386ACFE000000040C9A86F80F878D0300000005000000010F87510300000001078000F6128A7D010000000500000000128A4101000000000780010400000006128A7D05067ECE7D0000000512EA590600000003067ECE7F0000000512EA58FE0B4D43F8000000051080110300000001000000060000000400000002138670FE0C9A86F80F878D03078000F6128A7D0107800104128A410500000002067ECE7D0000000512EA590600000003022A457F0000000500000009128A7D05067ECE7D000000050000000A0000000200000000128A41010000000007800104128A410500000002067ECE7D0000000512EA590600000003022A457F000000050000000A128A7D05067ECE7D000000050000000A00000002000000010F87510300000001078000F6128A7D0107800104128A410500000002067ECE7D12EA9506022A457F0000000513E1C4FE00000009000000040000000312EA590600000003022A457F13E200FE000000040B4D43F810804D030000000500000001108011030000000108C000F611FC2501000000050000000011FBE90100000000064001040000000612FFAD050569AC3D000000050000000A0000000213E1C4FE0B4D43F800000009108011030000000108C000F6000000090000000A00000004128A7D05067ECE7D12EA9506022A457F000000050000000A0000000312EA590600000003022A457F13E200FE000000040B4D43F80000000A108011030000000108C000F6000000070000000A0000000A0000000200000000128A41010000000007800104128A410500000002067ECE7D0000000612EA590600000003022A457F0000000613E1C4FE0B4D43F80000000A1080110300000001064000F60000000A0000000600000004128A7D05067ECE7D12EA9506022A457F000000050000000A0000000312EA590600000003022A457F13E200FE000000040B4D43F80000000A1080110300000001064000F60000000A0000000A0000000A000000020000000400000003"
theorem small_3714445_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3714445_left_root small_3714445_left_fuel small_3714445_left_count small_3714445_left_encoded = true := by
  decide +kernel
theorem small_3714445_left_covered : CoveredBy scale carrier boxes small_3714445_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3714445_left_root small_3714445_left_fuel small_3714445_left_count small_3714445_left_encoded small_3714445_left_checked

theorem cover_3714445 : CoveredBy scale carrier boxes root_3714445 := by
  apply coveredBy_split_literal root_3714445 small_3714445_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0263.root_3714827 coord3 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact small_3714445_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0263.cover_3714827
#print axioms cover_3714445

def root_3714439 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3714439_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3714439_left_fuel : Nat := 1
def small_3714439_left_count : Nat := 1
def small_3714439_left_encoded : String := "00000001"
theorem small_3714439_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3714439_left_root small_3714439_left_fuel small_3714439_left_count small_3714439_left_encoded = true := by
  decide +kernel
theorem small_3714439_left_covered : CoveredBy scale carrier boxes small_3714439_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3714439_left_root small_3714439_left_fuel small_3714439_left_count small_3714439_left_encoded small_3714439_left_checked

theorem cover_3714439 : CoveredBy scale carrier boxes root_3714439 := by
  apply coveredBy_split_literal root_3714439 small_3714439_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0263.root_3714445 coord1 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_3714439_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0263.cover_3714445
#print axioms cover_3714439

def root_3714391 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3714391_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3714391_left_fuel : Nat := 10
def small_3714391_left_count : Nat := 23
def small_3714391_left_encoded : String := "0F34D0F8045489FD000000051386710600000003045489FF00000005138670FE078000F6128A7D0107800104128A410500000002000000090000000A00000000128A4101000000000780010400000007000000080000000400000001"
theorem small_3714391_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3714391_left_root small_3714391_left_fuel small_3714391_left_count small_3714391_left_encoded = true := by
  decide +kernel
theorem small_3714391_left_covered : CoveredBy scale carrier boxes small_3714391_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3714391_left_root small_3714391_left_fuel small_3714391_left_count small_3714391_left_encoded small_3714391_left_checked

theorem cover_3714391 : CoveredBy scale carrier boxes root_3714391 := by
  apply coveredBy_split_literal root_3714391 small_3714391_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0263.root_3714439 coord1 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_3714391_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0263.cover_3714439
#print axioms cover_3714391

def root_3714386 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3714386_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3714386_right_fuel : Nat := 1
def small_3714386_right_count : Nat := 1
def small_3714386_right_encoded : String := "00000002"
theorem small_3714386_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3714386_right_root small_3714386_right_fuel small_3714386_right_count small_3714386_right_encoded = true := by
  decide +kernel
theorem small_3714386_right_covered : CoveredBy scale carrier boxes small_3714386_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3714386_right_root small_3714386_right_fuel small_3714386_right_count small_3714386_right_encoded small_3714386_right_checked

theorem cover_3714386 : CoveredBy scale carrier boxes root_3714386 := by
  apply coveredBy_split_literal root_3714386 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0263.root_3714391 small_3714386_right_root coord2 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0263.cover_3714391
  · exact small_3714386_right_covered
#print axioms cover_3714386

def root_3712348 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3712348 : CoveredBy scale carrier boxes root_3712348 := by
  apply coveredBy_split_literal root_3712348 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1402.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0263.root_3714386 coord2 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1402.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0263.cover_3714386
#print axioms cover_3712348

def root_3712343 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3712343_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3712343_right_fuel : Nat := 1
def small_3712343_right_count : Nat := 1
def small_3712343_right_encoded : String := "00000000"
theorem small_3712343_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3712343_right_root small_3712343_right_fuel small_3712343_right_count small_3712343_right_encoded = true := by
  decide +kernel
theorem small_3712343_right_covered : CoveredBy scale carrier boxes small_3712343_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3712343_right_root small_3712343_right_fuel small_3712343_right_count small_3712343_right_encoded small_3712343_right_checked

theorem cover_3712343 : CoveredBy scale carrier boxes root_3712343 := by
  apply coveredBy_split_literal root_3712343 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0263.root_3712348 small_3712343_right_root coord0 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0263.cover_3712348
  · exact small_3712343_right_covered
#print axioms cover_3712343

def root_3712342 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3712342_right_root : ZRayBox := fun j => (#[⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3712342_right_fuel : Nat := 22
def small_3712342_right_count : Nat := 257
def small_3712342_right_encoded : String := "135D45010000000005000104135D4505000000020CFD9C030F34D0F800000007000000010F350CF800000001045489FD1386AD06045489FF00000006138670FE0000000600000004000000031386710600000003045489FF1386ACFE000000040C9A86F8000000060F875103000000010000000600000007135D81050CFD9C030F34D0F8045489FD1386AD06045489FF00000005138670FE028000F613D7ED010780010400000005128A7D050000000500000002000000000000000700000004000000031386710600000003045489FF1386ACFE00000004028000F613D7ED01078001040000000700000008000000000000000700000007000000010F350CF800000001045489FD1386AD06045489FF1386ACFE000000040C9A86F8000000060F8751030000000100000006138670FE0C9A86F80F878D03028000F613D7ED0107800104128A41050000000200000006128A7D05067ECE7D0000000A0000000A000000020000000000000006000000010F87510300000001028000F613D7ED0107800104128A41050000000200000006128A7D05067ECE7D0000000612EA590600000003022A457F000000060000000A00000002000000000000000600000004000000031386710600000003045489FF1386ACFE000000040C9A86F80F878D03028000F613D7ED0107800104128A41050000000200000007128A7D05022A457D13E20106067ECE7F000000050000000A0000000300000008000000020000000013D7B101000000000780010400000006128A7D050000000800000002000000010F87510300000001028000F613D7ED0107800104128A410500000002022A457D0000000613E1C50600000003067ECE7F0000000600000007128A7D05022A457D13E20106067ECE7F0000000612EA58FE0B4D43F800000006108011030000000100000006000000040000000313E1C50600000003067ECE7F0000000812EA58FE0000000800000004000000020000000013D7B101000000000780010400000006128A7D05022A457D0000000613E1C50600000003067ECE7F000000060000000700000002138670FE0C9A86F80F878D03028000F613D7ED010780010400000007128A7D050000000A000000020000000000000007000000010F87510300000001028000F613D7ED0107800104128A410500000002022A457D13E20106022A457F0000000613E1C4FE0B4D43F80000000710801103000000010000000A000000040000000300000007128A7D05022A457D13E20106022A457F13E200FE000000040B4D43F80000000A10801103000000010000000A0000000A0000000313E1C50600000003022A457F000000080000000A000000020000000013D7B101000000000780010400000007128A7D05022A457D0000000A00000007000000020000000400000002"
theorem small_3712342_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3712342_right_root small_3712342_right_fuel small_3712342_right_count small_3712342_right_encoded = true := by
  decide +kernel
theorem small_3712342_right_covered : CoveredBy scale carrier boxes small_3712342_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3712342_right_root small_3712342_right_fuel small_3712342_right_count small_3712342_right_encoded small_3712342_right_checked

theorem cover_3712342 : CoveredBy scale carrier boxes root_3712342 := by
  apply coveredBy_split_literal root_3712342 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0263.root_3712343 small_3712342_right_root coord0 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0263.cover_3712343
  · exact small_3712342_right_covered
#print axioms cover_3712342

def root_3712337 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3712337_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3712337_right_fuel : Nat := 1
def small_3712337_right_count : Nat := 1
def small_3712337_right_encoded : String := "00000004"
theorem small_3712337_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3712337_right_root small_3712337_right_fuel small_3712337_right_count small_3712337_right_encoded = true := by
  decide +kernel
theorem small_3712337_right_covered : CoveredBy scale carrier boxes small_3712337_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3712337_right_root small_3712337_right_fuel small_3712337_right_count small_3712337_right_encoded small_3712337_right_checked

theorem cover_3712337 : CoveredBy scale carrier boxes root_3712337 := by
  apply coveredBy_split_literal root_3712337 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0263.root_3712342 small_3712337_right_root coord4 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0263.cover_3712342
  · exact small_3712337_right_covered
#print axioms cover_3712337

def root_3711967 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3711967_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3711967_left_fuel : Nat := 24
def small_3711967_left_count : Nat := 169
def small_3711967_left_encoded : String := "12073CFE00000004050000F6135D810105000104135D4505000000020CFD9C03000000050F350CF800000001045489FD0000000513867106000000030CFD9BFF000000050F34D0FE0C9A86F80F878D0300000005000000010F87510300000001078000F6128A7D0100000005000000000000000600000004135D81050CFD9C030F34D0F800000005000000010F350CF800000001045489FD1386AD060CFD9BFF000000050F34D0FE00000005000000040000000313867106000000030CFD9BFF0F350CFE000000040C9A86F8000000050F875103000000010C9A86FE000000050F8750FF00000005000000040F34D0FE0C9A86F80F878D0300000005000000010F87510300000001078000F6128A7D010780010400000005128A7D05000000050000000200000000128A41010000000007800104128A41050000000200000006128A7D05022A457D0000000513E1C506000000030AD3577F0000000510D100FE0B4D43F810804D0300000005000000011080110300000001000000090000000400000002000000040000000200000000135D45010000000005000104135D4505000000020CFD9C030F34D0F800000005000000010F350CF800000001045489FD00000006138671060000000300000006135D81050CFD9C030F34D0F8045489FD0000000513867106000000030CFD9BFF000000050F34D0FE0000000500000004000000010F350CF800000001045489FD1386AD060CFD9BFF000000060F34D0FE00000006000000040000000313867106000000030CFD9BFF0F350CFE000000040C9A86F8000000060F87510300000001000000060F34D0FE0C9A86F80F878D03028000F613D7ED010780010400000006128A7D05022A457D0000000500000008000000020000000000000006000000010F87510300000001000000060000000400000002"
theorem small_3711967_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3711967_left_root small_3711967_left_fuel small_3711967_left_count small_3711967_left_encoded = true := by
  decide +kernel
theorem small_3711967_left_covered : CoveredBy scale carrier boxes small_3711967_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3711967_left_root small_3711967_left_fuel small_3711967_left_count small_3711967_left_encoded small_3711967_left_checked

theorem cover_3711967 : CoveredBy scale carrier boxes root_3711967 := by
  apply coveredBy_split_literal root_3711967 small_3711967_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0263.root_3712337 coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_3711967_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0263.cover_3712337
#print axioms cover_3711967

def root_3711961 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3711961_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3711961_left_fuel : Nat := 1
def small_3711961_left_count : Nat := 1
def small_3711961_left_encoded : String := "00000003"
theorem small_3711961_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3711961_left_root small_3711961_left_fuel small_3711961_left_count small_3711961_left_encoded = true := by
  decide +kernel
theorem small_3711961_left_covered : CoveredBy scale carrier boxes small_3711961_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3711961_left_root small_3711961_left_fuel small_3711961_left_count small_3711961_left_encoded small_3711961_left_checked

theorem cover_3711961 : CoveredBy scale carrier boxes root_3711961 := by
  apply coveredBy_split_literal root_3711961 small_3711961_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0263.root_3711967 coord3 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_3711961_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0263.cover_3711967
#print axioms cover_3711961

def root_3711819 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3711819_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3711819_left_fuel : Nat := 17
def small_3711819_left_count : Nat := 69
def small_3711819_left_encoded : String := "12073D0608A912FF00000005120700FE050000F6135D810105000104135D4505000000020CFD9C03000000050F350CF8000000010CFD9BFD000000050F34D10600000003045489FF00000005138670FE0C9A86F8000000060000000500000004135D81050CFD9C03000000050F350CF8000000010CFD9BFD000000050F34D10600000003045489FF00000005138670FE0C9A86F8000000050F87510300000001078000F60000000500000006000000040000000200000000135D45010000000005000104135D45050000000200000006135D81050CFD9C03000000050F350CF8000000010CFD9BFD000000050F34D10600000003045489FF00000005138670FE0000000600000004000000020000000400000003"
theorem small_3711819_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3711819_left_root small_3711819_left_fuel small_3711819_left_count small_3711819_left_encoded = true := by
  decide +kernel
theorem small_3711819_left_covered : CoveredBy scale carrier boxes small_3711819_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3711819_left_root small_3711819_left_fuel small_3711819_left_count small_3711819_left_encoded small_3711819_left_checked

theorem cover_3711819 : CoveredBy scale carrier boxes root_3711819 := by
  apply coveredBy_split_literal root_3711819 small_3711819_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0263.root_3711961 coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_3711819_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0263.cover_3711961
#print axioms cover_3711819

def root_3711813 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3711813_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3711813_left_fuel : Nat := 1
def small_3711813_left_count : Nat := 1
def small_3711813_left_encoded : String := "00000001"
theorem small_3711813_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3711813_left_root small_3711813_left_fuel small_3711813_left_count small_3711813_left_encoded = true := by
  decide +kernel
theorem small_3711813_left_covered : CoveredBy scale carrier boxes small_3711813_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3711813_left_root small_3711813_left_fuel small_3711813_left_count small_3711813_left_encoded small_3711813_left_checked

theorem cover_3711813 : CoveredBy scale carrier boxes root_3711813 := by
  apply coveredBy_split_literal root_3711813 small_3711813_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0263.root_3711819 coord1 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_3711813_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0263.cover_3711819
#print axioms cover_3711813

def root_3711755 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3711755_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3711755_left_fuel : Nat := 13
def small_3711755_left_count : Nat := 29
def small_3711755_left_encoded : String := "120700F808A912FD00000005120701060000000308A912FF00000005120700FE050000F6135D810105000104135D45050000000204548A03000000051386ACF800000001045489FD00000005000000070000000500000000135D4501000000000500010400000007000000070000000400000001"
theorem small_3711755_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3711755_left_root small_3711755_left_fuel small_3711755_left_count small_3711755_left_encoded = true := by
  decide +kernel
theorem small_3711755_left_covered : CoveredBy scale carrier boxes small_3711755_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3711755_left_root small_3711755_left_fuel small_3711755_left_count small_3711755_left_encoded small_3711755_left_checked

theorem cover_3711755 : CoveredBy scale carrier boxes root_3711755 := by
  apply coveredBy_split_literal root_3711755 small_3711755_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0263.root_3711813 coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_3711755_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0263.cover_3711813
#print axioms cover_3711755

def root_3711749 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3711749_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3711749_left_fuel : Nat := 1
def small_3711749_left_count : Nat := 1
def small_3711749_left_encoded : String := "00000004"
theorem small_3711749_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3711749_left_root small_3711749_left_fuel small_3711749_left_count small_3711749_left_encoded = true := by
  decide +kernel
theorem small_3711749_left_covered : CoveredBy scale carrier boxes small_3711749_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3711749_left_root small_3711749_left_fuel small_3711749_left_count small_3711749_left_encoded small_3711749_left_checked

theorem cover_3711749 : CoveredBy scale carrier boxes root_3711749 := by
  apply coveredBy_split_literal root_3711749 small_3711749_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0263.root_3711755 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_3711749_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0263.cover_3711755
#print axioms cover_3711749

def root_3711748 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3711748_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3711748_right_fuel : Nat := 19
def small_3711748_right_count : Nat := 79
def small_3711748_right_encoded : String := "1151E8FF08A91303120700F8000000050000000112073CF80000000108A912FD12073D06050000F60000000500000006000000031207010600000003050000F6135D810105000104135D450500000002050000FE00000005135D44FF0000000500000004135D8105050000FE135D80FF000000040CFD9C03000000050F350CF800000001045489FD0000000513867106000000030C9A86F8000000050F87510300000001078000F60000000500000006135D44FF0CFD9C03000000050F350CF800000001045489FD0000000513867106000000030C9A86F8000000050F8751030000000100000006000000040000000200000000135D4501000000000500010400000006135D8105050000FE135D80FF000000040CFD9C030F34D0F8000000050000000100000006135D44FF00000006000000040000000200000004"
theorem small_3711748_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3711748_right_root small_3711748_right_fuel small_3711748_right_count small_3711748_right_encoded = true := by
  decide +kernel
theorem small_3711748_right_covered : CoveredBy scale carrier boxes small_3711748_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3711748_right_root small_3711748_right_fuel small_3711748_right_count small_3711748_right_encoded small_3711748_right_checked

theorem cover_3711748 : CoveredBy scale carrier boxes root_3711748 := by
  apply coveredBy_split_literal root_3711748 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0263.root_3711749 small_3711748_right_root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0263.cover_3711749
  · exact small_3711748_right_covered
#print axioms cover_3711748

def root_3711742 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3711742_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3711742_left_fuel : Nat := 1
def small_3711742_left_count : Nat := 1
def small_3711742_left_encoded : String := "00000003"
theorem small_3711742_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3711742_left_root small_3711742_left_fuel small_3711742_left_count small_3711742_left_encoded = true := by
  decide +kernel
theorem small_3711742_left_covered : CoveredBy scale carrier boxes small_3711742_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3711742_left_root small_3711742_left_fuel small_3711742_left_count small_3711742_left_encoded small_3711742_left_checked

theorem cover_3711742 : CoveredBy scale carrier boxes root_3711742 := by
  apply coveredBy_split_literal root_3711742 small_3711742_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0263.root_3711748 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_3711742_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0263.cover_3711748
#print axioms cover_3711742

def root_3711712 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3711712_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3711712_left_fuel : Nat := 6
def small_3711712_left_count : Nat := 13
def small_3711712_left_encoded : String := "1151E8FD0A0000FE115224FF0000000408A913030000000512073CF800000001000000051151E8FF000000050000000400000003"
theorem small_3711712_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3711712_left_root small_3711712_left_fuel small_3711712_left_count small_3711712_left_encoded = true := by
  decide +kernel
theorem small_3711712_left_covered : CoveredBy scale carrier boxes small_3711712_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3711712_left_root small_3711712_left_fuel small_3711712_left_count small_3711712_left_encoded small_3711712_left_checked

theorem cover_3711712 : CoveredBy scale carrier boxes root_3711712 := by
  apply coveredBy_split_literal root_3711712 small_3711712_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0263.root_3711742 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_3711712_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0263.cover_3711742
#print axioms cover_3711712

def root_3711706 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3711706_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3711706_left_fuel : Nat := 1
def small_3711706_left_count : Nat := 1
def small_3711706_left_encoded : String := "00000002"
theorem small_3711706_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3711706_left_root small_3711706_left_fuel small_3711706_left_count small_3711706_left_encoded = true := by
  decide +kernel
theorem small_3711706_left_covered : CoveredBy scale carrier boxes small_3711706_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3711706_left_root small_3711706_left_fuel small_3711706_left_count small_3711706_left_encoded small_3711706_left_checked

theorem cover_3711706 : CoveredBy scale carrier boxes root_3711706 := by
  apply coveredBy_split_literal root_3711706 small_3711706_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0263.root_3711712 coord2 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_3711706_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0263.cover_3711712
#print axioms cover_3711706

def root_3711705 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3711705 : CoveredBy scale carrier boxes root_3711705 := by
  apply coveredBy_split_literal root_3711705 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0263.root_3711706 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1405.root coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0263.cover_3711706
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1405.covered
#print axioms cover_3711705

def root_3711700 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3711700_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3711700_right_fuel : Nat := 1
def small_3711700_right_count : Nat := 1
def small_3711700_right_encoded : String := "00000001"
theorem small_3711700_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3711700_right_root small_3711700_right_fuel small_3711700_right_count small_3711700_right_encoded = true := by
  decide +kernel
theorem small_3711700_right_covered : CoveredBy scale carrier boxes small_3711700_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3711700_right_root small_3711700_right_fuel small_3711700_right_count small_3711700_right_encoded small_3711700_right_checked

theorem cover_3711700 : CoveredBy scale carrier boxes root_3711700 := by
  apply coveredBy_split_literal root_3711700 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0263.root_3711705 small_3711700_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0263.cover_3711705
  · exact small_3711700_right_covered
#print axioms cover_3711700

def root_3725612 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3725612_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(6291456), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3725612_right_fuel : Nat := 20
def small_3725612_right_count : Nat := 171
def small_3725612_right_encoded : String := "128A7D05022A457D13E20106067ECE7F12EA94FE0000000408C000F60000000711FBE9010000000008C000F811FC2503000000050000000111FBE903000000010000000712EA58FE08C000F60000000711FBE9010000000008C000F811FC250308C0010411FBE90500000002033F67BD0000000713BBF506000000030569AC3F000000071340D4FE0000000700000004000000070000000111FBE9030000000100000007000000040000000313E1C50600000003067ECE7F12EA94FE0000000408C000F611FC2501000000070000000011FBE9010000000008C000F811FC250308C0010411FBE905000000020115233D13F895060793F0BF00000005128220FE0000000900000004000000030000000911FC25050000000700000002000000010000000912EA58FE08C000F611FC250108C000F811FC250308C0010411FBE905000000020115233D0000000713F8590600000003000000070000000700000001000000070000000011FBE9010000000008C000F811FC250308C0010411FBE905000000020115233D13F895060569AC3F134110FE00000004082000F60000000712465D0100000000096000F811AABD030000000900000001000000091340D4FE082000F60000000712465D0100000000096000F80000000A11AA81030000000100000007000000040000000313F85906000000030569AC3F134110FE00000004082000F612469901096000F8000000080000000900000000000000091340D4FE082000F612469901096000F80000000811AA810300000001000000070000000012465D0100000000096000F800000008000000090000000411FC25050115233D0000000700000008000000020000000111FBE9030000000108C0010411FBE905000000020115233D13F895060569AC3F00000007000000070000000300000009000000070000000400000002"
theorem small_3725612_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3725612_right_root small_3725612_right_fuel small_3725612_right_count small_3725612_right_encoded = true := by
  decide +kernel
theorem small_3725612_right_covered : CoveredBy scale carrier boxes small_3725612_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3725612_right_root small_3725612_right_fuel small_3725612_right_count small_3725612_right_encoded small_3725612_right_checked

theorem cover_3725612 : CoveredBy scale carrier boxes root_3725612 := by
  apply coveredBy_split_literal root_3725612 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1407.root small_3725612_right_root coord2 false (6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1407.covered
  · exact small_3725612_right_covered
#print axioms cover_3725612

def root_3725607 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3725607_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(-8388608), (-6291456)⟩, ⟨(15553280), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3725607_right_fuel : Nat := 1
def small_3725607_right_count : Nat := 1
def small_3725607_right_encoded : String := "00000001"
theorem small_3725607_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3725607_right_root small_3725607_right_fuel small_3725607_right_count small_3725607_right_encoded = true := by
  decide +kernel
theorem small_3725607_right_covered : CoveredBy scale carrier boxes small_3725607_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3725607_right_root small_3725607_right_fuel small_3725607_right_count small_3725607_right_encoded small_3725607_right_checked

theorem cover_3725607 : CoveredBy scale carrier boxes root_3725607 := by
  apply coveredBy_split_literal root_3725607 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0263.root_3725612 small_3725607_right_root coord1 true (15553280)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0263.cover_3725612
  · exact small_3725607_right_covered
#print axioms cover_3725607

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0263
