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
def state_174967 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 14) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 11)))
def hex_174967 : String := "424443400A08080A44430640060543064041060A41420A05420A05"
theorem cover_174967 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_174967 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 27) (hex := hex_174967)
  decide +kernel
#print axioms cover_174967

def state_174995 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 15) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 11)))
def hex_174995 : String := "4443404108080708430A0A"
theorem cover_174995 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_174995 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_174995)
  decide +kernel
#print axioms cover_174995

def state_175007 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 15) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 22)))
def hex_175007 : String := "4340424106440643060606420705404208410544054240060505420805"
theorem cover_175007 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_175007 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 29) (hex := hex_175007)
  decide +kernel
#print axioms cover_175007

def state_175036 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 15) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 23)))
def hex_175036 : String := "4340420A0642410944070941054405064042410A0A4144060A4442400A430505060A424144080A44080A4105440540420A0505"
theorem cover_175036 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_175036 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 51) (hex := hex_175036)
  decide +kernel
#print axioms cover_175036

def state_175088 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 4)))
def hex_175088 : String := "08"
theorem cover_175088 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_175088 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_175088)
  decide +kernel
#print axioms cover_175088

def state_175089 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 5)))
def hex_175089 : String := "4408404142084344090A0742430A064344090707414208434408404142084305054208430A05414208054208050842084344084042430A0707420843050508"
theorem cover_175089 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_175089 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 63) (hex := hex_175089)
  decide +kernel
#print axioms cover_175089

def state_175152 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 2)))
def hex_175152 : String := "4344054243064406400641064405424306400605050644054244054041434405070507410543440542400705050505"
theorem cover_175152 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_175152 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 47) (hex := hex_175152)
  decide +kernel
#print axioms cover_175152
end Mub6.Numerical.CircleFullPrototype.Forest
