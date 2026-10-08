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
def state_2328013 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 57) else (if j.val < 3 then 44 else (if j.val < 4 then 62 else 44)))
def hex_2328013 : String := "424441430740424441050A070707434009424405060740424409410A090942444143054042050505094107430640090644410509070707"
theorem cover_2328013 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2328013 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 55) (hex := hex_2328013)
  decide +kernel
#print axioms cover_2328013

def state_2328069 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 57) else (if j.val < 3 then 44 else (if j.val < 4 then 63 else 44)))
def hex_2328069 : String := "424441430A06430A400642440A080A080A"
theorem cover_2328069 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2328069 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 17) (hex := hex_2328069)
  decide +kernel
#print axioms cover_2328069

def state_2328089 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 114) else (if j.val < 3 then 88 else (if j.val < 4 then 63 else 88)))
def hex_2328089 : String := "434042444106430A8341064307830A42444105430583070783"
theorem cover_2328089 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2328089 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 25) (hex := hex_2328089)
  decide +kernel
#print axioms cover_2328089

def state_2328114 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 115) else (if j.val < 3 then 88 else (if j.val < 4 then 63 else 88)))
def hex_2328114 : String := "4340424441430A830941430A834309830A42444143404244054105090A05834340094206068341430783434044094209074406068344414305834309830783"
theorem cover_2328114 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2328114 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 63) (hex := hex_2328114)
  decide +kernel
#print axioms cover_2328114

def state_2328177 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 57) else (if j.val < 3 then 88 else (if j.val < 4 then 63 else 89)))
def hex_2328177 : String := "41430740080743404442080707074008448307"
theorem cover_2328177 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2328177 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 19) (hex := hex_2328177)
  decide +kernel
#print axioms cover_2328177

def state_2328196 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 57) else (if j.val < 3 then 89 else (if j.val < 4 then 63 else 44)))
def hex_2328196 : String := "44414307400A07430A400A42830707"
theorem cover_2328196 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2328196 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 15) (hex := hex_2328196)
  decide +kernel
#print axioms cover_2328196

def state_2328211 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 44 else (if j.val < 4 then 31 else 45)))
def hex_2328211 : String := "41074307400807"
theorem cover_2328211 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2328211 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_2328211)
  decide +kernel
#print axioms cover_2328211

def state_2328218 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 45 else (if j.val < 4 then 31 else 22)))
def hex_2328218 : String := "4441070A07"
theorem cover_2328218 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2328218 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_2328218)
  decide +kernel
#print axioms cover_2328218

def state_2328224 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 29) else (if j.val < 3 then 22 else (if j.val < 4 then 30 else 22)))
def hex_2328224 : String := "404244090A094244414306400942060606414306404409070706440907"
theorem cover_2328224 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2328224 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 29) (hex := hex_2328224)
  decide +kernel
#print axioms cover_2328224

def state_2328254 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 29) else (if j.val < 3 then 22 else (if j.val < 4 then 31 else 22)))
def hex_2328254 : String := "4244410A09080A"
theorem cover_2328254 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2328254 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_2328254)
  decide +kernel
#print axioms cover_2328254
end Mub6.Numerical.CircleFullD0.Forest
