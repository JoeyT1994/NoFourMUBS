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
def state_2273070 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 6)))
def hex_2273070 : String := "41424305070542430A44404305070509430507"
theorem cover_2273070 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2273070 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_2273070)
  decide +kernel
#print axioms cover_2273070

def state_2273091 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 7)))
def hex_2273091 : String := "4243444108400808084441084308080843444105424005050541054208400505444107424340440708050707410842084340080507"
theorem cover_2273091 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2273091 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 53) (hex := hex_2273091)
  decide +kernel
#print axioms cover_2273091

def state_2273146 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 10 else 7)))
def hex_2273146 : String := "44404142084344410509084441084208430808084243070943440A07444209430A440A400A09420843080841420843090942094309094041080708"
theorem cover_2273146 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2273146 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 59) (hex := hex_2273146)
  decide +kernel
#print axioms cover_2273146

def state_2273205 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 7)))
def hex_2273205 : String := "444340414208444308080842064443420944400A09404108060942064440060606430806410809404142064406060609430806"
theorem cover_2273205 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2273205 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 51) (hex := hex_2273205)
  decide +kernel
#print axioms cover_2273205

def state_2273261 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 26) else (if j.val < 3 then 22 else (if j.val < 4 then 10 else 14)))
def hex_2273261 : String := "43440542080544424105430544050805420841054305440508"
theorem cover_2273261 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2273261 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 25) (hex := hex_2273261)
  decide +kernel
#print axioms cover_2273261

def state_2273287 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 27) else (if j.val < 3 then 22 else (if j.val < 4 then 20 else 14)))
def hex_2273287 : String := "4442440A0A4405400505424407074440074105074007410507"
theorem cover_2273287 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2273287 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 25) (hex := hex_2273287)
  decide +kernel
#print axioms cover_2273287
end Mub6.Numerical.CircleFullD0.Forest
