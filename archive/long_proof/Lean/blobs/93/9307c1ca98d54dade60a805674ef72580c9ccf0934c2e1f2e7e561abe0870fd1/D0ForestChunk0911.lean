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
def state_1519111 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 14 else 15)))
def hex_1519111 : String := "4142434440094142090709404108094142080A424344090808094405084344090A0942434409400941420909090909"
theorem cover_1519111 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1519111 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 47) (hex := hex_1519111)
  decide +kernel
#print axioms cover_1519111

def state_1519162 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 22) else (if j.val < 3 then 22 else (if j.val < 4 then 28 else 30)))
def hex_1519162 : String := "40414243070507424344050505074107420507"
theorem cover_1519162 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1519162 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 19) (hex := hex_1519162)
  decide +kernel
#print axioms cover_1519162

def state_1519182 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 22) else (if j.val < 3 then 22 else (if j.val < 4 then 28 else 31)))
def hex_1519182 : String := "41424344404107070740084106074407080742434440410909410707404142080742080941424307060742434407410707080744054008410708430707"
theorem cover_1519182 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1519182 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 61) (hex := hex_1519182)
  decide +kernel
#print axioms cover_1519182

def state_1519243 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 22) else (if j.val < 3 then 22 else (if j.val < 4 then 28 else 31)))
def hex_1519243 : String := "4142434407060607424344074107400706440541060707"
theorem cover_1519243 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1519243 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 23) (hex := hex_1519243)
  decide +kernel
#print axioms cover_1519243

def state_1519266 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 22) else (if j.val < 3 then 22 else (if j.val < 4 then 29 else 15)))
def hex_1519266 : String := "4440050540414208074205074107420507"
theorem cover_1519266 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1519266 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 17) (hex := hex_1519266)
  decide +kernel
#print axioms cover_1519266

def state_1519283 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 22) else (if j.val < 3 then 23 else (if j.val < 4 then 14 else 15)))
def hex_1519283 : String := "430707"
theorem cover_1519283 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1519283 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_1519283)
  decide +kernel
#print axioms cover_1519283

def state_1519289 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 23) else (if j.val < 3 then 22 else (if j.val < 4 then 28 else 30)))
def hex_1519289 : String := "41404205090505"
theorem cover_1519289 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1519289 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1519289)
  decide +kernel
#print axioms cover_1519289

def state_1519297 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 46) else (if j.val < 3 then 22 else (if j.val < 4 then 28 else 31)))
def hex_1519297 : String := "4042434409414009424344094109090907400942090944054140080509434407410709094243440541404243070507074042430A05074205070507"
theorem cover_1519297 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1519297 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 59) (hex := hex_1519297)
  decide +kernel
#print axioms cover_1519297
end Mub6.Numerical.CircleFullD0.Forest
