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
def state_2265827 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 53) else (if j.val < 3 then 44 else (if j.val < 4 then 46 else 54)))
def hex_2265827 : String := "43424140440843424140440606060608420607074008080842414008070808"
theorem cover_2265827 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2265827 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 31) (hex := hex_2265827)
  decide +kernel
#print axioms cover_2265827

def state_2265858 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 53) else (if j.val < 3 then 44 else (if j.val < 4 then 46 else 55)))
def hex_2265858 : String := "4342414044434206410606060644060640060641404443424107080707434206410706064407074044080644080642410605414044070607400606"
theorem cover_2265858 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2265858 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 59) (hex := hex_2265858)
  decide +kernel
#print axioms cover_2265858

def state_2265917 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 26) else (if j.val < 3 then 45 else (if j.val < 4 then 46 else 27)))
def hex_2265917 : String := "414044074342410744070907070740440843080844084342410708084241070807"
theorem cover_2265917 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2265917 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 33) (hex := hex_2265917)
  decide +kernel
#print axioms cover_2265917

def state_2265950 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 26) else (if j.val < 3 then 22 else (if j.val < 4 then 47 else 27)))
def hex_2265950 : String := "4241404443424107400807070743424107050742050707404408054443424107050708434205410705054107400808"
theorem cover_2265950 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2265950 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 47) (hex := hex_2265950)
  decide +kernel
#print axioms cover_2265950

def state_2265997 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 26) else (if j.val < 3 then 22 else (if j.val < 4 then 23 else 27)))
def hex_2265997 : String := "434241074044434241074044070607070743424140060606410740440706074206070707424107404407070707"
theorem cover_2265997 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2265997 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 45) (hex := hex_2265997)
  decide +kernel
#print axioms cover_2265997

def state_2266043 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 27) else (if j.val < 3 then 22 else (if j.val < 4 then 23 else 26)))
def hex_2266043 : String := "400808"
theorem cover_2266043 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2266043 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_2266043)
  decide +kernel
#print axioms cover_2266043

def state_2266047 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 27) else (if j.val < 3 then 22 else (if j.val < 4 then 23 else 27)))
def hex_2266047 : String := "43424041440843420508050841440843420508050808420508"
theorem cover_2266047 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2266047 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 25) (hex := hex_2266047)
  decide +kernel
#print axioms cover_2266047
end Mub6.Numerical.CircleFullD0.Forest
