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
def state_952036 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 84) else (if j.val < 3 then 104 else (if j.val < 4 then 35 else 107)))
def hex_952036 : String := "434042414443060505444340060808430605410644080642410A44430A070A0A40420541054408054241054407054105440705"
theorem cover_952036 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_952036 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 51) (hex := hex_952036)
  decide +kernel
#print axioms cover_952036

def state_952088 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 85) else (if j.val < 3 then 104 else (if j.val < 4 then 35 else 106)))
def hex_952088 : String := "43400842080808"
theorem cover_952088 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_952088 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_952088)
  decide +kernel
#print axioms cover_952088

def state_952097 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 85) else (if j.val < 3 then 104 else (if j.val < 4 then 70 else 107)))
def hex_952097 : String := "4241440843064042080642410508410608440843400642414408060841060640084208084144080644084306400608"
theorem cover_952097 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_952097 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 47) (hex := hex_952097)
  decide +kernel
#print axioms cover_952097

def state_952145 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 85) else (if j.val < 3 then 208 else (if j.val < 4 then 70 else 107)))
def hex_952145 : String := "4144434042080807400807430A40424107070A07444309084340424144080A4408430940080741090942410707094042410708410808420707"
theorem cover_952145 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_952145 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 57) (hex := hex_952145)
  decide +kernel
#print axioms cover_952145

def state_952202 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 85) else (if j.val < 3 then 209 else (if j.val < 4 then 70 else 107)))
def hex_952202 : String := "4144090A4409430940424108080809"
theorem cover_952202 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_952202 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 15) (hex := hex_952202)
  decide +kernel
#print axioms cover_952202

def state_952217 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 85) else (if j.val < 3 then 104 else (if j.val < 4 then 71 else 107)))
def hex_952217 : String := "404241440805440843080541440843080508424144070744074340420708070741440843404208080A054408434008420708400807"
theorem cover_952217 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_952217 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 53) (hex := hex_952217)
  decide +kernel
#print axioms cover_952217
end Mub6.Numerical.CircleFullD0.Forest
