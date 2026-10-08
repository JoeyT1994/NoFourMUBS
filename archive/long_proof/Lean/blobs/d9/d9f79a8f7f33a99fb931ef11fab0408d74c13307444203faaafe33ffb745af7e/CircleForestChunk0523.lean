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
def state_1314286 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 57) else (if j.val < 3 then 16 else (if j.val < 4 then 50 else 47)))
def hex_1314286 : String := "4244430640060707444306400641420706064306400607"
theorem cover_1314286 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1314286 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_1314286)
  decide +kernel
#print axioms cover_1314286

def state_1314311 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 56) else (if j.val < 3 then 32 else (if j.val < 4 then 51 else 47)))
def hex_1314311 : String := "444043410808084341420744404307080A40070742074440430708070741060840084341070708"
theorem cover_1314311 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1314311 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 39) (hex := hex_1314311)
  decide +kernel
#print axioms cover_1314311

def state_1314351 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 56) else (if j.val < 3 then 33 else (if j.val < 4 then 51 else 94)))
def hex_1314351 : String := "40434109090943414244400905404305080505424440090A40094307090909"
theorem cover_1314351 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1314351 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 31) (hex := hex_1314351)
  decide +kernel
#print axioms cover_1314351

def state_1314382 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 56) else (if j.val < 3 then 33 else (if j.val < 4 then 51 else 95)))
def hex_1314382 : String := "40434142080508084341424440070507054244400707074440094305094008074142060908"
theorem cover_1314382 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1314382 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 37) (hex := hex_1314382)
  decide +kernel
#print axioms cover_1314382

def state_1314419 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 57) else (if j.val < 3 then 16 else (if j.val < 4 then 51 else 47)))
def hex_1314419 : String := "424440054341420544400507070505084440094341424409400843070809090940084341420744090842050908"
theorem cover_1314419 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1314419 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 45) (hex := hex_1314419)
  decide +kernel
#print axioms cover_1314419

def state_1314465 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 28) else (if j.val < 3 then 16 else (if j.val < 4 then 50 else 47)))
def hex_1314465 : String := "41420744054007054207444043074107070707"
theorem cover_1314465 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1314465 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_1314465)
  decide +kernel
#print axioms cover_1314465

def state_1314485 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 56) else (if j.val < 3 then 16 else (if j.val < 4 then 51 else 47)))
def hex_1314485 : String := "42440A40430706064440434105420A050A0A4043410542070541060A06"
theorem cover_1314485 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1314485 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 29) (hex := hex_1314485)
  decide +kernel
#print axioms cover_1314485
end Mub6.Numerical.CircleFullD0.Forest
