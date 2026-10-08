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
def state_1482787 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 193 else 67) else (if j.val < 3 then 77 else (if j.val < 4 then 206 else 105)))
def hex_1482787 : String := "44424140430A4442050A0A09404306054309440505410A4006430607424109400A090A"
theorem cover_1482787 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1482787 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 35) (hex := hex_1482787)
  decide +kernel
#print axioms cover_1482787

def state_1482822 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 193 else 67) else (if j.val < 3 then 77 else (if j.val < 4 then 207 else 105)))
def hex_1482822 : String := "4442414043444205070A4405420507434442050709440542050705074241400A430944090640430A084309440508410A400A430A0A"
theorem cover_1482822 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1482822 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 53) (hex := hex_1482822)
  decide +kernel
#print axioms cover_1482822

def state_1482876 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 33) else (if j.val < 3 then 38 else (if j.val < 4 then 102 else 52)))
def hex_1482876 : String := "4442090809"
theorem cover_1482876 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1482876 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1482876)
  decide +kernel
#print axioms cover_1482876

def state_1482882 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 33) else (if j.val < 3 then 38 else (if j.val < 4 then 103 else 104)))
def hex_1482882 : String := "424140434408094405420541090509054140430844074241404308070840430807080708404308440742050708"
theorem cover_1482882 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1482882 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 45) (hex := hex_1482882)
  decide +kernel
#print axioms cover_1482882

def state_1482927 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 33) else (if j.val < 3 then 38 else (if j.val < 4 then 103 else 105)))
def hex_1482927 : String := "424109404309440509094140434409094442090709094043444209080944424140430944050909050742094140430907094043440709070943094442090709"
theorem cover_1482927 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1482927 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 63) (hex := hex_1482927)
  decide +kernel
#print axioms cover_1482927

def state_1482990 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 16) else (if j.val < 3 then 39 else (if j.val < 4 then 51 else 52)))
def hex_1482990 : String := "4140054305440705404344080A440742410A400A430A07054308440742414043050708404307070807"
theorem cover_1482990 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1482990 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 41) (hex := hex_1482990)
  decide +kernel
#print axioms cover_1482990
end Mub6.Numerical.CircleFullD0.Forest
