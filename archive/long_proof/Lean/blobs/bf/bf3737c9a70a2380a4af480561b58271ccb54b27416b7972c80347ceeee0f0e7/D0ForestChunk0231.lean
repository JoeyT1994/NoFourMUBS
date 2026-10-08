import D0FullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_992837 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 53) else (if j.val < 3 then 35 else (if j.val < 4 then 52 else 42)))
def hex_992837 : String := "4341444209090944420605424006434441090641090644060940430909434409090941440909440642064006430909"
theorem cover_992837 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_992837 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 47) (hex := hex_992837)
  decide +kernel
#print axioms cover_992837

def state_992886 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 106) else (if j.val < 3 then 35 else (if j.val < 4 then 104 else 42)))
def hex_992886 : String := "4442404309094341094409094108440708400943090942400943090809"
theorem cover_992886 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_992886 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 29) (hex := hex_992886)
  decide +kernel
#print axioms cover_992886

def state_992916 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 107) else (if j.val < 3 then 35 else (if j.val < 4 then 104 else 84)))
def hex_992916 : String := "42404341444206054240060909440542060541440609064341440742070A070740430541090543410A054144050905"
theorem cover_992916 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_992916 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 47) (hex := hex_992916)
  decide +kernel
#print axioms cover_992916

def state_992965 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 107) else (if j.val < 3 then 70 else (if j.val < 4 then 104 else 85)))
def hex_992965 : String := "4344410942064043090643440509440609410942400643444109060944060640094309094441090641094206400609"
theorem cover_992965 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_992965 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 47) (hex := hex_992965)
  decide +kernel
#print axioms cover_992965

def state_993013 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 107) else (if j.val < 3 then 70 else (if j.val < 4 then 208 else 85)))
def hex_993013 : String := "44414240430908084009094207404344070A070741420809424043444108074108420740090744070843440708074043440A09440909430A0A"
theorem cover_993013 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_993013 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 57) (hex := hex_993013)
  decide +kernel
#print axioms cover_993013

def state_993070 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 107) else (if j.val < 3 then 70 else (if j.val < 4 then 209 else 85)))
def hex_993070 : String := "444108074108420840434409080808"
theorem cover_993070 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_993070 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 15) (hex := hex_993070)
  decide +kernel
#print axioms cover_993070
end Mub6.Numerical.CircleFullD0.Forest
