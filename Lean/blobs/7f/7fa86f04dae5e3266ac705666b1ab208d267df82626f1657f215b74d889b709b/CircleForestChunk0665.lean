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
def state_765265 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 10 else (if j.val < 4 then 6 else 4)))
def hex_765265 : String := "434041444306060607064041444205050644070606"
theorem cover_765265 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_765265 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 21) (hex := hex_765265)
  decide +kernel
#print axioms cover_765265

def state_765286 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 11 else (if j.val < 4 then 6 else 4)))
def hex_765286 : String := "434041440A4243060608440A0841440506440A084041440542430605434044050805054442430A050A42430806430840084105084105440506"
theorem cover_765286 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_765286 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 57) (hex := hex_765286)
  decide +kernel
#print axioms cover_765286

def state_765343 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 5)))
def hex_765343 : String := "4206430844404106060606"
theorem cover_765343 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_765343 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_765343)
  decide +kernel
#print axioms cover_765343

def state_765354 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 2)))
def hex_765354 : String := "4442404105090540410543440542400905404105430805050505420644404143060543060A0606"
theorem cover_765354 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_765354 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 39) (hex := hex_765354)
  decide +kernel
#print axioms cover_765354

def state_765393 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
def hex_765393 : String := "4243440708440708434441424307074308404442070A08074208080844414209404344090909430705094142064440430809060608"
theorem cover_765393 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_765393 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 53) (hex := hex_765393)
  decide +kernel
#print axioms cover_765393

def state_765447 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
def hex_765447 : String := "4142064344404206430906060606424344404106430706060606434440414206050541064206054041060706444041064206080606"
theorem cover_765447 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_765447 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 53) (hex := hex_765447)
  decide +kernel
#print axioms cover_765447

def state_765500 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
def hex_765500 : String := "4106420643444106070606"
theorem cover_765500 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_765500 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_765500)
  decide +kernel
#print axioms cover_765500
end Mub6.Numerical.CircleFullPrototype.Forest
