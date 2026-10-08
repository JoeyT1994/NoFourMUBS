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
def state_1615013 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 22) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 24)))
def hex_1615013 : String := "4009424344410940090A410940070A444105400542434405410540050A05054140050A4007424344410A0707444105400642070507430706430906"
theorem cover_1615013 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1615013 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 59) (hex := hex_1615013)
  decide +kernel
#print axioms cover_1615013

def state_1615072 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 22) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 25)))
def hex_1615072 : String := "40074243070707"
theorem cover_1615072 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1615072 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1615072)
  decide +kernel
#print axioms cover_1615072

def state_1615081 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 23) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 24)))
def hex_1615081 : String := "07"
theorem cover_1615081 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1615081 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1615081)
  decide +kernel
#print axioms cover_1615081

def state_1615085 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 46) else (if j.val < 3 then 28 else (if j.val < 4 then 28 else 24)))
def hex_1615085 : String := "4440094243440907444140090A4043094208074306420644410A4042060506410A4007064140070A40074306420607430944410940074209090707"
theorem cover_1615085 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1615085 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 14) (count := 59) (hex := hex_1615085)
  decide +kernel
#print axioms cover_1615085

def state_1615146 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 47) else (if j.val < 3 then 28 else (if j.val < 4 then 28 else 48)))
def hex_1615146 : String := "07"
theorem cover_1615146 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1615146 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1615146)
  decide +kernel
#print axioms cover_1615146

def state_1615148 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 47) else (if j.val < 3 then 56 else (if j.val < 4 then 28 else 48)))
def hex_1615148 : String := "4306414440434206070843064206444140080608414007064007064007430642060744400843060840074305420507"
theorem cover_1615148 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1615148 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 47) (hex := hex_1615148)
  decide +kernel
#print axioms cover_1615148

def state_1615195 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 47) else (if j.val < 3 then 57 else (if j.val < 4 then 28 else 48)))
def hex_1615195 : String := "43074144400742430944414007420A09400742430644084140070608430744410540050507070907444007EA07"
theorem cover_1615195 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1615195 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 15) (count := 45) (hex := hex_1615195)
  decide +kernel
#print axioms cover_1615195

def state_1615240 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 47) else (if j.val < 3 then 28 else (if j.val < 4 then 28 else 49)))
def hex_1615240 : String := "07"
theorem cover_1615240 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1615240 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1615240)
  decide +kernel
#print axioms cover_1615240

def state_1615244 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 46) else (if j.val < 3 then 28 else (if j.val < 4 then 29 else 48)))
def hex_1615244 : String := "42434408070606"
theorem cover_1615244 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1615244 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1615244)
  decide +kernel
#print axioms cover_1615244
end Mub6.Numerical.CircleFullD0.Forest
