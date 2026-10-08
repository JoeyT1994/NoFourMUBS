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
def state_1503930 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 172) else (if j.val < 3 then 82 else (if j.val < 4 then 209 else 238)))
def hex_1503930 : String := "4205404341444205054240430A050507884144054205400A0505434144054205070505"
theorem cover_1503930 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1503930 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 35) (hex := hex_1503930)
  decide +kernel
#print axioms cover_1503930

def state_1503965 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 172) else (if j.val < 3 then 82 else (if j.val < 4 then 209 else 239)))
def hex_1503965 : String := "42404341444205400806068808064043410A884144424008050A0A88434144420907098841444205070688"
theorem cover_1503965 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1503965 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 43) (hex := hex_1503965)
  decide +kernel
#print axioms cover_1503965

def state_1504008 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 173) else (if j.val < 3 then 82 else (if j.val < 4 then 209 else 119)))
def hex_1504008 : String := "88"
theorem cover_1504008 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1504008 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1504008)
  decide +kernel
#print axioms cover_1504008

def state_1504009 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 86) else (if j.val < 3 then 82 else (if j.val < 4 then 104 else 119)))
def hex_1504009 : String := "4341444209404307410707074206098841444205404341050505054206404309060688"
theorem cover_1504009 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1504009 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 35) (hex := hex_1504009)
  decide +kernel
#print axioms cover_1504009

def state_1504044 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 86) else (if j.val < 3 then 83 else (if j.val < 4 then 104 else 119)))
def hex_1504044 : String := "4043414244070A07884142444043070707400A4307070788430841424407070788"
theorem cover_1504044 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1504044 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 33) (hex := hex_1504044)
  decide +kernel
#print axioms cover_1504044

def state_1504078 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 86) else (if j.val < 3 then 41 else (if j.val < 4 then 105 else 118)))
def hex_1504078 : String := "4205404143420507050505"
theorem cover_1504078 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1504078 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 11) (hex := hex_1504078)
  decide +kernel
#print axioms cover_1504078

def state_1504090 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 86) else (if j.val < 3 then 82 else (if j.val < 4 then 105 else 119)))
def hex_1504090 : String := "4041434405420540434144420540080508880843410688050543880541434405060505"
theorem cover_1504090 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1504090 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 35) (hex := hex_1504090)
  decide +kernel
#print axioms cover_1504090

def state_1504127 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 172) else (if j.val < 3 then 83 else (if j.val < 4 then 105 else 119)))
def hex_1504127 : String := "43424440434107074105054307054043410A88410A8843410707410788440707424405404108438805414342050705054407400707"
theorem cover_1504127 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1504127 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 53) (hex := hex_1504127)
  decide +kernel
#print axioms cover_1504127
end Mub6.Numerical.CircleFullD0.Forest
