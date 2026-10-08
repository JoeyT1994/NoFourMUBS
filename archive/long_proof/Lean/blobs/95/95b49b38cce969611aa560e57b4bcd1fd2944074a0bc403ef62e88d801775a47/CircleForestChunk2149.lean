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
def state_2596444 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 10) else (if j.val < 3 then 25 else (if j.val < 4 then 24 else 10)))
def hex_2596444 : String := "4144434240414405050A4109094005094240054144430905070A054342400607400507420705440A4306420605"
theorem cover_2596444 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2596444 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 45) (hex := hex_2596444)
  decide +kernel
#print axioms cover_2596444

def state_2596489 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 27 else 10) else (if j.val < 3 then 25 else (if j.val < 4 then 24 else 10)))
def hex_2596489 : String := "414443094240410909090943094244090709440943090A"
theorem cover_2596489 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2596489 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_2596489)
  decide +kernel
#print axioms cover_2596489

def state_2596512 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 10) else (if j.val < 3 then 25 else (if j.val < 4 then 25 else 10)))
def hex_2596512 : String := "404144050544050541444243404144060744090708400506434005060542430707434440050707054442430A414005080A430905424341070707430A410505"
theorem cover_2596512 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2596512 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 63) (hex := hex_2596512)
  decide +kernel
#print axioms cover_2596512

def state_2596575 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 10) else (if j.val < 3 then 12 else (if j.val < 4 then 12 else 11)))
def hex_2596575 : String := "424344400607064440070707434440410706410709400607444041050541070707"
theorem cover_2596575 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2596575 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 33) (hex := hex_2596575)
  decide +kernel
#print axioms cover_2596575

def state_2596608 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 10) else (if j.val < 3 then 12 else (if j.val < 4 then 13 else 5)))
def hex_2596608 : String := "444240414344050505434405050541080840054143440505054344054207050542444007070744400541050505"
theorem cover_2596608 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2596608 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 45) (hex := hex_2596608)
  decide +kernel
#print axioms cover_2596608
end Mub6.Numerical.CircleFullD0.Forest
