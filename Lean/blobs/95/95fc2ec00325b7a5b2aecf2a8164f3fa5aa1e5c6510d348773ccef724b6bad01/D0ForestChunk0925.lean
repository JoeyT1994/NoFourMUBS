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
def state_1522574 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 58) else (if j.val < 3 then 45 else (if j.val < 4 then 35 else 43)))
def hex_1522574 : String := "404207440741060742440741090744414308070741094340420744074109050809"
theorem cover_1522574 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1522574 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 33) (hex := hex_1522574)
  decide +kernel
#print axioms cover_1522574

def state_1522607 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 59) else (if j.val < 3 then 45 else (if j.val < 4 then 17 else 43)))
def hex_1522607 : String := "4340420744074143400542070A05054244074143080707440741430840420708080807"
theorem cover_1522607 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1522607 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 35) (hex := hex_1522607)
  decide +kernel
#print axioms cover_1522607

def state_1522642 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 29) else (if j.val < 3 then 22 else (if j.val < 4 then 17 else 21)))
def hex_1522642 : String := "4244074143404209080809434007080744084143084042094408090843084042070808"
theorem cover_1522642 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1522642 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 35) (hex := hex_1522642)
  decide +kernel
#print axioms cover_1522642

def state_1522678 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 23 else (if j.val < 4 then 8 else 20)))
def hex_1522678 : String := "41430840424108084108080808"
theorem cover_1522678 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1522678 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 13) (hex := hex_1522678)
  decide +kernel
#print axioms cover_1522678

def state_1522693 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 28) else (if j.val < 3 then 23 else (if j.val < 4 then 16 else 21)))
def hex_1522693 : String := "404244410508410543400A05400A42440505054405054244050505"
theorem cover_1522693 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1522693 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 27) (hex := hex_1522693)
  decide +kernel
#print axioms cover_1522693

def state_1522723 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 28) else (if j.val < 3 then 46 else (if j.val < 4 then 17 else 42)))
def hex_1522723 : String := "41434006050643404244084106080A08404244060644060608"
theorem cover_1522723 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1522723 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 25) (hex := hex_1522723)
  decide +kernel
#print axioms cover_1522723

def state_1522748 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 28) else (if j.val < 3 then 46 else (if j.val < 4 then 17 else 43)))
def hex_1522748 : String := "4143400605064340424441060A41060A0A4244084105430740064208054405074006424441064308060944410643080641064340060706"
theorem cover_1522748 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1522748 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 55) (hex := hex_1522748)
  decide +kernel
#print axioms cover_1522748

def state_1522803 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 28) else (if j.val < 3 then 47 else (if j.val < 4 then 17 else 21)))
def hex_1522803 : String := "444105430A400A0841430505430A4006424441050A0707"
theorem cover_1522803 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1522803 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 23) (hex := hex_1522803)
  decide +kernel
#print axioms cover_1522803
end Mub6.Numerical.CircleFullD0.Forest
