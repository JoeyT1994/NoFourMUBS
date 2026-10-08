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
def state_1005552 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 55) else (if j.val < 3 then 38 else (if j.val < 4 then 55 else 44)))
def hex_1005552 : String := "44424143400A08080A4143404405420A05444241080505420805400A0843050A4241080A4143400706080A"
theorem cover_1005552 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1005552 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 43) (hex := hex_1005552)
  decide +kernel
#print axioms cover_1005552

def state_1005595 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 55) else (if j.val < 3 then 38 else (if j.val < 4 then 55 else 44)))
def hex_1005595 : String := "444241084340440708070841430608434005064044420805080842084108430608"
theorem cover_1005595 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1005595 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 33) (hex := hex_1005595)
  decide +kernel
#print axioms cover_1005595

def state_1005628 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 39 else (if j.val < 4 then 27 else 44)))
def hex_1005628 : String := "414306404442430609060606434005064044424143054044050744054208050505424143060743050A410605444241064305050506"
theorem cover_1005628 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1005628 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 53) (hex := hex_1005628)
  decide +kernel
#print axioms cover_1005628

def state_1005681 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 19 else (if j.val < 4 then 27 else 45)))
def hex_1005681 : String := "4241430608434044424107434007060A41060607064044420841070A080841064306400706"
theorem cover_1005681 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1005681 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 37) (hex := hex_1005681)
  decide +kernel
#print axioms cover_1005681

def state_1005718 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 27) else (if j.val < 3 then 19 else (if j.val < 4 then 27 else 22)))
def hex_1005718 : String := "44424106430640444208410643060708060642410643060606"
theorem cover_1005718 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1005718 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 25) (hex := hex_1005718)
  decide +kernel
#print axioms cover_1005718

def state_1005743 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 13) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 23)))
def hex_1005743 : String := "4143060843424044434241064007060642084106400706430707060642084044424107430608060706"
theorem cover_1005743 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1005743 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 41) (hex := hex_1005743)
  decide +kernel
#print axioms cover_1005743

def state_1005786 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 4)))
def hex_1005786 : String := "4142064344064109060606"
theorem cover_1005786 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1005786 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_1005786)
  decide +kernel
#print axioms cover_1005786
end Mub6.Numerical.CircleFullD0.Forest
