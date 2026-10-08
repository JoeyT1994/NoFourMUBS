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
def state_1040852 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 45) else (if j.val < 3 then 31 else (if j.val < 4 then 22 else 29)))
def hex_1040852 : String := "434442064041430806060608440605"
theorem cover_1040852 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1040852 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 15) (hex := hex_1040852)
  decide +kernel
#print axioms cover_1040852

def state_1040867 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 22) else (if j.val < 3 then 31 else (if j.val < 4 then 22 else 29)))
def hex_1040867 : String := "414344420540410A0606050506"
theorem cover_1040867 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1040867 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1040867)
  decide +kernel
#print axioms cover_1040867

def state_1040880 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 15 else (if j.val < 4 then 23 else 14)))
def hex_1040880 : String := "4406420540434105060606"
theorem cover_1040880 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1040880 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 11) (hex := hex_1040880)
  decide +kernel
#print axioms cover_1040880

def state_1040891 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 23) else (if j.val < 3 then 15 else (if j.val < 4 then 11 else 14)))
def hex_1040891 : String := "434406420640414344060606060606"
theorem cover_1040891 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1040891 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 15) (hex := hex_1040891)
  decide +kernel
#print axioms cover_1040891

def state_1040906 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 11) else (if j.val < 3 then 15 else (if j.val < 4 then 11 else 14)))
def hex_1040906 : String := "41434406060606"
theorem cover_1040906 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1040906 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1040906)
  decide +kernel
#print axioms cover_1040906

def state_1040913 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 15 else (if j.val < 4 then 11 else 15)))
def hex_1040913 : String := "40410508410508"
theorem cover_1040913 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1040913 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 7) (hex := hex_1040913)
  decide +kernel
#print axioms cover_1040913

def state_1040920 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 7)))
def hex_1040920 : String := "41430A0743424406084409084206440606"
theorem cover_1040920 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1040920 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 17) (hex := hex_1040920)
  decide +kernel
#print axioms cover_1040920

def state_1040937 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
def hex_1040937 : String := "414243444244060A0A0A440607430A440707424344060806430944064107430806"
theorem cover_1040937 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1040937 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 33) (hex := hex_1040937)
  decide +kernel
#print axioms cover_1040937

def state_1040982 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 8) else (if j.val < 3 then 12 else (if j.val < 4 then 12 else 8)))
def hex_1040982 : String := "4243414440070506060A430741444007420A070A07"
theorem cover_1040982 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1040982 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 21) (hex := hex_1040982)
  decide +kernel
#print axioms cover_1040982

def state_1041004 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 8) else (if j.val < 3 then 24 else (if j.val < 4 then 12 else 8)))
def hex_1041004 : String := "430541444205400A050606"
theorem cover_1041004 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1041004 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 11) (hex := hex_1041004)
  decide +kernel
#print axioms cover_1041004

def state_1041016 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 8) else (if j.val < 3 then 25 else (if j.val < 4 then 24 else 8)))
def hex_1041016 : String := "414443054007050606"
theorem cover_1041016 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1041016 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1041016)
  decide +kernel
#print axioms cover_1041016

def state_1041028 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 16) else (if j.val < 3 then 25 else (if j.val < 4 then 25 else 16)))
def hex_1041028 : String := "4243414440070506060A430741444007420A070A07"
theorem cover_1041028 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1041028 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 21) (hex := hex_1041028)
  decide +kernel
#print axioms cover_1041028

def state_1041050 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 16) else (if j.val < 3 then 50 else (if j.val < 4 then 25 else 16)))
def hex_1041050 : String := "430541444205400A050606"
theorem cover_1041050 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1041050 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 11) (hex := hex_1041050)
  decide +kernel
#print axioms cover_1041050

def state_1041062 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 16) else (if j.val < 3 then 51 else (if j.val < 4 then 50 else 16)))
def hex_1041062 : String := "414443054007050606"
theorem cover_1041062 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1041062 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1041062)
  decide +kernel
#print axioms cover_1041062

def state_1041074 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 102 else 32) else (if j.val < 3 then 51 else (if j.val < 4 then 51 else 32)))
def hex_1041074 : String := "4243414440070606060A430741444007DA0A07"
theorem cover_1041074 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1041074 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 19) (hex := hex_1041074)
  decide +kernel
#print axioms cover_1041074
end Mub6.Numerical.CircleFullD0.Forest
