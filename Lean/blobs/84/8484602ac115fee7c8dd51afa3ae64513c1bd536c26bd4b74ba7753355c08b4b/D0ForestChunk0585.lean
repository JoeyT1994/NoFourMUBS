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
def state_1329228 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 16) else (if j.val < 3 then 57 else (if j.val < 4 then 45 else 47)))
def hex_1329228 : String := "41440A434008070A44434042410A440A0A0A0A0A43404241084443400806080841084443060808420A0A0A"
theorem cover_1329228 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1329228 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 43) (hex := hex_1329228)
  decide +kernel
#print axioms cover_1329228

def state_1329272 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 17) else (if j.val < 3 then 28 else (if j.val < 4 then 22 else 46)))
def hex_1329272 : String := "40434205094205074306420541440643060A05"
theorem cover_1329272 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1329272 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 19) (hex := hex_1329272)
  decide +kernel
#print axioms cover_1329272

def state_1329292 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 17) else (if j.val < 3 then 28 else (if j.val < 4 then 22 else 47)))
def hex_1329292 : String := "4342054144090905420541444005434205090540054342054108050505"
theorem cover_1329292 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1329292 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 29) (hex := hex_1329292)
  decide +kernel
#print axioms cover_1329292

def state_1329321 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 17) else (if j.val < 3 then 28 else (if j.val < 4 then 22 else 47)))
def hex_1329321 : String := "434241440640430605060506420541444340420506064042050A064340420541440643064008060606404205410A050A05"
theorem cover_1329321 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1329321 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 49) (hex := hex_1329321)
  decide +kernel
#print axioms cover_1329321

def state_1329372 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 16) else (if j.val < 3 then 29 else (if j.val < 4 then 22 else 46)))
def hex_1329372 : String := "4043094241440A0844090909430642410A44060A0A"
theorem cover_1329372 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1329372 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 21) (hex := hex_1329372)
  decide +kernel
#print axioms cover_1329372

def state_1329393 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 16) else (if j.val < 3 then 29 else (if j.val < 4 then 22 else 47)))
def hex_1329393 : String := "4043424105090542410844400843080808054342410544050505424105444340420A05060A434042410544060805050A05"
theorem cover_1329393 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1329393 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 49) (hex := hex_1329393)
  decide +kernel
#print axioms cover_1329393
end Mub6.Numerical.CircleFullD0.Forest
