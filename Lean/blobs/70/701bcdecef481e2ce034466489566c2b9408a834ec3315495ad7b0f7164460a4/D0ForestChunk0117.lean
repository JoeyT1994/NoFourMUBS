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
def state_965594 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 88) else (if j.val < 3 then 107 else (if j.val < 4 then 75 else 55)))
def hex_965594 : String := "444041054205050605"
theorem cover_965594 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_965594 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_965594)
  decide +kernel
#print axioms cover_965594

def state_965604 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 89) else (if j.val < 3 then 106 else (if j.val < 4 then 37 else 55)))
def hex_965604 : String := "4344404142064344064007060606064041420505424344060505430705414206434406050506440605"
theorem cover_965604 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_965604 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 41) (hex := hex_965604)
  decide +kernel
#print axioms cover_965604

def state_965645 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 89) else (if j.val < 3 then 107 else (if j.val < 4 then 37 else 55)))
def hex_965645 : String := "434440414243440607064307440607424309060741420609064007414243444007060744060543074440070605424344060706074406404105420505410506"
theorem cover_965645 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_965645 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 63) (hex := hex_965645)
  decide +kernel
#print axioms cover_965645

def state_965708 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 44) else (if j.val < 3 then 53 else (if j.val < 4 then 37 else 55)))
def hex_965708 : String := "414243440640410506060643444041420609060640410A42430A050A0A44064005064206434406404142064309064206090606"
theorem cover_965708 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_965708 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 51) (hex := hex_965708)
  decide +kernel
#print axioms cover_965708

def state_965762 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 45) else (if j.val < 3 then 52 else (if j.val < 4 then 36 else 54)))
def hex_965762 : String := "06"
theorem cover_965762 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_965762 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_965762)
  decide +kernel
#print axioms cover_965762

def state_965766 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 90) else (if j.val < 3 then 104 else (if j.val < 4 then 36 else 55)))
def hex_965766 : String := "4406434041424406434041080808064443400A0606434007084041080A06420A44064340074108060A4142064406080606"
theorem cover_965766 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_965766 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 49) (hex := hex_965766)
  decide +kernel
#print axioms cover_965766

def state_965816 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 90) else (if j.val < 3 then 105 else (if j.val < 4 then 36 else 110)))
def hex_965816 : String := "434041420A090A0606"
theorem cover_965816 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_965816 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_965816)
  decide +kernel
#print axioms cover_965816
end Mub6.Numerical.CircleFullD0.Forest
