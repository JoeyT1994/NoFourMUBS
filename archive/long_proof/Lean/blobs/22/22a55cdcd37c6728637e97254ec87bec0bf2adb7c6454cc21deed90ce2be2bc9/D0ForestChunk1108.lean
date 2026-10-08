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
def state_1566276 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 62) else (if j.val < 3 then 108 else (if j.val < 4 then 86 else 90)))
def hex_1566276 : String := "41404443420A4108060A4342080808440A43420A0A0A40444342050605434205414008060505440643060A"
theorem cover_1566276 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1566276 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 43) (hex := hex_1566276)
  decide +kernel
#print axioms cover_1566276

def state_1566319 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 62) else (if j.val < 3 then 109 else (if j.val < 4 then 86 else 90)))
def hex_1566319 : String := "4140444342410806060A43420808084443060A43060A404443064206064306424108060806"
theorem cover_1566319 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1566319 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 37) (hex := hex_1566319)
  decide +kernel
#print axioms cover_1566319

def state_1566356 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 62) else (if j.val < 3 then 54 else (if j.val < 4 then 87 else 90)))
def hex_1566356 : String := "420A410A400A0A"
theorem cover_1566356 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1566356 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1566356)
  decide +kernel
#print axioms cover_1566356

def state_1566364 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 62) else (if j.val < 3 then 54 else (if j.val < 4 then 86 else 91)))
def hex_1566364 : String := "424144400843070A400807444043420508420508434241440607050642050A404308084307420908414440080707444043420806084306420A06400807"
theorem cover_1566364 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1566364 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 61) (hex := hex_1566364)
  decide +kernel
#print axioms cover_1566364

def state_1566425 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 62) else (if j.val < 3 then 54 else (if j.val < 4 then 87 else 91)))
def hex_1566425 : String := "42410A440A40050941440A084440080A40080A"
theorem cover_1566425 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1566425 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 19) (hex := hex_1566425)
  decide +kernel
#print axioms cover_1566425

def state_1566445 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 63) else (if j.val < 3 then 54 else (if j.val < 4 then 43 else 45)))
def hex_1566445 : String := "44434205090543420541400844430805080505"
theorem cover_1566445 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1566445 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 19) (hex := hex_1566445)
  decide +kernel
#print axioms cover_1566445

def state_1566464 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 63) else (if j.val < 3 then 54 else (if j.val < 4 then 43 else 45)))
def hex_1566464 : String := "444342050642054140050A054342414405400543060505414440430642050606404342060642050806064205414440050A404308054342050A0A05"
theorem cover_1566464 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1566464 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 59) (hex := hex_1566464)
  decide +kernel
#print axioms cover_1566464
end Mub6.Numerical.CircleFullD0.Forest
