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
def state_2298689 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 105) else (if j.val < 3 then 36 else (if j.val < 4 then 107 else 91)))
def hex_2298689 : String := "4244400941430909094041430942090909414306C406444009414305C409404143420909424409090A094143420607C4430609"
theorem cover_2298689 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2298689 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 51) (hex := hex_2298689)
  decide +kernel
#print axioms cover_2298689

def state_2298740 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 52) else (if j.val < 3 then 36 else (if j.val < 4 then 53 else 91)))
def hex_2298740 : String := "4143054244054041054305C405054306424440414305C406060644404105060540414305070606"
theorem cover_2298740 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2298740 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 39) (hex := hex_2298740)
  decide +kernel
#print axioms cover_2298740

def state_2298780 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 52) else (if j.val < 3 then 37 else (if j.val < 4 then 53 else 90)))
def hex_2298780 : String := "40410543054244054009050505"
theorem cover_2298780 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2298780 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_2298780)
  decide +kernel
#print axioms cover_2298780

def state_2298793 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 52) else (if j.val < 3 then 37 else (if j.val < 4 then 53 else 91)))
def hex_2298793 : String := "4041430507434244400905404107090707424440410A0941050940410A094107430742090744400A0507410543054244050705"
theorem cover_2298793 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2298793 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 51) (hex := hex_2298793)
  decide +kernel
#print axioms cover_2298793

def state_2298844 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 53) else (if j.val < 3 then 18 else (if j.val < 4 then 26 else 45)))
def hex_2298844 : String := "4342064440090506424440094143060906404143064209090606444009414305050640414342090942094409090941430642440606444009050706"
theorem cover_2298844 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2298844 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 59) (hex := hex_2298844)
  decide +kernel
#print axioms cover_2298844

def state_2298904 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 26) else (if j.val < 3 then 19 else (if j.val < 4 then 26 else 44)))
def hex_2298904 : String := "404143054244050A05094105430505"
theorem cover_2298904 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2298904 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 15) (hex := hex_2298904)
  decide +kernel
#print axioms cover_2298904
end Mub6.Numerical.CircleFullD0.Forest
