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
def state_274838 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 91) else (if j.val < 3 then 35 else (if j.val < 4 then 56 else 34)))
def hex_274838 : String := "4342440840080908424409404143090909094408400841430642090808"
theorem cover_274838 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_274838 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 29) (hex := hex_274838)
  decide +kernel
#print axioms cover_274838

def state_274867 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 45) else (if j.val < 3 then 35 else (if j.val < 4 then 56 else 35)))
def hex_274867 : String := "D9"
theorem cover_274867 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_274867 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_274867)
  decide +kernel
#print axioms cover_274867

def state_274870 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 45) else (if j.val < 3 then 34 else (if j.val < 4 then 57 else 34)))
def hex_274870 : String := "40414342064407400607064342064409060641434209070709"
theorem cover_274870 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_274870 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 25) (hex := hex_274870)
  decide +kernel
#print axioms cover_274870

def state_274895 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 45) else (if j.val < 3 then 34 else (if j.val < 4 then 57 else 35)))
def hex_274895 : String := "4041434442064005410506060643440606064108434442094041434409060609094208404143440606060641084344090A0844420640060808"
theorem cover_274895 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_274895 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 57) (hex := hex_274895)
  decide +kernel
#print axioms cover_274895

def state_274952 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 45) else (if j.val < 3 then 35 else (if j.val < 4 then 57 else 17)))
def hex_274952 : String := "4440414342440740050707070A41434207070743424409404143420907070909440A404143420707070A4107434209080A424407400A070AD9"
theorem cover_274952 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_274952 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 57) (hex := hex_274952)
  decide +kernel
#print axioms cover_274952

def state_275010 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 16 else (if j.val < 4 then 29 else 8)))
def hex_275010 : String := "444041060609400608"
theorem cover_275010 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_275010 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_275010)
  decide +kernel
#print axioms cover_275010

def state_275019 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 17 else (if j.val < 4 then 29 else 8)))
def hex_275019 : String := "44400A41070A4041054342060A06414342080707434244400641070940060844400A41070A404143D9060A410843D942080A42084407400608"
theorem cover_275019 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_275019 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 57) (hex := hex_275019)
  decide +kernel
#print axioms cover_275019

def state_275078 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 16 else (if j.val < 4 then 28 else 8)))
def hex_275078 : String := "4409414043440606064309094043090605"
theorem cover_275078 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_275078 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 17) (hex := hex_275078)
  decide +kernel
#print axioms cover_275078
end Mub6.Numerical.CircleFullPrototype.Forest
