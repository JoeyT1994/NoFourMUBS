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
def state_2259344 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 73 else 105) else (if j.val < 3 then 87 else (if j.val < 4 then 183 else 109)))
def hex_2259344 : String := "4241BE40060641BE4044434241BE0641BE084206080644434206410740060642060706"
theorem cover_2259344 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2259344 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 35) (hex := hex_2259344)
  decide +kernel
#print axioms cover_2259344

def state_2259381 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 104) else (if j.val < 3 then 43 else (if j.val < 4 then 90 else 55)))
def hex_2259381 : String := "420844BE08"
theorem cover_2259381 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2259381 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_2259381)
  decide +kernel
#print axioms cover_2259381

def state_2259386 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 105) else (if j.val < 3 then 43 else (if j.val < 4 then 90 else 55)))
def hex_2259386 : String := "424440070806444043420741BE074241080741BE4407074342084105400A4405084241080641BE40440A0644430A42060A06404307420641080608"
theorem cover_2259386 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2259386 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 59) (hex := hex_2259386)
  decide +kernel
#print axioms cover_2259386

def state_2259445 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 52) else (if j.val < 3 then 43 else (if j.val < 4 then 91 else 55)))
def hex_2259445 : String := "41420844BE0842064440434241060641BE4440060606420641BE0643420641BE400606420641060606"
theorem cover_2259445 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2259445 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 41) (hex := hex_2259445)
  decide +kernel
#print axioms cover_2259445

def state_2259488 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 52) else (if j.val < 3 then 43 else (if j.val < 4 then 90 else 54)))
def hex_2259488 : String := "41424044430509080805424044430A414209050A43084108094443050908404405430542414044050505400A44050605440543054241050905"
theorem cover_2259488 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2259488 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 57) (hex := hex_2259488)
  decide +kernel
#print axioms cover_2259488

def state_2259546 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 104) else (if j.val < 3 then 43 else (if j.val < 4 then 91 else 54)))
def hex_2259546 : String := "4240440908094044070707"
theorem cover_2259546 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2259546 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 11) (hex := hex_2259546)
  decide +kernel
#print axioms cover_2259546

def state_2259558 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 105) else (if j.val < 3 then 86 else (if j.val < 4 then 91 else 54)))
def hex_2259558 : String := "40444341094206440A06410942064440060606430906440906"
theorem cover_2259558 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2259558 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 25) (hex := hex_2259558)
  decide +kernel
#print axioms cover_2259558
end Mub6.Numerical.CircleFullD0.Forest
