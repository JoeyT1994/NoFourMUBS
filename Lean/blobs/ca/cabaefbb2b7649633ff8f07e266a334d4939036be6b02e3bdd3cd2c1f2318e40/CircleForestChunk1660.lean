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
def state_2271602 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 27) else (if j.val < 3 then 46 else (if j.val < 4 then 45 else 58)))
def hex_2271602 : String := "414243404441090909444105424309060941420605420609404441060606440706430909424340094409410906400944060609"
theorem cover_2271602 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2271602 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 51) (hex := hex_2271602)
  decide +kernel
#print axioms cover_2271602

def state_2271653 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 27) else (if j.val < 3 then 46 else (if j.val < 4 then 45 else 59)))
def hex_2271653 : String := "41424340440906444106060606430909424340094106060609"
theorem cover_2271653 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2271653 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 25) (hex := hex_2271653)
  decide +kernel
#print axioms cover_2271653

def state_2271678 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 27) else (if j.val < 3 then 47 else (if j.val < 4 then 22 else 29)))
def hex_2271678 : String := "4340094409094009440909"
theorem cover_2271678 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2271678 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 11) (hex := hex_2271678)
  decide +kernel
#print axioms cover_2271678

def state_2271690 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 26) else (if j.val < 3 then 23 else (if j.val < 4 then 23 else 14)))
def hex_2271690 : String := "404442434144074009074409094107440840090743094107084243410A4009440906410A40060643090A44074243410740440A0A070707"
theorem cover_2271690 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2271690 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 55) (hex := hex_2271690)
  decide +kernel
#print axioms cover_2271690

def state_2271746 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 27) else (if j.val < 3 then 23 else (if j.val < 4 then 23 else 14)))
def hex_2271746 : String := "4442430908084243090509"
theorem cover_2271746 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2271746 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 11) (hex := hex_2271746)
  decide +kernel
#print axioms cover_2271746

def state_2271758 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 27) else (if j.val < 3 then 23 else (if j.val < 4 then 23 else 28)))
def hex_2271758 : String := "4243404408414243090909084441070841074243080608404408410705440707430908"
theorem cover_2271758 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2271758 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 35) (hex := hex_2271758)
  decide +kernel
#print axioms cover_2271758

def state_2271793 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 27) else (if j.val < 3 then 23 else (if j.val < 4 then 23 else 29)))
def hex_2271793 : String := "42434044414206090941060644414243400606060742060941060640440605440606434009440909400944070A"
theorem cover_2271793 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2271793 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 45) (hex := hex_2271793)
  decide +kernel
#print axioms cover_2271793
end Mub6.Numerical.CircleFullD0.Forest
