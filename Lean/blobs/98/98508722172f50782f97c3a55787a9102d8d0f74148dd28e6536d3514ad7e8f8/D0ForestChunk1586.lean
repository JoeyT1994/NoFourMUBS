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
def state_2253958 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 34 else 103) else (if j.val < 3 then 88 else (if j.val < 4 then 92 else 110)))
def hex_2253958 : String := "40434142440A0A09424409400943090909410A424440090A40050A0943410A42444043090A0A40430A0A0A440909410A420A0A"
theorem cover_2253958 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2253958 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 51) (hex := hex_2253958)
  decide +kernel
#print axioms cover_2253958

def state_2254009 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 34 else 103) else (if j.val < 3 then 88 else (if j.val < 4 then 92 else 111)))
def hex_2254009 : String := "404341420A0A4244400743090A0609410A42050943410A42440A060A0A"
theorem cover_2254009 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2254009 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 29) (hex := hex_2254009)
  decide +kernel
#print axioms cover_2254009

def state_2254038 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 34 else 103) else (if j.val < 3 then 89 else (if j.val < 4 then 92 else 55)))
def hex_2254038 : String := "44400943090A40090A"
theorem cover_2254038 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2254038 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 9) (hex := hex_2254038)
  decide +kernel
#print axioms cover_2254038

def state_2254047 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 34 else 51) else (if j.val < 3 then 44 else (if j.val < 4 then 93 else 55)))
def hex_2254047 : String := "410A42444043410A4205090A0A40430A050A440A0A"
theorem cover_2254047 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2254047 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 21) (hex := hex_2254047)
  decide +kernel
#print axioms cover_2254047

def state_2254068 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 51) else (if j.val < 3 then 44 else (if j.val < 4 then 46 else 55)))
def hex_2254068 : String := "43410A42444043410A42BE0A0A0A4043410A420A0A0A0A44070A410742440A0A07"
theorem cover_2254068 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2254068 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 33) (hex := hex_2254068)
  decide +kernel
#print axioms cover_2254068

def state_2254101 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 51) else (if j.val < 3 then 45 else (if j.val < 4 then 46 else 27)))
def hex_2254101 : String := "440640434241050905420A0707"
theorem cover_2254101 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2254101 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 13) (hex := hex_2254101)
  decide +kernel
#print axioms cover_2254101

def state_2254114 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 25) else (if j.val < 3 then 22 else (if j.val < 4 then 47 else 27)))
def hex_2254114 : String := "41074244404341064244060A060A074043410A42050A0A0A440607"
theorem cover_2254114 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2254114 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 27) (hex := hex_2254114)
  decide +kernel
#print axioms cover_2254114

def state_2254141 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 25) else (if j.val < 3 then 23 else (if j.val < 4 then 11 else 13)))
def hex_2254141 : String := "43054406404243060806424341054405050707"
theorem cover_2254141 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2254141 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 19) (hex := hex_2254141)
  decide +kernel
#print axioms cover_2254141
end Mub6.Numerical.CircleFullD0.Forest
