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
def state_967747 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 47) else (if j.val < 3 then 25 else (if j.val < 4 then 17 else 28)))
def hex_967747 : String := "4244054305414042094405430509420505400A0544430541400A0505430541404244054305414009080A440543054140070840070542050540420A44050505"
theorem cover_967747 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_967747 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 63) (hex := hex_967747)
  decide +kernel
#print axioms cover_967747

def state_967810 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 23) else (if j.val < 3 then 25 else (if j.val < 4 then 17 else 28)))
def hex_967810 : String := "414244050744430506084205440505"
theorem cover_967810 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_967810 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 15) (hex := hex_967810)
  decide +kernel
#print axioms cover_967810

def state_967826 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 23) else (if j.val < 3 then 25 else (if j.val < 4 then 16 else 29)))
def hex_967826 : String := "40410642060608"
theorem cover_967826 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_967826 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_967826)
  decide +kernel
#print axioms cover_967826

def state_967835 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 46) else (if j.val < 3 then 25 else (if j.val < 4 then 17 else 29)))
def hex_967835 : String := "420844430840080808"
theorem cover_967835 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_967835 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_967835)
  decide +kernel
#print axioms cover_967835

def state_967845 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 47) else (if j.val < 3 then 50 else (if j.val < 4 then 17 else 29)))
def hex_967845 : String := "444341400605054140090840420944430509094205440505430609"
theorem cover_967845 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_967845 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 27) (hex := hex_967845)
  decide +kernel
#print axioms cover_967845

def state_967872 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 47) else (if j.val < 3 then 51 else (if j.val < 4 then 17 else 29)))
def hex_967872 : String := "444341400605400605414042444306090607084042444305414009050A43064109400609074244050844050843064108400608"
theorem cover_967872 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_967872 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 51) (hex := hex_967872)
  decide +kernel
#print axioms cover_967872

def state_967923 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 23) else (if j.val < 3 then 25 else (if j.val < 4 then 17 else 29)))
def hex_967923 : String := "410842084443050808"
theorem cover_967923 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_967923 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_967923)
  decide +kernel
#print axioms cover_967923

def state_967932 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 12 else (if j.val < 4 then 8 else 15)))
def hex_967932 : String := "4006410842084306444041064206060806"
theorem cover_967932 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_967932 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 17) (hex := hex_967932)
  decide +kernel
#print axioms cover_967932

def state_967952 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 12 else (if j.val < 4 then 9 else 14)))
def hex_967952 : String := "420943444009410942094443400941094209440A0909090909"
theorem cover_967952 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_967952 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 25) (hex := hex_967952)
  decide +kernel
#print axioms cover_967952
end Mub6.Numerical.CircleFullD0.Forest
