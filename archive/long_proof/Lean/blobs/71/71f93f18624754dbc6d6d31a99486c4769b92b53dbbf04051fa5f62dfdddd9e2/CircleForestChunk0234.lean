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
def state_993595 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 108) else (if j.val < 3 then 71 else (if j.val < 4 then 104 else 85)))
def hex_993595 : String := "434405410505440541424006434405410905060505"
theorem cover_993595 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_993595 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 21) (hex := hex_993595)
  decide +kernel
#print axioms cover_993595

def state_993616 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 108) else (if j.val < 3 then 71 else (if j.val < 4 then 104 else 85)))
def hex_993616 : String := "43440541424043054405410A05430A0A050544074142404344074109074407410907074005430544050A420705"
theorem cover_993616 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_993616 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 45) (hex := hex_993616)
  decide +kernel
#print axioms cover_993616

def state_993661 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 109) else (if j.val < 3 then 35 else (if j.val < 4 then 104 else 85)))
def hex_993661 : String := "420605"
theorem cover_993661 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_993661 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_993661)
  decide +kernel
#print axioms cover_993661

def state_993664 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 54) else (if j.val < 3 then 35 else (if j.val < 4 then 105 else 42)))
def hex_993664 : String := "4407414240060740434406414206400543050606064344074142404307060740434405094405094307070744074142074043440609060706420606"
theorem cover_993664 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_993664 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 59) (hex := hex_993664)
  decide +kernel
#print axioms cover_993664

def state_993723 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 55) else (if j.val < 3 then 17 else (if j.val < 4 then 52 else 42)))
def hex_993723 : String := "4206400607"
theorem cover_993723 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_993723 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_993723)
  decide +kernel
#print axioms cover_993723

def state_993730 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 54) else (if j.val < 3 then 34 else (if j.val < 4 then 52 else 43)))
def hex_993730 : String := "400643444142054006434441420540060506054406050641054205400643440605064406410506"
theorem cover_993730 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_993730 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 39) (hex := hex_993730)
  decide +kernel
#print axioms cover_993730

def state_993770 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 54) else (if j.val < 3 then 35 else (if j.val < 4 then 52 else 43)))
def hex_993770 : String := "434441424006434406C606404344050706434441424005090505C6444142060506C6420606C6444142064006434406C6060641420640064443C6060706"
theorem cover_993770 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_993770 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 61) (hex := hex_993770)
  decide +kernel
#print axioms cover_993770
end Mub6.Numerical.CircleFullD0.Forest
