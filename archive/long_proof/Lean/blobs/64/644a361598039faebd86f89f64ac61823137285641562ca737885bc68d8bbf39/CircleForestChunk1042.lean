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
def state_1550419 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 61) else (if j.val < 3 then 103 else (if j.val < 4 then 40 else 44)))
def hex_1550419 : String := "444306414042440543050544060A0606430A41404442430A050A420A074442430641070506074044050506"
theorem cover_1550419 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1550419 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 43) (hex := hex_1550419)
  decide +kernel
#print axioms cover_1550419

def state_1550462 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 61) else (if j.val < 3 then 51 else (if j.val < 4 then 40 else 44)))
def hex_1550462 : String := "42440643064140420906060606"
theorem cover_1550462 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1550462 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1550462)
  decide +kernel
#print axioms cover_1550462

def state_1550478 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 60) else (if j.val < 3 then 102 else (if j.val < 4 then 41 else 44)))
def hex_1550478 : String := "444341094005090909"
theorem cover_1550478 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1550478 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1550478)
  decide +kernel
#print axioms cover_1550478

def state_1550490 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 120) else (if j.val < 3 then 103 else (if j.val < 4 then 82 else 88)))
def hex_1550490 : String := "4042440909448941094307064209440909"
theorem cover_1550490 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1550490 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 17) (hex := hex_1550490)
  decide +kernel
#print axioms cover_1550490

def state_1550508 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 121) else (if j.val < 3 then 103 else (if j.val < 4 then 82 else 88)))
def hex_1550508 : String := "424443414005090505434109050544894341404442430A05430741070542070744420907074044050544420543050542050741404405060905"
theorem cover_1550508 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1550508 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 57) (hex := hex_1550508)
  decide +kernel
#print axioms cover_1550508

def state_1550565 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 121) else (if j.val < 3 then 103 else (if j.val < 4 then 82 else 88)))
def hex_1550565 : String := "4244090944894341074044420507070709"
theorem cover_1550565 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1550565 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 17) (hex := hex_1550565)
  decide +kernel
#print axioms cover_1550565

def state_1550582 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 60) else (if j.val < 3 then 103 else (if j.val < 4 then 83 else 88)))
def hex_1550582 : String := "410940420544050909"
theorem cover_1550582 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1550582 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1550582)
  decide +kernel
#print axioms cover_1550582

def state_1550591 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 60) else (if j.val < 3 then 103 else (if j.val < 4 then 41 else 89)))
def hex_1550591 : String := "434140440906074044420943410740444205070707410905420943070944090909"
theorem cover_1550591 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1550591 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 33) (hex := hex_1550591)
  decide +kernel
#print axioms cover_1550591

def state_1550624 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 60) else (if j.val < 3 then 51 else (if j.val < 4 then 41 else 44)))
def hex_1550624 : String := "420944434109404209440909090909"
theorem cover_1550624 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1550624 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_1550624)
  decide +kernel
#print axioms cover_1550624
end Mub6.Numerical.CircleFullD0.Forest
