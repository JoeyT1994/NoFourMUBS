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
def state_141924 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 114) else (if j.val < 3 then 113 else (if j.val < 4 then 41 else 59)))
def hex_141924 : String := "4443400806404106420605064340414244430606824443084008068242080841420644068242084406824041420943440707074209434405090941060A"
theorem cover_141924 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_141924 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 61) (hex := hex_141924)
  decide +kernel
#print axioms cover_141924

def state_141985 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 115) else (if j.val < 3 then 56 else (if j.val < 4 then 41 else 59)))
def hex_141985 : String := "42440A4308094443080A434008080A"
theorem cover_141985 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_141985 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 15) (hex := hex_141985)
  decide +kernel
#print axioms cover_141985

def state_142001 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 57) else (if j.val < 3 then 57 else (if j.val < 4 then 20 else 58)))
def hex_142001 : String := "430805"
theorem cover_142001 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_142001 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_142001)
  decide +kernel
#print axioms cover_142001

def state_142005 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 57) else (if j.val < 3 then 57 else (if j.val < 4 then 40 else 59)))
def hex_142005 : String := "40410A084142430844084008080908"
theorem cover_142005 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_142005 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_142005)
  decide +kernel
#print axioms cover_142005

def state_142021 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 57) else (if j.val < 3 then 57 else (if j.val < 4 then 41 else 59)))
def hex_142021 : String := "41424405434005414244054305050505070505"
theorem cover_142021 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_142021 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 19) (hex := hex_142021)
  decide +kernel
#print axioms cover_142021

def state_142042 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 114) else (if j.val < 3 then 114 else (if j.val < 4 then 41 else 59)))
def hex_142042 : String := "444340050940050643404142444305058244050A4244050805414244068244098242440882054041070541424344068207434405820742434405820A05"
theorem cover_142042 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_142042 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 61) (hex := hex_142042)
  decide +kernel
#print axioms cover_142042

def state_142103 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 114) else (if j.val < 3 then 115 else (if j.val < 4 then 41 else 59)))
def hex_142103 : String := "44054340050505"
theorem cover_142103 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_142103 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_142103)
  decide +kernel
#print axioms cover_142103

def state_142110 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 115) else (if j.val < 3 then 57 else (if j.val < 4 then 41 else 59)))
def hex_142110 : String := "424405434005050505"
theorem cover_142110 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_142110 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_142110)
  decide +kernel
#print axioms cover_142110

def state_142119 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 29 else (if j.val < 4 then 20 else 14)))
def hex_142119 : String := "440540410A0541424443090743094007410742440507050942440543050505"
theorem cover_142119 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_142119 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 31) (hex := hex_142119)
  decide +kernel
#print axioms cover_142119
end Mub6.Numerical.CircleFullPrototype.Forest
