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
def state_2593776 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 19) else (if j.val < 3 then 49 else (if j.val < 4 then 24 else 18)))
def hex_2593776 : String := "434005414405050505"
theorem cover_2593776 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2593776 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_2593776)
  decide +kernel
#print axioms cover_2593776

def state_2593788 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 19) else (if j.val < 3 then 48 else (if j.val < 4 then 48 else 19)))
def hex_2593788 : String := "41440505440505"
theorem cover_2593788 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2593788 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 7) (hex := hex_2593788)
  decide +kernel
#print axioms cover_2593788

def state_2593798 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 38) else (if j.val < 3 then 96 else (if j.val < 4 then 48 else 38)))
def hex_2593798 : String := "4340414442434005DC05054243060505444243060505420605DC4005414442434005410505050542430705054442434005410505050542434005070505"
theorem cover_2593798 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2593798 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 61) (hex := hex_2593798)
  decide +kernel
#print axioms cover_2593798

def state_2593859 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 38) else (if j.val < 3 then 97 else (if j.val < 4 then 48 else 38)))
def hex_2593859 : String := "43400541444342400541050505054342400544050505054443420A0505434240050A050505"
theorem cover_2593859 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2593859 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 37) (hex := hex_2593859)
  decide +kernel
#print axioms cover_2593859

def state_2593896 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 38) else (if j.val < 3 then 48 else (if j.val < 4 then 48 else 39)))
def hex_2593896 : String := "424340410706410707400507434005414443420705050544434240050705050505"
theorem cover_2593896 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2593896 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 33) (hex := hex_2593896)
  decide +kernel
#print axioms cover_2593896

def state_2593929 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 39) else (if j.val < 3 then 48 else (if j.val < 4 then 48 else 19)))
def hex_2593929 : String := "44424340440A06440A0A4005444142430A0505054142434005070505054340050A05424306400541070643400541440A060605"
theorem cover_2593929 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2593929 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 51) (hex := hex_2593929)
  decide +kernel
#print axioms cover_2593929

def state_2593980 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 19) else (if j.val < 3 then 48 else (if j.val < 4 then 49 else 19)))
def hex_2593980 : String := "400541440505440505"
theorem cover_2593980 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2593980 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 9) (hex := hex_2593980)
  decide +kernel
#print axioms cover_2593980

def state_2593989 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 19) else (if j.val < 3 then 49 else (if j.val < 4 then 24 else 19)))
def hex_2593989 : String := "4340054144050544050505"
theorem cover_2593989 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2593989 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_2593989)
  decide +kernel
#print axioms cover_2593989

def state_2594000 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 9) else (if j.val < 3 then 24 else (if j.val < 4 then 25 else 9)))
def hex_2594000 : String := "410505"
theorem cover_2594000 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2594000 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_2594000)
  decide +kernel
#print axioms cover_2594000

def state_2594003 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 9) else (if j.val < 3 then 25 else (if j.val < 4 then 12 else 9)))
def hex_2594003 : String := "4341050505"
theorem cover_2594003 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2594003 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_2594003)
  decide +kernel
#print axioms cover_2594003

def state_2594008 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 13 else 4)))
def hex_2594008 : String := "05"
theorem cover_2594008 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2594008 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_2594008)
  decide +kernel
#print axioms cover_2594008

def state_2594009 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 13 else (if j.val < 4 then 6 else 4)))
def hex_2594009 : String := "05"
theorem cover_2594009 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2594009 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_2594009)
  decide +kernel
#print axioms cover_2594009

def state_2594013 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 8) else (if j.val < 3 then 12 else (if j.val < 4 then 12 else 4)))
def hex_2594013 : String := "4406424340440641064243060606060606"
theorem cover_2594013 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2594013 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 17) (hex := hex_2594013)
  decide +kernel
#print axioms cover_2594013
end Mub6.Numerical.CircleFullD0.Forest
