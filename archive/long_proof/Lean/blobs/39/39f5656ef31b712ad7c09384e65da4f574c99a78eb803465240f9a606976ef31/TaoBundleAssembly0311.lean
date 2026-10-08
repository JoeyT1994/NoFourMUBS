import TaoBundleAssembly0310
import TaoBundleChunkBatch0397
import TaoBundleChunkBatch0399
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0311
def root_4251487 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4251487_left_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4251487_left_fuel : Nat := 31
def small_4251487_left_count : Nat := 463
def small_4251487_left_encoded : String := "0F34D1060000000304548A0913867108000000040C9A86F60F878D010C9A86FA0F878D0507800102128A40F90AD357870000000510D13D06022A458900000005000000090000000300000001128A7CF9000000010AD3578710D1010600000003022A458913E1C508000000040DE7C9F60000000A000000080000000810D13D06022A458913E1C508000000040DE7C9F60000000A0E5FD901000000000000000A13E201080DE7C9F60E6015010000000900000000000000080000000400000003000000020F8751050000000207800102128A40F90AD357870000000910D13D06022A458913E1C508000000040DE7C9F6000000090E5FD901000000000B4D43FA0000000900000007000000090000000300000001128A7CF9000000010AD3578710D1010600000003022A4589000000070000000910D13D06022A458913E1C508000000040DE7C9F60E60150100000007000000000E5FD901000000000B4D43FA0000000A0000000713E201080DE7C9F6000000090E5FD901000000000B4D43FA000000091080110500000002000000090000000400000003000000000F875101000000000C9A86FA0F878D0507800102128A40F90AD3578710D10106000000030000000810D13D06022A458913E1C508000000040B4D43F610804D010DE7C9FA000000050E5FD905000000020640010200000005000000080000000000000008000000080000000300000001128A7CF9000000010AD3578710D10106000000030000000810D13D06022A458913E1C508000000040B4D43F610804D010DE7C9FA000000080E5FD905000000020000000A00000000000000080000000800000003000000020F8751050000000207800102128A40F90AD3578710D1010600000003022A458913E1C508000000040B4D43F610804D01000000090000000010801101000000000B4D43FA0000000810801105000000020640010200000008000000080000000810D13D06022A458913E1C508000000040B4D43F610804D010B4D43FA10804D050640010212FF70F9000000090000000112FFACF9000000010BE879C71011710600000003000000081011AD06011523490000000A0000000800000003000000021080110500000002064001020000000912FFACF9000000010BE879C71011710600000003000000071011AD06011523490000000700000009000000030000000010801101000000000B4D43FA10804D050640010212FF70F90BE879C700000008000000080000000112FFACF900000001000000080000000210801105000000020640010212FF70F90BE879C71011710600000003000000091011AD060115234913F85908000000040AA6A27610EDAD010AA6A27A00000009000000070000000010ED7101000000000AA6A27A0000000810ED71050000000205A00102133134F90000000900000001133170F9000000010C730AE7000000080000000800000009000000030000000112FFACF9000000010BE879C71011710600000003000000081011AD060115234913F85908000000040AA6A27610EDAD010AA6A27A0000000A000000070000000010ED7101000000000AA6A27A0000000810ED71050000000206E001020000000812C820F9000000010000000813F895080AA6A27610EDAD01000000080000000000000008000000040000000313E201080B4D43F610804D01000000090000000010801101000000000B4D43FA000000081080110500000002064001020000000800000008000000040000000300000001128A7CF9000000010AD3578710D1010600000003022A458913E1C508000000040B4D43F610804D010B4D43FA0000000A00000007000000001080110100000000000000080000000810D13D06022A458913E1C508000000040B4D43F610804D010B4D43FA10804D0508C0010211FBE8F90BE879C71011710600000003000000080000000A000000010000000A00000002108011050000000208C0010211FBE8F90BE879C71011710600000003000000071011AD06011523490000000713F895080BF3E576000000071008ED01000000000000000A0000000400000003000000010000000A0000000010801101000000000B4D43FA10804D0508C00102000000080000000A00000002108011050000000208C0010211FBE8F90BE879C71011710600000003000000081011AD06011523490000000A00000008000000030000000111FC24F9000000010BE879C71011710600000003000000050000000513E201080B4D43F610804D010B4D43FA10804D050000000800000002108011050000000208C0010211FBE8F9000000090000000111FC24F9000000010BE879C700000008000000080000000010801101000000000B4D43FA00000008108011050000000208C00102000000080000000500000004000000031386AD080C9A86F60F878D010C9A86FA000000090F8751050000000200000009000000000F875101000000000C9A86FA0F878D0500000008000000020F8751050000000207800102128A40F90000000900000001128A7CF9000000010AD35787000000080000000800000004"
theorem small_4251487_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4251487_left_root small_4251487_left_fuel small_4251487_left_count small_4251487_left_encoded = true := by
  decide +kernel
theorem small_4251487_left_covered : CoveredBy scale carrier boxes small_4251487_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4251487_left_root small_4251487_left_fuel small_4251487_left_count small_4251487_left_encoded small_4251487_left_checked

theorem cover_4251487 : CoveredBy scale carrier boxes root_4251487 := by
  apply coveredBy_split_literal root_4251487 small_4251487_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0310.root_4252471 coord3 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_4251487_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0310.cover_4252471
#print axioms cover_4251487

def root_4251481 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4251481_left_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4251481_left_fuel : Nat := 1
def small_4251481_left_count : Nat := 1
def small_4251481_left_encoded : String := "00000002"
theorem small_4251481_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4251481_left_root small_4251481_left_fuel small_4251481_left_count small_4251481_left_encoded = true := by
  decide +kernel
theorem small_4251481_left_covered : CoveredBy scale carrier boxes small_4251481_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4251481_left_root small_4251481_left_fuel small_4251481_left_count small_4251481_left_encoded small_4251481_left_checked

theorem cover_4251481 : CoveredBy scale carrier boxes root_4251481 := by
  apply coveredBy_split_literal root_4251481 small_4251481_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0311.root_4251487 coord2 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_4251481_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0311.cover_4251487
#print axioms cover_4251481

def root_4251223 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4251223_left_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4251223_left_fuel : Nat := 17
def small_4251223_left_count : Nat := 125
def small_4251223_left_encoded : String := "0F34D0FA0CFD9C070F34D1060000000304548A0913867108000000040C9A86F60F878D010780010200000005128A7CF9000000010AD357850000000510D13CFA000000020AD357870000000500000008000000000F8751010000000000000008000000080F350D0604548A0913867108000000040C9A86F60F878D010C9A8706000000050F878D070000000500000003000000000F875101000000000C9A87060F8751070000000307800102128A40F90000000500000001128A7CF9000000010AD3578510D100FA000000050000000210D13CFA00000002022A458913E1C508000000040B4D43F60000000500000007000000070F878D0707800102128A40F90AD357850000000510D13CFA00000002022A4589000000050000000800000001128A7CF9000000010AD357850000000810D13CFA00000002022A458913E1C508000000040B4D43F60000000A0000000800000008000000031386AD080C9A86F60F878D010C9A87060F875107000000030780010200000005128A7CF9000000010AD357850000000810D13CFA00000002067ECE8912EA5908000000040DE7C9F60000000500000008000000080F878D0707800102000000080000000800000003000000000F875101000000000C9A87060F8751070000000307800102000000080000000800000008000000040000000300000002"
theorem small_4251223_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4251223_left_root small_4251223_left_fuel small_4251223_left_count small_4251223_left_encoded = true := by
  decide +kernel
theorem small_4251223_left_covered : CoveredBy scale carrier boxes small_4251223_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4251223_left_root small_4251223_left_fuel small_4251223_left_count small_4251223_left_encoded small_4251223_left_checked

theorem cover_4251223 : CoveredBy scale carrier boxes root_4251223 := by
  apply coveredBy_split_literal root_4251223 small_4251223_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0311.root_4251481 coord2 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_4251223_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0311.cover_4251481
#print axioms cover_4251223

def root_4251217 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4251217_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4251217_left_fuel : Nat := 1
def small_4251217_left_count : Nat := 1
def small_4251217_left_encoded : String := "00000000"
theorem small_4251217_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4251217_left_root small_4251217_left_fuel small_4251217_left_count small_4251217_left_encoded = true := by
  decide +kernel
theorem small_4251217_left_covered : CoveredBy scale carrier boxes small_4251217_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4251217_left_root small_4251217_left_fuel small_4251217_left_count small_4251217_left_encoded small_4251217_left_checked

theorem cover_4251217 : CoveredBy scale carrier boxes root_4251217 := by
  apply coveredBy_split_literal root_4251217 small_4251217_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0311.root_4251223 coord0 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_4251217_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0311.cover_4251223
#print axioms cover_4251217

def root_4250889 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4250889_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4250889_left_fuel : Nat := 23
def small_4250889_left_count : Nat := 155
def small_4250889_left_encoded : String := "0F34D0F60CFD9C050F34D0FA0CFD9C07000000050F350D0604548A09000000051386AD08000000050000000400000003000000020F350CFA000000020CFD9C070F34D1060000000304548A0913867108000000040C9A86FA000000090F8751050000000200000009000000090F350D0604548A0913867108000000040C9A86FA0F878D050C9A8706000000050F878D070000000500000003000000020F875105000000020C9A87060F8751070000000307800102128A40F90000000500000001128A7CF9000000010AD3578110D100F6000000050000000010D13CF600000000022A458913E1C508000000040B4D43FA0000000510801105000000020B4D4406000000050000000A13E201080B4D43FA10804D050B4D44060000000510804D0700000005000000030000000210801105000000020B4D44060000000610804D0708C00102000000060000000600000003000000040F878D0707800102128A40F90000000900000001128A7CF9000000010AD357810000000910D13CF600000000022A458913E1C508000000040B4D43FA0000000A0000000700000009000000031386AD080C9A86FA0F878D050C9A87060F875107000000030780010200000005128A7CF9000000010AD357810000000910D13CF600000000067ECE8912EA5908000000040DE7C9FA000000050E5FD90500000002000000090000000900000009000000020F875105000000020C9A87060F875107000000030780010200000009128A7CF9000000010AD357810000000910D13CF600000000067ECE8912EA5908000000040B4D43FA000000091080110500000002000000090000000900000009000000040000000300000000"
theorem small_4250889_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4250889_left_root small_4250889_left_fuel small_4250889_left_count small_4250889_left_encoded = true := by
  decide +kernel
theorem small_4250889_left_covered : CoveredBy scale carrier boxes small_4250889_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4250889_left_root small_4250889_left_fuel small_4250889_left_count small_4250889_left_encoded small_4250889_left_checked

theorem cover_4250889 : CoveredBy scale carrier boxes root_4250889 := by
  apply coveredBy_split_literal root_4250889 small_4250889_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0311.root_4251217 coord0 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_4250889_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0311.cover_4251217
#print axioms cover_4250889

def root_4250883 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4250883_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4250883_left_fuel : Nat := 1
def small_4250883_left_count : Nat := 1
def small_4250883_left_encoded : String := "00000001"
theorem small_4250883_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4250883_left_root small_4250883_left_fuel small_4250883_left_count small_4250883_left_encoded = true := by
  decide +kernel
theorem small_4250883_left_covered : CoveredBy scale carrier boxes small_4250883_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4250883_left_root small_4250883_left_fuel small_4250883_left_count small_4250883_left_encoded small_4250883_left_checked

theorem cover_4250883 : CoveredBy scale carrier boxes root_4250883 := by
  apply coveredBy_split_literal root_4250883 small_4250883_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0311.root_4250889 coord1 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_4250883_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0311.cover_4250889
#print axioms cover_4250883

def root_4249011 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4249011 : CoveredBy scale carrier boxes root_4249011 := by
  apply coveredBy_split_literal root_4249011 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1587.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0311.root_4250883 coord1 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1587.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0311.cover_4250883
#print axioms cover_4249011

def root_4249005 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4249005_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4249005_left_fuel : Nat := 1
def small_4249005_left_count : Nat := 1
def small_4249005_left_encoded : String := "00000004"
theorem small_4249005_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4249005_left_root small_4249005_left_fuel small_4249005_left_count small_4249005_left_encoded = true := by
  decide +kernel
theorem small_4249005_left_covered : CoveredBy scale carrier boxes small_4249005_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4249005_left_root small_4249005_left_fuel small_4249005_left_count small_4249005_left_encoded small_4249005_left_checked

theorem cover_4249005 : CoveredBy scale carrier boxes root_4249005 := by
  apply coveredBy_split_literal root_4249005 small_4249005_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0311.root_4249011 coord4 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_4249005_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0311.cover_4249011
#print axioms cover_4249005

def root_4249004 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4249004_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4249004_right_fuel : Nat := 26
def small_4249004_right_count : Nat := 131
def small_4249004_right_encoded : String := "12073D0805000102135D44F90CFD9C01000000090F350CF6000000000CFD9C050F34D0FA0CFD9C070F34D10600000003000000080F350D060CFD9C090F34D108000000040C9A86F600000009000000080000000800000003000000020000000900000001135D80F9000000010CFD9C010F34D0F60CFD9C050F34D0FA000000090000000200000009000000000F350CF6000000000CFD9C050F34D0FA0CFD9C070F34D10600000003000000080F350D060CFD9C090F34D108000000040C9A86F60F878D010000000800000000000000080000000800000003000000020F350CFA000000020CFD9C070F34D10600000003000000090F350D060CFD9C090F34D108000000040C9A86F60F878D010C9A86FA0F878D050C9A87060F875107000000030780010200000009128A7CF9000000010AD3578910D10108000000040DE7C9F600000009000000080000000800000009000000020F8751050000000200000009000000000F875101000000000C9A86FA0F878D050C9A87060F8751070000000307800102000000080000000800000008000000020F875105000000020C9A87060F8751070000000307800102128A40F90000000900000001128A7CF9000000010AD3578910D10108000000040B4D43F610804D010B4D43FA00000007108011050000000200000009000000000000000700000008000000090F350D0800000009000000040000000300000004"
theorem small_4249004_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4249004_right_root small_4249004_right_fuel small_4249004_right_count small_4249004_right_encoded = true := by
  decide +kernel
theorem small_4249004_right_covered : CoveredBy scale carrier boxes small_4249004_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4249004_right_root small_4249004_right_fuel small_4249004_right_count small_4249004_right_encoded small_4249004_right_checked

theorem cover_4249004 : CoveredBy scale carrier boxes root_4249004 := by
  apply coveredBy_split_literal root_4249004 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0311.root_4249005 small_4249004_right_root coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0311.cover_4249005
  · exact small_4249004_right_covered
#print axioms cover_4249004

def root_4248999 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4248999_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4248999_right_fuel : Nat := 1
def small_4248999_right_count : Nat := 1
def small_4248999_right_encoded : String := "00000003"
theorem small_4248999_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4248999_right_root small_4248999_right_fuel small_4248999_right_count small_4248999_right_encoded = true := by
  decide +kernel
theorem small_4248999_right_covered : CoveredBy scale carrier boxes small_4248999_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4248999_right_root small_4248999_right_fuel small_4248999_right_count small_4248999_right_encoded small_4248999_right_checked

theorem cover_4248999 : CoveredBy scale carrier boxes root_4248999 := by
  apply coveredBy_split_literal root_4248999 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0311.root_4249004 small_4248999_right_root coord3 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0311.cover_4249004
  · exact small_4248999_right_covered
#print axioms cover_4248999

def root_4248713 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4248713_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4248713_left_fuel : Nat := 24
def small_4248713_left_count : Nat := 133
def small_4248713_left_encoded : String := "120701060000000308A91309120701080000000405000102135D44F90CFD9C010F34D0F600000005000000000F350CF6000000000CFD9C050F34D0FA00000005000000020F350CFA0000000204548A071386710600000003000000091386AD0604548A0913867108000000040C9A86F6000000090F875101000000000C9A86FA000000060F8751050000000200000009000000090000000300000001135D80F9000000010CFD9C010F34D0F60CFD9C050F34D0FA000000050000000200000009000000000F350CF6000000000CFD9C050F34D0FA04548A070000000800000008000000020F350CFA0000000204548A07138671060000000304548A0913867108000000040C9A86F60F878D010C9A86FA0000000900000009000000000F875101000000000C9A86FA000000080F87510500000002078001020000000800000008000000091386AD0604548A0913867108000000040C9A86F60F878D010C9A86FA0F878D050780010200000009128A7CF900000001067ECE870000000800000008000000020F8751050000000200000009000000000F875101000000000C9A86FA0F878D0500000008000000020F8751050000000207800102128A40F90000000900000001128A7CF900000001067ECE870000000812EA9506022A458913E1C508000000040000000800000008000000031386AD080C9A86F60000000900000008000000040000000312073D080000000900000004"
theorem small_4248713_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4248713_left_root small_4248713_left_fuel small_4248713_left_count small_4248713_left_encoded = true := by
  decide +kernel
theorem small_4248713_left_covered : CoveredBy scale carrier boxes small_4248713_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4248713_left_root small_4248713_left_fuel small_4248713_left_count small_4248713_left_encoded small_4248713_left_checked

theorem cover_4248713 : CoveredBy scale carrier boxes root_4248713 := by
  apply coveredBy_split_literal root_4248713 small_4248713_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0311.root_4248999 coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_4248713_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0311.cover_4248999
#print axioms cover_4248713

def root_4248707 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4248707_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4248707_left_fuel : Nat := 1
def small_4248707_left_count : Nat := 1
def small_4248707_left_encoded : String := "00000002"
theorem small_4248707_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4248707_left_root small_4248707_left_fuel small_4248707_left_count small_4248707_left_encoded = true := by
  decide +kernel
theorem small_4248707_left_covered : CoveredBy scale carrier boxes small_4248707_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4248707_left_root small_4248707_left_fuel small_4248707_left_count small_4248707_left_encoded small_4248707_left_checked

theorem cover_4248707 : CoveredBy scale carrier boxes root_4248707 := by
  apply coveredBy_split_literal root_4248707 small_4248707_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0311.root_4248713 coord2 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_4248707_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0311.cover_4248713
#print axioms cover_4248707

def root_4248527 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4248527_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4248527_left_fuel : Nat := 17
def small_4248527_left_count : Nat := 83
def small_4248527_left_encoded : String := "120700FA08A91307120701060000000308A9130912070108000000040500010200000005135D80F9000000010CFD9C0100000005000000080000000812073D0608A91309120701080000000405000102135D44F90000000500000001135D80F9000000010CFD9C010F34D0F600000005000000000F350CF60000000004548A05138670FA0CFD9C07000000050F350D060000000500000003000000021386ACFA000000020CFD9C070F34D10600000003000000080F350D0604548A09000000051386AD080C9A86F60000000500000008000000040000000312073D0805000102135D44F90CFD9C010F34D0F600000005000000000F350CF6000000000000000800000001135D80F9000000010CFD9C010F34D0F604548A05000000051386ACFA000000020CFD9C070000000500000008000000000F350CF60000000000000008000000040000000300000002"
theorem small_4248527_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4248527_left_root small_4248527_left_fuel small_4248527_left_count small_4248527_left_encoded = true := by
  decide +kernel
theorem small_4248527_left_covered : CoveredBy scale carrier boxes small_4248527_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4248527_left_root small_4248527_left_fuel small_4248527_left_count small_4248527_left_encoded small_4248527_left_checked

theorem cover_4248527 : CoveredBy scale carrier boxes root_4248527 := by
  apply coveredBy_split_literal root_4248527 small_4248527_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0311.root_4248707 coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_4248527_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0311.cover_4248707
#print axioms cover_4248527

def root_4248521 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4248521_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4248521_left_fuel : Nat := 1
def small_4248521_left_count : Nat := 1
def small_4248521_left_encoded : String := "00000000"
theorem small_4248521_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4248521_left_root small_4248521_left_fuel small_4248521_left_count small_4248521_left_encoded = true := by
  decide +kernel
theorem small_4248521_left_covered : CoveredBy scale carrier boxes small_4248521_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4248521_left_root small_4248521_left_fuel small_4248521_left_count small_4248521_left_encoded small_4248521_left_checked

theorem cover_4248521 : CoveredBy scale carrier boxes root_4248521 := by
  apply coveredBy_split_literal root_4248521 small_4248521_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0311.root_4248527 coord0 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_4248521_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0311.cover_4248527
#print axioms cover_4248521

def root_4248417 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4248417_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4248417_left_fuel : Nat := 17
def small_4248417_left_count : Nat := 47
def small_4248417_left_encoded : String := "120700F608A91305120700FA000000050000000212073CFA0000000208A9130712070106000000030000000912073D0608A91309120701080000000405000102135D44F90000000500000001135D80F90000000104548A01138670F60CFD9C050000000500000009000000001386ACF6000000000CFD9C050F34D0FA00000005000000020F350CFA000000020CFD9C070F34D10600000003000000090F350D0604548A09000000050000000900000003000000090000000300000000"
theorem small_4248417_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4248417_left_root small_4248417_left_fuel small_4248417_left_count small_4248417_left_encoded = true := by
  decide +kernel
theorem small_4248417_left_covered : CoveredBy scale carrier boxes small_4248417_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4248417_left_root small_4248417_left_fuel small_4248417_left_count small_4248417_left_encoded small_4248417_left_checked

theorem cover_4248417 : CoveredBy scale carrier boxes root_4248417 := by
  apply coveredBy_split_literal root_4248417 small_4248417_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0311.root_4248521 coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_4248417_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0311.cover_4248521
#print axioms cover_4248417

def root_4248412 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4248412_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4248412_right_fuel : Nat := 1
def small_4248412_right_count : Nat := 1
def small_4248412_right_encoded : String := "00000004"
theorem small_4248412_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4248412_right_root small_4248412_right_fuel small_4248412_right_count small_4248412_right_encoded = true := by
  decide +kernel
theorem small_4248412_right_covered : CoveredBy scale carrier boxes small_4248412_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4248412_right_root small_4248412_right_fuel small_4248412_right_count small_4248412_right_encoded small_4248412_right_checked

theorem cover_4248412 : CoveredBy scale carrier boxes root_4248412 := by
  apply coveredBy_split_literal root_4248412 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0311.root_4248417 small_4248412_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0311.cover_4248417
  · exact small_4248412_right_covered
#print axioms cover_4248412

def root_4248388 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4248388_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4248388_left_fuel : Nat := 6
def small_4248388_left_count : Nat := 11
def small_4248388_left_encoded : String := "1151E9090000000408A913010000000912073CF60000000008A91305120700FA000000080000000200000009"
theorem small_4248388_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4248388_left_root small_4248388_left_fuel small_4248388_left_count small_4248388_left_encoded = true := by
  decide +kernel
theorem small_4248388_left_covered : CoveredBy scale carrier boxes small_4248388_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4248388_left_root small_4248388_left_fuel small_4248388_left_count small_4248388_left_encoded small_4248388_left_checked

theorem cover_4248388 : CoveredBy scale carrier boxes root_4248388 := by
  apply coveredBy_split_literal root_4248388 small_4248388_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0311.root_4248412 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_4248388_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0311.cover_4248412
#print axioms cover_4248388

def root_4248383 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4248383_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4248383_right_fuel : Nat := 1
def small_4248383_right_count : Nat := 1
def small_4248383_right_encoded : String := "00000003"
theorem small_4248383_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4248383_right_root small_4248383_right_fuel small_4248383_right_count small_4248383_right_encoded = true := by
  decide +kernel
theorem small_4248383_right_covered : CoveredBy scale carrier boxes small_4248383_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4248383_right_root small_4248383_right_fuel small_4248383_right_count small_4248383_right_encoded small_4248383_right_checked

theorem cover_4248383 : CoveredBy scale carrier boxes root_4248383 := by
  apply coveredBy_split_literal root_4248383 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0311.root_4248388 small_4248383_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0311.cover_4248388
  · exact small_4248383_right_covered
#print axioms cover_4248383

def root_4245857 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4245857 : CoveredBy scale carrier boxes root_4245857 := by
  apply coveredBy_split_literal root_4245857 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1586.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0311.root_4248383 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1586.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0311.cover_4248383
#print axioms cover_4245857

def root_4245852 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4245852_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4245852_right_fuel : Nat := 1
def small_4245852_right_count : Nat := 1
def small_4245852_right_encoded : String := "00000002"
theorem small_4245852_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4245852_right_root small_4245852_right_fuel small_4245852_right_count small_4245852_right_encoded = true := by
  decide +kernel
theorem small_4245852_right_covered : CoveredBy scale carrier boxes small_4245852_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4245852_right_root small_4245852_right_fuel small_4245852_right_count small_4245852_right_encoded small_4245852_right_checked

theorem cover_4245852 : CoveredBy scale carrier boxes root_4245852 := by
  apply coveredBy_split_literal root_4245852 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0311.root_4245857 small_4245852_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0311.cover_4245857
  · exact small_4245852_right_covered
#print axioms cover_4245852

def root_4270535 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4270535_left_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-10572672)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4270535_left_fuel : Nat := 23
def small_4270535_left_count : Nat := 313
def small_4270535_left_encoded : String := "0F878D010C9A87060F8751070000000307800102128A40F9078000FA128A7D05022A458913E1C508000000040DE7C9F60E6015010B4D44060000000610804D070640010212FF70F900000008000000010000000600000003000000000E5FD901000000000B4D440610801107000000030000000610804D070640010212FF70F908C000FA11FC250501152349000000060000000600000002000000060000000112FFACF900000001000000060000000313E201080DE7C9F60E6015010B4D440610801107000000030000000610804D07064001020000000912FFACF9000000010000000600000003000000000E5FD901000000000B4D440610801107000000030000000610804D070640010212FF70F908C000FA00000009000000060000000112FFACF90000000100000006000000030000000400000002128A410500000002022A45890000000813E201080DE7C9F60E6015010000000600000000000000060000000400000001128A7CF900000001078000FA128A7D05022A458913E1C508000000040DE7C9F60E60150100000006000000000000000613E201080DE7C9F60E6015010000000600000000000000060000000400000002128A410500000002000000060F878D0707800102128A40F9078000FA128A7D05022A458913E1C508000000040DE7C9F60E6015010DE7CA060E5FD907000000030000000700000007000000000E5FD901000000000DE7CA060E5FD907000000030640010212FF70F908C000FA11FC25050115234913F85908000000040D412876000000070EFA1101000000000D4128860000000800000007000000090000000211FBE905000000020115234900000007000000090000000112FFACF90000000108C000FA11FC25050115234913F85908000000040D412876000000070000000613F895080D4128760EFA4D01000000060000000000000006000000040000000211FBE90500000002000000060E601507064001020000000712FFACF900000001000000070000000313E201080DE7C9F6000000090E5FD901000000000DE7CA060E5FD90700000003064001020000000912FFACF90000000108C000FA0000000911FBE9050000000200000006000000090000000400000002128A410500000002022A45890000000713E201080DE7C9F6000000090E5FD901000000000DE7CA060E5FD90700000003064001020000000600000006000000070000000400000001128A7CF900000001078000FA128A7D05022A458913E1C508000000040DE7C9F60E6015010DE7CA060E5FD907000000030000000700000007000000000E5FD901000000000DE7CA060E5FD9070000000308C0010211FBE8F908C000FA000000060000000600000001000000060E601507000000070000000313E201080DE7C9F60E6015010DE7CA060E5FD9070000000308C0010211FBE8F900000009000000010000000600000009000000000E5FD901000000000DE7CA060E5FD9070000000308C0010211FBE8F908C000FA000000060000000600000001000000060E60150708C0010211FBE8F908C000FA00000009000000070000000111FC24F90000000108C000FA11FC2505033F67C900000006000000060000000200000006000000030000000400000002128A410500000002022A45890000000713E201080DE7C9F60E60150100000007000000000E5FD901000000000DE7CA060000000600000005000000040000000300000000"
theorem small_4270535_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4270535_left_root small_4270535_left_fuel small_4270535_left_count small_4270535_left_encoded = true := by
  decide +kernel
theorem small_4270535_left_covered : CoveredBy scale carrier boxes small_4270535_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4270535_left_root small_4270535_left_fuel small_4270535_left_count small_4270535_left_encoded small_4270535_left_checked

theorem cover_4270535 : CoveredBy scale carrier boxes root_4270535 := by
  apply coveredBy_split_literal root_4270535 small_4270535_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1596.root coord0 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact small_4270535_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1596.covered
#print axioms cover_4270535

def root_4270529 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4270529_left_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4270529_left_fuel : Nat := 1
def small_4270529_left_count : Nat := 1
def small_4270529_left_encoded : String := "00000004"
theorem small_4270529_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4270529_left_root small_4270529_left_fuel small_4270529_left_count small_4270529_left_encoded = true := by
  decide +kernel
theorem small_4270529_left_covered : CoveredBy scale carrier boxes small_4270529_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4270529_left_root small_4270529_left_fuel small_4270529_left_count small_4270529_left_encoded small_4270529_left_checked

theorem cover_4270529 : CoveredBy scale carrier boxes root_4270529 := by
  apply coveredBy_split_literal root_4270529 small_4270529_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0311.root_4270535 coord4 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_4270529_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0311.cover_4270535
#print axioms cover_4270529

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0311
