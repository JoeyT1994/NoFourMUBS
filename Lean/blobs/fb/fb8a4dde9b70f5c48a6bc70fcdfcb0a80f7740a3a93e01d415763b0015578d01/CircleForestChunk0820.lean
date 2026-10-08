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
def state_1497463 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 42) else (if j.val < 3 then 41 else (if j.val < 4 then 102 else 59)))
def hex_1497463 : String := "414442400A08070A440842400A0805"
theorem cover_1497463 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1497463 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 15) (hex := hex_1497463)
  decide +kernel
#print axioms cover_1497463

def state_1497479 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 84) else (if j.val < 3 then 41 else (if j.val < 4 then 103 else 59)))
def hex_1497479 : String := "444240430A41094442090709090A0A"
theorem cover_1497479 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1497479 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_1497479)
  decide +kernel
#print axioms cover_1497479

def state_1497495 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 85) else (if j.val < 3 then 41 else (if j.val < 4 then 103 else 118)))
def hex_1497495 : String := "4240434144080A084144424043410707410944050909074209074442404306050507424043410908410944054205070908430841090808"
theorem cover_1497495 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1497495 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 55) (hex := hex_1497495)
  decide +kernel
#print axioms cover_1497495

def state_1497550 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 85) else (if j.val < 3 then 41 else (if j.val < 4 then 103 else 119)))
def hex_1497550 : String := "4240434109444209070A410A444240430909090A0A430909400A08"
theorem cover_1497550 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1497550 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 27) (hex := hex_1497550)
  decide +kernel
#print axioms cover_1497550

def state_1497577 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 42) else (if j.val < 3 then 41 else (if j.val < 4 then 51 else 59)))
def hex_1497577 : String := "430841094408420907"
theorem cover_1497577 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1497577 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1497577)
  decide +kernel
#print axioms cover_1497577

def state_1497587 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 43) else (if j.val < 3 then 20 else (if j.val < 4 then 51 else 58)))
def hex_1497587 : String := "424043414405420508440542050541050543080540430641080608"
theorem cover_1497587 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1497587 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 27) (hex := hex_1497587)
  decide +kernel
#print axioms cover_1497587

def state_1497618 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 86) else (if j.val < 3 then 40 else (if j.val < 4 then 102 else 59)))
def hex_1497618 : String := "42444043410942050841090509404309410909094440430841440842090808084043410908414209094244404308410908080908430809"
theorem cover_1497618 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1497618 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 55) (hex := hex_1497618)
  decide +kernel
#print axioms cover_1497618
end Mub6.Numerical.CircleFullD0.Forest
