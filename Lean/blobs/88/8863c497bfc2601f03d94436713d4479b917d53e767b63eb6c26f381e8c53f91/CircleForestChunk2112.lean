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
def state_2587448 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 74) else (if j.val < 3 then 192 else (if j.val < 4 then 94 else 77)))
def hex_2587448 : String := "4340444105050605404441420A434008050A42064306400644410A06064142064306070644410505410505"
theorem cover_2587448 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2587448 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 43) (hex := hex_2587448)
  decide +kernel
#print axioms cover_2587448

def state_2587492 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 74) else (if j.val < 3 then 193 else (if j.val < 4 then 188 else 77)))
def hex_2587492 : String := "4044084108064409410909"
theorem cover_2587492 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2587492 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 11) (hex := hex_2587492)
  decide +kernel
#print axioms cover_2587492

def state_2587504 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 206 else 74) else (if j.val < 3 then 193 else (if j.val < 4 then 189 else 77)))
def hex_2587504 : String := "44414243400844080840080A43080842430840084408080841424340064408060A43084008440807420608"
theorem cover_2587504 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2587504 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 43) (hex := hex_2587504)
  decide +kernel
#print axioms cover_2587504

def state_2587547 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 207 else 74) else (if j.val < 3 then 193 else (if j.val < 4 then 189 else 77)))
def hex_2587547 : String := "4441424305400A0543094044090A0942430540440941090905094142430540070543404409070540440A074409074243054044410707060543094044090709"
theorem cover_2587547 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2587547 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 63) (hex := hex_2587547)
  decide +kernel
#print axioms cover_2587547

def state_2587610 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 75) else (if j.val < 3 then 96 else (if j.val < 4 then 94 else 77)))
def hex_2587610 : String := "42430640064441050506434006094044410806064409414243054006050906"
theorem cover_2587610 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2587610 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 31) (hex := hex_2587610)
  decide +kernel
#print axioms cover_2587610

def state_2587643 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 102 else 37) else (if j.val < 3 then 96 else (if j.val < 4 then 95 else 76)))
def hex_2587643 : String := "4142434044080844410ADC410ADC4005440A0A43400544084108080542434008DC4005DC43084005DC"
theorem cover_2587643 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2587643 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 41) (hex := hex_2587643)
  decide +kernel
#print axioms cover_2587643
end Mub6.Numerical.CircleFullD0.Forest
