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
def state_1001057 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 184 else 110) else (if j.val < 3 then 71 else (if j.val < 4 then 208 else 177)))
def hex_1001057 : String := "41424044430909434105050544090540444341060941060943064106420906064209400909"
theorem cover_1001057 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1001057 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 37) (hex := hex_1001057)
  decide +kernel
#print axioms cover_1001057

def state_1001096 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 184 else 220) else (if j.val < 3 then 142 else (if j.val < 4 then 209 else 177)))
def hex_1001096 : String := "404443410509050505"
theorem cover_1001096 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1001096 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1001096)
  decide +kernel
#print axioms cover_1001096

def state_1001105 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 184 else 220) else (if j.val < 3 then 143 else (if j.val < 4 then 209 else 177)))
def hex_1001105 : String := "4044434142404409050506094142054044C64306050609434142050642094044090606410542054044090A0944434106094106094306410509"
theorem cover_1001105 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1001105 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 57) (hex := hex_1001105)
  decide +kernel
#print axioms cover_1001105

def state_1001162 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 184 else 221) else (if j.val < 3 then 71 else (if j.val < 4 then 209 else 177)))
def hex_1001162 : String := "42094044090909"
theorem cover_1001162 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1001162 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1001162)
  decide +kernel
#print axioms cover_1001162

def state_1001169 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 185 else 110) else (if j.val < 3 then 71 else (if j.val < 4 then 104 else 88)))
def hex_1001169 : String := "4443094142070907434106094142050609"
theorem cover_1001169 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1001169 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 17) (hex := hex_1001169)
  decide +kernel
#print axioms cover_1001169

def state_1001186 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 111) else (if j.val < 3 then 35 else (if j.val < 4 then 104 else 88)))
def hex_1001186 : String := "42094044090909"
theorem cover_1001186 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1001186 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1001186)
  decide +kernel
#print axioms cover_1001186

def state_1001195 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 110) else (if j.val < 3 then 70 else (if j.val < 4 then 105 else 88)))
def hex_1001195 : String := "404443070605440705"
theorem cover_1001195 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1001195 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 9) (hex := hex_1001195)
  decide +kernel
#print axioms cover_1001195

def state_1001204 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 110) else (if j.val < 3 then 71 else (if j.val < 4 then 105 else 88)))
def hex_1001204 : String := "404443C641420840440A08080743414205404443414205400A054209090A4341050A0544434105090805424009094044090A0941080A444307074341080908"
theorem cover_1001204 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1001204 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 63) (hex := hex_1001204)
  decide +kernel
#print axioms cover_1001204

def state_1001267 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 111) else (if j.val < 3 then 35 else (if j.val < 4 then 105 else 88)))
def hex_1001267 : String := "420740440743090707"
theorem cover_1001267 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1001267 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1001267)
  decide +kernel
#print axioms cover_1001267

def state_1001279 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 110) else (if j.val < 3 then 70 else (if j.val < 4 then 104 else 89)))
def hex_1001279 : String := "40444305050505"
theorem cover_1001279 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1001279 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1001279)
  decide +kernel
#print axioms cover_1001279

def state_1001289 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 184 else 110) else (if j.val < 3 then 71 else (if j.val < 4 then 208 else 178)))
def hex_1001289 : String := "414205064240440943050509404443090943410609410709440906"
theorem cover_1001289 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1001289 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 27) (hex := hex_1001289)
  decide +kernel
#print axioms cover_1001289
end Mub6.Numerical.CircleFullD0.Forest
