import CircleFullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_2281662 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 56) else (if j.val < 3 then 47 else (if j.val < 4 then 44 else 60)))
def hex_2281662 : String := "42434041054405420505050707"
theorem cover_2281662 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2281662 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_2281662)
  decide +kernel
#print axioms cover_2281662

def state_2281678 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 56) else (if j.val < 3 then 94 else (if j.val < 4 then 88 else 61)))
def hex_2281678 : String := "4144054208054442434005054041050A05054243404105440A420843050541050940414405064442064305060641050943054041054405424305060505"
theorem cover_2281678 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2281678 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 61) (hex := hex_2281678)
  decide +kernel
#print axioms cover_2281678

def state_2281739 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 56) else (if j.val < 3 then 94 else (if j.val < 4 then 88 else 61)))
def hex_2281739 : String := "41054405420905"
theorem cover_2281739 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2281739 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_2281739)
  decide +kernel
#print axioms cover_2281739

def state_2281746 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 56) else (if j.val < 3 then 94 else (if j.val < 4 then 89 else 61)))
def hex_2281746 : String := "40410744074243400606060707"
theorem cover_2281746 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2281746 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_2281746)
  decide +kernel
#print axioms cover_2281746

def state_2281759 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 56) else (if j.val < 3 then 95 else (if j.val < 4 then 44 else 61)))
def hex_2281759 : String := "4340050507"
theorem cover_2281759 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2281759 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_2281759)
  decide +kernel
#print axioms cover_2281759

def state_2281765 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 57) else (if j.val < 3 then 47 else (if j.val < 4 then 44 else 60)))
def hex_2281765 : String := "4243400A0A40414407420A07080743400808400807"
theorem cover_2281765 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2281765 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_2281765)
  decide +kernel
#print axioms cover_2281765

def state_2281789 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 57) else (if j.val < 3 then 94 else (if j.val < 4 then 88 else 61)))
def hex_2281789 : String := "4144420A430A400A0A42430A400A0A434041440A420A050A0A404144420A43050542430A064340050540410506070A414407420A070A0A"
theorem cover_2281789 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2281789 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 55) (hex := hex_2281789)
  decide +kernel
#print axioms cover_2281789

def state_2281844 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 57) else (if j.val < 3 then 94 else (if j.val < 4 then 88 else 61)))
def hex_2281844 : String := "41440A4209430A400A070A"
theorem cover_2281844 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2281844 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_2281844)
  decide +kernel
#print axioms cover_2281844

def state_2281855 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 57) else (if j.val < 3 then 94 else (if j.val < 4 then 89 else 61)))
def hex_2281855 : String := "40414442430A06434041070807074206434041440706440A06410744070606440A4206430A06414407420607440A42060A"
theorem cover_2281855 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2281855 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 49) (hex := hex_2281855)
  decide +kernel
#print axioms cover_2281855
end Mub6.Numerical.CircleFullD0.Forest
