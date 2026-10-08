import D0FullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1511107 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 176) else (if j.val < 3 then 166 else (if j.val < 4 then 211 else 121)))
def hex_1511107 : String := "4440414388060A0A06"
theorem cover_1511107 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1511107 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1511107)
  decide +kernel
#print axioms cover_1511107

def state_1511117 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 176) else (if j.val < 3 then 167 else (if j.val < 4 then 211 else 242)))
def hex_1511117 : String := "404143884244054041060A0644074007074388420A440940090741438842060743880A"
theorem cover_1511117 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1511117 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 35) (hex := hex_1511117)
  decide +kernel
#print axioms cover_1511117

def state_1511152 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 176) else (if j.val < 3 then 167 else (if j.val < 4 then 211 else 243)))
def hex_1511152 : String := "4041438842064440410643070606064388424440410609060644404109094106430706404106430906064106438806"
theorem cover_1511152 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1511152 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 47) (hex := hex_1511152)
  decide +kernel
#print axioms cover_1511152

def state_1511201 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 177) else (if j.val < 3 then 166 else (if j.val < 4 then 210 else 121)))
def hex_1511201 : String := "440A404143420A440A4041050A060A0A0A"
theorem cover_1511201 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1511201 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 17) (hex := hex_1511201)
  decide +kernel
#print axioms cover_1511201

def state_1511218 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 177) else (if j.val < 3 then 167 else (if j.val < 4 then 210 else 121)))
def hex_1511218 : String := "4440414308420A08080840414342440805084244404109090A40418843050941060A44084005084308420A08414308424408060708"
theorem cover_1511218 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1511218 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 53) (hex := hex_1511218)
  decide +kernel
#print axioms cover_1511218

def state_1511271 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 177) else (if j.val < 3 then 83 else (if j.val < 4 then 211 else 121)))
def hex_1511271 : String := "420A444041430A0A090A40414342440A404188090644400941070740094188430709420A4409400941060943420A090A41434206440740410607060A0A"
theorem cover_1511271 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1511271 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 61) (hex := hex_1511271)
  decide +kernel
#print axioms cover_1511271
end Mub6.Numerical.CircleFullD0.Forest
