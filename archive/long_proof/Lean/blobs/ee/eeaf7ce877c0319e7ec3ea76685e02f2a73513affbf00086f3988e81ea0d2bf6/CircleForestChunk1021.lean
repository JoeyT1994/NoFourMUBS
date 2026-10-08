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
def state_1545423 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 59) else (if j.val < 3 then 103 else (if j.val < 4 then 41 else 42)))
def hex_1545423 : String := "440741434006424407064441434006420744070606074106434006424407064407410643400642060506060643400742070707"
theorem cover_1545423 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1545423 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 16) (count := 51) (hex := hex_1545423)
  decide +kernel
#print axioms cover_1545423

def state_1545475 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 58) else (if j.val < 3 then 51 else (if j.val < 4 then 20 else 43)))
def hex_1545475 : String := "4340064244410643400642060506064441054305060506"
theorem cover_1545475 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1545475 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 23) (hex := hex_1545475)
  decide +kernel
#print axioms cover_1545475

def state_1545500 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 98 else 59) else (if j.val < 3 then 51 else (if j.val < 4 then 40 else 43)))
def hex_1545500 : String := "4244434106400642440A060A06064443414006420609094106400642064409064341060A06"
theorem cover_1545500 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1545500 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 37) (hex := hex_1545500)
  decide +kernel
#print axioms cover_1545500

def state_1545541 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 118) else (if j.val < 3 then 102 else (if j.val < 4 then 80 else 86)))
def hex_1545541 : String := "4042444341060A060644430A06430A064244434105084106400608434105400A42080506444341050A410540424408064408050843054105400605"
theorem cover_1545541 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1545541 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 59) (hex := hex_1545541)
  decide +kernel
#print axioms cover_1545541

def state_1545601 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 198 else 119) else (if j.val < 3 then 102 else (if j.val < 4 then 80 else 86)))
def hex_1545601 : String := "4244430A41400642060A07430A41060A44430A410A0A0A"
theorem cover_1545601 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1545601 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_1545601)
  decide +kernel
#print axioms cover_1545601

def state_1545624 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 199 else 119) else (if j.val < 3 then 102 else (if j.val < 4 then 80 else 86)))
def hex_1545624 : String := "42444308084341400A080841404206440A0642080840424408080A0844430841404208080808430A4140420A0A424408080A400A08"
theorem cover_1545624 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1545624 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 53) (hex := hex_1545624)
  decide +kernel
#print axioms cover_1545624
end Mub6.Numerical.CircleFullD0.Forest
