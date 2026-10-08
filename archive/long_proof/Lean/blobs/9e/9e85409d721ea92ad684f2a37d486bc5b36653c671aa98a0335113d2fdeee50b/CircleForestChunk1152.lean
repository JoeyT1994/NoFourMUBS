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
def state_1576939 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 32) else (if j.val < 3 then 97 else (if j.val < 4 then 51 else 52)))
def hex_1576939 : String := "430A44404142430706070741080A400641080A"
theorem cover_1576939 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1576939 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_1576939)
  decide +kernel
#print axioms cover_1576939

def state_1576958 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 33) else (if j.val < 3 then 48 else (if j.val < 4 then 51 else 52)))
def hex_1576958 : String := "4243444007050A44404142430744400705050707414205430544050505400905430A4440070A07"
theorem cover_1576958 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1576958 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 39) (hex := hex_1576958)
  decide +kernel
#print axioms cover_1576958

def state_1576997 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 16) else (if j.val < 3 then 48 else (if j.val < 4 then 51 else 52)))
def hex_1576997 : String := "414243440505444041080505054308084205430A44400A0505"
theorem cover_1576997 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1576997 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 25) (hex := hex_1576997)
  decide +kernel
#print axioms cover_1576997

def state_1577022 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 16) else (if j.val < 3 then 48 else (if j.val < 4 then 51 else 53)))
def hex_1577022 : String := "404142430909430A0642094307074142430505430A4408084205430505"
theorem cover_1577022 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1577022 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 29) (hex := hex_1577022)
  decide +kernel
#print axioms cover_1577022

def state_1577051 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 16) else (if j.val < 3 then 49 else (if j.val < 4 then 25 else 26)))
def hex_1577051 : String := "430A44400A41080A400A0A"
theorem cover_1577051 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1577051 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_1577051)
  decide +kernel
#print axioms cover_1577051

def state_1577062 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 17) else (if j.val < 3 then 24 else (if j.val < 4 then 25 else 26)))
def hex_1577062 : String := "4243440A054440414243054440070505074205074142054305050540414209070505430A4440070A0A"
theorem cover_1577062 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1577062 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 41) (hex := hex_1577062)
  decide +kernel
#print axioms cover_1577062

def state_1577103 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 8) else (if j.val < 3 then 24 else (if j.val < 4 then 25 else 27)))
def hex_1577103 : String := "4041424307060607414243400909400909430A4006440A0642430909430707"
theorem cover_1577103 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1577103 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 31) (hex := hex_1577103)
  decide +kernel
#print axioms cover_1577103

def state_1577134 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 8) else (if j.val < 3 then 25 else (if j.val < 4 then 12 else 13)))
def hex_1577134 : String := "430A4440070A40060A"
theorem cover_1577134 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1577134 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_1577134)
  decide +kernel
#print axioms cover_1577134

def state_1577143 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 12 else (if j.val < 4 then 12 else 13)))
def hex_1577143 : String := "424344070744404107074142430544050543070705400741420507054307440707"
theorem cover_1577143 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1577143 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 33) (hex := hex_1577143)
  decide +kernel
#print axioms cover_1577143
end Mub6.Numerical.CircleFullD0.Forest
