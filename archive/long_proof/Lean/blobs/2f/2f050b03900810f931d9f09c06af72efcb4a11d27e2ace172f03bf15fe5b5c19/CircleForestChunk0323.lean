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
def state_152881 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 11 else (if j.val < 4 then 14 else 14)))
def hex_152881 : String := "4243444041060641054205434405050606440606434440420606424143080643444006080606080844400642060606"
theorem cover_152881 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_152881 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 47) (hex := hex_152881)
  decide +kernel
#print axioms cover_152881

def state_152929 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 23) else (if j.val < 3 then 22 else (if j.val < 4 then 14 else 14)))
def hex_152929 : String := "4344404106064142430A0643444006070606074006410606440706"
theorem cover_152929 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_152929 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 27) (hex := hex_152929)
  decide +kernel
#print axioms cover_152929

def state_152956 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 23) else (if j.val < 3 then 23 else (if j.val < 4 then 14 else 14)))
def hex_152956 : String := "4344404142060642060641424344404106064142060607060643080642434407060643444108070606400641060644400641060606"
theorem cover_152956 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_152956 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 53) (hex := hex_152956)
  decide +kernel
#print axioms cover_152956

def state_153010 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 22) else (if j.val < 3 then 11 else (if j.val < 4 then 14 else 14)))
def hex_153010 : String := "424344050505434442404105430809050808440908"
theorem cover_153010 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_153010 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 21) (hex := hex_153010)
  decide +kernel
#print axioms cover_153010

def state_153031 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 23) else (if j.val < 3 then 11 else (if j.val < 4 then 14 else 14)))
def hex_153031 : String := "42434441404205430A0705070A07434441424043444142404305050508070807430A0708420740430807430807084407410607"
theorem cover_153031 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_153031 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 51) (hex := hex_153031)
  decide +kernel
#print axioms cover_153031

def state_153082 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 14 else 15)))
def hex_153082 : String := "404142060642060641420508420A08"
theorem cover_153082 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_153082 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 15) (hex := hex_153082)
  decide +kernel
#print axioms cover_153082

def state_153097 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 15 else 7)))
def hex_153097 : String := "44404142060642060641420509074041060641420506420606"
theorem cover_153097 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_153097 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 25) (hex := hex_153097)
  decide +kernel
#print axioms cover_153097

def state_153123 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 10) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 7)))
def hex_153123 : String := "05"
theorem cover_153123 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_153123 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_153123)
  decide +kernel
#print axioms cover_153123

def state_153125 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 11) else (if j.val < 3 then 10 else (if j.val < 4 then 7 else 7)))
def hex_153125 : String := "05"
theorem cover_153125 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_153125 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_153125)
  decide +kernel
#print axioms cover_153125
end Mub6.Numerical.CircleFullPrototype.Forest
