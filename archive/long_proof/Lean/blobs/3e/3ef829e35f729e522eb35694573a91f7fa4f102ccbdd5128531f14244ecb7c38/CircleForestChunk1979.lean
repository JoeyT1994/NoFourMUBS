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
def state_2555565 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 46) else (if j.val < 3 then 27 else (if j.val < 4 then 30 else 25)))
def hex_2555565 : String := "404442094341440706444042060706064144404209430707070744404209434107440706414407074409070740420607060606"
theorem cover_2555565 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2555565 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 51) (hex := hex_2555565)
  decide +kernel
#print axioms cover_2555565

def state_2555616 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 47) else (if j.val < 3 then 27 else (if j.val < 4 then 30 else 25)))
def hex_2555616 : String := "4044420643064144404206430641440806060606060606"
theorem cover_2555616 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2555616 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 23) (hex := hex_2555616)
  decide +kernel
#print axioms cover_2555616

def state_2555643 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 46) else (if j.val < 3 then 54 else (if j.val < 4 then 31 else 50)))
def hex_2555643 : String := "09"
theorem cover_2555643 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2555643 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_2555643)
  decide +kernel
#print axioms cover_2555643

def state_2555645 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 46) else (if j.val < 3 then 55 else (if j.val < 4 then 62 else 50)))
def hex_2555645 : String := "41444042094341070909074042070707444042094341440807440840080708094042094341070741440707444005070507"
theorem cover_2555645 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2555645 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 49) (hex := hex_2555645)
  decide +kernel
#print axioms cover_2555645

def state_2555694 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 46) else (if j.val < 3 then 55 else (if j.val < 4 then 63 else 50)))
def hex_2555694 : String := "41440940420943410744070741444008070744080707444008084042094341440807440840050708420607"
theorem cover_2555694 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2555694 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 43) (hex := hex_2555694)
  decide +kernel
#print axioms cover_2555694

def state_2555737 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 46) else (if j.val < 3 then 27 else (if j.val < 4 then 31 else 51)))
def hex_2555737 : String := "42064341400A06404442060705064140444207070707404442430641060643074107050606"
theorem cover_2555737 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2555737 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 37) (hex := hex_2555737)
  decide +kernel
#print axioms cover_2555737

def state_2555774 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 46) else (if j.val < 3 then 27 else (if j.val < 4 then 31 else 25)))
def hex_2555774 : String := "440906"
theorem cover_2555774 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2555774 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_2555774)
  decide +kernel
#print axioms cover_2555774

def state_2555777 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 47) else (if j.val < 3 then 27 else (if j.val < 4 then 31 else 25)))
def hex_2555777 : String := "4044420943414440420808094042060506440806414408404208080808420643064140050605440906"
theorem cover_2555777 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2555777 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 41) (hex := hex_2555777)
  decide +kernel
#print axioms cover_2555777
end Mub6.Numerical.CircleFullD0.Forest
