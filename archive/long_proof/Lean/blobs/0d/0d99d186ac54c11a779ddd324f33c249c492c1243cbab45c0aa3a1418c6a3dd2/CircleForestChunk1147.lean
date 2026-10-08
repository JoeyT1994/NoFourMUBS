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
def state_1575698 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 47) else (if j.val < 3 then 28 else (if j.val < 4 then 28 else 47)))
def hex_1575698 : String := "4042064306414440424306070A064042430644410A4042060506410A4042060A060A064440420743414407404306050644074043060706070640EA0606"
theorem cover_1575698 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1575698 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 61) (hex := hex_1575698)
  decide +kernel
#print axioms cover_1575698

def state_1575760 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 46) else (if j.val < 3 then 28 else (if j.val < 4 then 29 else 23)))
def hex_1575760 : String := "44074042434407410A4042430607430A0506440741054042070507430A0507"
theorem cover_1575760 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1575760 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 31) (hex := hex_1575760)
  decide +kernel
#print axioms cover_1575760

def state_1575792 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 47) else (if j.val < 3 then 28 else (if j.val < 4 then 29 else 46)))
def hex_1575792 : String := "07"
theorem cover_1575792 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1575792 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1575792)
  decide +kernel
#print axioms cover_1575792

def state_1575795 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 47) else (if j.val < 3 then 56 else (if j.val < 4 then 29 else 47)))
def hex_1575795 : String := "43414407404207434407414008064008060706440740080609"
theorem cover_1575795 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1575795 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 25) (hex := hex_1575795)
  decide +kernel
#print axioms cover_1575795

def state_1575820 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 47) else (if j.val < 3 then 57 else (if j.val < 4 then 29 else 47)))
def hex_1575820 : String := "434144074042434407410A404243080505074405410540050505074407404243EA0843EA410544054005070741440540050709"
theorem cover_1575820 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1575820 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 51) (hex := hex_1575820)
  decide +kernel
#print axioms cover_1575820

def state_1575871 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 47) else (if j.val < 3 then 28 else (if j.val < 4 then 29 else 47)))
def hex_1575871 : String := "07"
theorem cover_1575871 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1575871 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1575871)
  decide +kernel
#print axioms cover_1575871

def state_1575874 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 46) else (if j.val < 3 then 29 else (if j.val < 4 then 28 else 23)))
def hex_1575874 : String := "0A"
theorem cover_1575874 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1575874 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1575874)
  decide +kernel
#print axioms cover_1575874

def state_1575876 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 47) else (if j.val < 3 then 29 else (if j.val < 4 then 28 else 46)))
def hex_1575876 : String := "404342410A4407404342060842070506410A4405404308050842070507"
theorem cover_1575876 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1575876 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 29) (hex := hex_1575876)
  decide +kernel
#print axioms cover_1575876

def state_1575907 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 47) else (if j.val < 3 then 29 else (if j.val < 4 then 56 else 47)))
def hex_1575907 : String := "42410A4440430842410A44400906400906080640090608"
theorem cover_1575907 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1575907 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 23) (hex := hex_1575907)
  decide +kernel
#print axioms cover_1575907
end Mub6.Numerical.CircleFullD0.Forest
