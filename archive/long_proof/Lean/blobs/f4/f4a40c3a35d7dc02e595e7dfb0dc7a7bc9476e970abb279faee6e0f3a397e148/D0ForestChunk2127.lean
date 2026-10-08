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
def state_2591088 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 16) else (if j.val < 3 then 48 else (if j.val < 4 then 22 else 20)))
def hex_2591088 : String := "43404405050540444142054305400A05420543054044050705414207434007050742074340060507440505"
theorem cover_2591088 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2591088 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 43) (hex := hex_2591088)
  decide +kernel
#print axioms cover_2591088

def state_2591132 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 16) else (if j.val < 3 then 49 else (if j.val < 4 then 44 else 20)))
def hex_2591132 : String := "404441420509094142430940070543094007094243054006050909"
theorem cover_2591132 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2591132 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 27) (hex := hex_2591132)
  decide +kernel
#print axioms cover_2591132

def state_2591163 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 32) else (if j.val < 3 then 98 else (if j.val < 4 then 45 else 40)))
def hex_2591163 : String := "43404441420543050A420509414205434007050742054305070540440A074406410A42050A"
theorem cover_2591163 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2591163 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 37) (hex := hex_2591163)
  decide +kernel
#print axioms cover_2591163

def state_2591200 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 32) else (if j.val < 3 then 99 else (if j.val < 4 then 45 else 40)))
def hex_2591200 : String := "43404441424309400A06090941424309070742430907070940444106420A060744064106420606"
theorem cover_2591200 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2591200 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 39) (hex := hex_2591200)
  decide +kernel
#print axioms cover_2591200

def state_2591239 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 33) else (if j.val < 3 then 49 else (if j.val < 4 then 45 else 40)))
def hex_2591239 : String := "4243404405414205090905404441420A43400A050A4243050A43094007090744054142054305070943094044414243090A090907440909"
theorem cover_2591239 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2591239 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 55) (hex := hex_2591239)
  decide +kernel
#print axioms cover_2591239

def state_2591294 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 16) else (if j.val < 3 then 49 else (if j.val < 4 then 45 else 41)))
def hex_2591294 : String := "41424340070707074243400707074340070707"
theorem cover_2591294 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2591294 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 19) (hex := hex_2591294)
  decide +kernel
#print axioms cover_2591294

def state_2591313 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 53 else 16) else (if j.val < 3 then 49 else (if j.val < 4 then 45 else 20)))
def hex_2591313 : String := "444142054305060941424305400705430940070642430540070509"
theorem cover_2591313 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2591313 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 27) (hex := hex_2591313)
  decide +kernel
#print axioms cover_2591313
end Mub6.Numerical.CircleFullD0.Forest
