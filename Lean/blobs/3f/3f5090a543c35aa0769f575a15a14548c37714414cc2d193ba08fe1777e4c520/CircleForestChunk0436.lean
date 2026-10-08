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
def state_1042103 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 17) else (if j.val < 3 then 26 else (if j.val < 4 then 26 else 17)))
def hex_1042103 : String := "4042430641440505440506434144050507054206430641440505440505"
theorem cover_1042103 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1042103 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 29) (hex := hex_1042103)
  decide +kernel
#print axioms cover_1042103

def state_1042132 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 8) else (if j.val < 3 then 26 else (if j.val < 4 then 27 else 8)))
def hex_1042132 : String := "414405400542070544084005420805"
theorem cover_1042132 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1042132 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 15) (hex := hex_1042132)
  decide +kernel
#print axioms cover_1042132

def state_1042147 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 8) else (if j.val < 3 then 27 else (if j.val < 4 then 13 else 8)))
def hex_1042147 : String := "4341440509444005430A05400543090505"
theorem cover_1042147 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1042147 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 17) (hex := hex_1042147)
  decide +kernel
#print axioms cover_1042147

def state_1042164 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 27 else 8) else (if j.val < 3 then 13 else (if j.val < 4 then 13 else 8)))
def hex_1042164 : String := "424341444243404107080507430908094408420643064041090606410708434109440A094105440505"
theorem cover_1042164 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1042164 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 41) (hex := hex_1042164)
  decide +kernel
#print axioms cover_1042164

def state_1042205 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 8) else (if j.val < 3 then 13 else (if j.val < 4 then 13 else 9)))
def hex_1042205 : String := "404243444140420A0909404206430605064109060A4344090905424344090644410742064408060909"
theorem cover_1042205 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1042205 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 41) (hex := hex_1042205)
  decide +kernel
#print axioms cover_1042205

def state_1042247 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 9) else (if j.val < 3 then 13 else (if j.val < 4 then 13 else 8)))
def hex_1042247 : String := "4042434144404208070840420607064407064108084307054243410806084341440843064108060708"
theorem cover_1042247 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1042247 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 41) (hex := hex_1042247)
  decide +kernel
#print axioms cover_1042247

def state_1042288 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 9) else (if j.val < 3 then 13 else (if j.val < 4 then 13 else 9)))
def hex_1042288 : String := "40424306410A064341440706064105054206430641444109060606"
theorem cover_1042288 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1042288 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 27) (hex := hex_1042288)
  decide +kernel
#print axioms cover_1042288

def state_1042315 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 5)))
def hex_1042315 : String := "404243440A060A434441080707440A0A42064306444140420A430809060606"
theorem cover_1042315 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1042315 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 31) (hex := hex_1042315)
  decide +kernel
#print axioms cover_1042315
end Mub6.Numerical.CircleFullD0.Forest
