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
def state_2302277 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 51) else (if j.val < 3 then 33 else (if j.val < 4 then 55 else 91)))
def hex_2302277 : String := "40414308424441400605074140060940070A444105400605410640060943420A440A40410A070A4207440740070A4143050A0A"
theorem cover_2302277 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2302277 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 51) (hex := hex_2302277)
  decide +kernel
#print axioms cover_2302277

def state_2302328 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 25) else (if j.val < 3 then 16 else (if j.val < 4 then 27 else 22)))
def hex_2302328 : String := "4105440543050A"
theorem cover_2302328 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2302328 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_2302328)
  decide +kernel
#print axioms cover_2302328

def state_2302337 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 50) else (if j.val < 3 then 17 else (if j.val < 4 then 27 else 22)))
def hex_2302337 : String := "440543054241050505"
theorem cover_2302337 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2302337 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_2302337)
  decide +kernel
#print axioms cover_2302337

def state_2302347 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 51) else (if j.val < 3 then 17 else (if j.val < 4 then 27 else 44)))
def hex_2302347 : String := "05"
theorem cover_2302347 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2302347 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_2302347)
  decide +kernel
#print axioms cover_2302347

def state_2302349 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 51) else (if j.val < 3 then 17 else (if j.val < 4 then 54 else 45)))
def hex_2302349 : String := "420844054041054305424405404105C4050505"
theorem cover_2302349 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2302349 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 19) (hex := hex_2302349)
  decide +kernel
#print axioms cover_2302349

def state_2302370 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 51) else (if j.val < 3 then 34 else (if j.val < 4 then 55 else 90)))
def hex_2302370 : String := "40410543424405404105070505424405400705440540060505"
theorem cover_2302370 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2302370 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 25) (hex := hex_2302370)
  decide +kernel
#print axioms cover_2302370

def state_2302397 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 102) else (if j.val < 3 then 34 else (if j.val < 4 then 55 else 91)))
def hex_2302397 : String := "4342440541054009054405094244060906"
theorem cover_2302397 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2302397 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 17) (hex := hex_2302397)
  decide +kernel
#print axioms cover_2302397

def state_2302416 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 103) else (if j.val < 3 then 68 else (if j.val < 4 then 110 else 91)))
def hex_2302416 : String := "44404143054207050A0A40414308420A09430A0A0A"
theorem cover_2302416 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2302416 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 21) (hex := hex_2302416)
  decide +kernel
#print axioms cover_2302416

def state_2302437 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 103) else (if j.val < 3 then 69 else (if j.val < 4 then 110 else 91)))
def hex_2302437 : String := "4440410543420805420A440540060505404143090943420A444041050A0540090942440A4041090709444006090941050A"
theorem cover_2302437 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2302437 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 49) (hex := hex_2302437)
  decide +kernel
#print axioms cover_2302437

def state_2302486 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 103) else (if j.val < 3 then 34 else (if j.val < 4 then 111 else 91)))
def hex_2302486 : String := "4244404106070A404143424406060606430707410A0A44400641050A4041064342440640060906064109430A0A"
theorem cover_2302486 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2302486 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 45) (hex := hex_2302486)
  decide +kernel
#print axioms cover_2302486
end Mub6.Numerical.CircleFullD0.Forest
