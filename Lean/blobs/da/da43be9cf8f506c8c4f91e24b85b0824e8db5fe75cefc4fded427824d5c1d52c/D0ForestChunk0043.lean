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
def state_947773 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 21) else (if j.val < 3 then 25 else (if j.val < 4 then 16 else 27)))
def hex_947773 : String := "424106444306060606"
theorem cover_947773 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_947773 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_947773)
  decide +kernel
#print axioms cover_947773

def state_947784 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 42) else (if j.val < 3 then 50 else (if j.val < 4 then 16 else 27)))
def hex_947784 : String := "44434006420806404209064241084443080908410A4443400608404209064208080606"
theorem cover_947784 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_947784 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 35) (hex := hex_947784)
  decide +kernel
#print axioms cover_947784

def state_947821 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 43) else (if j.val < 3 then 50 else (if j.val < 4 then 32 else 54)))
def hex_947821 : String := "400605"
theorem cover_947821 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_947821 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_947821)
  decide +kernel
#print axioms cover_947821

def state_947825 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 43) else (if j.val < 3 then 50 else (if j.val < 4 then 33 else 54)))
def hex_947825 : String := "4241444306090644430542050509414443064006424106050606440506"
theorem cover_947825 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_947825 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 29) (hex := hex_947825)
  decide +kernel
#print axioms cover_947825

def state_947854 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 43) else (if j.val < 3 then 50 else (if j.val < 4 then 33 else 54)))
def hex_947854 : String := "4241444305400942050508440543054009054144430540424144050505050508440505"
theorem cover_947854 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_947854 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 35) (hex := hex_947854)
  decide +kernel
#print axioms cover_947854

def state_947889 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 43) else (if j.val < 3 then 50 else (if j.val < 4 then 16 else 55)))
def hex_947889 : String := "43064006420808"
theorem cover_947889 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_947889 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_947889)
  decide +kernel
#print axioms cover_947889

def state_947896 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 21) else (if j.val < 3 then 51 else (if j.val < 4 then 16 else 27)))
def hex_947896 : String := "41444306400642410644430640060A060606444306400642414405060541060506"
theorem cover_947896 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_947896 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 33) (hex := hex_947896)
  decide +kernel
#print axioms cover_947896

def state_947930 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 21) else (if j.val < 3 then 25 else (if j.val < 4 then 17 else 27)))
def hex_947930 : String := "4241094443420940064109090909414443060906444340064241060606404209064209414443060506440A0606"
theorem cover_947930 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_947930 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 45) (hex := hex_947930)
  decide +kernel
#print axioms cover_947930

def state_947977 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 42) else (if j.val < 3 then 50 else (if j.val < 4 then 17 else 27)))
def hex_947977 : String := "4443400942094109444340094209410844070809090909"
theorem cover_947977 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_947977 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 23) (hex := hex_947977)
  decide +kernel
#print axioms cover_947977

def state_948003 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 43) else (if j.val < 3 then 50 else (if j.val < 4 then 34 else 54)))
def hex_948003 : String := "42094144434009420941090909094443400A420A41440509050A09"
theorem cover_948003 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_948003 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 27) (hex := hex_948003)
  decide +kernel
#print axioms cover_948003
end Mub6.Numerical.CircleFullD0.Forest
