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
def state_10904 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 12 else (if j.val < 4 then 4 else 4)))
def hex_10904 : String := "4041430A080A41430A444208400841430707074208400841430908080A"
theorem cover_10904 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_10904 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 29) (hex := hex_10904)
  decide +kernel
#print axioms cover_10904

def state_10934 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 7) else (if j.val < 3 then 13 else (if j.val < 4 then 4 else 4)))
def hex_10934 : String := "41434406420A4144060706440808430608"
theorem cover_10934 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_10934 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_10934)
  decide +kernel
#print axioms cover_10934

def state_10954 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 14) else (if j.val < 3 then 13 else (if j.val < 4 then 8 else 8)))
def hex_10954 : String := "424041430A444208060A0641430A4442070542094009090940064143054405400641424305440509050505"
theorem cover_10954 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_10954 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 43) (hex := hex_10954)
  decide +kernel
#print axioms cover_10954

def state_10997 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 14) else (if j.val < 3 then 13 else (if j.val < 4 then 8 else 9)))
def hex_10997 : String := "4209404144430641400609060909414443094009090909"
theorem cover_10997 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_10997 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 23) (hex := hex_10997)
  decide +kernel
#print axioms cover_10997

def state_11022 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 14) else (if j.val < 3 then 26 else (if j.val < 4 then 9 else 8)))
def hex_11022 : String := "40410808414344420740080742400807400841434407090808084344070808"
theorem cover_11022 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_11022 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 31) (hex := hex_11022)
  decide +kernel
#print axioms cover_11022

def state_11053 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 14) else (if j.val < 3 then 27 else (if j.val < 4 then 9 else 8)))
def hex_11053 : String := "404143440608080841434440084143050805404143420806080841434244400805400809440540060542080843420805084408084344050808"
theorem cover_11053 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_11053 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 57) (hex := hex_11053)
  decide +kernel
#print axioms cover_11053
end Mub6.Numerical.CircleFullPrototype.Forest
