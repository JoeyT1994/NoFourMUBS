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
def state_1555944 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 29) else (if j.val < 3 then 27 else (if j.val < 4 then 21 else 20)))
def hex_1555944 : String := "4043414244400A0640434105420A060A0A4406400A06424406404306410A06060641420A0A4244070A0A4306410A420606"
theorem cover_1555944 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1555944 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 49) (hex := hex_1555944)
  decide +kernel
#print axioms cover_1555944

def state_1555994 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 28) else (if j.val < 3 then 27 else (if j.val < 4 then 21 else 21)))
def hex_1555994 : String := "404305440A054305440A05"
theorem cover_1555994 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1555994 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 11) (hex := hex_1555994)
  decide +kernel
#print axioms cover_1555994

def state_1556006 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 29) else (if j.val < 3 then 27 else (if j.val < 4 then 21 else 21)))
def hex_1556006 : String := "43444142400505054240434441050605440A41050A43440605440A0A40430544090505410542404443050505050544410A420A0A4142050542400A0A400505"
theorem cover_1556006 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1556006 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 63) (hex := hex_1556006)
  decide +kernel
#print axioms cover_1556006

def state_1556069 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 29) else (if j.val < 3 then 27 else (if j.val < 4 then 21 else 21)))
def hex_1556069 : String := "434441054206050544410A0A4105420A05"
theorem cover_1556069 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1556069 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 17) (hex := hex_1556069)
  decide +kernel
#print axioms cover_1556069

def state_1556090 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 26 else (if j.val < 4 then 20 else 20)))
def hex_1556090 : String := "4140094243440609070907"
theorem cover_1556090 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1556090 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_1556090)
  decide +kernel
#print axioms cover_1556090

def state_1556103 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 30) else (if j.val < 3 then 26 else (if j.val < 4 then 20 else 21)))
def hex_1556103 : String := "424409430941400642440706090709"
theorem cover_1556103 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1556103 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_1556103)
  decide +kernel
#print axioms cover_1556103

def state_1556120 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 30) else (if j.val < 3 then 52 else (if j.val < 4 then 20 else 42)))
def hex_1556120 : String := "434140094244060909094140074207440743090707"
theorem cover_1556120 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1556120 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_1556120)
  decide +kernel
#print axioms cover_1556120

def state_1556142 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 30) else (if j.val < 3 then 52 else (if j.val < 4 then 40 else 43)))
def hex_1556142 : String := "41400942444309414009424409090909430941404244090909894009890909"
theorem cover_1556142 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1556142 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 31) (hex := hex_1556142)
  decide +kernel
#print axioms cover_1556142

def state_1556175 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 98 else 60) else (if j.val < 3 then 52 else (if j.val < 4 then 41 else 43)))
def hex_1556175 : String := "424443414007420707050743414006420609090644094309410609"
theorem cover_1556175 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1556175 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 27) (hex := hex_1556175)
  decide +kernel
#print axioms cover_1556175
end Mub6.Numerical.CircleFullD0.Forest
