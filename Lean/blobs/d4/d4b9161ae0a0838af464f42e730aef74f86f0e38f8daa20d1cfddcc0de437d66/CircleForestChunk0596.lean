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
def state_1331791 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 9) else (if j.val < 3 then 15 else (if j.val < 4 then 11 else 12)))
def hex_1331791 : String := "4344090A444142400743090709074142400843444108050844410605064043080743440908444108070842054007430907"
theorem cover_1331791 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1331791 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 49) (hex := hex_1331791)
  decide +kernel
#print axioms cover_1331791

def state_1331841 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 9) else (if j.val < 3 then 15 else (if j.val < 4 then 22 else 12)))
def hex_1331841 : String := "444142440940094306414244064306400906060609064142400A4307444107420A060740094306440907420A09"
theorem cover_1331841 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1331841 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 45) (hex := hex_1331841)
  decide +kernel
#print axioms cover_1331841

def state_1331891 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 18) else (if j.val < 3 then 30 else (if j.val < 4 then 46 else 48)))
def hex_1331891 : String := "40094142440643064007060606"
theorem cover_1331891 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1331891 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1331891)
  decide +kernel
#print axioms cover_1331891

def state_1331905 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 18) else (if j.val < 3 then 30 else (if j.val < 4 then 46 else 49)))
def hex_1331905 : String := "4142430944400741080740084108050909"
theorem cover_1331905 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1331905 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_1331905)
  decide +kernel
#print axioms cover_1331905

def state_1331925 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 36) else (if j.val < 3 then 60 else (if j.val < 4 then 92 else 49)))
def hex_1331925 : String := "4440090640414243080809420509414243064406060606"
theorem cover_1331925 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1331925 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_1331925)
  decide +kernel
#print axioms cover_1331925

def state_1331949 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 36) else (if j.val < 3 then 60 else (if j.val < 4 then 93 else 98)))
def hex_1331949 : String := "4041424344094008410806440740070A4309440708420509414243060A0606"
theorem cover_1331949 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1331949 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 31) (hex := hex_1331949)
  decide +kernel
#print axioms cover_1331949

def state_1331981 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 102 else 36) else (if j.val < 3 then 60 else (if j.val < 4 then 93 else 99)))
def hex_1331981 : String := "41420808420543094440054109054005410805"
theorem cover_1331981 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1331981 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_1331981)
  decide +kernel
#print axioms cover_1331981

def state_1332000 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 36) else (if j.val < 3 then 60 else (if j.val < 4 then 93 else 99)))
def hex_1332000 : String := "414243444041080606400806440A40080A434406400806440A40080A4243064406054306440640414205060506"
theorem cover_1332000 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1332000 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 45) (hex := hex_1332000)
  decide +kernel
#print axioms cover_1332000
end Mub6.Numerical.CircleFullD0.Forest
