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
def state_2252048 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 68 else 103) else (if j.val < 3 then 87 else (if j.val < 4 then 184 else 109)))
def hex_2252048 : String := "414244064043410607410A0543410A42050A0A064244400743410607410605400543070544064043074142050605434142440606060941420506420509"
theorem cover_2252048 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2252048 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 61) (hex := hex_2252048)
  decide +kernel
#print axioms cover_2252048

def state_2252109 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 68 else 103) else (if j.val < 3 then 87 else (if j.val < 4 then 185 else 109)))
def hex_2252109 : String := "414244060544060A4205440605"
theorem cover_2252109 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2252109 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 13) (hex := hex_2252109)
  decide +kernel
#print axioms cover_2252109

def state_2252124 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 69 else 206) else (if j.val < 3 then 87 else (if j.val < 4 then 184 else 109)))
def hex_2252124 : String := "42440640430A0A0A44060A"
theorem cover_2252124 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2252124 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_2252124)
  decide +kernel
#print axioms cover_2252124

def state_2252137 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 69 else 207) else (if j.val < 3 then 174 else (if j.val < 4 then 184 else 218)))
def hex_2252137 : String := "40434106420506414205060543414244060A0642444005060544064006BE41420A064205440605"
theorem cover_2252137 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2252137 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 39) (hex := hex_2252137)
  decide +kernel
#print axioms cover_2252137

def state_2252176 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 69 else 207) else (if j.val < 3 then 174 else (if j.val < 4 then 184 else 219)))
def hex_2252176 : String := "4043414205440A050505434142080A42054440050A05410505"
theorem cover_2252176 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2252176 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 25) (hex := hex_2252176)
  decide +kernel
#print axioms cover_2252176

def state_2252201 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 69 else 207) else (if j.val < 3 then 175 else (if j.val < 4 then 184 else 109)))
def hex_2252201 : String := "4406404341420A064244060709410A42050943410A42440A0A0A0A"
theorem cover_2252201 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2252201 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 27) (hex := hex_2252201)
  decide +kernel
#print axioms cover_2252201

def state_2252228 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 69 else 103) else (if j.val < 3 then 87 else (if j.val < 4 then 185 else 109)))
def hex_2252228 : String := "41420A0A42444005434105050505444043060A0A40430A050A"
theorem cover_2252228 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2252228 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 25) (hex := hex_2252228)
  decide +kernel
#print axioms cover_2252228
end Mub6.Numerical.CircleFullD0.Forest
