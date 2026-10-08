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
def state_175202 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 2)))
def hex_175202 : String := "440540414344050744424105050542414407074440070509414407074405094344050944054244404105050509440509414305440542090505"
theorem cover_175202 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_175202 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 57) (hex := hex_175202)
  decide +kernel
#print axioms cover_175202

def state_175260 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 4)))
def hex_175260 : String := "400805"
theorem cover_175260 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_175260 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_175260)
  decide +kernel
#print axioms cover_175260

def state_175266 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 10)))
def hex_175266 : String := "424341400805050543054140050505"
theorem cover_175266 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_175266 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 15) (hex := hex_175266)
  decide +kernel
#print axioms cover_175266

def state_175282 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 8 else (if j.val < 4 then 7 else 11)))
def hex_175282 : String := "43414440430708430706404307420641074407060744400805404342090908094144080606"
theorem cover_175282 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_175282 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 37) (hex := hex_175282)
  decide +kernel
#print axioms cover_175282

def state_175321 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 24) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 11)))
def hex_175321 : String := "44404243074107054305050540424307410744420707420707430741074405420707420707"
theorem cover_175321 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_175321 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 37) (hex := hex_175321)
  decide +kernel
#print axioms cover_175321

def state_175358 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 25) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 11)))
def hex_175358 : String := "4405404243440509440541420943074044050905420805430544054142430505050505"
theorem cover_175358 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_175358 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 35) (hex := hex_175358)
  decide +kernel
#print axioms cover_175358

def state_175394 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 24) else (if j.val < 3 then 9 else (if j.val < 4 then 15 else 11)))
def hex_175394 : String := "44404208430A0A054042434144420607064408060643410A440A4240430A06060A410A440A0A42060A"
theorem cover_175394 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_175394 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 41) (hex := hex_175394)
  decide +kernel
#print axioms cover_175394
end Mub6.Numerical.CircleFullPrototype.Forest
