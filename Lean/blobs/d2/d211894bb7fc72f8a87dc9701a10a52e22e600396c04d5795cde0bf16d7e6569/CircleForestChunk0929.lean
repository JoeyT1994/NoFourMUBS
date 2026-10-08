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
def state_1523506 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 59) else (if j.val < 3 then 47 else (if j.val < 4 then 18 else 43)))
def hex_1523506 : String := "43404244070A0A4244414308070741430A404205054244050544080A430A0544080A40420544050542440743050544434142070A0505434142060A0505"
theorem cover_1523506 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1523506 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 61) (hex := hex_1523506)
  decide +kernel
#print axioms cover_1523506

def state_1523568 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 29) else (if j.val < 3 then 46 else (if j.val < 4 then 18 else 21)))
def hex_1523568 : String := "440841434042094408090809434042440741090744084108080840420744070908"
theorem cover_1523568 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1523568 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 33) (hex := hex_1523568)
  decide +kernel
#print axioms cover_1523568

def state_1523602 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 29) else (if j.val < 3 then 47 else (if j.val < 4 then 18 else 42)))
def hex_1523602 : String := "08"
theorem cover_1523602 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1523602 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1523602)
  decide +kernel
#print axioms cover_1523602

def state_1523604 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 58) else (if j.val < 3 then 47 else (if j.val < 4 then 18 else 43)))
def hex_1523604 : String := "43424044084109430809084044084143074209074308424044080908400A0808420940444109080908"
theorem cover_1523604 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1523604 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 41) (hex := hex_1523604)
  decide +kernel
#print axioms cover_1523604

def state_1523645 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 59) else (if j.val < 3 then 47 else (if j.val < 4 then 18 else 43)))
def hex_1523645 : String := "43084240440743410905090840440843414240440809084044080A080841090508"
theorem cover_1523645 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1523645 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 33) (hex := hex_1523645)
  decide +kernel
#print axioms cover_1523645

def state_1523678 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 29) else (if j.val < 3 then 23 else (if j.val < 4 then 19 else 21)))
def hex_1523678 : String := "40420744074341060706424407094443410907074341094209404407090909"
theorem cover_1523678 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1523678 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 31) (hex := hex_1523678)
  decide +kernel
#print axioms cover_1523678

def state_1523709 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 14) else (if j.val < 3 then 11 else (if j.val < 4 then 9 else 10)))
def hex_1523709 : String := "4244410908410943404209080809440841434209404408090809430809"
theorem cover_1523709 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1523709 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 29) (hex := hex_1523709)
  decide +kernel
#print axioms cover_1523709
end Mub6.Numerical.CircleFullD0.Forest
