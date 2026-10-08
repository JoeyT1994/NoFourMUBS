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
def state_1581996 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 34) else (if j.val < 3 then 97 else (if j.val < 4 then 106 else 102)))
def hex_1581996 : String := "40414244094340410942060906404109420A094109420609440943090942440643064041420A0942054406050644094340090640090941420644060806"
theorem cover_1581996 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1581996 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 61) (hex := hex_1581996)
  decide +kernel
#print axioms cover_1581996

def state_1582057 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 34) else (if j.val < 3 then 97 else (if j.val < 4 then 107 else 102)))
def hex_1582057 : String := "40414244090A440943090942440A43400A0A0A44094340090940090941424443090743400A050A4409430808424443060A43050A440943400905400909"
theorem cover_1582057 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1582057 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 61) (hex := hex_1582057)
  decide +kernel
#print axioms cover_1582057

def state_1582123 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 78 else 68) else (if j.val < 3 then 194 else (if j.val < 4 then 106 else 206)))
def hex_1582123 : String := "4340414244430505054409430540090542054443050505054041420A44090A420A440A43050A41420544080505"
theorem cover_1582123 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1582123 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 45) (hex := hex_1582123)
  decide +kernel
#print axioms cover_1582123

def state_1582168 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 78 else 68) else (if j.val < 3 then 194 else (if j.val < 4 then 106 else 207)))
def hex_1582168 : String := "4340414205440505050540414205440A06420544050505"
theorem cover_1582168 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1582168 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 23) (hex := hex_1582168)
  decide +kernel
#print axioms cover_1582168

def state_1582192 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 78 else 68) else (if j.val < 3 then 195 else (if j.val < 4 then 106 else 206)))
def hex_1582192 : String := "434041094244094305070941084205084041094244094307090941084244090508"
theorem cover_1582192 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1582192 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 33) (hex := hex_1582192)
  decide +kernel
#print axioms cover_1582192
end Mub6.Numerical.CircleFullD0.Forest
