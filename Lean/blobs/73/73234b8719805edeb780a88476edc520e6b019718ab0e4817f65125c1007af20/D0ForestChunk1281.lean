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
def state_1607957 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 22) else (if j.val < 3 then 27 else (if j.val < 4 then 28 else 48)))
def hex_1607957 : String := "41404309420909430642060A40434206094208094306420644410A40430642060906410A40430642060706"
theorem cover_1607957 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1607957 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 43) (hex := hex_1607957)
  decide +kernel
#print axioms cover_1607957

def state_1608000 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 22) else (if j.val < 3 then 27 else (if j.val < 4 then 28 else 49)))
def hex_1608000 : String := "41404309420907430A4244410A06410A4007060A404307424407070743064206444140070A40070607"
theorem cover_1608000 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1608000 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 41) (hex := hex_1608000)
  decide +kernel
#print axioms cover_1608000

def state_1608044 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 44) else (if j.val < 3 then 27 else (if j.val < 4 then 29 else 48)))
def hex_1608044 : String := "434244054105080505"
theorem cover_1608044 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1608044 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1608044)
  decide +kernel
#print axioms cover_1608044

def state_1608053 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 44) else (if j.val < 3 then 27 else (if j.val < 4 then 29 else 48)))
def hex_1608053 : String := "43424441400506400806414043420605050A40434206440541050608060A4244410508414005434244054105060505400843420644054105080805"
theorem cover_1608053 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1608053 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 59) (hex := hex_1608053)
  decide +kernel
#print axioms cover_1608053

def state_1608113 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 45) else (if j.val < 3 then 27 else (if j.val < 4 then 29 else 48)))
def hex_1608113 : String := "434208440541090708"
theorem cover_1608113 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1608113 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1608113)
  decide +kernel
#print axioms cover_1608113

def state_1608123 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 45) else (if j.val < 3 then 27 else (if j.val < 4 then 58 else 48)))
def hex_1608123 : String := "4244084140080608444140050A40084342060A42060541404342440807054208050A40434208440707084342060A420844410540050A410A40070A"
theorem cover_1608123 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1608123 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 59) (hex := hex_1608123)
  decide +kernel
#print axioms cover_1608123

def state_1608182 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 45) else (if j.val < 3 then 27 else (if j.val < 4 then 59 else 48)))
def hex_1608182 : String := "4208444105084140054243440541050805054008420843440541050805"
theorem cover_1608182 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1608182 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 29) (hex := hex_1608182)
  decide +kernel
#print axioms cover_1608182
end Mub6.Numerical.CircleFullD0.Forest
