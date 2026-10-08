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
def state_1462806 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 4) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 6)))
def hex_1462806 : String := "440941400942434441400907090A090940094243440941400943410A0909090909"
theorem cover_1462806 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1462806 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 33) (hex := hex_1462806)
  decide +kernel
#print axioms cover_1462806

def state_1462839 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 4) else (if j.val < 3 then 11 else (if j.val < 4 then 6 else 6)))
def hex_1462839 : String := "4344060A09"
theorem cover_1462839 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1462839 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1462839)
  decide +kernel
#print axioms cover_1462839

def state_1462844 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 7)))
def hex_1462844 : String := "400A42430A410A44400A42434108444008430A0808080A0A0A"
theorem cover_1462844 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1462844 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 13) (count := 25) (hex := hex_1462844)
  decide +kernel
#print axioms cover_1462844

def state_1462869 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 3)))
def hex_1462869 : String := "4440094209074008420841080A"
theorem cover_1462869 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1462869 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 13) (hex := hex_1462869)
  decide +kernel
#print axioms cover_1462869

def state_1462885 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 6)))
def hex_1462885 : String := "404143060906414344420506424043060743414405420540060544050705400643064144054240060506064405420540094105054344064240060A0609"
theorem cover_1462885 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1462885 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 61) (hex := hex_1462885)
  decide +kernel
#print axioms cover_1462885

def state_1462947 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 7)))
def hex_1462947 : String := "4143420744060708430707"
theorem cover_1462947 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1462947 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_1462947)
  decide +kernel
#print axioms cover_1462947

def state_1462961 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 8 else (if j.val < 4 then 12 else 7)))
def hex_1462961 : String := "44400743414407074407070707"
theorem cover_1462961 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1462961 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 13) (hex := hex_1462961)
  decide +kernel
#print axioms cover_1462961

def state_1462976 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 10) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 14)))
def hex_1462976 : String := "434142070606410809"
theorem cover_1462976 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1462976 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 9) (hex := hex_1462976)
  decide +kernel
#print axioms cover_1462976

def state_1462986 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 10) else (if j.val < 3 then 9 else (if j.val < 4 then 24 else 14)))
def hex_1462986 : String := "41424440430607434406420741060644420706074007430A0744060A424406400743410707074406400643064142060606"
theorem cover_1462986 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1462986 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 49) (hex := hex_1462986)
  decide +kernel
#print axioms cover_1462986
end Mub6.Numerical.CircleFullD0.Forest
