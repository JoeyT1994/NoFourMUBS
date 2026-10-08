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
def state_1575245 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 46) else (if j.val < 3 then 28 else (if j.val < 4 then 28 else 47)))
def hex_1575245 : String := "404243094405090942434441060641060644410540054306054140050A404342060908430642064405410540050643094405410540054243090505"
theorem cover_1575245 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1575245 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 59) (hex := hex_1575245)
  decide +kernel
#print axioms cover_1575245

def state_1575305 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 47) else (if j.val < 3 then 28 else (if j.val < 4 then 28 else 46)))
def hex_1575305 : String := "404208434105080542434144060644060608434144054005420605444005074042430608094206430641054405400506410544054005420705"
theorem cover_1575305 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1575305 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 57) (hex := hex_1575305)
  decide +kernel
#print axioms cover_1575305

def state_1575363 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 47) else (if j.val < 3 then 28 else (if j.val < 4 then 28 else 47)))
def hex_1575363 : String := "4243410908084309410908"
theorem cover_1575363 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1575363 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 11) (hex := hex_1575363)
  decide +kernel
#print axioms cover_1575363

def state_1575375 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 47) else (if j.val < 3 then 56 else (if j.val < 4 then 28 else 47)))
def hex_1575375 : String := "4306414440084306084008430642064408414008060844084008430608"
theorem cover_1575375 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1575375 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 29) (hex := hex_1575375)
  decide +kernel
#print axioms cover_1575375

def state_1575405 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 47) else (if j.val < 3 then 57 else (if j.val < 4 then 56 else 47)))
def hex_1575405 : String := "414440094206090944400942064306410944400906094007420609"
theorem cover_1575405 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1575405 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 27) (hex := hex_1575405)
  decide +kernel
#print axioms cover_1575405

def state_1575433 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 94) else (if j.val < 3 then 57 else (if j.val < 4 then 57 else 47)))
def hex_1575433 : String := "4440054243410544054005060505404243090505424344410940090609444105400505414005054042080542430608430905430905"
theorem cover_1575433 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1575433 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 53) (hex := hex_1575433)
  decide +kernel
#print axioms cover_1575433
end Mub6.Numerical.CircleFullD0.Forest
