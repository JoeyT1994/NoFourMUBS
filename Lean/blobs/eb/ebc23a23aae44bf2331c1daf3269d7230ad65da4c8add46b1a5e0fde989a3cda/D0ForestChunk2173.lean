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
def state_2602109 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 13 else (if j.val < 4 then 6 else 6)))
def hex_2602109 : String := "43444041434406420906064309440809410609404143424409050505430942070741430942060609444008064041050741064243070606"
theorem cover_2602109 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2602109 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 55) (hex := hex_2602109)
  decide +kernel
#print axioms cover_2602109

def state_2602164 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 7)))
def hex_2602164 : String := "424340414442070505070907434041054443090505414443090505094005410507"
theorem cover_2602164 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2602164 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 33) (hex := hex_2602164)
  decide +kernel
#print axioms cover_2602164

def state_2602197 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 3)))
def hex_2602197 : String := "44424440080A07440640050607"
theorem cover_2602197 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2602197 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 13) (hex := hex_2602197)
  decide +kernel
#print axioms cover_2602197

def state_2602210 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 3 else 3)))
def hex_2602210 : String := "4344434440414243060505090940410542430905054142430905050944064005064340054105094005410542444306050505440605"
theorem cover_2602210 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2602210 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 53) (hex := hex_2602210)
  decide +kernel
#print axioms cover_2602210

def state_2602263 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
def hex_2602263 : String := "4243444142430944080743094440080807094142074309070744414207440807070743444143094440080640070909414309070744414406070707"
theorem cover_2602263 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2602263 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 59) (hex := hex_2602263)
  decide +kernel
#print axioms cover_2602263
end Mub6.Numerical.CircleFullD0.Forest
