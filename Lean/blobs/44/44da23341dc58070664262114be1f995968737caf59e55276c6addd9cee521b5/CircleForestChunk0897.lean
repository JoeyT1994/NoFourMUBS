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
def state_1515766 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 91) else (if j.val < 3 then 42 else (if j.val < 4 then 53 else 62)))
def hex_1515766 : String := "42434441400A0A0A41400506400A06440A41060A4344414042430544080505080805444140420A4309090A0A41404243050605420643050640420A050A"
theorem cover_1515766 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1515766 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 61) (hex := hex_1515766)
  decide +kernel
#print axioms cover_1515766

def state_1515827 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 45) else (if j.val < 3 then 42 else (if j.val < 4 then 53 else 63)))
def hex_1515827 : String := "404105420505414206054243050605"
theorem cover_1515827 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1515827 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 15) (hex := hex_1515827)
  decide +kernel
#print axioms cover_1515827

def state_1515842 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 45) else (if j.val < 3 then 43 else (if j.val < 4 then 26 else 31)))
def hex_1515842 : String := "430544404142050542430544090505414243054440414205054243050905410707050542430544414042090508084105050805"
theorem cover_1515842 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1515842 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 51) (hex := hex_1515842)
  decide +kernel
#print axioms cover_1515842

def state_1515894 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 44) else (if j.val < 3 then 21 else (if j.val < 4 then 26 else 31)))
def hex_1515894 : String := "4243444041064305060605064305444041420605424305060541060705"
theorem cover_1515894 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1515894 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 29) (hex := hex_1515894)
  decide +kernel
#print axioms cover_1515894

def state_1515923 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 45) else (if j.val < 3 then 21 else (if j.val < 4 then 26 else 31)))
def hex_1515923 : String := "4243444140430842060806084106400506444140420643440806060640420A4308440A0606064308444140424307440741060707070841400506400508"
theorem cover_1515923 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1515923 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 61) (hex := hex_1515923)
  decide +kernel
#print axioms cover_1515923

def state_1515990 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 44) else (if j.val < 3 then 42 else (if j.val < 4 then 54 else 60)))
def hex_1515990 : String := "404142054344054009414205070505420543090541420543440540410505050505"
theorem cover_1515990 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1515990 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 33) (hex := hex_1515990)
  decide +kernel
#print axioms cover_1515990
end Mub6.Numerical.CircleFullD0.Forest
