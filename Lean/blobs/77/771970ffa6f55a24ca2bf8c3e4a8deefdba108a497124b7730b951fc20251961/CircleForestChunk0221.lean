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
def state_74418 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 25) else (if j.val < 3 then 20 else (if j.val < 4 then 49 else 20)))
def hex_74418 : String := "414244090A4408434041420A44084340050A0542080841420A44060A420944084340084106420706084008410A0942094408434008414209080708"
theorem cover_74418 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_74418 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 59) (hex := hex_74418)
  decide +kernel
#print axioms cover_74418

def state_74477 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 25) else (if j.val < 3 then 20 else (if j.val < 4 then 49 else 20)))
def hex_74477 : String := "414209440643410A40420906060A4209440943404142094406434041420505050540070642050541420505054041090809"
theorem cover_74477 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_74477 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 49) (hex := hex_74477)
  decide +kernel
#print axioms cover_74477

def state_74531 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 50) else (if j.val < 3 then 40 else (if j.val < 4 then 48 else 42)))
def hex_74531 : String := "4340074108070A"
theorem cover_74531 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_74531 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_74531)
  decide +kernel
#print axioms cover_74531

def state_74539 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 50) else (if j.val < 3 then 41 else (if j.val < 4 then 96 else 42)))
def hex_74539 : String := "404144424307074340410907410944B807404144B807074144B809070707414442084308410A4044B80708084442074340070540074144B8070507"
theorem cover_74539 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_74539 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 59) (hex := hex_74539)
  decide +kernel
#print axioms cover_74539

def state_74598 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 50) else (if j.val < 3 then 41 else (if j.val < 4 then 97 else 42)))
def hex_74598 : String := "404144420A4340410A07410A070A0707410A444207434007410A070707"
theorem cover_74598 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_74598 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 29) (hex := hex_74598)
  decide +kernel
#print axioms cover_74598

def state_74627 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 50) else (if j.val < 3 then 20 else (if j.val < 4 then 48 else 43)))
def hex_74627 : String := "07"
theorem cover_74627 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_74627 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_74627)
  decide +kernel
#print axioms cover_74627

def state_74628 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 51) else (if j.val < 3 then 20 else (if j.val < 4 then 48 else 21)))
def hex_74628 : String := "07"
theorem cover_74628 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_74628 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_74628)
  decide +kernel
#print axioms cover_74628

def state_74629 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 25) else (if j.val < 3 then 20 else (if j.val < 4 then 48 else 21)))
def hex_74629 : String := "4144420A43410840444205050705410A4044420A43410A050A070A08444207430540070507"
theorem cover_74629 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_74629 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 37) (hex := hex_74629)
  decide +kernel
#print axioms cover_74629
end Mub6.Numerical.CircleFullPrototype.Forest
