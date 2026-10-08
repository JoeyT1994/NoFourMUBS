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
def state_1563105 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 60) else (if j.val < 3 then 53 else (if j.val < 4 then 42 else 89)))
def hex_1563105 : String := "42434140060740084442434107400807084307084207074106400644420808084341054008444207050541084008440808"
theorem cover_1563105 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1563105 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 49) (hex := hex_1563105)
  decide +kernel
#print axioms cover_1563105

def state_1563155 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 60) else (if j.val < 3 then 53 else (if j.val < 4 then 42 else 88)))
def hex_1563155 : String := "4243414044420A05050540444243410A060A434105060A4243410740440A07070943070A44420A0642090741090A43410540444243050A050505410A400A0A"
theorem cover_1563155 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1563155 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 63) (hex := hex_1563155)
  decide +kernel
#print axioms cover_1563155

def state_1563218 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 60) else (if j.val < 3 then 53 else (if j.val < 4 then 42 else 89)))
def hex_1563218 : String := "42434105404442430709070707094305410540440A4305080A"
theorem cover_1563218 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1563218 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 25) (hex := hex_1563218)
  decide +kernel
#print axioms cover_1563218

def state_1563250 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 122) else (if j.val < 3 then 106 else (if j.val < 4 then 84 else 176)))
def hex_1563250 : String := "424341404407084442050942434108050543090805054309414008444207070805"
theorem cover_1563250 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1563250 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 33) (hex := hex_1563250)
  decide +kernel
#print axioms cover_1563250

def state_1563283 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 122) else (if j.val < 3 then 106 else (if j.val < 4 then 84 else 177)))
def hex_1563283 : String := "4243414008444208080840054405420508410805434140084408080941084008440808"
theorem cover_1563283 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1563283 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 35) (hex := hex_1563283)
  decide +kernel
#print axioms cover_1563283

def state_1563319 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 122) else (if j.val < 3 then 106 else (if j.val < 4 then 84 else 176)))
def hex_1563319 : String := "424341404442430605064243060A4306410A06060641400A0A0543064140440A420A0A0A40440542050606"
theorem cover_1563319 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1563319 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 43) (hex := hex_1563319)
  decide +kernel
#print axioms cover_1563319
end Mub6.Numerical.CircleFullD0.Forest
