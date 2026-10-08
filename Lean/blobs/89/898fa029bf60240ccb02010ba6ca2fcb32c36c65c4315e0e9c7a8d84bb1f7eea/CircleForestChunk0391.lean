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
def state_169359 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 6)))
def hex_169359 : String := "424344400907404109424307070941420A09420743440640060A07440740090A434409400941094342440640060A090909"
theorem cover_169359 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_169359 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 49) (hex := hex_169359)
  decide +kernel
#print axioms cover_169359

def state_169411 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 12 else 7)))
def hex_169411 : String := "4144090944424341054407400542054341050605054341094406090942054341090805"
theorem cover_169411 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_169411 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 35) (hex := hex_169411)
  decide +kernel
#print axioms cover_169411

def state_169447 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 8) else (if j.val < 3 then 12 else (if j.val < 4 then 12 else 7)))
def hex_169447 : String := "4442434005440A4105420543400506050543400944090909420506"
theorem cover_169447 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_169447 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 27) (hex := hex_169447)
  decide +kernel
#print axioms cover_169447

def state_169478 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 9) else (if j.val < 3 then 24 else (if j.val < 4 then 24 else 14)))
def hex_169478 : String := "4144420543440705050544074205434140054407050705"
theorem cover_169478 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_169478 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 23) (hex := hex_169478)
  decide +kernel
#print axioms cover_169478

def state_169501 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 9) else (if j.val < 3 then 24 else (if j.val < 4 then 24 else 14)))
def hex_169501 : String := "414442070A420543404105444342050A0505410A0A054407420743404144074342054041050741440705070507414407434207410807070707"
theorem cover_169501 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_169501 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 57) (hex := hex_169501)
  decide +kernel
#print axioms cover_169501

def state_169558 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 24 else (if j.val < 4 then 25 else 14)))
def hex_169558 : String := "4005410507"
theorem cover_169558 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_169558 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_169558)
  decide +kernel
#print axioms cover_169558

def state_169565 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 9) else (if j.val < 3 then 25 else (if j.val < 4 then 24 else 14)))
def hex_169565 : String := "414409094443060743424140094409434241094006440609090940064406430607410906420709"
theorem cover_169565 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_169565 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 39) (hex := hex_169565)
  decide +kernel
#print axioms cover_169565
end Mub6.Numerical.CircleFullPrototype.Forest
