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
def state_23251 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 30 else 15) else (if j.val < 3 then 15 else (if j.val < 4 then 21 else 21)))
def hex_23251 : String := "41420543444007070744404105420543070505054243444008084042054105440805050843440640070744400808404142050708410508"
theorem cover_23251 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_23251 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 55) (hex := hex_23251)
  decide +kernel
#print axioms cover_23251

def state_23306 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 31 else 15) else (if j.val < 3 then 15 else (if j.val < 4 then 21 else 21)))
def hex_23306 : String := "410542054306440605"
theorem cover_23306 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_23306 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_23306)
  decide +kernel
#print axioms cover_23306

def state_23316 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 10 else 11)))
def hex_23316 : String := "414244434041050605050544430740060507424443404206094205410509400605430906444340070740410609414205074244430906060707"
theorem cover_23316 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_23316 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 57) (hex := hex_23316)
  decide +kernel
#print axioms cover_23316

def state_23373 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 10 else 11)))
def hex_23373 : String := "410542054443074041054205070507"
theorem cover_23373 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_23373 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_23373)
  decide +kernel
#print axioms cover_23373

def state_23390 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 11 else 10)))
def hex_23390 : String := "414243444041050605050543444041060A410542050A400605440A06424344084006050843444008084041060841420543440A06060808"
theorem cover_23390 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_23390 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 55) (hex := hex_23390)
  decide +kernel
#print axioms cover_23390

def state_23445 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 11 else 10)))
def hex_23445 : String := "41054205434408404105080508"
theorem cover_23445 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_23445 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_23445)
  decide +kernel
#print axioms cover_23445

def state_23458 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 11 else 11)))
def hex_23458 : String := "40414205064206434406060605"
theorem cover_23458 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_23458 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 13) (hex := hex_23458)
  decide +kernel
#print axioms cover_23458
end Mub6.Numerical.CircleFullPrototype.Forest
