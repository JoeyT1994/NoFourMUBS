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
def state_2551093 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 7 else (if j.val < 4 then 13 else 10)))
def hex_2551093 : String := "424140430505054043440542074105074405420706430505410540434405060605"
theorem cover_2551093 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2551093 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 33) (hex := hex_2551093)
  decide +kernel
#print axioms cover_2551093

def state_2551128 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 22) else (if j.val < 3 then 14 else (if j.val < 4 then 13 else 11)))
def hex_2551128 : String := "4440434241084408080A4241060606430542050540430A0A43420808424441054042080805410A4008084441054006050A"
theorem cover_2551128 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2551128 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 49) (hex := hex_2551128)
  decide +kernel
#print axioms cover_2551128

def state_2551179 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 23) else (if j.val < 3 then 14 else (if j.val < 4 then 13 else 22)))
def hex_2551179 : String := "434241444308420706084407430707414408084408084241440642400643070606074106440606"
theorem cover_2551179 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2551179 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 39) (hex := hex_2551179)
  decide +kernel
#print axioms cover_2551179

def state_2551218 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 23) else (if j.val < 3 then 14 else (if j.val < 4 then 13 else 22)))
def hex_2551218 : String := "434241080808424144054042430505430505054440070540424307074308074243050543050541440540060544404205050540424308064308064243050505"
theorem cover_2551218 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2551218 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 63) (hex := hex_2551218)
  decide +kernel
#print axioms cover_2551218

def state_2551282 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 23) else (if j.val < 3 then 14 else (if j.val < 4 then 13 else 23)))
def hex_2551282 : String := "434241080808424144420A0A0A4442074007430707420A0A410A44420A060A"
theorem cover_2551282 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2551282 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 31) (hex := hex_2551282)
  decide +kernel
#print axioms cover_2551282

def state_2551314 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 23) else (if j.val < 3 then 14 else (if j.val < 4 then 26 else 23)))
def hex_2551314 : String := "420808"
theorem cover_2551314 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2551314 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_2551314)
  decide +kernel
#print axioms cover_2551314

def state_2551319 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 46) else (if j.val < 3 then 28 else (if j.val < 4 then 27 else 23)))
def hex_2551319 : String := "444042430841084440070508430841060842430505084042080808"
theorem cover_2551319 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2551319 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 27) (hex := hex_2551319)
  decide +kernel
#print axioms cover_2551319
end Mub6.Numerical.CircleFullD0.Forest
