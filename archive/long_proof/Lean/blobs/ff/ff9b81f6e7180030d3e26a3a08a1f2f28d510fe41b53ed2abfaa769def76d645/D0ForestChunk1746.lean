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
def state_2292159 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 16 else (if j.val < 4 then 26 else 46)))
def hex_2292159 : String := "4140430842084408410840080808404308424441400708074140050805444140430842050A08400743084207440705414005080508"
theorem cover_2292159 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2292159 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 53) (hex := hex_2292159)
  decide +kernel
#print axioms cover_2292159

def state_2292212 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 16 else (if j.val < 4 then 26 else 47)))
def hex_2292212 : String := "414043084208440808084043080508"
theorem cover_2292212 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2292212 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 15) (hex := hex_2292212)
  decide +kernel
#print axioms cover_2292212

def state_2292229 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 50) else (if j.val < 3 then 17 else (if j.val < 4 then 26 else 46)))
def hex_2292229 : String := "40430842444108400A084108400A080A08"
theorem cover_2292229 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2292229 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 17) (hex := hex_2292229)
  decide +kernel
#print axioms cover_2292229

def state_2292248 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 51) else (if j.val < 3 then 17 else (if j.val < 4 then 52 else 46)))
def hex_2292248 : String := "42440841084306400806444108430840424408410843080A440A0A0841084308404244410805050A08"
theorem cover_2292248 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2292248 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 41) (hex := hex_2292248)
  decide +kernel
#print axioms cover_2292248

def state_2292291 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 51) else (if j.val < 3 then 34 else (if j.val < 4 then 53 else 92)))
def hex_2292291 : String := "414043080A4308420844080A40434244070544410A4305050505430842444140050807054441400A0840054308054140050805"
theorem cover_2292291 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2292291 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 51) (hex := hex_2292291)
  decide +kernel
#print axioms cover_2292291

def state_2292342 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 51) else (if j.val < 3 then 34 else (if j.val < 4 then 53 else 93)))
def hex_2292342 : String := "41400A4308424408050A400543420844080505"
theorem cover_2292342 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2292342 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 19) (hex := hex_2292342)
  decide +kernel
#print axioms cover_2292342

def state_2292362 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 51) else (if j.val < 3 then 35 else (if j.val < 4 then 53 else 92)))
def hex_2292362 : String := "41400A43080A40430A0A4342440841084043080508444108400A084108400A084244410A400A43080A410A4005430A050A"
theorem cover_2292362 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2292362 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 49) (hex := hex_2292362)
  decide +kernel
#print axioms cover_2292362
end Mub6.Numerical.CircleFullD0.Forest
