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
def state_6990 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 54) else (if j.val < 3 then 53 else (if j.val < 4 then 34 else 17)))
def hex_6990 : String := "44420A4041430644060A0641430A44420740064107060A0A0A"
theorem cover_6990 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_6990 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 25) (hex := hex_6990)
  decide +kernel
#print axioms cover_6990

def state_7016 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 54) else (if j.val < 3 then 53 else (if j.val < 4 then 35 else 34)))
def hex_7016 : String := "4240410508414307070A404143444241050606050508414344420709420A4041050A41430A05430A44070544090543444207060A08"
theorem cover_7016 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_7016 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 53) (hex := hex_7016)
  decide +kernel
#print axioms cover_7016

def state_7069 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 54) else (if j.val < 3 then 53 else (if j.val < 4 then 35 else 35)))
def hex_7069 : String := "4240050A40054105430A05"
theorem cover_7069 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_7069 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_7069)
  decide +kernel
#print axioms cover_7069

def state_7080 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 55) else (if j.val < 3 then 53 else (if j.val < 4 then 17 else 17)))
def hex_7080 : String := "430A444208080A"
theorem cover_7080 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_7080 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_7080)
  decide +kernel
#print axioms cover_7080

def state_7088 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 27) else (if j.val < 3 then 26 else (if j.val < 4 then 16 else 8)))
def hex_7088 : String := "44420705420A400A0A"
theorem cover_7088 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_7088 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_7088)
  decide +kernel
#print axioms cover_7088

def state_7098 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 27) else (if j.val < 3 then 26 else (if j.val < 4 then 17 else 16)))
def hex_7098 : String := "42074041430707430507410705"
theorem cover_7098 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_7098 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_7098)
  decide +kernel
#print axioms cover_7098

def state_7112 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 27) else (if j.val < 3 then 52 else (if j.val < 4 then 17 else 17)))
def hex_7112 : String := "4041430A44070A0A410707"
theorem cover_7112 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_7112 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_7112)
  decide +kernel
#print axioms cover_7112

def state_7126 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 54) else (if j.val < 3 then 53 else (if j.val < 4 then 34 else 17)))
def hex_7126 : String := "44420A4041430A44070A0A41430707070A"
theorem cover_7126 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_7126 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_7126)
  decide +kernel
#print axioms cover_7126

def state_7144 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 54) else (if j.val < 3 then 53 else (if j.val < 4 then 35 else 34)))
def hex_7144 : String := "42404107070740414344074207404143070707074407420740410507074344070A44074207400807410707"
theorem cover_7144 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_7144 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 43) (hex := hex_7144)
  decide +kernel
#print axioms cover_7144

def state_7187 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 54) else (if j.val < 3 then 53 else (if j.val < 4 then 35 else 35)))
def hex_7187 : String := "42400A0A40414344420A9A0A4442059A05430A44420A9A0541434442069A06440606430A44070A"
theorem cover_7187 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_7187 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 39) (hex := hex_7187)
  decide +kernel
#print axioms cover_7187

def state_7226 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 55) else (if j.val < 3 then 53 else (if j.val < 4 then 17 else 17)))
def hex_7226 : String := "430A4442074041430707064107074209400A0A"
theorem cover_7226 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_7226 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_7226)
  decide +kernel
#print axioms cover_7226
end Mub6.Numerical.CircleFullPrototype.Forest
