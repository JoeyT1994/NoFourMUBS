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
def state_1570743 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 16) else (if j.val < 3 then 47 else (if j.val < 4 then 50 else 25)))
def hex_1570743 : String := "4440080640084142064306440640080606"
theorem cover_1570743 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1570743 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 17) (hex := hex_1570743)
  decide +kernel
#print axioms cover_1570743

def state_1570761 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 16) else (if j.val < 3 then 47 else (if j.val < 4 then 51 else 50)))
def hex_1570761 : String := "40084142064406430640080606"
theorem cover_1570761 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1570761 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1570761)
  decide +kernel
#print axioms cover_1570761

def state_1570775 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 16) else (if j.val < 3 then 47 else (if j.val < 4 then 51 else 51)))
def hex_1570775 : String := "08"
theorem cover_1570775 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1570775 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1570775)
  decide +kernel
#print axioms cover_1570775

def state_1570777 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 32) else (if j.val < 3 then 47 else (if j.val < 4 then 51 else 51)))
def hex_1570777 : String := "42434406084408084344400806400841424306084344060AD042084306084440084142440608444306400806D04208440608400841D04208430808"
theorem cover_1570777 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1570777 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 59) (hex := hex_1570777)
  decide +kernel
#print axioms cover_1570777

def state_1570836 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 33) else (if j.val < 3 then 47 else (if j.val < 4 then 51 else 51)))
def hex_1570836 : String := "4208430808"
theorem cover_1570836 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1570836 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1570836)
  decide +kernel
#print axioms cover_1570836

def state_1570841 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 17) else (if j.val < 3 then 23 else (if j.val < 4 then 25 else 25)))
def hex_1570841 : String := "4208430808"
theorem cover_1570841 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1570841 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1570841)
  decide +kernel
#print axioms cover_1570841

def state_1570848 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 16) else (if j.val < 3 then 46 else (if j.val < 4 then 25 else 25)))
def hex_1570848 : String := "4306440640414205060505"
theorem cover_1570848 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1570848 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 11) (hex := hex_1570848)
  decide +kernel
#print axioms cover_1570848

def state_1570860 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 16) else (if j.val < 3 then 47 else (if j.val < 4 then 50 else 25)))
def hex_1570860 : String := "06"
theorem cover_1570860 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1570860 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1570860)
  decide +kernel
#print axioms cover_1570860

def state_1570862 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 16) else (if j.val < 3 then 47 else (if j.val < 4 then 51 else 50)))
def hex_1570862 : String := "06"
theorem cover_1570862 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1570862 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1570862)
  decide +kernel
#print axioms cover_1570862

def state_1570866 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 32) else (if j.val < 3 then 94 else (if j.val < 4 then 51 else 51)))
def hex_1570866 : String := "430644064041420543054406050505"
theorem cover_1570866 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1570866 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 15) (hex := hex_1570866)
  decide +kernel
#print axioms cover_1570866

def state_1570881 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 32) else (if j.val < 3 then 95 else (if j.val < 4 then 51 else 51)))
def hex_1570881 : String := "434406404142064306D0060544404142064406D006064041D04243064406054344064041D00505444041D006064041D0080541D006"
theorem cover_1570881 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1570881 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 53) (hex := hex_1570881)
  decide +kernel
#print axioms cover_1570881

def state_1570934 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 33) else (if j.val < 3 then 47 else (if j.val < 4 then 51 else 51)))
def hex_1570934 : String := "4206430644064041420643064406050605"
theorem cover_1570934 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1570934 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 17) (hex := hex_1570934)
  decide +kernel
#print axioms cover_1570934

def state_1570951 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 16) else (if j.val < 3 then 47 else (if j.val < 4 then 51 else 51)))
def hex_1570951 : String := "06"
theorem cover_1570951 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1570951 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1570951)
  decide +kernel
#print axioms cover_1570951

def state_1570952 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 17) else (if j.val < 3 then 23 else (if j.val < 4 then 25 else 25)))
def hex_1570952 : String := "420606"
theorem cover_1570952 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1570952 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_1570952)
  decide +kernel
#print axioms cover_1570952

def state_1570955 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 11 else (if j.val < 4 then 12 else 12)))
def hex_1570955 : String := "420843064406400806"
theorem cover_1570955 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1570955 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1570955)
  decide +kernel
#print axioms cover_1570955

def state_1570965 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 4) else (if j.val < 3 then 11 else (if j.val < 4 then 12 else 13)))
def hex_1570965 : String := "414208430844080808"
theorem cover_1570965 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1570965 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1570965)
  decide +kernel
#print axioms cover_1570965

def state_1570976 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 8) else (if j.val < 3 then 22 else (if j.val < 4 then 12 else 13)))
def hex_1570976 : String := "43094440080509"
theorem cover_1570976 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1570976 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1570976)
  decide +kernel
#print axioms cover_1570976

def state_1570984 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 8) else (if j.val < 3 then 23 else (if j.val < 4 then 24 else 13)))
def hex_1570984 : String := "444041420843074440070A0708414205430544050505400909"
theorem cover_1570984 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1570984 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 25) (hex := hex_1570984)
  decide +kernel
#print axioms cover_1570984
end Mub6.Numerical.CircleFullD0.Forest
