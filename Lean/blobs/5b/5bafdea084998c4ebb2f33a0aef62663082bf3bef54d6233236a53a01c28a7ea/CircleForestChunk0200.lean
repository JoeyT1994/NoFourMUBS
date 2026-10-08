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
def state_985439 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 107) else (if j.val < 3 then 68 else (if j.val < 4 then 102 else 84)))
def hex_985439 : String := "404341444207400807424006430A07404308410A060A440642060841440642064006430A070643410A0707"
theorem cover_985439 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_985439 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 43) (hex := hex_985439)
  decide +kernel
#print axioms cover_985439

def state_985482 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 107) else (if j.val < 3 then 69 else (if j.val < 4 then 102 else 84)))
def hex_985482 : String := "40434144080A084144424043080607054240430A410A060A0A44074240060708430A410A07"
theorem cover_985482 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_985482 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 37) (hex := hex_985482)
  decide +kernel
#print axioms cover_985482

def state_985522 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 107) else (if j.val < 3 then 68 else (if j.val < 4 then 204 else 85)))
def hex_985522 : String := "4441424043440605050540430A440A0A0A4240064344060506400843080A414205404305050542054043084406410505430A440A05"
theorem cover_985522 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_985522 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 53) (hex := hex_985522)
  decide +kernel
#print axioms cover_985522

def state_985575 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 107) else (if j.val < 3 then 68 else (if j.val < 4 then 205 else 85)))
def hex_985575 : String := "444142054043440641050506430A4441050505420640064344060606410542054006430505"
theorem cover_985575 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_985575 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 37) (hex := hex_985575)
  decide +kernel
#print axioms cover_985575

def state_985612 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 107) else (if j.val < 3 then 68 else (if j.val < 4 then 102 else 85)))
def hex_985612 : String := "4344410A0A410542050A4441050705"
theorem cover_985612 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_985612 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 15) (hex := hex_985612)
  decide +kernel
#print axioms cover_985612

def state_985629 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 107) else (if j.val < 3 then 69 else (if j.val < 4 then 204 else 85)))
def hex_985629 : String := "44410A08410A4240080A08"
theorem cover_985629 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_985629 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_985629)
  decide +kernel
#print axioms cover_985629

def state_985641 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 107) else (if j.val < 3 then 69 else (if j.val < 4 then 205 else 170)))
def hex_985641 : String := "41424043440A0A4441090641094206090A40430A4409090A4240430806430A4407410A0640080A"
theorem cover_985641 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_985641 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 39) (hex := hex_985641)
  decide +kernel
#print axioms cover_985641
end Mub6.Numerical.CircleFullD0.Forest
