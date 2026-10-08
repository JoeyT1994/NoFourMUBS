import CircleFullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_23473 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
def hex_23473 : String := "4243444006410A420A0A0A444041054205060540410A42080A410A420A0A43444041064406064144060644420A080A0A44064041430642090606410A430909"
theorem cover_23473 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_23473 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 63) (hex := hex_23473)
  decide +kernel
#print axioms cover_23473

def state_23536 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
def hex_23536 : String := "4243440940094241434409070A080944064008420843090843444009444142090709090A44400643440606064006430909"
theorem cover_23536 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_23536 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 49) (hex := hex_23536)
  decide +kernel
#print axioms cover_23536

def state_23586 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
def hex_23586 : String := "424344410542050A410A42400A4344050A050A44050A430A444105070A"
theorem cover_23586 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_23586 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 29) (hex := hex_23586)
  decide +kernel
#print axioms cover_23586

def state_23618 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 6)))
def hex_23618 : String := "424440414342050A0509054041434244060909060941054309054440410A0941054307054009410A09"
theorem cover_23618 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_23618 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 41) (hex := hex_23618)
  decide +kernel
#print axioms cover_23618

def state_23659 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 7)))
def hex_23659 : String := "42404143444240094144090808094208090A430908414344424144050808410A44090942080A4442050A084344420809080840410A09410A430909"
theorem cover_23659 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_23659 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 59) (hex := hex_23659)
  decide +kernel
#print axioms cover_23659
end Mub6.Numerical.CircleFullPrototype.Forest
