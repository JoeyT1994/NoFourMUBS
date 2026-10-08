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
def state_2331409 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 6)))
def hex_2331409 : String := "41424443070707074244434044414243070707424344080505084107420507444107424307070707404408084441074208070943400507094443070707"
theorem cover_2331409 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2331409 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 61) (hex := hex_2331409)
  decide +kernel
#print axioms cover_2331409

def state_2331470 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 7)))
def hex_2331470 : String := "400A4109420507"
theorem cover_2331470 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2331470 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_2331470)
  decide +kernel
#print axioms cover_2331470

def state_2331478 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 3)))
def hex_2331478 : String := "4344404306050606444005444142054340054441420506050505050505"
theorem cover_2331478 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2331478 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 29) (hex := hex_2331478)
  decide +kernel
#print axioms cover_2331478

def state_2331510 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 6)))
def hex_2331510 : String := "42434441434406064408400806064143400606050644414440084208080508054344084142434008440706080808440808"
theorem cover_2331510 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2331510 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 49) (hex := hex_2331510)
  decide +kernel
#print axioms cover_2331510

def state_2331559 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 6)))
def hex_2331559 : String := "42434406064441404442064306080606060643440741404243070607070844414042440707070606414042430605070706"
theorem cover_2331559 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2331559 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 49) (hex := hex_2331559)
  decide +kernel
#print axioms cover_2331559

def state_2331609 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 7)))
def hex_2331609 : String := "4205434144424340050605434041440842050808410708400541070542054340050605444205080505"
theorem cover_2331609 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2331609 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 41) (hex := hex_2331609)
  decide +kernel
#print axioms cover_2331609
end Mub6.Numerical.CircleFullD0.Forest
