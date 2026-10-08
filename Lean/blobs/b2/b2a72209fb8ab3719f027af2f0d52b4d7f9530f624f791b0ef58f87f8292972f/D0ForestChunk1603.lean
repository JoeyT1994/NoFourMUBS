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
def state_2257938 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 52) else (if j.val < 3 then 42 else (if j.val < 4 then 91 else 52)))
def hex_2257938 : String := "41444240430A41060A430A414405090A0642404341090A41090A0940430641064406420A0643410505410744420A0542090544420A08420A400A430A0A"
theorem cover_2257938 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2257938 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 61) (hex := hex_2257938)
  decide +kernel
#print axioms cover_2257938

def state_2257999 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 52) else (if j.val < 3 then 42 else (if j.val < 4 then 45 else 52)))
def hex_2257999 : String := "434144050544050A414442404305410509050542090744420A400A05420A40430A4144070A0A430507"
theorem cover_2257999 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2257999 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 41) (hex := hex_2257999)
  decide +kernel
#print axioms cover_2257999

def state_2258042 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 52) else (if j.val < 3 then 42 else (if j.val < 4 then 90 else 53)))
def hex_2258042 : String := "414244090944404305414209050A430541050A404341090A41090A09420A440A0A"
theorem cover_2258042 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2258042 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 33) (hex := hex_2258042)
  decide +kernel
#print axioms cover_2258042

def state_2258077 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 104) else (if j.val < 3 then 84 else (if j.val < 4 then 91 else 53)))
def hex_2258077 : String := "440909"
theorem cover_2258077 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2258077 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_2258077)
  decide +kernel
#print axioms cover_2258077

def state_2258080 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 104) else (if j.val < 3 then 85 else (if j.val < 4 then 91 else 53)))
def hex_2258080 : String := "444043414209440509420A0A414209440609424409094440060A400A094341094209440509410942094409094043410942094409094109420944090909"
theorem cover_2258080 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2258080 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 61) (hex := hex_2258080)
  decide +kernel
#print axioms cover_2258080

def state_2258141 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 105) else (if j.val < 3 then 42 else (if j.val < 4 then 91 else 53)))
def hex_2258141 : String := "42440A094440430A0A430A4142090A0A40430A4142090A0A430A41090A"
theorem cover_2258141 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2258141 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 29) (hex := hex_2258141)
  decide +kernel
#print axioms cover_2258141
end Mub6.Numerical.CircleFullD0.Forest
