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
def state_2295294 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 52) else (if j.val < 3 then 37 else (if j.val < 4 then 51 else 46)))
def hex_2295294 : String := "4044430A0A430A0A44434142400A0707420909410A420909434142400A070742404409060640440943060806410A42400A4443060906400807"
theorem cover_2295294 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2295294 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 57) (hex := hex_2295294)
  decide +kernel
#print axioms cover_2295294

def state_2295351 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 53) else (if j.val < 3 then 18 else (if j.val < 4 then 51 else 46)))
def hex_2295351 : String := "4240074409064008440943064142090806"
theorem cover_2295351 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2295351 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_2295351)
  decide +kernel
#print axioms cover_2295351

def state_2295371 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 52) else (if j.val < 3 then 36 else (if j.val < 4 then 50 else 47)))
def hex_2295371 : String := "4044434140420544430605050606414005420544430605050543060506"
theorem cover_2295371 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2295371 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 29) (hex := hex_2295371)
  decide +kernel
#print axioms cover_2295371

def state_2295400 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 52) else (if j.val < 3 then 37 else (if j.val < 4 then 50 else 47)))
def hex_2295400 : String := "4044434142404443410A060A43410A050506400A0742064044080606410A424005064005440906434142400506400A0606410A0544430641070606"
theorem cover_2295400 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2295400 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 59) (hex := hex_2295400)
  decide +kernel
#print axioms cover_2295400

def state_2295459 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 53) else (if j.val < 3 then 18 else (if j.val < 4 then 50 else 47)))
def hex_2295459 : String := "420640444306080506"
theorem cover_2295459 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2295459 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_2295459)
  decide +kernel
#print axioms cover_2295459

def state_2295469 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 52) else (if j.val < 3 then 18 else (if j.val < 4 then 51 else 47)))
def hex_2295469 : String := "424005444341420640444306050506064142054005444306050505430605400A44434107420640444306050506410A420540050743410706410705"
theorem cover_2295469 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2295469 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 59) (hex := hex_2295469)
  decide +kernel
#print axioms cover_2295469

def state_2295528 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 53) else (if j.val < 3 then 18 else (if j.val < 4 then 51 else 47)))
def hex_2295528 : String := "420540054443060505"
theorem cover_2295528 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2295528 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_2295528)
  decide +kernel
#print axioms cover_2295528
end Mub6.Numerical.CircleFullD0.Forest
