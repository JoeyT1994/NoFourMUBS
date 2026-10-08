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
def state_2264665 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 53) else (if j.val < 3 then 89 else (if j.val < 4 then 90 else 55)))
def hex_2264665 : String := "41404405430542410540094405060505404443050843420A054241400944090609094443054241050805434241050A05424140440A064405060A410509"
theorem cover_2264665 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2264665 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 61) (hex := hex_2264665)
  decide +kernel
#print axioms cover_2264665

def state_2264729 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 74 else 106) else (if j.val < 3 then 88 else (if j.val < 4 then 91 else 55)))
def hex_2264729 : String := "44434241404406064406060641404443054241050605434206050644054305064044080644430A060642064140444342060706060740060643420641060606"
theorem cover_2264729 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2264729 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 63) (hex := hex_2264729)
  decide +kernel
#print axioms cover_2264729

def state_2264792 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 75 else 106) else (if j.val < 3 then 88 else (if j.val < 4 then 91 else 55)))
def hex_2264792 : String := "44434241400606064107404443050606440506420641070643420641060606"
theorem cover_2264792 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2264792 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 31) (hex := hex_2264792)
  decide +kernel
#print axioms cover_2264792

def state_2264823 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 107) else (if j.val < 3 then 88 else (if j.val < 4 then 91 else 55)))
def hex_2264823 : String := "40444342060A06064443420641400606060606"
theorem cover_2264823 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2264823 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 19) (hex := hex_2264823)
  decide +kernel
#print axioms cover_2264823

def state_2264844 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 74 else 106) else (if j.val < 3 then 89 else (if j.val < 4 then 91 else 55)))
def hex_2264844 : String := "4443424105400844050905424107080843424140444305060644050640440606440606410509424140060606410709"
theorem cover_2264844 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2264844 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 47) (hex := hex_2264844)
  decide +kernel
#print axioms cover_2264844

def state_2264891 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 75 else 106) else (if j.val < 3 then 89 else (if j.val < 4 then 91 else 55)))
def hex_2264891 : String := "4443050743424107400606054241060607"
theorem cover_2264891 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2264891 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 17) (hex := hex_2264891)
  decide +kernel
#print axioms cover_2264891
end Mub6.Numerical.CircleFullD0.Forest
