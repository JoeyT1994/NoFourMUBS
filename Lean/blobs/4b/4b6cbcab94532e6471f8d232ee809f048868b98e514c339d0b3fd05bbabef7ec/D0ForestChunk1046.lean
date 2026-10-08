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
def state_1551348 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 57) else (if j.val < 3 then 53 else (if j.val < 4 then 41 else 20)))
def hex_1551348 : String := "44404241444309074305084407430907414409050942414443050A054443090743050A414443050A05440943050A404241054305080542410543050505"
theorem cover_1551348 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1551348 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 61) (hex := hex_1551348)
  decide +kernel
#print axioms cover_1551348

def state_1551410 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 29) else (if j.val < 3 then 26 else (if j.val < 4 then 20 else 20)))
def hex_1551410 : String := "4241434407090743090709"
theorem cover_1551410 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1551410 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_1551410)
  decide +kernel
#print axioms cover_1551410

def state_1551425 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 58) else (if j.val < 3 then 52 else (if j.val < 4 then 40 else 40)))
def hex_1551425 : String := "400942414308440740070843060741430644060906"
theorem cover_1551425 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1551425 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 21) (hex := hex_1551425)
  decide +kernel
#print axioms cover_1551425

def state_1551447 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 98 else 58) else (if j.val < 3 then 52 else (if j.val < 4 then 40 else 41)))
def hex_1551447 : String := "424143094409400642410509050909"
theorem cover_1551447 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1551447 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 15) (hex := hex_1551447)
  decide +kernel
#print axioms cover_1551447

def state_1551464 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 116) else (if j.val < 3 then 104 else (if j.val < 4 then 40 else 41)))
def hex_1551464 : String := "434440090505444042414305070709424143054407050841054305084042410544430507050505"
theorem cover_1551464 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1551464 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 39) (hex := hex_1551464)
  decide +kernel
#print axioms cover_1551464

def state_1551503 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 117) else (if j.val < 3 then 104 else (if j.val < 4 then 40 else 41)))
def hex_1551503 : String := "4344080944400708404244074143050707094244084105084409410509"
theorem cover_1551503 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1551503 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 29) (hex := hex_1551503)
  decide +kernel
#print axioms cover_1551503

def state_1551532 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 58) else (if j.val < 3 then 105 else (if j.val < 4 then 40 else 41)))
def hex_1551532 : String := "41430544400905054309440909"
theorem cover_1551532 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1551532 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 13) (hex := hex_1551532)
  decide +kernel
#print axioms cover_1551532

def state_1551546 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 58) else (if j.val < 3 then 52 else (if j.val < 4 then 41 else 40)))
def hex_1551546 : String := "4007420707"
theorem cover_1551546 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1551546 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1551546)
  decide +kernel
#print axioms cover_1551546

def state_1551552 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 98 else 58) else (if j.val < 3 then 52 else (if j.val < 4 then 41 else 41)))
def hex_1551552 : String := "424143440706060741434407400642410507050707"
theorem cover_1551552 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1551552 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 21) (hex := hex_1551552)
  decide +kernel
#print axioms cover_1551552
end Mub6.Numerical.CircleFullD0.Forest
