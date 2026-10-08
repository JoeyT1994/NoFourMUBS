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
def state_1493703 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 7)))
def hex_1493703 : String := "44404143420A440540414307050741430A050A050A0A4041434207444007410807070843070741434206444041434206440A06060A06064205440506430A0A"
theorem cover_1493703 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1493703 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 63) (hex := hex_1493703)
  decide +kernel
#print axioms cover_1493703

def state_1493767 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 10) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 7)))
def hex_1493767 : String := "4342094443094041094205440509090942064440414309050541060506"
theorem cover_1493767 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1493767 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 29) (hex := hex_1493767)
  decide +kernel
#print axioms cover_1493767

def state_1493796 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 11) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 7)))
def hex_1493796 : String := "4342440A0644414340420A08050A0A4143404206090606434042060606064205440541060A"
theorem cover_1493796 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1493796 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 37) (hex := hex_1493796)
  decide +kernel
#print axioms cover_1493796

def state_1493833 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 3)))
def hex_1493833 : String := "444041440505050A4041420543440508054205434405400841050505410605"
theorem cover_1493833 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1493833 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 31) (hex := hex_1493833)
  decide +kernel
#print axioms cover_1493833

def state_1493870 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 6)))
def hex_1493870 : String := "4406404306414244054006430641420506050606430841424405404308410805080808"
theorem cover_1493870 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1493870 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 35) (hex := hex_1493870)
  decide +kernel
#print axioms cover_1493870

def state_1493906 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 12)))
def hex_1493906 : String := "400944084142050805"
theorem cover_1493906 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1493906 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1493906)
  decide +kernel
#print axioms cover_1493906

def state_1493916 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 13)))
def hex_1493916 : String := "414243440540430605434105050505430609420506"
theorem cover_1493916 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1493916 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 21) (hex := hex_1493916)
  decide +kernel
#print axioms cover_1493916
end Mub6.Numerical.CircleFullD0.Forest
