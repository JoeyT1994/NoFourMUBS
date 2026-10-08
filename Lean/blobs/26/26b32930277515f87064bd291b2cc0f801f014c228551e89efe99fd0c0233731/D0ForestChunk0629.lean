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
def state_1339917 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 59 else 49) else (if j.val < 3 then 44 else (if j.val < 4 then 35 else 45)))
def hex_1339917 : String := "4144420609424043414442060942084005094406080543410906410906404341050905094406420640434109070509"
theorem cover_1339917 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1339917 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 47) (hex := hex_1339917)
  decide +kernel
#print axioms cover_1339917

def state_1339964 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 49) else (if j.val < 3 then 45 else (if j.val < 4 then 17 else 22)))
def hex_1339964 : String := "4440050940434142440507050705430909"
theorem cover_1339964 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1339964 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 17) (hex := hex_1339964)
  decide +kernel
#print axioms cover_1339964

def state_1339982 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 24) else (if j.val < 3 then 22 else (if j.val < 4 then 8 else 23)))
def hex_1339982 : String := "4341060741064442080506"
theorem cover_1339982 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1339982 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_1339982)
  decide +kernel
#print axioms cover_1339982

def state_1339994 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 24) else (if j.val < 3 then 22 else (if j.val < 4 then 16 else 23)))
def hex_1339994 : String := "4144424043410607410644420806064305410A4442054007050A4006430541060706444240074305414442050705050707"
theorem cover_1339994 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1339994 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 49) (hex := hex_1339994)
  decide +kernel
#print axioms cover_1339994

def state_1340047 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 58 else 48) else (if j.val < 3 then 44 else (if j.val < 4 then 17 else 46)))
def hex_1340047 : String := "43410644424006430841060806064105440506"
theorem cover_1340047 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1340047 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 19) (hex := hex_1340047)
  decide +kernel
#print axioms cover_1340047

def state_1340066 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 59 else 48) else (if j.val < 3 then 44 else (if j.val < 4 then 17 else 46)))
def hex_1340066 : String := "43410A444240430A0A0A404341060741064442400609060609420A064144420A060644424043410A44420A0A0A050A40434106444240050905060509420A06"
theorem cover_1340066 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1340066 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 63) (hex := hex_1340066)
  decide +kernel
#print axioms cover_1340066

def state_1340129 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 48) else (if j.val < 3 then 45 else (if j.val < 4 then 17 else 46)))
def hex_1340129 : String := "40064341064409064106440906"
theorem cover_1340129 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1340129 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 13) (hex := hex_1340129)
  decide +kernel
#print axioms cover_1340129

def state_1340142 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 48) else (if j.val < 3 then 22 else (if j.val < 4 then 17 else 47)))
def hex_1340142 : String := "4240060606"
theorem cover_1340142 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1340142 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1340142)
  decide +kernel
#print axioms cover_1340142

def state_1340150 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 58 else 49) else (if j.val < 3 then 44 else (if j.val < 4 then 17 else 46)))
def hex_1340150 : String := "4341444208070707414442080542080508"
theorem cover_1340150 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1340150 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 17) (hex := hex_1340150)
  decide +kernel
#print axioms cover_1340150
end Mub6.Numerical.CircleFullD0.Forest
