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
def state_990238 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 54) else (if j.val < 3 then 35 else (if j.val < 4 then 103 else 86)))
def hex_990238 : String := "41424043440A0A44410A07C6430A0A404306440A0A0642404344074142070A070707404344080844420705C60A"
theorem cover_990238 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_990238 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 45) (hex := hex_990238)
  decide +kernel
#print axioms cover_990238

def state_990283 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 54) else (if j.val < 3 then 35 else (if j.val < 4 then 103 else 87)))
def hex_990283 : String := "414240434441060A06C60606424043444142404309440909090A09414205064209400909C64344090A44074105094043440A4241060A06C64306440606"
theorem cover_990283 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_990283 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 61) (hex := hex_990283)
  decide +kernel
#print axioms cover_990283

def state_990344 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 54) else (if j.val < 3 then 35 else (if j.val < 4 then 51 else 43)))
def hex_990344 : String := "430A4441060741060A"
theorem cover_990344 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_990344 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_990344)
  decide +kernel
#print axioms cover_990344

def state_990353 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 55) else (if j.val < 3 then 17 else (if j.val < 4 then 51 else 43)))
def hex_990353 : String := "424043090707404344084142090808440741424043090907404308C6430909094309440709"
theorem cover_990353 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_990353 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 37) (hex := hex_990353)
  decide +kernel
#print axioms cover_990353

def state_990390 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 27) else (if j.val < 3 then 17 else (if j.val < 4 then 25 else 21)))
def hex_990390 : String := "43440A4106094407414240430A07060607"
theorem cover_990390 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_990390 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_990390)
  decide +kernel
#print axioms cover_990390

def state_990409 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 24 else 10)))
def hex_990409 : String := "414408424307070608"
theorem cover_990409 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_990409 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_990409)
  decide +kernel
#print axioms cover_990409

def state_990420 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 26) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 20)))
def hex_990420 : String := "42400543054142440540050A050505"
theorem cover_990420 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_990420 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_990420)
  decide +kernel
#print axioms cover_990420

def state_990435 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 26) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 21)))
def hex_990435 : String := "4240430741074405074341064408074144424007060606444240430541440507054341060541440506050542400743064441064206050606400506"
theorem cover_990435 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_990435 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 59) (hex := hex_990435)
  decide +kernel
#print axioms cover_990435
end Mub6.Numerical.CircleFullD0.Forest
