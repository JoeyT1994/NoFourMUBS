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
def state_2551346 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 47) else (if j.val < 3 then 28 else (if j.val < 4 then 27 else 23)))
def hex_2551346 : String := "444042430841440740070807430841444006080844074007084243084144050844400705400808430841084440080508404243084108444007080808420808"
theorem cover_2551346 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2551346 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 63) (hex := hex_2551346)
  decide +kernel
#print axioms cover_2551346

def state_2551409 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 23) else (if j.val < 3 then 29 else (if j.val < 4 then 27 else 23)))
def hex_2551409 : String := "41444042430806064208054008084440424308414406064406400608430806424308410808084042080808"
theorem cover_2551409 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2551409 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 43) (hex := hex_2551409)
  decide +kernel
#print axioms cover_2551409

def state_2551453 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 22) else (if j.val < 3 then 15 else (if j.val < 4 then 13 else 11)))
def hex_2551453 : String := "44400605400A43070A"
theorem cover_2551453 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2551453 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_2551453)
  decide +kernel
#print axioms cover_2551453

def state_2551462 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 23) else (if j.val < 3 then 15 else (if j.val < 4 then 13 else 11)))
def hex_2551462 : String := "4440434241064406080606430842410544054006050640430A0A43084241444006050A44404308064308420806400A0841094440060809"
theorem cover_2551462 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2551462 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 55) (hex := hex_2551462)
  decide +kernel
#print axioms cover_2551462

def state_2551518 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 5)))
def hex_2551518 : String := "05"
theorem cover_2551518 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2551518 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_2551518)
  decide +kernel
#print axioms cover_2551518

def state_2551520 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 7 else (if j.val < 4 then 12 else 5)))
def hex_2551520 : String := "4405420805"
theorem cover_2551520 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2551520 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_2551520)
  decide +kernel
#print axioms cover_2551520

def state_2551526 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 7 else (if j.val < 4 then 13 else 10)))
def hex_2551526 : String := "05"
theorem cover_2551526 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2551526 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_2551526)
  decide +kernel
#print axioms cover_2551526

def state_2551528 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 14 else (if j.val < 4 then 13 else 11)))
def hex_2551528 : String := "40414405430542050544430542050543084241440540080544404243050508054042060806414405084440080540080841054405430505"
theorem cover_2551528 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2551528 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 55) (hex := hex_2551528)
  decide +kernel
#print axioms cover_2551528

def state_2551583 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 15 else (if j.val < 4 then 13 else 11)))
def hex_2551583 : String := "40410544054308424105080705"
theorem cover_2551583 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2551583 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_2551583)
  decide +kernel
#print axioms cover_2551583

def state_2551597 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 4)))
def hex_2551597 : String := "05"
theorem cover_2551597 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2551597 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_2551597)
  decide +kernel
#print axioms cover_2551597
end Mub6.Numerical.CircleFullD0.Forest
