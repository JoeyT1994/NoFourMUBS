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
def state_134906 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 44) else (if j.val < 3 then 45 else (if j.val < 4 then 26 else 26)))
def hex_134906 : String := "430744400A42410A44064306080A4042410743070A074241074307440A0707"
theorem cover_134906 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_134906 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 31) (hex := hex_134906)
  decide +kernel
#print axioms cover_134906

def state_134938 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 45) else (if j.val < 3 then 44 else (if j.val < 4 then 26 else 26)))
def hex_134938 : String := "434408400941420943064406070944084041420843090808414208434408090808"
theorem cover_134938 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_134938 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 33) (hex := hex_134938)
  decide +kernel
#print axioms cover_134938

def state_134972 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 45) else (if j.val < 3 then 45 else (if j.val < 4 then 52 else 26)))
def hex_134972 : String := "444041060606404107094107420907"
theorem cover_134972 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_134972 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 15) (hex := hex_134972)
  decide +kernel
#print axioms cover_134972

def state_134988 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 45) else (if j.val < 3 then 45 else (if j.val < 4 then 53 else 52)))
def hex_134988 : String := "40410A084142080A08"
theorem cover_134988 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_134988 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_134988)
  decide +kernel
#print axioms cover_134988

def state_134997 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 45) else (if j.val < 3 then 45 else (if j.val < 4 then 53 else 53)))
def hex_134997 : String := "4041424344400707070A0A420905414243444041070806074408404107094107420843070843070A4243440809440809434405054405400541424305050505"
theorem cover_134997 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_134997 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 63) (hex := hex_134997)
  decide +kernel
#print axioms cover_134997

def state_135062 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 44) else (if j.val < 3 then 44 else (if j.val < 4 then 26 else 26)))
def hex_135062 : String := "43440640070744400808404142050742084344060744080541054205430505"
theorem cover_135062 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_135062 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 31) (hex := hex_135062)
  decide +kernel
#print axioms cover_135062

def state_135093 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 44) else (if j.val < 3 then 45 else (if j.val < 4 then 26 else 26)))
def hex_135093 : String := "43440607444042410606090640424107430744404208074206060707424107430644060707"
theorem cover_135093 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_135093 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 37) (hex := hex_135093)
  decide +kernel
#print axioms cover_135093
end Mub6.Numerical.CircleFullPrototype.Forest
