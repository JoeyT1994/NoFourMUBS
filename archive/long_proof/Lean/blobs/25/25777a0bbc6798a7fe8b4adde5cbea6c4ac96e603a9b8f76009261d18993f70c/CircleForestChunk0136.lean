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
def state_53909 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 20) else (if j.val < 3 then 21 else (if j.val < 4 then 24 else 21)))
def hex_53909 : String := "43424440414309424405094409090505090942444041434244050706420A0605054007410A05444041060806400709"
theorem cover_53909 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_53909 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 47) (hex := hex_53909)
  decide +kernel
#print axioms cover_53909

def state_53956 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 21) else (if j.val < 3 then 10 else (if j.val < 4 then 24 else 10)))
def hex_53956 : String := "4205440543414205090541420544050705"
theorem cover_53956 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_53956 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_53956)
  decide +kernel
#print axioms cover_53956

def state_53973 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 24 else 10)))
def hex_53973 : String := "4142054405434042050905404205060505"
theorem cover_53973 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_53973 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_53973)
  decide +kernel
#print axioms cover_53973

def state_53990 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 25 else 10)))
def hex_53990 : String := "40414244050A440843424440070A074406400706420A0642050841420544050A05"
theorem cover_53990 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_53990 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 33) (hex := hex_53990)
  decide +kernel
#print axioms cover_53990

def state_54023 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 11)))
def hex_54023 : String := "434440414243444007410A0507074309070741420A09420509400709444007410A420543090707"
theorem cover_54023 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_54023 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 39) (hex := hex_54023)
  decide +kernel
#print axioms cover_54023

def state_54062 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 5)))
def hex_54062 : String := "444041420A43060608410A054440070A07"
theorem cover_54062 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_54062 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 17) (hex := hex_54062)
  decide +kernel
#print axioms cover_54062

def state_54080 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 11 else (if j.val < 4 then 12 else 5)))
def hex_54080 : String := "444243404144434240410608060606430906440809410644050940410608410644054243050506434041060906064243094440410607090909"
theorem cover_54080 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_54080 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 57) (hex := hex_54080)
  decide +kernel
#print axioms cover_54080

def state_54137 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 11 else (if j.val < 4 then 13 else 5)))
def hex_54137 : String := "44424008060642444007410643060607440606"
theorem cover_54137 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_54137 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_54137)
  decide +kernel
#print axioms cover_54137
end Mub6.Numerical.CircleFullPrototype.Forest
