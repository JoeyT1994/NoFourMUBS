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
def state_173705 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 51) else (if j.val < 3 then 18 else (if j.val < 4 then 29 else 47)))
def hex_173705 : String := "404208430A0842084344050908"
theorem cover_173705 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_173705 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_173705)
  decide +kernel
#print axioms cover_173705

def state_173719 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 19 else (if j.val < 4 then 28 else 23)))
def hex_173719 : String := "06"
theorem cover_173719 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_173719 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_173719)
  decide +kernel
#print axioms cover_173719

def state_173721 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 19 else (if j.val < 4 then 29 else 46)))
def hex_173721 : String := "414042430505050505"
theorem cover_173721 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_173721 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_173721)
  decide +kernel
#print axioms cover_173721

def state_173734 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 50) else (if j.val < 3 then 38 else (if j.val < 4 then 58 else 47)))
def hex_173734 : String := "06"
theorem cover_173734 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_173734 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_173734)
  decide +kernel
#print axioms cover_173734

def state_173736 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 50) else (if j.val < 3 then 38 else (if j.val < 4 then 59 else 94)))
def hex_173736 : String := "41404243064406410606064243060805400605"
theorem cover_173736 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_173736 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_173736)
  decide +kernel
#print axioms cover_173736

def state_173757 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 100) else (if j.val < 3 then 38 else (if j.val < 4 then 59 else 95)))
def hex_173757 : String := "424306444140420A0642430608060A41400A420A43060A0A06"
theorem cover_173757 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_173757 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 25) (hex := hex_173757)
  decide +kernel
#print axioms cover_173757

def state_173783 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 100) else (if j.val < 3 then 76 else (if j.val < 4 then 59 else 95)))
def hex_173783 : String := "43444107400609410909444140424344070708430695420743070740420843060842080541404243090A43440609954209430795400A4209430995"
theorem cover_173783 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_173783 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 59) (hex := hex_173783)
  decide +kernel
#print axioms cover_173783

def state_173842 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 100) else (if j.val < 3 then 77 else (if j.val < 4 then 59 else 95)))
def hex_173842 : String := "43064441060541404243069506424306950640064243069505"
theorem cover_173842 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_173842 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 25) (hex := hex_173842)
  decide +kernel
#print axioms cover_173842

def state_173867 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 101) else (if j.val < 3 then 38 else (if j.val < 4 then 59 else 95)))
def hex_173867 : String := "40420A06424344050944050A430505"
theorem cover_173867 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_173867 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 15) (hex := hex_173867)
  decide +kernel
#print axioms cover_173867

def state_173882 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 50) else (if j.val < 3 then 39 else (if j.val < 4 then 29 else 47)))
def hex_173882 : String := "06"
theorem cover_173882 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_173882 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_173882)
  decide +kernel
#print axioms cover_173882

def state_173883 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 50) else (if j.val < 3 then 19 else (if j.val < 4 then 29 else 47)))
def hex_173883 : String := "4243440541070544410505414240430744410705090740434405074405410705054240430505050543054405414042430505050505"
theorem cover_173883 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_173883 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 53) (hex := hex_173883)
  decide +kernel
#print axioms cover_173883

def state_173936 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 51) else (if j.val < 3 then 19 else (if j.val < 4 then 29 else 47)))
def hex_173936 : String := "40424306440541400A05050505"
theorem cover_173936 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_173936 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_173936)
  decide +kernel
#print axioms cover_173936

def state_173951 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 24) else (if j.val < 3 then 9 else (if j.val < 4 then 15 else 22)))
def hex_173951 : String := "400942084341090909"
theorem cover_173951 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_173951 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_173951)
  decide +kernel
#print axioms cover_173951
end Mub6.Numerical.CircleFullPrototype.Forest
