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
def state_2266803 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 51) else (if j.val < 3 then 44 else (if j.val < 4 then 46 else 28)))
def hex_2266803 : String := "4440434142080A424440434108060643410806060644404309090A400A0A410A42060A43410A4244400A08060A0A4006430806"
theorem cover_2266803 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2266803 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 51) (hex := hex_2266803)
  decide +kernel
#print axioms cover_2266803

def state_2266854 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 51) else (if j.val < 3 then 45 else (if j.val < 4 then 46 else 28)))
def hex_2266854 : String := "44404342410A09090A0A40430A0A0A"
theorem cover_2266854 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2266854 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 15) (hex := hex_2266854)
  decide +kernel
#print axioms cover_2266854

def state_2266869 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 25) else (if j.val < 3 then 22 else (if j.val < 4 then 47 else 28)))
def hex_2266869 : String := "410A4244400A0A060A"
theorem cover_2266869 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2266869 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_2266869)
  decide +kernel
#print axioms cover_2266869

def state_2266878 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 25) else (if j.val < 3 then 22 else (if j.val < 4 then 23 else 29)))
def hex_2266878 : String := "40434142060A06064341084206440A0606"
theorem cover_2266878 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2266878 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 17) (hex := hex_2266878)
  decide +kernel
#print axioms cover_2266878

def state_2266895 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 25) else (if j.val < 3 then 23 else (if j.val < 4 then 11 else 14)))
def hex_2266895 : String := "4344054042410509050544404243410A09410709094243410544090A0A0A4042434109090A090A"
theorem cover_2266895 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2266895 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 39) (hex := hex_2266895)
  decide +kernel
#print axioms cover_2266895

def state_2266934 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 12) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 15)))
def hex_2266934 : String := "4142080A4243400808064340094442410509050840060A"
theorem cover_2266934 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2266934 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 23) (hex := hex_2266934)
  decide +kernel
#print axioms cover_2266934

def state_2266959 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 24) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 14)))
def hex_2266959 : String := "4243050A430505"
theorem cover_2266959 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2266959 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 7) (hex := hex_2266959)
  decide +kernel
#print axioms cover_2266959

def state_2266968 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 22 else (if j.val < 4 then 22 else 14)))
def hex_2266968 : String := "4044414208054243084440430808080843054405400A0508444105424305080508"
theorem cover_2266968 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2266968 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 33) (hex := hex_2266968)
  decide +kernel
#print axioms cover_2266968

def state_2267001 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 22 else (if j.val < 4 then 23 else 14)))
def hex_2267001 : String := "404443410A42444043410742080A0A070844070A4107420A0743410842060A0A44070A"
theorem cover_2267001 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2267001 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 35) (hex := hex_2267001)
  decide +kernel
#print axioms cover_2267001

def state_2267036 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 23 else (if j.val < 4 then 11 else 14)))
def hex_2267036 : String := "434005054044070A07"
theorem cover_2267036 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2267036 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 9) (hex := hex_2267036)
  decide +kernel
#print axioms cover_2267036

def state_2267045 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 12) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 15)))
def hex_2267045 : String := "410A4243080843400A080A"
theorem cover_2267045 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2267045 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_2267045)
  decide +kernel
#print axioms cover_2267045
end Mub6.Numerical.CircleFullD0.Forest
