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
def state_386905 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 7) else (if j.val < 3 then 11 else (if j.val < 4 then 7 else 11)))
def hex_386905 : String := "414342440740070744074041070841074306050743080A"
theorem cover_386905 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_386905 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 23) (hex := hex_386905)
  decide +kernel
#print axioms cover_386905

def state_386928 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 7) else (if j.val < 3 then 11 else (if j.val < 4 then 7 else 11)))
def hex_386928 : String := "414342440741434007070743080744054143400742070507434042060542440506050507434208050A"
theorem cover_386928 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_386928 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 41) (hex := hex_386928)
  decide +kernel
#print axioms cover_386928

def state_386972 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 3)))
def hex_386972 : String := "4344404143060505410505400609440509"
theorem cover_386972 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_386972 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 17) (hex := hex_386972)
  decide +kernel
#print axioms cover_386972

def state_386993 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 6)))
def hex_386993 : String := "424344050644050543440A06444041054205440505410A42050A40410509410809"
theorem cover_386993 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_386993 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 33) (hex := hex_386993)
  decide +kernel
#print axioms cover_386993

def state_387027 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 6 else 6)))
def hex_387027 : String := "4306440505"
theorem cover_387027 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_387027 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_387027)
  decide +kernel
#print axioms cover_387027

def state_387033 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 12 else 6)))
def hex_387033 : String := "4440420543054405050606"
theorem cover_387033 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_387033 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_387033)
  decide +kernel
#print axioms cover_387033

def state_387044 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 13 else 6)))
def hex_387044 : String := "4440420544414305054305054105054244410505054441430A42050A4306424405054440410505410A0640050541430505064042050606"
theorem cover_387044 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_387044 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 55) (hex := hex_387044)
  decide +kernel
#print axioms cover_387044

def state_387099 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 6)))
def hex_387099 : String := "414243440505440505430A444107424407050A410A420606424306444408050543064442444041430505064143050506064440410A43064206060A40060606"
theorem cover_387099 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_387099 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 63) (hex := hex_387099)
  decide +kernel
#print axioms cover_387099
end Mub6.Numerical.CircleFullPrototype.Forest
