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
def state_1566040 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 31) else (if j.val < 3 then 55 else (if j.val < 4 then 43 else 44)))
def hex_1566040 : String := "414044094309424140070A070944430642060643420606420A0A400906"
theorem cover_1566040 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1566040 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 29) (hex := hex_1566040)
  decide +kernel
#print axioms cover_1566040

def state_1566073 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 62) else (if j.val < 3 then 54 else (if j.val < 4 then 42 else 45)))
def hex_1566073 : String := "4443094241404408084443094208084308084009440943094205080943424107090742410840084443090808410809"
theorem cover_1566073 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1566073 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 47) (hex := hex_1566073)
  decide +kernel
#print axioms cover_1566073

def state_1566120 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 62) else (if j.val < 3 then 54 else (if j.val < 4 then 42 else 45)))
def hex_1566120 : String := "444306424140444306424140080606064307424108400806410706060641404406070606430742410744404306424108050606074107440607"
theorem cover_1566120 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1566120 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 57) (hex := hex_1566120)
  decide +kernel
#print axioms cover_1566120

def state_1566177 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 63) else (if j.val < 3 then 54 else (if j.val < 4 then 42 else 45)))
def hex_1566177 : String := "4044094309424140054443060543090505094406430642414406404306420506060606"
theorem cover_1566177 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1566177 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 35) (hex := hex_1566177)
  decide +kernel
#print axioms cover_1566177

def state_1566212 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 31) else (if j.val < 3 then 55 else (if j.val < 4 then 42 else 45)))
def hex_1566212 : String := "41400944060709"
theorem cover_1566212 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1566212 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1566212)
  decide +kernel
#print axioms cover_1566212

def state_1566222 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 62) else (if j.val < 3 then 54 else (if j.val < 4 then 43 else 45)))
def hex_1566222 : String := "4443424140084443080808400544054342050805414008440808400844094308084241080541084008440A0843420808420808"
theorem cover_1566222 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1566222 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 51) (hex := hex_1566222)
  decide +kernel
#print axioms cover_1566222
end Mub6.Numerical.CircleFullD0.Forest
