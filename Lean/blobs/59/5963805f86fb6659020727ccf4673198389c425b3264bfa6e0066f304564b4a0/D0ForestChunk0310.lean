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
def state_1011843 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 56) else (if j.val < 3 then 19 else (if j.val < 4 then 27 else 45)))
def hex_1011843 : String := "42434044420A050A4442414306400A0643050A41060542410643060A06400A44420A4143400A06080A0A43400506400A44414243050605054106420A05"
theorem cover_1011843 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1011843 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 61) (hex := hex_1011843)
  decide +kernel
#print axioms cover_1011843

def state_1011904 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 57) else (if j.val < 3 then 19 else (if j.val < 4 then 27 else 45)))
def hex_1011904 : String := "4243400A4441050541420A05050A430505"
theorem cover_1011904 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1011904 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 17) (hex := hex_1011904)
  decide +kernel
#print axioms cover_1011904

def state_1011922 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 19 else (if j.val < 4 then 27 else 44)))
def hex_1011922 : String := "414243404442070542410607060640440742074143060807074305404405410605064243070705"
theorem cover_1011922 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1011922 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 39) (hex := hex_1011922)
  decide +kernel
#print axioms cover_1011922

def state_1011961 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 19 else (if j.val < 4 then 27 else 45)))
def hex_1011961 : String := "4142430640444208410643060808080642434044094142090609094044070A07430540440541060506"
theorem cover_1011961 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1011961 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 41) (hex := hex_1011961)
  decide +kernel
#print axioms cover_1011961

def state_1012002 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 29) else (if j.val < 3 then 9 else (if j.val < 4 then 27 else 22)))
def hex_1012002 : String := "42400A07404405420A05440742094143050505"
theorem cover_1012002 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1012002 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 19) (hex := hex_1012002)
  decide +kernel
#print axioms cover_1012002

def state_1012030 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 56) else (if j.val < 3 then 36 else (if j.val < 4 then 52 else 46)))
def hex_1012030 : String := "4443414240074443060706064240440A074443090943410609410709400744430641060606414240074443410505050507420A400A44430A0A0A430741070A"
theorem cover_1012030 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1012030 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 63) (hex := hex_1012030)
  decide +kernel
#print axioms cover_1012030
end Mub6.Numerical.CircleFullD0.Forest
