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
def state_1034190 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 191 else 103) else (if j.val < 3 then 103 else (if j.val < 4 then 75 else 126)))
def hex_1034190 : String := "414243440584444041420A43050A0A4105058443094440414243090A09090984424305444008058409"
theorem cover_1034190 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1034190 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 41) (hex := hex_1034190)
  decide +kernel
#print axioms cover_1034190

def state_1034231 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 103) else (if j.val < 3 then 103 else (if j.val < 4 then 75 else 127)))
def hex_1034231 : String := "84"
theorem cover_1034231 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1034231 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1034231)
  decide +kernel
#print axioms cover_1034231

def state_1034233 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 25) else (if j.val < 3 then 25 else (if j.val < 4 then 19 else 30)))
def hex_1034233 : String := "40410A0A414243440A400907064344400A06404142090A0A414206064206060A420A43440A400A410A0A0A"
theorem cover_1034233 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1034233 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 43) (hex := hex_1034233)
  decide +kernel
#print axioms cover_1034233

def state_1034277 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 25) else (if j.val < 3 then 25 else (if j.val < 4 then 19 else 31)))
def hex_1034277 : String := "4109420943440A400A41090A0A"
theorem cover_1034277 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1034277 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1034277)
  decide +kernel
#print axioms cover_1034277

def state_1034292 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 50) else (if j.val < 3 then 50 else (if j.val < 4 then 19 else 31)))
def hex_1034292 : String := "09"
theorem cover_1034292 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1034292 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1034292)
  decide +kernel
#print axioms cover_1034292

def state_1034296 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 50) else (if j.val < 3 then 51 else (if j.val < 4 then 38 else 62)))
def hex_1034296 : String := "4109420943440A0909"
theorem cover_1034296 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1034296 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1034296)
  decide +kernel
#print axioms cover_1034296

def state_1034305 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 50) else (if j.val < 3 then 51 else (if j.val < 4 then 38 else 62)))
def hex_1034305 : String := "41420943444009060809424344400906090943444041420643440609060A064041094209434440094106060909410842064344060806440609"
theorem cover_1034305 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1034305 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 57) (hex := hex_1034305)
  decide +kernel
#print axioms cover_1034305

def state_1034362 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 50) else (if j.val < 3 then 51 else (if j.val < 4 then 38 else 63)))
def hex_1034362 : String := "4009410942094344400941084208080909"
theorem cover_1034362 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1034362 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 17) (hex := hex_1034362)
  decide +kernel
#print axioms cover_1034362

def state_1034379 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 50) else (if j.val < 3 then 51 else (if j.val < 4 then 39 else 31)))
def hex_1034379 : String := "09"
theorem cover_1034379 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1034379 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1034379)
  decide +kernel
#print axioms cover_1034379

def state_1034381 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 51) else (if j.val < 3 then 50 else (if j.val < 4 then 19 else 31)))
def hex_1034381 : String := "4344400A4207410707400942074109434407090909"
theorem cover_1034381 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1034381 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 21) (hex := hex_1034381)
  decide +kernel
#print axioms cover_1034381

def state_1034405 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 51) else (if j.val < 3 then 51 else (if j.val < 4 then 38 else 62)))
def hex_1034405 : String := "41420A0A0A"
theorem cover_1034405 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1034405 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1034405)
  decide +kernel
#print axioms cover_1034405
end Mub6.Numerical.CircleFullD0.Forest
