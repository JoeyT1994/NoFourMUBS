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
def state_1630085 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 26) else (if j.val < 3 then 27 else (if j.val < 4 then 49 else 17)))
def hex_1630085 : String := "414006424406434140064244434140060505064305410A0506064140064244060606060606"
theorem cover_1630085 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1630085 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 37) (hex := hex_1630085)
  decide +kernel
#print axioms cover_1630085

def state_1630122 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 27) else (if j.val < 3 then 13 else (if j.val < 4 then 24 else 8)))
def hex_1630122 : String := "4240064443424006080606434208084240064144060A060606"
theorem cover_1630122 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1630122 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 25) (hex := hex_1630122)
  decide +kernel
#print axioms cover_1630122

def state_1630147 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 25 else 8)))
def hex_1630147 : String := "4142404406430A0644434142400609060606434142400707400644434109060643410A0A074207064107060606"
theorem cover_1630147 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1630147 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 45) (hex := hex_1630147)
  decide +kernel
#print axioms cover_1630147

def state_1630196 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 26) else (if j.val < 3 then 26 else (if j.val < 4 then 24 else 9)))
def hex_1630196 : String := "44434109090A09"
theorem cover_1630196 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1630196 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1630196)
  decide +kernel
#print axioms cover_1630196

def state_1630204 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 26) else (if j.val < 3 then 26 else (if j.val < 4 then 24 else 18)))
def hex_1630204 : String := "434142404443050A0505404443090A0905420540440805054142400A4443050705400A4443414205400A05050A43050A420A400A440A05"
theorem cover_1630204 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1630204 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 55) (hex := hex_1630204)
  decide +kernel
#print axioms cover_1630204

def state_1630259 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 26) else (if j.val < 3 then 26 else (if j.val < 4 then 24 else 19)))
def hex_1630259 : String := "434105054142050A0A"
theorem cover_1630259 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1630259 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_1630259)
  decide +kernel
#print axioms cover_1630259

def state_1630269 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 26) else (if j.val < 3 then 27 else (if j.val < 4 then 24 else 9)))
def hex_1630269 : String := "4443410906410A0609"
theorem cover_1630269 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1630269 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_1630269)
  decide +kernel
#print axioms cover_1630269

def state_1630280 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 26) else (if j.val < 3 then 27 else (if j.val < 4 then 48 else 18)))
def hex_1630280 : String := "41404442430941090606094442430541404442050505050507420505404406094442050505"
theorem cover_1630280 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1630280 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 37) (hex := hex_1630280)
  decide +kernel
#print axioms cover_1630280
end Mub6.Numerical.CircleFullD0.Forest
