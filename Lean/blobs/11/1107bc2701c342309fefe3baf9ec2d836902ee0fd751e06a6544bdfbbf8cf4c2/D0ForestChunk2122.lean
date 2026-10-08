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
def state_2589901 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 37) else (if j.val < 3 then 96 else (if j.val < 4 then 47 else 39)))
def hex_2589901 : String := "43404441420543054044410709070542054305404409060541070744050540444142074340070707DC07444108420543050807"
theorem cover_2589901 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2589901 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 51) (hex := hex_2589901)
  decide +kernel
#print axioms cover_2589901

def state_2589953 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 37) else (if j.val < 3 then 97 else (if j.val < 4 then 94 else 39)))
def hex_2589953 : String := "404441424309404409070909094142074309074243090709440909"
theorem cover_2589953 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2589953 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 27) (hex := hex_2589953)
  decide +kernel
#print axioms cover_2589953

def state_2589980 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 37) else (if j.val < 3 then 97 else (if j.val < 4 then 95 else 39)))
def hex_2589980 : String := "40444143424044410707074409074044090709424007074007064342404409070909424007074044410707070907444143090609410707"
theorem cover_2589980 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2589980 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 55) (hex := hex_2589980)
  decide +kernel
#print axioms cover_2589980

def state_2590035 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 53 else 18) else (if j.val < 3 then 48 else (if j.val < 4 then 47 else 19)))
def hex_2590035 : String := "444106094142084309064243050843094044060806"
theorem cover_2590035 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2590035 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 21) (hex := hex_2590035)
  decide +kernel
#print axioms cover_2590035

def state_2590057 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 18) else (if j.val < 3 then 49 else (if j.val < 4 then 46 else 19)))
def hex_2590057 : String := "404409414243094044090909090909"
theorem cover_2590057 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2590057 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 15) (hex := hex_2590057)
  decide +kernel
#print axioms cover_2590057

def state_2590074 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 18) else (if j.val < 3 then 49 else (if j.val < 4 then 47 else 38)))
def hex_2590074 : String := "41064309424044064106090606"
theorem cover_2590074 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2590074 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_2590074)
  decide +kernel
#print axioms cover_2590074

def state_2590088 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 36) else (if j.val < 3 then 49 else (if j.val < 4 then 47 else 39)))
def hex_2590088 : String := "434240444106094143424007070907430942070744060940440641060906424044064106070606"
theorem cover_2590088 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2590088 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 39) (hex := hex_2590088)
  decide +kernel
#print axioms cover_2590088
end Mub6.Numerical.CircleFullD0.Forest
