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
def state_1302968 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 22) else (if j.val < 3 then 47 else (if j.val < 4 then 28 else 22)))
def hex_1302968 : String := "414443054042094144430540B8424144050905414405430540B80505430640420944B80942094441430540B805090944430540420941B80505094209050909"
theorem cover_1302968 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1302968 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 15) (count := 63) (hex := hex_1302968)
  decide +kernel
#print axioms cover_1302968

def state_1303031 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 22) else (if j.val < 3 then 23 else (if j.val < 4 then 28 else 22)))
def hex_1303031 : String := "05"
theorem cover_1303031 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1303031 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1303031)
  decide +kernel
#print axioms cover_1303031

def state_1303034 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 22) else (if j.val < 3 then 46 else (if j.val < 4 then 29 else 22)))
def hex_1303034 : String := "414443400707060909"
theorem cover_1303034 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1303034 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1303034)
  decide +kernel
#print axioms cover_1303034

def state_1303047 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 32 else 44) else (if j.val < 3 then 47 else (if j.val < 4 then 58 else 44)))
def hex_1303047 : String := "424144070A0741444340B8420841440843080644064340B80506064340420A44B80A420A444143400A0A0A430906410A090A4443404207070706430906"
theorem cover_1303047 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1303047 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 61) (hex := hex_1303047)
  decide +kernel
#print axioms cover_1303047

def state_1303108 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 33 else 44) else (if j.val < 3 then 47 else (if j.val < 4 then 58 else 44)))
def hex_1303108 : String := "424108074144430806434042440809444108430506410A094208440541080540420644060A064406430906"
theorem cover_1303108 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1303108 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 43) (hex := hex_1303108)
  decide +kernel
#print axioms cover_1303108

def state_1303151 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 44) else (if j.val < 3 then 47 else (if j.val < 4 then 59 else 44)))
def hex_1303151 : String := "06"
theorem cover_1303151 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1303151 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1303151)
  decide +kernel
#print axioms cover_1303151

def state_1303152 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 44) else (if j.val < 3 then 47 else (if j.val < 4 then 29 else 45)))
def hex_1303152 : String := "4340420944410A09094209444143090A09090A"
theorem cover_1303152 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1303152 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 19) (hex := hex_1303152)
  decide +kernel
#print axioms cover_1303152

def state_1303171 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 45) else (if j.val < 3 then 47 else (if j.val < 4 then 29 else 22)))
def hex_1303171 : String := "444340420741440607060706430906"
theorem cover_1303171 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1303171 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 15) (hex := hex_1303171)
  decide +kernel
#print axioms cover_1303171
end Mub6.Numerical.CircleFullD0.Forest
