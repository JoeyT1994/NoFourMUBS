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
def state_391584 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 28) else (if j.val < 3 then 25 else (if j.val < 4 then 28 else 48)))
def hex_391584 : String := "42410A4306444240414306440706060640410A0605060A"
theorem cover_391584 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_391584 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 23) (hex := hex_391584)
  decide +kernel
#print axioms cover_391584

def state_391607 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 28) else (if j.val < 3 then 25 else (if j.val < 4 then 28 else 49)))
def hex_391607 : String := "40424143440A06084306444042410807070640070608420606"
theorem cover_391607 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_391607 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 25) (hex := hex_391607)
  decide +kernel
#print axioms cover_391607

def state_391634 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 28) else (if j.val < 3 then 25 else (if j.val < 4 then 29 else 48)))
def hex_391634 : String := "424108434440424143B5060A410843B508424143B50843B509410843B508404209084209084440064209080808"
theorem cover_391634 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_391634 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 45) (hex := hex_391634)
  decide +kernel
#print axioms cover_391634

def state_391679 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 28) else (if j.val < 3 then 25 else (if j.val < 4 then 29 else 48)))
def hex_391679 : String := "4241084344424041074344050907074041050505420908444207050808"
theorem cover_391679 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_391679 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 29) (hex := hex_391679)
  decide +kernel
#print axioms cover_391679

def state_391708 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 28) else (if j.val < 3 then 25 else (if j.val < 4 then 29 else 49)))
def hex_391708 : String := "4008420908"
theorem cover_391708 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_391708 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_391708)
  decide +kernel
#print axioms cover_391708

def state_391717 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 29) else (if j.val < 3 then 50 else (if j.val < 4 then 28 else 48)))
def hex_391717 : String := "4306414440424341B5060A4341B50641B50742430641B506430641B50640420707064440070606"
theorem cover_391717 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_391717 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 39) (hex := hex_391717)
  decide +kernel
#print axioms cover_391717

def state_391756 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 29) else (if j.val < 3 then 51 else (if j.val < 4 then 28 else 48)))
def hex_391756 : String := "430641444042430741440507070942430505054007064440070506"
theorem cover_391756 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_391756 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 27) (hex := hex_391756)
  decide +kernel
#print axioms cover_391756

def state_391783 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 29) else (if j.val < 3 then 25 else (if j.val < 4 then 28 else 48)))
def hex_391783 : String := "06"
theorem cover_391783 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_391783 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_391783)
  decide +kernel
#print axioms cover_391783

def state_391784 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 29) else (if j.val < 3 then 25 else (if j.val < 4 then 28 else 49)))
def hex_391784 : String := "4042060706"
theorem cover_391784 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_391784 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_391784)
  decide +kernel
#print axioms cover_391784
end Mub6.Numerical.CircleFullPrototype.Forest
