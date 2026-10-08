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
def state_1527769 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 58) else (if j.val < 3 then 90 else (if j.val < 4 then 34 else 44)))
def hex_1527769 : String := "444143404209090909434042444109054109054441434042094408090809434005080541090542094408094042094409050941094340420944410905050909"
theorem cover_1527769 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1527769 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 63) (hex := hex_1527769)
  decide +kernel
#print axioms cover_1527769

def state_1527834 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 116) else (if j.val < 3 then 91 else (if j.val < 4 then 34 else 88)))
def hex_1527834 : String := "434042444109434042090A0809094441074307400A070742090740420944090909"
theorem cover_1527834 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1527834 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 33) (hex := hex_1527834)
  decide +kernel
#print axioms cover_1527834

def state_1527870 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 194 else 117) else (if j.val < 3 then 182 else (if j.val < 4 then 68 else 88)))
def hex_1527870 : String := "444143404244084109050A0840420944080909434042050A0840050841434042440907074209070943400542440505444107050505"
theorem cover_1527870 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1527870 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 53) (hex := hex_1527870)
  decide +kernel
#print axioms cover_1527870

def state_1527923 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 194 else 117) else (if j.val < 3 then 183 else (if j.val < 4 then 68 else 88)))
def hex_1527923 : String := "4441430A400A08430A400A084107430A400A4244050507"
theorem cover_1527923 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1527923 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 23) (hex := hex_1527923)
  decide +kernel
#print axioms cover_1527923

def state_1527946 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 195 else 117) else (if j.val < 3 then 91 else (if j.val < 4 then 68 else 88)))
def hex_1527946 : String := "4244084109430609440807"
theorem cover_1527946 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1527946 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_1527946)
  decide +kernel
#print axioms cover_1527946

def state_1527957 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 117) else (if j.val < 3 then 91 else (if j.val < 4 then 69 else 88)))
def hex_1527957 : String := "40424441090541090544414340424409050A09094340054205080541094340054205050542094441080809"
theorem cover_1527957 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1527957 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 43) (hex := hex_1527957)
  decide +kernel
#print axioms cover_1527957
end Mub6.Numerical.CircleFullD0.Forest
