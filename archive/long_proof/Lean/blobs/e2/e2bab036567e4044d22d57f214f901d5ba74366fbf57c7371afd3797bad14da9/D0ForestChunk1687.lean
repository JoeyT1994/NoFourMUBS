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
def state_2278045 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 56) else (if j.val < 3 then 47 else (if j.val < 4 then 43 else 63)))
def hex_2278045 : String := "424043080843080840434105444207050741084442430808430505420843080843410544054208054105444240080505E5"
theorem cover_2278045 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2278045 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 49) (hex := hex_2278045)
  decide +kernel
#print axioms cover_2278045

def state_2278097 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 57) else (if j.val < 3 then 94 else (if j.val < 4 then 43 else 62)))
def hex_2278097 : String := "4307414442430740070A4340070A4041444207050707414405420A050A420743074007414442074305400505070707"
theorem cover_2278097 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2278097 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 47) (hex := hex_2278097)
  decide +kernel
#print axioms cover_2278097

def state_2278144 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 57) else (if j.val < 3 then 94 else (if j.val < 4 then 43 else 62)))
def hex_2278144 : String := "4341440A420740070A074144420A40430A0A0A42404307080940434144050707414442080508440A0A4309410909440A0A"
theorem cover_2278144 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2278144 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 49) (hex := hex_2278144)
  decide +kernel
#print axioms cover_2278144

def state_2278195 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 57) else (if j.val < 3 then 95 else (if j.val < 4 then 86 else 62)))
def hex_2278195 : String := "4144060607"
theorem cover_2278195 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2278195 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_2278195)
  decide +kernel
#print axioms cover_2278195

def state_2278202 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 114) else (if j.val < 3 then 95 else (if j.val < 4 then 87 else 124)))
def hex_2278202 : String := "42434041050605404105444207050741054405420A05430505"
theorem cover_2278202 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2278202 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 25) (hex := hex_2278202)
  decide +kernel
#print axioms cover_2278202

def state_2278227 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 114) else (if j.val < 3 then 95 else (if j.val < 4 then 87 else 125)))
def hex_2278227 : String := "424340074105074041444207050707414405424305080544420743050507434005054009410544054243050505"
theorem cover_2278227 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2278227 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 45) (hex := hex_2278227)
  decide +kernel
#print axioms cover_2278227

def state_2278272 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 115) else (if j.val < 3 then 95 else (if j.val < 4 then 87 else 62)))
def hex_2278272 : String := "4442430740070A43064008084207430640074144060707"
theorem cover_2278272 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2278272 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 23) (hex := hex_2278272)
  decide +kernel
#print axioms cover_2278272

def state_2278296 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 57) else (if j.val < 3 then 95 else (if j.val < 4 then 86 else 62)))
def hex_2278296 : String := "4144050606"
theorem cover_2278296 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2278296 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_2278296)
  decide +kernel
#print axioms cover_2278296
end Mub6.Numerical.CircleFullD0.Forest
