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
def state_1014046 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 28) else (if j.val < 3 then 42 else (if j.val < 4 then 30 else 42)))
def hex_1014046 : String := "41434006424406410905090606"
theorem cover_1014046 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1014046 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1014046)
  decide +kernel
#print axioms cover_1014046

def state_1014061 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 56) else (if j.val < 3 then 42 else (if j.val < 4 then 60 else 43)))
def hex_1014061 : String := "4044420641090542414309060A4107430507444241094305064109054241430909434005054006440642060A410943054044054205054405420905"
theorem cover_1014061 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1014061 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 59) (hex := hex_1014061)
  decide +kernel
#print axioms cover_1014061

def state_1014120 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 56) else (if j.val < 3 then 42 else (if j.val < 4 then 61 else 43)))
def hex_1014120 : String := "40440642064107064442064109064241430906064109434044060A4409420909400606"
theorem cover_1014120 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1014120 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 35) (hex := hex_1014120)
  decide +kernel
#print axioms cover_1014120

def state_1014155 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 57) else (if j.val < 3 then 42 else (if j.val < 4 then 30 else 43)))
def hex_1014155 : String := "4340440505440542050540064406420641434005050605"
theorem cover_1014155 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1014155 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 23) (hex := hex_1014155)
  decide +kernel
#print axioms cover_1014155

def state_1014178 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 28) else (if j.val < 3 then 43 else (if j.val < 4 then 30 else 21)))
def hex_1014178 : String := "4441090541434042440807074244094107050940424408070742440909094305400842440541430540064405080505"
theorem cover_1014178 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1014178 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 47) (hex := hex_1014178)
  decide +kernel
#print axioms cover_1014178

def state_1014227 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 42 else (if j.val < 4 then 30 else 42)))
def hex_1014227 : String := "41434042070907404206090707"
theorem cover_1014227 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1014227 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_1014227)
  decide +kernel
#print axioms cover_1014227
end Mub6.Numerical.CircleFullD0.Forest
