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
def state_2282628 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 56) else (if j.val < 3 then 95 else (if j.val < 4 then 88 else 62)))
def hex_2282628 : String := "4041054442430540410544054243050505050542434041054405080540410844424308060908410544420805084305400505410544054243050705"
theorem cover_2282628 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2282628 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 59) (hex := hex_2282628)
  decide +kernel
#print axioms cover_2282628

def state_2282687 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 56) else (if j.val < 3 then 95 else (if j.val < 4 then 89 else 62)))
def hex_2282687 : String := "404107440742434041060607060707"
theorem cover_2282687 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2282687 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_2282687)
  decide +kernel
#print axioms cover_2282687

def state_2282702 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 56) else (if j.val < 3 then 47 else (if j.val < 4 then 44 else 63)))
def hex_2282702 : String := "42430808434041084442430808434009050A42080A41084442084305070840410844424308060A0A4107440708"
theorem cover_2282702 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2282702 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 45) (hex := hex_2282702)
  decide +kernel
#print axioms cover_2282702

def state_2282754 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 114) else (if j.val < 3 then 188 else (if j.val < 4 then 88 else 124)))
def hex_2282754 : String := "434041440A08070A400606"
theorem cover_2282754 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2282754 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_2282754)
  decide +kernel
#print axioms cover_2282754

def state_2282767 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 172 else 114) else (if j.val < 3 then 189 else (if j.val < 4 then 176 else 124)))
def hex_2282767 : String := "414442430A0A43054041050A054243074007084340074105074041440508074105440A4206430505440A4207430740070A"
theorem cover_2282767 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2282767 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 49) (hex := hex_2282767)
  decide +kernel
#print axioms cover_2282767

def state_2282816 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 173 else 114) else (if j.val < 3 then 189 else (if j.val < 4 then 176 else 124)))
def hex_2282816 : String := "4144420A0542430A40080843054041050A050A"
theorem cover_2282816 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2282816 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_2282816)
  decide +kernel
#print axioms cover_2282816

def state_2282836 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 172 else 114) else (if j.val < 3 then 189 else (if j.val < 4 then 177 else 124)))
def hex_2282836 : String := "414442434006060643404105440A0641050A400606420643404106064106060644420A430A0642064340070A06"
theorem cover_2282836 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2282836 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 45) (hex := hex_2282836)
  decide +kernel
#print axioms cover_2282836
end Mub6.Numerical.CircleFullD0.Forest
