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
def state_2285984 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 14) else (if j.val < 3 then 23 else (if j.val < 4 then 23 else 15)))
def hex_2285984 : String := "41444243400606064340410744060607064206434006060644420643404106054106060606"
theorem cover_2285984 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2285984 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 37) (hex := hex_2285984)
  decide +kernel
#print axioms cover_2285984

def state_2286021 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 15) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 7)))
def hex_2286021 : String := "444243400A0A40050643400808084243400541440A050505434041444205080707414442430A05084205434005414408050505440805400541444205050505"
theorem cover_2286021 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2286021 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 63) (hex := hex_2286021)
  decide +kernel
#print axioms cover_2286021

def state_2286085 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 10 else (if j.val < 4 then 5 else 7)))
def hex_2286085 : String := "43414409090909"
theorem cover_2286085 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2286085 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_2286085)
  decide +kernel
#print axioms cover_2286085

def state_2286095 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 11 else (if j.val < 4 then 10 else 14)))
def hex_2286095 : String := "4042430A0A434144054209050A41440542400A09404305050544080A420943090A"
theorem cover_2286095 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2286095 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 33) (hex := hex_2286095)
  decide +kernel
#print axioms cover_2286095

def state_2286130 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 14) else (if j.val < 3 then 22 else (if j.val < 4 then 10 else 15)))
def hex_2286130 : String := "43410907410909"
theorem cover_2286130 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2286130 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 7) (hex := hex_2286130)
  decide +kernel
#print axioms cover_2286130

def state_2286138 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 14) else (if j.val < 3 then 23 else (if j.val < 4 then 20 else 15)))
def hex_2286138 : String := "414442400A09400606424041430609070940410606410606440A4207400606"
theorem cover_2286138 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2286138 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 31) (hex := hex_2286138)
  decide +kernel
#print axioms cover_2286138

def state_2286171 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 28) else (if j.val < 3 then 23 else (if j.val < 4 then 21 else 30)))
def hex_2286171 : String := "4240430941090909404341054405420906414405424005050544420905420A40430541050A05430509"
theorem cover_2286171 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2286171 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 41) (hex := hex_2286171)
  decide +kernel
#print axioms cover_2286171

def state_2286213 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 28) else (if j.val < 3 then 46 else (if j.val < 4 then 21 else 31)))
def hex_2286213 : String := "4043410909414409080909"
theorem cover_2286213 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2286213 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_2286213)
  decide +kernel
#print axioms cover_2286213
end Mub6.Numerical.CircleFullD0.Forest
