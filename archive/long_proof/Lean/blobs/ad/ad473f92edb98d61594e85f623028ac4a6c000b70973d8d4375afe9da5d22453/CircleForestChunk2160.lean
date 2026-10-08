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
def state_2599062 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 2)))
def hex_2599062 : String := "4405404144054243404144054205050A41050A400A05434041050A054041050A0544420A43050A4243060A0A41440542430A050544050A"
theorem cover_2599062 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2599062 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 55) (hex := hex_2599062)
  decide +kernel
#print axioms cover_2599062

def state_2599117 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
def hex_2599117 : String := "4243440540420643060642434405064405060A440540064244050644050643440540060A440740444142060706060A"
theorem cover_2599117 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2599117 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 47) (hex := hex_2599117)
  decide +kernel
#print axioms cover_2599117

def state_2599170 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 12) else (if j.val < 3 then 12 else (if j.val < 4 then 6 else 4)))
def hex_2599170 : String := "434044410A0A410A0A4441424307400A0907420A07414208090A40440541420A0A0A44414243400A06050942430A050541420843090942080A"
theorem cover_2599170 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2599170 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 57) (hex := hex_2599170)
  decide +kernel
#print axioms cover_2599170

def state_2599227 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 12) else (if j.val < 3 then 13 else (if j.val < 4 then 6 else 4)))
def hex_2599227 : String := "434044050A094005440541090A"
theorem cover_2599227 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2599227 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_2599227)
  decide +kernel
#print axioms cover_2599227

def state_2599240 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 13) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 4)))
def hex_2599240 : String := "42434044050A44420A070A4005440542410A050A430705"
theorem cover_2599240 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2599240 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_2599240)
  decide +kernel
#print axioms cover_2599240

def state_2599263 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 5)))
def hex_2599263 : String := "41424344400A0840060844404142080A0A080843440A0A44400A0A400A084243440A0844400A08080A"
theorem cover_2599263 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2599263 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 41) (hex := hex_2599263)
  decide +kernel
#print axioms cover_2599263
end Mub6.Numerical.CircleFullD0.Forest
