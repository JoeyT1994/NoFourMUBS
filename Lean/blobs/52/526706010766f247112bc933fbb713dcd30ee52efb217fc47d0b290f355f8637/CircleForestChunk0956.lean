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
def state_1530002 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 15) else (if j.val < 3 then 22 else (if j.val < 4 then 9 else 11)))
def hex_1530002 : String := "444341400A09400A060A0A"
theorem cover_1530002 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1530002 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_1530002)
  decide +kernel
#print axioms cover_1530002

def state_1530013 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 15) else (if j.val < 3 then 23 else (if j.val < 4 then 9 else 11)))
def hex_1530013 : String := "444341424044430641090643060909404408430641090606064142094044090909424005064005064341420944404306090607064109420509"
theorem cover_1530013 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1530013 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 57) (hex := hex_1530013)
  decide +kernel
#print axioms cover_1530013

def state_1530070 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 5)))
def hex_1530070 : String := "4244414340420A0808090A0A444143084209080841434209444041050805070943420A06420A44404306090809"
theorem cover_1530070 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1530070 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 45) (hex := hex_1530070)
  decide +kernel
#print axioms cover_1530070

def state_1530115 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 2)))
def hex_1530115 : String := "444007420709404243440741090A07434441404207434407410607070940070741404209060940424407054443050543050542090944070942094344090909"
theorem cover_1530115 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1530115 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 63) (hex := hex_1530115)
  decide +kernel
#print axioms cover_1530115

def state_1530178 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
def hex_1530178 : String := "414243440941050944090A43094409094243444007090A0A434408420A44080909"
theorem cover_1530178 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1530178 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 33) (hex := hex_1530178)
  decide +kernel
#print axioms cover_1530178
end Mub6.Numerical.CircleFullD0.Forest
