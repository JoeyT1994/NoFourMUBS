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
def state_1338688 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 116 else 193) else (if j.val < 3 then 176 else (if j.val < 4 then 66 else 179)))
def hex_1338688 : String := "404308410508434144420A4043410A08410A08090A4408084144424007064005094208404308050A44420640050608"
theorem cover_1338688 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1338688 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 47) (hex := hex_1338688)
  decide +kernel
#print axioms cover_1338688

def state_1338735 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 116 else 193) else (if j.val < 3 then 177 else (if j.val < 4 then 66 else 179)))
def hex_1338735 : String := "4043414405064405070543414409424043410A07410608090944094240070907414409424005090944094240050909"
theorem cover_1338735 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1338735 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 47) (hex := hex_1338735)
  decide +kernel
#print axioms cover_1338735

def state_1338782 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 116 else 96) else (if j.val < 3 then 88 else (if j.val < 4 then 67 else 89)))
def hex_1338782 : String := "414405424005070544054240054341440542070544054208050505"
theorem cover_1338782 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1338782 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 27) (hex := hex_1338782)
  decide +kernel
#print axioms cover_1338782

def state_1338809 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 117 else 96) else (if j.val < 3 then 88 else (if j.val < 4 then 33 else 89)))
def hex_1338809 : String := "43414409420A094409424043410A06410A060609414407420709440942404341074406420609070609"
theorem cover_1338809 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1338809 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 41) (hex := hex_1338809)
  decide +kernel
#print axioms cover_1338809

def state_1338850 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 58 else 96) else (if j.val < 3 then 89 else (if j.val < 4 then 33 else 44)))
def hex_1338850 : String := "440940434142440506054244400509400509090509"
theorem cover_1338850 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1338850 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 21) (hex := hex_1338850)
  decide +kernel
#print axioms cover_1338850

def state_1338873 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 58 else 97) else (if j.val < 3 then 88 else (if j.val < 4 then 33 else 88)))
def hex_1338873 : String := "06"
theorem cover_1338873 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1338873 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1338873)
  decide +kernel
#print axioms cover_1338873

def state_1338875 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 116 else 97) else (if j.val < 3 then 88 else (if j.val < 4 then 33 else 89)))
def hex_1338875 : String := "434144420640050942084043070543414409070741440942080744090744060841440542400543414406080605054405420605"
theorem cover_1338875 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1338875 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 51) (hex := hex_1338875)
  decide +kernel
#print axioms cover_1338875

def state_1338926 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 117 else 97) else (if j.val < 3 then 88 else (if j.val < 4 then 33 else 89)))
def hex_1338926 : String := "434144064206090641440642060906"
theorem cover_1338926 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1338926 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 15) (hex := hex_1338926)
  decide +kernel
#print axioms cover_1338926
end Mub6.Numerical.CircleFullD0.Forest
