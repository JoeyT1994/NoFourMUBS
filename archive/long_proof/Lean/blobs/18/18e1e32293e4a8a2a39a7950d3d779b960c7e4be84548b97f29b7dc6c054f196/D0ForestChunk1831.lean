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
def state_2312562 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 26) else (if j.val < 3 then 19 else (if j.val < 4 then 28 else 23)))
def hex_2312562 : String := "44404142430706074243444008410808080843444008070708410742434440410742430707070707444008410742080708074041070841074243070707"
theorem cover_2312562 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2312562 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 61) (hex := hex_2312562)
  decide +kernel
#print axioms cover_2312562

def state_2312623 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 26) else (if j.val < 3 then 19 else (if j.val < 4 then 29 else 23)))
def hex_2312623 : String := "444008414209064208084008410708"
theorem cover_2312623 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2312623 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 15) (hex := hex_2312623)
  decide +kernel
#print axioms cover_2312623

def state_2312639 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 27) else (if j.val < 3 then 18 else (if j.val < 4 then 14 else 23)))
def hex_2312639 : String := "43444005434206414440430608064005060642410805414440050A05050505"
theorem cover_2312639 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2312639 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 31) (hex := hex_2312639)
  decide +kernel
#print axioms cover_2312639

def state_2312673 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 27) else (if j.val < 3 then 19 else (if j.val < 4 then 28 else 46)))
def hex_2312673 : String := "4243410805054341080508"
theorem cover_2312673 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2312673 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 11) (hex := hex_2312673)
  decide +kernel
#print axioms cover_2312673

def state_2312684 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 27) else (if j.val < 3 then 19 else (if j.val < 4 then 28 else 46)))
def hex_2312684 : String := "42434144404243060843080842064306410706400806064144400842080808054341444042080707074440080606414440084307080808"
theorem cover_2312684 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2312684 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 55) (hex := hex_2312684)
  decide +kernel
#print axioms cover_2312684

def state_2312739 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 27) else (if j.val < 3 then 19 else (if j.val < 4 then 28 else 47)))
def hex_2312739 : String := "40054243410805054341070508"
theorem cover_2312739 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2312739 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 13) (hex := hex_2312739)
  decide +kernel
#print axioms cover_2312739

def state_2312752 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 27) else (if j.val < 3 then 19 else (if j.val < 4 then 29 else 23)))
def hex_2312752 : String := "4440054243080543080805"
theorem cover_2312752 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2312752 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_2312752)
  decide +kernel
#print axioms cover_2312752

def state_2312766 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 26) else (if j.val < 3 then 18 else (if j.val < 4 then 14 else 22)))
def hex_2312766 : String := "434044054105430A0A05404441050A41420A090A44050A"
theorem cover_2312766 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2312766 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 23) (hex := hex_2312766)
  decide +kernel
#print axioms cover_2312766

def state_2312790 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 26) else (if j.val < 3 then 19 else (if j.val < 4 then 28 else 22)))
def hex_2312790 : String := "404405410542430540440541050A050705"
theorem cover_2312790 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2312790 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 17) (hex := hex_2312790)
  decide +kernel
#print axioms cover_2312790
end Mub6.Numerical.CircleFullD0.Forest
