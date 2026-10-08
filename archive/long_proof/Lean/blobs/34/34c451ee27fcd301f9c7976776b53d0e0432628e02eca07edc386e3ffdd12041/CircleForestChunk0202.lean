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
def state_985929 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 107) else (if j.val < 3 then 69 else (if j.val < 4 then 206 else 170)))
def hex_985929 : String := "414240434406090643440A41050A444109060540430909430A440909420640434406060643440A0A4406410A06"
theorem cover_985929 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_985929 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 45) (hex := hex_985929)
  decide +kernel
#print axioms cover_985929

def state_985975 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 214) else (if j.val < 3 then 69 else (if j.val < 4 then 206 else 171)))
def hex_985975 : String := "4240430905054009430A09"
theorem cover_985975 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_985975 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 11) (hex := hex_985975)
  decide +kernel
#print axioms cover_985975

def state_985986 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 215) else (if j.val < 3 then 69 else (if j.val < 4 then 206 else 171)))
def hex_985986 : String := "42400643444142050A06054406054043444142060906410942060844064109064344410A0A410A0A44414240060A0A420640060A41420509420640060A"
theorem cover_985986 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_985986 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 61) (hex := hex_985986)
  decide +kernel
#print axioms cover_985986

def state_986047 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 107) else (if j.val < 3 then 69 else (if j.val < 4 then 207 else 85)))
def hex_986047 : String := "44414240064344060505400943440909090641420540090942064006434441420609064109064406410506"
theorem cover_986047 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_986047 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 43) (hex := hex_986047)
  decide +kernel
#print axioms cover_986047

def state_986091 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 107) else (if j.val < 3 then 69 else (if j.val < 4 then 206 else 85)))
def hex_986091 : String := "44414240430A0A0A0A420740430A07074142050A424043440A05050540430A440A0A0A"
theorem cover_986091 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_986091 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 35) (hex := hex_986091)
  decide +kernel
#print axioms cover_986091

def state_986126 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 107) else (if j.val < 3 then 69 else (if j.val < 4 then 207 else 85)))
def hex_986126 : String := "4441420540430A4407080A0741054205404344410A07410542050A440705430A07"
theorem cover_986126 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_986126 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 33) (hex := hex_986126)
  decide +kernel
#print axioms cover_986126
end Mub6.Numerical.CircleFullD0.Forest
