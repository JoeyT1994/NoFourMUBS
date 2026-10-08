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
def state_763834 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
def hex_763834 : String := "404142434407414243090707070707074142434440074142080606404142050707410542050644074007414208070743440740070607424344074007060707"
theorem cover_763834 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_763834 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 63) (hex := hex_763834)
  decide +kernel
#print axioms cover_763834

def state_763898 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
def hex_763898 : String := "414243090A4344094143084009090844090A42430A4442440740090907094344090809"
theorem cover_763898 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_763898 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 35) (hex := hex_763898)
  decide +kernel
#print axioms cover_763898

def state_763934 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
def hex_763934 : String := "42434440414205090A4105420543050509440A4041060941424344050606430944090642430A0A094344090944400A41440A0A0A4009410909"
theorem cover_763934 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_763934 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 57) (hex := hex_763934)
  decide +kernel
#print axioms cover_763934

def state_763991 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
def hex_763991 : String := "4243440A40094243090909440A4009420A0943444009430609090A"
theorem cover_763991 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_763991 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 27) (hex := hex_763991)
  decide +kernel
#print axioms cover_763991

def state_764024 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
def hex_764024 : String := "4243440740440707074440430708074043440741420607074441080841064206054307064344084042080808440808"
theorem cover_764024 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_764024 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 47) (hex := hex_764024)
  decide +kernel
#print axioms cover_764024
end Mub6.Numerical.CircleFullPrototype.Forest
