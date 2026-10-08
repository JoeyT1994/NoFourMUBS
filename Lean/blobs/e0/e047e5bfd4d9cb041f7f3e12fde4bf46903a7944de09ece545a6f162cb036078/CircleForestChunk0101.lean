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
def state_24182 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
def hex_24182 : String := "424344420543050808444208080843444344400605400641050544400641050540070543090844440A0707"
theorem cover_24182 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_24182 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 43) (hex := hex_24182)
  decide +kernel
#print axioms cover_24182

def state_45487 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 4 else 2)))
def hex_45487 : String := "44404142080A42060A41420843070742054305440540080508"
theorem cover_45487 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_45487 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 25) (hex := hex_45487)
  decide +kernel
#print axioms cover_45487

def state_45514 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 10 else 4)))
def hex_45514 : String := "40414244060644074308424406064407084206440A0641424405080742440506440743400607404142060706410705"
theorem cover_45514 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_45514 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 47) (hex := hex_45514)
  decide +kernel
#print axioms cover_45514

def state_45564 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 8) else (if j.val < 3 then 8 else (if j.val < 4 then 11 else 4)))
def hex_45564 : String := "4409430609"
theorem cover_45564 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_45564 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_45564)
  decide +kernel
#print axioms cover_45564

def state_45570 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 8) else (if j.val < 3 then 9 else (if j.val < 4 then 11 else 8)))
def hex_45570 : String := "430709"
theorem cover_45570 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_45570 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_45570)
  decide +kernel
#print axioms cover_45570

def state_45574 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 8) else (if j.val < 3 then 9 else (if j.val < 4 then 22 else 9)))
def hex_45574 : String := "42444006074006410806444041070A0740410506410743084206440708"
theorem cover_45574 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_45574 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 29) (hex := hex_45574)
  decide +kernel
#print axioms cover_45574

def state_45603 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 8) else (if j.val < 3 then 9 else (if j.val < 4 then 23 else 9)))
def hex_45603 : String := "42440940090944400909404105434206050541434209050543420944094005410543060509"
theorem cover_45603 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_45603 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 37) (hex := hex_45603)
  decide +kernel
#print axioms cover_45603

def state_45640 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 9) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 4)))
def hex_45640 : String := "42440506444341420607060943414206440606064142064409404306094306094206440606"
theorem cover_45640 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_45640 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 37) (hex := hex_45640)
  decide +kernel
#print axioms cover_45640
end Mub6.Numerical.CircleFullPrototype.Forest
