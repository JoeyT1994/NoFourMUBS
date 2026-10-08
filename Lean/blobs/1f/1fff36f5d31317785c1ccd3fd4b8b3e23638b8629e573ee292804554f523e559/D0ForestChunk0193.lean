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
def state_983826 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 53) else (if j.val < 3 then 34 else (if j.val < 4 then 102 else 41)))
def hex_983826 : String := "4144424005434105050605424006434144420609424006090944060641440609064043054105054341440509054109054405420605"
theorem cover_983826 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_983826 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 53) (hex := hex_983826)
  decide +kernel
#print axioms cover_983826

def state_983879 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 53) else (if j.val < 3 then 34 else (if j.val < 4 then 103 else 41)))
def hex_983879 : String := "414406420640064341090641090606"
theorem cover_983879 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_983879 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 15) (hex := hex_983879)
  decide +kernel
#print axioms cover_983879

def state_983895 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 53) else (if j.val < 3 then 34 else (if j.val < 4 then 102 else 41)))
def hex_983895 : String := "4144420705424043410A44070A414407424006070A07430A0740430A410A44050A0A440742074043050507"
theorem cover_983895 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_983895 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 43) (hex := hex_983895)
  decide +kernel
#print axioms cover_983895

def state_983938 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 53) else (if j.val < 3 then 34 else (if j.val < 4 then 103 else 41)))
def hex_983938 : String := "414407424043414407420609060607404341440909440542070A410907430A0707"
theorem cover_983938 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_983938 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 33) (hex := hex_983938)
  decide +kernel
#print axioms cover_983938

def state_983971 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 53) else (if j.val < 3 then 35 else (if j.val < 4 then 51 else 41)))
def hex_983971 : String := "4043054144054240054305050505434144050A05414405424043054109050A0505"
theorem cover_983971 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_983971 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 33) (hex := hex_983971)
  decide +kernel
#print axioms cover_983971

def state_984007 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 26) else (if j.val < 3 then 16 else (if j.val < 4 then 50 else 21)))
def hex_984007 : String := "41444243400705400605430740074107444243070607070744420643400641444206080708400641440642060706424340060506430740064441070607"
theorem cover_984007 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_984007 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 61) (hex := hex_984007)
  decide +kernel
#print axioms cover_984007
end Mub6.Numerical.CircleFullD0.Forest
