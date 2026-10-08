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
def state_1043372 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 8) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 13)))
def hex_1043372 : String := "4305424044410505050540444143054205404441430542054044414305D90605054306420606050543064240090540440606060505"
theorem cover_1043372 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1043372 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 17) (count := 53) (hex := hex_1043372)
  decide +kernel
#print axioms cover_1043372

def state_1043425 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 9) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 13)))
def hex_1043425 : String := "4306424009064044060606"
theorem cover_1043425 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1043425 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_1043425)
  decide +kernel
#print axioms cover_1043425

def state_1043439 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 8) else (if j.val < 3 then 13 else (if j.val < 4 then 14 else 12)))
def hex_1043439 : String := "44400A064042060706"
theorem cover_1043439 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1043439 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_1043439)
  decide +kernel
#print axioms cover_1043439

def state_1043449 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 8) else (if j.val < 3 then 13 else (if j.val < 4 then 15 else 24)))
def hex_1043449 : String := "40420A0909"
theorem cover_1043449 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1043449 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1043449)
  decide +kernel
#print axioms cover_1043449

def state_1043458 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 16) else (if j.val < 3 then 26 else (if j.val < 4 then 30 else 25)))
def hex_1043458 : String := "44400A064042060606"
theorem cover_1043458 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1043458 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_1043458)
  decide +kernel
#print axioms cover_1043458

def state_1043467 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 16) else (if j.val < 3 then 26 else (if j.val < 4 then 31 else 25)))
def hex_1043467 : String := "44404241430A090A09094042414344060644404241090609064042414306D9064108430609064306440606414308094306440507420606"
theorem cover_1043467 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1043467 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 55) (hex := hex_1043467)
  decide +kernel
#print axioms cover_1043467

def state_1043522 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 17) else (if j.val < 3 then 26 else (if j.val < 4 then 15 else 25)))
def hex_1043522 : String := "4306440A4042060606"
theorem cover_1043522 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1043522 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1043522)
  decide +kernel
#print axioms cover_1043522

def state_1043531 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 8) else (if j.val < 3 then 27 else (if j.val < 4 then 15 else 25)))
def hex_1043531 : String := "414308094307440507"
theorem cover_1043531 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1043531 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_1043531)
  decide +kernel
#print axioms cover_1043531

def state_1043540 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 27 else 8) else (if j.val < 3 then 13 else (if j.val < 4 then 15 else 25)))
def hex_1043540 : String := "420609"
theorem cover_1043540 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1043540 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_1043540)
  decide +kernel
#print axioms cover_1043540

def state_1043543 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 9) else (if j.val < 3 then 13 else (if j.val < 4 then 7 else 12)))
def hex_1043543 : String := "4306440A4042060606"
theorem cover_1043543 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1043543 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1043543)
  decide +kernel
#print axioms cover_1043543

def state_1043554 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 8) else (if j.val < 3 then 13 else (if j.val < 4 then 14 else 13)))
def hex_1043554 : String := "4007420507"
theorem cover_1043554 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1043554 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1043554)
  decide +kernel
#print axioms cover_1043554

def state_1043560 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 8) else (if j.val < 3 then 13 else (if j.val < 4 then 15 else 13)))
def hex_1043560 : String := "4244414340070640424441434007064042444143400706D943060607074206440606430640070607074244060544060643064007060707"
theorem cover_1043560 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1043560 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 16) (count := 55) (hex := hex_1043560)
  decide +kernel
#print axioms cover_1043560

def state_1043615 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 27 else 8) else (if j.val < 3 then 13 else (if j.val < 4 then 15 else 13)))
def hex_1043615 : String := "4244060544414306090607"
theorem cover_1043615 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1043615 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_1043615)
  decide +kernel
#print axioms cover_1043615

def state_1043626 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 9) else (if j.val < 3 then 13 else (if j.val < 4 then 7 else 13)))
def hex_1043626 : String := "43074007420606"
theorem cover_1043626 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1043626 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1043626)
  decide +kernel
#print axioms cover_1043626
end Mub6.Numerical.CircleFullD0.Forest
