import CircleFullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_169605 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 18) else (if j.val < 3 then 25 else (if j.val < 4 then 24 else 14)))
def hex_169605 : String := "440A43424041094409434240090A09090A40090A420A09"
theorem cover_169605 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_169605 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 23) (hex := hex_169605)
  decide +kernel
#print axioms cover_169605

def state_169629 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 25 else (if j.val < 4 then 24 else 28)))
def hex_169629 : String := "4342070A07"
theorem cover_169629 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_169629 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_169629)
  decide +kernel
#print axioms cover_169629

def state_169639 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 38) else (if j.val < 3 then 50 else (if j.val < 4 then 48 else 58)))
def hex_169639 : String := "434240060A0A07"
theorem cover_169639 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_169639 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_169639)
  decide +kernel
#print axioms cover_169639

def state_169648 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 38) else (if j.val < 3 then 100 else (if j.val < 4 then 96 else 59)))
def hex_169648 : String := "404144090944064342414005440609064109060741440A43420A0A0A44074342404144078F06410A074041440609060A42070A"
theorem cover_169648 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_169648 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 51) (hex := hex_169648)
  decide +kernel
#print axioms cover_169648

def state_169699 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 38) else (if j.val < 3 then 101 else (if j.val < 4 then 96 else 59)))
def hex_169699 : String := "40094109440A434240090A090A"
theorem cover_169699 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_169699 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_169699)
  decide +kernel
#print axioms cover_169699

def state_169712 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 38) else (if j.val < 3 then 50 else (if j.val < 4 then 97 else 59)))
def hex_169712 : String := "42404105070A09"
theorem cover_169712 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_169712 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_169712)
  decide +kernel
#print axioms cover_169712

def state_169719 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 39) else (if j.val < 3 then 50 else (if j.val < 4 then 48 else 29)))
def hex_169719 : String := "44064342070607"
theorem cover_169719 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_169719 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_169719)
  decide +kernel
#print axioms cover_169719

def state_169726 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 19) else (if j.val < 3 then 50 else (if j.val < 4 then 48 else 29)))
def hex_169726 : String := "41440A43420A0A0A440743424007410A074041440543050A050507"
theorem cover_169726 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_169726 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 27) (hex := hex_169726)
  decide +kernel
#print axioms cover_169726

def state_169753 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 51 else (if j.val < 4 then 48 else 29)))
def hex_169753 : String := "4041440909440643064240094109060941440A43420A050A440643050A"
theorem cover_169753 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_169753 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 29) (hex := hex_169753)
  decide +kernel
#print axioms cover_169753

def state_169782 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 25 else (if j.val < 4 then 49 else 29)))
def hex_169782 : String := "4240410A070A4041094407090A"
theorem cover_169782 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_169782 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_169782)
  decide +kernel
#print axioms cover_169782

def state_169795 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 25 else (if j.val < 4 then 25 else 14)))
def hex_169795 : String := "4041094407070A"
theorem cover_169795 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_169795 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_169795)
  decide +kernel
#print axioms cover_169795

def state_169805 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 9) else (if j.val < 3 then 24 else (if j.val < 4 then 24 else 15)))
def hex_169805 : String := "410544420543410540054407430A050542054341050A05"
theorem cover_169805 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_169805 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 23) (hex := hex_169805)
  decide +kernel
#print axioms cover_169805

def state_169829 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 18) else (if j.val < 3 then 24 else (if j.val < 4 then 24 else 15)))
def hex_169829 : String := "444205434005060506"
theorem cover_169829 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_169829 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_169829)
  decide +kernel
#print axioms cover_169829

def state_169840 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 48 else (if j.val < 4 then 24 else 30)))
def hex_169840 : String := "43400541050705"
theorem cover_169840 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_169840 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_169840)
  decide +kernel
#print axioms cover_169840
end Mub6.Numerical.CircleFullPrototype.Forest
