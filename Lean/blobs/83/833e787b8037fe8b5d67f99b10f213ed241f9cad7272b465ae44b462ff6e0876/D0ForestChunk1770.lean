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
def state_2297974 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 52) else (if j.val < 3 then 17 else (if j.val < 4 then 55 else 46)))
def hex_2297974 : String := "42444005414342054440054143420544400541430A05050505050505050544400541434244C40544C440054143090505080505"
theorem cover_2297974 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2297974 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 16) (count := 51) (hex := hex_2297974)
  decide +kernel
#print axioms cover_2297974

def state_2298025 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 53) else (if j.val < 3 then 17 else (if j.val < 4 then 27 else 46)))
def hex_2298025 : String := "43420544400541430605050505"
theorem cover_2298025 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2298025 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_2298025)
  decide +kernel
#print axioms cover_2298025

def state_2298038 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 26) else (if j.val < 3 then 17 else (if j.val < 4 then 27 else 47)))
def hex_2298038 : String := "40054143050505"
theorem cover_2298038 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2298038 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_2298038)
  decide +kernel
#print axioms cover_2298038

def state_2298045 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 27) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 23)))
def hex_2298045 : String := "430605"
theorem cover_2298045 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2298045 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_2298045)
  decide +kernel
#print axioms cover_2298045

def state_2298053 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 26) else (if j.val < 3 then 18 else (if j.val < 4 then 26 else 22)))
def hex_2298053 : String := "444143420909424006090A09414342400A4441430909094143424009090A0A09400A44410A09410A0942400644410A070A0A4309420708"
theorem cover_2298053 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2298053 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 55) (hex := hex_2298053)
  decide +kernel
#print axioms cover_2298053

def state_2298108 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 26) else (if j.val < 3 then 19 else (if j.val < 4 then 26 else 22)))
def hex_2298108 : String := "44410A09410A430908"
theorem cover_2298108 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2298108 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 9) (hex := hex_2298108)
  decide +kernel
#print axioms cover_2298108

def state_2298117 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 26) else (if j.val < 3 then 9 else (if j.val < 4 then 27 else 22)))
def hex_2298117 : String := "42444106074142060608440A0A"
theorem cover_2298117 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2298117 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 13) (hex := hex_2298117)
  decide +kernel
#print axioms cover_2298117

def state_2298130 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 27) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 22)))
def hex_2298130 : String := "434209094207440908"
theorem cover_2298130 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2298130 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 9) (hex := hex_2298130)
  decide +kernel
#print axioms cover_2298130

def state_2298143 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 26) else (if j.val < 3 then 18 else (if j.val < 4 then 26 else 44)))
def hex_2298143 : String := "4041434244054105090542444105094140094305420905094441050541400A0509430909414305424405404105050505434209054209440509"
theorem cover_2298143 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2298143 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 57) (hex := hex_2298143)
  decide +kernel
#print axioms cover_2298143

def state_2298205 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 52) else (if j.val < 3 then 36 else (if j.val < 4 then 52 else 90)))
def hex_2298205 : String := "4143400905400905430909"
theorem cover_2298205 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2298205 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 11) (hex := hex_2298205)
  decide +kernel
#print axioms cover_2298205
end Mub6.Numerical.CircleFullD0.Forest
