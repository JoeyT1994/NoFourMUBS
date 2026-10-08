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
def state_1577178 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 13 else 12)))
def hex_1577178 : String := "414244434005410542050505434041050741424405434005410507050542084405074006410642080544054340054105070542440843080844430905430707"
theorem cover_1577178 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1577178 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 63) (hex := hex_1577178)
  decide +kernel
#print axioms cover_1577178

def state_1577245 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 8) else (if j.val < 3 then 24 else (if j.val < 4 then 26 else 24)))
def hex_1577245 : String := "40410942440943400809400509094142440943090909424406430640410909064409430909"
theorem cover_1577245 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1577245 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 37) (hex := hex_1577245)
  decide +kernel
#print axioms cover_1577245

def state_1577282 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 8) else (if j.val < 3 then 24 else (if j.val < 4 then 27 else 24)))
def hex_1577282 : String := "40410542440540050A0541424405400909054244094043410909094341094206090A4405400509"
theorem cover_1577282 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1577282 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 39) (hex := hex_1577282)
  decide +kernel
#print axioms cover_1577282

def state_1577326 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 16) else (if j.val < 3 then 48 else (if j.val < 4 then 26 else 50)))
def hex_1577326 : String := "43404105420805414244054309050542440943400841090840054109080940054105424405434005090505"
theorem cover_1577326 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1577326 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 43) (hex := hex_1577326)
  decide +kernel
#print axioms cover_1577326

def state_1577371 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 16) else (if j.val < 3 then 48 else (if j.val < 4 then 52 else 51)))
def hex_1577371 : String := "414244050605420807"
theorem cover_1577371 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1577371 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 9) (hex := hex_1577371)
  decide +kernel
#print axioms cover_1577371

def state_1577383 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 32) else (if j.val < 3 then 96 else (if j.val < 4 then 52 else 102)))
def hex_1577383 : String := "4340410542050541424405D005424443090543400841D008400541D0084405430505400541054244050A05"
theorem cover_1577383 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1577383 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 43) (hex := hex_1577383)
  decide +kernel
#print axioms cover_1577383
end Mub6.Numerical.CircleFullD0.Forest
