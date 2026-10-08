import CircleFullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1647740 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 100) else (if j.val < 3 then 119 else (if j.val < 4 then 104 else 82)))
def hex_1647740 : String := "4143404244084143090843090A444108434007080809A0404208440508A04340424441430A080A410A0A440A0AA0404244080A0AA0"
theorem cover_1647740 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1647740 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 53) (hex := hex_1647740)
  decide +kernel
#print axioms cover_1647740

def state_1647793 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 100) else (if j.val < 3 then 119 else (if j.val < 4 then 104 else 83)))
def hex_1647793 : String := "41434009A0404442414309080A0A09A0434009A0400AA0"
theorem cover_1647793 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1647793 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 23) (hex := hex_1647793)
  decide +kernel
#print axioms cover_1647793

def state_1647816 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 100) else (if j.val < 3 then 59 else (if j.val < 4 then 105 else 41)))
def hex_1647816 : String := "42444108400843A00741404344080A0843A00740430A0A43A0074441400508400643A00841404344080A0843A04408424107070A400A43A0440A0A"
theorem cover_1647816 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1647816 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 59) (hex := hex_1647816)
  decide +kernel
#print axioms cover_1647816

def state_1647875 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 100) else (if j.val < 3 then 59 else (if j.val < 4 then 52 else 41)))
def hex_1647875 : String := "43A04244410707414043A007074043A0070744414043A007074043A00709414043A044070743A0074043A04407420741070743A007"
theorem cover_1647875 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1647875 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 53) (hex := hex_1647875)
  decide +kernel
#print axioms cover_1647875

def state_1647930 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 101) else (if j.val < 3 then 59 else (if j.val < 4 then 104 else 41)))
def hex_1647930 : String := "424441434042440A05440A0505400AA04305400A05414305400A050544414340420A0AA0400AA043400A050A4143400A05400AA043050A"
theorem cover_1647930 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1647930 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 55) (hex := hex_1647930)
  decide +kernel
#print axioms cover_1647930
end Mub6.Numerical.CircleFullD0.Forest
