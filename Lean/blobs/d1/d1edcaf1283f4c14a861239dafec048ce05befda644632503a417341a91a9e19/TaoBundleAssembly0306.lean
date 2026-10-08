import TaoBundleAssembly0296
import TaoBundleAssembly0301
import TaoBundleAssembly0304
import TaoBundleAssembly0305
import TaoBundleChunkBatch0393
import TaoBundleChunkBatch0394
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0306
def root_4202416 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4202416_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4202416_right_fuel : Nat := 32
def small_4202416_right_count : Nat := 241
def small_4202416_right_encoded : String := "0F34D102000000010CFD9BFD0F350D0604548A0913867108000000040C9A87060F8750FD078000F6128A7D01078000FA128A7D050AD3577910D13D02022A458913E1C508000000040B4D4406108010FD08C000F611FC2501000000080000000011FBE9010000000008C000FA0000000711FBE90500000002000000060000000310804CFD0000000308C000F611FC250108C000FA11FC25050BE879B91011AD020115234913F85908000000040BF3E58600000006100928FD00000003096000F60000000611AA81010000000000000007000000060000000110117102000000010000000600000002000000060000000011FBE9010000000008C000FA11FC25050BE879B900000007101171020000000100000007000000020000000513E201080B4D44060000000610804CFD0000000308C000F60000000611FBE9010000000008C000FA0000000700000005000000040000000110D1010200000001022A458913E1C508000000040B4D44060000000610804CFD00000003000000060000000600000002128A4105000000020AD35779000000060000000600000000128A410100000000078000FA128A7D050AD3577910D13D02022A458913E1C508000000040B4D4406108010FD064000F60000000700000005000000030000000513E201080B4D44060000000700000005000000040000000110D1010200000001000000050000000200000005000000030F878CFD00000003078000F6128A7D01078000FA128A7D050AD3577910D13D02022A458913E1C508000000040DE7CA060E5FD8FD08C000F611FC250108C000FA11FC25050BE879B91011AD020115234913F85908000000040D4128860EFA10FD096000F611AABD01000000060000000011AA810100000000096000FA11AABD05000000070000000200000005000000030EFA4CFD00000003096000F611AABD01000000060000000000000005000000060000000110117102000000010000000500000002000000050000000000000005000000030000000513E201080DE7CA060E5FD8FD08C000F611FC25010000000600000000000000050000000300000005000000040000000110D101020000000100000005000000020000000500000000000000051386AD080C9A87060F8750FD078000F6128A7D01078000FA128A7D0500000006000000020000000600000000128A410100000000078000FA128A7D05000000070000000200000005000000030F878CFD00000003078000F6128A7D01078000FA128A7D050AD3577900000006000000060000000200000005000000000000000500000004000000030F34D1060000000300000005"
theorem small_4202416_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4202416_right_root small_4202416_right_fuel small_4202416_right_count small_4202416_right_encoded = true := by
  decide +kernel
theorem small_4202416_right_covered : CoveredBy scale carrier boxes small_4202416_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4202416_right_root small_4202416_right_fuel small_4202416_right_count small_4202416_right_encoded small_4202416_right_checked

theorem cover_4202416 : CoveredBy scale carrier boxes root_4202416 := by
  apply coveredBy_split_literal root_4202416 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0305.root_4202417 small_4202416_right_root coord1 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0305.cover_4202417
  · exact small_4202416_right_covered
#print axioms cover_4202416

def root_4202411 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4202411_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4202411_right_fuel : Nat := 1
def small_4202411_right_count : Nat := 1
def small_4202411_right_encoded : String := "00000002"
theorem small_4202411_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4202411_right_root small_4202411_right_fuel small_4202411_right_count small_4202411_right_encoded = true := by
  decide +kernel
theorem small_4202411_right_covered : CoveredBy scale carrier boxes small_4202411_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4202411_right_root small_4202411_right_fuel small_4202411_right_count small_4202411_right_encoded small_4202411_right_checked

theorem cover_4202411 : CoveredBy scale carrier boxes root_4202411 := by
  apply coveredBy_split_literal root_4202411 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0306.root_4202416 small_4202411_right_root coord2 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0306.cover_4202416
  · exact small_4202411_right_covered
#print axioms cover_4202411

def root_4202410 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4202410_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4202410_right_fuel : Nat := 20
def small_4202410_right_count : Nat := 137
def small_4202410_right_encoded : String := "135D4505000000020CFD9BF90F350D020CFD9BFD0F350D0604548A0913867108000000040C9A87020F8750F90C9A87060F8750FD078000F6128A7D01028000FA13D7ED05022A458913E1C508000000040B4D44020000000A10804CF9000000010000000A0000000A000000020000000A00000000128A410100000000028000FA13D7ED05022A458913E1C508000000040B4D44020000000A10804CF9000000010000000A0000000A0000000200000005000000030F878CFD00000003078000F6128A7D01028000FA13D7ED05022A458913E1C508000000040B4D4402108010F9000000090000000110804CF900000001000000050000000900000002000000050000000000000005000000010F878CF9000000010C9A87060F8750FD078000F6128A7D01028000FA13D7ED05022A458913E1C508000000040DE7CA020E5FD8F9000000060000000100000006000000060000000200000005000000000000000500000003000000051386AD080C9A87020F8750F90C9A87060F8750FD078000F6128A7D0100000006000000000000000A000000030F878CFD00000003078000F600000009128A41010000000000000005000000010F878CF9000000010C9A8706000000060F878CFD000000030000000500000004000000030F34D1060000000304548A0913867108000000040000000500000005000000010F34D102000000010CFD9BFD0F350D0604548A09138671080000000400000005000000050000000300000005"
theorem small_4202410_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4202410_right_root small_4202410_right_fuel small_4202410_right_count small_4202410_right_encoded = true := by
  decide +kernel
theorem small_4202410_right_covered : CoveredBy scale carrier boxes small_4202410_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4202410_right_root small_4202410_right_fuel small_4202410_right_count small_4202410_right_encoded small_4202410_right_checked

theorem cover_4202410 : CoveredBy scale carrier boxes root_4202410 := by
  apply coveredBy_split_literal root_4202410 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0306.root_4202411 small_4202410_right_root coord2 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0306.cover_4202411
  · exact small_4202410_right_covered
#print axioms cover_4202410

def root_4202405 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4202405_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4202405_right_fuel : Nat := 1
def small_4202405_right_count : Nat := 1
def small_4202405_right_encoded : String := "00000000"
theorem small_4202405_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4202405_right_root small_4202405_right_fuel small_4202405_right_count small_4202405_right_encoded = true := by
  decide +kernel
theorem small_4202405_right_covered : CoveredBy scale carrier boxes small_4202405_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4202405_right_root small_4202405_right_fuel small_4202405_right_count small_4202405_right_encoded small_4202405_right_checked

theorem cover_4202405 : CoveredBy scale carrier boxes root_4202405 := by
  apply coveredBy_split_literal root_4202405 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0306.root_4202410 small_4202405_right_root coord0 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0306.cover_4202410
  · exact small_4202405_right_covered
#print axioms cover_4202405

def root_4202404 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4202404_right_root : ZRayBox := fun j => (#[⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4202404_right_fuel : Nat := 24
def small_4202404_right_count : Nat := 181
def small_4202404_right_encoded : String := "135D450100000000050000FA135D81050CFD9BF90F350D020CFD9BFD0F350D0604548A0913867108000000040C9A87020F8750F90C9A87060F8750FD028000F613D7ED01078000FA128A7D05022A458913E1C508000000040B4D44020000000A10804CF9000000010000000A0000000A00000002128A410500000002022A458913E1C508000000040B4D44020000000A10804CF9000000010000000A0000000A0000000013D7B10100000000078000FA128A7D050000000A0000000200000005000000030F878CFD00000003028000F613D7ED01078000FA128A7D05022A458913E1C508000000040B4D44020000000810804CF900000001000000050000000800000002000000050000000000000005000000010F878CF9000000010C9A87060F8750FD028000F613D7ED01078000FA128A7D05022A458913E1C508000000040DE7CA020E5FD8F90B4D44060000000710804CFD0000000300000005000000010E6014F90000000100000005000000070000000200000005000000000000000500000003000000051386AD080C9A87020F8750F90C9A87060F8750FD028000F613D7ED01078000FA000000070000000A00000000000000080000000300000008000000010F878CF9000000010C9A87060F8750FD028000F613D7ED01078000FA00000007128A410500000002000000050000000000000008000000030000000800000004000000030F34D1060000000304548A0913867108000000040000000500000005000000010F34D102000000010CFD9BFD0F350D0604548A0913867108000000040000000500000005000000030000000500000002135D4505000000020CFD9BF90F350D020CFD9BFD0F350D0604548A091386710800000004000000051386AD080C9A87020F8750F90C9A87060F8750FD028000F60000000A000000050000000300000005000000010000000500000004000000030F34D1060000000300000005000000010F34D1020000000100000005"
theorem small_4202404_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4202404_right_root small_4202404_right_fuel small_4202404_right_count small_4202404_right_encoded = true := by
  decide +kernel
theorem small_4202404_right_covered : CoveredBy scale carrier boxes small_4202404_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4202404_right_root small_4202404_right_fuel small_4202404_right_count small_4202404_right_encoded small_4202404_right_checked

theorem cover_4202404 : CoveredBy scale carrier boxes root_4202404 := by
  apply coveredBy_split_literal root_4202404 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0306.root_4202405 small_4202404_right_root coord0 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0306.cover_4202405
  · exact small_4202404_right_covered
#print axioms cover_4202404

def root_4202398 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4202398_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4202398_left_fuel : Nat := 1
def small_4202398_left_count : Nat := 1
def small_4202398_left_encoded : String := "00000004"
theorem small_4202398_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4202398_left_root small_4202398_left_fuel small_4202398_left_count small_4202398_left_encoded = true := by
  decide +kernel
theorem small_4202398_left_covered : CoveredBy scale carrier boxes small_4202398_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4202398_left_root small_4202398_left_fuel small_4202398_left_count small_4202398_left_encoded small_4202398_left_checked

theorem cover_4202398 : CoveredBy scale carrier boxes root_4202398 := by
  apply coveredBy_split_literal root_4202398 small_4202398_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0306.root_4202404 coord4 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_4202398_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0306.cover_4202404
#print axioms cover_4202398

def root_4202397 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4202397_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4202397_right_fuel : Nat := 18
def small_4202397_right_count : Nat := 169
def small_4202397_right_encoded : String := "12073D08050000F6135D8101050000FA135D81050CFD9BF90F350D020CFD9BFD0F350D060CFD9C090F34D108000000040C9A87020F8750F90C9A87060F8750FD078000F6000000090000000A000000030F878CFD00000003078000F60000000900000008000000010F878CF9000000010C9A87060F8750FD078000F600000006128A41010000000000000007000000030F878CFD00000003078000F6128A7D010000000600000000000000080F350D080C9A8702000000080000000600000004000000030F34D106000000030CFD9C090F34D108000000040000000800000008000000010F34D102000000010CFD9BFD0F350D060CFD9C090F34D108000000040000000600000006000000030F34D106000000030CFD9C09000000060000000600000002135D4505000000020CFD9BF90F350D020CFD9BFD0F350D060CFD9C090F34D108000000040C9A87020F8750F900000006000000010000000600000006000000030F34D106000000030CFD9C090F34D108000000040C9A87020F8750F900000009000000010000000500000008000000010F34D102000000010000000600000000135D450100000000050000FA135D81050CFD9BF90F350D020CFD9BFD0F350D060CFD9C090F34D108000000040C9A8702000000080000000800000008000000030F34D1060000000300000008000000010F34D102000000010CFD9BFD0F350D060CFD9C090F34D108000000040C9A87060F8750FD00000007000000030000000500000006000000030F34D106000000030000000500000002135D4505000000020CFD9BF90F350D020CFD9BFD0F350D060CFD9C090F34D108000000040C9A87020F8750F90C9A87060000000600000005000000010000000500000006000000030F34D1060000000300000008000000010F34D102000000010000000600000004"
theorem small_4202397_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4202397_right_root small_4202397_right_fuel small_4202397_right_count small_4202397_right_encoded = true := by
  decide +kernel
theorem small_4202397_right_covered : CoveredBy scale carrier boxes small_4202397_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4202397_right_root small_4202397_right_fuel small_4202397_right_count small_4202397_right_encoded small_4202397_right_checked

theorem cover_4202397 : CoveredBy scale carrier boxes root_4202397 := by
  apply coveredBy_split_literal root_4202397 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0306.root_4202398 small_4202397_right_root coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0306.cover_4202398
  · exact small_4202397_right_covered
#print axioms cover_4202397

def root_4202392 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4202392_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4202392_right_fuel : Nat := 1
def small_4202392_right_count : Nat := 1
def small_4202392_right_encoded : String := "00000003"
theorem small_4202392_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4202392_right_root small_4202392_right_fuel small_4202392_right_count small_4202392_right_encoded = true := by
  decide +kernel
theorem small_4202392_right_covered : CoveredBy scale carrier boxes small_4202392_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4202392_right_root small_4202392_right_fuel small_4202392_right_count small_4202392_right_encoded small_4202392_right_checked

theorem cover_4202392 : CoveredBy scale carrier boxes root_4202392 := by
  apply coveredBy_split_literal root_4202392 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0306.root_4202397 small_4202392_right_root coord3 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0306.cover_4202397
  · exact small_4202392_right_covered
#print axioms cover_4202392

def root_4202391 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4202391_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4202391_right_fuel : Nat := 20
def small_4202391_right_count : Nat := 75
def small_4202391_right_encoded : String := "120701060000000308A913091207010800000004050000F6135D8101050000FA135D81050CFD9BF90F350D02045489FD1386AD0604548A0913867108000000040C9A87020F8750F9078000F6128A7D01078000FA128A7D05000000080000000200000005000000000000000500000001000000051386AD080C9A870200000008000000050000000400000003138671060000000300000005000000010F34D10200000001000000050000000200000005000000000000000512073D08050000F6135D8101050000FA135D81050CFD9BF90F350D0200000008000000010000000800000002135D4505000000020CFD9BF90F350D02045489FD1386AD060CFD9C090F34D10800000004000000050000000500000003000000050000000100000005000000000000000800000004"
theorem small_4202391_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4202391_right_root small_4202391_right_fuel small_4202391_right_count small_4202391_right_encoded = true := by
  decide +kernel
theorem small_4202391_right_covered : CoveredBy scale carrier boxes small_4202391_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4202391_right_root small_4202391_right_fuel small_4202391_right_count small_4202391_right_encoded small_4202391_right_checked

theorem cover_4202391 : CoveredBy scale carrier boxes root_4202391 := by
  apply coveredBy_split_literal root_4202391 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0306.root_4202392 small_4202391_right_root coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0306.cover_4202392
  · exact small_4202391_right_covered
#print axioms cover_4202391

def root_4202386 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4202386_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4202386_right_fuel : Nat := 1
def small_4202386_right_count : Nat := 1
def small_4202386_right_encoded : String := "00000001"
theorem small_4202386_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4202386_right_root small_4202386_right_fuel small_4202386_right_count small_4202386_right_encoded = true := by
  decide +kernel
theorem small_4202386_right_covered : CoveredBy scale carrier boxes small_4202386_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4202386_right_root small_4202386_right_fuel small_4202386_right_count small_4202386_right_encoded small_4202386_right_checked

theorem cover_4202386 : CoveredBy scale carrier boxes root_4202386 := by
  apply coveredBy_split_literal root_4202386 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0306.root_4202391 small_4202386_right_root coord1 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0306.cover_4202391
  · exact small_4202386_right_covered
#print axioms cover_4202386

def root_4202385 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4202385_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4202385_right_fuel : Nat := 22
def small_4202385_right_count : Nat := 83
def small_4202385_right_encoded : String := "120701020000000108A912FD12073D0608A913091207010800000004050000F6135D8101050000FA135D8105045489F91386AD020CFD9BFD0F350D0604548A0913867108000000040C9A87060F8750FD078000F6128A7D01078000FA128A7D05000000060000000200000005000000000000000500000003000000051386AD080C9A8706000000060000000500000004000000030F34D1060000000300000005000000011386710200000001000000050000000200000005000000000000000512073D08050000F6135D8101050000FA135D8105045489F90000000600000006000000020000000600000000135D450100000000050000FA135D8105045489F91386AD020CFD9BFD0F350D060CFD9C090F34D1080000000400000005000000050000000300000005000000010000000500000002000000050000000400000003120701060000000300000005"
theorem small_4202385_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4202385_right_root small_4202385_right_fuel small_4202385_right_count small_4202385_right_encoded = true := by
  decide +kernel
theorem small_4202385_right_covered : CoveredBy scale carrier boxes small_4202385_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4202385_right_root small_4202385_right_fuel small_4202385_right_count small_4202385_right_encoded small_4202385_right_checked

theorem cover_4202385 : CoveredBy scale carrier boxes root_4202385 := by
  apply coveredBy_split_literal root_4202385 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0306.root_4202386 small_4202385_right_root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0306.cover_4202386
  · exact small_4202385_right_covered
#print axioms cover_4202385

def root_4202380 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4202380_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4202380_right_fuel : Nat := 1
def small_4202380_right_count : Nat := 1
def small_4202380_right_encoded : String := "00000004"
theorem small_4202380_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4202380_right_root small_4202380_right_fuel small_4202380_right_count small_4202380_right_encoded = true := by
  decide +kernel
theorem small_4202380_right_covered : CoveredBy scale carrier boxes small_4202380_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4202380_right_root small_4202380_right_fuel small_4202380_right_count small_4202380_right_encoded small_4202380_right_checked

theorem cover_4202380 : CoveredBy scale carrier boxes root_4202380 := by
  apply coveredBy_split_literal root_4202380 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0306.root_4202385 small_4202380_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0306.cover_4202385
  · exact small_4202380_right_covered
#print axioms cover_4202380

def root_4202334 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4202334_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4202334_left_fuel : Nat := 9
def small_4202334_left_count : Nat := 21
def small_4202334_left_encoded : String := "1151E9090000000408A912F912073D0208A912FD12073D06050000F6135D8101050000FA000000060000000600000000000000080000000312070106000000030000000800000001120701020000000100000006"
theorem small_4202334_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4202334_left_root small_4202334_left_fuel small_4202334_left_count small_4202334_left_encoded = true := by
  decide +kernel
theorem small_4202334_left_covered : CoveredBy scale carrier boxes small_4202334_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4202334_left_root small_4202334_left_fuel small_4202334_left_count small_4202334_left_encoded small_4202334_left_checked

theorem cover_4202334 : CoveredBy scale carrier boxes root_4202334 := by
  apply coveredBy_split_literal root_4202334 small_4202334_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0306.root_4202380 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_4202334_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0306.cover_4202380
#print axioms cover_4202334

def root_4202328 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4202328_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4202328_left_fuel : Nat := 1
def small_4202328_left_count : Nat := 1
def small_4202328_left_encoded : String := "00000003"
theorem small_4202328_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4202328_left_root small_4202328_left_fuel small_4202328_left_count small_4202328_left_encoded = true := by
  decide +kernel
theorem small_4202328_left_covered : CoveredBy scale carrier boxes small_4202328_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4202328_left_root small_4202328_left_fuel small_4202328_left_count small_4202328_left_encoded small_4202328_left_checked

theorem cover_4202328 : CoveredBy scale carrier boxes root_4202328 := by
  apply coveredBy_split_literal root_4202328 small_4202328_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0306.root_4202334 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_4202328_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0306.cover_4202334
#print axioms cover_4202328

def root_4200832 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4200832 : CoveredBy scale carrier boxes root_4200832 := by
  apply coveredBy_split_literal root_4200832 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1572.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0306.root_4202328 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1572.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0306.cover_4202328
#print axioms cover_4200832

def root_4200826 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4200826_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4200826_left_fuel : Nat := 1
def small_4200826_left_count : Nat := 1
def small_4200826_left_encoded : String := "00000002"
theorem small_4200826_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4200826_left_root small_4200826_left_fuel small_4200826_left_count small_4200826_left_encoded = true := by
  decide +kernel
theorem small_4200826_left_covered : CoveredBy scale carrier boxes small_4200826_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4200826_left_root small_4200826_left_fuel small_4200826_left_count small_4200826_left_encoded small_4200826_left_checked

theorem cover_4200826 : CoveredBy scale carrier boxes root_4200826 := by
  apply coveredBy_split_literal root_4200826 small_4200826_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0306.root_4200832 coord2 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_4200826_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0306.cover_4200832
#print axioms cover_4200826

def root_4195124 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4195124 : CoveredBy scale carrier boxes root_4195124 := by
  apply coveredBy_split_literal root_4195124 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0304.root_4195125 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0306.root_4200826 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0304.cover_4195125
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0306.cover_4200826
#print axioms cover_4195124

def root_4195118 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4195118_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4195118_left_fuel : Nat := 1
def small_4195118_left_count : Nat := 1
def small_4195118_left_encoded : String := "00000001"
theorem small_4195118_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4195118_left_root small_4195118_left_fuel small_4195118_left_count small_4195118_left_encoded = true := by
  decide +kernel
theorem small_4195118_left_covered : CoveredBy scale carrier boxes small_4195118_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4195118_left_root small_4195118_left_fuel small_4195118_left_count small_4195118_left_encoded small_4195118_left_checked

theorem cover_4195118 : CoveredBy scale carrier boxes root_4195118 := by
  apply coveredBy_split_literal root_4195118 small_4195118_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0306.root_4195124 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_4195118_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0306.cover_4195124
#print axioms cover_4195118

def root_4192836 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4192836 : CoveredBy scale carrier boxes root_4192836 := by
  apply coveredBy_split_literal root_4192836 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1569.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0306.root_4195118 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1569.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0306.cover_4195118
#print axioms cover_4192836

def root_4192830 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4192830_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4192830_left_fuel : Nat := 1
def small_4192830_left_count : Nat := 1
def small_4192830_left_encoded : String := "00000000"
theorem small_4192830_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4192830_left_root small_4192830_left_fuel small_4192830_left_count small_4192830_left_encoded = true := by
  decide +kernel
theorem small_4192830_left_covered : CoveredBy scale carrier boxes small_4192830_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4192830_left_root small_4192830_left_fuel small_4192830_left_count small_4192830_left_encoded small_4192830_left_checked

theorem cover_4192830 : CoveredBy scale carrier boxes root_4192830 := by
  apply coveredBy_split_literal root_4192830 small_4192830_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0306.root_4192836 coord0 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_4192830_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0306.cover_4192836
#print axioms cover_4192830

def root_4165968 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4165968 : CoveredBy scale carrier boxes root_4165968 := by
  apply coveredBy_split_literal root_4165968 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0304.root_4165969 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0306.root_4192830 coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0304.cover_4165969
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0306.cover_4192830
#print axioms cover_4165968

def root_4117604 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4117604 : CoveredBy scale carrier boxes root_4117604 := by
  apply coveredBy_split_literal root_4117604 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0301.root_4117605 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0306.root_4165968 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0301.cover_4117605
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0306.cover_4165968
#print axioms cover_4117604

def root_4066156 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4066156 : CoveredBy scale carrier boxes root_4066156 := by
  apply coveredBy_split_literal root_4066156 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0296.root_4066157 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0306.root_4117604 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0296.cover_4066157
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0306.cover_4117604
#print axioms cover_4066156

def root_4210558 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4210558_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4210558_right_fuel : Nat := 26
def small_4210558_right_count : Nat := 387
def small_4210558_right_encoded : String := "1151E901000000000A0001021151E8F90A0000FA115225050A0001061151E907000000030A0000FE1152250908A91305120700FA08A913090000000612073CFE00000004050000F6135D810105000102000000060000000600000000000000060000000200000006000000041151E9090000000408A913050000000A12073CFA00000002050000F6135D81010500010200000006000000060000000000000006115225070A0000FE1152250908A91305120700FA08A913070000000512073D0608A913090000000512073CFE00000004050000F6135D81010000000500000000135D4501000000000500010200000005135D80F90000000104548A050000000500000006000000030000000212073CFA0000000208A91307120701060000000308A91309000000050000000912073D0608A91309120700FE000000060000000412073CFE00000004050000F6000000090000000600000003000000041151E9090000000408A91305120700FA08A9130712070106000000030000000912073D06050000F600000009135D4501000000000500010200000009135D80F900000001050000FE000000090000000800000003000000020000000900000003000000021151E905000000020A0001061151E9070000000300000006115225070A0000FE1152250908A9130712070106000000030000000600000006000000041151E90900000004000000090000000300000001115224F9000000010A0000FA115225050A0001061151E907000000030A0000FE1152250908A912F912073D0208A91305120700FA00000006000000020000000600000001120701020000000108A913050000000600000006000000041151E9090000000408A912F912073D0208A91305120700FA050000F6135D81010500010600000006000000080000000000000006000000020000000600000001120701020000000108A913050000000600000005115225070A0000FE1152250908A912F912073D0208A91305120700FA08A91307120701060000000308A913090000000512073CFE00000004050000F6135D81010CFD9BF9000000050000000600000000135D4501000000000CFD9BF90F350D0204548A050000000500000006000000010000000612073D0608A91309120700FE000000060000000412073CFE00000004050000F6135D81010CFD9BF90F350D0204548A05138670FA0CFD9C07000000050F350D0600000005000000030000000200000006000000010000000600000000135D4501000000000CFD9BF90F350D02000000060000000100000006000000030000000212073CFA0000000208A91307120701060000000308A91309120700FE00000006000000040000000612073D0608A9130900000006000000060000000300000001120701020000000108A91305120700FA000000060000000212073CFA0000000208A9130712070106000000030000000600000006000000041151E9090000000408A912F912073D0208A91305120700FA08A913070000000812073D06050000F6135D81010000000800000000135D450100000000050000FE135D81090CFD9BF90F350D0204548A05000000070000000600000001000000060000000400000008000000030000000212073CFA0000000208A913070000000812073D06050000F6135D8101050000FE135D81090CFD9BF90000000800000006000000040000000800000000135D450100000000050000FE00000006000000080000000300000001120701020000000108A91305120700FA00000008000000020000000600000003000000021151E905000000020A0001061151E907000000030A0000FE1152250908A912F912073D0208A913090000000612073CFE00000004050000F6135D8101050000FA00000006135D45050000000200000006000000000000000600000001120701020000000108A91309120700FE050000F600000006135D450100000000000000060000000400000005000000041151E9090000000400000005115225070A0000FE1152250908A912F900000006120701020000000108A9130712070106000000030000000600000006000000041151E9090000000408A912F912073D0208A913070000000600000006000000010000000600000003"
theorem small_4210558_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4210558_right_root small_4210558_right_fuel small_4210558_right_count small_4210558_right_encoded = true := by
  decide +kernel
theorem small_4210558_right_covered : CoveredBy scale carrier boxes small_4210558_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4210558_right_root small_4210558_right_fuel small_4210558_right_count small_4210558_right_encoded small_4210558_right_checked

theorem cover_4210558 : CoveredBy scale carrier boxes root_4210558 := by
  apply coveredBy_split_literal root_4210558 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1575.root small_4210558_right_root coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1575.covered
  · exact small_4210558_right_covered
#print axioms cover_4210558

def root_4209360 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4209360 : CoveredBy scale carrier boxes root_4209360 := by
  apply coveredBy_split_literal root_4209360 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1574.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0306.root_4210558 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1574.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0306.cover_4210558
#print axioms cover_4209360

def root_4215013 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4215013_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4215013_left_fuel : Nat := 22
def small_4215013_left_count : Nat := 159
def small_4215013_left_encoded : String := "120701060000000308A912FF12073D080500010200000005135D80F9000000010CFD9C010F34D0F600000005000000000F350CF6000000000CFD9C050F34D0FA00000005000000020000000A00000004120701080000000405000102135D44F90CFD9C010F34D0F600000005000000000F350CF6000000000CFD9C050F34D0FA00000005000000020F350CFA0000000204548A071386710600000003045489FF000000051386710800000004000000061386AD06045489FF0000000513867108000000040C9A86F6000000050F87510100000000000000060000000300000001135D80F9000000010CFD9C010F34D0F60CFD9C05000000050F350CFA0000000204548A070000000500000007000000000F350CF6000000000CFD9C050F34D0FA04548A07000000051386AD06045489FF0000000513867108000000040C9A86F6000000050F875101000000000000000600000003000000020F350CFA0000000204548A071386710600000003045489FF1386AD08000000070000000413867108000000040C9A86F60F878D010C9A86FA0F878D05000000050000000200000007000000000F875101000000000C9A86FA000000060F87510500000002000000071386AD06045489FF1386AD080C9A86F6000000070F875101000000000C9A86FA0000000A000000070000000413867108000000040C9A86F60F878D010C9A86FA0F878D0507800102000000050000000A0000000200000007000000000F875101000000000C9A86FA0F878D050780010200000006128A7CF900000001067ECE8712EA590600000003000000060000000A000000020F875105000000020780010200000007128A7CF900000001067ECE87000000070000000700000003"
theorem small_4215013_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4215013_left_root small_4215013_left_fuel small_4215013_left_count small_4215013_left_encoded = true := by
  decide +kernel
theorem small_4215013_left_covered : CoveredBy scale carrier boxes small_4215013_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4215013_left_root small_4215013_left_fuel small_4215013_left_count small_4215013_left_encoded small_4215013_left_checked

theorem cover_4215013 : CoveredBy scale carrier boxes root_4215013 := by
  apply coveredBy_split_literal root_4215013 small_4215013_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1576.root coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_4215013_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1576.covered
#print axioms cover_4215013

def root_4215007 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4215007_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4215007_left_fuel : Nat := 1
def small_4215007_left_count : Nat := 1
def small_4215007_left_encoded : String := "00000002"
theorem small_4215007_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4215007_left_root small_4215007_left_fuel small_4215007_left_count small_4215007_left_encoded = true := by
  decide +kernel
theorem small_4215007_left_covered : CoveredBy scale carrier boxes small_4215007_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4215007_left_root small_4215007_left_fuel small_4215007_left_count small_4215007_left_encoded small_4215007_left_checked

theorem cover_4215007 : CoveredBy scale carrier boxes root_4215007 := by
  apply coveredBy_split_literal root_4215007 small_4215007_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0306.root_4215013 coord2 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_4215007_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0306.cover_4215013
#print axioms cover_4215007

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0306
