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
def state_47569 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 19) else (if j.val < 3 then 42 else (if j.val < 4 then 47 else 20)))
def hex_47569 : String := "414407434241070909424106404407090606444307424007050743420909424041444309429040090609440A09414407094405094041090909"
theorem cover_47569 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_47569 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 57) (hex := hex_47569)
  decide +kernel
#print axioms cover_47569

def state_47626 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 43 else (if j.val < 4 then 47 else 20)))
def hex_47626 : String := "4041440A050A4106440709"
theorem cover_47626 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_47626 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 11) (hex := hex_47626)
  decide +kernel
#print axioms cover_47626

def state_47637 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 21 else (if j.val < 4 then 23 else 21)))
def hex_47637 : String := "404105430A054143080543094244404105094109090909"
theorem cover_47637 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_47637 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 23) (hex := hex_47637)
  decide +kernel
#print axioms cover_47637

def state_47660 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 11)))
def hex_47660 : String := "400541054344420808084442404105434407050541084308444007080840054105094240050805"
theorem cover_47660 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_47660 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 39) (hex := hex_47660)
  decide +kernel
#print axioms cover_47660

def state_47699 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 11 else (if j.val < 4 then 5 else 5)))
def hex_47699 : String := "4344400A4108090844400541054243440A0944400A414342060505430942400A4106090A400541050943094440054105090505"
theorem cover_47699 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_47699 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 14) (count := 51) (hex := hex_47699)
  decide +kernel
#print axioms cover_47699

def state_47751 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 2 else 2)))
def hex_47751 : String := "434441400A42050A0A414440064205430506400808064441434006420544050640420644430605064205440543064105050606"
theorem cover_47751 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_47751 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 51) (hex := hex_47751)
  decide +kernel
#print axioms cover_47751

def state_47803 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 2)))
def hex_47803 : String := "440A410942440A0909"
theorem cover_47803 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_47803 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_47803)
  decide +kernel
#print axioms cover_47803
end Mub6.Numerical.CircleFullPrototype.Forest
