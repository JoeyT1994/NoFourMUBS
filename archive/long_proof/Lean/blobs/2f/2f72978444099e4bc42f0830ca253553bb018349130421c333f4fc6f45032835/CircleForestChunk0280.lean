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
def state_1004599 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 184 else 110) else (if j.val < 3 then 74 else (if j.val < 4 then 107 else 88)))
def hex_1004599 : String := "444342414044050A4405430508050542414008080A410505434241400A060A410605420A41400A060A"
theorem cover_1004599 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1004599 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 41) (hex := hex_1004599)
  decide +kernel
#print axioms cover_1004599

def state_1004640 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 185 else 110) else (if j.val < 3 then 74 else (if j.val < 4 then 107 else 88)))
def hex_1004640 : String := "44434241064005060542410807410605434241064044430508060606420806"
theorem cover_1004640 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1004640 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 31) (hex := hex_1004640)
  decide +kernel
#print axioms cover_1004640

def state_1004671 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 111) else (if j.val < 3 then 74 else (if j.val < 4 then 107 else 88)))
def hex_1004671 : String := "40440543050A44430507434241400507050542410A0705"
theorem cover_1004671 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1004671 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_1004671)
  decide +kernel
#print axioms cover_1004671

def state_1004694 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 55) else (if j.val < 3 then 75 else (if j.val < 4 then 107 else 88)))
def hex_1004694 : String := "414044054305050605"
theorem cover_1004694 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1004694 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1004694)
  decide +kernel
#print axioms cover_1004694

def state_1004704 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 55) else (if j.val < 3 then 37 else (if j.val < 4 then 106 else 89)))
def hex_1004704 : String := "424140444306424106400A060606064044430505434241060505420A05444306424106050506410605"
theorem cover_1004704 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1004704 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 41) (hex := hex_1004704)
  decide +kernel
#print axioms cover_1004704

def state_1004745 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 55) else (if j.val < 3 then 37 else (if j.val < 4 then 107 else 89)))
def hex_1004745 : String := "42414044434241060A06420841060A43420806084443060806400A44434241400A060A410605420A41400A0605434241060A060A4106404405430505440506"
theorem cover_1004745 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1004745 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 63) (hex := hex_1004745)
  decide +kernel
#print axioms cover_1004745
end Mub6.Numerical.CircleFullD0.Forest
