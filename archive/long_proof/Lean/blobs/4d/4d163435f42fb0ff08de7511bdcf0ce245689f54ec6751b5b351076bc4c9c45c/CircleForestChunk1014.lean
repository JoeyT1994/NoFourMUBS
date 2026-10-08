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
def state_1543715 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 56) else (if j.val < 3 then 51 else (if j.val < 4 then 20 else 20)))
def hex_1543715 : String := "43444042064105434405050642414305064344080544090641054305444042410507054209050540060544400642064106440A0606"
theorem cover_1543715 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1543715 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 53) (hex := hex_1543715)
  decide +kernel
#print axioms cover_1543715

def state_1543771 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 98 else 57) else (if j.val < 3 then 51 else (if j.val < 4 then 40 else 40)))
def hex_1543771 : String := "424143440706070741434440074207410507400605440706434407400742070907"
theorem cover_1543771 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1543771 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 33) (hex := hex_1543771)
  decide +kernel
#print axioms cover_1543771

def state_1543804 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 57) else (if j.val < 3 then 51 else (if j.val < 4 then 40 else 40)))
def hex_1543804 : String := "42414308440740060843080741434408054440070840424105074105430507424105080543084407400708"
theorem cover_1543804 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1543804 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 43) (hex := hex_1543804)
  decide +kernel
#print axioms cover_1543804

def state_1543848 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 98 else 57) else (if j.val < 3 then 51 else (if j.val < 4 then 40 else 41)))
def hex_1543848 : String := "42410643444006420641060706064106434440420605424105430506050506"
theorem cover_1543848 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1543848 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 31) (hex := hex_1543848)
  decide +kernel
#print axioms cover_1543848

def state_1543879 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 57) else (if j.val < 3 then 51 else (if j.val < 4 then 40 else 41)))
def hex_1543879 : String := "42414305064344404208410508084006054440064208410907064105434405054440424106074105430507424105084105430544050505"
theorem cover_1543879 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1543879 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 55) (hex := hex_1543879)
  decide +kernel
#print axioms cover_1543879

def state_1543934 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 57) else (if j.val < 3 then 51 else (if j.val < 4 then 41 else 20)))
def hex_1543934 : String := "44400742074144074340060906074006420641064344400642070A0606"
theorem cover_1543934 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1543934 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 29) (hex := hex_1543934)
  decide +kernel
#print axioms cover_1543934
end Mub6.Numerical.CircleFullD0.Forest
