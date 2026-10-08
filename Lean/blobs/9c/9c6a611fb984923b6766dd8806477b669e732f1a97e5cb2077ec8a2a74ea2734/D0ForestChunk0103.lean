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
def state_962224 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 184 else 178) else (if j.val < 3 then 209 else (if j.val < 4 then 71 else 110)))
def hex_962224 : String := "444305404142440543050605050543404108050540414208084244430506084405074108420805"
theorem cover_962224 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_962224 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 39) (hex := hex_962224)
  decide +kernel
#print axioms cover_962224

def state_962263 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 184 else 179) else (if j.val < 3 then 104 else (if j.val < 4 then 71 else 110)))
def hex_962263 : String := "4244054305404142060A0A0644054305404142440505050505"
theorem cover_962263 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_962263 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 25) (hex := hex_962263)
  decide +kernel
#print axioms cover_962263

def state_962288 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 185 else 89) else (if j.val < 3 then 104 else (if j.val < 4 then 71 else 110)))
def hex_962288 : String := "41424406084405430508420605"
theorem cover_962288 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_962288 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 13) (hex := hex_962288)
  decide +kernel
#print axioms cover_962288

def state_962301 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 89) else (if j.val < 3 then 104 else (if j.val < 4 then 35 else 111)))
def hex_962301 : String := "43404108420805084041420808424443084041080808084443054041070708084108420808"
theorem cover_962301 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_962301 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 37) (hex := hex_962301)
  decide +kernel
#print axioms cover_962301

def state_962338 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 89) else (if j.val < 3 then 105 else (if j.val < 4 then 35 else 55)))
def hex_962338 : String := "444305404142440543054007410805094205054142440505050543400741080540414244430708070742440707074108420808"
theorem cover_962338 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_962338 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 51) (hex := hex_962338)
  decide +kernel
#print axioms cover_962338

def state_962389 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 44) else (if j.val < 3 then 52 else (if j.val < 4 then 35 else 55)))
def hex_962389 : String := "4142444308404108420608060844430540410A09090842444305060844054305400808"
theorem cover_962389 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_962389 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 35) (hex := hex_962389)
  decide +kernel
#print axioms cover_962389

def state_962424 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 44) else (if j.val < 3 then 53 else (if j.val < 4 then 17 else 27)))
def hex_962424 : String := "440943094041424443054041424407060609090A44090642440543054007090941420A0909"
theorem cover_962424 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_962424 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 37) (hex := hex_962424)
  decide +kernel
#print axioms cover_962424

def state_962463 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 45) else (if j.val < 3 then 52 else (if j.val < 4 then 17 else 54)))
def hex_962463 : String := "05"
theorem cover_962463 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_962463 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_962463)
  decide +kernel
#print axioms cover_962463

def state_962465 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 45) else (if j.val < 3 then 52 else (if j.val < 4 then 34 else 55)))
def hex_962465 : String := "05"
theorem cover_962465 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_962465 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_962465)
  decide +kernel
#print axioms cover_962465
end Mub6.Numerical.CircleFullD0.Forest
