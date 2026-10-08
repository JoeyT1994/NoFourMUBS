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
def state_2306833 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 27) else (if j.val < 3 then 19 else (if j.val < 4 then 27 else 22)))
def hex_2306833 : String := "4442414305404405420505050641054305400905424143064044420643054105064206060606414306404442430541050605424306070744050606"
theorem cover_2306833 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2306833 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 59) (hex := hex_2306833)
  decide +kernel
#print axioms cover_2306833

def state_2306894 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 26) else (if j.val < 3 then 9 else (if j.val < 4 then 26 else 23)))
def hex_2306894 : String := "4244404143064244404107060606070606404107060607"
theorem cover_2306894 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2306894 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 23) (hex := hex_2306894)
  decide +kernel
#print axioms cover_2306894

def state_2306923 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 52) else (if j.val < 3 then 36 else (if j.val < 4 then 54 else 46)))
def hex_2306923 : String := "4440414243070707424306444041C4060640414206070606430744404107424306444008060607070741074206064041074243064406060707"
theorem cover_2306923 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2306923 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 57) (hex := hex_2306923)
  decide +kernel
#print axioms cover_2306923

def state_2306983 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 104) else (if j.val < 3 then 36 else (if j.val < 4 then 55 else 92)))
def hex_2306983 : String := "43424440C40740410743070707074244400841074309084008094440060707"
theorem cover_2306983 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2306983 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 31) (hex := hex_2306983)
  decide +kernel
#print axioms cover_2306983

def state_2307014 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 105) else (if j.val < 3 then 36 else (if j.val < 4 then 55 else 92)))
def hex_2307014 : String := "4342444041C4084143420A07424440080A084440080707430608400841430708430605444041C40841074243070807400807420808"
theorem cover_2307014 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2307014 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 53) (hex := hex_2307014)
  decide +kernel
#print axioms cover_2307014
end Mub6.Numerical.CircleFullD0.Forest
