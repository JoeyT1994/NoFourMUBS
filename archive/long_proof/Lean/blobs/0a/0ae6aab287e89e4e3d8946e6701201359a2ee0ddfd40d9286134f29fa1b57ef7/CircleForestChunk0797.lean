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
def state_1491965 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 43) else (if j.val < 3 then 39 else (if j.val < 4 then 50 else 60)))
def hex_1491965 : String := "43414209444043050909054244400709074440430541070743410942090541094207444005080505414207444007090942074440074341070707400707"
theorem cover_1491965 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1491965 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 61) (hex := hex_1491965)
  decide +kernel
#print axioms cover_1491965

def state_1492026 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 43) else (if j.val < 3 then 39 else (if j.val < 4 then 50 else 61)))
def hex_1492026 : String := "4043050743410505410607"
theorem cover_1492026 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1492026 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 11) (hex := hex_1492026)
  decide +kernel
#print axioms cover_1492026

def state_1492037 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 21) else (if j.val < 3 then 19 else (if j.val < 4 then 51 else 30)))
def hex_1492037 : String := "4142064440084309060642074440074341070707400706"
theorem cover_1492037 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1492037 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_1492037)
  decide +kernel
#print axioms cover_1492037

def state_1492060 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 21) else (if j.val < 3 then 19 else (if j.val < 4 then 25 else 31)))
def hex_1492060 : String := "400843410642060506"
theorem cover_1492060 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1492060 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1492060)
  decide +kernel
#print axioms cover_1492060

def state_1492069 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 10) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 15)))
def hex_1492069 : String := "4341094209444309404109090909410942064440434109420644404309410642060906064106420644404341064206444043060606060606060606"
theorem cover_1492069 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1492069 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 17) (count := 59) (hex := hex_1492069)
  decide +kernel
#print axioms cover_1492069

def state_1492129 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 10) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 7)))
def hex_1492129 : String := "4440080506"
theorem cover_1492129 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1492129 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1492129)
  decide +kernel
#print axioms cover_1492129

def state_1492137 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 20) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 14)))
def hex_1492137 : String := "434208444043420844050808434205440541400843440508050505400843420844410808080808"
theorem cover_1492137 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1492137 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 39) (hex := hex_1492137)
  decide +kernel
#print axioms cover_1492137

def state_1492176 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 21) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 14)))
def hex_1492176 : String := "434244050844054041080841434208440508084342054405400741050505420505"
theorem cover_1492176 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1492176 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 33) (hex := hex_1492176)
  decide +kernel
#print axioms cover_1492176
end Mub6.Numerical.CircleFullD0.Forest
