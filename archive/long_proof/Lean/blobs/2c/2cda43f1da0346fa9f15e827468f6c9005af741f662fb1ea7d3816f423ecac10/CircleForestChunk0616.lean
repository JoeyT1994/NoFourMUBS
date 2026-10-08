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
def state_1336649 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 6)))
def hex_1336649 : String := "444243400505404144074205070541440A420507054307400741074405074243054041444205060609094340070740410607410609"
theorem cover_1336649 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1336649 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 53) (hex := hex_1336649)
  decide +kernel
#print axioms cover_1336649

def state_1336702 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 6)))
def hex_1336702 : String := "41440A4209430906444243410905410A094341070741074405094209430909"
theorem cover_1336702 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1336702 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 31) (hex := hex_1336702)
  decide +kernel
#print axioms cover_1336702

def state_1336733 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 7)))
def hex_1336733 : String := "404106420943050609"
theorem cover_1336733 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1336733 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1336733)
  decide +kernel
#print axioms cover_1336733

def state_1336743 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
def hex_1336743 : String := "4243090A434443440A090909440A09"
theorem cover_1336743 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1336743 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 15) (hex := hex_1336743)
  decide +kernel
#print axioms cover_1336743

def state_1336758 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
def hex_1336758 : String := "424344410942430509094109050943444143440840420943080908440A0943080941094340420505090944410A440A0909"
theorem cover_1336758 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1336758 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 49) (hex := hex_1336758)
  decide +kernel
#print axioms cover_1336758

def state_1336813 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 2 else 2)))
def hex_1336813 : String := "434440410806064008414442084308080808444005410508400841434407080808"
theorem cover_1336813 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1336813 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 33) (hex := hex_1336813)
  decide +kernel
#print axioms cover_1336813

def state_1336847 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 2)))
def hex_1336847 : String := "44400541050A404142440508050841424443414042080542440608440543410508050A05434109084144050808440543410542080505424408080A"
theorem cover_1336847 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1336847 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 59) (hex := hex_1336847)
  decide +kernel
#print axioms cover_1336847
end Mub6.Numerical.CircleFullD0.Forest
