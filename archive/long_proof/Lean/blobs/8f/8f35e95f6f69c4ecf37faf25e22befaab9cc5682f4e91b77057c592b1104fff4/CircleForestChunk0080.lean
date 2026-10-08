import CircleFullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_19148 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 56 else 59) else (if j.val < 3 then 59 else (if j.val < 4 then 41 else 40)))
def hex_19148 : String := "404407414207434041060741440706440742060606074407414207434041094407420709090742074340070707"
theorem cover_19148 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_19148 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 45) (hex := hex_19148)
  decide +kernel
#print axioms cover_19148

def state_19194 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 112 else 59) else (if j.val < 3 then 59 else (if j.val < 4 then 41 else 41)))
def hex_19194 : String := "410642064344400641064206060606"
theorem cover_19194 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_19194 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_19194)
  decide +kernel
#print axioms cover_19194

def state_19210 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 113 else 118) else (if j.val < 3 then 59 else (if j.val < 4 then 41 else 41)))
def hex_19210 : String := "420643444041060641054205080506"
theorem cover_19210 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_19210 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_19210)
  decide +kernel
#print axioms cover_19210

def state_19225 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 113 else 119) else (if j.val < 3 then 59 else (if j.val < 4 then 41 else 41)))
def hex_19225 : String := "4243444042060642054105070506434440414206430806424344070606A34142434440070505054308440905424344070A440705A30606"
theorem cover_19225 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_19225 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 55) (hex := hex_19225)
  decide +kernel
#print axioms cover_19225

def state_19281 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 57 else 58) else (if j.val < 3 then 29 else (if j.val < 4 then 20 else 20)))
def hex_19281 : String := "42434409050543440908440905"
theorem cover_19281 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_19281 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 13) (hex := hex_19281)
  decide +kernel
#print axioms cover_19281

def state_19295 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 57 else 59) else (if j.val < 3 then 58 else (if j.val < 4 then 20 else 20)))
def hex_19295 : String := "43440A0A440705"
theorem cover_19295 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_19295 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 7) (hex := hex_19295)
  decide +kernel
#print axioms cover_19295

def state_19303 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 57 else 59) else (if j.val < 3 then 59 else (if j.val < 4 then 40 else 20)))
def hex_19303 : String := "44404344060A44094109420A40430609064306094043084108420A440A08430841050A"
theorem cover_19303 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_19303 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 35) (hex := hex_19303)
  decide +kernel
#print axioms cover_19303

def state_19338 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 57 else 59) else (if j.val < 3 then 59 else (if j.val < 4 then 41 else 20)))
def hex_19338 : String := "4440440741420509420743090744074105420509404105420543444041420543080542430A05A341054205A30544050505"
theorem cover_19338 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_19338 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 49) (hex := hex_19338)
  decide +kernel
#print axioms cover_19338
end Mub6.Numerical.CircleFullPrototype.Forest
