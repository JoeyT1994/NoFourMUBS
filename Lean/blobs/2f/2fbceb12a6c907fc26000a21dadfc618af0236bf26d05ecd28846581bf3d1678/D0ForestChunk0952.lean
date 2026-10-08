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
def state_1528982 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 29) else (if j.val < 3 then 46 else (if j.val < 4 then 17 else 45)))
def hex_1528982 : String := "41074307404244410943400506050707420907"
theorem cover_1528982 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1528982 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 19) (hex := hex_1528982)
  decide +kernel
#print axioms cover_1528982

def state_1529001 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 29) else (if j.val < 3 then 47 else (if j.val < 4 then 17 else 22)))
def hex_1529001 : String := "444107430742404441430742400A0707430642400A060A07440807400A0707"
theorem cover_1529001 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1529001 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 31) (hex := hex_1529001)
  decide +kernel
#print axioms cover_1529001

def state_1529032 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 23 else (if j.val < 4 then 8 else 23)))
def hex_1529032 : String := "41074307400807"
theorem cover_1529032 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1529032 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1529032)
  decide +kernel
#print axioms cover_1529032

def state_1529039 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 14) else (if j.val < 3 then 11 else (if j.val < 4 then 8 else 11)))
def hex_1529039 : String := "42444143404209070709434042440A064406060640420944410943060909094107434440070606094441074342400706064240444143070908070940070707"
theorem cover_1529039 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1529039 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 63) (hex := hex_1529039)
  decide +kernel
#print axioms cover_1529039

def state_1529104 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 22 else (if j.val < 4 then 9 else 11)))
def hex_1529104 : String := "444109434042444109050844414340060906434005420505050842094409090941094340080908"
theorem cover_1529104 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1529104 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 39) (hex := hex_1529104)
  decide +kernel
#print axioms cover_1529104

def state_1529145 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 28) else (if j.val < 3 then 23 else (if j.val < 4 then 9 else 22)))
def hex_1529145 : String := "434006420944090706"
theorem cover_1529145 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1529145 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1529145)
  decide +kernel
#print axioms cover_1529145

def state_1529157 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 29) else (if j.val < 3 then 46 else (if j.val < 4 then 18 else 22)))
def hex_1529157 : String := "44414340064209444106434006090606064340420505424405054441434005420544050505054143050505400542050508"
theorem cover_1529157 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1529157 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 49) (hex := hex_1529157)
  decide +kernel
#print axioms cover_1529157

def state_1529208 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 58) else (if j.val < 3 then 47 else (if j.val < 4 then 18 else 44)))
def hex_1529208 : String := "43400642444106434006424406060A0606440A0706"
theorem cover_1529208 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1529208 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 21) (hex := hex_1529208)
  decide +kernel
#print axioms cover_1529208
end Mub6.Numerical.CircleFullD0.Forest
