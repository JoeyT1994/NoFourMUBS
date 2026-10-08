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
def state_2327108 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 58) else (if j.val < 3 then 43 else (if j.val < 4 then 62 else 44)))
def hex_2327108 : String := "444241430640070606414306404409094406060642414306404442050505060641430640444209090844060606"
theorem cover_2327108 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2327108 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 45) (hex := hex_2327108)
  decide +kernel
#print axioms cover_2327108

def state_2327154 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 58) else (if j.val < 3 then 43 else (if j.val < 4 then 63 else 44)))
def hex_2327154 : String := "444205414340054407050705420505"
theorem cover_2327154 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2327154 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 15) (hex := hex_2327154)
  decide +kernel
#print axioms cover_2327154

def state_2327170 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 58) else (if j.val < 3 then 43 else (if j.val < 4 then 63 else 88)))
def hex_2327170 : String := "42074143404442070942070944420741430683064241430683064143068306834340070607"
theorem cover_2327170 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2327170 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 37) (hex := hex_2327170)
  decide +kernel
#print axioms cover_2327170

def state_2327207 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 58) else (if j.val < 3 then 43 else (if j.val < 4 then 63 else 89)))
def hex_2327207 : String := "4241434005440A050505414340444205050544424143068305414306830642050840054483054340050505"
theorem cover_2327207 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2327207 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 43) (hex := hex_2327207)
  decide +kernel
#print axioms cover_2327207

def state_2327250 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 59) else (if j.val < 3 then 43 else (if j.val < 4 then 31 else 44)))
def hex_2327250 : String := "434009064005440705"
theorem cover_2327250 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2327250 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 9) (hex := hex_2327250)
  decide +kernel
#print axioms cover_2327250

def state_2327259 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 29) else (if j.val < 3 then 21 else (if j.val < 4 then 31 else 45)))
def hex_2327259 : String := "42414340054442054108050505054143400844424143060805414306080608400544420508054340050605"
theorem cover_2327259 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2327259 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 43) (hex := hex_2327259)
  decide +kernel
#print axioms cover_2327259

def state_2327303 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 20 else (if j.val < 4 then 15 else 23)))
def hex_2327303 : String := "41434044410805054441420A43400807084208430808084005444108080543400544410A050505"
theorem cover_2327303 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2327303 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 39) (hex := hex_2327303)
  decide +kernel
#print axioms cover_2327303
end Mub6.Numerical.CircleFullD0.Forest
