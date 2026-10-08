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
def state_978939 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 15 else (if j.val < 4 then 10 else 15)))
def hex_978939 : String := "400741430742050707"
theorem cover_978939 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_978939 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_978939)
  decide +kernel
#print axioms cover_978939

def state_978949 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 14 else (if j.val < 4 then 11 else 7)))
def hex_978949 : String := "444041434205440A05090A4143420544400A060542054406054342054406050505"
theorem cover_978949 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_978949 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 33) (hex := hex_978949)
  decide +kernel
#print axioms cover_978949

def state_978984 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 11) else (if j.val < 3 then 15 else (if j.val < 4 then 11 else 14)))
def hex_978984 : String := "4143440A42090A0A0A"
theorem cover_978984 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_978984 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_978984)
  decide +kernel
#print axioms cover_978984

def state_978997 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 30 else (if j.val < 4 then 22 else 28)))
def hex_978997 : String := "400A4143440A42054041050A4105060A0A"
theorem cover_978997 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_978997 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 17) (hex := hex_978997)
  decide +kernel
#print axioms cover_978997

def state_979015 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 22) else (if j.val < 3 then 31 else (if j.val < 4 then 22 else 28)))
def hex_979015 : String := "0A"
theorem cover_979015 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_979015 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_979015)
  decide +kernel
#print axioms cover_979015

def state_979019 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 44) else (if j.val < 3 then 31 else (if j.val < 4 then 44 else 56)))
def hex_979019 : String := "08"
theorem cover_979019 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_979019 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_979019)
  decide +kernel
#print axioms cover_979019

def state_979021 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 44) else (if j.val < 3 then 62 else (if j.val < 4 then 44 else 57)))
def hex_979021 : String := "404143440A09090A4143444206400806420540410505054406054344064205400A0606"
theorem cover_979021 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_979021 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 35) (hex := hex_979021)
  decide +kernel
#print axioms cover_979021

def state_979057 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 44) else (if j.val < 3 then 63 else (if j.val < 4 then 44 else 57)))
def hex_979057 : String := "0A"
theorem cover_979057 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_979057 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_979057)
  decide +kernel
#print axioms cover_979057

def state_979060 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 88) else (if j.val < 3 then 63 else (if j.val < 4 then 88 else 57)))
def hex_979060 : String := "44420808424041434442400941050A85050943440A4205850A414344424041054305054105058505440805434442068542058544060585"
theorem cover_979060 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_979060 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 55) (hex := hex_979060)
  decide +kernel
#print axioms cover_979060

def state_979115 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 88) else (if j.val < 3 then 63 else (if j.val < 4 then 89 else 57)))
def hex_979115 : String := "44084240094341050605400A43850A"
theorem cover_979115 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_979115 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 15) (hex := hex_979115)
  decide +kernel
#print axioms cover_979115

def state_979130 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 89) else (if j.val < 3 then 63 else (if j.val < 4 then 44 else 57)))
def hex_979130 : String := "43440A42400A414344064206850606400A41850A0A"
theorem cover_979130 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_979130 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 21) (hex := hex_979130)
  decide +kernel
#print axioms cover_979130

def state_979151 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 44) else (if j.val < 3 then 31 else (if j.val < 4 then 45 else 28)))
def hex_979151 : String := "0A"
theorem cover_979151 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_979151 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_979151)
  decide +kernel
#print axioms cover_979151

def state_979152 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 45) else (if j.val < 3 then 31 else (if j.val < 4 then 22 else 28)))
def hex_979152 : String := "0A"
theorem cover_979152 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_979152 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_979152)
  decide +kernel
#print axioms cover_979152

def state_979154 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 30 else (if j.val < 4 then 22 else 29)))
def hex_979154 : String := "4041050505"
theorem cover_979154 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_979154 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_979154)
  decide +kernel
#print axioms cover_979154

def state_979160 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 22) else (if j.val < 3 then 31 else (if j.val < 4 then 22 else 29)))
def hex_979160 : String := "41090A"
theorem cover_979160 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_979160 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_979160)
  decide +kernel
#print axioms cover_979160
end Mub6.Numerical.CircleFullD0.Forest
