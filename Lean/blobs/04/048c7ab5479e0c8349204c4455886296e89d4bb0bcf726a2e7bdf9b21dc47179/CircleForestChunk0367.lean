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
def state_163508 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 15) else (if j.val < 3 then 15 else (if j.val < 4 then 13 else 7)))
def hex_163508 : String := "44404344054108054441424005440543050805054108420A05430A4441420A05050808"
theorem cover_163508 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_163508 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 35) (hex := hex_163508)
  decide +kernel
#print axioms cover_163508

def state_163543 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 7)))
def hex_163543 : String := "4341420A440A080A41424440430A41080A0A08080A"
theorem cover_163543 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_163543 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 21) (hex := hex_163543)
  decide +kernel
#print axioms cover_163543

def state_163567 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 12)))
def hex_163567 : String := "414243404441094243080709414243404409070707094207094409090709424340444207054207430507444207090707430509"
theorem cover_163567 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_163567 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 51) (hex := hex_163567)
  decide +kernel
#print axioms cover_163567

def state_163623 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 26)))
def hex_163623 : String := "41420743090742074340440943410905070907"
theorem cover_163623 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_163623 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 19) (hex := hex_163623)
  decide +kernel
#print axioms cover_163623

def state_163643 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 28) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 27)))
def hex_163643 : String := "42434041050707054340414342440905090A43424440410943420709060940064105430805440940060842070A410943424407080909400A07"
theorem cover_163643 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_163643 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 57) (hex := hex_163643)
  decide +kernel
#print axioms cover_163643

def state_163700 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 29) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 27)))
def hex_163700 : String := "420743404341424407400607444043090609400643410606064207440506414207440706074341420709070707"
theorem cover_163700 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_163700 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 45) (hex := hex_163700)
  decide +kernel
#print axioms cover_163700

def state_163745 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 13)))
def hex_163745 : String := "444109074142070907"
theorem cover_163745 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_163745 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_163745)
  decide +kernel
#print axioms cover_163745

def state_163754 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 15 else 13)))
def hex_163754 : String := "07"
theorem cover_163754 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_163754 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_163754)
  decide +kernel
#print axioms cover_163754
end Mub6.Numerical.CircleFullPrototype.Forest
