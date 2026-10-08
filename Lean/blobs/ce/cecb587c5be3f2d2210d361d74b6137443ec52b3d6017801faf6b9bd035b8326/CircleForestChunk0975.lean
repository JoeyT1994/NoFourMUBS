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
def state_1534489 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 104) else (if j.val < 3 then 52 else (if j.val < 4 then 38 else 32)))
def hex_1534489 : String := "4243448740414243054487400941054243050A0509094142430544874041054243050A05070606448740410A0A410A0A43090A"
theorem cover_1534489 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1534489 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 51) (hex := hex_1534489)
  decide +kernel
#print axioms cover_1534489

def state_1534540 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 105) else (if j.val < 3 then 52 else (if j.val < 4 then 38 else 32)))
def hex_1534540 : String := "4243094440420506064042414309050709424143060A060606"
theorem cover_1534540 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1534540 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 25) (hex := hex_1534540)
  decide +kernel
#print axioms cover_1534540

def state_1534565 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 52) else (if j.val < 3 then 52 else (if j.val < 4 then 38 else 32)))
def hex_1534565 : String := "41424306440640410A06060606"
theorem cover_1534565 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1534565 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1534565)
  decide +kernel
#print axioms cover_1534565

def state_1534580 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 104) else (if j.val < 3 then 52 else (if j.val < 4 then 38 else 33)))
def hex_1534580 : String := "42434440410509410542430544400505050505444041080A410A0A404105420A054105420A0543050A"
theorem cover_1534580 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1534580 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 41) (hex := hex_1534580)
  decide +kernel
#print axioms cover_1534580

def state_1534621 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 105) else (if j.val < 3 then 52 else (if j.val < 4 then 38 else 33)))
def hex_1534621 : String := "42430944404241430907070942414344400906400942410A06060A430644060A410A0640424143050A0909424143444005420505050A4309440A0A410A0909"
theorem cover_1534621 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1534621 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 63) (hex := hex_1534621)
  decide +kernel
#print axioms cover_1534621

def state_1534685 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 104) else (if j.val < 3 then 52 else (if j.val < 4 then 38 else 33)))
def hex_1534685 : String := "424344404105424305060506054440410A0A41070A40410A0A0743050A"
theorem cover_1534685 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1534685 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 29) (hex := hex_1534685)
  decide +kernel
#print axioms cover_1534685
end Mub6.Numerical.CircleFullD0.Forest
