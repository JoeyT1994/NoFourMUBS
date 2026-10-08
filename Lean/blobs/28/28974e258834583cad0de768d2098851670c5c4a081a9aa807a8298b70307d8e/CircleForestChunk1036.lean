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
def state_1549019 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 60) else (if j.val < 3 then 103 else (if j.val < 4 then 41 else 86)))
def hex_1549019 : String := "4341404244074143404205440543080508050544414308070789424408084408894005084140070905"
theorem cover_1549019 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1549019 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 41) (hex := hex_1549019)
  decide +kernel
#print axioms cover_1549019

def state_1549061 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 60) else (if j.val < 3 then 103 else (if j.val < 4 then 82 else 87)))
def hex_1549061 : String := "414042444143404209444341090505090909434005420544050805410943404205440509090589424409098940424405058942440843080589"
theorem cover_1549061 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1549061 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 57) (hex := hex_1549061)
  decide +kernel
#print axioms cover_1549061

def state_1549118 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 60) else (if j.val < 3 then 103 else (if j.val < 4 then 83 else 87)))
def hex_1549118 : String := "41404209890905"
theorem cover_1549118 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1549118 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1549118)
  decide +kernel
#print axioms cover_1549118

def state_1549125 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 60) else (if j.val < 3 then 51 else (if j.val < 4 then 41 else 43)))
def hex_1549125 : String := "424409094443080943414042098908404208060609"
theorem cover_1549125 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1549125 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_1549125)
  decide +kernel
#print axioms cover_1549125

def state_1549146 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 61) else (if j.val < 3 then 51 else (if j.val < 4 then 41 else 43)))
def hex_1549146 : String := "404205440505424405054406430605"
theorem cover_1549146 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1549146 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 15) (hex := hex_1549146)
  decide +kernel
#print axioms cover_1549146

def state_1549161 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 30) else (if j.val < 3 then 25 else (if j.val < 4 then 20 else 21)))
def hex_1549161 : String := "42440843080944064306414042094406090606"
theorem cover_1549161 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1549161 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 19) (hex := hex_1549161)
  decide +kernel
#print axioms cover_1549161

def state_1549180 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 31) else (if j.val < 3 then 25 else (if j.val < 4 then 20 else 21)))
def hex_1549180 : String := "404205440543060506"
theorem cover_1549180 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1549180 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1549180)
  decide +kernel
#print axioms cover_1549180

def state_1549189 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 15) else (if j.val < 3 then 25 else (if j.val < 4 then 21 else 10)))
def hex_1549189 : String := "440541404205434405414042054405090905054209434409090905"
theorem cover_1549189 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1549189 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 27) (hex := hex_1549189)
  decide +kernel
#print axioms cover_1549189

def state_1549219 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 24 else (if j.val < 4 then 10 else 11)))
def hex_1549219 : String := "06"
theorem cover_1549219 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1549219 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1549219)
  decide +kernel
#print axioms cover_1549219
end Mub6.Numerical.CircleFullD0.Forest
