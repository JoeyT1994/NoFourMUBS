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
def state_146901 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 7)))
def hex_146901 : String := "404105420543070541424305444005410505054305054243050543444009434105094105090505"
theorem cover_146901 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_146901 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 39) (hex := hex_146901)
  decide +kernel
#print axioms cover_146901

def state_146940 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 3)))
def hex_146940 : String := "4440410542054408054142440543400541050505440505424405054443400A44410508410542050A0505400541424305050506"
theorem cover_146940 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_146940 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 51) (hex := hex_146940)
  decide +kernel
#print axioms cover_146940

def state_146994 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 6)))
def hex_146994 : String := "4143070A430744420A0A4240070A07"
theorem cover_146994 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_146994 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 15) (hex := hex_146994)
  decide +kernel
#print axioms cover_146994

def state_147010 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 6)))
def hex_147010 : String := "43074442400A090942400741070707"
theorem cover_147010 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_147010 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 15) (hex := hex_147010)
  decide +kernel
#print axioms cover_147010

def state_147026 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 7 else (if j.val < 4 then 12 else 6)))
def hex_147026 : String := "44424007060507"
theorem cover_147026 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_147026 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_147026)
  decide +kernel
#print axioms cover_147026

def state_147035 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 14 else (if j.val < 4 then 13 else 12)))
def hex_147035 : String := "4044410A430808410A434208070A4441094342060542400806094143424007060709434240440643064241060707060542400A44094241094306080909"
theorem cover_147035 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_147035 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 61) (hex := hex_147035)
  decide +kernel
#print axioms cover_147035

def state_147096 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 15 else (if j.val < 4 then 13 else 12)))
def hex_147096 : String := "4044090709"
theorem cover_147096 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_147096 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_147096)
  decide +kernel
#print axioms cover_147096

def state_147103 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 13) else (if j.val < 3 then 14 else (if j.val < 4 then 13 else 13)))
def hex_147103 : String := "4143070A4307440A0A"
theorem cover_147103 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_147103 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_147103)
  decide +kernel
#print axioms cover_147103

def state_147113 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 26) else (if j.val < 3 then 14 else (if j.val < 4 then 13 else 13)))
def hex_147113 : String := "4307440A0A"
theorem cover_147113 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_147113 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_147113)
  decide +kernel
#print axioms cover_147113

def state_147119 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 14 else (if j.val < 4 then 26 else 13)))
def hex_147119 : String := "444240074307444241060607424107400743064406420606070742400743074241054440074307420507050707"
theorem cover_147119 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_147119 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 45) (hex := hex_147119)
  decide +kernel
#print axioms cover_147119
end Mub6.Numerical.CircleFullPrototype.Forest
