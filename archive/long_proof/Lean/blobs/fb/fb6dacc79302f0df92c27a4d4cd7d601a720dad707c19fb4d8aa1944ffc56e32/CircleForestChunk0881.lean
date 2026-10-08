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
def state_1512018 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 178) else (if j.val < 3 then 83 else (if j.val < 4 then 105 else 122)))
def hex_1512018 : String := "43424440094143420A050A0A40054105430507444009414305090905424440090A4007410807444009410909400941430542080509"
theorem cover_1512018 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1512018 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 53) (hex := hex_1512018)
  decide +kernel
#print axioms cover_1512018

def state_1512071 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 179) else (if j.val < 3 then 83 else (if j.val < 4 then 105 else 122)))
def hex_1512071 : String := "4342440940090A09420A09"
theorem cover_1512071 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1512071 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_1512071)
  decide +kernel
#print axioms cover_1512071

def state_1512084 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 178) else (if j.val < 3 then 83 else (if j.val < 4 then 210 else 122)))
def hex_1512084 : String := "4244400A0A40410643050606444041430542440A050543080A414308420A0808400541054305420505"
theorem cover_1512084 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1512084 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 41) (hex := hex_1512084)
  decide +kernel
#print axioms cover_1512084

def state_1512125 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 178) else (if j.val < 3 then 83 else (if j.val < 4 then 211 else 122)))
def hex_1512125 : String := "42440A0644404143420A090A0A0A404143054206444005060543420A0542060941060A"
theorem cover_1512125 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1512125 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 35) (hex := hex_1512125)
  decide +kernel
#print axioms cover_1512125

def state_1512160 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 179) else (if j.val < 3 then 83 else (if j.val < 4 then 105 else 122)))
def hex_1512160 : String := "43420A440A404105094143050A080A"
theorem cover_1512160 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1512160 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_1512160)
  decide +kernel
#print axioms cover_1512160

def state_1512175 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 89) else (if j.val < 3 then 83 else (if j.val < 4 then 105 else 123)))
def hex_1512175 : String := "40414305420805430542070541434205054206444005060543424440050605054206444041050A41060A05"
theorem cover_1512175 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1512175 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 43) (hex := hex_1512175)
  decide +kernel
#print axioms cover_1512175

def state_1512219 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 88) else (if j.val < 3 then 41 else (if j.val < 4 then 52 else 61)))
def hex_1512219 : String := "434206444041430506430842060806064206444041064306060606"
theorem cover_1512219 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1512219 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 27) (hex := hex_1512219)
  decide +kernel
#print axioms cover_1512219
end Mub6.Numerical.CircleFullD0.Forest
