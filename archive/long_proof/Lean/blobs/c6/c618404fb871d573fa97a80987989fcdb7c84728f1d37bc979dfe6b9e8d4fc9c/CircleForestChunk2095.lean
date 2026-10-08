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
def state_2583324 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 27 else 10) else (if j.val < 3 then 22 else (if j.val < 4 then 24 else 8)))
def hex_2583324 : String := "4144430542054041050505084443420541050542084140444305080805400A084342050508"
theorem cover_2583324 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2583324 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 37) (hex := hex_2583324)
  decide +kernel
#print axioms cover_2583324

def state_2583364 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 20) else (if j.val < 3 then 22 else (if j.val < 4 then 25 else 16)))
def hex_2583364 : String := "4243404108080808434041444243404108080808434041060A06064208434041080808080A410844420843400A0606084041080A08"
theorem cover_2583364 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2583364 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 53) (hex := hex_2583364)
  decide +kernel
#print axioms cover_2583364

def state_2583417 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 20) else (if j.val < 3 then 22 else (if j.val < 4 then 25 else 17)))
def hex_2583417 : String := "4208434041084408080808"
theorem cover_2583417 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2583417 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_2583417)
  decide +kernel
#print axioms cover_2583417

def state_2583428 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 21) else (if j.val < 3 then 22 else (if j.val < 4 then 25 else 8)))
def hex_2583428 : String := "444243400A08400A080A420843400A080A"
theorem cover_2583428 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2583428 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 17) (hex := hex_2583428)
  decide +kernel
#print axioms cover_2583428

def state_2583445 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 27 else 10) else (if j.val < 3 then 22 else (if j.val < 4 then 25 else 8)))
def hex_2583445 : String := "4108444208434108080808"
theorem cover_2583445 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2583445 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_2583445)
  decide +kernel
#print axioms cover_2583445

def state_2583462 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 20) else (if j.val < 3 then 46 else (if j.val < 4 then 48 else 16)))
def hex_2583462 : String := "40414407430742400707070A410944070A"
theorem cover_2583462 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2583462 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_2583462)
  decide +kernel
#print axioms cover_2583462

def state_2583479 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 20) else (if j.val < 3 then 46 else (if j.val < 4 then 49 else 16)))
def hex_2583479 : String := "4041444243074007060642434041070741060A4041440642430606060A41060A43074007060A410644424309400A06064243400A09400A060A"
theorem cover_2583479 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2583479 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 57) (hex := hex_2583479)
  decide +kernel
#print axioms cover_2583479

def state_2583536 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 20) else (if j.val < 3 then 47 else (if j.val < 4 then 24 else 16)))
def hex_2583536 : String := "434007074041060706"
theorem cover_2583536 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2583536 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_2583536)
  decide +kernel
#print axioms cover_2583536
end Mub6.Numerical.CircleFullD0.Forest
