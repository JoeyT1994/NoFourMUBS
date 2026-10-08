import TaoBundleAssembly0457
import TaoBundleAssembly0458
import TaoBundleChunkBatch0625
import TaoBundleChunkBatch0626
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0459
def root_6645937 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6645937_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (10572672)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6645937_left_fuel : Nat := 19
def small_6645937_left_count : Nat := 91
def small_6645937_left_encoded : String := "0F875109000000040280010013D7B0F7078000FA128A7D05078000FC128A7D07022A45790000000913E1C502000000010B4D44080000000610804D090140010013F5D8F708C000FA00000009000000060000000013F614F70000000008C000FA000000090000000600000004000000030000000900000002128A410500000002078000FC00000006128A410700000003022A457900000009000000070000000013D7ECF700000000078000FA128A7D05078000FC128A7D07022A45790000000A13E1C502000000010B4D440810801109000000040000000610804D0903C0010013A510F708C000FA11FC2505000000090000000211FBE90500000002000000060000000013A54CF70000000008C000FA11FC250508C000FC11FC25070115233900000009000000060000000300000009000000020000000A0000000400000003128A4107000000030000000900000002128A410500000002078000FC128A7D070000000A000000030000000A"
theorem small_6645937_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6645937_left_root small_6645937_left_fuel small_6645937_left_count small_6645937_left_encoded = true := by
  decide +kernel
theorem small_6645937_left_covered : CoveredBy scale carrier boxes small_6645937_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6645937_left_root small_6645937_left_fuel small_6645937_left_count small_6645937_left_encoded small_6645937_left_checked

theorem cover_6645937 : CoveredBy scale carrier boxes root_6645937 := by
  apply coveredBy_split_literal root_6645937 small_6645937_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0458.root_6646129 coord4 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_6645937_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0458.cover_6646129
#print axioms cover_6645937

def root_6645932 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6645932_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6645932_right_fuel : Nat := 1
def small_6645932_right_count : Nat := 1
def small_6645932_right_encoded : String := "00000004"
theorem small_6645932_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6645932_right_root small_6645932_right_fuel small_6645932_right_count small_6645932_right_encoded = true := by
  decide +kernel
theorem small_6645932_right_covered : CoveredBy scale carrier boxes small_6645932_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6645932_right_root small_6645932_right_fuel small_6645932_right_count small_6645932_right_encoded small_6645932_right_checked

theorem cover_6645932 : CoveredBy scale carrier boxes root_6645932 := by
  apply coveredBy_split_literal root_6645932 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0459.root_6645937 small_6645932_right_root coord4 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0459.cover_6645937
  · exact small_6645932_right_covered
#print axioms cover_6645932

def root_6643412 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6643412 : CoveredBy scale carrier boxes root_6643412 := by
  apply coveredBy_split_literal root_6643412 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2500.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0459.root_6645932 coord4 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2500.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0459.cover_6645932
#print axioms cover_6643412

def root_6643406 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6643406_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6643406_left_fuel : Nat := 1
def small_6643406_left_count : Nat := 1
def small_6643406_left_encoded : String := "00000001"
theorem small_6643406_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6643406_left_root small_6643406_left_fuel small_6643406_left_count small_6643406_left_encoded = true := by
  decide +kernel
theorem small_6643406_left_covered : CoveredBy scale carrier boxes small_6643406_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6643406_left_root small_6643406_left_fuel small_6643406_left_count small_6643406_left_encoded small_6643406_left_checked

theorem cover_6643406 : CoveredBy scale carrier boxes root_6643406 := by
  apply coveredBy_split_literal root_6643406 small_6643406_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0459.root_6643412 coord1 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_6643406_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0459.cover_6643412
#print axioms cover_6643406

def root_6642724 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6642724_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6642724_left_fuel : Nat := 21
def small_6642724_left_count : Nat := 325
def small_6642724_left_encoded : String := "1386AD020CFD9C090F34D108000000040280010013D7B0F7078000FA128A7D05078000FC128A7D07067ECE790000000612EA5902000000010AD357890000000610D13D080140010013F5D8F708C000FA0000000511FBE90500000002000000080000000013F614F70000000008C000FA0000000611FBE9050000000208C000FC000000080000000600000004000000030000000600000002128A410500000002078000FC128A7D07067ECE790000000812EA5902000000010AD357890000000810D13D08014001000000000813F614F700000000064000FA12FFAD0508C000FC0000000811FBE907000000030569AC3900000006000000080000000212FF710500000002000000080000000400000003128A410700000003067ECE7912EA95020AD357890000000610D13D08014001000000000900000009000000040000000112EA5902000000010AD3578910D10108000000040000000610D13D080140010013F5D8F7064000FA12FFAD05064000FC12FFAD070569AC39000000060000000600000003000000060000000212FF710500000002064000FC12FFAD07000000080000000312FF710700000003000000090000000013F614F700000000064000FA12FFAD05064000FC12FFAD070000000600000003000000060000000212FF710500000002064000FC12FFAD070000000A000000030000000A000000040000000013D7ECF700000000078000FA128A7D05078000FC128A7D07067ECE790000000612EA5902000000010AD357890000000610D13D0803C0010013A510F708C000FA0000000611FBE9050000000200000006000000000000000600000004000000030000000600000002128A410500000002078000FC128A7D07067ECE7912EA95020AD35789000000060000000A0000000112EA5902000000010AD3578910D101080000000403C001000000000813A54CF7000000000000000610D13D0803C0010013A510F7064000FA12FFAD0508C000FC11FC250700000008000000030000000A000000020000000A000000000000000A0000000400000003128A410700000003067ECE7912EA9502000000060000000112EA5902000000010AD357890000000610D13D0803C0010013A510F7064000FA000000060000000A000000000000000A000000040F350D080C9A87080F875109000000040280010013D7B0F7078000FA000000090000000A000000000000000A0F878D090280010013D7B0F7078000FA128A7D05078000FC128A7D07067ECE790000000912EA5902000000010DE7CA080E5FD90900000004000000090E6015090140010013F5D8F708C000FA0000000511FBE90500000002000000090000000013F614F70000000008C000FA0000000911FBE905000000020000000900000004000000030000000900000002128A410500000002078000FC128A7D07067ECE790000000A12EA5902000000010DE7CA080000000A0E6015090140010013F5D8F7064000FA12FFAD0508C000FC0000000800000009000000020000000A000000000000000A0000000400000003128A410700000003067ECE790000000912EA590200000001000000090000000013D7ECF700000000078000FA128A7D05078000FC128A7D07067ECE790000000A12EA5902000000010DE7CA080000000A0E60150903C0010013A510F708C000FA0000000911FBE905000000020000000A0000000013A54CF70000000008C000FA000000090000000A00000004000000030000000900000002128A410500000002078000FC0000000A0000000A000000040000000400000001"
theorem small_6642724_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6642724_left_root small_6642724_left_fuel small_6642724_left_count small_6642724_left_encoded = true := by
  decide +kernel
theorem small_6642724_left_covered : CoveredBy scale carrier boxes small_6642724_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6642724_left_root small_6642724_left_fuel small_6642724_left_count small_6642724_left_encoded small_6642724_left_checked

theorem cover_6642724 : CoveredBy scale carrier boxes root_6642724 := by
  apply coveredBy_split_literal root_6642724 small_6642724_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0459.root_6643406 coord1 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact small_6642724_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0459.cover_6643406
#print axioms cover_6642724

def root_6642719 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6642719_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6642719_right_fuel : Nat := 1
def small_6642719_right_count : Nat := 1
def small_6642719_right_encoded : String := "00000003"
theorem small_6642719_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6642719_right_root small_6642719_right_fuel small_6642719_right_count small_6642719_right_encoded = true := by
  decide +kernel
theorem small_6642719_right_covered : CoveredBy scale carrier boxes small_6642719_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6642719_right_root small_6642719_right_fuel small_6642719_right_count small_6642719_right_encoded small_6642719_right_checked

theorem cover_6642719 : CoveredBy scale carrier boxes root_6642719 := by
  apply coveredBy_split_literal root_6642719 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0459.root_6642724 small_6642719_right_root coord3 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0459.cover_6642724
  · exact small_6642719_right_covered
#print axioms cover_6642719

def root_6642718 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6642718_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6642718_right_fuel : Nat := 17
def small_6642718_right_count : Nat := 129
def small_6642718_right_encoded : String := "135D450700000003045489F91386AD020CFD9C090F34D108000000040280010013D7B0F7078000FA00000006128A410500000002028000FC13D7ED07067ECE790000000612EA5902000000010AD357890000000610D13D08000000090000000400000003000000060000000013D7ECF700000000078000FA00000006128A410500000002028000FC13D7ED07067ECE79000000060000000600000003000000050F350D080C9A8708000000090F878D0902800100000000090000000900000004000000040000000113867102000000010CFD9C090F34D108000000040280010013D7B0F7078000FA128A7D05028000FC13D7ED0700000006000000030000000600000002128A410500000002028000FC13D7ED07022A457913E201020AD357890000000610D13D080000000700000004000000010000000700000003000000050000000013D7ECF700000000078000FA128A7D050000000600000002000000050F350D080C9A87080F875109000000040280010000000009000000090F878D090280010013D7B0F7078000FA128A7D05028000FC13D7ED07022A45790000000900000007000000030000000700000002000000070000000013D7ECF700000000078000FA128A7D05028000FC13D7ED07022A45790000000913E1C502000000010DE7CA080000000900000005000000030000000500000002000000050000000400000004"
theorem small_6642718_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6642718_right_root small_6642718_right_fuel small_6642718_right_count small_6642718_right_encoded = true := by
  decide +kernel
theorem small_6642718_right_covered : CoveredBy scale carrier boxes small_6642718_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6642718_right_root small_6642718_right_fuel small_6642718_right_count small_6642718_right_encoded small_6642718_right_checked

theorem cover_6642718 : CoveredBy scale carrier boxes root_6642718 := by
  apply coveredBy_split_literal root_6642718 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0459.root_6642719 small_6642718_right_root coord3 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0459.cover_6642719
  · exact small_6642718_right_covered
#print axioms cover_6642718

def root_6642713 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6642713_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6642713_right_fuel : Nat := 1
def small_6642713_right_count : Nat := 1
def small_6642713_right_encoded : String := "00000002"
theorem small_6642713_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6642713_right_root small_6642713_right_fuel small_6642713_right_count small_6642713_right_encoded = true := by
  decide +kernel
theorem small_6642713_right_covered : CoveredBy scale carrier boxes small_6642713_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6642713_right_root small_6642713_right_fuel small_6642713_right_count small_6642713_right_encoded small_6642713_right_checked

theorem cover_6642713 : CoveredBy scale carrier boxes root_6642713 := by
  apply coveredBy_split_literal root_6642713 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0459.root_6642718 small_6642713_right_root coord2 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0459.cover_6642718
  · exact small_6642713_right_covered
#print axioms cover_6642713

def root_6642712 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6642712_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-16243968)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6642712_right_fuel : Nat := 23
def small_6642712_right_count : Nat := 259
def small_6642712_right_encoded : String := "135D450500000002050000FC135D8107045489F91386AD020CFD9C090F34D108000000040280010013D7B0F7028000FA13D7ED05078000FC128A7D07067ECE790000000812EA5902000000010000000800000003128A410700000003067ECE7912EA95020AD3578910D1010800000004000000080000000A0000000112EA5902000000010AD3578910D10108000000040000000810D13D080140010013F5D8F703C000FA13A54D05064000FC00000008000000070000000200000007000000000000000A000000040000000213D7B10500000002078000FC128A7D070000000800000003128A410700000003067ECE790000000A12EA5902000000010000000A0000000013D7ECF700000000028000FA13D7ED05078000FC128A7D07067ECE790000000A12EA5902000000010000000A00000003128A410700000003067ECE790000000A12EA5902000000010AD3578910D10108000000040000000500000005000000020000000A0F350D080000000A000000040000000113867102000000010CFD9C090F34D108000000040280010013D7B0F7028000FA13D7ED05078000FC128A7D07022A45790000000813E1C502000000010AD357890000000710D13D08000000070000000400000003128A410700000003022A457913E201020AD3578910D10108000000040000000510D13D08000000070000000400000001000000070000000213D7B10500000002078000FC128A7D07022A4579000000080000000700000003000000050000000013D7ECF700000000028000FA13D7ED05078000FC128A7D07022A457913E201020AD3578910D10108000000040000000810D13D0803C0010013A510F703C000FA13A54D050000000A00000002000000050000000000000005000000040000000113E1C502000000010AD3578910D10108000000040000000500000005000000030000000500000002000000050F350D080C9A87080F87510900000004000000060F878D090280010013D7B0F7028000FA13D7ED05078000FC128A7D07022A45790000000A00000006000000030000000700000002000000070000000013D7ECF700000000028000FA13D7ED05078000FC128A7D07022A45790000000A0000000600000003000000050000000200000005000000040000000400000003135D450700000003045489F91386AD020CFD9C090F34D108000000040280010013D7B0F7028000FA13D7ED05028000FC13D7ED07067ECE7912EA95020AD3578910D101080000000400000006000000090000000112EA5902000000010AD3578910D101080000000400000005000000050000000300000005000000020000000500000000000000050F350D080000000A000000040000000113867102000000010CFD9C090F34D10800000004000000050F350D080C9A8708000000070000000500000004"
theorem small_6642712_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6642712_right_root small_6642712_right_fuel small_6642712_right_count small_6642712_right_encoded = true := by
  decide +kernel
theorem small_6642712_right_covered : CoveredBy scale carrier boxes small_6642712_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6642712_right_root small_6642712_right_fuel small_6642712_right_count small_6642712_right_encoded small_6642712_right_checked

theorem cover_6642712 : CoveredBy scale carrier boxes root_6642712 := by
  apply coveredBy_split_literal root_6642712 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0459.root_6642713 small_6642712_right_root coord2 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0459.cover_6642713
  · exact small_6642712_right_covered
#print axioms cover_6642712

def root_6642707 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6642707_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(-16243968), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6642707_right_fuel : Nat := 1
def small_6642707_right_count : Nat := 1
def small_6642707_right_encoded : String := "00000000"
theorem small_6642707_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6642707_right_root small_6642707_right_fuel small_6642707_right_count small_6642707_right_encoded = true := by
  decide +kernel
theorem small_6642707_right_covered : CoveredBy scale carrier boxes small_6642707_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6642707_right_root small_6642707_right_fuel small_6642707_right_count small_6642707_right_encoded small_6642707_right_checked

theorem cover_6642707 : CoveredBy scale carrier boxes root_6642707 := by
  apply coveredBy_split_literal root_6642707 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0459.root_6642712 small_6642707_right_root coord0 true (-16243968)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0459.cover_6642712
  · exact small_6642707_right_covered
#print axioms cover_6642707

def root_6642706 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6642706 : CoveredBy scale carrier boxes root_6642706 := by
  apply coveredBy_split_literal root_6642706 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0459.root_6642707 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2502.root coord0 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0459.cover_6642707
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2502.covered
#print axioms cover_6642706

def root_6642701 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6642701_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6642701_right_fuel : Nat := 1
def small_6642701_right_count : Nat := 1
def small_6642701_right_encoded : String := "00000004"
theorem small_6642701_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6642701_right_root small_6642701_right_fuel small_6642701_right_count small_6642701_right_encoded = true := by
  decide +kernel
theorem small_6642701_right_covered : CoveredBy scale carrier boxes small_6642701_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6642701_right_root small_6642701_right_fuel small_6642701_right_count small_6642701_right_encoded small_6642701_right_checked

theorem cover_6642701 : CoveredBy scale carrier boxes root_6642701 := by
  apply coveredBy_split_literal root_6642701 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0459.root_6642706 small_6642701_right_root coord4 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0459.cover_6642706
  · exact small_6642701_right_covered
#print axioms cover_6642701

def root_6642189 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6642189_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6642189_left_fuel : Nat := 21
def small_6642189_left_count : Nat := 243
def small_6642189_left_encoded : String := "120701080000000405000100135D44F7050000FA135D8105050000FC135D8107045489F91386AD0204548A09000000060000000600000001138671020000000104548A091386710800000004028001000000000613D7ECF700000000078000FA00000006000000061386AD080280010013D7B0F7078000FA128A7D050000000600000002128A410500000002000000080000000013D7ECF700000000078000FA128A7D050000000600000002128A410500000002078000FC128A7D0700000008000000030000000600000004000000030000000600000002135D450500000002050000FC135D8107045489F91386AD0204548A09000000081386AD08028001000000000813D7ECF700000000028000FA13D7ED05078000FC00000008000000060000000213D7B10500000002078000FC00000008000000050000000400000001138671020000000104548A09000000081386AD08028001000000000813D7ECF700000000028000FA13D7ED05078000FC000000080000000500000002000000050000000400000003135D450700000003045489F91386AD0204548A09000000061386AD080280010013D7B0F7028000FA00000006000000050000000000000005000000040000000113867102000000010000000500000000135D80F700000000050000FA135D8105050000FC135D8107045489F91386AD0204548A09000000061386AD080780010000000006128A7CF700000000000000060000000400000001138671020000000104548A09138671080000000407800100128A40F7078000FA00000006128A410500000002078000FC000000080000000500000000128A7CF700000000078000FA00000006000000051386AD0807800100128A40F7078000FA128A7D05078000FC128A7D0700000006000000030000000600000002128A410500000002078000FC128A7D07022A457913E20102067ECE8900000006000000060000000113E1C5020000000100000005000000030000000500000000128A7CF700000000078000FA128A7D05078000FC128A7D0700000006000000030000000500000002000000050000000400000003135D450700000003045489F90000000613867102000000010000000500000002135D450500000002050000FC135D8107045489F91386AD0204548A09138671080000000407800100128A40F70000000800000000000000051386AD0807800100128A40F7028000FA13D7ED05078000FC128A7D07067ECE790000000612EA5902000000010000000500000003000000050000000200000005000000000000000500000004000000011386710200000001000000050000000300000005"
theorem small_6642189_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6642189_left_root small_6642189_left_fuel small_6642189_left_count small_6642189_left_encoded = true := by
  decide +kernel
theorem small_6642189_left_covered : CoveredBy scale carrier boxes small_6642189_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6642189_left_root small_6642189_left_fuel small_6642189_left_count small_6642189_left_encoded small_6642189_left_checked

theorem cover_6642189 : CoveredBy scale carrier boxes root_6642189 := by
  apply coveredBy_split_literal root_6642189 small_6642189_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0459.root_6642701 coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_6642189_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0459.cover_6642701
#print axioms cover_6642189

def root_6642183 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6642183_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6642183_left_fuel : Nat := 1
def small_6642183_left_count : Nat := 1
def small_6642183_left_encoded : String := "00000001"
theorem small_6642183_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6642183_left_root small_6642183_left_fuel small_6642183_left_count small_6642183_left_encoded = true := by
  decide +kernel
theorem small_6642183_left_covered : CoveredBy scale carrier boxes small_6642183_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6642183_left_root small_6642183_left_fuel small_6642183_left_count small_6642183_left_encoded small_6642183_left_checked

theorem cover_6642183 : CoveredBy scale carrier boxes root_6642183 := by
  apply coveredBy_split_literal root_6642183 small_6642183_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0459.root_6642189 coord1 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_6642183_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0459.cover_6642189
#print axioms cover_6642183

def root_6641649 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6641649_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6641649_left_fuel : Nat := 22
def small_6641649_left_count : Nat := 249
def small_6641649_left_encoded : String := "12073D0208A91309120701080000000405000100135D44F7050000FA135D81050000000600000002135D450500000002050000FC135D81070CFD9BF90F350D0200000006000000010F34D1020000000104548A09000000061386AD08028001000000000813D7ECF700000000028000FA000000060000000A0000000400000003135D4507000000030CFD9BF9000000060000000600000000135D80F700000000050000FA00000006135D450500000002050000FC135D81070CFD9BF9000000060F34D1020000000104548A09000000060000000A000000030000000612073D0805000100135D44F7050000FA135D8105050000FC135D81070CFD9BF90F350D020CFD9C090F34D108000000040000000600000009000000010F34D102000000010CFD9C090F34D108000000040280010013D7B0F7078000FA00000006128A410500000002078000FC128A7D070AD357790000000610D10102000000010000000800000003000000060000000013D7ECF700000000078000FA00000006128A410500000002078000FC128A7D070000000A00000003000000060F350D080C9A8708000000090F878D090280010013D7B0F7000000090000000013D7ECF7000000000000000A000000040000000400000003135D4507000000030CFD9BF9000000090F34D102000000010CFD9C090F34D10800000004000000060000000900000002135D450500000002050000FC135D81070CFD9BF90F350D020CFD9C090F34D108000000040C9A87020F8750F900000006000000010000000A0F350D080000000900000004000000010F34D102000000010CFD9C090F34D108000000040280010013D7B0F7028000FA13D7ED05078000FC0000000A0000000A000000020000000A000000000000000A0F350D080000000A0000000400000003135D4507000000030CFD9BF90000000A0F34D102000000010000000A00000000135D80F700000000050000FA135D8105050000FC135D81070CFD9BF90F350D020CFD9C090F34D10800000004000000060F350D080C9A8702000000090000000900000004000000010F34D102000000010CFD9C090F34D1080000000407800100128A40F7078000FA000000060000000A00000000128A7CF700000000000000060F350D080000000A0000000400000003135D4507000000030CFD9BF90F350D020CFD9C090000000600000009000000010F34D102000000010CFD9C090F34D10800000004000000060000000A00000002135D450500000002050000FC135D81070CFD9BF90F350D020CFD9C090000000A0F350D080000000A00000004000000010F34D102000000010000000A00000003135D4507000000030CFD9BF90000000A0000000A0000000400000001"
theorem small_6641649_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6641649_left_root small_6641649_left_fuel small_6641649_left_count small_6641649_left_encoded = true := by
  decide +kernel
theorem small_6641649_left_covered : CoveredBy scale carrier boxes small_6641649_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6641649_left_root small_6641649_left_fuel small_6641649_left_count small_6641649_left_encoded small_6641649_left_checked

theorem cover_6641649 : CoveredBy scale carrier boxes root_6641649 := by
  apply coveredBy_split_literal root_6641649 small_6641649_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0459.root_6642183 coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_6641649_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0459.cover_6642183
#print axioms cover_6641649

def root_6641644 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6641644_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6641644_right_fuel : Nat := 1
def small_6641644_right_count : Nat := 1
def small_6641644_right_encoded : String := "00000004"
theorem small_6641644_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6641644_right_root small_6641644_right_fuel small_6641644_right_count small_6641644_right_encoded = true := by
  decide +kernel
theorem small_6641644_right_covered : CoveredBy scale carrier boxes small_6641644_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6641644_right_root small_6641644_right_fuel small_6641644_right_count small_6641644_right_encoded small_6641644_right_checked

theorem cover_6641644 : CoveredBy scale carrier boxes root_6641644 := by
  apply coveredBy_split_literal root_6641644 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0459.root_6641649 small_6641644_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0459.cover_6641649
  · exact small_6641644_right_covered
#print axioms cover_6641644

def root_6641498 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6641498_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6641498_left_fuel : Nat := 17
def small_6641498_left_count : Nat := 69
def small_6641498_left_encoded : String := "1151E9090000000408A912F912073D0205000100135D44F70000000900000000135D80F700000000050000FA00000009135D450500000002050000FC135D81070000000A000000030000000800000001120701020000000105000100135D44F7050000FA135D8105050000FC135D81070500010800000009135D8109045489F90000000913867102000000010280010013D7B0F7078000FA00000009000000060000000013D7ECF700000000078000FA000000090000000600000004000000030000000900000002135D4505000000020000000A00000000135D80F700000000050000FA135D8105050000FC135D81070500010800000008135D81090000000A00000004000000030000000A000000020000000A"
theorem small_6641498_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6641498_left_root small_6641498_left_fuel small_6641498_left_count small_6641498_left_encoded = true := by
  decide +kernel
theorem small_6641498_left_covered : CoveredBy scale carrier boxes small_6641498_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6641498_left_root small_6641498_left_fuel small_6641498_left_count small_6641498_left_encoded small_6641498_left_checked

theorem cover_6641498 : CoveredBy scale carrier boxes root_6641498 := by
  apply coveredBy_split_literal root_6641498 small_6641498_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0459.root_6641644 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_6641498_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0459.cover_6641644
#print axioms cover_6641498

def root_6641492 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6641492_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6641492_left_fuel : Nat := 1
def small_6641492_left_count : Nat := 1
def small_6641492_left_encoded : String := "00000003"
theorem small_6641492_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6641492_left_root small_6641492_left_fuel small_6641492_left_count small_6641492_left_encoded = true := by
  decide +kernel
theorem small_6641492_left_covered : CoveredBy scale carrier boxes small_6641492_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6641492_left_root small_6641492_left_fuel small_6641492_left_count small_6641492_left_encoded small_6641492_left_checked

theorem cover_6641492 : CoveredBy scale carrier boxes root_6641492 := by
  apply coveredBy_split_literal root_6641492 small_6641492_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0459.root_6641498 coord3 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_6641492_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0459.cover_6641498
#print axioms cover_6641492

def root_6633852 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6633852 : CoveredBy scale carrier boxes root_6633852 := by
  apply coveredBy_split_literal root_6633852 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0458.root_6633853 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0459.root_6641492 coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0458.cover_6633853
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0459.cover_6641492
#print axioms cover_6633852

def root_6633846 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6633846_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6633846_left_fuel : Nat := 1
def small_6633846_left_count : Nat := 1
def small_6633846_left_encoded : String := "00000002"
theorem small_6633846_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6633846_left_root small_6633846_left_fuel small_6633846_left_count small_6633846_left_encoded = true := by
  decide +kernel
theorem small_6633846_left_covered : CoveredBy scale carrier boxes small_6633846_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6633846_left_root small_6633846_left_fuel small_6633846_left_count small_6633846_left_encoded small_6633846_left_checked

theorem cover_6633846 : CoveredBy scale carrier boxes root_6633846 := by
  apply coveredBy_split_literal root_6633846 small_6633846_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0459.root_6633852 coord2 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_6633846_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0459.cover_6633852
#print axioms cover_6633846

def root_6625828 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6625828 : CoveredBy scale carrier boxes root_6625828 := by
  apply coveredBy_split_literal root_6625828 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0457.root_6625829 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0459.root_6633846 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0457.cover_6625829
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0459.cover_6633846
#print axioms cover_6625828

def root_6625822 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6625822_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6625822_left_fuel : Nat := 1
def small_6625822_left_count : Nat := 1
def small_6625822_left_encoded : String := "00000001"
theorem small_6625822_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6625822_left_root small_6625822_left_fuel small_6625822_left_count small_6625822_left_encoded = true := by
  decide +kernel
theorem small_6625822_left_covered : CoveredBy scale carrier boxes small_6625822_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6625822_left_root small_6625822_left_fuel small_6625822_left_count small_6625822_left_encoded small_6625822_left_checked

theorem cover_6625822 : CoveredBy scale carrier boxes root_6625822 := by
  apply coveredBy_split_literal root_6625822 small_6625822_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0459.root_6625828 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_6625822_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0459.cover_6625828
#print axioms cover_6625822

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0459
