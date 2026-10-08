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
def state_145467 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 56) else (if j.val < 3 then 115 else (if j.val < 4 then 59 else 41)))
def hex_145467 : String := "414309440709434407094440070709"
theorem cover_145467 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_145467 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 15) (hex := hex_145467)
  decide +kernel
#print axioms cover_145467

def state_145484 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 57) else (if j.val < 3 then 56 else (if j.val < 4 then 58 else 20)))
def hex_145484 : String := "4440090A400841060A"
theorem cover_145484 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_145484 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_145484)
  decide +kernel
#print axioms cover_145484

def state_145493 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 57) else (if j.val < 3 then 56 else (if j.val < 4 then 59 else 20)))
def hex_145493 : String := "4409404142084308080841424306444008060843444041060806084440414208434409088009414206430680420943068008420843440908440908"
theorem cover_145493 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_145493 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 59) (hex := hex_145493)
  decide +kernel
#print axioms cover_145493

def state_145553 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 57) else (if j.val < 3 then 57 else (if j.val < 4 then 58 else 20)))
def hex_145553 : String := "440705"
theorem cover_145553 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_145553 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_145553)
  decide +kernel
#print axioms cover_145553

def state_145557 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 57) else (if j.val < 3 then 57 else (if j.val < 4 then 59 else 40)))
def hex_145557 : String := "404142090709414244074307400707070A"
theorem cover_145557 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_145557 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_145557)
  decide +kernel
#print axioms cover_145557

def state_145575 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 57) else (if j.val < 3 then 57 else (if j.val < 4 then 59 else 41)))
def hex_145575 : String := "41424305444005414243054405050505080505"
theorem cover_145575 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_145575 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 19) (hex := hex_145575)
  decide +kernel
#print axioms cover_145575

def state_145596 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 114) else (if j.val < 3 then 114 else (if j.val < 4 then 59 else 41)))
def hex_145596 : String := "434440050A4005064440414243440505804305074243050905414243068043078042430A800540414208050541424443068008444305800942444305800805"
theorem cover_145596 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_145596 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 63) (hex := hex_145596)
  decide +kernel
#print axioms cover_145596

def state_145659 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 114) else (if j.val < 3 then 115 else (if j.val < 4 then 59 else 41)))
def hex_145659 : String := "43054440050505"
theorem cover_145659 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_145659 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_145659)
  decide +kernel
#print axioms cover_145659

def state_145666 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 115) else (if j.val < 3 then 57 else (if j.val < 4 then 59 else 41)))
def hex_145666 : String := "424305444005050505"
theorem cover_145666 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_145666 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_145666)
  decide +kernel
#print axioms cover_145666

def state_145675 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 29 else (if j.val < 4 then 14 else 20)))
def hex_145675 : String := "4305404142430744070A0705414243074407404142430707070541094243054407050543050742430544050505"
theorem cover_145675 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_145675 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 45) (hex := hex_145675)
  decide +kernel
#print axioms cover_145675
end Mub6.Numerical.CircleFullPrototype.Forest
