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
def state_2569841 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 49) else (if j.val < 3 then 60 else (if j.val < 4 then 57 else 94)))
def hex_2569841 : String := "41404342444140060940070A410940050909424406410608064342440A41090A09420A0940434244070544414005090741050508430A08"
theorem cover_2569841 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2569841 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 55) (hex := hex_2569841)
  decide +kernel
#print axioms cover_2569841

def state_2569896 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 49) else (if j.val < 3 then 60 else (if j.val < 4 then 57 else 95)))
def hex_2569896 : String := "414043090943090940054342440A0509420808"
theorem cover_2569896 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2569896 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 19) (hex := hex_2569896)
  decide +kernel
#print axioms cover_2569896

def state_2569915 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 49) else (if j.val < 3 then 61 else (if j.val < 4 then 57 else 47)))
def hex_2569915 : String := "444109404309084309084109400509"
theorem cover_2569915 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2569915 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 15) (hex := hex_2569915)
  decide +kernel
#print axioms cover_2569915

def state_2569930 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 49) else (if j.val < 3 then 30 else (if j.val < 4 then 28 else 47)))
def hex_2569930 : String := "434244414043080A050A41400906064441090A0942440A414009090A4441090A09"
theorem cover_2569930 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2569930 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 33) (hex := hex_2569930)
  decide +kernel
#print axioms cover_2569930

def state_2569963 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 24) else (if j.val < 3 then 31 else (if j.val < 4 then 28 else 23)))
def hex_2569963 : String := "41444009050944404342414409094440434241064406090606430505400909094241064406090643424105440509054241050A094043090909"
theorem cover_2569963 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2569963 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 57) (hex := hex_2569963)
  decide +kernel
#print axioms cover_2569963

def state_2570020 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 24) else (if j.val < 3 then 15 else (if j.val < 4 then 29 else 23)))
def hex_2570020 : String := "4241444006054043424106440609060643090844404342080606430A0840434244084140080808440808084342440A410A0809084109444006430906400609"
theorem cover_2570020 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2570020 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 63) (hex := hex_2570020)
  decide +kernel
#print axioms cover_2570020
end Mub6.Numerical.CircleFullD0.Forest
