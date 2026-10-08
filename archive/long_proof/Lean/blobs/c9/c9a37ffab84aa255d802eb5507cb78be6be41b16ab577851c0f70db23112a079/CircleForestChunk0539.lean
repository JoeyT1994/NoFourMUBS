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
def state_1318046 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 31) else (if j.val < 3 then 18 else (if j.val < 4 then 25 else 25)))
def hex_1318046 : String := "4344420606420741070644424140440608444306054307080541400644064306424140064409080609064207414008430A0840084344060708"
theorem cover_1318046 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1318046 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 57) (hex := hex_1318046)
  decide +kernel
#print axioms cover_1318046

def state_1318104 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 31) else (if j.val < 3 then 18 else (if j.val < 4 then 50 else 25)))
def hex_1318104 : String := "44420741404306440642060608064207414007430707404306074307440707"
theorem cover_1318104 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1318104 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 31) (hex := hex_1318104)
  decide +kernel
#print axioms cover_1318104

def state_1318137 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 31) else (if j.val < 3 then 36 else (if j.val < 4 then 51 else 50)))
def hex_1318137 : String := "4140444307420541404405050A054307420541400707054443070A0705"
theorem cover_1318137 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1318137 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 29) (hex := hex_1318137)
  decide +kernel
#print axioms cover_1318137

def state_1318169 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 62) else (if j.val < 3 then 37 else (if j.val < 4 then 51 else 100)))
def hex_1318169 : String := "4342060642414009440943420A0909400644060909"
theorem cover_1318169 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1318169 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 21) (hex := hex_1318169)
  decide +kernel
#print axioms cover_1318169

def state_1318191 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 62) else (if j.val < 3 then 37 else (if j.val < 4 then 102 else 101)))
def hex_1318191 : String := "4241404406074443064207060740060741400644060506"
theorem cover_1318191 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1318191 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_1318191)
  decide +kernel
#print axioms cover_1318191

def state_1318217 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 188 else 124) else (if j.val < 3 then 74 else (if j.val < 4 then 103 else 101)))
def hex_1318217 : String := "444342070609434207414008070908"
theorem cover_1318217 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1318217 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 15) (hex := hex_1318217)
  decide +kernel
#print axioms cover_1318217

def state_1318232 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 189 else 124) else (if j.val < 3 then 74 else (if j.val < 4 then 103 else 101)))
def hex_1318232 : String := "444342074140094443060943070940064406430609420A09434207414007074007074207414009440943420705084008440908"
theorem cover_1318232 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1318232 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 51) (hex := hex_1318232)
  decide +kernel
#print axioms cover_1318232

def state_1318283 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 125) else (if j.val < 3 then 74 else (if j.val < 4 then 103 else 101)))
def hex_1318283 : String := "40440943420606084443420506094342074140060706420509"
theorem cover_1318283 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1318283 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 25) (hex := hex_1318283)
  decide +kernel
#print axioms cover_1318283
end Mub6.Numerical.CircleFullD0.Forest
