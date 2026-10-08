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
def state_374947 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 11) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 12)))
def hex_374947 : String := "424143440A050A430A0A4143444240074441050A05400744410807070544420A4007430808084307440A07"
theorem cover_374947 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_374947 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 43) (hex := hex_374947)
  decide +kernel
#print axioms cover_374947

def state_374991 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 11) else (if j.val < 3 then 8 else (if j.val < 4 then 11 else 12)))
def hex_374991 : String := "4143444042094441050A054206444107060605094344400A420641060606440A09"
theorem cover_374991 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_374991 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 33) (hex := hex_374991)
  decide +kernel
#print axioms cover_374991

def state_375029 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 22) else (if j.val < 3 then 18 else (if j.val < 4 then 22 else 24)))
def hex_375029 : String := "444143054005420505434005420505400A420A444143050A0A41050A4105430505"
theorem cover_375029 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_375029 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 33) (hex := hex_375029)
  decide +kernel
#print axioms cover_375029

def state_375062 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 22) else (if j.val < 3 then 19 else (if j.val < 4 then 22 else 24)))
def hex_375062 : String := "444143050843424005444105090509424007444143054240084443050A050843424007444105070507420A07410507400744410807074105430508"
theorem cover_375062 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_375062 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 59) (hex := hex_375062)
  decide +kernel
#print axioms cover_375062

def state_375122 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 22) else (if j.val < 3 then 18 else (if j.val < 4 then 22 else 24)))
def hex_375122 : String := "44414305404205444305070507430640420944414305404209444305090507434042064441050A0506400A09410543050942064441060606410506"
theorem cover_375122 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_375122 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 59) (hex := hex_375122)
  decide +kernel
#print axioms cover_375122

def state_375183 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 44) else (if j.val < 3 then 19 else (if j.val < 4 then 22 else 48)))
def hex_375183 : String := "4340050A4042444305410540054205050508424407050A"
theorem cover_375183 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_375183 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 23) (hex := hex_375183)
  decide +kernel
#print axioms cover_375183
end Mub6.Numerical.CircleFullPrototype.Forest
