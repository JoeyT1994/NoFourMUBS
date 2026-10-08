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
def state_2295782 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 26) else (if j.val < 3 then 9 else (if j.val < 4 then 27 else 10)))
def hex_2295782 : String := "44420505424041444207054243070643410509060741440542430540060505440542074305074041440542060544094209094105440542430540090505"
theorem cover_2295782 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2295782 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 61) (hex := hex_2295782)
  decide +kernel
#print axioms cover_2295782

def state_2295843 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 27) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 10)))
def hex_2295843 : String := "4344090944074207400909"
theorem cover_2295843 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2295843 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_2295843)
  decide +kernel
#print axioms cover_2295843

def state_2295857 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 13) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 22)))
def hex_2295857 : String := "4143420744074143400742074409414340070940074207090707070707"
theorem cover_2295857 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2295857 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 14) (count := 29) (hex := hex_2295857)
  decide +kernel
#print axioms cover_2295857

def state_2295889 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 26) else (if j.val < 3 then 16 else (if j.val < 4 then 26 else 22)))
def hex_2295889 : String := "44400741080640074143064206440740070606"
theorem cover_2295889 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2295889 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 19) (hex := hex_2295889)
  decide +kernel
#print axioms cover_2295889

def state_2295909 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 26) else (if j.val < 3 then 17 else (if j.val < 4 then 26 else 44)))
def hex_2295909 : String := "4041434207440941080942074407414007430807070741430842440740070844054041050905430607"
theorem cover_2295909 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2295909 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 41) (hex := hex_2295909)
  decide +kernel
#print axioms cover_2295909

def state_2295953 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 52) else (if j.val < 3 then 17 else (if j.val < 4 then 52 else 45)))
def hex_2295953 : String := "424441080741430840070607444143084009080941430840424407414308070744094143080A09084306400706"
theorem cover_2295953 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2295953 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 45) (hex := hex_2295953)
  decide +kernel
#print axioms cover_2295953

def state_2295999 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 52) else (if j.val < 3 then 34 else (if j.val < 4 then 53 else 45)))
def hex_2295999 : String := "440741400743420744074108070707"
theorem cover_2295999 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2295999 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 15) (hex := hex_2295999)
  decide +kernel
#print axioms cover_2295999

def state_2296015 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 52) else (if j.val < 3 then 35 else (if j.val < 4 then 53 else 90)))
def hex_2296015 : String := "414043090743420944094108094207440941400943080907400709"
theorem cover_2296015 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2296015 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 27) (hex := hex_2296015)
  decide +kernel
#print axioms cover_2296015
end Mub6.Numerical.CircleFullD0.Forest
