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
def state_2604947 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
def hex_2604947 : String := "4243444006084007084440060A4007420743080A4344064006440608440640064344060906"
theorem cover_2604947 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2604947 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 37) (hex := hex_2604947)
  decide +kernel
#print axioms cover_2604947

def state_2604984 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
def hex_2604984 : String := "42434440410707410742074344410707070707440740070743444006410607400741444207064207090744400641060740074143440642070944060907"
theorem cover_2604984 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2604984 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 61) (hex := hex_2604984)
  decide +kernel
#print axioms cover_2604984

def state_2605046 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
def hex_2605046 : String := "424308444208430806420843080A434405084406434440060508440640090A"
theorem cover_2605046 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2605046 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 31) (hex := hex_2605046)
  decide +kernel
#print axioms cover_2605046

def state_2605078 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 2 else 2)))
def hex_2605078 : String := "43444108420707410807444142074340070840060A0741420743084440070A0A07"
theorem cover_2605078 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2605078 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 33) (hex := hex_2605078)
  decide +kernel
#print axioms cover_2605078

def state_2605112 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 2)))
def hex_2605112 : String := "444140424305440541050605054042070505414440420805050844404207430541050742430541050705400742074305410507"
theorem cover_2605112 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2605112 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 51) (hex := hex_2605112)
  decide +kernel
#print axioms cover_2605112

def state_2605164 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 4)))
def hex_2605164 : String := "41434006050643404207440541050742440541050705400742074405410506"
theorem cover_2605164 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2605164 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 31) (hex := hex_2605164)
  decide +kernel
#print axioms cover_2605164
end Mub6.Numerical.CircleFullD0.Forest
