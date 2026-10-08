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
def state_162803 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 56) else (if j.val < 3 then 29 else (if j.val < 4 then 27 else 27)))
def hex_162803 : String := "4243444041074284070808440908430708"
theorem cover_162803 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_162803 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_162803)
  decide +kernel
#print axioms cover_162803

def state_162821 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 57) else (if j.val < 3 then 58 else (if j.val < 4 then 27 else 27)))
def hex_162821 : String := "434440414284050541094243050905404108424484080808444041424384090942438444094006094305090940410842434484060643080608"
theorem cover_162821 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_162821 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 57) (hex := hex_162821)
  decide +kernel
#print axioms cover_162821

def state_162878 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 57) else (if j.val < 3 then 59 else (if j.val < 4 then 27 else 27)))
def hex_162878 : String := "43440508440908"
theorem cover_162878 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_162878 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 7) (hex := hex_162878)
  decide +kernel
#print axioms cover_162878

def state_162885 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 28) else (if j.val < 3 then 29 else (if j.val < 4 then 27 else 27)))
def hex_162885 : String := "4108424344090844090809"
theorem cover_162885 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_162885 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_162885)
  decide +kernel
#print axioms cover_162885

def state_162899 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 29) else (if j.val < 3 then 56 else (if j.val < 4 then 27 else 27)))
def hex_162899 : String := "414344404207418407070A07430A07"
theorem cover_162899 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_162899 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_162899)
  decide +kernel
#print axioms cover_162899

def state_162915 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 58) else (if j.val < 3 then 57 else (if j.val < 4 then 27 else 27)))
def hex_162915 : String := "4344404241840505420A41430544050A0540424144840A0A414484430A40060A44050A0A44404207414384070707404207414344840606434407060607"
theorem cover_162915 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_162915 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 61) (hex := hex_162915)
  decide +kernel
#print axioms cover_162915

def state_162976 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 59) else (if j.val < 3 then 57 else (if j.val < 4 then 27 else 27)))
def hex_162976 : String := "4344050A07"
theorem cover_162976 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_162976 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_162976)
  decide +kernel
#print axioms cover_162976

def state_162981 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 29) else (if j.val < 3 then 28 else (if j.val < 4 then 27 else 27)))
def hex_162981 : String := "420741430A070A"
theorem cover_162981 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_162981 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_162981)
  decide +kernel
#print axioms cover_162981

def state_162992 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 58) else (if j.val < 3 then 58 else (if j.val < 4 then 54 else 27)))
def hex_162992 : String := "4405404142440543050805054142440A0808420A05"
theorem cover_162992 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_162992 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_162992)
  decide +kernel
#print axioms cover_162992

def state_163014 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 58) else (if j.val < 3 then 58 else (if j.val < 4 then 55 else 54)))
def hex_163014 : String := "40414243054405070505414243090709420705"
theorem cover_163014 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_163014 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 19) (hex := hex_163014)
  decide +kernel
#print axioms cover_163014
end Mub6.Numerical.CircleFullPrototype.Forest
