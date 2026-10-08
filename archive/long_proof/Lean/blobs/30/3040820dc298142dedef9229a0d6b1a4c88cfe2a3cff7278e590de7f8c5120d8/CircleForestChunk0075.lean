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
def state_17908 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 2 else 2)))
def hex_17908 : String := "4344410942094043090909410542054440430805050544410542054340440705050505"
theorem cover_17908 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_17908 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 35) (hex := hex_17908)
  decide +kernel
#print axioms cover_17908

def state_17944 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 2)))
def hex_17944 : String := "4441404243084409080809404243094409410909430844090909410844404243080807420A0707"
theorem cover_17944 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_17944 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 39) (hex := hex_17944)
  decide +kernel
#print axioms cover_17944

def state_17985 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 12) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 4)))
def hex_17985 : String := "4340424441050905444143084008050941070942054441050905404205444143400605060A41050905"
theorem cover_17985 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_17985 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 41) (hex := hex_17985)
  decide +kernel
#print axioms cover_17985

def state_18026 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 13) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 4)))
def hex_18026 : String := "4340424409410943090944094109430909420909404244090944090909"
theorem cover_18026 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_18026 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 29) (hex := hex_18026)
  decide +kernel
#print axioms cover_18026

def state_18055 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 5)))
def hex_18055 : String := "410543444042054107430844404205070505050505"
theorem cover_18055 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_18055 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 21) (hex := hex_18055)
  decide +kernel
#print axioms cover_18055

def state_18079 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 4)))
def hex_18079 : String := "424041430A07070A4041430A4407420A0A430A44070A0A"
theorem cover_18079 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_18079 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_18079)
  decide +kernel
#print axioms cover_18079

def state_18103 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 12 else (if j.val < 4 then 4 else 5)))
def hex_18103 : String := "4440414342050A05434244074007050A42070A41054342050A05404105434244400605060942050A05"
theorem cover_18103 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_18103 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 41) (hex := hex_18103)
  decide +kernel
#print axioms cover_18103
end Mub6.Numerical.CircleFullPrototype.Forest
