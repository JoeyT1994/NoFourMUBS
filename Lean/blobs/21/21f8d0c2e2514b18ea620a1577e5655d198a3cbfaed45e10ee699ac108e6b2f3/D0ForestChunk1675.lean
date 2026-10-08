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
def state_2275211 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 81 else 55) else (if j.val < 3 then 92 else (if j.val < 4 then 89 else 59)))
def hex_2275211 : String := "4144424344400605060643054440050506420643400808064442434106060643414440050540060644090641060642064341060606"
theorem cover_2275211 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2275211 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 53) (hex := hex_2275211)
  decide +kernel
#print axioms cover_2275211

def state_2275264 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 55) else (if j.val < 3 then 93 else (if j.val < 4 then 44 else 59)))
def hex_2275264 : String := "434009410544050940094144054243050905440909"
theorem cover_2275264 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2275264 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 21) (hex := hex_2275264)
  decide +kernel
#print axioms cover_2275264

def state_2275286 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 41 else 54) else (if j.val < 3 then 46 else (if j.val < 4 then 44 else 59)))
def hex_2275286 : String := "42430544050805"
theorem cover_2275286 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2275286 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_2275286)
  decide +kernel
#print axioms cover_2275286

def state_2275295 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 41 else 55) else (if j.val < 3 then 92 else (if j.val < 4 then 88 else 59)))
def hex_2275295 : String := "4144054042080505444042430A0A430505420A0540424341080A4106064341050A41440508440A400606424308084305400505"
theorem cover_2275295 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2275295 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 51) (hex := hex_2275295)
  decide +kernel
#print axioms cover_2275295

def state_2275346 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 41 else 55) else (if j.val < 3 then 92 else (if j.val < 4 then 89 else 59)))
def hex_2275346 : String := "41444042434405060643050507404206430506084440424341060606434105440A06410606424340060606430506404206434106060642064340060606"
theorem cover_2275346 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2275346 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 61) (hex := hex_2275346)
  decide +kernel
#print axioms cover_2275346

def state_2275407 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 41 else 55) else (if j.val < 3 then 93 else (if j.val < 4 then 44 else 59)))
def hex_2275407 : String := "4341054405404243050505054144054042050505444042430541054440050506050540424341054440050540060641060643054105094243050705"
theorem cover_2275407 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2275407 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 59) (hex := hex_2275407)
  decide +kernel
#print axioms cover_2275407
end Mub6.Numerical.CircleFullD0.Forest
