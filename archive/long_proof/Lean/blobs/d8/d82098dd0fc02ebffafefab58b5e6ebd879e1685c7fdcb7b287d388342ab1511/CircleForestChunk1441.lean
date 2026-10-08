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
def state_1646540 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 99) else (if j.val < 3 then 59 else (if j.val < 4 then 53 else 87)))
def hex_1646540 : String := "43420608424140440709064044074306074406064140094407084044430807094443080708"
theorem cover_1646540 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1646540 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 37) (hex := hex_1646540)
  decide +kernel
#print axioms cover_1646540

def state_1646578 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 24) else (if j.val < 3 then 14 else (if j.val < 4 then 27 else 20)))
def hex_1646578 : String := "420708"
theorem cover_1646578 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1646578 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_1646578)
  decide +kernel
#print axioms cover_1646578

def state_1646582 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 24) else (if j.val < 3 then 28 else (if j.val < 4 then 27 else 21)))
def hex_1646582 : String := "41400807400807"
theorem cover_1646582 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1646582 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 7) (hex := hex_1646582)
  decide +kernel
#print axioms cover_1646582

def state_1646589 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 24) else (if j.val < 3 then 29 else (if j.val < 4 then 27 else 21)))
def hex_1646589 : String := "414005440542070540440542084341050A05440742434140070740440707070743414005440507404442070542430A07430A0544074207434107070707"
theorem cover_1646589 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1646589 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 61) (hex := hex_1646589)
  decide +kernel
#print axioms cover_1646589

def state_1646654 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 25) else (if j.val < 3 then 28 else (if j.val < 4 then 26 else 20)))
def hex_1646654 : String := "414342400A4441080A41430A080A400A4441080A41430A080A4240080840050843420A400A440A0A0A"
theorem cover_1646654 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1646654 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 41) (hex := hex_1646654)
  decide +kernel
#print axioms cover_1646654

def state_1646695 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 25) else (if j.val < 3 then 29 else (if j.val < 4 then 26 else 20)))
def hex_1646695 : String := "414342400A4441050A410A0A400644060A4240054405080543420A0606"
theorem cover_1646695 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1646695 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 29) (hex := hex_1646695)
  decide +kernel
#print axioms cover_1646695

def state_1646724 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 25) else (if j.val < 3 then 14 else (if j.val < 4 then 26 else 21)))
def hex_1646724 : String := "42414344420A0A0A0A0A414344420A09090A0A"
theorem cover_1646724 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1646724 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 19) (hex := hex_1646724)
  decide +kernel
#print axioms cover_1646724

def state_1646743 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 25) else (if j.val < 3 then 14 else (if j.val < 4 then 27 else 10)))
def hex_1646743 : String := "444241080A06420A0A"
theorem cover_1646743 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1646743 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_1646743)
  decide +kernel
#print axioms cover_1646743

def state_1646759 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 50) else (if j.val < 3 then 56 else (if j.val < 4 then 52 else 20)))
def hex_1646759 : String := "44410743400707074143060743400A0507"
theorem cover_1646759 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1646759 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 17) (hex := hex_1646759)
  decide +kernel
#print axioms cover_1646759

def state_1646777 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 50) else (if j.val < 3 then 57 else (if j.val < 4 then 52 else 40)))
def hex_1646777 : String := "414340084207080843404244070844080A420744084108430507400807"
theorem cover_1646777 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1646777 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 29) (hex := hex_1646777)
  decide +kernel
#print axioms cover_1646777
end Mub6.Numerical.CircleFullD0.Forest
