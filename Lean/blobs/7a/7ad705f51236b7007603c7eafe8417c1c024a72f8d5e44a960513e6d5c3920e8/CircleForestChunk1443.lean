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
def state_1647038 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 85 else 100) else (if j.val < 3 then 117 else (if j.val < 4 then 104 else 41)))
def hex_1647038 : String := "44414340084208080843400A4244080A44080A400808414340094442060906400844080A434009440A050A"
theorem cover_1647038 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1647038 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 43) (hex := hex_1647038)
  decide +kernel
#print axioms cover_1647038

def state_1647081 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 100) else (if j.val < 3 then 58 else (if j.val < 4 then 105 else 41)))
def hex_1647081 : String := "4042080842440841080A440841080A"
theorem cover_1647081 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1647081 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 15) (hex := hex_1647081)
  decide +kernel
#print axioms cover_1647081

def state_1647096 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 101) else (if j.val < 3 then 58 else (if j.val < 4 then 52 else 41)))
def hex_1647096 : String := "43400A42444143400A050A0A410A054441430A0A0A0A400A42440A0A0A"
theorem cover_1647096 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1647096 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 29) (hex := hex_1647096)
  decide +kernel
#print axioms cover_1647096

def state_1647126 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 50) else (if j.val < 3 then 59 else (if j.val < 4 then 52 else 40)))
def hex_1647126 : String := "41434008440842084105060543400644064241430A06060606"
theorem cover_1647126 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1647126 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 25) (hex := hex_1647126)
  decide +kernel
#print axioms cover_1647126

def state_1647153 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 100) else (if j.val < 3 then 59 else (if j.val < 4 then 104 else 41)))
def hex_1647153 : String := "4042440A090A424441434008424408084408090843400A420A0A0A4143094009440A0943090A4441434009424408090908430A0641090A"
theorem cover_1647153 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1647153 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 55) (hex := hex_1647153)
  decide +kernel
#print axioms cover_1647153

def state_1647208 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 100) else (if j.val < 3 then 59 else (if j.val < 4 then 105 else 41)))
def hex_1647208 : String := "400A4244080A44060A"
theorem cover_1647208 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1647208 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_1647208)
  decide +kernel
#print axioms cover_1647208

def state_1647217 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 101) else (if j.val < 3 then 59 else (if j.val < 4 then 52 else 41)))
def hex_1647217 : String := "43400A42440A0A44060A4006420A06"
theorem cover_1647217 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1647217 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 15) (hex := hex_1647217)
  decide +kernel
#print axioms cover_1647217

def state_1647232 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 50) else (if j.val < 3 then 29 else (if j.val < 4 then 53 else 20)))
def hex_1647232 : String := "42440841084008430A0744064140050806"
theorem cover_1647232 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1647232 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 17) (hex := hex_1647232)
  decide +kernel
#print axioms cover_1647232
end Mub6.Numerical.CircleFullD0.Forest
