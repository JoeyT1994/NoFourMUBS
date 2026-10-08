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
def state_73920 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 49) else (if j.val < 3 then 21 else (if j.val < 4 then 24 else 21)))
def hex_73920 : String := "4340424443414009064009424406080641400506404244050509420A0643094109094406094244060806404244410543400506050A4406410509420A06"
theorem cover_73920 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_73920 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 61) (hex := hex_73920)
  decide +kernel
#print axioms cover_73920

def state_73981 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 24) else (if j.val < 3 then 10 else (if j.val < 4 then 25 else 10)))
def hex_73981 : String := "420A4441064043060506410A4043420505050A"
theorem cover_73981 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_73981 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_73981)
  decide +kernel
#print axioms cover_73981

def state_74007 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 50) else (if j.val < 3 then 40 else (if j.val < 4 then 48 else 20)))
def hex_74007 : String := "444340090909434041420AB84206B841420AB842440907B840410A4206440907410A4209440907"
theorem cover_74007 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_74007 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 39) (hex := hex_74007)
  decide +kernel
#print axioms cover_74007

def state_74047 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 50) else (if j.val < 3 then 41 else (if j.val < 4 then 48 else 40)))
def hex_74047 : String := "4340414408B84408B8414406B844420906B840084144064209064408420906"
theorem cover_74047 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_74047 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 31) (hex := hex_74047)
  decide +kernel
#print axioms cover_74047

def state_74079 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 50) else (if j.val < 3 then 41 else (if j.val < 4 then 96 else 41)))
def hex_74079 : String := "B8"
theorem cover_74079 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_74079 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_74079)
  decide +kernel
#print axioms cover_74079

def state_74083 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 100) else (if j.val < 3 then 82 else (if j.val < 4 then 97 else 41)))
def hex_74083 : String := "44434041090809094340410A070A0A"
theorem cover_74083 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_74083 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 15) (hex := hex_74083)
  decide +kernel
#print axioms cover_74083

def state_74098 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 100) else (if j.val < 3 then 83 else (if j.val < 4 then 97 else 41)))
def hex_74098 : String := "4443400841060808434041420505424408070841420A44060A42444340080A080A440843404142070607410642070640080640410508410A420A08"
theorem cover_74098 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_74098 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 59) (hex := hex_74098)
  decide +kernel
#print axioms cover_74098

def state_74157 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 101) else (if j.val < 3 then 41 else (if j.val < 4 then 97 else 41)))
def hex_74157 : String := "4244434008090807440843400741424408074408070708"
theorem cover_74157 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_74157 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 23) (hex := hex_74157)
  decide +kernel
#print axioms cover_74157
end Mub6.Numerical.CircleFullPrototype.Forest
