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
def state_2258405 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 105) else (if j.val < 3 then 86 else (if j.val < 4 then 91 else 107)))
def hex_2258405 : String := "404341420A440A0A0A4142440A400A0A4408BE420A084341420A4405BE0A414244400A0A404309090944400807BE420A44080A"
theorem cover_2258405 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2258405 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 51) (hex := hex_2258405)
  decide +kernel
#print axioms cover_2258405

def state_2258456 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 105) else (if j.val < 3 then 87 else (if j.val < 4 then 91 else 53)))
def hex_2258456 : String := "4408404342414405BE08080843424105080542414405070808"
theorem cover_2258456 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2258456 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 25) (hex := hex_2258456)
  decide +kernel
#print axioms cover_2258456

def state_2258482 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 52) else (if j.val < 3 then 43 else (if j.val < 4 then 90 else 53)))
def hex_2258482 : String := "410542440540430541050A0505"
theorem cover_2258482 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2258482 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_2258482)
  decide +kernel
#print axioms cover_2258482

def state_2258495 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 52) else (if j.val < 3 then 43 else (if j.val < 4 then 91 else 53)))
def hex_2258495 : String := "4142440507054244404341050A4107420A07074043414209050A41420907420A4407400A074341054209050744054043050705"
theorem cover_2258495 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2258495 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 51) (hex := hex_2258495)
  decide +kernel
#print axioms cover_2258495

def state_2258547 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 53) else (if j.val < 3 then 42 else (if j.val < 4 then 45 else 26)))
def hex_2258547 : String := "44400A430A0A40430A41420A0A0A430A414206440A0A0A"
theorem cover_2258547 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2258547 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 23) (hex := hex_2258547)
  decide +kernel
#print axioms cover_2258547

def state_2258570 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 53) else (if j.val < 3 then 43 else (if j.val < 4 then 45 else 26)))
def hex_2258570 : String := "44400843420A05084043420A4144080A0842414408400A0A080843420A4144050508424144400A0A400A430A0A0A4144084043080843420A050708"
theorem cover_2258570 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2258570 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 59) (hex := hex_2258570)
  decide +kernel
#print axioms cover_2258570

def state_2258630 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 26) else (if j.val < 3 then 21 else (if j.val < 4 then 44 else 26)))
def hex_2258630 : String := "41424405404305090505420A440505"
theorem cover_2258630 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2258630 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 15) (hex := hex_2258630)
  decide +kernel
#print axioms cover_2258630
end Mub6.Numerical.CircleFullD0.Forest
