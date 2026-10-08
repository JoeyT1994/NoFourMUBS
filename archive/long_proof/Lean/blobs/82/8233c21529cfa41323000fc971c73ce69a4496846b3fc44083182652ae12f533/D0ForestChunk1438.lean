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
def state_1645867 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 49) else (if j.val < 3 then 29 else (if j.val < 4 then 53 else 21)))
def hex_1645867 : String := "444241084008434408420841080A0841054005434405420A090542414440084309080944400A43420A0908400943090A410944400943090A09"
theorem cover_1645867 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1645867 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 57) (hex := hex_1645867)
  decide +kernel
#print axioms cover_1645867

def state_1645927 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 49) else (if j.val < 3 then 58 else (if j.val < 4 then 52 else 42)))
def hex_1645927 : String := "4106404306444206414043060806404306440706060606"
theorem cover_1645927 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1645927 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 23) (hex := hex_1645927)
  decide +kernel
#print axioms cover_1645927

def state_1645951 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 98) else (if j.val < 3 then 59 else (if j.val < 4 then 52 else 42)))
def hex_1645951 : String := "404309444241054005430605050943064442064106404306050606"
theorem cover_1645951 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1645951 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 27) (hex := hex_1645951)
  decide +kernel
#print axioms cover_1645951

def state_1645980 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 99) else (if j.val < 3 then 59 else (if j.val < 4 then 104 else 42)))
def hex_1645980 : String := "4442410643064009060909"
theorem cover_1645980 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1645980 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 11) (hex := hex_1645980)
  decide +kernel
#print axioms cover_1645980

def state_1645993 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 99) else (if j.val < 3 then 118 else (if j.val < 4 then 105 else 84)))
def hex_1645993 : String := "414043090543064407064043444209090944080A4344A0064407420641400906400907"
theorem cover_1645993 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1645993 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 35) (hex := hex_1645993)
  decide +kernel
#print axioms cover_1645993

def state_1646028 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 99) else (if j.val < 3 then 119 else (if j.val < 4 then 105 else 84)))
def hex_1646028 : String := "41400943094405054043094405094344A0094442410540050741050A424109400943090709"
theorem cover_1646028 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1646028 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 37) (hex := hex_1646028)
  decide +kernel
#print axioms cover_1646028

def state_1646065 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 99) else (if j.val < 3 then 59 else (if j.val < 4 then 105 else 85)))
def hex_1646065 : String := "42410940094306444206090609"
theorem cover_1646065 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1646065 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1646065)
  decide +kernel
#print axioms cover_1646065

def state_1646079 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 99) else (if j.val < 3 then 59 else (if j.val < 4 then 104 else 42)))
def hex_1646079 : String := "440606"
theorem cover_1646079 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1646079 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_1646079)
  decide +kernel
#print axioms cover_1646079

def state_1646084 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 99) else (if j.val < 3 then 118 else (if j.val < 4 then 105 else 84)))
def hex_1646084 : String := "41064043060706"
theorem cover_1646084 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1646084 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1646084)
  decide +kernel
#print axioms cover_1646084
end Mub6.Numerical.CircleFullD0.Forest
