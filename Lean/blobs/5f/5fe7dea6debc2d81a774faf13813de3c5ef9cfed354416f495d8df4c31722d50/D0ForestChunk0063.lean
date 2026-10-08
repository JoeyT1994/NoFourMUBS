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
def state_952515 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 86) else (if j.val < 3 then 104 else (if j.val < 4 then 71 else 107)))
def hex_952515 : String := "40424108084108084241440643400807074406C7414408434008090808"
theorem cover_952515 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_952515 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 29) (hex := hex_952515)
  decide +kernel
#print axioms cover_952515

def state_952544 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 86) else (if j.val < 3 then 105 else (if j.val < 4 then 35 else 53)))
def hex_952544 : String := "4408430940410808414244084308080809"
theorem cover_952544 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_952544 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 17) (hex := hex_952544)
  decide +kernel
#print axioms cover_952544

def state_952561 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 87) else (if j.val < 3 then 52 else (if j.val < 4 then 35 else 53)))
def hex_952561 : String := "42440843404142080505054008414206080644054305400809"
theorem cover_952561 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_952561 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 25) (hex := hex_952561)
  decide +kernel
#print axioms cover_952561

def state_952586 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 43) else (if j.val < 3 then 53 else (if j.val < 4 then 17 else 26)))
def hex_952586 : String := "440543054041424408430608090909"
theorem cover_952586 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_952586 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 15) (hex := hex_952586)
  decide +kernel
#print axioms cover_952586

def state_952602 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 21) else (if j.val < 3 then 26 else (if j.val < 4 then 16 else 27)))
def hex_952602 : String := "4006410606"
theorem cover_952602 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_952602 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_952602)
  decide +kernel
#print axioms cover_952602

def state_952608 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 21) else (if j.val < 3 then 26 else (if j.val < 4 then 17 else 27)))
def hex_952608 : String := "4106424443064006410642440A06060606"
theorem cover_952608 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_952608 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 17) (hex := hex_952608)
  decide +kernel
#print axioms cover_952608

def state_952629 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 42) else (if j.val < 3 then 52 else (if j.val < 4 then 34 else 54)))
def hex_952629 : String := "400642410644430640060A0606"
theorem cover_952629 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_952629 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_952629)
  decide +kernel
#print axioms cover_952629

def state_952643 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 42) else (if j.val < 3 then 52 else (if j.val < 4 then 35 else 54)))
def hex_952643 : String := "42410644430640054205060606"
theorem cover_952643 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_952643 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_952643)
  decide +kernel
#print axioms cover_952643

def state_952658 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 84) else (if j.val < 3 then 104 else (if j.val < 4 then 35 else 54)))
def hex_952658 : String := "44430A0505"
theorem cover_952658 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_952658 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_952658)
  decide +kernel
#print axioms cover_952658

def state_952665 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 85) else (if j.val < 3 then 104 else (if j.val < 4 then 70 else 108)))
def hex_952665 : String := "404241064443064006424106444306080606060642410A44430A4042410A44430A070A0A0A0A0A"
theorem cover_952665 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_952665 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 39) (hex := hex_952665)
  decide +kernel
#print axioms cover_952665

def state_952705 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 85) else (if j.val < 3 then 104 else (if j.val < 4 then 71 else 108)))
def hex_952705 : String := "424105440505410544434006424105440805060505"
theorem cover_952705 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_952705 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 21) (hex := hex_952705)
  decide +kernel
#print axioms cover_952705

def state_952726 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 85) else (if j.val < 3 then 104 else (if j.val < 4 then 71 else 108)))
def hex_952726 : String := "424105444340420541054407054207070505410A44434042410A44080A410A44080A0A40054205410507430A05"
theorem cover_952726 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_952726 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 45) (hex := hex_952726)
  decide +kernel
#print axioms cover_952726

def state_952771 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 85) else (if j.val < 3 then 104 else (if j.val < 4 then 35 else 109)))
def hex_952771 : String := "430605"
theorem cover_952771 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_952771 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_952771)
  decide +kernel
#print axioms cover_952771
end Mub6.Numerical.CircleFullD0.Forest
