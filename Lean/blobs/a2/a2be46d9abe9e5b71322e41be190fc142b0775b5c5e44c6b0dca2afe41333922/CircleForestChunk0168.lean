import CircleFullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_61693 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 39) else (if j.val < 3 then 55 else (if j.val < 4 then 97 else 36)))
def hex_61693 : String := "404142440A4307070A42444340410707414244050707050843070707410A424443050A090A"
theorem cover_61693 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_61693 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 37) (hex := hex_61693)
  decide +kernel
#print axioms cover_61693

def state_61730 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 39) else (if j.val < 3 then 27 else (if j.val < 4 then 48 else 37)))
def hex_61730 : String := "424309404144420643090606090943094007410A09"
theorem cover_61730 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_61730 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 21) (hex := hex_61730)
  decide +kernel
#print axioms cover_61730

def state_61752 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 19) else (if j.val < 3 then 27 else (if j.val < 4 then 49 else 18)))
def hex_61752 : String := "41444243400506050A42050544420843400741070740074107074243400541054408050507"
theorem cover_61752 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_61752 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 37) (hex := hex_61752)
  decide +kernel
#print axioms cover_61752

def state_61789 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 19) else (if j.val < 3 then 27 else (if j.val < 4 then 49 else 18)))
def hex_61789 : String := "414442060A42060A4442434041060806064340410A42440807070A0A4206434007410A440A07400706"
theorem cover_61789 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_61789 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 41) (hex := hex_61789)
  decide +kernel
#print axioms cover_61789

def state_61830 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 27 else (if j.val < 4 then 24 else 19)))
def hex_61830 : String := "43404105444207070541444209070509404105074144420505054442060707"
theorem cover_61830 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_61830 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 31) (hex := hex_61830)
  decide +kernel
#print axioms cover_61830

def state_61861 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 13 else (if j.val < 4 then 25 else 9)))
def hex_61861 : String := "42404105440805064041054443410540054408050505414406054443404144090544084205054106440606064340050606"
theorem cover_61861 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_61861 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 49) (hex := hex_61861)
  decide +kernel
#print axioms cover_61861

def state_61910 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 13 else (if j.val < 4 then 13 else 4)))
def hex_61910 : String := "40410544084205054106440842064340050606"
theorem cover_61910 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_61910 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_61910)
  decide +kernel
#print axioms cover_61910
end Mub6.Numerical.CircleFullPrototype.Forest
