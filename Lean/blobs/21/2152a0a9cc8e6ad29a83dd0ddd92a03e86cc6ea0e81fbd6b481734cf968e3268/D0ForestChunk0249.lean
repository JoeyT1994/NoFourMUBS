import D0FullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_997161 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 27) else (if j.val < 3 then 18 else (if j.val < 4 then 27 else 42)))
def hex_997161 : String := "42414340064406420641434006440606060606064143404406420641090544424143050605054241434009440909060641430509054006440606430506"
theorem cover_997161 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_997161 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 61) (hex := hex_997161)
  decide +kernel
#print axioms cover_997161

def state_997223 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 27) else (if j.val < 3 then 36 else (if j.val < 4 then 27 else 43)))
def hex_997223 : String := "41434006444206414340060806064208410843400608060606"
theorem cover_997223 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_997223 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 25) (hex := hex_997223)
  decide +kernel
#print axioms cover_997223

def state_997251 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 54) else (if j.val < 3 then 37 else (if j.val < 4 then 54 else 43)))
def hex_997251 : String := "4442414309060641094305054241090A41070A"
theorem cover_997251 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_997251 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 19) (hex := hex_997251)
  decide +kernel
#print axioms cover_997251

def state_997271 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 54) else (if j.val < 3 then 37 else (if j.val < 4 then 54 else 86)))
def hex_997271 : String := "424143400944090808434006444305064342410905054206410805064143090943054044050A444206054241080605"
theorem cover_997271 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_997271 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 47) (hex := hex_997271)
  decide +kernel
#print axioms cover_997271

def state_997318 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 54) else (if j.val < 3 then 37 else (if j.val < 4 then 54 else 87)))
def hex_997318 : String := "424143090843400A44434241080A410905420841080A43420841080A080A4143090943404405094442430509054243090905400A444241080A09420809"
theorem cover_997318 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_997318 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 61) (hex := hex_997318)
  decide +kernel
#print axioms cover_997318

def state_997379 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 54) else (if j.val < 3 then 37 else (if j.val < 4 then 55 else 43)))
def hex_997379 : String := "4044060A444206434108060642084341080A08"
theorem cover_997379 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_997379 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 19) (hex := hex_997379)
  decide +kernel
#print axioms cover_997379
end Mub6.Numerical.CircleFullD0.Forest
