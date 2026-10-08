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
def state_1480424 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 22) else (if j.val < 3 then 18 else (if j.val < 4 then 46 else 29)))
def hex_1480424 : String := "4142440840434108084142444043080808400509084244084005080843080808424408404308080808"
theorem cover_1480424 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1480424 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 41) (hex := hex_1480424)
  decide +kernel
#print axioms cover_1480424

def state_1480468 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 44) else (if j.val < 3 then 36 else (if j.val < 4 then 47 else 58)))
def hex_1480468 : String := "43404144084243080A080808400A0A"
theorem cover_1480468 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1480468 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 15) (hex := hex_1480468)
  decide +kernel
#print axioms cover_1480468

def state_1480484 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 44) else (if j.val < 3 then 36 else (if j.val < 4 then 94 else 59)))
def hex_1480484 : String := "404142444340410908084007094340410505094007094443084041080808430540050942440A43400541080540070A44084305400508410908"
theorem cover_1480484 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1480484 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 57) (hex := hex_1480484)
  decide +kernel
#print axioms cover_1480484

def state_1480541 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 44) else (if j.val < 3 then 36 else (if j.val < 4 then 95 else 59)))
def hex_1480541 : String := "40414244070744434007080743400709074207440A4340050A0741090A"
theorem cover_1480541 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1480541 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 29) (hex := hex_1480541)
  decide +kernel
#print axioms cover_1480541

def state_1480570 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 44) else (if j.val < 3 then 37 else (if j.val < 4 then 47 else 29)))
def hex_1480570 : String := "44084340410808084041424443084041070708434005084005410908440805424408430540050808410808"
theorem cover_1480570 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1480570 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 43) (hex := hex_1480570)
  decide +kernel
#print axioms cover_1480570

def state_1480613 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 45) else (if j.val < 3 then 18 else (if j.val < 4 then 47 else 29)))
def hex_1480613 : String := "42440A434041420A0808080A4408430808"
theorem cover_1480613 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1480613 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 17) (hex := hex_1480613)
  decide +kernel
#print axioms cover_1480613

def state_1480630 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 19 else (if j.val < 4 then 23 else 14)))
def hex_1480630 : String := "4406404306064308410808"
theorem cover_1480630 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1480630 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_1480630)
  decide +kernel
#print axioms cover_1480630

def state_1480641 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 23) else (if j.val < 3 then 9 else (if j.val < 4 then 11 else 14)))
def hex_1480641 : String := "43424408400908084244084009414308090808"
theorem cover_1480641 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1480641 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 19) (hex := hex_1480641)
  decide +kernel
#print axioms cover_1480641

def state_1480660 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 11) else (if j.val < 3 then 9 else (if j.val < 4 then 11 else 14)))
def hex_1480660 : String := "41430842440843084041424408090808080808"
theorem cover_1480660 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1480660 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 19) (hex := hex_1480660)
  decide +kernel
#print axioms cover_1480660
end Mub6.Numerical.CircleFullD0.Forest
