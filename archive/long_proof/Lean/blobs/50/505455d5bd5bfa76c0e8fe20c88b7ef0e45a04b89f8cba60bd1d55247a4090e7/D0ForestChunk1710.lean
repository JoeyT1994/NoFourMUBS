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
def state_2283582 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 173 else 229) else (if j.val < 3 then 190 else (if j.val < 4 then 177 else 251)))
def hex_2283582 : String := "424340410606410606064340094144424305060542060944424309060909400606"
theorem cover_2283582 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2283582 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 33) (hex := hex_2283582)
  decide +kernel
#print axioms cover_2283582

def state_2283615 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 114) else (if j.val < 3 then 191 else (if j.val < 4 then 88 else 125)))
def hex_2283615 : String := "434009410544424305090542430909094009414405424305090544424309090909"
theorem cover_2283615 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2283615 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 33) (hex := hex_2283615)
  decide +kernel
#print axioms cover_2283615

def state_2283649 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 115) else (if j.val < 3 then 95 else (if j.val < 4 then 88 else 124)))
def hex_2283649 : String := "42434041440A07070A4041440842430A400606090841440A420A4308080843400808400808"
theorem cover_2283649 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2283649 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 37) (hex := hex_2283649)
  decide +kernel
#print axioms cover_2283649

def state_2283688 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 115) else (if j.val < 3 then 190 else (if j.val < 4 then 176 else 125)))
def hex_2283688 : String := "40074144420A430740070A0707"
theorem cover_2283688 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2283688 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_2283688)
  decide +kernel
#print axioms cover_2283688

def state_2283702 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 172 else 115) else (if j.val < 3 then 190 else (if j.val < 4 then 177 else 125)))
def hex_2283702 : String := "414442430706090707"
theorem cover_2283702 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2283702 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_2283702)
  decide +kernel
#print axioms cover_2283702

def state_2283711 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 173 else 115) else (if j.val < 3 then 190 else (if j.val < 4 then 177 else 125)))
def hex_2283711 : String := "414442430A0643400941440A420A09084009414442060806084243400641060606434007414442430906090944090740060644420A0842074307400506"
theorem cover_2283711 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2283711 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 61) (hex := hex_2283711)
  decide +kernel
#print axioms cover_2283711

def state_2283772 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 115) else (if j.val < 3 then 191 else (if j.val < 4 then 88 else 125)))
def hex_2283772 : String := "4340094144424309090809084009414442430909080908"
theorem cover_2283772 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2283772 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 23) (hex := hex_2283772)
  decide +kernel
#print axioms cover_2283772

def state_2283797 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 114) else (if j.val < 3 then 95 else (if j.val < 4 then 88 else 124)))
def hex_2283797 : String := "42434041054405420A0505404107440742430A070707430507"
theorem cover_2283797 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2283797 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 25) (hex := hex_2283797)
  decide +kernel
#print axioms cover_2283797

def state_2283826 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 174 else 228) else (if j.val < 3 then 190 else (if j.val < 4 then 176 else 125)))
def hex_2283826 : String := "44054243050805"
theorem cover_2283826 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2283826 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_2283826)
  decide +kernel
#print axioms cover_2283826
end Mub6.Numerical.CircleFullD0.Forest
