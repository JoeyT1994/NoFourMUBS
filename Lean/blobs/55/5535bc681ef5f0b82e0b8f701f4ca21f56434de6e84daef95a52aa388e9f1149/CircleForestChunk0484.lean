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
def state_1304851 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 10) else (if j.val < 3 then 12 else (if j.val < 4 then 15 else 11)))
def hex_1304851 : String := "424441094043424405050505434244084108404342080905080905410A400543420A4441054005434244090A090541050A054409410540054344090705"
theorem cover_1304851 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1304851 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 61) (hex := hex_1304851)
  decide +kernel
#print axioms cover_1304851

def state_1304915 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 10) else (if j.val < 3 then 24 else (if j.val < 4 then 14 else 22)))
def hex_1304915 : String := "414043060808404305424408410840430508054441084009054140430708084043054208090505"
theorem cover_1304915 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1304915 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 39) (hex := hex_1304915)
  decide +kernel
#print axioms cover_1304915

def state_1304955 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 20) else (if j.val < 3 then 24 else (if j.val < 4 then 14 else 23)))
def hex_1304955 : String := "4007430608"
theorem cover_1304955 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1304955 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1304955)
  decide +kernel
#print axioms cover_1304955

def state_1304961 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 21) else (if j.val < 3 then 24 else (if j.val < 4 then 14 else 23)))
def hex_1304961 : String := "4342050742444108404305420844080A05410A4043050A0544410740430742444107404305420807054107400707074305420544410705074107400707"
theorem cover_1304961 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1304961 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 61) (hex := hex_1304961)
  decide +kernel
#print axioms cover_1304961

def state_1305022 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 21) else (if j.val < 3 then 24 else (if j.val < 4 then 14 else 23)))
def hex_1305022 : String := "4305420544410805410705"
theorem cover_1305022 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1305022 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_1305022)
  decide +kernel
#print axioms cover_1305022

def state_1305033 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 10) else (if j.val < 3 then 25 else (if j.val < 4 then 14 else 11)))
def hex_1305033 : String := "4441400707404342440507074244094107400943050909430542440541080544090941074007430544424107050707"
theorem cover_1305033 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1305033 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 47) (hex := hex_1305033)
  decide +kernel
#print axioms cover_1305033

def state_1305082 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 10) else (if j.val < 3 then 24 else (if j.val < 4 then 15 else 22)))
def hex_1305082 : String := "410840434208090808"
theorem cover_1305082 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1305082 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1305082)
  decide +kernel
#print axioms cover_1305082
end Mub6.Numerical.CircleFullD0.Forest
