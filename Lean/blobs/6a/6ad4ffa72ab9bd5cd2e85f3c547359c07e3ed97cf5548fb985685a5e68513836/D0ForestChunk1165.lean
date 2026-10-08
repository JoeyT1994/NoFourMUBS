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
def state_1580032 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 67) else (if j.val < 3 then 193 else (if j.val < 4 then 211 else 206)))
def hex_1580032 : String := "4041420A44430909434007410A420A070A42440A0A444340074109070A43070A41420A44434009050A4340410A05050A42054443050A430505"
theorem cover_1580032 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1580032 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 57) (hex := hex_1580032)
  decide +kernel
#print axioms cover_1580032

def state_1580089 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 67) else (if j.val < 3 then 193 else (if j.val < 4 then 105 else 207)))
def hex_1580089 : String := "4340414244430505054443070707420507054041420A44434006410A05060642440A054407074142054443050A0505"
theorem cover_1580089 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1580089 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 47) (hex := hex_1580089)
  decide +kernel
#print axioms cover_1580089

def state_1580137 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 33) else (if j.val < 3 then 97 else (if j.val < 4 then 52 else 102)))
def hex_1580137 : String := "434041094244094307070941094244064306090940410942440943090909410942440943090909"
theorem cover_1580137 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1580137 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 39) (hex := hex_1580137)
  decide +kernel
#print axioms cover_1580137

def state_1580178 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 33) else (if j.val < 3 then 97 else (if j.val < 4 then 104 else 103)))
def hex_1580178 : String := "41424443074007410907070707"
theorem cover_1580178 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1580178 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1580178)
  decide +kernel
#print axioms cover_1580178

def state_1580192 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 66) else (if j.val < 3 then 97 else (if j.val < 4 then 104 else 103)))
def hex_1580192 : String := "424443400A0A404109424409430707074108424406080843400A0A40414244430708070707410842440805084409430808"
theorem cover_1580192 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1580192 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 49) (hex := hex_1580192)
  decide +kernel
#print axioms cover_1580192

def state_1580241 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 67) else (if j.val < 3 then 97 else (if j.val < 4 then 104 else 103)))
def hex_1580241 : String := "4244430A404107074142060906430740074142050705440A07"
theorem cover_1580241 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1580241 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 25) (hex := hex_1580241)
  decide +kernel
#print axioms cover_1580241

def state_1580267 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 33) else (if j.val < 3 then 97 else (if j.val < 4 then 105 else 103)))
def hex_1580267 : String := "41424443400641090706060642444307070707"
theorem cover_1580267 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1580267 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 19) (hex := hex_1580267)
  decide +kernel
#print axioms cover_1580267
end Mub6.Numerical.CircleFullD0.Forest
