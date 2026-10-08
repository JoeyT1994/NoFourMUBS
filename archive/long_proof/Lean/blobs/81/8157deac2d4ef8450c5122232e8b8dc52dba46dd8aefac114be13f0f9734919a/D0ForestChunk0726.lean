import D0FullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1475210 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 22) else (if j.val < 3 then 16 else (if j.val < 4 then 22 else 28)))
def hex_1475210 : String := "414344084240414307050808080A0A"
theorem cover_1475210 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1475210 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 15) (hex := hex_1475210)
  decide +kernel
#print axioms cover_1475210

def state_1475225 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 17 else (if j.val < 4 then 22 else 28)))
def hex_1475225 : String := "4041434408424041430606080808440842404341060641060643084108084006084308440642400908084143080808"
theorem cover_1475225 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1475225 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 47) (hex := hex_1475225)
  decide +kernel
#print axioms cover_1475225

def state_1475283 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 88) else (if j.val < 3 then 64 else (if j.val < 4 then 88 else 116)))
def hex_1475283 : String := "86"
theorem cover_1475283 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1475283 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1475283)
  decide +kernel
#print axioms cover_1475283

def state_1475285 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 192 else 88) else (if j.val < 3 then 65 else (if j.val < 4 then 88 else 116)))
def hex_1475285 : String := "41430A444286400A430A410A44080A0A43444286400507054442864041050541430744080508428605"
theorem cover_1475285 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1475285 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 41) (hex := hex_1475285)
  decide +kernel
#print axioms cover_1475285

def state_1475326 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 193 else 88) else (if j.val < 3 then 65 else (if j.val < 4 then 88 else 116)))
def hex_1475326 : String := "414307444286404307410707074286400A0743074442860842864041070507"
theorem cover_1475326 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1475326 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 31) (hex := hex_1475326)
  decide +kernel
#print axioms cover_1475326

def state_1475357 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 88) else (if j.val < 3 then 32 else (if j.val < 4 then 88 else 117)))
def hex_1475357 : String := "4240414306064305060640410A05410A43054442060505"
theorem cover_1475357 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1475357 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 23) (hex := hex_1475357)
  decide +kernel
#print axioms cover_1475357

def state_1475382 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 88) else (if j.val < 3 then 64 else (if j.val < 4 then 89 else 116)))
def hex_1475382 : String := "40438641440707440A420740074386074386414442064043090706060A"
theorem cover_1475382 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1475382 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 29) (hex := hex_1475382)
  decide +kernel
#print axioms cover_1475382

def state_1475416 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 192 else 176) else (if j.val < 3 then 130 else (if j.val < 4 then 178 else 232)))
def hex_1475416 : String := "86"
theorem cover_1475416 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1475416 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1475416)
  decide +kernel
#print axioms cover_1475416

def state_1475418 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 384 else 176) else (if j.val < 3 then 131 else (if j.val < 4 then 178 else 232)))
def hex_1475418 : String := "43410A444286060541444286060A44428606428605"
theorem cover_1475418 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1475418 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 21) (hex := hex_1475418)
  decide +kernel
#print axioms cover_1475418
end Mub6.Numerical.CircleFullD0.Forest
