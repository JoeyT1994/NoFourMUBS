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
def state_1658026 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 49) else (if j.val < 3 then 29 else (if j.val < 4 then 27 else 23)))
def hex_1658026 : String := "44404243054144404206430641064407050606444005050543084144404308424108080808084440430842410805080808064042050805"
theorem cover_1658026 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1658026 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 55) (hex := hex_1658026)
  decide +kernel
#print axioms cover_1658026

def state_1658083 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 14 else (if j.val < 4 then 26 else 22)))
def hex_1658083 : String := "420540414405050505"
theorem cover_1658083 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1658083 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1658083)
  decide +kernel
#print axioms cover_1658083

def state_1658093 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 28 else (if j.val < 4 then 27 else 22)))
def hex_1658093 : String := "40414407050505"
theorem cover_1658093 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1658093 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1658093)
  decide +kernel
#print axioms cover_1658093

def state_1658103 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 50) else (if j.val < 3 then 29 else (if j.val < 4 then 27 else 44)))
def hex_1658103 : String := "42434140440705050507434140444207430807424305070844070540444205430507050507"
theorem cover_1658103 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1658103 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 37) (hex := hex_1658103)
  decide +kernel
#print axioms cover_1658103

def state_1658140 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 50) else (if j.val < 3 then 29 else (if j.val < 4 then 27 else 45)))
def hex_1658140 : String := "42430541440705054308414440430A07074043050A0544400A0505"
theorem cover_1658140 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1658140 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 27) (hex := hex_1658140)
  decide +kernel
#print axioms cover_1658140

def state_1658167 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 51) else (if j.val < 3 then 29 else (if j.val < 4 then 27 else 22)))
def hex_1658167 : String := "444243050743050705"
theorem cover_1658167 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1658167 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 9) (hex := hex_1658167)
  decide +kernel
#print axioms cover_1658167

def state_1658176 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 25) else (if j.val < 3 then 29 else (if j.val < 4 then 27 else 22)))
def hex_1658176 : String := "41444207430807420543050705"
theorem cover_1658176 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1658176 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 13) (hex := hex_1658176)
  decide +kernel
#print axioms cover_1658176

def state_1658189 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 14 else (if j.val < 4 then 13 else 23)))
def hex_1658189 : String := "4305420544404142054305440505050505"
theorem cover_1658189 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1658189 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 17) (hex := hex_1658189)
  decide +kernel
#print axioms cover_1658189

def state_1658206 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 12) else (if j.val < 3 then 14 else (if j.val < 4 then 13 else 11)))
def hex_1658206 : String := "41064443054205404106050505"
theorem cover_1658206 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1658206 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1658206)
  decide +kernel
#print axioms cover_1658206

def state_1658223 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 24) else (if j.val < 3 then 15 else (if j.val < 4 then 26 else 22)))
def hex_1658223 : String := "08"
theorem cover_1658223 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1658223 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1658223)
  decide +kernel
#print axioms cover_1658223

def state_1658226 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 48) else (if j.val < 3 then 30 else (if j.val < 4 then 27 else 22)))
def hex_1658226 : String := "4044434241404405050840444308050808084207054308424144050844404308050708084443080708"
theorem cover_1658226 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1658226 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 41) (hex := hex_1658226)
  decide +kernel
#print axioms cover_1658226
end Mub6.Numerical.CircleFullD0.Forest
