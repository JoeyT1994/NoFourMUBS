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
def state_1654221 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 50) else (if j.val < 3 then 29 else (if j.val < 4 then 53 else 21)))
def hex_1654221 : String := "4442410707414043440742074107400705070740434407050707424106054140444308070844430507054044050505"
theorem cover_1654221 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1654221 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 47) (hex := hex_1654221)
  decide +kernel
#print axioms cover_1654221

def state_1654268 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 51) else (if j.val < 3 then 29 else (if j.val < 4 then 26 else 21)))
def hex_1654268 : String := "43054442054041430507050505"
theorem cover_1654268 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1654268 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1654268)
  decide +kernel
#print axioms cover_1654268

def state_1654281 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 25) else (if j.val < 3 then 29 else (if j.val < 4 then 26 else 21)))
def hex_1654281 : String := "41430544070505"
theorem cover_1654281 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1654281 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1654281)
  decide +kernel
#print axioms cover_1654281

def state_1654288 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 14 else (if j.val < 4 then 27 else 10)))
def hex_1654288 : String := "44420709420740414407420743410707074407420743404107050507410707"
theorem cover_1654288 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1654288 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 31) (hex := hex_1654288)
  decide +kernel
#print axioms cover_1654288

def state_1654319 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 12) else (if j.val < 3 then 14 else (if j.val < 4 then 13 else 10)))
def hex_1654319 : String := "41434406060743444205090507"
theorem cover_1654319 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1654319 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 13) (hex := hex_1654319)
  decide +kernel
#print axioms cover_1654319

def state_1654338 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 48) else (if j.val < 3 then 30 else (if j.val < 4 then 26 else 20)))
def hex_1654338 : String := "40434442410540050A0542410A40430A050A4105404344050505430A050543440A0A07"
theorem cover_1654338 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1654338 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 35) (hex := hex_1654338)
  decide +kernel
#print axioms cover_1654338

def state_1654377 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 49) else (if j.val < 3 then 60 else (if j.val < 4 then 52 else 40)))
def hex_1654377 : String := "4140434405420A0A05430A0740434442090942410A40A0094140430A050A40A0090909"
theorem cover_1654377 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1654377 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 35) (hex := hex_1654377)
  decide +kernel
#print axioms cover_1654377

def state_1654413 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 98) else (if j.val < 3 then 61 else (if j.val < 4 then 52 else 40)))
def hex_1654413 : String := "404344050505430A05"
theorem cover_1654413 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1654413 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 9) (hex := hex_1654413)
  decide +kernel
#print axioms cover_1654413

def state_1654425 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 99) else (if j.val < 3 then 61 else (if j.val < 4 then 104 else 80)))
def hex_1654425 : String := "4241400505094105400509"
theorem cover_1654425 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1654425 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 11) (hex := hex_1654425)
  decide +kernel
#print axioms cover_1654425
end Mub6.Numerical.CircleFullD0.Forest
