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
def state_2567232 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 97) else (if j.val < 3 then 58 else (if j.val < 4 then 56 else 95)))
def hex_2567232 : String := "4043064206444140430842080808404306420644070506414008060606"
theorem cover_2567232 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2567232 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 29) (hex := hex_2567232)
  decide +kernel
#print axioms cover_2567232

def state_2567262 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 96) else (if j.val < 3 then 59 else (if j.val < 4 then 56 else 47)))
def hex_2567262 : String := "4440430842414405084440430806054008080943050540430842080808"
theorem cover_2567262 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2567262 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 29) (hex := hex_2567262)
  decide +kernel
#print axioms cover_2567262

def state_2567294 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 97) else (if j.val < 3 then 59 else (if j.val < 4 then 112 else 94)))
def hex_2567294 : String := "08"
theorem cover_2567294 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2567294 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_2567294)
  decide +kernel
#print axioms cover_2567294

def state_2567297 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 194) else (if j.val < 3 then 118 else (if j.val < 4 then 113 else 94)))
def hex_2567297 : String := "4440430842414406080741064406094308420A4105054043084241084440070808094308420808"
theorem cover_2567297 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2567297 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 39) (hex := hex_2567297)
  decide +kernel
#print axioms cover_2567297

def state_2567336 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 195) else (if j.val < 3 then 118 else (if j.val < 4 then 113 else 94)))
def hex_2567336 : String := "4440434207080743080A4043084207444109074109074308420A440A09"
theorem cover_2567336 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2567336 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 29) (hex := hex_2567336)
  decide +kernel
#print axioms cover_2567336

def state_2567365 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 97) else (if j.val < 3 then 119 else (if j.val < 4 then 113 else 94)))
def hex_2567365 : String := "4144400909094440430842410607064308420A09400909"
theorem cover_2567365 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2567365 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_2567365)
  decide +kernel
#print axioms cover_2567365

def state_2567388 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 89 else 97) else (if j.val < 3 then 59 else (if j.val < 4 then 56 else 94)))
def hex_2567388 : String := "4308424144054008050A4109440A400909"
theorem cover_2567388 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2567388 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 17) (hex := hex_2567388)
  decide +kernel
#print axioms cover_2567388

def state_2567405 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 97) else (if j.val < 3 then 59 else (if j.val < 4 then 56 else 95)))
def hex_2567405 : String := "404308424441400808404308424441080505094306420609410840050609430842444108060609"
theorem cover_2567405 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2567405 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 39) (hex := hex_2567405)
  decide +kernel
#print axioms cover_2567405

def state_2567451 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 192) else (if j.val < 3 then 116 else (if j.val < 4 then 114 else 94)))
def hex_2567451 : String := "444043050505404342410544054007054105440508424105440540070541054405400605430505"
theorem cover_2567451 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2567451 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 39) (hex := hex_2567451)
  decide +kernel
#print axioms cover_2567451
end Mub6.Numerical.CircleFullD0.Forest
