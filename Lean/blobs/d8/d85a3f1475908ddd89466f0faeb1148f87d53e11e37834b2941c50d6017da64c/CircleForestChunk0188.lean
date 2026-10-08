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
def state_982640 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 52) else (if j.val < 3 then 16 else (if j.val < 4 then 50 else 40)))
def hex_982640 : String := "424340064144060606064340410905414405090840064144060906"
theorem cover_982640 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_982640 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 27) (hex := hex_982640)
  decide +kernel
#print axioms cover_982640

def state_982667 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 52) else (if j.val < 3 then 16 else (if j.val < 4 then 50 else 41)))
def hex_982667 : String := "424340064144420643090642050706400641440605064340410744060641440907444206084243400641070606430740070940410906410944064206430906"
theorem cover_982667 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_982667 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 63) (hex := hex_982667)
  decide +kernel
#print axioms cover_982667

def state_982730 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 53) else (if j.val < 3 then 16 else (if j.val < 4 then 50 else 20)))
def hex_982730 : String := "440642064340060806"
theorem cover_982730 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_982730 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_982730)
  decide +kernel
#print axioms cover_982730

def state_982739 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 26) else (if j.val < 3 then 16 else (if j.val < 4 then 51 else 20)))
def hex_982739 : String := "41440642064006434109060606"
theorem cover_982739 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_982739 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_982739)
  decide +kernel
#print axioms cover_982739

def state_982757 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 52) else (if j.val < 3 then 32 else (if j.val < 4 then 50 else 40)))
def hex_982757 : String := "43414442064340060740060742434006410506400641050643404109060A40410906410944060A44064206434006070641440642064006434109060606"
theorem cover_982757 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_982757 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 61) (hex := hex_982757)
  decide +kernel
#print axioms cover_982757

def state_982818 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 52) else (if j.val < 3 then 32 else (if j.val < 4 then 50 else 40)))
def hex_982818 : String := "434144074240430705050A0707"
theorem cover_982818 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_982818 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_982818)
  decide +kernel
#print axioms cover_982818

def state_982832 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 52) else (if j.val < 3 then 33 else (if j.val < 4 then 50 else 40)))
def hex_982832 : String := "43414442430A40090A05424340090A40090A0A4405424340080A4006410A06430505414442400607054240094309090944074206400643410A0507"
theorem cover_982832 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_982832 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 59) (hex := hex_982832)
  decide +kernel
#print axioms cover_982832
end Mub6.Numerical.CircleFullD0.Forest
