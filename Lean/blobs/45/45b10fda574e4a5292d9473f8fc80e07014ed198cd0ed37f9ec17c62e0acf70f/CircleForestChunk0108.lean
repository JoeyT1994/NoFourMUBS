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
def state_47140 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 39) else (if j.val < 3 then 20 else (if j.val < 4 then 47 else 20)))
def hex_47140 : String := "424405064443400A05404144089008414405900543400A4142060A064041900641904206440A430640064142060906"
theorem cover_47140 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_47140 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 47) (hex := hex_47140)
  decide +kernel
#print axioms cover_47140

def state_47188 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 38) else (if j.val < 3 then 20 else (if j.val < 4 then 47 else 20)))
def hex_47188 : String := "424405434108054140420A900A40420590054407434108404244050844070807414090074090424405084407430741064042080606"
theorem cover_47188 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_47188 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 53) (hex := hex_47188)
  decide +kernel
#print axioms cover_47188

def state_47241 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 39) else (if j.val < 3 then 20 else (if j.val < 4 then 47 else 20)))
def hex_47241 : String := "420544054340414205440509050540419042054405430940414205090505414205440543094140420509050505"
theorem cover_47241 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_47241 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 45) (hex := hex_47241)
  decide +kernel
#print axioms cover_47241

def state_47287 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 9) else (if j.val < 3 then 20 else (if j.val < 4 then 23 else 21)))
def hex_47287 : String := "41430805434441400642060806410806444140054206050707"
theorem cover_47287 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_47287 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 25) (hex := hex_47287)
  decide +kernel
#print axioms cover_47287

def state_47313 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 18) else (if j.val < 3 then 20 else (if j.val < 4 then 23 else 21)))
def hex_47313 : String := "4308444041054208050808"
theorem cover_47313 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_47313 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_47313)
  decide +kernel
#print axioms cover_47313

def state_47325 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 20 else (if j.val < 4 then 46 else 21)))
def hex_47325 : String := "4440410806410842060808"
theorem cover_47325 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_47325 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_47325)
  decide +kernel
#print axioms cover_47325
end Mub6.Numerical.CircleFullPrototype.Forest
