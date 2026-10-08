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
def state_1615687 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 47) else (if j.val < 3 then 28 else (if j.val < 4 then 28 else 48)))
def hex_1615687 : String := "404206430641444042430644410A4042060A06410A4042060A060A0640424306410A4440070607070A4440EA0640424305414440070505050742050A06"
theorem cover_1615687 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1615687 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 13) (count := 61) (hex := hex_1615687)
  decide +kernel
#print axioms cover_1615687

def state_1615748 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 47) else (if j.val < 3 then 28 else (if j.val < 4 then 28 else 49)))
def hex_1615748 : String := "4042054305414440070A050505"
theorem cover_1615748 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1615748 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1615748)
  decide +kernel
#print axioms cover_1615748

def state_1615767 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 46) else (if j.val < 3 then 56 else (if j.val < 4 then 58 else 96)))
def hex_1615767 : String := "410A404243064441400806084140080608430A444105400507410A404208050A0A"
theorem cover_1615767 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1615767 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 33) (hex := hex_1615767)
  decide +kernel
#print axioms cover_1615767

def state_1615800 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 46) else (if j.val < 3 then 56 else (if j.val < 4 then 58 else 97)))
def hex_1615800 : String := "410A4042430644414042060A06400806414042080A0640420643060806430A44410A4042430A080A0A410A4042430707070A0A"
theorem cover_1615800 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1615800 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 51) (hex := hex_1615800)
  decide +kernel
#print axioms cover_1615800

def state_1615852 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 46) else (if j.val < 3 then 56 else (if j.val < 4 then 59 else 96)))
def hex_1615852 : String := "414042430A05050A4042084344054105090509"
theorem cover_1615852 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1615852 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 19) (hex := hex_1615852)
  decide +kernel
#print axioms cover_1615852

def state_1615871 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 46) else (if j.val < 3 then 56 else (if j.val < 4 then 59 else 97)))
def hex_1615871 : String := "4140424344410A400809410A4042080A094409410A090A0A4042094344410A4042080509410A40420806094409414005090909"
theorem cover_1615871 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1615871 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 51) (hex := hex_1615871)
  decide +kernel
#print axioms cover_1615871

def state_1615922 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 46) else (if j.val < 3 then 57 else (if j.val < 4 then 29 else 48)))
def hex_1615922 : String := "430A44410540050A410A404243440A0A06050A"
theorem cover_1615922 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1615922 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 19) (hex := hex_1615922)
  decide +kernel
#print axioms cover_1615922

def state_1615941 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 46) else (if j.val < 3 then 28 else (if j.val < 4 then 29 else 48)))
def hex_1615941 : String := "0A"
theorem cover_1615941 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1615941 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1615941)
  decide +kernel
#print axioms cover_1615941
end Mub6.Numerical.CircleFullD0.Forest
