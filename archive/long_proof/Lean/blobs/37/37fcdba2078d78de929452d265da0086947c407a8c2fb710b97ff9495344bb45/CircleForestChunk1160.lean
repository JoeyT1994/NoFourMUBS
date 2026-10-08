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
def state_1578867 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 66) else (if j.val < 3 then 192 else (if j.val < 4 then 208 else 206)))
def hex_1578867 : String := "40414208440807084142064406430640070606"
theorem cover_1578867 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1578867 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_1578867)
  decide +kernel
#print axioms cover_1578867

def state_1578887 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 152 else 66) else (if j.val < 3 then 192 else (if j.val < 4 then 209 else 206)))
def hex_1578887 : String := "41420844080808"
theorem cover_1578887 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1578887 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1578887)
  decide +kernel
#print axioms cover_1578887

def state_1578895 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 153 else 132) else (if j.val < 3 then 192 else (if j.val < 4 then 209 else 206)))
def hex_1578895 : String := "4244430608430808444340414208090806400A410A0A434041420807074142440505444305400705430505420544050540410A08410A4208440A0A"
theorem cover_1578895 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1578895 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 59) (hex := hex_1578895)
  decide +kernel
#print axioms cover_1578895

def state_1578954 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 153 else 133) else (if j.val < 3 then 192 else (if j.val < 4 then 209 else 206)))
def hex_1578954 : String := "420844430608430808"
theorem cover_1578954 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1578954 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_1578954)
  decide +kernel
#print axioms cover_1578954

def state_1578964 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 66) else (if j.val < 3 then 192 else (if j.val < 4 then 208 else 207)))
def hex_1578964 : String := "40414208070741424405054443054007054305054205440505"
theorem cover_1578964 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1578964 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 25) (hex := hex_1578964)
  decide +kernel
#print axioms cover_1578964

def state_1578989 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 66) else (if j.val < 3 then 192 else (if j.val < 4 then 209 else 207)))
def hex_1578989 : String := "4041420844070708414244430508430505444340070540410A07410A420544050543400705400605420844430508430505"
theorem cover_1578989 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1578989 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 49) (hex := hex_1578989)
  decide +kernel
#print axioms cover_1578989

def state_1579040 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 66) else (if j.val < 3 then 193 else (if j.val < 4 then 208 else 206)))
def hex_1579040 : String := "400741424443064007064307074407074244060707"
theorem cover_1579040 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1579040 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_1579040)
  decide +kernel
#print axioms cover_1579040

def state_1579061 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 66) else (if j.val < 3 then 193 else (if j.val < 4 then 209 else 206)))
def hex_1579061 : String := "404142440707070741424443400709094340074142440907070740074142440943070A09424443070707074409430707424443074007410907430707440707"
theorem cover_1579061 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1579061 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 63) (hex := hex_1579061)
  decide +kernel
#print axioms cover_1579061
end Mub6.Numerical.CircleFullD0.Forest
