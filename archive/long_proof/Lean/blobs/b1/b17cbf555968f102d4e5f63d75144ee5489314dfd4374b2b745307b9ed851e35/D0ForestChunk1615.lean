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
def state_2260760 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 52) else (if j.val < 3 then 42 else (if j.val < 4 then 46 else 53)))
def hex_2260760 : String := "4341094206444043410942060A41074206440606070941094206444043410706050606"
theorem cover_2260760 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2260760 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 35) (hex := hex_2260760)
  decide +kernel
#print axioms cover_2260760

def state_2260796 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 52) else (if j.val < 3 then 43 else (if j.val < 4 then 46 else 52)))
def hex_2260796 : String := "40434142440640060706080807"
theorem cover_2260796 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2260796 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_2260796)
  decide +kernel
#print axioms cover_2260796

def state_2260814 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 104) else (if j.val < 3 then 86 else (if j.val < 4 then 92 else 106)))
def hex_2260814 : String := "404341064244064008070641070807"
theorem cover_2260814 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2260814 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 15) (hex := hex_2260814)
  decide +kernel
#print axioms cover_2260814

def state_2260830 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 72 else 104) else (if j.val < 3 then 86 else (if j.val < 4 then 92 else 107)))
def hex_2260830 : String := "4341424407090742444043414209440607420908414209070843410709074043410909090944400807BE41424407070742444043410705050709440707"
theorem cover_2260830 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2260830 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 61) (hex := hex_2260830)
  decide +kernel
#print axioms cover_2260830

def state_2260891 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 73 else 104) else (if j.val < 3 then 86 else (if j.val < 4 then 92 else 107)))
def hex_2260891 : String := "43410742090707"
theorem cover_2260891 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2260891 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_2260891)
  decide +kernel
#print axioms cover_2260891

def state_2260898 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 104) else (if j.val < 3 then 87 else (if j.val < 4 then 92 else 53)))
def hex_2260898 : String := "440707"
theorem cover_2260898 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2260898 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_2260898)
  decide +kernel
#print axioms cover_2260898

def state_2260903 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 105) else (if j.val < 3 then 86 else (if j.val < 4 then 92 else 106)))
def hex_2260903 : String := "40084341424407400807070808"
theorem cover_2260903 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2260903 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_2260903)
  decide +kernel
#print axioms cover_2260903

def state_2260917 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 72 else 105) else (if j.val < 3 then 86 else (if j.val < 4 then 92 else 107)))
def hex_2260917 : String := "4341424440084341420908080840430A0543410905054408BE424408050841424405050808"
theorem cover_2260917 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2260917 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 37) (hex := hex_2260917)
  decide +kernel
#print axioms cover_2260917

def state_2260954 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 73 else 105) else (if j.val < 3 then 86 else (if j.val < 4 then 92 else 107)))
def hex_2260954 : String := "43414244404341090841070807094407BE42440A064408400808414244070607420508"
theorem cover_2260954 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2260954 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 35) (hex := hex_2260954)
  decide +kernel
#print axioms cover_2260954

def state_2260989 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 105) else (if j.val < 3 then 87 else (if j.val < 4 then 92 else 53)))
def hex_2260989 : String := "4408400843424107080707"
theorem cover_2260989 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2260989 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 11) (hex := hex_2260989)
  decide +kernel
#print axioms cover_2260989
end Mub6.Numerical.CircleFullD0.Forest
