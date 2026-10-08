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
def state_380975 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 2 else 3)))
def hex_380975 : String := "4344400742440541430906054405414305070540424143090606414344070807074206414309444007060643094407064407400706"
theorem cover_380975 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_380975 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 53) (hex := hex_380975)
  decide +kernel
#print axioms cover_380975

def state_381030 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
def hex_381030 : String := "414243440A0A05434441420606420A0941424344050505434405050542054305054406054205434409054442050605"
theorem cover_381030 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_381030 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 47) (hex := hex_381030)
  decide +kernel
#print axioms cover_381030

def state_381079 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 2)))
def hex_381079 : String := "43444041070807404143440505050541434405050508440705"
theorem cover_381079 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_381079 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 25) (hex := hex_381079)
  decide +kernel
#print axioms cover_381079

def state_381106 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 4)))
def hex_381106 : String := "404142434407410608064309064243080A0941420743070742430807430944074042060607"
theorem cover_381106 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_381106 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 37) (hex := hex_381106)
  decide +kernel
#print axioms cover_381106

def state_381144 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 5)))
def hex_381144 : String := "4142434405414344050505050543444142050609054406054243050543440905440605"
theorem cover_381144 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_381144 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 35) (hex := hex_381144)
  decide +kernel
#print axioms cover_381144
end Mub6.Numerical.CircleFullPrototype.Forest
