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
def state_57826 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 7)))
def hex_57826 : String := "41424344404309410609094043060606444041064243440740060507064106420A06064306064243440905444007074041420543060605054309440709"
theorem cover_57826 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_57826 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 61) (hex := hex_57826)
  decide +kernel
#print axioms cover_57826

def state_57887 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 3)))
def hex_57887 : String := "440740414243440706060607414243060A43440640064206060707"
theorem cover_57887 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_57887 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 27) (hex := hex_57887)
  decide +kernel
#print axioms cover_57887

def state_57920 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 2)))
def hex_57920 : String := "44420A400A41430944420806090909"
theorem cover_57920 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_57920 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_57920)
  decide +kernel
#print axioms cover_57920

def state_57938 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 10 else 4)))
def hex_57938 : String := "400A4144420708080A"
theorem cover_57938 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_57938 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_57938)
  decide +kernel
#print axioms cover_57938

def state_57948 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 11 else 4)))
def hex_57948 : String := "4144420A43400541050A0505440A0A"
theorem cover_57948 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_57948 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_57948)
  decide +kernel
#print axioms cover_57948

def state_57964 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 8) else (if j.val < 3 then 12 else (if j.val < 4 then 11 else 4)))
def hex_57964 : String := "444207430740414407054407434205050507424340050840050643084005440605"
theorem cover_57964 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_57964 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 33) (hex := hex_57964)
  decide +kernel
#print axioms cover_57964

def state_57997 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 12 else (if j.val < 4 then 11 else 4)))
def hex_57997 : String := "44424307400A07430A4041440A430A420A0A0A41070A42430A400A414406060A430A404144430A05050A4144434207400A0606430805440A09"
theorem cover_57997 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_57997 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 57) (hex := hex_57997)
  decide +kernel
#print axioms cover_57997

def state_58055 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 4)))
def hex_58055 : String := "40410844060841440808444243090A43060609"
theorem cover_58055 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_58055 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 19) (hex := hex_58055)
  decide +kernel
#print axioms cover_58055
end Mub6.Numerical.CircleFullPrototype.Forest
