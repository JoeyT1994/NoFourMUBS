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
def state_2563628 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 24) else (if j.val < 3 then 30 else (if j.val < 4 then 27 else 22)))
def hex_2563628 : String := "414440060540430806430842410544054006050644400743080740434207410807074308424144074007080741440640060844074007430807"
theorem cover_2563628 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2563628 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 57) (hex := hex_2563628)
  decide +kernel
#print axioms cover_2563628

def state_2563685 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 24) else (if j.val < 3 then 31 else (if j.val < 4 then 27 else 22)))
def hex_2563685 : String := "4144064006430505444006084043424106440640060806064308424106440640060806"
theorem cover_2563685 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2563685 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 35) (hex := hex_2563685)
  decide +kernel
#print axioms cover_2563685

def state_2563721 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 24) else (if j.val < 3 then 15 else (if j.val < 4 then 13 else 23)))
def hex_2563721 : String := "4342414443080A0844430840070843080A410A4443080A43080A4241444006430A060A44400743070705410644060A"
theorem cover_2563721 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2563721 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 47) (hex := hex_2563721)
  decide +kernel
#print axioms cover_2563721

def state_2563769 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 24) else (if j.val < 3 then 15 else (if j.val < 4 then 26 else 23)))
def hex_2563769 : String := "08"
theorem cover_2563769 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2563769 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_2563769)
  decide +kernel
#print axioms cover_2563769

def state_2563772 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 48) else (if j.val < 3 then 30 else (if j.val < 4 then 27 else 23)))
def hex_2563772 : String := "4440430842410644060606430842410844400808400808410844400608084043080A4308420808"
theorem cover_2563772 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2563772 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 39) (hex := hex_2563772)
  decide +kernel
#print axioms cover_2563772

def state_2563813 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 49) else (if j.val < 3 then 30 else (if j.val < 4 then 27 else 46)))
def hex_2563813 : String := "4342410807410844074005084207410607"
theorem cover_2563813 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2563813 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 17) (hex := hex_2563813)
  decide +kernel
#print axioms cover_2563813

def state_2563831 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 49) else (if j.val < 3 then 30 else (if j.val < 4 then 54 else 46)))
def hex_2563831 : String := "08"
theorem cover_2563831 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2563831 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_2563831)
  decide +kernel
#print axioms cover_2563831

def state_2563833 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 49) else (if j.val < 3 then 60 else (if j.val < 4 then 55 else 46)))
def hex_2563833 : String := "41444043070708404308420741060708440740074308420707"
theorem cover_2563833 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2563833 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 25) (hex := hex_2563833)
  decide +kernel
#print axioms cover_2563833
end Mub6.Numerical.CircleFullD0.Forest
