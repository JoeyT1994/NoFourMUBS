import CircleFullInterface
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_6413 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 52) else (if j.val < 3 then 26 else (if j.val < 4 then 17 else 17)))
def hex_6413 : String := "06"
theorem cover_6413 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_6413 := by
  apply coveredState_of_hexFast tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_6413)
  decide +kernel
#print axioms cover_6413

def state_6415 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 53) else (if j.val < 3 then 52 else (if j.val < 4 then 17 else 17)))
def hex_6415 : String := "06"
theorem cover_6415 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_6415 := by
  apply coveredState_of_hexFast tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_6415)
  decide +kernel
#print axioms cover_6415

def state_6419 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 53) else (if j.val < 3 then 53 else (if j.val < 4 then 34 else 34)))
def hex_6419 : String := "4142060842074043440708440741094207400907430707"
theorem cover_6419 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_6419 := by
  apply coveredState_of_hexFast tao_image_sound tao_term_sound
    (fuel := 9) (count := 23) (hex := hex_6419)
  decide +kernel
#print axioms cover_6419

def state_6442 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 53) else (if j.val < 3 then 53 else (if j.val < 4 then 34 else 35)))
def hex_6442 : String := "41420608420A4044430841080A0A440806"
theorem cover_6442 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_6442 := by
  apply coveredState_of_hexFast tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_6442)
  decide +kernel
#print axioms cover_6442

def state_6460 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 53) else (if j.val < 3 then 53 else (if j.val < 4 then 35 else 34)))
def hex_6460 : String := "41420609420740434407410942070909430706"
theorem cover_6460 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_6460 := by
  apply coveredState_of_hexFast tao_image_sound tao_term_sound
    (fuel := 8) (count := 19) (hex := hex_6460)
  decide +kernel
#print axioms cover_6460

def state_6479 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 53) else (if j.val < 3 then 53 else (if j.val < 4 then 35 else 35)))
def hex_6479 : String := "41064206404344410542059A050506"
theorem cover_6479 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_6479 := by
  apply coveredState_of_hexFast tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_6479)
  decide +kernel
#print axioms cover_6479

def state_6494 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 53) else (if j.val < 3 then 53 else (if j.val < 4 then 17 else 17)))
def hex_6494 : String := "43444106070606"
theorem cover_6494 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_6494 := by
  apply coveredState_of_hexFast tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_6494)
  decide +kernel
#print axioms cover_6494
end Mub6.Numerical.CircleFullPrototype.Forest
