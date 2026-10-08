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
def state_1533551 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 53) else (if j.val < 3 then 51 else (if j.val < 4 then 39 else 35)))
def hex_1533551 : String := "4042410943080941434440420941050808050943440840420841050808444042070A084042090A094208410908"
theorem cover_1533551 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1533551 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 45) (hex := hex_1533551)
  decide +kernel
#print axioms cover_1533551

def state_1533597 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 27) else (if j.val < 3 then 25 else (if j.val < 4 then 18 else 8)))
def hex_1533597 : String := "44084042084308414408090808"
theorem cover_1533597 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1533597 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1533597)
  decide +kernel
#print axioms cover_1533597

def state_1533611 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 27) else (if j.val < 3 then 25 else (if j.val < 4 then 19 else 16)))
def hex_1533611 : String := "40420543414405400706050508"
theorem cover_1533611 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1533611 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1533611)
  decide +kernel
#print axioms cover_1533611

def state_1533624 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 27) else (if j.val < 3 then 25 else (if j.val < 4 then 19 else 17)))
def hex_1533624 : String := "404243410807074341444007084042070908074144074007420743414407400708070707420843084144084042084308414408400708070808"
theorem cover_1533624 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1533624 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 57) (hex := hex_1533624)
  decide +kernel
#print axioms cover_1533624

def state_1533681 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 9 else 8)))
def hex_1533681 : String := "420841430844404208410808084042094109080808"
theorem cover_1533681 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1533681 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 21) (hex := hex_1533681)
  decide +kernel
#print axioms cover_1533681

def state_1533705 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 26) else (if j.val < 3 then 24 else (if j.val < 4 then 9 else 9)))
def hex_1533705 : String := "4344404241050841054305440805420805054440420641064306060906"
theorem cover_1533705 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1533705 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 29) (hex := hex_1533705)
  decide +kernel
#print axioms cover_1533705

def state_1533734 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 27) else (if j.val < 3 then 24 else (if j.val < 4 then 9 else 9)))
def hex_1533734 : String := "4344084042440843050644430541050843050508444042074344074140060807070840424306064344410640060806064209434408410508440909"
theorem cover_1533734 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1533734 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 59) (hex := hex_1533734)
  decide +kernel
#print axioms cover_1533734

def state_1533795 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 26) else (if j.val < 3 then 25 else (if j.val < 4 then 18 else 9)))
def hex_1533795 : String := "05"
theorem cover_1533795 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1533795 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1533795)
  decide +kernel
#print axioms cover_1533795
end Mub6.Numerical.CircleFullD0.Forest
