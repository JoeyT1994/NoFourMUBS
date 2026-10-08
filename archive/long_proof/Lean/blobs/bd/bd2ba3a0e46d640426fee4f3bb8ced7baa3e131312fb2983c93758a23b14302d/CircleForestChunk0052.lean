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
def state_12351 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 15 else (if j.val < 4 then 4 else 4)))
def hex_12351 : String := "4344054041440507440507050A"
theorem cover_12351 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_12351 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 13) (hex := hex_12351)
  decide +kernel
#print axioms cover_12351

def state_12364 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 4)))
def hex_12364 : String := "414243080643080A42434405404108050844400A410A05404142060A4243440506060A4106420643050643050A"
theorem cover_12364 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_12364 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 45) (hex := hex_12364)
  decide +kernel
#print axioms cover_12364

def state_12411 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 5)))
def hex_12411 : String := "4442430806430841074007064206430606"
theorem cover_12411 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_12411 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 17) (hex := hex_12411)
  decide +kernel
#print axioms cover_12411

def state_12429 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 10)))
def hex_12429 : String := "4243404144080744420907074108094041444206070644424342090742060707074106444206434007070A064340410707084041070741440706440A07"
theorem cover_12429 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_12429 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 61) (hex := hex_12429)
  decide +kernel
#print axioms cover_12429

def state_12490 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 11)))
def hex_12490 : String := "4243090643444007080944400741060706"
theorem cover_12490 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_12490 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 17) (hex := hex_12490)
  decide +kernel
#print axioms cover_12490

def state_12507 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 5)))
def hex_12507 : String := "410644424308064308404106440A080806"
theorem cover_12507 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_12507 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 17) (hex := hex_12507)
  decide +kernel
#print axioms cover_12507

def state_12524 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 2)))
def hex_12524 : String := "440A4041434442050705054344424041054344070505060A060606"
theorem cover_12524 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_12524 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 27) (hex := hex_12524)
  decide +kernel
#print axioms cover_12524

def state_12556 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 7) else (if j.val < 3 then 12 else (if j.val < 4 then 4 else 4)))
def hex_12556 : String := "41430A44074206404143060609064309440709"
theorem cover_12556 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_12556 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 19) (hex := hex_12556)
  decide +kernel
#print axioms cover_12556

def state_12577 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 14) else (if j.val < 3 then 13 else (if j.val < 4 then 8 else 4)))
def hex_12577 : String := "444042414305440542070505050509"
theorem cover_12577 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_12577 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_12577)
  decide +kernel
#print axioms cover_12577

def state_12595 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 14) else (if j.val < 3 then 26 else (if j.val < 4 then 9 else 8)))
def hex_12595 : String := "41434407420741070707430707"
theorem cover_12595 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_12595 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 13) (hex := hex_12595)
  decide +kernel
#print axioms cover_12595
end Mub6.Numerical.CircleFullPrototype.Forest
