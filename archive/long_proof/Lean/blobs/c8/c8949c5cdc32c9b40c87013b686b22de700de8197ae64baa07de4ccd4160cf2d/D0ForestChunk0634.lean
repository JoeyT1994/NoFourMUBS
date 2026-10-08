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
def state_1341064 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 30 else 49) else (if j.val < 3 then 44 else (if j.val < 4 then 37 else 47)))
def hex_1341064 : String := "404441420A05424340050A05434005440941050905410A424308054340050A0544410A420A09410A420A0A"
theorem cover_1341064 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1341064 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 43) (hex := hex_1341064)
  decide +kernel
#print axioms cover_1341064

def state_1341107 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 30 else 49) else (if j.val < 3 then 45 else (if j.val < 4 then 18 else 47)))
def hex_1341107 : String := "4340444109424307090741060709400509"
theorem cover_1341107 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1341107 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 17) (hex := hex_1341107)
  decide +kernel
#print axioms cover_1341107

def state_1341124 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 31 else 24) else (if j.val < 3 then 22 else (if j.val < 4 then 18 else 23)))
def hex_1341124 : String := "410944094243050A09"
theorem cover_1341124 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1341124 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1341124)
  decide +kernel
#print axioms cover_1341124

def state_1341133 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 24) else (if j.val < 3 then 22 else (if j.val < 4 then 19 else 23)))
def hex_1341133 : String := "40414405420705444243400507050542434005444107420705410742070A050541074409420709"
theorem cover_1341133 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1341133 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 39) (hex := hex_1341133)
  decide +kernel
#print axioms cover_1341133

def state_1341172 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 24) else (if j.val < 3 then 23 else (if j.val < 4 then 9 else 11)))
def hex_1341172 : String := "4409434041090909400508"
theorem cover_1341172 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1341172 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_1341172)
  decide +kernel
#print axioms cover_1341172

def state_1341185 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 25) else (if j.val < 3 then 22 else (if j.val < 4 then 9 else 22)))
def hex_1341185 : String := "4340414206090606404142440543400506050542060A410906"
theorem cover_1341185 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1341185 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 25) (hex := hex_1341185)
  decide +kernel
#print axioms cover_1341185

def state_1341215 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 30 else 50) else (if j.val < 3 then 44 else (if j.val < 4 then 18 else 46)))
def hex_1341215 : String := "434044064142064340070940440941420805070906064044414206430905064142434008064005064340050905420643060544064142060906"
theorem cover_1341215 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1341215 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 57) (hex := hex_1341215)
  decide +kernel
#print axioms cover_1341215

def state_1341272 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 30 else 50) else (if j.val < 3 then 45 else (if j.val < 4 then 18 else 46)))
def hex_1341272 : String := "434044094109070940440941050909"
theorem cover_1341272 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1341272 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 15) (hex := hex_1341272)
  decide +kernel
#print axioms cover_1341272

def state_1341287 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 30 else 51) else (if j.val < 3 then 22 else (if j.val < 4 then 18 else 46)))
def hex_1341287 : String := "4206434007060A"
theorem cover_1341287 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1341287 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1341287)
  decide +kernel
#print axioms cover_1341287
end Mub6.Numerical.CircleFullD0.Forest
