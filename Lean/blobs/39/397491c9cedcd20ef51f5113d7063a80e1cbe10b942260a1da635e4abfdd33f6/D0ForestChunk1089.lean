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
def state_1561684 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 61) else (if j.val < 3 then 52 else (if j.val < 4 then 41 else 89)))
def hex_1561684 : String := "424341404406070606414044420943410706090909404405420543060506430641404442430641090643064107060744060740440642060606"
theorem cover_1561684 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1561684 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 57) (hex := hex_1561684)
  decide +kernel
#print axioms cover_1561684

def state_1561742 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 30) else (if j.val < 3 then 53 else (if j.val < 4 then 40 else 44)))
def hex_1561742 : String := "410706"
theorem cover_1561742 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1561742 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_1561742)
  decide +kernel
#print axioms cover_1561742

def state_1561750 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 60) else (if j.val < 3 then 106 else (if j.val < 4 then 82 else 88)))
def hex_1561750 : String := "4105400907"
theorem cover_1561750 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1561750 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1561750)
  decide +kernel
#print axioms cover_1561750

def state_1561756 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 120) else (if j.val < 3 then 106 else (if j.val < 4 then 83 else 88)))
def hex_1561756 : String := "404442430508050505"
theorem cover_1561756 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1561756 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1561756)
  decide +kernel
#print axioms cover_1561756

def state_1561766 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 121) else (if j.val < 3 then 106 else (if j.val < 4 then 83 else 88)))
def hex_1561766 : String := "4442430941400844424308080908400944094243090809094243410509410840084442080808430508"
theorem cover_1561766 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1561766 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 41) (hex := hex_1561766)
  decide +kernel
#print axioms cover_1561766

def state_1561808 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 121) else (if j.val < 3 then 106 else (if j.val < 4 then 83 else 176)))
def hex_1561808 : String := "424341050641404442430541054044080806054207054442060505404406424306414008060606064305410506"
theorem cover_1561808 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1561808 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 45) (hex := hex_1561808)
  decide +kernel
#print axioms cover_1561808

def state_1561853 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 121) else (if j.val < 3 then 106 else (if j.val < 4 then 83 else 177)))
def hex_1561853 : String := "42430741054044424307410740080607070707"
theorem cover_1561853 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1561853 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 19) (hex := hex_1561853)
  decide +kernel
#print axioms cover_1561853

def state_1561872 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 60) else (if j.val < 3 then 107 else (if j.val < 4 then 41 else 88)))
def hex_1561872 : String := "43054105400905"
theorem cover_1561872 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1561872 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1561872)
  decide +kernel
#print axioms cover_1561872

def state_1561879 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 60) else (if j.val < 3 then 53 else (if j.val < 4 then 41 else 89)))
def hex_1561879 : String := "424307410540444243070807070705"
theorem cover_1561879 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1561879 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 15) (hex := hex_1561879)
  decide +kernel
#print axioms cover_1561879

def state_1561894 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 60) else (if j.val < 3 then 53 else (if j.val < 4 then 41 else 44)))
def hex_1561894 : String := "44424305410540440607060507"
theorem cover_1561894 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1561894 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1561894)
  decide +kernel
#print axioms cover_1561894
end Mub6.Numerical.CircleFullD0.Forest
