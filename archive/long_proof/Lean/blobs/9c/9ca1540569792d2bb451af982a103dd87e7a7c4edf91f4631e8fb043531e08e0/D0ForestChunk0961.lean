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
def state_1531169 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 25) else (if j.val < 3 then 25 else (if j.val < 4 then 19 else 17)))
def hex_1531169 : String := "40410942094344404105054105420505050909"
theorem cover_1531169 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1531169 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 19) (hex := hex_1531169)
  decide +kernel
#print axioms cover_1531169

def state_1531188 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 12) else (if j.val < 3 then 12 else (if j.val < 4 then 9 else 8)))
def hex_1531188 : String := "410942094344090709"
theorem cover_1531188 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1531188 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1531188)
  decide +kernel
#print axioms cover_1531188

def state_1531197 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 12 else (if j.val < 4 then 9 else 9)))
def hex_1531197 : String := "40414205430506424305064305444006090541094209430509"
theorem cover_1531197 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1531197 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 25) (hex := hex_1531197)
  decide +kernel
#print axioms cover_1531197

def state_1531223 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 13 else (if j.val < 4 then 8 else 4)))
def hex_1531223 : String := "4440070705"
theorem cover_1531223 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1531223 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1531223)
  decide +kernel
#print axioms cover_1531223

def state_1531231 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 24) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 8)))
def hex_1531231 : String := "4243070A07"
theorem cover_1531231 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1531231 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1531231)
  decide +kernel
#print axioms cover_1531231

def state_1531238 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 25) else (if j.val < 3 then 26 else (if j.val < 4 then 18 else 8)))
def hex_1531238 : String := "4440410742430544404105424305448705050705050705"
theorem cover_1531238 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1531238 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 23) (hex := hex_1531238)
  decide +kernel
#print axioms cover_1531238

def state_1531262 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 25) else (if j.val < 3 then 26 else (if j.val < 4 then 19 else 16)))
def hex_1531262 : String := "40410A42434440410A424344874041054243050A0541074207050A0A41074243070A0740410A4243050A0841074207070A0A414207074243070907"
theorem cover_1531262 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1531262 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 15) (count := 59) (hex := hex_1531262)
  decide +kernel
#print axioms cover_1531262

def state_1531321 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 25) else (if j.val < 3 then 26 else (if j.val < 4 then 19 else 17)))
def hex_1531321 : String := "4041084243050A0841074243070907"
theorem cover_1531321 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1531321 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 15) (hex := hex_1531321)
  decide +kernel
#print axioms cover_1531321

def state_1531336 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 25) else (if j.val < 3 then 27 else (if j.val < 4 then 9 else 8)))
def hex_1531336 : String := "43070A"
theorem cover_1531336 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1531336 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_1531336)
  decide +kernel
#print axioms cover_1531336

def state_1531339 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 12) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 8)))
def hex_1531339 : String := "4107420707"
theorem cover_1531339 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1531339 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1531339)
  decide +kernel
#print axioms cover_1531339

def state_1531344 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 9)))
def hex_1531344 : String := "40410742430544400507050507"
theorem cover_1531344 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1531344 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1531344)
  decide +kernel
#print axioms cover_1531344

def state_1531359 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 8 else 4)))
def hex_1531359 : String := "44404208414305440805080840424105440843054042080505410544430540090505420805"
theorem cover_1531359 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1531359 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 37) (hex := hex_1531359)
  decide +kernel
#print axioms cover_1531359
end Mub6.Numerical.CircleFullD0.Forest
