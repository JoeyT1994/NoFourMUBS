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
def state_1617612 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 2)))
def hex_1617612 : String := "444042430941050943410508410544420508054243064105440505434105440505054042094309054243090943440509440505"
theorem cover_1617612 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1617612 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 51) (hex := hex_1617612)
  decide +kernel
#print axioms cover_1617612

def state_1617665 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
def hex_1617665 : String := "424344410709074441080A0843444107090744414243050505420A4309440540050508"
theorem cover_1617665 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1617665 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 35) (hex := hex_1617665)
  decide +kernel
#print axioms cover_1617665

def state_1617700 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
def hex_1617700 : String := "4243440A080A4309440942434006080843074041060641444208070606"
theorem cover_1617700 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1617700 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 29) (hex := hex_1617700)
  decide +kernel
#print axioms cover_1617700

def state_1617730 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
def hex_1617730 : String := "424344404108090808444041080A08084344404142080709090844404142430805054243090A43090541420606424309440608430906404108420843070808"
theorem cover_1617730 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1617730 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 63) (hex := hex_1617730)
  decide +kernel
#print axioms cover_1617730

def state_1617794 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 2 else 3)))
def hex_1617794 : String := "4309440908"
theorem cover_1617794 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1617794 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1617794)
  decide +kernel
#print axioms cover_1617794

def state_1617799 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 2 else 3)))
def hex_1617799 : String := "4344090944404209090940424341080908430941444208430740070707440906424308084309414440420843074107094208090844094042080608"
theorem cover_1617799 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1617799 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 59) (hex := hex_1617799)
  decide +kernel
#print axioms cover_1617799
end Mub6.Numerical.CircleFullD0.Forest
