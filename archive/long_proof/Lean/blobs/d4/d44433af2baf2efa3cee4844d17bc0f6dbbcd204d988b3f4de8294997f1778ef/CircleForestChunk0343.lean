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
def state_1019697 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 15) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 12)))
def hex_1019697 : String := "4442414440080840074308420A410708440640060808424140074344070744424107060707400643440606440609410740074307440507"
theorem cover_1019697 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1019697 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 55) (hex := hex_1019697)
  decide +kernel
#print axioms cover_1019697

def state_1019753 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 15) else (if j.val < 3 then 9 else (if j.val < 4 then 24 else 12)))
def hex_1019753 : String := "44424140080A08084241404307444241070807070A4043084408420607430A4408420A0A410708"
theorem cover_1019753 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1019753 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 39) (hex := hex_1019753)
  decide +kernel
#print axioms cover_1019753

def state_1019797 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 30) else (if j.val < 3 then 18 else (if j.val < 4 then 25 else 48)))
def hex_1019797 : String := "43084241444008094043080A43084241440940060906414408400809080808"
theorem cover_1019797 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1019797 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 31) (hex := hex_1019797)
  decide +kernel
#print axioms cover_1019797

def state_1019829 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 30) else (if j.val < 3 then 18 else (if j.val < 4 then 50 else 49)))
def hex_1019829 : String := "42414044080744084307424105400605070808"
theorem cover_1019829 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1019829 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 19) (hex := hex_1019829)
  decide +kernel
#print axioms cover_1019829

def state_1019851 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 60) else (if j.val < 3 then 36 else (if j.val < 4 then 51 else 49)))
def hex_1019851 : String := "44434206070A43070A"
theorem cover_1019851 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1019851 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_1019851)
  decide +kernel
#print axioms cover_1019851

def state_1019861 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 60) else (if j.val < 3 then 36 else (if j.val < 4 then 51 else 98)))
def hex_1019861 : String := "4342414044060644430505050641400744080708424140064443050A050641400A444342410708070A43070A400A4409434206080A"
theorem cover_1019861 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1019861 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 53) (hex := hex_1019861)
  decide +kernel
#print axioms cover_1019861

def state_1019914 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 60) else (if j.val < 3 then 36 else (if j.val < 4 then 51 else 99)))
def hex_1019914 : String := "4342414007054006440505410740074408074241400A054006064107400A4443420A070A43070A"
theorem cover_1019914 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1019914 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 39) (hex := hex_1019914)
  decide +kernel
#print axioms cover_1019914
end Mub6.Numerical.CircleFullD0.Forest
