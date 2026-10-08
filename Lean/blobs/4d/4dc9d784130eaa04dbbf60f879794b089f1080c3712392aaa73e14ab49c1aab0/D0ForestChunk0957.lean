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
def state_1530215 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 4 else 3)))
def hex_1530215 : String := "4440414442080942434007070843070844424340080A0809424340050608094144424341050908430741070907440A420A430740080740410742050507"
theorem cover_1530215 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1530215 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 61) (hex := hex_1530215)
  decide +kernel
#print axioms cover_1530215

def state_1530277 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 6)))
def hex_1530277 : String := "40414308080841080A"
theorem cover_1530277 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1530277 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 9) (hex := hex_1530277)
  decide +kernel
#print axioms cover_1530277

def state_1530287 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 7)))
def hex_1530287 : String := "41434244404143094408090808400506440840050742444041430909090A4009064440090840094143074244080508084342440805084244080508"
theorem cover_1530287 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1530287 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 59) (hex := hex_1530287)
  decide +kernel
#print axioms cover_1530287

def state_1530346 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 7)))
def hex_1530346 : String := "41430742440806084342060808"
theorem cover_1530346 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1530346 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 13) (hex := hex_1530346)
  decide +kernel
#print axioms cover_1530346

def state_1530359 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 2 else 3)))
def hex_1530359 : String := "4344404109420909410709400907444041080941424344080708080940414243080808084108420908"
theorem cover_1530359 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1530359 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 41) (hex := hex_1530359)
  decide +kernel
#print axioms cover_1530359

def state_1530401 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 2 else 3)))
def hex_1530401 : String := "434440440A41420505050A4005064440080A08"
theorem cover_1530401 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1530401 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 19) (hex := hex_1530401)
  decide +kernel
#print axioms cover_1530401
end Mub6.Numerical.CircleFullD0.Forest
