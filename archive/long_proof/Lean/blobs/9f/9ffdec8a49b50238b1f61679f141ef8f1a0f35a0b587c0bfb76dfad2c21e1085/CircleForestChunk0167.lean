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
def state_61454 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 39) else (if j.val < 3 then 55 else (if j.val < 4 then 48 else 36)))
def hex_61454 : String := "4340074142444307070707424407070740074142070707"
theorem cover_61454 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_61454 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_61454)
  decide +kernel
#print axioms cover_61454

def state_61477 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 39) else (if j.val < 3 then 27 else (if j.val < 4 then 48 else 37)))
def hex_61477 : String := "424340410507094007414442050505444209070707"
theorem cover_61477 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_61477 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_61477)
  decide +kernel
#print axioms cover_61477

def state_61500 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 38) else (if j.val < 3 then 27 else (if j.val < 4 then 48 else 36)))
def hex_61500 : String := "424341404442060A4206080640444206434140449208084044920909410A40449242060A064206430841060944420643090606410640440606060A"
theorem cover_61500 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_61500 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 59) (hex := hex_61500)
  decide +kernel
#print axioms cover_61500

def state_61559 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 38) else (if j.val < 3 then 27 else (if j.val < 4 then 48 else 37)))
def hex_61559 : String := "42434108090643080A"
theorem cover_61559 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_61559 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_61559)
  decide +kernel
#print axioms cover_61559

def state_61571 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 39) else (if j.val < 3 then 54 else (if j.val < 4 then 96 else 36)))
def hex_61571 : String := "40414442430906430940414492420609449209414492060909444208090941444206090909"
theorem cover_61571 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_61571 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 37) (hex := hex_61571)
  decide +kernel
#print axioms cover_61571

def state_61608 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 39) else (if j.val < 3 then 54 else (if j.val < 4 then 97 else 36)))
def hex_61608 : String := "40414442064340414406064408420607060642064340410644420607060606440842064309084106440606"
theorem cover_61608 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_61608 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 43) (hex := hex_61608)
  decide +kernel
#print axioms cover_61608

def state_61652 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 39) else (if j.val < 3 then 55 else (if j.val < 4 then 96 else 36)))
def hex_61652 : String := "40414244434041420907090940410A070A090A4244430940410707090944070741424443090A090A09"
theorem cover_61652 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_61652 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 41) (hex := hex_61652)
  decide +kernel
#print axioms cover_61652
end Mub6.Numerical.CircleFullPrototype.Forest
