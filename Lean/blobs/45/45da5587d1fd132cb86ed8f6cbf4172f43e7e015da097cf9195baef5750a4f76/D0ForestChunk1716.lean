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
def state_2285012 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 174 else 115) else (if j.val < 3 then 190 else (if j.val < 4 then 176 else 126)))
def hex_2285012 : String := "414442430740070A43400741440A070740414442074307400741090707074144420A430A400A0AE50AE507"
theorem cover_2285012 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2285012 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 43) (hex := hex_2285012)
  decide +kernel
#print axioms cover_2285012

def state_2285055 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 175 else 115) else (if j.val < 3 then 190 else (if j.val < 4 then 176 else 126)))
def hex_2285055 : String := "414442430A0A43400A0A4041440AE50A0AE5440AE5"
theorem cover_2285055 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2285055 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 21) (hex := hex_2285055)
  decide +kernel
#print axioms cover_2285055

def state_2285077 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 174 else 115) else (if j.val < 3 then 190 else (if j.val < 4 then 177 else 126)))
def hex_2285077 : String := "414442064340414442064309060644420643070606414442064340060A0606440A0606E54442064340070A06E5"
theorem cover_2285077 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2285077 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 45) (hex := hex_2285077)
  decide +kernel
#print axioms cover_2285077

def state_2285122 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 175 else 115) else (if j.val < 3 then 190 else (if j.val < 4 then 177 else 126)))
def hex_2285122 : String := "4144424340060606434041444206430A0606440A06414407E50A06E544420A430A06E5"
theorem cover_2285122 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2285122 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 35) (hex := hex_2285122)
  decide +kernel
#print axioms cover_2285122

def state_2285159 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 174 else 115) else (if j.val < 3 then 191 else (if j.val < 4 then 176 else 126)))
def hex_2285159 : String := "414442434007414405E544070740410909414442430540090505E544420A430808E54340094105064009410509E54442430740074144080707430708E5"
theorem cover_2285159 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2285159 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 61) (hex := hex_2285159)
  decide +kernel
#print axioms cover_2285159

def state_2285220 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 175 else 115) else (if j.val < 3 then 191 else (if j.val < 4 then 176 else 126)))
def hex_2285220 : String := "414442434041050A41050A40414405E5440AE54105440AE5434005054041054405E505E54442430A0A430808E5"
theorem cover_2285220 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2285220 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 45) (hex := hex_2285220)
  decide +kernel
#print axioms cover_2285220
end Mub6.Numerical.CircleFullD0.Forest
