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
def state_1461340 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 21) else (if j.val < 3 then 22 else (if j.val < 4 then 31 else 8)))
def hex_1461340 : String := "444042410943444042090505094440424109434440420905050944E740420707094105430544050842090540420908094105084209054042090809"
theorem cover_1461340 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1461340 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 14) (count := 59) (hex := hex_1461340)
  decide +kernel
#print axioms cover_1461340

def state_1461399 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 10) else (if j.val < 3 then 23 else (if j.val < 4 then 15 else 8)))
def hex_1461399 : String := "410508"
theorem cover_1461399 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1461399 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_1461399)
  decide +kernel
#print axioms cover_1461399

def state_1461402 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 10) else (if j.val < 3 then 11 else (if j.val < 4 then 15 else 8)))
def hex_1461402 : String := "420905"
theorem cover_1461402 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1461402 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_1461402)
  decide +kernel
#print axioms cover_1461402

def state_1461405 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 11 else (if j.val < 4 then 15 else 9)))
def hex_1461405 : String := "4042090809"
theorem cover_1461405 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1461405 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1461405)
  decide +kernel
#print axioms cover_1461405

def state_1461411 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 10 else (if j.val < 4 then 7 else 4)))
def hex_1461411 : String := "43440A094440414209430A4440414209430A444041420943444041090A090944E740410905090A0A0A0A0A0A0A0A4041090509"
theorem cover_1461411 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1461411 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 20) (count := 51) (hex := hex_1461411)
  decide +kernel
#print axioms cover_1461411

def state_1461463 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 14 else 4)))
def hex_1461463 : String := "440808"
theorem cover_1461463 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1461463 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_1461463)
  decide +kernel
#print axioms cover_1461463

def state_1461471 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 22 else (if j.val < 4 then 30 else 8)))
def hex_1461471 : String := "444041080841080808"
theorem cover_1461471 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1461471 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_1461471)
  decide +kernel
#print axioms cover_1461471

def state_1461485 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 44) else (if j.val < 3 then 44 else (if j.val < 4 then 62 else 16)))
def hex_1461485 : String := "4440414243064440064108080608420A08414209050A400808"
theorem cover_1461485 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1461485 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 25) (hex := hex_1461485)
  decide +kernel
#print axioms cover_1461485

def state_1461513 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 88) else (if j.val < 3 then 44 else (if j.val < 4 then 63 else 32)))
def hex_1461513 : String := "424344404142060642060641420905420A08400641080844E7404142060642060641420908420A0843084442E70808"
theorem cover_1461513 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1461513 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 47) (hex := hex_1461513)
  decide +kernel
#print axioms cover_1461513

def state_1461560 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 89) else (if j.val < 3 then 44 else (if j.val < 4 then 63 else 32)))
def hex_1461560 : String := "42434441404206060A070A4441E70A41404205060A0A4308444142E7080908"
theorem cover_1461560 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1461560 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 31) (hex := hex_1461560)
  decide +kernel
#print axioms cover_1461560
end Mub6.Numerical.CircleFullD0.Forest
