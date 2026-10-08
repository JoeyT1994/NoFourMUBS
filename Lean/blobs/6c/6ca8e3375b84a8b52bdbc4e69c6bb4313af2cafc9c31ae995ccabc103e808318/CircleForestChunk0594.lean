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
def state_381433 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 2)))
def hex_381433 : String := "444042410A4308050A420A41430A0A430A0A404205440A0542440A05444143400A4208440A0A0643080A41430A0A0A"
theorem cover_381433 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_381433 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 47) (hex := hex_381433)
  decide +kernel
#print axioms cover_381433

def state_381483 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 3)))
def hex_381483 : String := "4344414344400A420A0A40420A0742094143440A0A090A44050A4344050A05414340420A0A420A0A0A430A404205070A4405410805"
theorem cover_381483 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_381483 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 53) (hex := hex_381483)
  decide +kernel
#print axioms cover_381483

def state_381536 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 3)))
def hex_381536 : String := "4344414243444007414307440507074007074405084344400541420705050708424307054307054108420A07440508"
theorem cover_381536 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_381536 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 47) (hex := hex_381536)
  decide +kernel
#print axioms cover_381536

def state_381583 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
def hex_381583 : String := "42434405430605054344050705"
theorem cover_381583 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_381583 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_381583)
  decide +kernel
#print axioms cover_381583

def state_381598 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 3)))
def hex_381598 : String := "4344404143444209410943440509054206090943440506054143444205400905060943060540414306090A06440509"
theorem cover_381598 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_381598 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 47) (hex := hex_381598)
  decide +kernel
#print axioms cover_381598
end Mub6.Numerical.CircleFullPrototype.Forest
