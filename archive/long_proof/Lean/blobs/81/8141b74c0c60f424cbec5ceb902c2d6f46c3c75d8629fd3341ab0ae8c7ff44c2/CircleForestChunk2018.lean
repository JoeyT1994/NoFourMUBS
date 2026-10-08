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
def state_2564816 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 24) else (if j.val < 3 then 15 else (if j.val < 4 then 13 else 23)))
def hex_2564816 : String := "4308424144080844404308424108444008084008084108440808084043084244410840080608080841084408400808"
theorem cover_2564816 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2564816 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 47) (hex := hex_2564816)
  decide +kernel
#print axioms cover_2564816

def state_2564865 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 15 else (if j.val < 4 then 26 else 22)))
def hex_2564865 : String := "08"
theorem cover_2564865 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2564865 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_2564865)
  decide +kernel
#print axioms cover_2564865

def state_2564867 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 30 else (if j.val < 4 then 27 else 22)))
def hex_2564867 : String := "40414443050743084207414405404307070507440743060741080A"
theorem cover_2564867 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2564867 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 27) (hex := hex_2564867)
  decide +kernel
#print axioms cover_2564867

def state_2564894 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 31 else (if j.val < 4 then 27 else 22)))
def hex_2564894 : String := "40414405430842410844080A4108440840430842074407410807084443070743084207440740070A41050A"
theorem cover_2564894 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2564894 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 43) (hex := hex_2564894)
  decide +kernel
#print axioms cover_2564894

def state_2564938 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 15 else (if j.val < 4 then 26 else 23)))
def hex_2564938 : String := "06"
theorem cover_2564938 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2564938 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_2564938)
  decide +kernel
#print axioms cover_2564938

def state_2564941 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 30 else (if j.val < 4 then 27 else 46)))
def hex_2564941 : String := "404143084244410A0641404306070606444140430842070A080A414043084244074108064441080741080A0840430607060606"
theorem cover_2564941 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2564941 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 51) (hex := hex_2564941)
  decide +kernel
#print axioms cover_2564941

def state_2564992 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 30 else (if j.val < 4 then 27 else 47)))
def hex_2564992 : String := "4041430642064441404306420644410806060606060606"
theorem cover_2564992 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2564992 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 23) (hex := hex_2564992)
  decide +kernel
#print axioms cover_2564992

def state_2565019 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 50) else (if j.val < 3 then 31 else (if j.val < 4 then 54 else 46)))
def hex_2565019 : String := "08"
theorem cover_2565019 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2565019 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_2565019)
  decide +kernel
#print axioms cover_2565019

def state_2565021 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 50) else (if j.val < 3 then 62 else (if j.val < 4 then 55 else 46)))
def hex_2565021 : String := "44414043084244080808084043080A0A41404308424441080A410840080809084043084244070A44410A0741400509050A"
theorem cover_2565021 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2565021 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 49) (hex := hex_2565021)
  decide +kernel
#print axioms cover_2565021
end Mub6.Numerical.CircleFullD0.Forest
