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
def state_1589839 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 17) else (if j.val < 3 then 49 else (if j.val < 4 then 27 else 52)))
def hex_1589839 : String := "404341424440430806084006050842444043054142050605050544404308060840060841064244400643050506064341084205084108420508"
theorem cover_1589839 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1589839 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 57) (hex := hex_1589839)
  decide +kernel
#print axioms cover_1589839

def state_1589896 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 17) else (if j.val < 3 then 49 else (if j.val < 4 then 27 else 53)))
def hex_1589896 : String := "40434106420506064305410605"
theorem cover_1589896 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1589896 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_1589896)
  decide +kernel
#print axioms cover_1589896

def state_1589909 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 8) else (if j.val < 3 then 24 else (if j.val < 4 then 27 else 27)))
def hex_1589909 : String := "41064240430506054006430506"
theorem cover_1589909 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1589909 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_1589909)
  decide +kernel
#print axioms cover_1589909

def state_1589922 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 8) else (if j.val < 3 then 24 else (if j.val < 4 then 13 else 13)))
def hex_1589922 : String := "43444108050544410842054044080505410805"
theorem cover_1589922 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1589922 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_1589922)
  decide +kernel
#print axioms cover_1589922

def state_1589941 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 8) else (if j.val < 3 then 25 else (if j.val < 4 then 13 else 13)))
def hex_1589941 : String := "404344410842434408084408080841084243400A08400608430806444108424440430806084006084408060643440808440808"
theorem cover_1589941 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1589941 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 51) (hex := hex_1589941)
  decide +kernel
#print axioms cover_1589941

def state_1589995 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 9) else (if j.val < 3 then 24 else (if j.val < 4 then 26 else 13)))
def hex_1589995 : String := "44414205430544414042054405050505050505"
theorem cover_1589995 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1589995 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 19) (hex := hex_1589995)
  decide +kernel
#print axioms cover_1589995

def state_1590017 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 18) else (if j.val < 3 then 48 else (if j.val < 4 then 27 else 26)))
def hex_1590017 : String := "444140430505050505"
theorem cover_1590017 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1590017 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1590017)
  decide +kernel
#print axioms cover_1590017

def state_1590027 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 18) else (if j.val < 3 then 49 else (if j.val < 4 then 27 else 52)))
def hex_1590027 : String := "4140434205444041430542050643050505054244404305050505444043410606064305410605400605430505404305420544414043050505050505"
theorem cover_1590027 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1590027 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 59) (hex := hex_1590027)
  decide +kernel
#print axioms cover_1590027

def state_1590086 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 18) else (if j.val < 3 then 49 else (if j.val < 4 then 27 else 53)))
def hex_1590086 : String := "41404305060505"
theorem cover_1590086 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1590086 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1590086)
  decide +kernel
#print axioms cover_1590086

def state_1590093 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 19) else (if j.val < 3 then 24 else (if j.val < 4 then 27 else 26)))
def hex_1590093 : String := "4205440505"
theorem cover_1590093 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1590093 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1590093)
  decide +kernel
#print axioms cover_1590093
end Mub6.Numerical.CircleFullD0.Forest
