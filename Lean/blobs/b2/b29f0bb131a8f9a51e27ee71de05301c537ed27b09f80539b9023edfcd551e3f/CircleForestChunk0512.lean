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
def state_284410 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 29) else (if j.val < 3 then 18 else (if j.val < 4 then 57 else 48)))
def hex_284410 : String := "414244400A43414244400743080A0744084007060A0A0744400A43080A40434105070A4341060641090A42070A"
theorem cover_284410 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_284410 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 45) (hex := hex_284410)
  decide +kernel
#print axioms cover_284410

def state_284455 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 29) else (if j.val < 3 then 18 else (if j.val < 4 then 28 else 49)))
def hex_284455 : String := "400743414205050741420744400543410506090507"
theorem cover_284455 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_284455 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 21) (hex := hex_284455)
  decide +kernel
#print axioms cover_284455

def state_284476 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 29) else (if j.val < 3 then 18 else (if j.val < 4 then 29 else 24)))
def hex_284476 : String := "44400A41420A0A0A40074142070907"
theorem cover_284476 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_284476 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 15) (hex := hex_284476)
  decide +kernel
#print axioms cover_284476

def state_284491 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 29) else (if j.val < 3 then 19 else (if j.val < 4 then 14 else 24)))
def hex_284491 : String := "4344404243080A08424308410908084042050542434105064109444006060709440A09"
theorem cover_284491 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_284491 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 35) (hex := hex_284491)
  decide +kernel
#print axioms cover_284491

def state_284526 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 14) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 25)))
def hex_284526 : String := "41424305090942074340050509"
theorem cover_284526 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_284526 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_284526)
  decide +kernel
#print axioms cover_284526

def state_284546 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 56) else (if j.val < 3 then 18 else (if j.val < 4 then 28 else 48)))
def hex_284546 : String := "43420A064244070907"
theorem cover_284546 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_284546 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_284546)
  decide +kernel
#print axioms cover_284546

def state_284556 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 57) else (if j.val < 3 then 18 else (if j.val < 4 then 56 else 48)))
def hex_284556 : String := "42444041060606404106060606"
theorem cover_284556 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_284556 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_284556)
  decide +kernel
#print axioms cover_284556

def state_284573 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 114) else (if j.val < 3 then 36 else (if j.val < 4 then 57 else 96)))
def hex_284573 : String := "434244404107430642D50606404109430609060642444009050909"
theorem cover_284573 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_284573 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 27) (hex := hex_284573)
  decide +kernel
#print axioms cover_284573

def state_284600 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 115) else (if j.val < 3 then 36 else (if j.val < 4 then 57 else 96)))
def hex_284600 : String := "4342444043064142D506050540430641060606064244054041094342D506420505414306050544404107050509"
theorem cover_284600 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_284600 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 45) (hex := hex_284600)
  decide +kernel
#print axioms cover_284600

def state_284645 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 57) else (if j.val < 3 then 36 else (if j.val < 4 then 57 else 96)))
def hex_284645 : String := "4107430605"
theorem cover_284645 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_284645 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_284645)
  decide +kernel
#print axioms cover_284645
end Mub6.Numerical.CircleFullPrototype.Forest
