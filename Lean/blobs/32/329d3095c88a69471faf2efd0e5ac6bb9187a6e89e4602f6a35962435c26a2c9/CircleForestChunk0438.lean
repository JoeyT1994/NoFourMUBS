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
def state_180749 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 100) else (if j.val < 3 then 100 else (if j.val < 4 then 59 else 60)))
def hex_180749 : String := "4344060A44414240430696430696060641420A080A"
theorem cover_180749 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_180749 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_180749)
  decide +kernel
#print axioms cover_180749

def state_180770 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 100) else (if j.val < 3 then 100 else (if j.val < 4 then 59 else 60)))
def hex_180770 : String := "4344064142070709444142404306964306964006064240060605414240430996094043440607964307964209400A05"
theorem cover_180770 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_180770 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 47) (hex := hex_180770)
  decide +kernel
#print axioms cover_180770

def state_180817 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 100) else (if j.val < 3 then 101 else (if j.val < 4 then 59 else 60)))
def hex_180817 : String := "4043054405084305440541424008050505"
theorem cover_180817 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_180817 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_180817)
  decide +kernel
#print axioms cover_180817

def state_180834 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 101) else (if j.val < 3 then 50 else (if j.val < 4 then 59 else 60)))
def hex_180834 : String := "42400A430544050A05"
theorem cover_180834 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_180834 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_180834)
  decide +kernel
#print axioms cover_180834

def state_180843 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 50) else (if j.val < 3 then 50 else (if j.val < 4 then 59 else 61)))
def hex_180843 : String := "4142400A430944414209080A0A40084308080A"
theorem cover_180843 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_180843 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 19) (hex := hex_180843)
  decide +kernel
#print axioms cover_180843

def state_180862 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 50) else (if j.val < 3 then 50 else (if j.val < 4 then 29 else 30)))
def hex_180862 : String := "434441420705050944414240430944414207074209054142070709094043054405410705054209054142094043074441070508074209400505"
theorem cover_180862 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_180862 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 57) (hex := hex_180862)
  decide +kernel
#print axioms cover_180862

def state_180919 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 50) else (if j.val < 3 then 51 else (if j.val < 4 then 29 else 30)))
def hex_180919 : String := "4043054405084305440541424005050505"
theorem cover_180919 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_180919 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_180919)
  decide +kernel
#print axioms cover_180919

def state_180936 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 51) else (if j.val < 3 then 25 else (if j.val < 4 then 29 else 30)))
def hex_180936 : String := "4240430544050A430544050905"
theorem cover_180936 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_180936 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_180936)
  decide +kernel
#print axioms cover_180936

def state_180949 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 25 else (if j.val < 4 then 29 else 31)))
def hex_180949 : String := "4142400A43094441420940080709094008430808420A05"
theorem cover_180949 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_180949 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 23) (hex := hex_180949)
  decide +kernel
#print axioms cover_180949

def state_180977 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 24) else (if j.val < 3 then 24 else (if j.val < 4 then 15 else 28)))
def hex_180977 : String := "434142440805094244084043080508440909410909"
theorem cover_180977 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_180977 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_180977)
  decide +kernel
#print axioms cover_180977
end Mub6.Numerical.CircleFullPrototype.Forest
