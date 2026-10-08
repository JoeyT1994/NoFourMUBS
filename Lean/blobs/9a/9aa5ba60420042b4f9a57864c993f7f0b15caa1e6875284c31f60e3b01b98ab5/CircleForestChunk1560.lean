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
def state_2247825 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 52) else (if j.val < 3 then 38 else (if j.val < 4 then 47 else 48)))
def hex_2247825 : String := "400743440A0A4441424007CF4008CF0741424005430A05404344080505434441420A4008080841420A40430A050A0A4441424005430A0508080507"
theorem cover_2247825 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2247825 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 59) (hex := hex_2247825)
  decide +kernel
#print axioms cover_2247825

def state_2247884 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 52) else (if j.val < 3 then 39 else (if j.val < 4 then 47 else 48)))
def hex_2247884 : String := "40084344414240080808084142404308080A080844084142400843440841424008080808080808"
theorem cover_2247884 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2247884 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 39) (hex := hex_2247884)
  decide +kernel
#print axioms cover_2247884

def state_2247923 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 53) else (if j.val < 3 then 19 else (if j.val < 4 then 47 else 48)))
def hex_2247923 : String := "420708"
theorem cover_2247923 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2247923 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_2247923)
  decide +kernel
#print axioms cover_2247923

def state_2247928 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 52) else (if j.val < 3 then 38 else (if j.val < 4 then 47 else 49)))
def hex_2247928 : String := "400743444142070A0741090544414205400543440505050505"
theorem cover_2247928 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2247928 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 25) (hex := hex_2247928)
  decide +kernel
#print axioms cover_2247928

def state_2247954 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 52) else (if j.val < 3 then 39 else (if j.val < 4 then 47 else 49)))
def hex_2247954 : String := "43444142400743070808074142054005434408050505440805"
theorem cover_2247954 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2247954 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 25) (hex := hex_2247954)
  decide +kernel
#print axioms cover_2247954

def state_2247981 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 52) else (if j.val < 3 then 39 else (if j.val < 4 then 94 else 98)))
def hex_2247981 : String := "414240430A4441420A080841420540050805430A440A0A4008430A440841400807080A"
theorem cover_2247981 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2247981 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 35) (hex := hex_2247981)
  decide +kernel
#print axioms cover_2247981

def state_2248016 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 52) else (if j.val < 3 then 39 else (if j.val < 4 then 94 else 99)))
def hex_2248016 : String := "414240430905094043440A41090944414205080505430A4441090A090A"
theorem cover_2248016 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2248016 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 29) (hex := hex_2248016)
  decide +kernel
#print axioms cover_2248016
end Mub6.Numerical.CircleFullD0.Forest
