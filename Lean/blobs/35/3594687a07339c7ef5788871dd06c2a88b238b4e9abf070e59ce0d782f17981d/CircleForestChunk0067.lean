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
def state_953493 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 87) else (if j.val < 3 then 105 else (if j.val < 4 then 35 else 109)))
def hex_953493 : String := "434006410642C705404142C70642C7064142C74306444041064207064142C709090642C7434405064440090940064142070607"
theorem cover_953493 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_953493 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 51) (hex := hex_953493)
  decide +kernel
#print axioms cover_953493

def state_953544 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 43) else (if j.val < 3 then 52 else (if j.val < 4 then 17 else 55)))
def hex_953544 : String := "430640064142444306400542050A06064244C7064443064006410642C70606"
theorem cover_953544 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_953544 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 31) (hex := hex_953544)
  decide +kernel
#print axioms cover_953544

def state_953575 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 43) else (if j.val < 3 then 53 else (if j.val < 4 then 17 else 27)))
def hex_953575 : String := "4443064006414244430640064109090606424409430640064106090906"
theorem cover_953575 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_953575 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 29) (hex := hex_953575)
  decide +kernel
#print axioms cover_953575

def state_953604 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 21) else (if j.val < 3 then 27 else (if j.val < 4 then 8 else 13)))
def hex_953604 : String := "44430540410644050641090506"
theorem cover_953604 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_953604 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 13) (hex := hex_953604)
  decide +kernel
#print axioms cover_953604

def state_953619 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 20) else (if j.val < 3 then 26 else (if j.val < 4 then 8 else 13)))
def hex_953619 : String := "4443404244090A090940424441430A4042070A07430940424407070907410A430A4042444107070A0A0A444109090A42444107070A090A"
theorem cover_953619 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_953619 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 55) (hex := hex_953619)
  decide +kernel
#print axioms cover_953619

def state_953674 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 20) else (if j.val < 3 then 27 else (if j.val < 4 then 8 else 13)))
def hex_953674 : String := "4443094044090A090A"
theorem cover_953674 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_953674 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_953674)
  decide +kernel
#print axioms cover_953674

def state_953686 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 21) else (if j.val < 3 then 26 else (if j.val < 4 then 16 else 26)))
def hex_953686 : String := "05"
theorem cover_953686 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_953686 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_953686)
  decide +kernel
#print axioms cover_953686

def state_953691 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 42) else (if j.val < 3 then 52 else (if j.val < 4 then 17 else 52)))
def hex_953691 : String := "4305404244064107060909"
theorem cover_953691 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_953691 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_953691)
  decide +kernel
#print axioms cover_953691

def state_953703 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 42) else (if j.val < 3 then 52 else (if j.val < 4 then 34 else 53)))
def hex_953703 : String := "40424144090A090909"
theorem cover_953703 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_953703 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_953703)
  decide +kernel
#print axioms cover_953703
end Mub6.Numerical.CircleFullD0.Forest
