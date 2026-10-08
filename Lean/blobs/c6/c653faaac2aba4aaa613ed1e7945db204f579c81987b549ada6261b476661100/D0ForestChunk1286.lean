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
def state_1609165 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 10) else (if j.val < 3 then 24 else (if j.val < 4 then 15 else 12)))
def hex_1609165 : String := "44414342064406404105050542084408090805"
theorem cover_1609165 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1609165 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 19) (hex := hex_1609165)
  decide +kernel
#print axioms cover_1609165

def state_1609188 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 20) else (if j.val < 3 then 25 else (if j.val < 4 then 30 else 48)))
def hex_1609188 : String := "404241060641430744074042070507430644074042064107070606"
theorem cover_1609188 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1609188 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 27) (hex := hex_1609188)
  decide +kernel
#print axioms cover_1609188

def state_1609217 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 20) else (if j.val < 3 then 50 else (if j.val < 4 then 30 else 49)))
def hex_1609217 : String := "414306444206074205400A0509"
theorem cover_1609217 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1609217 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 13) (hex := hex_1609217)
  decide +kernel
#print axioms cover_1609217

def state_1609232 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 40) else (if j.val < 3 then 51 else (if j.val < 4 then 60 else 49)))
def hex_1609232 : String := "4440420641070706404241070641430744074042070707430744074042079F0707"
theorem cover_1609232 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1609232 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 33) (hex := hex_1609232)
  decide +kernel
#print axioms cover_1609232

def state_1609266 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 40) else (if j.val < 3 then 51 else (if j.val < 4 then 61 else 98)))
def hex_1609266 : String := "404241070741430744050743074407404207050707"
theorem cover_1609266 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1609266 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 21) (hex := hex_1609266)
  decide +kernel
#print axioms cover_1609266

def state_1609289 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 40) else (if j.val < 3 then 102 else (if j.val < 4 then 61 else 99)))
def hex_1609289 : String := "4143070A4344070A0A"
theorem cover_1609289 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1609289 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 9) (hex := hex_1609289)
  decide +kernel
#print axioms cover_1609289

def state_1609299 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 80) else (if j.val < 3 then 103 else (if j.val < 4 then 61 else 99)))
def hex_1609299 : String := "4344074042074107070744404207050740420A41094344070A06420707"
theorem cover_1609299 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1609299 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 29) (hex := hex_1609299)
  decide +kernel
#print axioms cover_1609299

def state_1609328 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 81) else (if j.val < 3 then 103 else (if j.val < 4 then 61 else 99)))
def hex_1609328 : String := "434440420707074042410707414307440707430744070A074440420A4143070543070A0740420A414344070A0A0A4207410707"
theorem cover_1609328 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1609328 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 51) (hex := hex_1609328)
  decide +kernel
#print axioms cover_1609328

def state_1609379 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 89 else 40) else (if j.val < 3 then 51 else (if j.val < 4 then 61 else 99)))
def hex_1609379 : String := "4207410707"
theorem cover_1609379 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1609379 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1609379)
  decide +kernel
#print axioms cover_1609379
end Mub6.Numerical.CircleFullD0.Forest
