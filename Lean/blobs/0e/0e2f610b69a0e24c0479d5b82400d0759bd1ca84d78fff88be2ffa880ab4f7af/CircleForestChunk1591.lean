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
def state_2255066 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 52) else (if j.val < 3 then 41 else (if j.val < 4 then 92 else 51)))
def hex_2255066 : String := "44414042430A44080A0842430A440A094344060A0840080A4140420943440A0A44084109084209434441090A094441090809400A0A"
theorem cover_2255066 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2255066 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 53) (hex := hex_2255066)
  decide +kernel
#print axioms cover_2255066

def state_2255119 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 52) else (if j.val < 3 then 41 else (if j.val < 4 then 93 else 51)))
def hex_2255119 : String := "4441404243440841090508084243444109080944080908084140420943440841090808420943444107080944080940420508420508"
theorem cover_2255119 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2255119 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 53) (hex := hex_2255119)
  decide +kernel
#print axioms cover_2255119

def state_2255172 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 52) else (if j.val < 3 then 20 else (if j.val < 4 then 46 else 51)))
def hex_2255172 : String := "42434409094409094344414042090707400A0A4109400A0A444140420907074042430A080842430A4408060741094042094344080A08420607"
theorem cover_2255172 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2255172 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 57) (hex := hex_2255172)
  decide +kernel
#print axioms cover_2255172

def state_2255229 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 53) else (if j.val < 3 then 20 else (if j.val < 4 then 46 else 51)))
def hex_2255229 : String := "404207430A084206430A440841400A0606"
theorem cover_2255229 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2255229 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_2255229)
  decide +kernel
#print axioms cover_2255229

def state_2255249 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 52) else (if j.val < 3 then 20 else (if j.val < 4 then 47 else 50)))
def hex_2255249 : String := "4243444142400543440805050808414205400543440805050544080508"
theorem cover_2255249 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2255249 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 29) (hex := hex_2255249)
  decide +kernel
#print axioms cover_2255249
end Mub6.Numerical.CircleFullD0.Forest
