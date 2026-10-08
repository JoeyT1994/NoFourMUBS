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
def state_986883 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 107) else (if j.val < 3 then 70 else (if j.val < 4 then 103 else 86)))
def hex_986883 : String := "43444107424043070943440A074441090A09400743070A074441094240430909434441094209090944090940094309094107C6"
theorem cover_986883 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_986883 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 51) (hex := hex_986883)
  decide +kernel
#print axioms cover_986883

def state_986934 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 107) else (if j.val < 3 then 70 else (if j.val < 4 then 103 else 86)))
def hex_986934 : String := "434441060A4106424043060505064441420506424043440A0A44410542050A05430A0A40430A4409090A4105C6"
theorem cover_986934 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_986934 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 45) (hex := hex_986934)
  decide +kernel
#print axioms cover_986934

def state_986979 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 107) else (if j.val < 3 then 71 else (if j.val < 4 then 103 else 86)))
def hex_986979 : String := "404307444107420907074306440A06"
theorem cover_986979 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_986979 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 15) (hex := hex_986979)
  decide +kernel
#print axioms cover_986979

def state_986994 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 53) else (if j.val < 3 then 35 else (if j.val < 4 then 103 else 87)))
def hex_986994 : String := "410742400743060507"
theorem cover_986994 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_986994 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_986994)
  decide +kernel
#print axioms cover_986994

def state_987004 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 27) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 20)))
def hex_987004 : String := "4240064341440642064006070606404305410505434144050805414405424006070505"
theorem cover_987004 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_987004 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 35) (hex := hex_987004)
  decide +kernel
#print axioms cover_987004

def state_987041 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 27) else (if j.val < 3 then 16 else (if j.val < 4 then 25 else 21)))
def hex_987041 : String := "434406414206060606"
theorem cover_987041 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_987041 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_987041)
  decide +kernel
#print axioms cover_987041

def state_987052 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 27) else (if j.val < 3 then 16 else (if j.val < 4 then 50 else 42)))
def hex_987052 : String := "4142400643090640430806434408414209080844074142400607404308064309070606"
theorem cover_987052 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_987052 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 35) (hex := hex_987052)
  decide +kernel
#print axioms cover_987052

def state_987089 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 54) else (if j.val < 3 then 32 else (if j.val < 4 then 50 else 43)))
def hex_987089 : String := "400605"
theorem cover_987089 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_987089 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_987089)
  decide +kernel
#print axioms cover_987089

def state_987093 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 54) else (if j.val < 3 then 33 else (if j.val < 4 then 50 else 43)))
def hex_987093 : String := "4344414206080641420543050508444142064006434406050606410506"
theorem cover_987093 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_987093 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 29) (hex := hex_987093)
  decide +kernel
#print axioms cover_987093
end Mub6.Numerical.CircleFullD0.Forest
