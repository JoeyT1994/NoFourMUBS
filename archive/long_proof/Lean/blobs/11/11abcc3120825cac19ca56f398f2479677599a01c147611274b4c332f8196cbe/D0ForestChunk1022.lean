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
def state_1545678 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 118) else (if j.val < 3 then 102 else (if j.val < 4 then 81 else 86)))
def hex_1545678 : String := "40064206444106434006424408064408060606"
theorem cover_1545678 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1545678 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 19) (hex := hex_1545678)
  decide +kernel
#print axioms cover_1545678

def state_1545698 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 198 else 119) else (if j.val < 3 then 102 else (if j.val < 4 then 81 else 86)))
def hex_1545698 : String := "4244070644434106070606"
theorem cover_1545698 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1545698 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_1545698)
  decide +kernel
#print axioms cover_1545698

def state_1545710 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 199 else 119) else (if j.val < 3 then 204 else (if j.val < 4 then 81 else 86)))
def hex_1545710 : String := "4443414006080707434106404205440706420844080806"
theorem cover_1545710 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1545710 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 23) (hex := hex_1545710)
  decide +kernel
#print axioms cover_1545710

def state_1545734 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 199 else 119) else (if j.val < 3 then 205 else (if j.val < 4 then 81 else 172)))
def hex_1545734 : String := "434140424407064408430A060840420744070808414006420744070607"
theorem cover_1545734 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1545734 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 29) (hex := hex_1545734)
  decide +kernel
#print axioms cover_1545734

def state_1545764 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 199 else 119) else (if j.val < 3 then 205 else (if j.val < 4 then 162 else 173)))
def hex_1545764 : String := "4140064244430806064443084106084341050A06404244430806430A0644430A410605430A06424408430808440843084140060808"
theorem cover_1545764 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1545764 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 53) (hex := hex_1545764)
  decide +kernel
#print axioms cover_1545764

def state_1545817 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 199 else 119) else (if j.val < 3 then 205 else (if j.val < 4 then 163 else 173)))
def hex_1545817 : String := "4106400642094443080643410640050806"
theorem cover_1545817 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1545817 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 17) (hex := hex_1545817)
  decide +kernel
#print axioms cover_1545817

def state_1545836 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 118) else (if j.val < 3 then 102 else (if j.val < 4 then 80 else 87)))
def hex_1545836 : String := "400642444307060607"
theorem cover_1545836 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1545836 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1545836)
  decide +kernel
#print axioms cover_1545836

def state_1545845 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 119) else (if j.val < 3 then 102 else (if j.val < 4 then 80 else 87)))
def hex_1545845 : String := "404244430A0606440A0A424443410A0A4140064206444307060640420A0A4244080944080A430A4106400642090744430A414006420707400A0A430741060A"
theorem cover_1545845 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1545845 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 63) (hex := hex_1545845)
  decide +kernel
#print axioms cover_1545845
end Mub6.Numerical.CircleFullD0.Forest
