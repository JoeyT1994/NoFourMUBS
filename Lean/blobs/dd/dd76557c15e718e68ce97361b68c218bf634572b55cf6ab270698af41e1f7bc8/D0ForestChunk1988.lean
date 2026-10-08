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
def state_2557741 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 46) else (if j.val < 3 then 57 else (if j.val < 4 then 29 else 48)))
def hex_2557741 : String := "43444105404243050543440507050541074042430744410507070707444105400605414006054042434441054006050A0606420707"
theorem cover_2557741 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2557741 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 53) (hex := hex_2557741)
  decide +kernel
#print axioms cover_2557741

def state_2557794 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 46) else (if j.val < 3 then 28 else (if j.val < 4 then 29 else 48)))
def hex_2557794 : String := "420505"
theorem cover_2557794 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2557794 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_2557794)
  decide +kernel
#print axioms cover_2557794

def state_2557799 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 46) else (if j.val < 3 then 56 else (if j.val < 4 then 29 else 49)))
def hex_2557799 : String := "4341074440420A0707074144404243070707070744404243410744400907074144400905074409400A074307410744400A070707400A07"
theorem cover_2557799 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2557799 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 55) (hex := hex_2557799)
  decide +kernel
#print axioms cover_2557799

def state_2557854 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 46) else (if j.val < 3 then 57 else (if j.val < 4 then 29 else 49)))
def hex_2557854 : String := "4341074407074144070744404243070A070707"
theorem cover_2557854 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2557854 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 19) (hex := hex_2557854)
  decide +kernel
#print axioms cover_2557854

def state_2557873 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 46) else (if j.val < 3 then 28 else (if j.val < 4 then 29 else 49)))
def hex_2557873 : String := "420707"
theorem cover_2557873 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2557873 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_2557873)
  decide +kernel
#print axioms cover_2557873

def state_2557882 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 94) else (if j.val < 3 then 56 else (if j.val < 4 then 58 else 96)))
def hex_2557882 : String := "4042094344410540090541404209430A0A054042094309090944410509414042094344050A09054009094209430505"
theorem cover_2557882 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2557882 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 47) (hex := hex_2557882)
  decide +kernel
#print axioms cover_2557882

def state_2557930 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 94) else (if j.val < 3 then 56 else (if j.val < 4 then 58 else 97)))
def hex_2557930 : String := "42430609434144400A0707444042060A060641444042090A420707400A074440420943410A094144090A09420943070940424306090A420607"
theorem cover_2557930 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2557930 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 57) (hex := hex_2557930)
  decide +kernel
#print axioms cover_2557930

def state_2557987 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 89 else 94) else (if j.val < 3 then 56 else (if j.val < 4 then 58 else 97)))
def hex_2557987 : String := "42064306410707"
theorem cover_2557987 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2557987 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_2557987)
  decide +kernel
#print axioms cover_2557987
end Mub6.Numerical.CircleFullD0.Forest
