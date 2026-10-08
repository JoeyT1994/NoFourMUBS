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
def state_2254160 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 12) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 13)))
def hex_2254160 : String := "4107424344054041054243054044054305410542444043050705080544050705054407404341074240440743410742440707070707070707430507"
theorem cover_2254160 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2254160 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 17) (count := 59) (hex := hex_2254160)
  decide +kernel
#print axioms cover_2254160

def state_2254222 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 10 else 12)))
def hex_2254222 : String := "404441420A050A41420A060A4441050A41420A050A"
theorem cover_2254222 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2254222 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 21) (hex := hex_2254222)
  decide +kernel
#print axioms cover_2254222

def state_2254244 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 10 else 13)))
def hex_2254244 : String := "4142074307444007414243054405070507400741420743054407070707"
theorem cover_2254244 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2254244 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 29) (hex := hex_2254244)
  decide +kernel
#print axioms cover_2254244

def state_2254275 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 26) else (if j.val < 3 then 20 else (if j.val < 4 then 10 else 13)))
def hex_2254275 : String := "43440A0A444041430A0A070A4007410809"
theorem cover_2254275 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2254275 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 17) (hex := hex_2254275)
  decide +kernel
#print axioms cover_2254275

def state_2254293 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 26) else (if j.val < 3 then 21 else (if j.val < 4 then 20 else 13)))
def hex_2254293 : String := "4405400505"
theorem cover_2254293 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2254293 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_2254293)
  decide +kernel
#print axioms cover_2254293

def state_2254299 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 26) else (if j.val < 3 then 21 else (if j.val < 4 then 21 else 26)))
def hex_2254299 : String := "404142430544050505420A0505"
theorem cover_2254299 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2254299 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 13) (hex := hex_2254299)
  decide +kernel
#print axioms cover_2254299

def state_2254312 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 26) else (if j.val < 3 then 21 else (if j.val < 4 then 21 else 27)))
def hex_2254312 : String := "40414243400705404407074441050A08430540440541050505420743054007440507414243054008050542430A400A094305404405420A0505"
theorem cover_2254312 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2254312 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 57) (hex := hex_2254312)
  decide +kernel
#print axioms cover_2254312

def state_2254369 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 27) else (if j.val < 3 then 10 else (if j.val < 4 then 10 else 13)))
def hex_2254369 : String := "4243070A430A440A4007420A0A"
theorem cover_2254369 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2254369 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 13) (hex := hex_2254369)
  decide +kernel
#print axioms cover_2254369

def state_2254386 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 22 else 24)))
def hex_2254386 : String := "4142400744430808430A41420A06070608"
theorem cover_2254386 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2254386 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 17) (hex := hex_2254386)
  decide +kernel
#print axioms cover_2254386
end Mub6.Numerical.CircleFullD0.Forest
