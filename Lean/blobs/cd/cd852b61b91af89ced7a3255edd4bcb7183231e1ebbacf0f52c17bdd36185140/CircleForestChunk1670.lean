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
def state_2274031 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 26) else (if j.val < 3 then 22 else (if j.val < 4 then 22 else 14)))
def hex_2274031 : String := "44424341054440420905054008084107440740080743050742084341054440080508410744404208070708"
theorem cover_2274031 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2274031 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 43) (hex := hex_2274031)
  decide +kernel
#print axioms cover_2274031

def state_2274077 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 27) else (if j.val < 3 then 44 else (if j.val < 4 then 44 else 28)))
def hex_2274077 : String := "44404142430909430544400A054041050A090A41090A4041424308084344400A050844404108060908420A0A410909"
theorem cover_2274077 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2274077 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 47) (hex := hex_2274077)
  decide +kernel
#print axioms cover_2274077

def state_2274124 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 27) else (if j.val < 3 then 44 else (if j.val < 4 then 45 else 28)))
def hex_2274124 : String := "4440414342094440410606074006064206440606430A064107430A0640414342064406060606410606"
theorem cover_2274124 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2274124 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 41) (hex := hex_2274124)
  decide +kernel
#print axioms cover_2274124

def state_2274167 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 27) else (if j.val < 3 then 45 else (if j.val < 4 then 44 else 56)))
def hex_2274167 : String := "40414243050505420A430544050A4105420A05"
theorem cover_2274167 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2274167 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 19) (hex := hex_2274167)
  decide +kernel
#print axioms cover_2274167

def state_2274188 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 54) else (if j.val < 3 then 45 else (if j.val < 4 then 44 else 57)))
def hex_2274188 : String := "424344054041050A0544404105420A050540410842064305064105420643050543054405400505"
theorem cover_2274188 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2274188 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 39) (hex := hex_2274188)
  decide +kernel
#print axioms cover_2274188

def state_2274227 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 55) else (if j.val < 3 then 45 else (if j.val < 4 then 44 else 57)))
def hex_2274227 : String := "42430A440A0A43440A400A0A44400A0A4041420A43050A0A41420A050A"
theorem cover_2274227 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2274227 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 29) (hex := hex_2274227)
  decide +kernel
#print axioms cover_2274227

def state_2274256 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 41 else 27) else (if j.val < 3 then 45 else (if j.val < 4 then 44 else 57)))
def hex_2274256 : String := "414243054405070542430A0A4344050A440A41070A"
theorem cover_2274256 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2274256 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 21) (hex := hex_2274256)
  decide +kernel
#print axioms cover_2274256
end Mub6.Numerical.CircleFullD0.Forest
