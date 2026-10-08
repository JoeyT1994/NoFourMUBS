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
def state_1019230 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 29) else (if j.val < 3 then 18 else (if j.val < 4 then 25 else 49)))
def hex_1019230 : String := "4341074240074407070741074240440707444341074240070507410742400A05400744070743070707"
theorem cover_1019230 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1019230 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 41) (hex := hex_1019230)
  decide +kernel
#print axioms cover_1019230

def state_1019273 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 29) else (if j.val < 3 then 18 else (if j.val < 4 then 50 else 48)))
def hex_1019273 : String := "0A"
theorem cover_1019273 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1019273 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1019273)
  decide +kernel
#print axioms cover_1019273

def state_1019275 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 58) else (if j.val < 3 then 18 else (if j.val < 4 then 51 else 48)))
def hex_1019275 : String := "424044430A410542050643054105050606"
theorem cover_1019275 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1019275 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 17) (hex := hex_1019275)
  decide +kernel
#print axioms cover_1019275

def state_1019292 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 59) else (if j.val < 3 then 18 else (if j.val < 4 then 51 else 48)))
def hex_1019292 : String := "424044430909434142050A4205094142054044090505420509440943050940444308094306424106404409430606060606"
theorem cover_1019292 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1019292 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 49) (hex := hex_1019292)
  decide +kernel
#print axioms cover_1019292

def state_1019341 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 29) else (if j.val < 3 then 18 else (if j.val < 4 then 25 else 49)))
def hex_1019341 : String := "430A414240440505050642404443410505410542054044430505050543050544050540444306424106400706060706"
theorem cover_1019341 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1019341 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 47) (hex := hex_1019341)
  decide +kernel
#print axioms cover_1019341

def state_1019388 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 29) else (if j.val < 3 then 19 else (if j.val < 4 then 25 else 24)))
def hex_1019388 : String := "40444307070706"
theorem cover_1019388 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1019388 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1019388)
  decide +kernel
#print axioms cover_1019388

def state_1019395 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 25)))
def hex_1019395 : String := "41074240430744070743440A074441420506424044050505400706410742050707"
theorem cover_1019395 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1019395 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 33) (hex := hex_1019395)
  decide +kernel
#print axioms cover_1019395

def state_1019430 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 15) else (if j.val < 3 then 8 else (if j.val < 4 then 12 else 12)))
def hex_1019430 : String := "434406064406414206400643060606"
theorem cover_1019430 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1019430 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 15) (hex := hex_1019430)
  decide +kernel
#print axioms cover_1019430
end Mub6.Numerical.CircleFullD0.Forest
