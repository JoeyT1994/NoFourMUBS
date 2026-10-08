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
def state_1019953 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 61) else (if j.val < 3 then 36 else (if j.val < 4 then 51 else 49)))
def hex_1019953 : String := "40064443080A4342060842060A"
theorem cover_1019953 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1019953 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_1019953)
  decide +kernel
#print axioms cover_1019953

def state_1019966 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 30) else (if j.val < 3 then 37 else (if j.val < 4 then 51 else 49)))
def hex_1019966 : String := "41404407074443084241400744070708074307074008440843084241400844084307070808"
theorem cover_1019966 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1019966 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 37) (hex := hex_1019966)
  decide +kernel
#print axioms cover_1019966

def state_1020004 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 30) else (if j.val < 3 then 18 else (if j.val < 4 then 25 else 48)))
def hex_1020004 : String := "43420908424140090909414044084308090908"
theorem cover_1020004 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1020004 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_1020004)
  decide +kernel
#print axioms cover_1020004

def state_1020024 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 30) else (if j.val < 3 then 18 else (if j.val < 4 then 50 else 49)))
def hex_1020024 : String := "424140444308420508430542050A0A404408430842410508080A414044080A0A08"
theorem cover_1020024 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1020024 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 33) (hex := hex_1020024)
  decide +kernel
#print axioms cover_1020024

def state_1020061 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 60) else (if j.val < 3 then 36 else (if j.val < 4 then 51 else 98)))
def hex_1020061 : String := "43424105094140440943050509094241050941404409434205410505420541050909400909"
theorem cover_1020061 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1020061 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 37) (hex := hex_1020061)
  decide +kernel
#print axioms cover_1020061

def state_1020098 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 60) else (if j.val < 3 then 36 else (if j.val < 4 then 51 else 99)))
def hex_1020098 : String := "434205410540444305420541050805054205414044430505050540444342054105400905420541400705094305420541050A4443050505"
theorem cover_1020098 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1020098 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 55) (hex := hex_1020098)
  decide +kernel
#print axioms cover_1020098

def state_1020153 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 60) else (if j.val < 3 then 36 else (if j.val < 4 then 51 else 49)))
def hex_1020153 : String := "44430909430505"
theorem cover_1020153 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1020153 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 7) (hex := hex_1020153)
  decide +kernel
#print axioms cover_1020153
end Mub6.Numerical.CircleFullD0.Forest
