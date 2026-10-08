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
def state_1561233 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 122) else (if j.val < 3 then 211 else (if j.val < 4 then 83 else 177)))
def hex_1561233 : String := "430641404442430641400544050505430641404406080606424341070641400844420507070543074140080740080644064243064107060640440642050606"
theorem cover_1561233 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1561233 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 63) (hex := hex_1561233)
  decide +kernel
#print axioms cover_1561233

def state_1561296 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 123) else (if j.val < 3 then 105 else (if j.val < 4 then 83 else 88)))
def hex_1561296 : String := "404405420543050506"
theorem cover_1561296 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1561296 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1561296)
  decide +kernel
#print axioms cover_1561296

def state_1561308 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 122) else (if j.val < 3 then 104 else (if j.val < 4 then 82 else 89)))
def hex_1561308 : String := "40444243410A0505430A41400A4442070707054243074140050705430741070A4442434107064140444205070707054306410706420707"
theorem cover_1561308 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1561308 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 55) (hex := hex_1561308)
  decide +kernel
#print axioms cover_1561308

def state_1561363 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 123) else (if j.val < 3 then 104 else (if j.val < 4 then 82 else 89)))
def hex_1561363 : String := "40440542050A44064243050506"
theorem cover_1561363 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1561363 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_1561363)
  decide +kernel
#print axioms cover_1561363

def state_1561376 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 61) else (if j.val < 3 then 104 else (if j.val < 4 then 83 else 89)))
def hex_1561376 : String := "4140444205434140054405420508050542054341080505444243050543414044420543070542050744420907070541090542094341074005070905"
theorem cover_1561376 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1561376 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 59) (hex := hex_1561376)
  decide +kernel
#print axioms cover_1561376

def state_1561436 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 61) else (if j.val < 3 then 105 else (if j.val < 4 then 82 else 89)))
def hex_1561436 : String := "41404442430741070A0907074044090A06"
theorem cover_1561436 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1561436 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_1561436)
  decide +kernel
#print axioms cover_1561436
end Mub6.Numerical.CircleFullD0.Forest
