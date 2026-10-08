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
def state_1515537 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 90) else (if j.val < 3 then 84 else (if j.val < 4 then 53 else 62)))
def hex_1515537 : String := "434440410543050941430542444005060505430542440A0505054440410842080941420643444009060508420A4344090509400841064206430506"
theorem cover_1515537 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1515537 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 59) (hex := hex_1515537)
  decide +kernel
#print axioms cover_1515537

def state_1515596 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 90) else (if j.val < 3 then 85 else (if j.val < 4 then 53 else 62)))
def hex_1515596 : String := "43054440414209050941424305440905430509424309090905"
theorem cover_1515596 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1515596 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 25) (hex := hex_1515596)
  decide +kernel
#print axioms cover_1515596

def state_1515621 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 91) else (if j.val < 3 then 42 else (if j.val < 4 then 53 else 62)))
def hex_1515621 : String := "42434440094143050A09054440090A404108074142064305080A430544094005410509"
theorem cover_1515621 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1515621 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 35) (hex := hex_1515621)
  decide +kernel
#print axioms cover_1515621

def state_1515658 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 90) else (if j.val < 3 then 84 else (if j.val < 4 then 53 else 62)))
def hex_1515658 : String := "434440414342050506434206054206440A050606444041060A0606"
theorem cover_1515658 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1515658 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 27) (hex := hex_1515658)
  decide +kernel
#print axioms cover_1515658

def state_1515686 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 90) else (if j.val < 3 then 85 else (if j.val < 4 then 106 else 62)))
def hex_1515686 : String := "44404105054142430506050805"
theorem cover_1515686 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1515686 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 13) (hex := hex_1515686)
  decide +kernel
#print axioms cover_1515686

def state_1515700 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 90) else (if j.val < 3 then 85 else (if j.val < 4 then 107 else 124)))
def hex_1515700 : String := "404142434440410542060506050643054440410709070542434440090A05440A064344400507054409400541050941420643060642064308440A06"
theorem cover_1515700 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1515700 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 59) (hex := hex_1515700)
  decide +kernel
#print axioms cover_1515700

def state_1515759 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 90) else (if j.val < 3 then 85 else (if j.val < 4 then 107 else 125)))
def hex_1515759 : String := "40410542060506"
theorem cover_1515759 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1515759 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1515759)
  decide +kernel
#print axioms cover_1515759
end Mub6.Numerical.CircleFullD0.Forest
