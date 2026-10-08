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
def state_2313291 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 15 else 11)))
def hex_2313291 : String := "444142434006440641060806064207434044070844420741060742080840064406084142080808"
theorem cover_2313291 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2313291 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 39) (hex := hex_2313291)
  decide +kernel
#print axioms cover_2313291

def state_2313332 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 26) else (if j.val < 3 then 9 else (if j.val < 4 then 15 else 22)))
def hex_2313332 : String := "4243404441060A41090A0A4044060609434044410642060641064209064441050A09400609"
theorem cover_2313332 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2313332 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 37) (hex := hex_2313332)
  decide +kernel
#print axioms cover_2313332

def state_2313369 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 9 else (if j.val < 4 then 15 else 22)))
def hex_2313369 : String := "420A43404442410A074143404406060A064340070A0742410A0A414340080A084340080A08440A0A404442074106074208080A"
theorem cover_2313369 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2313369 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 51) (hex := hex_2313369)
  decide +kernel
#print axioms cover_2313369

def state_2313420 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 15 else 23)))
def hex_2313420 : String := "414243404441080808090809424340080A0843404442080808440A42080840080A"
theorem cover_2313420 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2313420 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 33) (hex := hex_2313420)
  decide +kernel
#print axioms cover_2313420

def state_2313455 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 4)))
def hex_2313455 : String := "4041420505094105424305440840410509054305440505"
theorem cover_2313455 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2313455 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 23) (hex := hex_2313455)
  decide +kernel
#print axioms cover_2313455

def state_2313480 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 5)))
def hex_2313480 : String := "4243440507444105400A05410744400A4243050A05400A0743050A"
theorem cover_2313480 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2313480 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 27) (hex := hex_2313480)
  decide +kernel
#print axioms cover_2313480
end Mub6.Numerical.CircleFullD0.Forest
