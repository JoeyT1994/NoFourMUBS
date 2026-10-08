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
def state_984993 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 52) else (if j.val < 3 then 17 else (if j.val < 4 then 51 else 21)))
def hex_984993 : String := "444240434107444209090741094409094341094442404309090A40090A42054007064108444205090540430709434106440A0641094409094240070507"
theorem cover_984993 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_984993 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 61) (hex := hex_984993)
  decide +kernel
#print axioms cover_984993

def state_985061 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 106) else (if j.val < 3 then 68 else (if j.val < 4 then 102 else 84)))
def hex_985061 : String := "4043410906064341440909444206400643080642400643410906064009430A094144090944064206400609"
theorem cover_985061 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_985061 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 43) (hex := hex_985061)
  decide +kernel
#print axioms cover_985061

def state_985104 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 106) else (if j.val < 3 then 69 else (if j.val < 4 then 102 else 84)))
def hex_985104 : String := "4043410708094341094408424008090841094442090509"
theorem cover_985104 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_985104 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 23) (hex := hex_985104)
  decide +kernel
#print axioms cover_985104

def state_985127 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 106) else (if j.val < 3 then 34 else (if j.val < 4 then 102 else 85)))
def hex_985127 : String := "4240430709434107444240060540070905410544420509054007430709"
theorem cover_985127 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_985127 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 29) (hex := hex_985127)
  decide +kernel
#print axioms cover_985127

def state_985157 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 107) else (if j.val < 3 then 34 else (if j.val < 4 then 102 else 84)))
def hex_985157 : String := "424006434144060606064008430841440842060806"
theorem cover_985157 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_985157 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 21) (hex := hex_985157)
  decide +kernel
#print axioms cover_985157

def state_985179 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 107) else (if j.val < 3 then 68 else (if j.val < 4 then 102 else 85)))
def hex_985179 : String := "40064344414206400643084406060641420540074307444105060506440641420540060506"
theorem cover_985179 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_985179 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 37) (hex := hex_985179)
  decide +kernel
#print axioms cover_985179
end Mub6.Numerical.CircleFullD0.Forest
