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
def state_1042347 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 4)))
def hex_1042347 : String := "404241430A0A0A41050542414344070A074344080808414344400542070540420A05420A0544050543440840420A05420841050508"
theorem cover_1042347 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1042347 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 53) (hex := hex_1042347)
  decide +kernel
#print axioms cover_1042347

def state_1042400 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 5)))
def hex_1042400 : String := "4042440A0A440A41430A050A42440A4143060A064441430A0A0A41430A44090A0A"
theorem cover_1042400 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1042400 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 33) (hex := hex_1042400)
  decide +kernel
#print axioms cover_1042400

def state_1042435 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 4)))
def hex_1042435 : String := "40434107074105054341090741424440054309050909424440430705430705404307054309410505440507"
theorem cover_1042435 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1042435 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 43) (hex := hex_1042435)
  decide +kernel
#print axioms cover_1042435

def state_1042478 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 5)))
def hex_1042478 : String := "4043074441080707434409074441094240070907410807"
theorem cover_1042478 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1042478 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_1042478)
  decide +kernel
#print axioms cover_1042478

def state_1042501 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 2)))
def hex_1042501 : String := "444005410505404405054441094243400509050541090A"
theorem cover_1042501 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1042501 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 23) (hex := hex_1042501)
  decide +kernel
#print axioms cover_1042501

def state_1042526 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 2)))
def hex_1042526 : String := "44404142430744090A074243060907414206430644404142430608070706060640414206070606"
theorem cover_1042526 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1042526 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 39) (hex := hex_1042526)
  decide +kernel
#print axioms cover_1042526

def state_1042565 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 2)))
def hex_1042565 : String := "44404142094344090A0509414208434408400A0808420843440806080A"
theorem cover_1042565 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1042565 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 29) (hex := hex_1042565)
  decide +kernel
#print axioms cover_1042565
end Mub6.Numerical.CircleFullD0.Forest
