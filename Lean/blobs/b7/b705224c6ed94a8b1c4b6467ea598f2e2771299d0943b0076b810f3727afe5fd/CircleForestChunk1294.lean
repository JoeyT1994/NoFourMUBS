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
def state_1611133 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 176 else 164) else (if j.val < 3 then 209 else (if j.val < 4 then 122 else 199)))
def hex_1611133 : String := "43444005054042410543070505420708440540054241050705"
theorem cover_1611133 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1611133 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 25) (hex := hex_1611133)
  decide +kernel
#print axioms cover_1611133

def state_1611158 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 176 else 165) else (if j.val < 3 then 209 else (if j.val < 4 then 122 else 199)))
def hex_1611158 : String := "4344404241050705420707404241439F0909410543090542074107074440054207054042090509"
theorem cover_1611158 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1611158 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 39) (hex := hex_1611158)
  decide +kernel
#print axioms cover_1611158

def state_1611197 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 177 else 82) else (if j.val < 3 then 104 else (if j.val < 4 then 122 else 199)))
def hex_1611197 : String := "4241070741430744070709"
theorem cover_1611197 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1611197 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_1611197)
  decide +kernel
#print axioms cover_1611197

def state_1611209 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 82) else (if j.val < 3 then 104 else (if j.val < 4 then 123 else 198)))
def hex_1611209 : String := "40424105080542410707410509"
theorem cover_1611209 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1611209 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 13) (hex := hex_1611209)
  decide +kernel
#print axioms cover_1611209

def state_1611222 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 82) else (if j.val < 3 then 104 else (if j.val < 4 then 123 else 199)))
def hex_1611222 : String := "404241434440420A05420705400A4209410609444005420905060941434405060543444005094006090642094143440740420705074440050740060909"
theorem cover_1611222 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1611222 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 61) (hex := hex_1611222)
  decide +kernel
#print axioms cover_1611222

def state_1611283 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 83) else (if j.val < 3 then 104 else (if j.val < 4 then 61 else 99)))
def hex_1611283 : String := "434440420841434407090908090909"
theorem cover_1611283 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1611283 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_1611283)
  decide +kernel
#print axioms cover_1611283

def state_1611299 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 82) else (if j.val < 3 then 105 else (if j.val < 4 then 61 else 99)))
def hex_1611299 : String := "434440054241050505404241054344054005424105430705050505424108434407084440050740424105070507084405400542410543440540050944050605"
theorem cover_1611299 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1611299 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 63) (hex := hex_1611299)
  decide +kernel
#print axioms cover_1611299
end Mub6.Numerical.CircleFullD0.Forest
