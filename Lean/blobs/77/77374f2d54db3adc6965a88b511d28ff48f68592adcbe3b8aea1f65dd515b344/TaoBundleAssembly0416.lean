import TaoBundleAssembly0415
import TaoBundleChunkBatch0565
import TaoBundleChunkBatch0566
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0416
def root_6007335 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6007335_right_root : ZRayBox := fun j => (#[⟨⟨(6291456), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6007335_right_fuel : Nat := 25
def small_6007335_right_count : Nat := 351
def small_6007335_right_encoded : String := "128A7CF700000000078000FA128A7CFB00000002078000FE128A7CFF00000004067ECE8312EA58F8022A458713E1C5060000000308C0010011FBE8F708C000FA11FC24FB0000000208C000FE11FC24FF000000040569AC43000000080000000811FBE8FF0569AC431340D4F80115234713F85906000000030820010012465CF7096000FA11AABCFB000000020000000611AA80FB000000090000000200000000124698F7000000000000000613F895060820010012465CF7096000FA11AABCFB000000020000000711AA80FB000000080000000200000000000000080000000300000001134110F8000000010115234713F859060000000308200100000000090000000913F895060820010012465CF7096000FA11AABCFB00000002082000FE0000000800000009000000090000000000000008000000030000000411FBE8FB08C000FE0000000811FBE8FF0569AC431340D4F8011523470000000900000008000000010000000900000004000000020000000011FC24F70000000008C000FA11FC24FB0000000208C000FE0000000811FBE8FF0569AC430000000800000008000000040000000813E2010608C0010011FBE8F708C000FA11FC24FB0000000208C000FE0000000811FBE8FF0569AC431340D4F8033F67C713BBF50600000003000000080000000800000001000000080000000411FBE8FB00000008000000020000000000000008000000030000000112EA94F800000001022A458713E1C5060000000308C0010011FBE8F708C000FA11FC24FB0000000208C000FE11FC24FF000000040000000811FBE8FF0793F0C3128220F80000000900000001000000090000000411FBE8FB08C000FE0000000800000009000000020000000011FC24F7000000000000000813E2010608C0010011FBE8F708C000FA11FC24FB000000020000000511FBE8FB0000000800000002000000000000000800000003128A40FF067ECE8312EA58F8022A458713E1C5060000000308C0010011FBE8F708C000FA11FC24FB00000002064000FE12FFACFF000000040569AC431340D4F8011523470000000613F895060820010012465CF7096000FA000000070000000900000000124698F7000000000000000700000003000000010000000900000009000000090000000011FC24F70000000008C000FA11FC24FB00000002064000FE12FFACFF000000040569AC430000000700000006000000090000000913E2010608C0010011FBE8F708C000FA11FC24FB00000002064000FE12FFACFF000000040569AC431340D4F8033F67C713BBF506000000030820010012465CF70000000A00000000124698F700000000000000070000000A000000010000000A0000000A11FBE8FB064000FE12FFACFF000000040569AC431340D4F8033F67C70000000900000008000000010000000900000009000000020000000011FC24F70000000008C000FA11FC24FB00000002064000FE12FFACFF000000040569AC43000000070000000812FF70FF0569AC4300000007000000090000000411FBE8FB064000FE000000080000000900000002000000030000000112EA94F800000001022A45870000000913E2010608C0010011FBE8F70000000A0000000011FC24F70000000008C000FA11FC24FB00000002064000FE12FFACFF000000040793F0C3128220F800000008000000010000000500000009000000090000000300000004128A40FB078000FE128A7CFF00000004067ECE8312EA58F8022A458713E1C5060000000308C0010011FBE8F7064000FA12FFACFB0000000208C000FE0000000800000009000000080000000000000008000000080000000112EA94F800000001022A45870000000900000008128A40FF067ECE8312EA58F8022A45870000000913E2010608C0010000000009000000090000000300000001000000090000000400000002"
theorem small_6007335_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6007335_right_root small_6007335_right_fuel small_6007335_right_count small_6007335_right_encoded = true := by
  decide +kernel
theorem small_6007335_right_covered : CoveredBy scale carrier boxes small_6007335_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6007335_right_root small_6007335_right_fuel small_6007335_right_count small_6007335_right_encoded small_6007335_right_checked

theorem cover_6007335 : CoveredBy scale carrier boxes root_6007335 := by
  apply coveredBy_split_literal root_6007335 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2261.root small_6007335_right_root coord0 false (6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2261.covered
  · exact small_6007335_right_covered
#print axioms cover_6007335

def root_6007329 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6007329_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6007329_left_fuel : Nat := 1
def small_6007329_left_count : Nat := 1
def small_6007329_left_encoded : String := "00000003"
theorem small_6007329_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6007329_left_root small_6007329_left_fuel small_6007329_left_count small_6007329_left_encoded = true := by
  decide +kernel
theorem small_6007329_left_covered : CoveredBy scale carrier boxes small_6007329_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6007329_left_root small_6007329_left_fuel small_6007329_left_count small_6007329_left_encoded small_6007329_left_checked

theorem cover_6007329 : CoveredBy scale carrier boxes root_6007329 := by
  apply coveredBy_split_literal root_6007329 small_6007329_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0416.root_6007335 coord3 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_6007329_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0416.cover_6007335
#print axioms cover_6007329

def root_6007328 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6007328_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6007328_right_fuel : Nat := 17
def small_6007328_right_count : Nat := 107
def small_6007328_right_encoded : String := "1386AD0607800100128A40F7078000FA128A7CFB00000002078000FE128A7CFF00000004067ECE8312EA58F8067ECE8712EA5906000000030640010012FF70F70000000A0000000012FFACF70000000008C000FA0000000511FBE8FB08C000FE000000050000000A000000020000000500000001000000050000000A128A40FB078000FE128A7CFF00000004067ECE8312EA58F8067ECE8712EA5906000000030000000600000006000000010000000A0000000A0000000200000000128A7CF700000000078000FA128A7CFB00000002078000FE128A7CFF00000004067ECE8312EA58F8067ECE8712EA59060000000300000008000000050000000100000005128A40FF067ECE8312EA58F8067ECE8712EA59060000000308C001000000000A11FC24F70000000008C000FA0000000A11FBE8FB0000000A000000020000000A000000010000000A00000004128A40FB078000FE128A7CFF00000004067ECE830000000800000008128A40FF067ECE8312EA58F8067ECE8712EA59060000000308C0010011FBE8F70000000A00000000000000080000000A000000010000000A000000040000000200000003"
theorem small_6007328_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6007328_right_root small_6007328_right_fuel small_6007328_right_count small_6007328_right_encoded = true := by
  decide +kernel
theorem small_6007328_right_covered : CoveredBy scale carrier boxes small_6007328_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6007328_right_root small_6007328_right_fuel small_6007328_right_count small_6007328_right_encoded small_6007328_right_checked

theorem cover_6007328 : CoveredBy scale carrier boxes root_6007328 := by
  apply coveredBy_split_literal root_6007328 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0416.root_6007329 small_6007328_right_root coord3 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0416.cover_6007329
  · exact small_6007328_right_covered
#print axioms cover_6007328

def root_6007322 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6007322_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-16379648)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6007322_left_fuel : Nat := 1
def small_6007322_left_count : Nat := 1
def small_6007322_left_encoded : String := "00000001"
theorem small_6007322_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6007322_left_root small_6007322_left_fuel small_6007322_left_count small_6007322_left_encoded = true := by
  decide +kernel
theorem small_6007322_left_covered : CoveredBy scale carrier boxes small_6007322_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6007322_left_root small_6007322_left_fuel small_6007322_left_count small_6007322_left_encoded small_6007322_left_checked

theorem cover_6007322 : CoveredBy scale carrier boxes root_6007322 := by
  apply coveredBy_split_literal root_6007322 small_6007322_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0416.root_6007328 coord1 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_6007322_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0416.cover_6007328
#print axioms cover_6007322

def root_6003198 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6003198 : CoveredBy scale carrier boxes root_6003198 := by
  apply coveredBy_split_literal root_6003198 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0415.root_6003199 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0416.root_6007322 coord1 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0415.cover_6003199
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0416.cover_6007322
#print axioms cover_6003198

def root_6003192 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6003192_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6003192_left_fuel : Nat := 1
def small_6003192_left_count : Nat := 1
def small_6003192_left_encoded : String := "00000004"
theorem small_6003192_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6003192_left_root small_6003192_left_fuel small_6003192_left_count small_6003192_left_encoded = true := by
  decide +kernel
theorem small_6003192_left_covered : CoveredBy scale carrier boxes small_6003192_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6003192_left_root small_6003192_left_fuel small_6003192_left_count small_6003192_left_encoded small_6003192_left_checked

theorem cover_6003192 : CoveredBy scale carrier boxes root_6003192 := by
  apply coveredBy_split_literal root_6003192 small_6003192_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0416.root_6003198 coord4 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_6003192_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0416.cover_6003198
#print axioms cover_6003192

def root_6003191 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6003191_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6003191_right_fuel : Nat := 21
def small_6003191_right_count : Nat := 185
def small_6003191_right_encoded : String := "135D44FF04548A03138670F804548A07138671060000000307800100128A40F7078000FA128A7CFB00000002028000FE13D7ECFF00000004022A45830000000513E200F800000001022A4587000000050000000A13D7B0FF022A4583000000050000000900000004128A40FB000000050000000200000000128A7CF700000000078000FA128A7CFB00000002028000FE13D7ECFF00000004022A45830000000513E200F800000001022A45870000000513E2010608C0010011FBE8F708C000FA0000000A11FBE8FB00000009000000020000000011FC24F70000000008C000FA0000000711FBE8FB00000009000000020000000313D7B0FF022A4583000000050000000900000004128A40FB028000FE13D7ECFF00000004022A4583000000050000000900000005000000021386AD0607800100128A40F7078000FA0000000A128A40FB0000000A0000000200000000128A7CF700000000078000FA128A7CFB00000002028000FE13D7ECFF00000004022A458313E1C4F8067ECE8712EA59060000000308C0010011FBE8F708C000FA0000000711FBE8FB00000007000000020000000011FC24F700000000000000070000000A000000010000000A0000000A128A40FB028000FE13D7ECFF00000004022A458313E1C4F8067ECE8712EA59060000000308C0010011FBE8F7000000050000000011FC24F700000000064000FA12FFACFB0000000203C000FE0000000700000005000000050000000A000000010000000A0000000A0000000200000003000000011386ACF80000000104548A07138671060000000307800100128A40F7078000FA128A7CFB00000002028000FE13D7ECFF00000004067ECE8312EA58F80000000A0000000100000009000000090000000900000000128A7CF700000000078000FA128A7CFB00000002028000FE13D7ECFF00000004067ECE8312EA58F8022A45870000000913E2010608C00100000000090000000900000003000000010000000900000009000000090000000A00000004"
theorem small_6003191_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6003191_right_root small_6003191_right_fuel small_6003191_right_count small_6003191_right_encoded = true := by
  decide +kernel
theorem small_6003191_right_covered : CoveredBy scale carrier boxes small_6003191_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6003191_right_root small_6003191_right_fuel small_6003191_right_count small_6003191_right_encoded small_6003191_right_checked

theorem cover_6003191 : CoveredBy scale carrier boxes root_6003191 := by
  apply coveredBy_split_literal root_6003191 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0416.root_6003192 small_6003191_right_root coord4 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0416.cover_6003192
  · exact small_6003191_right_covered
#print axioms cover_6003191

def root_6003185 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6003185_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6003185_left_fuel : Nat := 1
def small_6003185_left_count : Nat := 1
def small_6003185_left_encoded : String := "00000002"
theorem small_6003185_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6003185_left_root small_6003185_left_fuel small_6003185_left_count small_6003185_left_encoded = true := by
  decide +kernel
theorem small_6003185_left_covered : CoveredBy scale carrier boxes small_6003185_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6003185_left_root small_6003185_left_fuel small_6003185_left_count small_6003185_left_encoded small_6003185_left_checked

theorem cover_6003185 : CoveredBy scale carrier boxes root_6003185 := by
  apply coveredBy_split_literal root_6003185 small_6003185_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0416.root_6003191 coord2 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_6003185_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0416.cover_6003191
#print axioms cover_6003185

def root_6003184 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6003184_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6003184_right_fuel : Nat := 18
def small_6003184_right_count : Nat := 201
def small_6003184_right_encoded : String := "135D44FB050000FE135D80FF0000000404548A03138670F804548A07138671060000000307800100128A40F7028000FA13D7ECFB00000002078000FE128A7CFF00000004022A45830000000513E200F800000001022A45870000000500000006128A40FF000000050000000413D7B0FB078000FE00000006000000050000000200000000128A7CF700000000028000FA13D7ECFB00000002078000FE128A7CFF00000004022A45830000000500000008128A40FF022A458300000005000000090000000413D7B0FB078000FE0000000800000009000000021386AD0607800100128A40F70000000600000000128A7CF700000000028000FA13D7ECFB00000002078000FE00000008128A40FF022A458313E1C4F8067ECE8712EA59060000000300000006000000060000000113E200F800000001067ECE8712EA59060000000300000008000000060000000413D7B0FB000000060000000200000003000000011386ACF80000000104548A07138671060000000307800100128A40F7028000FA13D7ECFB00000002078000FE128A7CFF00000004067ECE8312EA58F8022A458700000009000000060000000100000009000000090000000900000000128A7CF700000000028000FA13D7ECFB00000002078000FE128A7CFF00000004067ECE8312EA58F800000008000000010000000800000009000000091386AD0607800100128A40F7028000FA13D7ECFB00000002078000FE00000006000000060000000600000000128A7CF700000000028000FA13D7ECFB00000002078000FE00000008128A40FF067ECE8312EA58F8067ECE87000000090000000600000001000000090000000413D7B0FB078000FE00000006000000090000000200000003135D44FF04548A03138670F804548A07000000051386AD0607800100128A40F7028000FA0000000A0000000600000000128A7CF700000000028000FA13D7ECFB00000002028000FE13D7ECFF00000004022A458313E1C4F8067ECE8700000005000000060000000100000009000000090000000900000003000000011386ACF80000000104548A07000000091386AD06078001000000000900000009000000030000000400000002"
theorem small_6003184_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6003184_right_root small_6003184_right_fuel small_6003184_right_count small_6003184_right_encoded = true := by
  decide +kernel
theorem small_6003184_right_covered : CoveredBy scale carrier boxes small_6003184_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6003184_right_root small_6003184_right_fuel small_6003184_right_count small_6003184_right_encoded small_6003184_right_checked

theorem cover_6003184 : CoveredBy scale carrier boxes root_6003184 := by
  apply coveredBy_split_literal root_6003184 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0416.root_6003185 small_6003184_right_root coord2 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0416.cover_6003185
  · exact small_6003184_right_covered
#print axioms cover_6003184

def root_6003178 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6003178_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6003178_left_fuel : Nat := 1
def small_6003178_left_count : Nat := 1
def small_6003178_left_encoded : String := "00000000"
theorem small_6003178_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6003178_left_root small_6003178_left_fuel small_6003178_left_count small_6003178_left_encoded = true := by
  decide +kernel
theorem small_6003178_left_covered : CoveredBy scale carrier boxes small_6003178_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6003178_left_root small_6003178_left_fuel small_6003178_left_count small_6003178_left_encoded small_6003178_left_checked

theorem cover_6003178 : CoveredBy scale carrier boxes root_6003178 := by
  apply coveredBy_split_literal root_6003178 small_6003178_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0416.root_6003184 coord0 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_6003178_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0416.cover_6003184
#print axioms cover_6003178

def root_6001232 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_6001232 : CoveredBy scale carrier boxes root_6001232 := by
  apply coveredBy_split_literal root_6001232 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2259.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0416.root_6003178 coord0 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2259.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0416.cover_6003178
#print axioms cover_6001232

def root_6001226 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6001226_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6001226_left_fuel : Nat := 1
def small_6001226_left_count : Nat := 1
def small_6001226_left_encoded : String := "00000003"
theorem small_6001226_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6001226_left_root small_6001226_left_fuel small_6001226_left_count small_6001226_left_encoded = true := by
  decide +kernel
theorem small_6001226_left_covered : CoveredBy scale carrier boxes small_6001226_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6001226_left_root small_6001226_left_fuel small_6001226_left_count small_6001226_left_encoded small_6001226_left_checked

theorem cover_6001226 : CoveredBy scale carrier boxes root_6001226 := by
  apply coveredBy_split_literal root_6001226 small_6001226_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0416.root_6001232 coord3 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_6001226_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0416.cover_6001232
#print axioms cover_6001226

def root_6001225 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6001225_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6001225_right_fuel : Nat := 18
def small_6001225_right_count : Nat := 81
def small_6001225_right_encoded : String := "12073D0605000100135D44F7050000FA0000000A135D44FB050000FE00000006000000060000000200000000135D80F700000000050000FA135D80FB00000002050000FE135D80FF0000000404548A03138670F80CFD9C070F34D1060000000307800100128A40F7078000FA0000000A0000000600000000128A7CF700000000078000FA128A7CFB00000002078000FE128A7CFF00000004000000050000000A128A40FB078000FE000000060000000A0000000200000005000000011386ACF8000000010CFD9C070F34D106000000030780010000000005128A7CF70000000000000005000000050000000A135D44FB050000FE135D80FF0000000404548A03138670F80CFD9C070F34D106000000030000000600000006000000011386ACF8000000010CFD9C070F34D1060000000300000006000000050000000A0000000200000003"
theorem small_6001225_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6001225_right_root small_6001225_right_fuel small_6001225_right_count small_6001225_right_encoded = true := by
  decide +kernel
theorem small_6001225_right_covered : CoveredBy scale carrier boxes small_6001225_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6001225_right_root small_6001225_right_fuel small_6001225_right_count small_6001225_right_encoded small_6001225_right_checked

theorem cover_6001225 : CoveredBy scale carrier boxes root_6001225 := by
  apply coveredBy_split_literal root_6001225 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0416.root_6001226 small_6001225_right_root coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0416.cover_6001226
  · exact small_6001225_right_covered
#print axioms cover_6001225

def root_6001220 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6001220_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6001220_right_fuel : Nat := 1
def small_6001220_right_count : Nat := 1
def small_6001220_right_encoded : String := "00000001"
theorem small_6001220_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6001220_right_root small_6001220_right_fuel small_6001220_right_count small_6001220_right_encoded = true := by
  decide +kernel
theorem small_6001220_right_covered : CoveredBy scale carrier boxes small_6001220_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6001220_right_root small_6001220_right_fuel small_6001220_right_count small_6001220_right_encoded small_6001220_right_checked

theorem cover_6001220 : CoveredBy scale carrier boxes root_6001220 := by
  apply coveredBy_split_literal root_6001220 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0416.root_6001225 small_6001220_right_root coord1 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0416.cover_6001225
  · exact small_6001220_right_covered
#print axioms cover_6001220

def root_6001219 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6001219_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6001219_right_fuel : Nat := 29
def small_6001219_right_count : Nat := 365
def small_6001219_right_encoded : String := "12073CF80000000108A91307120701060000000305000100135D44F7050000FA135D80FB00000002050000FE135D80FF000000040CFD9C030F34D0F804548A0713867106000000030280010013D7B0F7078000FA0000000A128A40FB0000000A000000020000000013D7ECF700000000078000FA128A7CFB00000002078000FE128A7CFF000000040AD3578310D100F80000000A00000001000000050000000A128A40FB078000FE128A7CFF000000040AD3578310D100F800000009000000010000000700000009000000020000000A000000010F350CF80000000104548A0713867106000000030C9A86F80000000A0000000A000000050000000A135D44FB050000FE135D80FF000000040CFD9C030F34D0F804548A070000000900000006000000010F350CF80000000104548A070000000700000006135D44FF0CFD9C030F34D0F8000000090000000100000009000000040000000200000000135D80F700000000050000FA135D80FB00000002050000FE135D80FF000000040CFD9C030F34D0F804548A07138671060000000307800100128A40F7078000FA128A7CFB00000002078000FE128A7CFF000000040AD3578310D100F8022A458713E1C506000000030640010012FF70F708C000FA0000000A000000090000000012FFACF70000000008C000FA11FC24FB0000000208C000FE000000050000000900000009000000050000000100000005128A40FF0AD3578310D100F800000009000000010000000900000004128A40FB078000FE128A7CFF000000040AD3578310D100F8000000090000000100000009000000090000000200000000128A7CF700000000078000FA128A7CFB00000002078000FE128A7CFF000000040AD3578310D100F8022A458713E1C5060000000308C0010011FBE8F708C000FA11FC24FB0000000200000005000000090000000011FC24F70000000000000008000000050000000100000005128A40FF0AD3578310D100F800000009000000010000000900000004128A40FB078000FE128A7CFF000000040AD3578310D100F800000009000000010000000900000009000000021386AD0607800100128A40F7078000FA0000000A128A40FB0000000A0000000200000000128A7CF700000000078000FA128A7CFB0000000200000005128A40FB078000FE128A7CFF00000004000000050000000A0000000200000003000000010F350CF80000000104548A0713867106000000030C9A86F80F878D0307800100128A40F7078000FA0000000A0000000900000000128A7CF700000000078000FA128A7CFB00000002078000FE000000050000000900000009000000010F875103000000010780010000000009128A7CF700000000078000FA128A7CFB00000002078000FE0000000500000009000000091386AD060C9A86F8000000050F875103000000010000000500000003135D44FF0CFD9C030F34D0F804548A0713867106000000030780010000000009000000090000000A000000010F350CF80000000104548A07000000090000000A00000004135D44FB050000FE135D80FF000000040CFD9C030F34D0F804548A0713867106000000030780010000000009000000091386AD0607800100128A40F7028000FA0000000A0000000600000000128A7CF700000000028000FA13D7ECFB00000002078000FE128A7CFF0000000400000008000000090000000900000003000000010F350CF80000000104548A07000000091386AD060C9A86F80F878D03078001000000000900000009000000010F875103000000010000000900000003135D44FF0CFD9C030F34D0F8000000090000000100000009000000040000000212073D0605000100135D44F70000000A00000000135D80F700000000050000FA135D80FB00000002050000FE135D80FF000000040CFD9C030F34D0F80000000500000001000000050000000A135D44FB050000FE135D80FF000000040CFD9C030F34D0F80000000A000000010000000A0000000A0000000200000003"
theorem small_6001219_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6001219_right_root small_6001219_right_fuel small_6001219_right_count small_6001219_right_encoded = true := by
  decide +kernel
theorem small_6001219_right_covered : CoveredBy scale carrier boxes small_6001219_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6001219_right_root small_6001219_right_fuel small_6001219_right_count small_6001219_right_encoded small_6001219_right_checked

theorem cover_6001219 : CoveredBy scale carrier boxes root_6001219 := by
  apply coveredBy_split_literal root_6001219 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0416.root_6001220 small_6001219_right_root coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0416.cover_6001220
  · exact small_6001219_right_covered
#print axioms cover_6001219

def root_6001214 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6001214_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_6001214_right_fuel : Nat := 1
def small_6001214_right_count : Nat := 1
def small_6001214_right_encoded : String := "00000004"
theorem small_6001214_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_6001214_right_root small_6001214_right_fuel small_6001214_right_count small_6001214_right_encoded = true := by
  decide +kernel
theorem small_6001214_right_covered : CoveredBy scale carrier boxes small_6001214_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_6001214_right_root small_6001214_right_fuel small_6001214_right_count small_6001214_right_encoded small_6001214_right_checked

theorem cover_6001214 : CoveredBy scale carrier boxes root_6001214 := by
  apply coveredBy_split_literal root_6001214 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0416.root_6001219 small_6001214_right_root coord4 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0416.cover_6001219
  · exact small_6001214_right_covered
#print axioms cover_6001214

def root_5998470 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5998470 : CoveredBy scale carrier boxes root_5998470 := by
  apply coveredBy_split_literal root_5998470 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2258.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0416.root_6001214 coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2258.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0416.cover_6001214
#print axioms cover_5998470

def root_5998465 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5998465_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5998465_right_fuel : Nat := 1
def small_5998465_right_count : Nat := 1
def small_5998465_right_encoded : String := "00000003"
theorem small_5998465_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5998465_right_root small_5998465_right_fuel small_5998465_right_count small_5998465_right_encoded = true := by
  decide +kernel
theorem small_5998465_right_covered : CoveredBy scale carrier boxes small_5998465_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5998465_right_root small_5998465_right_fuel small_5998465_right_count small_5998465_right_encoded small_5998465_right_checked

theorem cover_5998465 : CoveredBy scale carrier boxes root_5998465 := by
  apply coveredBy_split_literal root_5998465 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0416.root_5998470 small_5998465_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0416.cover_5998470
  · exact small_5998465_right_covered
#print axioms cover_5998465

def root_5998433 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5998433_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5998433_left_fuel : Nat := 8
def small_5998433_left_count : Nat := 15
def small_5998433_left_encoded : String := "1151E907000000030A0000FE115224FF0000000408A91303120700F808A912FF12073CFE00000004000000050000000500000001000000050000000A"
theorem small_5998433_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5998433_left_root small_5998433_left_fuel small_5998433_left_count small_5998433_left_encoded = true := by
  decide +kernel
theorem small_5998433_left_covered : CoveredBy scale carrier boxes small_5998433_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5998433_left_root small_5998433_left_fuel small_5998433_left_count small_5998433_left_encoded small_5998433_left_checked

theorem cover_5998433 : CoveredBy scale carrier boxes root_5998433 := by
  apply coveredBy_split_literal root_5998433 small_5998433_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0416.root_5998465 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_5998433_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0416.cover_5998465
#print axioms cover_5998433

def root_5998428 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5998428_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5998428_right_fuel : Nat := 1
def small_5998428_right_count : Nat := 1
def small_5998428_right_encoded : String := "00000002"
theorem small_5998428_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5998428_right_root small_5998428_right_fuel small_5998428_right_count small_5998428_right_encoded = true := by
  decide +kernel
theorem small_5998428_right_covered : CoveredBy scale carrier boxes small_5998428_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5998428_right_root small_5998428_right_fuel small_5998428_right_count small_5998428_right_encoded small_5998428_right_checked

theorem cover_5998428 : CoveredBy scale carrier boxes root_5998428 := by
  apply coveredBy_split_literal root_5998428 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0416.root_5998433 small_5998428_right_root coord2 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0416.cover_5998433
  · exact small_5998428_right_covered
#print axioms cover_5998428

def root_5989620 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5989620 : CoveredBy scale carrier boxes root_5989620 := by
  apply coveredBy_split_literal root_5989620 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0415.root_5989621 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0416.root_5998428 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0415.cover_5989621
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0416.cover_5998428
#print axioms cover_5989620

def root_5989615 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5989615_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5989615_right_fuel : Nat := 1
def small_5989615_right_count : Nat := 1
def small_5989615_right_encoded : String := "00000001"
theorem small_5989615_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5989615_right_root small_5989615_right_fuel small_5989615_right_count small_5989615_right_encoded = true := by
  decide +kernel
theorem small_5989615_right_covered : CoveredBy scale carrier boxes small_5989615_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5989615_right_root small_5989615_right_fuel small_5989615_right_count small_5989615_right_encoded small_5989615_right_checked

theorem cover_5989615 : CoveredBy scale carrier boxes root_5989615 := by
  apply coveredBy_split_literal root_5989615 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0416.root_5989620 small_5989615_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0416.cover_5989620
  · exact small_5989615_right_covered
#print axioms cover_5989615

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0416
