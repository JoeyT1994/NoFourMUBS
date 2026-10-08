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
def state_1626205 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 51) else (if j.val < 3 then 52 else (if j.val < 4 then 49 else 17)))
def hex_1626205 : String := "44434142074008084207404443414207084207090743410707074409434105050741070743414206404443060706064207400A44070507"
theorem cover_1626205 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1626205 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 55) (hex := hex_1626205)
  decide +kernel
#print axioms cover_1626205

def state_1626261 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 51) else (if j.val < 3 then 53 else (if j.val < 4 then 49 else 17)))
def hex_1626261 : String := "4443414240080840050842400A4443410A060A0A064108420A064341420A400A444341080A080A420A0A410A0A"
theorem cover_1626261 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1626261 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 45) (hex := hex_1626261)
  decide +kernel
#print axioms cover_1626261

def state_1626309 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 102) else (if j.val < 3 then 53 else (if j.val < 4 then 98 else 34)))
def hex_1626309 : String := "4240084408084008440808"
theorem cover_1626309 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1626309 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 11) (hex := hex_1626309)
  decide +kernel
#print axioms cover_1626309

def state_1626321 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 103) else (if j.val < 3 then 106 else (if j.val < 4 then 98 else 34)))
def hex_1626321 : String := "40444341420808420940060909434142400808400808420A0A41080A4409434142090942050509"
theorem cover_1626321 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1626321 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 39) (hex := hex_1626321)
  decide +kernel
#print axioms cover_1626321

def state_1626360 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 103) else (if j.val < 3 then 107 else (if j.val < 4 then 98 else 34)))
def hex_1626360 : String := "40444341420806060643414240080840060842400644060A064108064409434142090942090909"
theorem cover_1626360 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1626360 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 39) (hex := hex_1626360)
  decide +kernel
#print axioms cover_1626360

def state_1626399 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 51) else (if j.val < 3 then 53 else (if j.val < 4 then 99 else 34)))
def hex_1626399 : String := "41084240440808094044060609"
theorem cover_1626399 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1626399 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_1626399)
  decide +kernel
#print axioms cover_1626399

def state_1626415 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 102) else (if j.val < 3 then 106 else (if j.val < 4 then 98 else 35)))
def hex_1626415 : String := "4044434108420808084341060A084443060806"
theorem cover_1626415 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1626415 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 19) (hex := hex_1626415)
  decide +kernel
#print axioms cover_1626415
end Mub6.Numerical.CircleFullD0.Forest
