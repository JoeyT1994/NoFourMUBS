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
def state_1558428 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 30) else (if j.val < 3 then 26 else (if j.val < 4 then 21 else 21)))
def hex_1558428 : String := "4243444140420A06060641404209440A090940424405090606440A094344064140444243060A0642434106060943060A060644410A06410A400A0A"
theorem cover_1558428 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1558428 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 59) (hex := hex_1558428)
  decide +kernel
#print axioms cover_1558428

def state_1558487 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 31) else (if j.val < 3 then 26 else (if j.val < 4 then 21 else 21)))
def hex_1558487 : String := "4042054344054140440542054306050605054243060506"
theorem cover_1558487 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1558487 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 23) (hex := hex_1558487)
  decide +kernel
#print axioms cover_1558487

def state_1558511 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 15) else (if j.val < 3 then 27 else (if j.val < 4 then 20 else 10)))
def hex_1558511 : String := "4406414044064243064140090506060606"
theorem cover_1558511 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1558511 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 17) (hex := hex_1558511)
  decide +kernel
#print axioms cover_1558511

def state_1558529 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 15) else (if j.val < 3 then 27 else (if j.val < 4 then 21 else 20)))
def hex_1558529 : String := "414043064207060606"
theorem cover_1558529 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1558529 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1558529)
  decide +kernel
#print axioms cover_1558529

def state_1558542 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 30) else (if j.val < 3 then 27 else (if j.val < 4 then 42 else 42)))
def hex_1558542 : String := "4241404306440642410A0609060606"
theorem cover_1558542 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1558542 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 15) (hex := hex_1558542)
  decide +kernel
#print axioms cover_1558542

def state_1558559 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 60) else (if j.val < 3 then 54 else (if j.val < 4 then 42 else 43)))
def hex_1558559 : String := "4044430942410A40070A094342410509054241400805404409430808440A0A410509444306420A064305424105400A0605"
theorem cover_1558559 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1558559 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 49) (hex := hex_1558559)
  decide +kernel
#print axioms cover_1558559

def state_1558608 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 61) else (if j.val < 3 then 54 else (if j.val < 4 then 42 else 43)))
def hex_1558608 : String := "404409430942414009440643060A090906"
theorem cover_1558608 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1558608 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 17) (hex := hex_1558608)
  decide +kernel
#print axioms cover_1558608

def state_1558625 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 30) else (if j.val < 3 then 55 else (if j.val < 4 then 42 else 43)))
def hex_1558625 : String := "4140090509"
theorem cover_1558625 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1558625 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1558625)
  decide +kernel
#print axioms cover_1558625
end Mub6.Numerical.CircleFullD0.Forest
