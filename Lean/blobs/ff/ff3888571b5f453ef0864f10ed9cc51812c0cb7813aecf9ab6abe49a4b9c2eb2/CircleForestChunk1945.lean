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
def state_2547364 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 16 else (if j.val < 4 then 17 else 22)))
def hex_2547364 : String := "40414443424041440607094106440607400606064342074440050705074409054144060744434208404106080642070643420740050707"
theorem cover_2547364 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2547364 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 55) (hex := hex_2547364)
  decide +kernel
#print axioms cover_2547364

def state_2547420 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 17 else (if j.val < 4 then 16 else 22)))
def hex_2547420 : String := "404144424340410844070541060A40060606084442430A4140050A050A054144064243094044060806430906440A42430A40050A0A"
theorem cover_2547420 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2547420 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 53) (hex := hex_2547420)
  decide +kernel
#print axioms cover_2547420

def state_2547473 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 17 else (if j.val < 4 then 17 else 22)))
def hex_2547473 : String := "404144060844090541064406424340054106050606"
theorem cover_2547473 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2547473 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 21) (hex := hex_2547473)
  decide +kernel
#print axioms cover_2547473

def state_2547494 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 8 else (if j.val < 4 then 8 else 23)))
def hex_2547494 : String := "4243444005410705054440050705434440054108050544400541070505"
theorem cover_2547494 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2547494 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 29) (hex := hex_2547494)
  decide +kernel
#print axioms cover_2547494

def state_2547523 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 8 else (if j.val < 4 then 8 else 11)))
def hex_2547523 : String := "4442434140054408050541400544080505434140050A054140054409050505"
theorem cover_2547523 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2547523 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 31) (hex := hex_2547523)
  decide +kernel
#print axioms cover_2547523

def state_2547555 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 8 else (if j.val < 4 then 8 else 11)))
def hex_2547555 : String := "4442434041440507440842070A41050840410644060706434041060A06064207430940444106070707"
theorem cover_2547555 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2547555 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 41) (hex := hex_2547555)
  decide +kernel
#print axioms cover_2547555
end Mub6.Numerical.CircleFullD0.Forest
