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
def state_172727 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 24) else (if j.val < 3 then 8 else (if j.val < 4 then 14 else 22)))
def hex_172727 : String := "4043420841440743074042070607440843060808434207410744070708"
theorem cover_172727 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_172727 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 29) (hex := hex_172727)
  decide +kernel
#print axioms cover_172727

def state_172757 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 24) else (if j.val < 3 then 8 else (if j.val < 4 then 14 else 23)))
def hex_172757 : String := "43420A414443074005070544430A0A0A424105084144400543050505440805"
theorem cover_172757 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_172757 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 31) (hex := hex_172757)
  decide +kernel
#print axioms cover_172757

def state_172788 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 24) else (if j.val < 3 then 8 else (if j.val < 4 then 14 else 23)))
def hex_172788 : String := "4342074107440707424106084144404307070740050744084043420744070508430706"
theorem cover_172788 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_172788 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 35) (hex := hex_172788)
  decide +kernel
#print axioms cover_172788

def state_172823 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 8 else (if j.val < 4 then 14 else 11)))
def hex_172823 : String := "440840430A0A4342084441400A070841090908"
theorem cover_172823 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_172823 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 19) (hex := hex_172823)
  decide +kernel
#print axioms cover_172823

def state_172842 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 12) else (if j.val < 3 then 8 else (if j.val < 4 then 15 else 11)))
def hex_172842 : String := "414408404208434105080842064341440805080608"
theorem cover_172842 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_172842 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 21) (hex := hex_172842)
  decide +kernel
#print axioms cover_172842

def state_172866 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 24) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 22)))
def hex_172866 : String := "404243064144094009424307080944084009420806064243410744050741440740420707070843064144050A4405400605"
theorem cover_172866 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_172866 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 49) (hex := hex_172866)
  decide +kernel
#print axioms cover_172866

def state_172918 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 24) else (if j.val < 3 then 18 else (if j.val < 4 then 28 else 23)))
def hex_172918 : String := "4144430640060743060544064306400A420A06"
theorem cover_172918 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_172918 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 19) (hex := hex_172918)
  decide +kernel
#print axioms cover_172918

def state_172938 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 48) else (if j.val < 3 then 18 else (if j.val < 4 then 29 else 23)))
def hex_172938 : String := "444042054306094243410507410544080543410606410544090505"
theorem cover_172938 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_172938 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 27) (hex := hex_172938)
  decide +kernel
#print axioms cover_172938
end Mub6.Numerical.CircleFullPrototype.Forest
