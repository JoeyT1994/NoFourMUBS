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
def state_2574864 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 18) else (if j.val < 3 then 47 else (if j.val < 4 then 47 else 39)))
def hex_2574864 : String := "414243400607074340440A0644410A42054305070740070742064306400607"
theorem cover_2574864 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2574864 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 31) (hex := hex_2574864)
  decide +kernel
#print axioms cover_2574864

def state_2574897 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 19) else (if j.val < 3 then 46 else (if j.val < 4 then 23 else 18)))
def hex_2574897 : String := "434006410506400641444305420540414407430542054006050605430642064006054443064206400641050506"
theorem cover_2574897 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2574897 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 45) (hex := hex_2574897)
  decide +kernel
#print axioms cover_2574897

def state_2574943 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 19) else (if j.val < 3 then 47 else (if j.val < 4 then 46 else 18)))
def hex_2574943 : String := "400641440742064306400605440706"
theorem cover_2574943 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2574943 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_2574943)
  decide +kernel
#print axioms cover_2574943

def state_2574959 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 19) else (if j.val < 3 then 47 else (if j.val < 4 then 47 else 18)))
def hex_2574959 : String := "4144424306400641070607420643064006414408060606"
theorem cover_2574959 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2574959 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 23) (hex := hex_2574959)
  decide +kernel
#print axioms cover_2574959

def state_2574984 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 38) else (if j.val < 3 then 47 else (if j.val < 4 then 47 else 36)))
def hex_2574984 : String := "42434007054041440743074240070707440743064206074144074305420507440743054205074307400707"
theorem cover_2574984 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2574984 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 43) (hex := hex_2574984)
  decide +kernel
#print axioms cover_2574984

def state_2575028 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 38) else (if j.val < 3 then 94 else (if j.val < 4 then 47 else 37)))
def hex_2575028 : String := "434006054041444306420640064144070606060641444305420540410544050505430542054041440505060544430542054041440505060506"
theorem cover_2575028 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2575028 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 57) (hex := hex_2575028)
  decide +kernel
#print axioms cover_2575028

def state_2575086 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 38) else (if j.val < 3 then 95 else (if j.val < 4 then 94 else 37)))
def hex_2575086 : String := "404144070606414407420543054041070605440706"
theorem cover_2575086 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2575086 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 21) (hex := hex_2575086)
  decide +kernel
#print axioms cover_2575086
end Mub6.Numerical.CircleFullD0.Forest
