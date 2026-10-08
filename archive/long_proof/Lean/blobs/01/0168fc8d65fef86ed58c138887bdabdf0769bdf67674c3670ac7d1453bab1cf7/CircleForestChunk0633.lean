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
def state_1340832 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 24) else (if j.val < 3 then 22 else (if j.val < 4 then 9 else 22)))
def hex_1340832 : String := "4340414207094244064340410906064041054405420605070909400507"
theorem cover_1340832 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1340832 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 29) (hex := hex_1340832)
  decide +kernel
#print axioms cover_1340832

def state_1340864 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 30 else 48) else (if j.val < 3 then 22 else (if j.val < 4 then 18 else 23)))
def hex_1340864 : String := "44424340410A444207090A090709420A43400609400509"
theorem cover_1340864 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1340864 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 23) (hex := hex_1340864)
  decide +kernel
#print axioms cover_1340864

def state_1340892 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 60 else 98) else (if j.val < 3 then 44 else (if j.val < 4 then 36 else 46)))
def hex_1340892 : String := "4442434041070907070942430A0A430909"
theorem cover_1340892 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1340892 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 17) (hex := hex_1340892)
  decide +kernel
#print axioms cover_1340892

def state_1340909 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 60 else 99) else (if j.val < 3 then 44 else (if j.val < 4 then 36 else 46)))
def hex_1340909 : String := "444243060609424340444142060906084406410A06404441420609064142080A084406410A06434044094109090940440541050909"
theorem cover_1340909 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1340909 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 53) (hex := hex_1340909)
  decide +kernel
#print axioms cover_1340909

def state_1340962 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 61 else 49) else (if j.val < 3 then 44 else (if j.val < 4 then 36 else 46)))
def hex_1340962 : String := "410909"
theorem cover_1340962 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1340962 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_1340962)
  decide +kernel
#print axioms cover_1340962

def state_1340965 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 30 else 49) else (if j.val < 3 then 44 else (if j.val < 4 then 37 else 46)))
def hex_1340965 : String := "404144074207054442434005060505424340054407410742060605434005090541074409420709"
theorem cover_1340965 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1340965 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 39) (hex := hex_1340965)
  decide +kernel
#print axioms cover_1340965

def state_1341004 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 30 else 49) else (if j.val < 3 then 45 else (if j.val < 4 then 18 else 46)))
def hex_1341004 : String := "430909"
theorem cover_1341004 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1341004 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_1341004)
  decide +kernel
#print axioms cover_1341004

def state_1341009 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 30 else 49) else (if j.val < 3 then 44 else (if j.val < 4 then 36 else 47)))
def hex_1341009 : String := "404441420A430A0A424340080A40080A4340444142080707070940444105420805414208050809410A4208430740080A44410A420A090A"
theorem cover_1341009 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1341009 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 55) (hex := hex_1341009)
  decide +kernel
#print axioms cover_1341009
end Mub6.Numerical.CircleFullD0.Forest
