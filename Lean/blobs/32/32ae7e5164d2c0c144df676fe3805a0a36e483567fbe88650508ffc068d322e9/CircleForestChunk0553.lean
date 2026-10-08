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
def state_294218 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 12) else (if j.val < 3 then 12 else (if j.val < 4 then 14 else 9)))
def hex_294218 : String := "41424043074441420540064307050506430744054142050705404307440A074307444142400A4307050A0A07420707"
theorem cover_294218 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_294218 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 47) (hex := hex_294218)
  decide +kernel
#print axioms cover_294218

def state_294265 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 12) else (if j.val < 3 then 12 else (if j.val < 4 then 15 else 4)))
def hex_294265 : String := "44410A054142404443410A050506054009440A0942050A"
theorem cover_294265 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_294265 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 23) (hex := hex_294265)
  decide +kernel
#print axioms cover_294265

def state_294289 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 12) else (if j.val < 3 then 12 else (if j.val < 4 then 14 else 4)))
def hex_294289 : String := "444142054340440641060706400A0605414243444007050705434440070707444041424307050605410605400707420507"
theorem cover_294289 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_294289 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 49) (hex := hex_294289)
  decide +kernel
#print axioms cover_294289

def state_294338 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 12) else (if j.val < 3 then 12 else (if j.val < 4 then 15 else 4)))
def hex_294338 : String := "444142050A0541420544400A0540434142050905050505"
theorem cover_294338 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_294338 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 23) (hex := hex_294338)
  decide +kernel
#print axioms cover_294338

def state_294361 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 12) else (if j.val < 3 then 13 else (if j.val < 4 then 7 else 4)))
def hex_294361 : String := "4043440A41424043070943070A07070A434441060A414243074406070607440A4142440A40090A0A0A"
theorem cover_294361 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_294361 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 41) (hex := hex_294361)
  decide +kernel
#print axioms cover_294361

def state_294402 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 13) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 4)))
def hex_294402 : String := "4240434405070505400A43070A"
theorem cover_294402 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_294402 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_294402)
  decide +kernel
#print axioms cover_294402

def state_294415 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 5)))
def hex_294415 : String := "4142444043414206070641094206064307414244050744400943070507420507074440430709430741090707420707"
theorem cover_294415 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_294415 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 47) (hex := hex_294415)
  decide +kernel
#print axioms cover_294415
end Mub6.Numerical.CircleFullPrototype.Forest
