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
def state_1471997 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 43) else (if j.val < 3 then 16 else (if j.val < 4 then 44 else 56)))
def hex_1471997 : String := "4240434105440542050505054043060608"
theorem cover_1471997 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1471997 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_1471997)
  decide +kernel
#print axioms cover_1471997

def state_1472017 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 43) else (if j.val < 3 then 32 else (if j.val < 4 then 88 else 57)))
def hex_1472017 : String := "4144090944428640434106064106060842864043410A444286060A414409094442860642860A434107074109440809"
theorem cover_1472017 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1472017 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 47) (hex := hex_1472017)
  decide +kernel
#print axioms cover_1472017

def state_1472065 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 86) else (if j.val < 3 then 32 else (if j.val < 4 then 89 else 57)))
def hex_1472065 : String := "440909"
theorem cover_1472065 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1472065 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_1472065)
  decide +kernel
#print axioms cover_1472065

def state_1472068 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 87) else (if j.val < 3 then 32 else (if j.val < 4 then 89 else 57)))
def hex_1472068 : String := "44420540434105060505424043864109440507094043410944428606428640434106064106064309094109444240060506424007094007430907430909"
theorem cover_1472068 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1472068 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 61) (hex := hex_1472068)
  decide +kernel
#print axioms cover_1472068

def state_1472129 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 43) else (if j.val < 3 then 32 else (if j.val < 4 then 44 else 57)))
def hex_1472129 : String := "4341094405094109440509"
theorem cover_1472129 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1472129 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 11) (hex := hex_1472129)
  decide +kernel
#print axioms cover_1472129

def state_1472142 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 43) else (if j.val < 3 then 33 else (if j.val < 4 then 88 else 57)))
def hex_1472142 : String := "414442400608060A44084240430A410A44060A4307410808400A08"
theorem cover_1472142 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1472142 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 27) (hex := hex_1472142)
  decide +kernel
#print axioms cover_1472142

def state_1472170 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 86) else (if j.val < 3 then 33 else (if j.val < 4 then 89 else 57)))
def hex_1472170 : String := "4442400609064209400A09"
theorem cover_1472170 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1472170 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 11) (hex := hex_1472170)
  decide +kernel
#print axioms cover_1472170

def state_1472181 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 87) else (if j.val < 3 then 33 else (if j.val < 4 then 89 else 57)))
def hex_1472181 : String := "4442400608064240434144060A4406424006430606064144064209064406424006430606064341090841094408420908404306064308410808"
theorem cover_1472181 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1472181 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 57) (hex := hex_1472181)
  decide +kernel
#print axioms cover_1472181

def state_1472238 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 43) else (if j.val < 3 then 33 else (if j.val < 4 then 44 else 57)))
def hex_1472238 : String := "4341090841094408420908"
theorem cover_1472238 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1472238 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_1472238)
  decide +kernel
#print axioms cover_1472238
end Mub6.Numerical.CircleFullD0.Forest
