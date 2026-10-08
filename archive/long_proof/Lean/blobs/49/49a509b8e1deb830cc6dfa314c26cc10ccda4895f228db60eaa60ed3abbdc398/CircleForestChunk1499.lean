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
def state_1660464 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 49) else (if j.val < 3 then 29 else (if j.val < 4 then 57 else 47)))
def hex_1660464 : String := "424441400A070A41400A430542054407050A44414043420A0606434244070808420706400643420A080A414043420A06064308424441080A0806400A43050A"
theorem cover_1660464 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1660464 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 63) (hex := hex_1660464)
  decide +kernel
#print axioms cover_1660464

def state_1660527 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 49) else (if j.val < 3 then 29 else (if j.val < 4 then 28 else 47)))
def hex_1660527 : String := "4342050842440705440708"
theorem cover_1660527 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1660527 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 11) (hex := hex_1660527)
  decide +kernel
#print axioms cover_1660527

def state_1660539 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 48) else (if j.val < 3 then 29 else (if j.val < 4 then 29 else 23)))
def hex_1660539 : String := "440740424341444042070507404243EA06064207434144074043080607440740060706440740420A0642074344074140060740060706060607"
theorem cover_1660539 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1660539 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 14) (count := 57) (hex := hex_1660539)
  decide +kernel
#print axioms cover_1660539

def state_1660596 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 49) else (if j.val < 3 then 29 else (if j.val < 4 then 29 else 23)))
def hex_1660596 : String := "4407404243444107070A060607"
theorem cover_1660596 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1660596 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1660596)
  decide +kernel
#print axioms cover_1660596

def state_1660610 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 22)))
def hex_1660610 : String := "42074340414407434207410707070A0707"
theorem cover_1660610 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1660610 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 17) (hex := hex_1660610)
  decide +kernel
#print axioms cover_1660610

def state_1660627 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 23)))
def hex_1660627 : String := "424344400A05050A4344404143420A4441400A070A410A050A0A414342054405050705404143050A050544400707400A410705"
theorem cover_1660627 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1660627 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 51) (hex := hex_1660627)
  decide +kernel
#print axioms cover_1660627

def state_1660678 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 12) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 11)))
def hex_1660678 : String := "41440742074340410A4407430507060744074205430507"
theorem cover_1660678 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1660678 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 23) (hex := hex_1660678)
  decide +kernel
#print axioms cover_1660678
end Mub6.Numerical.CircleFullD0.Forest
