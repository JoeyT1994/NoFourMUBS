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
def state_160158 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 28) else (if j.val < 3 then 29 else (if j.val < 4 then 31 else 20)))
def hex_160158 : String := "40414244084308080842440843400608060608"
theorem cover_160158 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_160158 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_160158)
  decide +kernel
#print axioms cover_160158

def state_160181 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 29) else (if j.val < 3 then 56 else (if j.val < 4 then 30 else 20)))
def hex_160181 : String := "4144094340424180094180090A40420741440907094207414409070A09"
theorem cover_160181 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_160181 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 29) (hex := hex_160181)
  decide +kernel
#print axioms cover_160181

def state_160210 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 29) else (if j.val < 3 then 57 else (if j.val < 4 then 30 else 20)))
def hex_160210 : String := "41440A43404241800A4180050A4042414406434006070606064241440A430A070A41440A430A40060A0A4409430A40060A"
theorem cover_160210 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_160210 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 49) (hex := hex_160210)
  decide +kernel
#print axioms cover_160210

def state_160259 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 29) else (if j.val < 3 then 28 else (if j.val < 4 then 30 else 20)))
def hex_160259 : String := "0A"
theorem cover_160259 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_160259 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_160259)
  decide +kernel
#print axioms cover_160259

def state_160260 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 29) else (if j.val < 3 then 28 else (if j.val < 4 then 31 else 20)))
def hex_160260 : String := "404241440907094144094340064241070606060642414405050A4144084340420741080A0A070A"
theorem cover_160260 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_160260 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 39) (hex := hex_160260)
  decide +kernel
#print axioms cover_160260

def state_160299 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 29) else (if j.val < 3 then 29 else (if j.val < 4 then 15 else 20)))
def hex_160299 : String := "4340414244430A4006084340050A4006414244084340060806060644084305064244094305060541420A080A40064108424406430A0606"
theorem cover_160299 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_160299 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 55) (hex := hex_160299)
  decide +kernel
#print axioms cover_160299

def state_160360 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 56) else (if j.val < 3 then 28 else (if j.val < 4 then 30 else 42)))
def hex_160360 : String := "42434044410542050909060509"
theorem cover_160360 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_160360 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_160360)
  decide +kernel
#print axioms cover_160360

def state_160374 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 57) else (if j.val < 3 then 56 else (if j.val < 4 then 30 else 42)))
def hex_160374 : String := "4340444142074340070607420743070707444106070707"
theorem cover_160374 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_160374 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 23) (hex := hex_160374)
  decide +kernel
#print axioms cover_160374
end Mub6.Numerical.CircleFullPrototype.Forest
