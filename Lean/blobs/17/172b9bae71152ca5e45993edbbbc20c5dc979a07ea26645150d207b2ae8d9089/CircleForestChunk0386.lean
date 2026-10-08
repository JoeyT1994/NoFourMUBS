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
def state_168114 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 19) else (if j.val < 3 then 25 else (if j.val < 4 then 23 else 15)))
def hex_168114 : String := "44430A4241400A4443420A074241400944090940084443064206060A090A400A4443064206060A41400844090740084406080A"
theorem cover_168114 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_168114 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 14) (count := 51) (hex := hex_168114)
  decide +kernel
#print axioms cover_168114

def state_168166 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 18) else (if j.val < 3 then 25 else (if j.val < 4 then 23 else 15)))
def hex_168166 : String := "07"
theorem cover_168166 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_168166 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_168166)
  decide +kernel
#print axioms cover_168166

def state_168169 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 25 else (if j.val < 4 then 46 else 30)))
def hex_168169 : String := "42404107050505"
theorem cover_168169 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_168169 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_168169)
  decide +kernel
#print axioms cover_168169

def state_168178 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 19) else (if j.val < 3 then 50 else (if j.val < 4 then 47 else 30)))
def hex_168178 : String := "414443424041070A4107440505078F4307424041070A410744430742400A41060A070707444342400605054240418F06418F0640418F0505430A420A400805"
theorem cover_168178 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_168178 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 63) (hex := hex_168178)
  decide +kernel
#print axioms cover_168178

def state_168242 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 38) else (if j.val < 3 then 50 else (if j.val < 4 then 47 else 30)))
def hex_168242 : String := "444342410705054241408F4443050606408F4405430542060541070543074241064044430706060607"
theorem cover_168242 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_168242 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 41) (hex := hex_168242)
  decide +kernel
#print axioms cover_168242

def state_168283 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 39) else (if j.val < 3 then 50 else (if j.val < 4 then 47 else 30)))
def hex_168283 : String := "4443054240418F0505054305424041444305420905430509050505"
theorem cover_168283 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_168283 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 27) (hex := hex_168283)
  decide +kernel
#print axioms cover_168283

def state_168310 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 51 else (if j.val < 4 then 47 else 30)))
def hex_168310 : String := "4041070505"
theorem cover_168310 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_168310 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_168310)
  decide +kernel
#print axioms cover_168310

def state_168315 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 25 else (if j.val < 4 then 23 else 31)))
def hex_168315 : String := "4307424041070A410744430542400A05050707"
theorem cover_168315 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_168315 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 19) (hex := hex_168315)
  decide +kernel
#print axioms cover_168315

def state_168335 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 7)))
def hex_168335 : String := "07"
theorem cover_168335 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_168335 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_168335)
  decide +kernel
#print axioms cover_168335

def state_168337 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 4) else (if j.val < 3 then 13 else (if j.val < 4 then 11 else 7)))
def hex_168337 : String := "410944434241090641070642410906094307420908"
theorem cover_168337 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_168337 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 21) (hex := hex_168337)
  decide +kernel
#print axioms cover_168337
end Mub6.Numerical.CircleFullPrototype.Forest
