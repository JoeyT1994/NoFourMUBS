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
def state_1342752 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 30 else 25) else (if j.val < 3 then 22 else (if j.val < 4 then 18 else 24)))
def hex_1342752 : String := "444142434008444142080707084008444142084340080A4044410A08080A42084307084142080A084307400744414243074005090707074208074142080707"
theorem cover_1342752 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1342752 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 63) (hex := hex_1342752)
  decide +kernel
#print axioms cover_1342752

def state_1342816 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 31 else 25) else (if j.val < 3 then 22 else (if j.val < 4 then 18 else 48)))
def hex_1342816 : String := "414243054044410A420543054044090805410A420843050A0543054044094109070942430540440505054305400705"
theorem cover_1342816 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1342816 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 47) (hex := hex_1342816)
  decide +kernel
#print axioms cover_1342816

def state_1342863 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 31 else 25) else (if j.val < 3 then 22 else (if j.val < 4 then 18 else 49)))
def hex_1342863 : String := "4142430A40440A080A43074044070744090A420807"
theorem cover_1342863 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1342863 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 21) (hex := hex_1342863)
  decide +kernel
#print axioms cover_1342863

def state_1342887 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 30 else 50) else (if j.val < 3 then 22 else (if j.val < 4 then 19 else 48)))
def hex_1342887 : String := "424340054441420A4340050A0542084340084441420809080805414208430A05420843080505434005444105424340050905054105424307050505"
theorem cover_1342887 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1342887 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 59) (hex := hex_1342887)
  decide +kernel
#print axioms cover_1342887

def state_1342946 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 30 else 51) else (if j.val < 3 then 22 else (if j.val < 4 then 19 else 48)))
def hex_1342946 : String := "42430840054441420805080843400544070705"
theorem cover_1342946 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1342946 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_1342946)
  decide +kernel
#print axioms cover_1342946

def state_1342965 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 30 else 25) else (if j.val < 3 then 22 else (if j.val < 4 then 19 else 49)))
def hex_1342965 : String := "414243400544410A0808054306054208430705"
theorem cover_1342965 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1342965 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_1342965)
  decide +kernel
#print axioms cover_1342965
end Mub6.Numerical.CircleFullD0.Forest
