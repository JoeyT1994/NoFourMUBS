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
def state_1629348 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 52) else (if j.val < 3 then 53 else (if j.val < 4 then 48 else 32)))
def hex_1629348 : String := "4341424007090742400609064142090606"
theorem cover_1629348 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1629348 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 17) (hex := hex_1629348)
  decide +kernel
#print axioms cover_1629348

def state_1629366 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 52) else (if j.val < 3 then 53 else (if j.val < 4 then 96 else 33)))
def hex_1629366 : String := "414240444307410706430541420505050507424044060505400605"
theorem cover_1629366 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1629366 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 27) (hex := hex_1629366)
  decide +kernel
#print axioms cover_1629366

def state_1629393 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 52) else (if j.val < 3 then 53 else (if j.val < 4 then 97 else 33)))
def hex_1629393 : String := "414240444341420906060643414240440605054006054205064142090606440943050940064406434107050942400644060506"
theorem cover_1629393 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1629393 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 51) (hex := hex_1629393)
  decide +kernel
#print axioms cover_1629393

def state_1629444 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 53) else (if j.val < 3 then 26 else (if j.val < 4 then 48 else 16)))
def hex_1629444 : String := "424044064308064443420808424109060643084241050541400605064006440643414205060606"
theorem cover_1629444 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1629444 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 39) (hex := hex_1629444)
  decide +kernel
#print axioms cover_1629444

def state_1629483 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 26) else (if j.val < 3 then 26 else (if j.val < 4 then 49 else 16)))
def hex_1629483 : String := "41424044064341420A0606410A064409434142090942090909400644064341420906060642400644064342410706060606"
theorem cover_1629483 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1629483 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 49) (hex := hex_1629483)
  decide +kernel
#print axioms cover_1629483

def state_1629536 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 52) else (if j.val < 3 then 52 else (if j.val < 4 then 48 else 17)))
def hex_1629536 : String := "44434142400A05404443090A0944430541420505050542080841420A400A444341420A0A0A0A0A420A0A434142050505410A0A"
theorem cover_1629536 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1629536 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 51) (hex := hex_1629536)
  decide +kernel
#print axioms cover_1629536
end Mub6.Numerical.CircleFullD0.Forest
