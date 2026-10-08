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
def state_1545908 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 59) else (if j.val < 3 then 102 else (if j.val < 4 then 81 else 87)))
def hex_1545908 : String := "4106400642444341064006090606444341064006424443410608060644430A4106400608430A060606"
theorem cover_1545908 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1545908 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 41) (hex := hex_1545908)
  decide +kernel
#print axioms cover_1545908

def state_1545951 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 59) else (if j.val < 3 then 103 else (if j.val < 4 then 80 else 86)))
def hex_1545951 : String := "41404244430541050A43050644050542444305050505404244090A094244430841400A0808430A410A0A44090A"
theorem cover_1545951 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1545951 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 45) (hex := hex_1545951)
  decide +kernel
#print axioms cover_1545951

def state_1545997 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 118) else (if j.val < 3 then 103 else (if j.val < 4 then 81 else 86)))
def hex_1545997 : String := "4042064441064340064206050606424441064340420644410543050605424408050506410643400605064441054305400642444105430506050589"
theorem cover_1545997 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1545997 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 59) (hex := hex_1545997)
  decide +kernel
#print axioms cover_1545997

def state_1546057 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 198 else 119) else (if j.val < 3 then 103 else (if j.val < 4 then 81 else 86)))
def hex_1546057 : String := "42444341400642440A060A40074207094106074341060A0644430941400642064409064007420709430A4106400689"
theorem cover_1546057 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1546057 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 47) (hex := hex_1546057)
  decide +kernel
#print axioms cover_1546057

def state_1546107 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 199 else 119) else (if j.val < 3 then 206 else (if j.val < 4 then 162 else 172)))
def hex_1546107 : String := "414042444308410607430A06444308410A080A42084408430808404244070A0A08"
theorem cover_1546107 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1546107 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 33) (hex := hex_1546107)
  decide +kernel
#print axioms cover_1546107
end Mub6.Numerical.CircleFullD0.Forest
