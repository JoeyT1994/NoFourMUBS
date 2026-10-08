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
def state_288039 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 57 else 45) else (if j.val < 3 then 47 else (if j.val < 4 then 57 else 34)))
def hex_288039 : String := "4241090941404344064207060706404344094209414043090706404309440742070709440742070709"
theorem cover_288039 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_288039 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 41) (hex := hex_288039)
  decide +kernel
#print axioms cover_288039

def state_288080 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 57 else 45) else (if j.val < 3 then 47 else (if j.val < 4 then 57 else 35)))
def hex_288080 : String := "42414043440808080840434442054109054205410A050505A9"
theorem cover_288080 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_288080 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 25) (hex := hex_288080)
  decide +kernel
#print axioms cover_288080

def state_288105 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 22) else (if j.val < 3 then 23 else (if j.val < 4 then 29 else 8)))
def hex_288105 : String := "44420707424107404344070605054140070740434407424107064107400643A907074344420707420841084043A9070508"
theorem cover_288105 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_288105 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 49) (hex := hex_288105)
  decide +kernel
#print axioms cover_288105

def state_288154 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 22) else (if j.val < 3 then 23 else (if j.val < 4 then 14 else 8)))
def hex_288154 : String := "43440942094143060843094044094208410643090508440808"
theorem cover_288154 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_288154 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 25) (hex := hex_288154)
  decide +kernel
#print axioms cover_288154

def state_288180 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 23) else (if j.val < 3 then 22 else (if j.val < 4 then 14 else 8)))
def hex_288180 : String := "05"
theorem cover_288180 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_288180 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_288180)
  decide +kernel
#print axioms cover_288180

def state_288184 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 23) else (if j.val < 3 then 23 else (if j.val < 4 then 28 else 16)))
def hex_288184 : String := "414205404344094209084442050A4205410A050905"
theorem cover_288184 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_288184 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 21) (hex := hex_288184)
  decide +kernel
#print axioms cover_288184

def state_288207 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 46) else (if j.val < 3 then 46 else (if j.val < 4 then 28 else 17)))
def hex_288207 : String := "400605"
theorem cover_288207 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_288207 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_288207)
  decide +kernel
#print axioms cover_288207

def state_288212 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 56 else 46) else (if j.val < 3 then 47 else (if j.val < 4 then 56 else 17)))
def hex_288212 : String := "44424140060905084206414006430844080606"
theorem cover_288212 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_288212 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_288212)
  decide +kernel
#print axioms cover_288212

def state_288231 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 56 else 46) else (if j.val < 3 then 47 else (if j.val < 4 then 57 else 17)))
def hex_288231 : String := "444205414340084442050A424105054143080A08400A440A42050A43080542064143400644420641A906060606"
theorem cover_288231 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_288231 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 45) (hex := hex_288231)
  decide +kernel
#print axioms cover_288231
end Mub6.Numerical.CircleFullPrototype.Forest
