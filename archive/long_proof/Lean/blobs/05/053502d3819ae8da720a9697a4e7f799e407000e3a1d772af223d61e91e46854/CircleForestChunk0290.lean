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
def state_144993 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 28 else (if j.val < 4 then 28 else 20)))
def hex_144993 : String := "40414243064407080742430544050505414206430544070642430544070605"
theorem cover_144993 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_144993 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 31) (hex := hex_144993)
  decide +kernel
#print axioms cover_144993

def state_145026 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 56) else (if j.val < 3 then 28 else (if j.val < 4 then 29 else 20)))
def hex_145026 : String := "4243444041420807084142430609070908444009414209440743070A094008410A084344074005424143050A05054440424107060642410707070A"
theorem cover_145026 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_145026 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 59) (hex := hex_145026)
  decide +kernel
#print axioms cover_145026

def state_145085 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 57) else (if j.val < 3 then 28 else (if j.val < 4 then 29 else 20)))
def hex_145085 : String := "424344090844090843440505440940054142080505"
theorem cover_145085 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_145085 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_145085)
  decide +kernel
#print axioms cover_145085

def state_145109 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 56) else (if j.val < 3 then 56 else (if j.val < 4 then 58 else 20)))
def hex_145109 : String := "4440414206074209070640410642064306444007060606"
theorem cover_145109 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_145109 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 23) (hex := hex_145109)
  decide +kernel
#print axioms cover_145109

def state_145134 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 56) else (if j.val < 3 then 56 else (if j.val < 4 then 59 else 40)))
def hex_145134 : String := "414244094306400905440743400706400A4241054407430605410707420944094340070709"
theorem cover_145134 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_145134 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 37) (hex := hex_145134)
  decide +kernel
#print axioms cover_145134

def state_145171 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 56) else (if j.val < 3 then 56 else (if j.val < 4 then 59 else 40)))
def hex_145171 : String := "4142064443060743064042064106070642440943064009064409430640414209070941064206440606"
theorem cover_145171 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_145171 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 41) (hex := hex_145171)
  decide +kernel
#print axioms cover_145171
end Mub6.Numerical.CircleFullPrototype.Forest
