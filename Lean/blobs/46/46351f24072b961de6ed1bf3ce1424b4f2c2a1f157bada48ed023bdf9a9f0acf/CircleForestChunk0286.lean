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
def state_144025 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 14 else (if j.val < 4 then 15 else 8)))
def hex_144025 : String := "40410709410508"
theorem cover_144025 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_144025 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 7) (hex := hex_144025)
  decide +kernel
#print axioms cover_144025

def state_144033 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 13) else (if j.val < 3 then 14 else (if j.val < 4 then 15 else 9)))
def hex_144033 : String := "410A4244090A440606"
theorem cover_144033 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_144033 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_144033)
  decide +kernel
#print axioms cover_144033

def state_144043 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 26) else (if j.val < 3 then 14 else (if j.val < 4 then 15 else 9)))
def hex_144043 : String := "42440505440843400A080A"
theorem cover_144043 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_144043 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_144043)
  decide +kernel
#print axioms cover_144043

def state_144055 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 28 else (if j.val < 4 then 15 else 9)))
def hex_144055 : String := "444340090840050543404244410509410543400942054405050544410707410A43400607064244050544084105430808400A05"
theorem cover_144055 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_144055 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 51) (hex := hex_144055)
  decide +kernel
#print axioms cover_144055

def state_144106 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 29 else (if j.val < 4 then 15 else 9)))
def hex_144106 : String := "440843404407424107060608400608"
theorem cover_144106 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_144106 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_144106)
  decide +kernel
#print axioms cover_144106

def state_144121 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 15 else (if j.val < 4 then 7 else 4)))
def hex_144121 : String := "4344074041070741070744084006410808"
theorem cover_144121 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_144121 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 17) (hex := hex_144121)
  decide +kernel
#print axioms cover_144121

def state_144139 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 5)))
def hex_144139 : String := "410A44420A0A0A"
theorem cover_144139 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_144139 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_144139)
  decide +kernel
#print axioms cover_144139

def state_144147 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 5)))
def hex_144147 : String := "44420A0909"
theorem cover_144147 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_144147 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_144147)
  decide +kernel
#print axioms cover_144147

def state_144156 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 13) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 10)))
def hex_144156 : String := "410A444243404208074243410707410A44070843074107070A434007070A0A"
theorem cover_144156 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_144156 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 31) (hex := hex_144156)
  decide +kernel
#print axioms cover_144156

def state_144188 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 26) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 10)))
def hex_144188 : String := "444243404106420607060A0909"
theorem cover_144188 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_144188 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_144188)
  decide +kernel
#print axioms cover_144188

def state_144204 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 28 else (if j.val < 4 then 28 else 20)))
def hex_144204 : String := "404243064106440706430641070706"
theorem cover_144204 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_144204 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 15) (hex := hex_144204)
  decide +kernel
#print axioms cover_144204

def state_144220 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 28 else (if j.val < 4 then 29 else 20)))
def hex_144220 : String := "4243410A44404243070A074243064106440706070A410A44400A42410A44090A0A0A43410A44070A0A"
theorem cover_144220 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_144220 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 41) (hex := hex_144220)
  decide +kernel
#print axioms cover_144220
end Mub6.Numerical.CircleFullPrototype.Forest
