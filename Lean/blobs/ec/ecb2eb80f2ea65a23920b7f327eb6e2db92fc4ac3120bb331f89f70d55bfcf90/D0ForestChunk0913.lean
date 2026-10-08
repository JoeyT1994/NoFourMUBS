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
def state_1519582 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
def hex_1519582 : String := "42434443440A090A09440A064344424308440840080843440840080844400808400841420808084209430840080644420A440840080606"
theorem cover_1519582 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1519582 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 55) (hex := hex_1519582)
  decide +kernel
#print axioms cover_1519582

def state_1519638 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 3)))
def hex_1519638 : String := "434441434405050A0541094340420544050605050A"
theorem cover_1519638 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1519638 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 21) (hex := hex_1519638)
  decide +kernel
#print axioms cover_1519638

def state_1519659 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 3)))
def hex_1519659 : String := "4344084142430840444142060842050806440806084243084044050605084441420A080A414206404344420608060606420A4043440841060844050608"
theorem cover_1519659 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1519659 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 61) (hex := hex_1519659)
  decide +kernel
#print axioms cover_1519659

def state_1519724 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
def hex_1519724 : String := "424344400809400707440940084243080843090943440808440840434408074441420505084142094043070943070509434441080707440941420743070509"
theorem cover_1519724 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1519724 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 63) (hex := hex_1519724)
  decide +kernel
#print axioms cover_1519724

def state_1519788 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 2 else 2)))
def hex_1519788 : String := "434440414209084243444041070707070943074440080707410942090740410742070741070744404108420908094041080809"
theorem cover_1519788 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1519788 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 51) (hex := hex_1519788)
  decide +kernel
#print axioms cover_1519788
end Mub6.Numerical.CircleFullD0.Forest
