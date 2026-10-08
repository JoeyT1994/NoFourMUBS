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
def state_999655 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 55) else (if j.val < 3 then 74 else (if j.val < 4 then 54 else 87)))
def hex_999655 : String := "41434044434207050743420A050A440743420741080507400A07430707"
theorem cover_999655 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_999655 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 29) (hex := hex_999655)
  decide +kernel
#print axioms cover_999655

def state_999684 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 55) else (if j.val < 3 then 75 else (if j.val < 4 then 54 else 87)))
def hex_999684 : String := "41434005440542430541080505404442410A0505420A4143050805440742084108054305400507"
theorem cover_999684 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_999684 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 39) (hex := hex_999684)
  decide +kernel
#print axioms cover_999684

def state_999723 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 55) else (if j.val < 3 then 37 else (if j.val < 4 then 54 else 43)))
def hex_999723 : String := "440742074143404405420705060707"
theorem cover_999723 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_999723 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_999723)
  decide +kernel
#print axioms cover_999723

def state_999738 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 55) else (if j.val < 3 then 37 else (if j.val < 4 then 55 else 43)))
def hex_999738 : String := "404442064143070606424108064143400A08080A07"
theorem cover_999738 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_999738 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_999738)
  decide +kernel
#print axioms cover_999738

def state_999759 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 27) else (if j.val < 3 then 18 else (if j.val < 4 then 27 else 21)))
def hex_999759 : String := "4407424108074108430707"
theorem cover_999759 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_999759 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_999759)
  decide +kernel
#print axioms cover_999759

def state_999774 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 54) else (if j.val < 3 then 38 else (if j.val < 4 then 27 else 42)))
def hex_999774 : String := "434044054241050505440542410A0505404442434109050743054109054243410905410807430541090544420743050742434108070743410905410807"
theorem cover_999774 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_999774 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 61) (hex := hex_999774)
  decide +kernel
#print axioms cover_999774

def state_999835 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 55) else (if j.val < 3 then 38 else (if j.val < 4 then 27 else 42)))
def hex_999835 : String := "430540440542070507"
theorem cover_999835 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_999835 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_999835)
  decide +kernel
#print axioms cover_999835

def state_999844 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 39 else (if j.val < 4 then 27 else 42)))
def hex_999844 : String := "4143054044050544054243054109050505"
theorem cover_999844 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_999844 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 17) (hex := hex_999844)
  decide +kernel
#print axioms cover_999844
end Mub6.Numerical.CircleFullD0.Forest
