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
def state_2564098 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 31 else (if j.val < 4 then 27 else 22)))
def hex_2564098 : String := "4144400743080740434207414406400608070743084241440740074307070741440640064308064407400743070744074007430707"
theorem cover_2564098 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2564098 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 53) (hex := hex_2564098)
  decide +kernel
#print axioms cover_2564098

def state_2564152 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 25) else (if j.val < 3 then 15 else (if j.val < 4 then 13 else 23)))
def hex_2564152 : String := "43424407410505444143400708400542074407050741430505054207444140054305050505"
theorem cover_2564152 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2564152 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 37) (hex := hex_2564152)
  decide +kernel
#print axioms cover_2564152

def state_2564190 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 15 else (if j.val < 4 then 26 else 23)))
def hex_2564190 : String := "4244414043084207080840070641400806064441400808404306070641084043060506"
theorem cover_2564190 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2564190 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 35) (hex := hex_2564190)
  decide +kernel
#print axioms cover_2564190

def state_2564227 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 30 else (if j.val < 4 then 27 else 46)))
def hex_2564227 : String := "414043070743424407410806444108074108400706420744074140074308070707"
theorem cover_2564227 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2564227 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 33) (hex := hex_2564227)
  decide +kernel
#print axioms cover_2564227

def state_2564260 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 30 else (if j.val < 4 then 27 else 47)))
def hex_2564260 : String := "4140054342064441080606424441400543050505054441400543050505054005430505"
theorem cover_2564260 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2564260 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 35) (hex := hex_2564260)
  decide +kernel
#print axioms cover_2564260

def state_2564298 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 50) else (if j.val < 3 then 31 else (if j.val < 4 then 27 else 46)))
def hex_2564298 : String := "434244074140050805444140060807414005080542074441060505"
theorem cover_2564298 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2564298 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 27) (hex := hex_2564298)
  decide +kernel
#print axioms cover_2564298

def state_2564326 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 50) else (if j.val < 3 then 31 else (if j.val < 4 then 54 else 46)))
def hex_2564326 : String := "42444108400708410840080844084108400808"
theorem cover_2564326 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2564326 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 19) (hex := hex_2564326)
  decide +kernel
#print axioms cover_2564326
end Mub6.Numerical.CircleFullD0.Forest
