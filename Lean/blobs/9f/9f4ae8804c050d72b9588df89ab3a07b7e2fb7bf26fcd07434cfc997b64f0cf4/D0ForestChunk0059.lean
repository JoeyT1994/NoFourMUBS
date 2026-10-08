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
def state_951574 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 20) else (if j.val < 3 then 26 else (if j.val < 4 then 17 else 26)))
def hex_951574 : String := "424441430608434006420806084106430640064244410506050644410643060806"
theorem cover_951574 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_951574 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 33) (hex := hex_951574)
  decide +kernel
#print axioms cover_951574

def state_951609 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 20) else (if j.val < 3 then 52 else (if j.val < 4 then 17 else 52)))
def hex_951609 : String := "41434042440806064244080A0A4008424408050843404244084108084408064244084143090809094042080842440841080808"
theorem cover_951609 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_951609 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 51) (hex := hex_951609)
  decide +kernel
#print axioms cover_951609

def state_951661 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 40) else (if j.val < 3 then 52 else (if j.val < 4 then 17 else 53)))
def hex_951661 : String := "430A40050A"
theorem cover_951661 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_951661 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_951661)
  decide +kernel
#print axioms cover_951661

def state_951667 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 41) else (if j.val < 3 then 52 else (if j.val < 4 then 34 else 53)))
def hex_951667 : String := "40064244410A430A4042440806060A0A0A"
theorem cover_951667 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_951667 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 17) (hex := hex_951667)
  decide +kernel
#print axioms cover_951667

def state_951684 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 41) else (if j.val < 3 then 52 else (if j.val < 4 then 35 else 53)))
def hex_951684 : String := "40424441054340060805054441060806424441430A054340420808424407070A4005074105430A0544410A43400809080A"
theorem cover_951684 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_951684 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 49) (hex := hex_951684)
  decide +kernel
#print axioms cover_951684

def state_951733 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 20) else (if j.val < 3 then 53 else (if j.val < 4 then 17 else 26)))
def hex_951733 : String := "44414340060940080843094008094106430640064244410A4306080606"
theorem cover_951733 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_951733 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 29) (hex := hex_951733)
  decide +kernel
#print axioms cover_951733

def state_951762 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 20) else (if j.val < 3 then 26 else (if j.val < 4 then 8 else 27)))
def hex_951762 : String := "4306400642410644430640050A0606"
theorem cover_951762 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_951762 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 15) (hex := hex_951762)
  decide +kernel
#print axioms cover_951762

def state_951777 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 20) else (if j.val < 3 then 27 else (if j.val < 4 then 8 else 13)))
def hex_951777 : String := "4443064006444106090606"
theorem cover_951777 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_951777 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 11) (hex := hex_951777)
  decide +kernel
#print axioms cover_951777

def state_951791 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 21) else (if j.val < 3 then 26 else (if j.val < 4 then 16 else 26)))
def hex_951791 : String := "40410642440506054142440543054006424144050605050505"
theorem cover_951791 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_951791 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 25) (hex := hex_951791)
  decide +kernel
#print axioms cover_951791
end Mub6.Numerical.CircleFullD0.Forest
