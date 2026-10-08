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
def state_949682 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 173) else (if j.val < 3 then 206 else (if j.val < 4 then 70 else 217)))
def hex_949682 : String := "4340424109440709414443404207C707070944430540420707074340094207C7094207410707404207410944070707"
theorem cover_949682 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_949682 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 47) (hex := hex_949682)
  decide +kernel
#print axioms cover_949682

def state_949731 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 172) else (if j.val < 3 then 207 else (if j.val < 4 then 70 else 216)))
def hex_949731 : String := "434042414407430A07C741444340424106050607404207410707070AC74207410AC7404241070741440743404207070707C707"
theorem cover_949731 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_949731 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 51) (hex := hex_949731)
  decide +kernel
#print axioms cover_949731

def state_949782 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 172) else (if j.val < 3 then 207 else (if j.val < 4 then 70 else 217)))
def hex_949782 : String := "434042410AC70A0A40424109094144430A0505C74207410AC7"
theorem cover_949782 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_949782 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 25) (hex := hex_949782)
  decide +kernel
#print axioms cover_949782

def state_949807 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 173) else (if j.val < 3 then 207 else (if j.val < 4 then 70 else 108)))
def hex_949807 : String := "C7"
theorem cover_949807 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_949807 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_949807)
  decide +kernel
#print axioms cover_949807

def state_949808 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 86) else (if j.val < 3 then 103 else (if j.val < 4 then 71 else 108)))
def hex_949808 : String := "40424109440A09414443400942094105C70505C7424144070544060741444340420741070707074340090705C7"
theorem cover_949808 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_949808 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 45) (hex := hex_949808)
  decide +kernel
#print axioms cover_949808

def state_949853 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 86) else (if j.val < 3 then 103 else (if j.val < 4 then 35 else 109)))
def hex_949853 : String := "434042094106C7424109444340094208080909410AC7400942094105C7"
theorem cover_949853 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_949853 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 29) (hex := hex_949853)
  decide +kernel
#print axioms cover_949853

def state_949885 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 87) else (if j.val < 3 then 103 else (if j.val < 4 then 70 else 108)))
def hex_949885 : String := "4241440A4340420A0A4241440A090A414443050A434006420505090A400942090A0AC7"
theorem cover_949885 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_949885 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 35) (hex := hex_949885)
  decide +kernel
#print axioms cover_949885
end Mub6.Numerical.CircleFullD0.Forest
