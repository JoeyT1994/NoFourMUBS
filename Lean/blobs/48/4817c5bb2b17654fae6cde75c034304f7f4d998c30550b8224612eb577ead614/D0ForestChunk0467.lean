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
def state_1049730 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 7)))
def hex_1049730 : String := "4143424406060906430906"
theorem cover_1049730 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1049730 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_1049730)
  decide +kernel
#print axioms cover_1049730

def state_1049743 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 3)))
def hex_1049743 : String := "4409404241430944074042070907090909"
theorem cover_1049743 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1049743 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 17) (hex := hex_1049743)
  decide +kernel
#print axioms cover_1049743

def state_1049761 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 6)))
def hex_1049761 : String := "4042070909"
theorem cover_1049761 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1049761 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1049761)
  decide +kernel
#print axioms cover_1049761

def state_1049768 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 12 else (if j.val < 4 then 5 else 7)))
def hex_1049768 : String := "4341444042070807404243070743414408400842070608410608420743070644074042070807410A07"
theorem cover_1049768 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1049768 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 41) (hex := hex_1049768)
  decide +kernel
#print axioms cover_1049768

def state_1049809 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 13 else (if j.val < 4 then 5 else 7)))
def hex_1049809 : String := "43414409404243094106080909094144060644064043080506"
theorem cover_1049809 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1049809 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 25) (hex := hex_1049809)
  decide +kernel
#print axioms cover_1049809

def state_1049834 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 7)))
def hex_1049834 : String := "4207430906"
theorem cover_1049834 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1049834 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1049834)
  decide +kernel
#print axioms cover_1049834

def state_1049839 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 2 else 3)))
def hex_1049839 : String := "430944094043094142440606090909"
theorem cover_1049839 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1049839 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 15) (hex := hex_1049839)
  decide +kernel
#print axioms cover_1049839

def state_1049854 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
def hex_1049854 : String := "4142434406414206090706430944064106064243074406074344070909"
theorem cover_1049854 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1049854 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 29) (hex := hex_1049854)
  decide +kernel
#print axioms cover_1049854

def state_1049887 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 2)))
def hex_1049887 : String := "43444041420A4344400706060A0A4106420543050A400A060A"
theorem cover_1049887 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1049887 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 25) (hex := hex_1049887)
  decide +kernel
#print axioms cover_1049887

def state_1049918 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 14 else (if j.val < 4 then 12 else 4)))
def hex_1049918 : String := "4440074107430742060707"
theorem cover_1049918 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1049918 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 11) (hex := hex_1049918)
  decide +kernel
#print axioms cover_1049918

def state_1049931 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 12) else (if j.val < 3 then 15 else (if j.val < 4 then 12 else 8)))
def hex_1049931 : String := "410743084208444008414307050808"
theorem cover_1049931 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1049931 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 15) (hex := hex_1049931)
  decide +kernel
#print axioms cover_1049931

def state_1049947 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 24) else (if j.val < 3 then 15 else (if j.val < 4 then 12 else 8)))
def hex_1049947 : String := "07"
theorem cover_1049947 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1049947 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1049947)
  decide +kernel
#print axioms cover_1049947

def state_1049949 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 25) else (if j.val < 3 then 15 else (if j.val < 4 then 24 else 8)))
def hex_1049949 : String := "4208444308400841070808"
theorem cover_1049949 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1049949 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 11) (hex := hex_1049949)
  decide +kernel
#print axioms cover_1049949

def state_1049961 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 25) else (if j.val < 3 then 30 else (if j.val < 4 then 25 else 8)))
def hex_1049961 : String := "4440410708410743074206444007070707"
theorem cover_1049961 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1049961 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 17) (hex := hex_1049961)
  decide +kernel
#print axioms cover_1049961

def state_1049980 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 25) else (if j.val < 3 then 31 else (if j.val < 4 then 25 else 16)))
def hex_1049980 : String := "4143070743084208444008414308050808"
theorem cover_1049980 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1049980 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 17) (hex := hex_1049980)
  decide +kernel
#print axioms cover_1049980

def state_1049998 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 50) else (if j.val < 3 then 31 else (if j.val < 4 then 25 else 16)))
def hex_1049998 : String := "430707"
theorem cover_1049998 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1049998 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_1049998)
  decide +kernel
#print axioms cover_1049998
end Mub6.Numerical.CircleFullD0.Forest
