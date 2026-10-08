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
def state_1477262 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 193 else 176) else (if j.val < 3 then 66 else (if j.val < 4 then 180 else 232)))
def hex_1477262 : String := "42404341440707440707074341090A0A40434144084209400608440842400708084107074308410908"
theorem cover_1477262 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1477262 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 41) (hex := hex_1477262)
  decide +kernel
#print axioms cover_1477262

def state_1477303 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 193 else 176) else (if j.val < 3 then 66 else (if j.val < 4 then 180 else 233)))
def hex_1477303 : String := "424043410744070707430909404341444209400709420740050944424007430807400708424005430507050743410944084209404305090841094442070809"
theorem cover_1477303 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1477303 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 63) (hex := hex_1477303)
  decide +kernel
#print axioms cover_1477303

def state_1477366 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 193 else 177) else (if j.val < 3 then 66 else (if j.val < 4 then 180 else 116)))
def hex_1477366 : String := "44420A4043080A08424043414407070A070A4043414442400708080544080541070743414408424043050A0808080A"
theorem cover_1477366 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1477366 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 47) (hex := hex_1477366)
  decide +kernel
#print axioms cover_1477366

def state_1477413 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 193 else 88) else (if j.val < 3 then 66 else (if j.val < 4 then 181 else 116)))
def hex_1477413 : String := "414407070A"
theorem cover_1477413 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1477413 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1477413)
  decide +kernel
#print axioms cover_1477413

def state_1477419 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 192 else 88) else (if j.val < 3 then 67 else (if j.val < 4 then 90 else 116)))
def hex_1477419 : String := "43414406424005434105050705440642400543050505410707"
theorem cover_1477419 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1477419 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 25) (hex := hex_1477419)
  decide +kernel
#print axioms cover_1477419

def state_1477446 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 193 else 176) else (if j.val < 3 then 67 else (if j.val < 4 then 180 else 116)))
def hex_1477446 : String := "44424043084106060808424043414442404305050808054408054144070744070543410908410944084240430507080840434105054144060505430808"
theorem cover_1477446 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1477446 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 61) (hex := hex_1477446)
  decide +kernel
#print axioms cover_1477446
end Mub6.Numerical.CircleFullD0.Forest
