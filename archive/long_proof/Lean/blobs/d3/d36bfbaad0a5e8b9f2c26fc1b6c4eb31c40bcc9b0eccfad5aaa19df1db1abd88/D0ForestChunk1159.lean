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
def state_1578615 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 32) else (if j.val < 3 then 97 else (if j.val < 4 then 52 else 51)))
def hex_1578615 : String := "444309094340414244090609424443090943400741424407060607064409430706410842444308084308080840064108424443080943080608"
theorem cover_1578615 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1578615 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 57) (hex := hex_1578615)
  decide +kernel
#print axioms cover_1578615

def state_1578676 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 33) else (if j.val < 3 then 96 else (if j.val < 4 then 104 else 102)))
def hex_1578676 : String := "41424443064008064340414206440608060640414208440808084142064406430609064409434009094009094244064306084406430640074142060906"
theorem cover_1578676 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1578676 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 61) (hex := hex_1578676)
  decide +kernel
#print axioms cover_1578676

def state_1578737 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 33) else (if j.val < 3 then 96 else (if j.val < 4 then 104 else 102)))
def hex_1578737 : String := "41420644064306404109060606"
theorem cover_1578737 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1578737 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1578737)
  decide +kernel
#print axioms cover_1578737

def state_1578751 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 33) else (if j.val < 3 then 96 else (if j.val < 4 then 105 else 102)))
def hex_1578751 : String := "414244434008090A434008410A0A0A4409434009094009094244080844430909434008414244080809420807400841420A0908"
theorem cover_1578751 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1578751 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 51) (hex := hex_1578751)
  decide +kernel
#print axioms cover_1578751

def state_1578802 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 33) else (if j.val < 3 then 96 else (if j.val < 4 then 105 else 102)))
def hex_1578802 : String := "41424443060A4340410A420644060A060A44094340090940090942440643060A4443060943404142060906064041420A09420A0941420A09420609"
theorem cover_1578802 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1578802 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 59) (hex := hex_1578802)
  decide +kernel
#print axioms cover_1578802
end Mub6.Numerical.CircleFullD0.Forest
