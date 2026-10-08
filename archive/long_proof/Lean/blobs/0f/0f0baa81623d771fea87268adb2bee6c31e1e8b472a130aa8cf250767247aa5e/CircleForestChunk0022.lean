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
def state_942780 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 20) else (if j.val < 3 then 48 else (if j.val < 4 then 16 else 26)))
def hex_942780 : String := "40444109090944414342074009070743420740440709070709"
theorem cover_942780 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_942780 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 25) (hex := hex_942780)
  decide +kernel
#print axioms cover_942780

def state_942808 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 40) else (if j.val < 3 then 49 else (if j.val < 4 then 16 else 52)))
def hex_942808 : String := "434209400644414306094306420940064408060609"
theorem cover_942808 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_942808 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 21) (hex := hex_942808)
  decide +kernel
#print axioms cover_942808

def state_942829 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 41) else (if j.val < 3 then 49 else (if j.val < 4 then 16 else 52)))
def hex_942829 : String := "4342400944414342094009440509090A0940440A0644414342400644050606420A4006080A41430609430642094006440A0642094009440A09"
theorem cover_942829 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_942829 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 57) (hex := hex_942829)
  decide +kernel
#print axioms cover_942829

def state_942886 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 20) else (if j.val < 3 then 49 else (if j.val < 4 then 16 else 53)))
def hex_942886 : String := "41094342090609"
theorem cover_942886 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_942886 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_942886)
  decide +kernel
#print axioms cover_942886

def state_942897 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 40) else (if j.val < 3 then 98 else (if j.val < 4 then 32 else 52)))
def hex_942897 : String := "40444107070907"
theorem cover_942897 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_942897 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_942897)
  decide +kernel
#print axioms cover_942897

def state_942905 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 40) else (if j.val < 3 then 99 else (if j.val < 4 then 32 else 52)))
def hex_942905 : String := "4441434240440706074006074207404407060743424044074106060740444106050644070742074044070707414306094342400607064209400607"
theorem cover_942905 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_942905 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 59) (hex := hex_942905)
  decide +kernel
#print axioms cover_942905

def state_942964 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 40) else (if j.val < 3 then 99 else (if j.val < 4 then 32 else 52)))
def hex_942964 : String := "4407410707"
theorem cover_942964 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_942964 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_942964)
  decide +kernel
#print axioms cover_942964

def state_942969 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 40) else (if j.val < 3 then 49 else (if j.val < 4 then 33 else 52)))
def hex_942969 : String := "4240090740444107070907"
theorem cover_942969 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_942969 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_942969)
  decide +kernel
#print axioms cover_942969

def state_942982 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 41) else (if j.val < 3 then 98 else (if j.val < 4 then 32 else 52)))
def hex_942982 : String := "4044414342050507054109430507440707"
theorem cover_942982 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_942982 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 17) (hex := hex_942982)
  decide +kernel
#print axioms cover_942982
end Mub6.Numerical.CircleFullD0.Forest
