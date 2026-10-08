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
def state_1508241 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 23) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 15)))
def hex_1508241 : String := "434244400508050542444006414342090642090909400541430542070505440605"
theorem cover_1508241 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1508241 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 33) (hex := hex_1508241)
  decide +kernel
#print axioms cover_1508241

def state_1508276 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 22) else (if j.val < 3 then 10 else (if j.val < 4 then 24 else 15)))
def hex_1508276 : String := "424443084041424408430540050808080843400508400541080808"
theorem cover_1508276 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1508276 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 27) (hex := hex_1508276)
  decide +kernel
#print axioms cover_1508276

def state_1508310 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 44) else (if j.val < 3 then 40 else (if j.val < 4 then 50 else 60)))
def hex_1508310 : String := "404341080841424440430841424408400708080808404341050541420905420705430841060808424408404308414207080A08084308410808"
theorem cover_1508310 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1508310 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 57) (hex := hex_1508310)
  decide +kernel
#print axioms cover_1508310

def state_1508367 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 44) else (if j.val < 3 then 40 else (if j.val < 4 then 50 else 61)))
def hex_1508367 : String := "404305414244400506050542444005430541050A0505434108084106420608"
theorem cover_1508367 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1508367 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 31) (hex := hex_1508367)
  decide +kernel
#print axioms cover_1508367

def state_1508398 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 44) else (if j.val < 3 then 41 else (if j.val < 4 then 50 else 30)))
def hex_1508398 : String := "4408400508"
theorem cover_1508398 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1508398 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1508398)
  decide +kernel
#print axioms cover_1508398

def state_1508409 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 88) else (if j.val < 3 then 80 else (if j.val < 4 then 102 else 60)))
def hex_1508409 : String := "4440434142074408404307070A0A0A0A404341420644400709054207440A054107074341060A06"
theorem cover_1508409 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1508409 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 39) (hex := hex_1508409)
  decide +kernel
#print axioms cover_1508409

def state_1508449 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 88) else (if j.val < 3 then 81 else (if j.val < 4 then 102 else 120)))
def hex_1508449 : String := "4043084142440A40434108070743080A08420A0808"
theorem cover_1508449 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1508449 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 21) (hex := hex_1508449)
  decide +kernel
#print axioms cover_1508449
end Mub6.Numerical.CircleFullD0.Forest
