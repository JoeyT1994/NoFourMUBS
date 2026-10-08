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
def state_1041093 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 32) else (if j.val < 3 then 51 else (if j.val < 4 then 51 else 32)))
def hex_1041093 : String := "42430541444205DA064406064341444305DA06074144DA40420A434407070A4206430644DA4109064440424306410A09074206430641DA4408064042060706"
theorem cover_1041093 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1041093 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 63) (hex := hex_1041093)
  decide +kernel
#print axioms cover_1041093

def state_1041156 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 32) else (if j.val < 3 then 51 else (if j.val < 4 then 51 else 33)))
def hex_1041156 : String := "40420A43070A420643064441400A060606"
theorem cover_1041156 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1041156 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_1041156)
  decide +kernel
#print axioms cover_1041156

def state_1041173 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 33) else (if j.val < 3 then 51 else (if j.val < 4 then 51 else 16)))
def hex_1041173 : String := "4440424306090742064306414440070606064042060706"
theorem cover_1041173 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1041173 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 23) (hex := hex_1041173)
  decide +kernel
#print axioms cover_1041173

def state_1041196 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 16) else (if j.val < 3 then 25 else (if j.val < 4 then 25 else 17)))
def hex_1041196 : String := "40420A43070A420643064441400A060606"
theorem cover_1041196 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1041196 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_1041196)
  decide +kernel
#print axioms cover_1041196

def state_1041213 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 17) else (if j.val < 3 then 25 else (if j.val < 4 then 25 else 8)))
def hex_1041213 : String := "444042430609074206430641444007060606400606"
theorem cover_1041213 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1041213 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 21) (hex := hex_1041213)
  decide +kernel
#print axioms cover_1041213

def state_1041234 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 8) else (if j.val < 3 then 12 else (if j.val < 4 then 12 else 9)))
def hex_1041234 : String := "40420A43070A4206430644410A0606"
theorem cover_1041234 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1041234 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 15) (hex := hex_1041234)
  decide +kernel
#print axioms cover_1041234

def state_1041249 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 9) else (if j.val < 3 then 12 else (if j.val < 4 then 12 else 4)))
def hex_1041249 : String := "444042430609074206430641440706064042060706"
theorem cover_1041249 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1041249 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_1041249)
  decide +kernel
#print axioms cover_1041249

def state_1041273 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 8) else (if j.val < 3 then 12 else (if j.val < 4 then 13 else 8)))
def hex_1041273 : String := "0A"
theorem cover_1041273 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1041273 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1041273)
  decide +kernel
#print axioms cover_1041273

def state_1041275 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 8) else (if j.val < 3 then 24 else (if j.val < 4 then 13 else 8)))
def hex_1041275 : String := "0A"
theorem cover_1041275 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1041275 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1041275)
  decide +kernel
#print axioms cover_1041275

def state_1041278 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 16) else (if j.val < 3 then 25 else (if j.val < 4 then 26 else 8)))
def hex_1041278 : String := "44400A420A434144400A420A434144DA0A444042090542084341DA08050A050A44400A42084341444009080A44080A050A0A0A"
theorem cover_1041278 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1041278 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 16) (count := 51) (hex := hex_1041278)
  decide +kernel
#print axioms cover_1041278

def state_1041329 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 17) else (if j.val < 3 then 25 else (if j.val < 4 then 26 else 8)))
def hex_1041329 : String := "44400A420A434144090A09090A"
theorem cover_1041329 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1041329 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1041329)
  decide +kernel
#print axioms cover_1041329

def state_1041342 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 8) else (if j.val < 3 then 25 else (if j.val < 4 then 27 else 8)))
def hex_1041342 : String := "0A"
theorem cover_1041342 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1041342 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1041342)
  decide +kernel
#print axioms cover_1041342

def state_1041343 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 8) else (if j.val < 3 then 12 else (if j.val < 4 then 13 else 9)))
def hex_1041343 : String := "0A"
theorem cover_1041343 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1041343 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1041343)
  decide +kernel
#print axioms cover_1041343
end Mub6.Numerical.CircleFullD0.Forest
