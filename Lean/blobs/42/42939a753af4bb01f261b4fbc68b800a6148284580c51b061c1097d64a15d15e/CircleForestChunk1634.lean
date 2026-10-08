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
def state_2265335 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 27) else (if j.val < 3 then 44 else (if j.val < 4 then 45 else 27)))
def hex_2265335 : String := "414443420A084240084144080A08084342400A0A4044080A440A41430A0A0A424044060644060640440841434206080606440841060644080A"
theorem cover_2265335 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2265335 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 57) (hex := hex_2265335)
  decide +kernel
#print axioms cover_2265335

def state_2265392 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 27) else (if j.val < 3 then 44 else (if j.val < 4 then 45 else 27)))
def hex_2265392 : String := "414443420A054240410708074008074342400A0A40440A4143054206050A440A41070A4240060640444107064106064407074408430A0A"
theorem cover_2265392 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2265392 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 55) (hex := hex_2265392)
  decide +kernel
#print axioms cover_2265392

def state_2265447 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 27) else (if j.val < 3 then 45 else (if j.val < 4 then 22 else 27)))
def hex_2265447 : String := "4340414405424305400505050841054405420A05404144084243400844054105084008080808414408424340440541050805404407070743050708"
theorem cover_2265447 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2265447 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 59) (hex := hex_2265447)
  decide +kernel
#print axioms cover_2265447

def state_2265508 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 26) else (if j.val < 3 then 22 else (if j.val < 4 then 23 else 26)))
def hex_2265508 : String := "4043424144074043424107080707070808424107080807"
theorem cover_2265508 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2265508 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 23) (hex := hex_2265508)
  decide +kernel
#print axioms cover_2265508

def state_2265537 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 52) else (if j.val < 3 then 44 else (if j.val < 4 then 46 else 54)))
def hex_2265537 : String := "4342414044070707404408434241BE080842414008070808440743424107404407434206070607070741074008074241074044084308080707"
theorem cover_2265537 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2265537 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 57) (hex := hex_2265537)
  decide +kernel
#print axioms cover_2265537
end Mub6.Numerical.CircleFullD0.Forest
