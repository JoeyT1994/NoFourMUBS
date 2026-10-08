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
def state_2326879 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 42 else (if j.val < 4 then 31 else 45)))
def hex_2326879 : String := "414340444208080844420A410743070808400844090843400844420A414340080A084308080840084442080808"
theorem cover_2326879 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2326879 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 45) (hex := hex_2326879)
  decide +kernel
#print axioms cover_2326879

def state_2326924 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 43 else (if j.val < 4 then 31 else 45)))
def hex_2326924 : String := "414340444208070707400844420807074340084442414307084340084406060841074307070840084442080808"
theorem cover_2326924 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2326924 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 45) (hex := hex_2326924)
  decide +kernel
#print axioms cover_2326924

def state_2326971 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 29) else (if j.val < 3 then 21 else (if j.val < 4 then 30 else 22)))
def hex_2326971 : String := "444241430940074407090909424143080505410808"
theorem cover_2326971 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2326971 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 21) (hex := hex_2326971)
  decide +kernel
#print axioms cover_2326971

def state_2326992 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 29) else (if j.val < 3 then 21 else (if j.val < 4 then 30 else 22)))
def hex_2326992 : String := "44424143064044420709424143060505090606414306404409420909440606064241430640444205050506064143064044420808080606"
theorem cover_2326992 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2326992 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 55) (hex := hex_2326992)
  decide +kernel
#print axioms cover_2326992

def state_2327048 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 29) else (if j.val < 3 then 21 else (if j.val < 4 then 31 else 22)))
def hex_2327048 : String := "4442074143400844090840054405050508"
theorem cover_2327048 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2327048 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 17) (hex := hex_2327048)
  decide +kernel
#print axioms cover_2327048

def state_2327067 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 29) else (if j.val < 3 then 42 else (if j.val < 4 then 31 else 44)))
def hex_2327067 : String := "414340440742050544074207410A060707"
theorem cover_2327067 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2327067 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 17) (hex := hex_2327067)
  decide +kernel
#print axioms cover_2327067

def state_2327087 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 58) else (if j.val < 3 then 43 else (if j.val < 4 then 62 else 44)))
def hex_2327087 : String := "444241430907070942414340050905054143090805"
theorem cover_2327087 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2327087 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 21) (hex := hex_2327087)
  decide +kernel
#print axioms cover_2327087
end Mub6.Numerical.CircleFullD0.Forest
