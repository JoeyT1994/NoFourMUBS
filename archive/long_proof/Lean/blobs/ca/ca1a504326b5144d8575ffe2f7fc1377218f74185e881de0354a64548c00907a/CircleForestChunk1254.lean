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
def state_1601436 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 21) else (if j.val < 3 then 13 else (if j.val < 4 then 14 else 24)))
def hex_1601436 : String := "4243444142430908054208094142434007440942080740074408420807094208430707444105084142080508430909"
theorem cover_1601436 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1601436 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 47) (hex := hex_1601436)
  decide +kernel
#print axioms cover_1601436

def state_1601486 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 20) else (if j.val < 3 then 26 else (if j.val < 4 then 28 else 24)))
def hex_1601486 : String := "444042430909054243064106060940424341094406420609410944424009060942404309090609094243064144090A060A"
theorem cover_1601486 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1601486 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 49) (hex := hex_1601486)
  decide +kernel
#print axioms cover_1601486

def state_1601536 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 20) else (if j.val < 3 then 26 else (if j.val < 4 then 29 else 48)))
def hex_1601536 : String := "4005424341054406404206050641054405400542060505"
theorem cover_1601536 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1601536 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 23) (hex := hex_1601536)
  decide +kernel
#print axioms cover_1601536

def state_1601562 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 20) else (if j.val < 3 then 52 else (if j.val < 4 then 58 else 49)))
def hex_1601562 : String := "4109444240054309410509054240430941050843410944064206094109444208094208400809400909"
theorem cover_1601562 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1601562 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 41) (hex := hex_1601562)
  decide +kernel
#print axioms cover_1601562

def state_1601603 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 20) else (if j.val < 3 then 52 else (if j.val < 4 then 59 else 49)))
def hex_1601603 : String := "41054405424043410508054341094408420840074109084105084005430905"
theorem cover_1601603 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1601603 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 31) (hex := hex_1601603)
  decide +kernel
#print axioms cover_1601603

def state_1601634 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 20) else (if j.val < 3 then 53 else (if j.val < 4 then 29 else 49)))
def hex_1601634 : String := "05"
theorem cover_1601634 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1601634 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1601634)
  decide +kernel
#print axioms cover_1601634

def state_1601637 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 20) else (if j.val < 3 then 52 else (if j.val < 4 then 58 else 49)))
def hex_1601637 : String := "414440090940094243064108060844404206090640424306414442060942060906434109064109440940090A42060A"
theorem cover_1601637 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1601637 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 47) (hex := hex_1601637)
  decide +kernel
#print axioms cover_1601637
end Mub6.Numerical.CircleFullD0.Forest
