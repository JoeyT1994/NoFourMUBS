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
def state_1317555 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 61) else (if j.val < 3 then 36 else (if j.val < 4 then 51 else 50)))
def hex_1317555 : String := "4044434207060808444342074140070706424140070705414044090844434207090943070840094409430708430708"
theorem cover_1317555 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1317555 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 47) (hex := hex_1317555)
  decide +kernel
#print axioms cover_1317555

def state_1317602 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 30) else (if j.val < 3 then 37 else (if j.val < 4 then 51 else 50)))
def hex_1317602 : String := "4140444305090505404409430A0944434241400605060509434241054006440607054241400844430508054008440908410509"
theorem cover_1317602 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1317602 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 51) (hex := hex_1317602)
  decide +kernel
#print axioms cover_1317602

def state_1317653 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 30) else (if j.val < 3 then 18 else (if j.val < 4 then 51 else 51)))
def hex_1317653 : String := "42084105400843054442080508"
theorem cover_1317653 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1317653 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1317653)
  decide +kernel
#print axioms cover_1317653

def state_1317667 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 30) else (if j.val < 3 then 18 else (if j.val < 4 then 50 else 25)))
def hex_1317667 : String := "444207410540430544080505420705"
theorem cover_1317667 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1317667 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 15) (hex := hex_1317667)
  decide +kernel
#print axioms cover_1317667

def state_1317685 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 60) else (if j.val < 3 then 36 else (if j.val < 4 then 51 else 50)))
def hex_1317685 : String := "404443420705424106074105404443420705420A4105054305420605440A43050643074206410540444305060506444307420606430706"
theorem cover_1317685 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1317685 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 55) (hex := hex_1317685)
  decide +kernel
#print axioms cover_1317685

def state_1317741 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 61) else (if j.val < 3 then 36 else (if j.val < 4 then 51 else 50)))
def hex_1317741 : String := "444342070742074140444342074140090A40090A0A430742074140080A09440A43070A4044430A0943074207090A430742074140444307080707400707"
theorem cover_1317741 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1317741 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 61) (hex := hex_1317741)
  decide +kernel
#print axioms cover_1317741

def state_1317802 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 61) else (if j.val < 3 then 36 else (if j.val < 4 then 51 else 50)))
def hex_1317802 : String := "4443070A4307420607"
theorem cover_1317802 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1317802 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 9) (hex := hex_1317802)
  decide +kernel
#print axioms cover_1317802

def state_1317812 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 60) else (if j.val < 3 then 37 else (if j.val < 4 then 51 else 50)))
def hex_1317812 : String := "05"
theorem cover_1317812 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1317812 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1317812)
  decide +kernel
#print axioms cover_1317812
end Mub6.Numerical.CircleFullD0.Forest
