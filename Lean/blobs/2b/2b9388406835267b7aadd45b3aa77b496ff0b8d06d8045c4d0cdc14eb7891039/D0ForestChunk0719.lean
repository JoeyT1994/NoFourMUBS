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
def state_1473506 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 21) else (if j.val < 3 then 16 else (if j.val < 4 then 23 else 29)))
def hex_1473506 : String := "40434109444240070940074341094409070742074007090709"
theorem cover_1473506 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1473506 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 25) (hex := hex_1473506)
  decide +kernel
#print axioms cover_1473506

def state_1473534 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 42) else (if j.val < 3 then 17 else (if j.val < 4 then 46 else 29)))
def hex_1473534 : String := "44420940430A41074407070909"
theorem cover_1473534 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1473534 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1473534)
  decide +kernel
#print axioms cover_1473534

def state_1473549 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 43) else (if j.val < 3 then 34 else (if j.val < 4 then 46 else 58)))
def hex_1473549 : String := "40434144070744070707434109444240070940434109440607070942094043410944070707094107440707"
theorem cover_1473549 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1473549 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 43) (hex := hex_1473549)
  decide +kernel
#print axioms cover_1473549

def state_1473593 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 43) else (if j.val < 3 then 35 else (if j.val < 4 then 46 else 58)))
def hex_1473593 : String := "4341444206060A4406424006434107440605070641440707440607"
theorem cover_1473593 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1473593 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 27) (hex := hex_1473593)
  decide +kernel
#print axioms cover_1473593

def state_1473621 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 43) else (if j.val < 3 then 35 else (if j.val < 4 then 92 else 58)))
def hex_1473621 : String := "41440909444240434106064106064308090842404341094442400608064240050905410707094043410A06414406094406054308410808"
theorem cover_1473621 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1473621 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 55) (hex := hex_1473621)
  decide +kernel
#print axioms cover_1473621

def state_1473676 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 43) else (if j.val < 3 then 35 else (if j.val < 4 then 93 else 58)))
def hex_1473676 : String := "41440909444240074309074006430841070642400709404341070707434109440809410707"
theorem cover_1473676 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1473676 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 37) (hex := hex_1473676)
  decide +kernel
#print axioms cover_1473676

def state_1473714 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 43) else (if j.val < 3 then 34 else (if j.val < 4 then 46 else 59)))
def hex_1473714 : String := "40434107070743410944420940090909410707"
theorem cover_1473714 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1473714 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 19) (hex := hex_1473714)
  decide +kernel
#print axioms cover_1473714
end Mub6.Numerical.CircleFullD0.Forest
