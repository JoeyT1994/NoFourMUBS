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
def state_2263923 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 73 else 105) else (if j.val < 3 then 88 else (if j.val < 4 then 91 else 111)))
def hex_2263923 : String := "4342410806414440430542060543054206050844404342060906434206050606420641444006060606"
theorem cover_2263923 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2263923 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 41) (hex := hex_2263923)
  decide +kernel
#print axioms cover_2263923

def state_2263965 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 104) else (if j.val < 3 then 89 else (if j.val < 4 then 91 else 55)))
def hex_2263965 : String := "4405404305424105444009050A0507"
theorem cover_2263965 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2263965 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_2263965)
  decide +kernel
#print axioms cover_2263965

def state_2263980 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 105) else (if j.val < 3 then 89 else (if j.val < 4 then 91 else 55)))
def hex_2263980 : String := "444043094241090909430542410540090705404342414405090909424144090909094342410544400905400943050605424144074006064440090706410509"
theorem cover_2263980 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2263980 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 63) (hex := hex_2263980)
  decide +kernel
#print axioms cover_2263980

def state_2264044 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 52) else (if j.val < 3 then 44 else (if j.val < 4 then 45 else 54)))
def hex_2264044 : String := "4305424105404405434241050505070705"
theorem cover_2264044 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2264044 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 17) (hex := hex_2264044)
  decide +kernel
#print axioms cover_2264044

def state_2264062 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 52) else (if j.val < 3 then 44 else (if j.val < 4 then 90 else 55)))
def hex_2264062 : String := "424105404405430542084105054405430542080505"
theorem cover_2264062 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2264062 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 21) (hex := hex_2264062)
  decide +kernel
#print axioms cover_2264062

def state_2264085 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 104) else (if j.val < 3 then 88 else (if j.val < 4 then 91 else 55)))
def hex_2264085 : String := "4044070807"
theorem cover_2264085 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2264085 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_2264085)
  decide +kernel
#print axioms cover_2264085

def state_2264090 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 105) else (if j.val < 3 then 88 else (if j.val < 4 then 91 else 55)))
def hex_2264090 : String := "40444342414044050705404443054206050644070641054044050505424107400606074342410606414008054044060606420641060644074342060707"
theorem cover_2264090 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2264090 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 61) (hex := hex_2264090)
  decide +kernel
#print axioms cover_2264090

def state_2264151 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 52) else (if j.val < 3 then 89 else (if j.val < 4 then 91 else 55)))
def hex_2264151 : String := "41054044074342410540440543050605050707"
theorem cover_2264151 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2264151 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 19) (hex := hex_2264151)
  decide +kernel
#print axioms cover_2264151
end Mub6.Numerical.CircleFullD0.Forest
