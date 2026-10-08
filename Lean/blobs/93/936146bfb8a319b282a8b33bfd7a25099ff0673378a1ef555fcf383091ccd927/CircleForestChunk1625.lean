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
def state_2263208 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 52) else (if j.val < 3 then 44 else (if j.val < 4 then 44 else 27)))
def hex_2263208 : String := "40440542430541054405404305420705050505"
theorem cover_2263208 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2263208 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 19) (hex := hex_2263208)
  decide +kernel
#print axioms cover_2263208

def state_2263227 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 53) else (if j.val < 3 then 44 else (if j.val < 4 then 44 else 27)))
def hex_2263227 : String := "404442430541050A054243074144400743050A07074305410544090744054243410505414044054305424105070505400A0A430541054044050505"
theorem cover_2263227 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2263227 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 59) (hex := hex_2263227)
  decide +kernel
#print axioms cover_2263227

def state_2263290 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 52) else (if j.val < 3 then 44 else (if j.val < 4 then 90 else 54)))
def hex_2263290 : String := "42410540440543054241054044050905050505"
theorem cover_2263290 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2263290 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 19) (hex := hex_2263290)
  decide +kernel
#print axioms cover_2263290

def state_2263311 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 104) else (if j.val < 3 then 88 else (if j.val < 4 then 91 else 54)))
def hex_2263311 : String := "404405430542BE05440507"
theorem cover_2263311 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2263311 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_2263311)
  decide +kernel
#print axioms cover_2263311

def state_2263323 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 72 else 105) else (if j.val < 3 then 88 else (if j.val < 4 then 91 else 54)))
def hex_2263323 : String := "44430808434241BE40440809440843420A054241BE08084105084241BE40084408434241BE08080841400844050708"
theorem cover_2263323 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2263323 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 47) (hex := hex_2263323)
  decide +kernel
#print axioms cover_2263323

def state_2263371 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 73 else 105) else (if j.val < 3 then 88 else (if j.val < 4 then 91 else 108)))
def hex_2263371 : String := "43054241050805"
theorem cover_2263371 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2263371 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_2263371)
  decide +kernel
#print axioms cover_2263371

def state_2263378 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 73 else 105) else (if j.val < 3 then 88 else (if j.val < 4 then 91 else 109)))
def hex_2263378 : String := "4342410540440543054241BE0A41050844054305424105400A0605054241BE404408434241BE0641BE084206084407434241070607074105400807"
theorem cover_2263378 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2263378 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 59) (hex := hex_2263378)
  decide +kernel
#print axioms cover_2263378

def state_2263437 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 52) else (if j.val < 3 then 89 else (if j.val < 4 then 91 else 54)))
def hex_2263437 : String := "4105400805"
theorem cover_2263437 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2263437 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_2263437)
  decide +kernel
#print axioms cover_2263437

def state_2263445 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 104) else (if j.val < 3 then 88 else (if j.val < 4 then 90 else 55)))
def hex_2263445 : String := "440540430542080508"
theorem cover_2263445 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2263445 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_2263445)
  decide +kernel
#print axioms cover_2263445
end Mub6.Numerical.CircleFullD0.Forest
