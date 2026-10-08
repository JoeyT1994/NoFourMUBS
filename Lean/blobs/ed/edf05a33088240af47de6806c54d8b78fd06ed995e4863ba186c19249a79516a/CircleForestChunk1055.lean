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
def state_1553479 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 29) else (if j.val < 3 then 27 else (if j.val < 4 then 21 else 20)))
def hex_1553479 : String := "40430907434142444007430907404309084341420A05090A440909424407400743090709414244070A0A07"
theorem cover_1553479 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1553479 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 43) (hex := hex_1553479)
  decide +kernel
#print axioms cover_1553479

def state_1553522 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 27 else (if j.val < 4 then 21 else 21)))
def hex_1553522 : String := "41400843050840434409080843444142400843050805424009430944410A0741080909410542400844430508050544414208084240070A40080A4108420808"
theorem cover_1553522 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1553522 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 63) (hex := hex_1553522)
  decide +kernel
#print axioms cover_1553522

def state_1553592 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 56) else (if j.val < 3 then 52 else (if j.val < 4 then 20 else 20)))
def hex_1553592 : String := "430544404241090A41050A42090A05"
theorem cover_1553592 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1553592 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 15) (hex := hex_1553592)
  decide +kernel
#print axioms cover_1553592

def state_1553608 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 57) else (if j.val < 3 then 52 else (if j.val < 4 then 40 else 20)))
def hex_1553608 : String := "44404241430544080508410543054406050805"
theorem cover_1553608 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1553608 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_1553608)
  decide +kernel
#print axioms cover_1553608

def state_1553628 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 57) else (if j.val < 3 then 52 else (if j.val < 4 then 41 else 40)))
def hex_1553628 : String := "404241440A0A4443080743400A080A41440A0A444306074340420A050A0A424109440808410A44060A"
theorem cover_1553628 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1553628 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 41) (hex := hex_1553628)
  decide +kernel
#print axioms cover_1553628

def state_1553669 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 57) else (if j.val < 3 then 52 else (if j.val < 4 then 41 else 41)))
def hex_1553669 : String := "404241430509434440420A050A050A410543050A42410543050905"
theorem cover_1553669 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1553669 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 27) (hex := hex_1553669)
  decide +kernel
#print axioms cover_1553669

def state_1553696 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 28) else (if j.val < 3 then 53 else (if j.val < 4 then 20 else 20)))
def hex_1553696 : String := "4143054440050505430544404241440A054443060A43050A41054406054241440605060605"
theorem cover_1553696 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1553696 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 37) (hex := hex_1553696)
  decide +kernel
#print axioms cover_1553696
end Mub6.Numerical.CircleFullD0.Forest
