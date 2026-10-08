import CircleFullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_948513 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 86) else (if j.val < 3 then 102 else (if j.val < 4 then 68 else 108)))
def hex_948513 : String := "40424144430540420906420905064405430540060541444305400605064405054241440508054144050A05"
theorem cover_948513 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_948513 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 43) (hex := hex_948513)
  decide +kernel
#print axioms cover_948513

def state_948558 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 86) else (if j.val < 3 then 204 else (if j.val < 4 then 69 else 108)))
def hex_948558 : String := "410944434042094109054207050909"
theorem cover_948558 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_948558 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_948558)
  decide +kernel
#print axioms cover_948558

def state_948574 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 172) else (if j.val < 3 then 205 else (if j.val < 4 then 69 else 108)))
def hex_948574 : String := "4443404209064241440706440509414443054006050605400942094109440709430609"
theorem cover_948574 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_948574 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 35) (hex := hex_948574)
  decide +kernel
#print axioms cover_948574

def state_948609 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 173) else (if j.val < 3 then 205 else (if j.val < 4 then 69 else 108)))
def hex_948609 : String := "444340424144050505050540420941440A090A4241090A414405430509054340064241060506400909"
theorem cover_948609 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_948609 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 41) (hex := hex_948609)
  decide +kernel
#print axioms cover_948609

def state_948651 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 86) else (if j.val < 3 then 204 else (if j.val < 4 then 69 else 108)))
def hex_948651 : String := "4144070944074340090707"
theorem cover_948651 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_948651 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_948651)
  decide +kernel
#print axioms cover_948651

def state_948662 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 86) else (if j.val < 3 then 205 else (if j.val < 4 then 69 else 108)))
def hex_948662 : String := "4144434042074144050705074042070707434042080A08400907444305404207410705074340424108050505404209410944050907"
theorem cover_948662 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_948662 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 53) (hex := hex_948662)
  decide +kernel
#print axioms cover_948662

def state_948715 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 86) else (if j.val < 3 then 102 else (if j.val < 4 then 34 else 109)))
def hex_948715 : String := "4340064208084009420941084443080908"
theorem cover_948715 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_948715 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_948715)
  decide +kernel
#print axioms cover_948715
end Mub6.Numerical.CircleFullD0.Forest
