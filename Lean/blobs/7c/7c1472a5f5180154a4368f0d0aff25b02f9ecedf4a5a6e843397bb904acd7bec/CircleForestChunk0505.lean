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
def state_1309956 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 22) else (if j.val < 3 then 24 else (if j.val < 4 then 15 else 25)))
def hex_1309956 : String := "4043094209410A0909"
theorem cover_1309956 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1309956 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1309956)
  decide +kernel
#print axioms cover_1309956

def state_1309968 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 22) else (if j.val < 3 then 25 else (if j.val < 4 then 30 else 24)))
def hex_1309968 : String := "444142404307444241070807074307444241074043070A4344420A07070A41074007074241070A07074240084308444142400643050608060808410708"
theorem cover_1309968 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1309968 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 61) (hex := hex_1309968)
  decide +kernel
#print axioms cover_1309968

def state_1310030 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 22) else (if j.val < 3 then 25 else (if j.val < 4 then 31 else 48)))
def hex_1310030 : String := "414240054344420A410540054344060705420A410740050A05400543440505054240054344064142060606064005430805"
theorem cover_1310030 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1310030 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 49) (hex := hex_1310030)
  decide +kernel
#print axioms cover_1310030

def state_1310079 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 22) else (if j.val < 3 then 25 else (if j.val < 4 then 31 else 49)))
def hex_1310079 : String := "4142400A43440A070A074240084344080844060A08"
theorem cover_1310079 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1310079 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 21) (hex := hex_1310079)
  decide +kernel
#print axioms cover_1310079

def state_1310103 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 44) else (if j.val < 3 then 25 else (if j.val < 4 then 30 else 48)))
def hex_1310103 : String := "424043054442410A4043050A0541074043074442410706070705424107400A054107400705054007430544410742050707"
theorem cover_1310103 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1310103 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 49) (hex := hex_1310103)
  decide +kernel
#print axioms cover_1310103

def state_1310152 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 45) else (if j.val < 3 then 25 else (if j.val < 4 then 30 else 48)))
def hex_1310152 : String := "4240430544414205404305060505414205400805050540430544080805"
theorem cover_1310152 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1310152 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 29) (hex := hex_1310152)
  decide +kernel
#print axioms cover_1310152

def state_1310181 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 22) else (if j.val < 3 then 25 else (if j.val < 4 then 30 else 49)))
def hex_1310181 : String := "414240430544420A0707050742400905400805"
theorem cover_1310181 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1310181 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_1310181)
  decide +kernel
#print axioms cover_1310181
end Mub6.Numerical.CircleFullD0.Forest
