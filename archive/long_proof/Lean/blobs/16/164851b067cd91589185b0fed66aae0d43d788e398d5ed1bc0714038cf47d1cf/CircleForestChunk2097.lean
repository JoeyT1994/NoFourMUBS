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
def state_2583795 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 20) else (if j.val < 3 then 23 else (if j.val < 4 then 25 else 16)))
def hex_2583795 : String := "4243404144064243400A0606060A410644064243400A060606400A0643404105050606"
theorem cover_2583795 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2583795 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 35) (hex := hex_2583795)
  decide +kernel
#print axioms cover_2583795

def state_2583830 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 20) else (if j.val < 3 then 23 else (if j.val < 4 then 25 else 17)))
def hex_2583830 : String := "424340414442434041080A080843400A0606420843400A08080A41084442080A084041080A084340414406424340050605050A41060A400506"
theorem cover_2583830 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2583830 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 57) (hex := hex_2583830)
  decide +kernel
#print axioms cover_2583830

def state_2583887 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 21) else (if j.val < 3 then 23 else (if j.val < 4 then 25 else 8)))
def hex_2583887 : String := "0A"
theorem cover_2583887 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2583887 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_2583887)
  decide +kernel
#print axioms cover_2583887

def state_2583888 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 27 else 10) else (if j.val < 3 then 23 else (if j.val < 4 then 25 else 8)))
def hex_2583888 : String := "41440642080644424341400A060A41060A43410609064243410808084341400A060A41060A"
theorem cover_2583888 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2583888 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 37) (hex := hex_2583888)
  decide +kernel
#print axioms cover_2583888

def state_2583926 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 10) else (if j.val < 3 then 22 else (if j.val < 4 then 12 else 9)))
def hex_2583926 : String := "4340414443420840444143050806060542084044080808430608444306060641080840410844080808"
theorem cover_2583926 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2583926 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 41) (hex := hex_2583926)
  decide +kernel
#print axioms cover_2583926

def state_2583973 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 20) else (if j.val < 3 then 46 else (if j.val < 4 then 48 else 18)))
def hex_2583973 : String := "404441434205400A05424041080605400A41080A0A4143064206400608064441050A410508"
theorem cover_2583973 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2583973 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 37) (hex := hex_2583973)
  decide +kernel
#print axioms cover_2583973

def state_2584010 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 20) else (if j.val < 3 then 46 else (if j.val < 4 then 49 else 18)))
def hex_2584010 : String := "4044414208434041440A080A0840410808080A41080A4441080808"
theorem cover_2584010 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2584010 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 27) (hex := hex_2584010)
  decide +kernel
#print axioms cover_2584010
end Mub6.Numerical.CircleFullD0.Forest
