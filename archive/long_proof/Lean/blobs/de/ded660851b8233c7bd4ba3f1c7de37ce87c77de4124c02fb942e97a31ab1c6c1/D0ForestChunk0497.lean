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
def state_1308039 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 22) else (if j.val < 3 then 49 else (if j.val < 4 then 29 else 47)))
def hex_1308039 : String := "414043054442414007050541074007054209070505"
theorem cover_1308039 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1308039 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 21) (hex := hex_1308039)
  decide +kernel
#print axioms cover_1308039

def state_1308060 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 22) else (if j.val < 3 then 24 else (if j.val < 4 then 14 else 23)))
def hex_1308060 : String := "05"
theorem cover_1308060 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1308060 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1308060)
  decide +kernel
#print axioms cover_1308060

def state_1308062 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 22) else (if j.val < 3 then 25 else (if j.val < 4 then 14 else 22)))
def hex_1308062 : String := "4043054142440A40430542440941090509050A0A05"
theorem cover_1308062 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1308062 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 21) (hex := hex_1308062)
  decide +kernel
#print axioms cover_1308062

def state_1308083 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 22) else (if j.val < 3 then 25 else (if j.val < 4 then 14 else 23)))
def hex_1308083 : String := "40430544414240430544424107404305440607050742410740070507050742404305440A080508414240070507424008050805"
theorem cover_1308083 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1308083 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 14) (count := 51) (hex := hex_1308083)
  decide +kernel
#print axioms cover_1308083

def state_1308134 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 23) else (if j.val < 3 then 12 else (if j.val < 4 then 14 else 11)))
def hex_1308134 : String := "4205440A40430541440A080805"
theorem cover_1308134 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1308134 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1308134)
  decide +kernel
#print axioms cover_1308134

def state_1308150 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 22) else (if j.val < 3 then 24 else (if j.val < 4 then 15 else 22)))
def hex_1308150 : String := "4043424108064144064043420606064342054405410805060606430506"
theorem cover_1308150 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1308150 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 29) (hex := hex_1308150)
  decide +kernel
#print axioms cover_1308150

def state_1308182 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 22) else (if j.val < 3 then 48 else (if j.val < 4 then 30 else 23)))
def hex_1308182 : String := "44414043420A444108060A060806410A40430906430506"
theorem cover_1308182 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1308182 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 23) (hex := hex_1308182)
  decide +kernel
#print axioms cover_1308182

def state_1308210 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 44) else (if j.val < 3 then 98 else (if j.val < 4 then 60 else 46)))
def hex_1308210 : String := "4441404342060606080641400A0A400606"
theorem cover_1308210 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1308210 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 17) (hex := hex_1308210)
  decide +kernel
#print axioms cover_1308210

def state_1308227 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 44) else (if j.val < 3 then 99 else (if j.val < 4 then 60 else 46)))
def hex_1308227 : String := "444140090906414043444241070607074406420A07434442410706074241070A074406420A09404344064206060643440542050606"
theorem cover_1308227 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1308227 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 53) (hex := hex_1308227)
  decide +kernel
#print axioms cover_1308227

def state_1308280 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 44) else (if j.val < 3 then 49 else (if j.val < 4 then 61 else 46)))
def hex_1308280 : String := "420606"
theorem cover_1308280 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1308280 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_1308280)
  decide +kernel
#print axioms cover_1308280
end Mub6.Numerical.CircleFullD0.Forest
