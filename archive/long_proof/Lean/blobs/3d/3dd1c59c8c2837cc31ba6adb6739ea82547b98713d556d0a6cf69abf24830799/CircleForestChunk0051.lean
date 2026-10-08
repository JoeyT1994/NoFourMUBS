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
def state_12090 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 5)))
def hex_12090 : String := "404106420644434041060906060606"
theorem cover_12090 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_12090 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_12090)
  decide +kernel
#print axioms cover_12090

def state_12105 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 2)))
def hex_12105 : String := "444041064206434440410642060A0606060606"
theorem cover_12105 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_12105 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 19) (hex := hex_12105)
  decide +kernel
#print axioms cover_12105

def state_12128 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 4)))
def hex_12128 : String := "42434409084409410640424306060906434405080A"
theorem cover_12128 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_12128 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 21) (hex := hex_12128)
  decide +kernel
#print axioms cover_12128

def state_12152 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 14 else (if j.val < 4 then 8 else 8)))
def hex_12152 : String := "40414243054405410805050505"
theorem cover_12152 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_12152 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_12152)
  decide +kernel
#print axioms cover_12152

def state_12167 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 26) else (if j.val < 3 then 14 else (if j.val < 4 then 8 else 9)))
def hex_12167 : String := "42444308410842080808440808"
theorem cover_12167 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_12167 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 13) (hex := hex_12167)
  decide +kernel
#print axioms cover_12167

def state_12180 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 27) else (if j.val < 3 then 14 else (if j.val < 4 then 8 else 9)))
def hex_12180 : String := "42444305424440410505054041430842440807074305420905410505440540410705054342090742444041070741080909444007410705074405430507"
theorem cover_12180 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_12180 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 61) (hex := hex_12180)
  decide +kernel
#print axioms cover_12180

def state_12241 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 13) else (if j.val < 3 then 14 else (if j.val < 4 then 8 else 9)))
def hex_12241 : String := "41084244054305404208080805"
theorem cover_12241 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_12241 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_12241)
  decide +kernel
#print axioms cover_12241

def state_12255 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 14 else (if j.val < 4 then 9 else 8)))
def hex_12255 : String := "0A"
theorem cover_12255 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_12255 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_12255)
  decide +kernel
#print axioms cover_12255

def state_12258 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 26) else (if j.val < 3 then 14 else (if j.val < 4 then 9 else 9)))
def hex_12258 : String := "4243440A41064206070A0A"
theorem cover_12258 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_12258 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_12258)
  decide +kernel
#print axioms cover_12258

def state_12269 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 27) else (if j.val < 3 then 14 else (if j.val < 4 then 9 else 9)))
def hex_12269 : String := "4243444243440A40410A4244400A0A0907410A42440509050A0A42444340410707410609404107070A43400709400706444340070A0A070A0A"
theorem cover_12269 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_12269 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 57) (hex := hex_12269)
  decide +kernel
#print axioms cover_12269

def state_12326 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 13) else (if j.val < 3 then 14 else (if j.val < 4 then 9 else 9)))
def hex_12326 : String := "414243440606060A424344400A0A404206440A430606060A0A"
theorem cover_12326 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_12326 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 25) (hex := hex_12326)
  decide +kernel
#print axioms cover_12326
end Mub6.Numerical.CircleFullPrototype.Forest
