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
def state_1507991 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 89) else (if j.val < 3 then 40 else (if j.val < 4 then 51 else 60)))
def hex_1507991 : String := "43424440070A07440640410506414305420705430542070542074440060A40074143070707"
theorem cover_1507991 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1507991 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 37) (hex := hex_1507991)
  decide +kernel
#print axioms cover_1507991

def state_1508028 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 44) else (if j.val < 3 then 40 else (if j.val < 4 then 51 else 61)))
def hex_1508028 : String := "4041430507430507414342070542074440074143050707054342070542074440070705"
theorem cover_1508028 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1508028 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 35) (hex := hex_1508028)
  decide +kernel
#print axioms cover_1508028

def state_1508064 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 44) else (if j.val < 3 then 41 else (if j.val < 4 then 51 else 60)))
def hex_1508064 : String := "4006414342440605054244400641430688064041050641430588430542444006414305070605054406054306424406400641430642440605060606"
theorem cover_1508064 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1508064 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 14) (count := 59) (hex := hex_1508064)
  decide +kernel
#print axioms cover_1508064

def state_1508123 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 44) else (if j.val < 3 then 41 else (if j.val < 4 then 51 else 61)))
def hex_1508123 : String := "400541054305420505"
theorem cover_1508123 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1508123 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1508123)
  decide +kernel
#print axioms cover_1508123

def state_1508133 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 45) else (if j.val < 3 then 20 else (if j.val < 4 then 50 else 30)))
def hex_1508133 : String := "4244400641430842440640060A06094005410505440605"
theorem cover_1508133 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1508133 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 23) (hex := hex_1508133)
  decide +kernel
#print axioms cover_1508133

def state_1508156 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 45) else (if j.val < 3 then 20 else (if j.val < 4 then 51 else 30)))
def hex_1508156 : String := "424440094143420A090A0A40410707414342070507434207050744064006414305424440054105050505430509"
theorem cover_1508156 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1508156 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 45) (hex := hex_1508156)
  decide +kernel
#print axioms cover_1508156

def state_1508201 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 20 else (if j.val < 4 then 25 else 31)))
def hex_1508201 : String := "404105054143054244400541050505054305424440054105050505"
theorem cover_1508201 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1508201 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 27) (hex := hex_1508201)
  decide +kernel
#print axioms cover_1508201

def state_1508228 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 21 else (if j.val < 4 then 25 else 15)))
def hex_1508228 : String := "44400641430542440605050605"
theorem cover_1508228 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1508228 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1508228)
  decide +kernel
#print axioms cover_1508228
end Mub6.Numerical.CircleFullD0.Forest
