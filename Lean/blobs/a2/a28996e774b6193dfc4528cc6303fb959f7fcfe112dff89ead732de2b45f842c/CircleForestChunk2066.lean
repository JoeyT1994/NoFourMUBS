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
def state_2576296 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 2 else 2)))
def hex_2576296 : String := "4306440806"
theorem cover_2576296 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2576296 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_2576296)
  decide +kernel
#print axioms cover_2576296

def state_2576302 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 2)))
def hex_2576302 : String := "4441050606"
theorem cover_2576302 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2576302 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_2576302)
  decide +kernel
#print axioms cover_2576302

def state_2576308 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 4)))
def hex_2576308 : String := "4142054305404442050942054305410505054243054044080605434044070605404441420509424305400A050A4142054305400A0542060A4441050808"
theorem cover_2576308 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2576308 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 61) (hex := hex_2576308)
  decide +kernel
#print axioms cover_2576308

def state_2576369 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 5)))
def hex_2576369 : String := "4142430644050643094440424305054305410544050505404206430644090609420643064440414206430508060806"
theorem cover_2576369 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2576369 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 47) (hex := hex_2576369)
  decide +kernel
#print axioms cover_2576369

def state_2576418 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
def hex_2576418 : String := "424344404406080608444006070A4344400642060608444042060642434406080643064406064008420A08"
theorem cover_2576418 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2576418 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 43) (hex := hex_2576418)
  decide +kernel
#print axioms cover_2576418

def state_2576462 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 2 else 3)))
def hex_2576462 : String := "4344404109444243090743094041074442074309060741060709090944404107434407070741060707"
theorem cover_2576462 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2576462 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 41) (hex := hex_2576462)
  decide +kernel
#print axioms cover_2576462
end Mub6.Numerical.CircleFullD0.Forest
