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
def state_1305623 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 65 else 177) else (if j.val < 3 then 192 else (if j.val < 4 then 116 else 178)))
def hex_1305623 : String := "4340B8424441430506050944414305060541430540B8050906"
theorem cover_1305623 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1305623 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 25) (hex := hex_1305623)
  decide +kernel
#print axioms cover_1305623

def state_1305648 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 65 else 88) else (if j.val < 3 then 192 else (if j.val < 4 then 116 else 179)))
def hex_1305648 : String := "414340420A07420A44410743060A070A430940420A44060A420A44060A"
theorem cover_1305648 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1305648 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 29) (hex := hex_1305648)
  decide +kernel
#print axioms cover_1305648

def state_1305679 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 65 else 176) else (if j.val < 3 then 193 else (if j.val < 4 then 116 else 178)))
def hex_1305679 : String := "4340B8424441074305400942440541050509070740B84244094109434006060609"
theorem cover_1305679 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1305679 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 33) (hex := hex_1305679)
  decide +kernel
#print axioms cover_1305679

def state_1305712 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 65 else 177) else (if j.val < 3 then 193 else (if j.val < 4 then 116 else 178)))
def hex_1305712 : String := "4340B84244414305060541430540B8420544050743050644414305060541070806"
theorem cover_1305712 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1305712 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 33) (hex := hex_1305712)
  decide +kernel
#print axioms cover_1305712

def state_1305745 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 65 else 88) else (if j.val < 3 then 193 else (if j.val < 4 then 116 else 179)))
def hex_1305745 : String := "4143074005424441074307060707434008424441430740074244070707080808404244060808424406410A06440608"
theorem cover_1305745 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1305745 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 47) (hex := hex_1305745)
  decide +kernel
#print axioms cover_1305745

def state_1305792 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 32 else 88) else (if j.val < 3 then 96 else (if j.val < 4 then 117 else 89)))
def hex_1305792 : String := "40054244060A4406410506"
theorem cover_1305792 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1305792 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_1305792)
  decide +kernel
#print axioms cover_1305792

def state_1305803 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 32 else 89) else (if j.val < 3 then 96 else (if j.val < 4 then 58 else 44)))
def hex_1305803 : String := "44064340424144B8080808424144430906090941444340080506080806"
theorem cover_1305803 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1305803 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 29) (hex := hex_1305803)
  decide +kernel
#print axioms cover_1305803

def state_1305832 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 32 else 44) else (if j.val < 3 then 97 else (if j.val < 4 then 58 else 44)))
def hex_1305832 : String := "414409434042444107080707424441094308064107084407074005424406410506094406430806"
theorem cover_1305832 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1305832 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 39) (hex := hex_1305832)
  decide +kernel
#print axioms cover_1305832
end Mub6.Numerical.CircleFullD0.Forest
