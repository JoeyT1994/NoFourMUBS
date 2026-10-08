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
def state_1539626 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 29) else (if j.val < 3 then 25 else (if j.val < 4 then 19 else 21)))
def hex_1539626 : String := "424443410A09414006420644430A060640420709424407430A0644070A43410A0A4106400642440606440A06444309414006424409060909430941060A"
theorem cover_1539626 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1539626 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 61) (hex := hex_1539626)
  decide +kernel
#print axioms cover_1539626

def state_1539690 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 29) else (if j.val < 3 then 50 else (if j.val < 4 then 38 else 42)))
def hex_1539690 : String := "414042444308410A080A0A420844080540420A0908"
theorem cover_1539690 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1539690 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_1539690)
  decide +kernel
#print axioms cover_1539690

def state_1539713 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 98 else 58) else (if j.val < 3 then 50 else (if j.val < 4 then 39 else 42)))
def hex_1539713 : String := "42444341400608400A08410640064206440706434106400642060A064443414006420A050A410640064244070644084308064341050A06"
theorem cover_1539713 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1539713 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 55) (hex := hex_1539713)
  decide +kernel
#print axioms cover_1539713

def state_1539768 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 58) else (if j.val < 3 then 50 else (if j.val < 4 then 39 else 42)))
def hex_1539768 : String := "4244084341050841064042064408060844430841404208440505080843410540420805054105404244080644430541050843050608"
theorem cover_1539768 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1539768 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 53) (hex := hex_1539768)
  decide +kernel
#print axioms cover_1539768

def state_1539821 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 59) else (if j.val < 3 then 50 else (if j.val < 4 then 39 else 42)))
def hex_1539821 : String := "4042444308074341400A0A0A4140064207440706074443094140070807430A41400A42440A0A0A40070A42440808440843084140420844080A0808"
theorem cover_1539821 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1539821 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 59) (hex := hex_1539821)
  decide +kernel
#print axioms cover_1539821
end Mub6.Numerical.CircleFullD0.Forest
