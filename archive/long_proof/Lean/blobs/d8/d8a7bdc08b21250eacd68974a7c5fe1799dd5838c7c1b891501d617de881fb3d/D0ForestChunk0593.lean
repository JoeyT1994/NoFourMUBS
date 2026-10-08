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
def state_1331126 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 17) else (if j.val < 3 then 58 else (if j.val < 4 then 46 else 48)))
def hex_1331126 : String := "414443400A0A0A4340080A0A4443404205410A054205060A43404205414443080508054205410A0540050A"
theorem cover_1331126 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1331126 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 43) (hex := hex_1331126)
  decide +kernel
#print axioms cover_1331126

def state_1331169 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 17) else (if j.val < 3 then 59 else (if j.val < 4 then 46 else 48)))
def hex_1331169 : String := "41440A4340080A0A44434042410A0609060A4340424108444306400506434005060541084409430640080642410A06410A0640420A0A0A"
theorem cover_1331169 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1331169 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 55) (hex := hex_1331169)
  decide +kernel
#print axioms cover_1331169

def state_1331225 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 17) else (if j.val < 3 then 29 else (if j.val < 4 then 46 else 49)))
def hex_1331225 : String := "420808"
theorem cover_1331225 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1331225 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_1331225)
  decide +kernel
#print axioms cover_1331225

def state_1331229 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 17) else (if j.val < 3 then 58 else (if j.val < 4 then 46 else 49)))
def hex_1331229 : String := "414344400809080843444042054108054205414443400707090905400542054107054440050909"
theorem cover_1331229 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1331229 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 39) (hex := hex_1331229)
  decide +kernel
#print axioms cover_1331229

def state_1331269 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 34) else (if j.val < 3 then 59 else (if j.val < 4 then 46 else 49)))
def hex_1331269 : String := "430808"
theorem cover_1331269 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1331269 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_1331269)
  decide +kernel
#print axioms cover_1331269

def state_1331273 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 35) else (if j.val < 3 then 59 else (if j.val < 4 then 92 else 49)))
def hex_1331273 : String := "444042410844430805054108444308080842414443070A07444306400A064306400806414443060A07440643064008064008420707"
theorem cover_1331273 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1331273 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 53) (hex := hex_1331273)
  decide +kernel
#print axioms cover_1331273

def state_1331326 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 35) else (if j.val < 3 then 59 else (if j.val < 4 then 93 else 49)))
def hex_1331326 : String := "4440420808420A0A400842094108430808"
theorem cover_1331326 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1331326 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 17) (hex := hex_1331326)
  decide +kernel
#print axioms cover_1331326

def state_1331343 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 17) else (if j.val < 3 then 29 else (if j.val < 4 then 47 else 24)))
def hex_1331343 : String := "4440424108054108070A40084209410843440A4008090A"
theorem cover_1331343 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1331343 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 23) (hex := hex_1331343)
  decide +kernel
#print axioms cover_1331343
end Mub6.Numerical.CircleFullD0.Forest
