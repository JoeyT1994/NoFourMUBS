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
def state_1598523 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 85 else 40) else (if j.val < 3 then 103 else (if j.val < 4 then 117 else 100)))
def hex_1598523 : String := "414409424009090944424043090943064109440642060909424043410944080741090743414409050541440942050944420540070505400943410909410909"
theorem cover_1598523 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1598523 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 63) (hex := hex_1598523)
  decide +kernel
#print axioms cover_1598523

def state_1598587 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 40) else (if j.val < 3 then 102 else (if j.val < 4 then 58 else 101)))
def hex_1598587 : String := "4043414442400A054007434109054107074205400705444205400705054144420A4007434107070742050744080543054144420540434109050A050505"
theorem cover_1598587 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1598587 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 61) (hex := hex_1598587)
  decide +kernel
#print axioms cover_1598587

def state_1598649 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 84 else 40) else (if j.val < 3 then 103 else (if j.val < 4 then 58 else 101)))
def hex_1598649 : String := "43414442400709070744070741444207070707"
theorem cover_1598649 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1598649 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 19) (hex := hex_1598649)
  decide +kernel
#print axioms cover_1598649

def state_1598669 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 85 else 40) else (if j.val < 3 then 103 else (if j.val < 4 then 116 else 101)))
def hex_1598669 : String := "41444240430909430541080509420540070844420540430707430541050505"
theorem cover_1598669 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1598669 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 31) (hex := hex_1598669)
  decide +kernel
#print axioms cover_1598669

def state_1598700 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 85 else 40) else (if j.val < 3 then 103 else (if j.val < 4 then 117 else 101)))
def hex_1598700 : String := "4144424043094109074341090541094409054009094240430707054007430841060744424043410705070540074341090541440707074205400705"
theorem cover_1598700 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1598700 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 59) (hex := hex_1598700)
  decide +kernel
#print axioms cover_1598700

def state_1598761 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 41) else (if j.val < 3 then 102 else (if j.val < 4 then 58 else 100)))
def hex_1598761 : String := "4008430608"
theorem cover_1598761 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1598761 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1598761)
  decide +kernel
#print axioms cover_1598761

def state_1598767 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 84 else 41) else (if j.val < 3 then 103 else (if j.val < 4 then 58 else 100)))
def hex_1598767 : String := "434144084207070808"
theorem cover_1598767 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1598767 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1598767)
  decide +kernel
#print axioms cover_1598767
end Mub6.Numerical.CircleFullD0.Forest
