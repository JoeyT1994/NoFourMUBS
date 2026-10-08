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
def state_1562675 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 122) else (if j.val < 3 then 105 else (if j.val < 4 then 84 else 89)))
def hex_1562675 : String := "444243410905054341404442080808444209430709094044050544420543050542054341070505410905420943414008074008444205070709"
theorem cover_1562675 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1562675 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 57) (hex := hex_1562675)
  decide +kernel
#print axioms cover_1562675

def state_1562732 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 123) else (if j.val < 3 then 105 else (if j.val < 4 then 84 else 89)))
def hex_1562732 : String := "4005440505"
theorem cover_1562732 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1562732 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1562732)
  decide +kernel
#print axioms cover_1562732

def state_1562737 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 61) else (if j.val < 3 then 105 else (if j.val < 4 then 85 else 89)))
def hex_1562737 : String := "4140050905"
theorem cover_1562737 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1562737 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1562737)
  decide +kernel
#print axioms cover_1562737

def state_1562743 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 61) else (if j.val < 3 then 52 else (if j.val < 4 then 42 else 88)))
def hex_1562743 : String := "4243410905054341404442434109050543060A4209434140440A09060609440609400506410905"
theorem cover_1562743 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1562743 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 39) (hex := hex_1562743)
  decide +kernel
#print axioms cover_1562743

def state_1562782 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 61) else (if j.val < 3 then 52 else (if j.val < 4 then 42 else 89)))
def hex_1562782 : String := "42094341404442094341094044420506090609090940444205430605420543414044050906050544060909"
theorem cover_1562782 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1562782 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 43) (hex := hex_1562782)
  decide +kernel
#print axioms cover_1562782

def state_1562825 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 30) else (if j.val < 3 then 52 else (if j.val < 4 then 43 else 44)))
def hex_1562825 : String := "4109400509"
theorem cover_1562825 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1562825 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1562825)
  decide +kernel
#print axioms cover_1562825

def state_1562837 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 120) else (if j.val < 3 then 106 else (if j.val < 4 then 84 else 88)))
def hex_1562837 : String := "404442080808444243410540440805050A4305054243050805"
theorem cover_1562837 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1562837 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 25) (hex := hex_1562837)
  decide +kernel
#print axioms cover_1562837

def state_1562863 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 121) else (if j.val < 3 then 106 else (if j.val < 4 then 84 else 88)))
def hex_1562863 : String := "44424341084008444243080843080808410840080A4341084008440908084243080808"
theorem cover_1562863 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1562863 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 35) (hex := hex_1562863)
  decide +kernel
#print axioms cover_1562863
end Mub6.Numerical.CircleFullD0.Forest
