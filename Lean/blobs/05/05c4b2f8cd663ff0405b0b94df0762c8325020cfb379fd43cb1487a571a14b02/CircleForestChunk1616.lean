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
def state_2261000 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 52) else (if j.val < 3 then 43 else (if j.val < 4 then 93 else 53)))
def hex_2261000 : String := "414244074043410742050707070742440840054341420507050508"
theorem cover_2261000 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2261000 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 27) (hex := hex_2261000)
  decide +kernel
#print axioms cover_2261000

def state_2261027 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 52) else (if j.val < 3 then 43 else (if j.val < 4 then 46 else 53)))
def hex_2261027 : String := "4341074244074043410742440606074107420607070707"
theorem cover_2261027 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2261027 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 23) (hex := hex_2261027)
  decide +kernel
#print axioms cover_2261027

def state_2261051 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 53) else (if j.val < 3 then 42 else (if j.val < 4 then 46 else 26)))
def hex_2261051 : String := "444043440841420A080808434441420A080841420640080A0A4408414206080640434142054440080A050505434142064440430A0606060606"
theorem cover_2261051 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2261051 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 57) (hex := hex_2261051)
  decide +kernel
#print axioms cover_2261051

def state_2261108 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 53) else (if j.val < 3 then 43 else (if j.val < 4 then 46 else 26)))
def hex_2261108 : String := "4408404342414408400843420A0808080808434241444008430807404342060806434206410606064408064144084008070842414408060808"
theorem cover_2261108 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2261108 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 57) (hex := hex_2261108)
  decide +kernel
#print axioms cover_2261108

def state_2261166 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 52) else (if j.val < 3 then 21 else (if j.val < 4 then 47 else 26)))
def hex_2261166 : String := "424440434144424005070742050744080541440705054341074407420507410744070540434105050543410905054440080740434107424405050841070507"
theorem cover_2261166 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2261166 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 63) (hex := hex_2261166)
  decide +kernel
#print axioms cover_2261166

def state_2261229 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 53) else (if j.val < 3 then 21 else (if j.val < 4 then 47 else 26)))
def hex_2261229 : String := "4244400843440805050544084008434241440505050805"
theorem cover_2261229 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2261229 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 23) (hex := hex_2261229)
  decide +kernel
#print axioms cover_2261229
end Mub6.Numerical.CircleFullD0.Forest
