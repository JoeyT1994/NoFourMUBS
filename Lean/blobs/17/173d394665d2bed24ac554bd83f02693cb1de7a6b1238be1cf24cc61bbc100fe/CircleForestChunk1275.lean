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
def state_1606510 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 43) else (if j.val < 3 then 53 else (if j.val < 4 then 61 else 49)))
def hex_1606510 : String := "44084008414208434405060608"
theorem cover_1606510 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1606510 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1606510)
  decide +kernel
#print axioms cover_1606510

def state_1606523 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 21) else (if j.val < 3 then 26 else (if j.val < 4 then 31 else 24)))
def hex_1606523 : String := "44400841420805084008414208434405060508"
theorem cover_1606523 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1606523 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_1606523)
  decide +kernel
#print axioms cover_1606523

def state_1606542 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 21) else (if j.val < 3 then 27 else (if j.val < 4 then 15 else 24)))
def hex_1606542 : String := "43440540054105424344400505404105064142430A050542434440050A40070A4405060A44050605440506"
theorem cover_1606542 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1606542 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 14) (count := 43) (hex := hex_1606542)
  decide +kernel
#print axioms cover_1606542

def state_1606586 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 15 else 25)))
def hex_1606586 : String := "4106424344410606060606"
theorem cover_1606586 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1606586 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_1606586)
  decide +kernel
#print axioms cover_1606586

def state_1606602 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 20) else (if j.val < 3 then 26 else (if j.val < 4 then 30 else 50)))
def hex_1606602 : String := "424106434442400641060806060606"
theorem cover_1606602 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1606602 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_1606602)
  decide +kernel
#print axioms cover_1606602

def state_1606620 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 40) else (if j.val < 3 then 52 else (if j.val < 4 then 60 else 50)))
def hex_1606620 : String := "4440424143090643444240069F054240069F060606424143440808444006084006089F410843080640424106060642414308069F4106430806"
theorem cover_1606620 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1606620 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 57) (hex := hex_1606620)
  decide +kernel
#print axioms cover_1606620

def state_1606677 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 40) else (if j.val < 3 then 52 else (if j.val < 4 then 61 else 50)))
def hex_1606677 : String := "4440064241064344400642410643444006424106060606060606060606"
theorem cover_1606677 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1606677 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 15) (count := 29) (hex := hex_1606677)
  decide +kernel
#print axioms cover_1606677

def state_1606710 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 41) else (if j.val < 3 then 104 else (if j.val < 4 then 60 else 100)))
def hex_1606710 : String := "41434442404341440506084106069F40069F424043410606069F40069F444240069F06064344420840089F4240079F40079F4408420806"
theorem cover_1606710 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1606710 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 55) (hex := hex_1606710)
  decide +kernel
#print axioms cover_1606710
end Mub6.Numerical.CircleFullD0.Forest
