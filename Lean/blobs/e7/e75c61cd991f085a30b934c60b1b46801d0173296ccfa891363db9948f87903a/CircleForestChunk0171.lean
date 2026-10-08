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
def state_978439 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 88) else (if j.val < 3 then 63 else (if j.val < 4 then 87 else 114)))
def hex_978439 : String := "4240414344084240410843070841084309088508434405424007410909050A4143440842404143080809090908430944084240410806068585"
theorem cover_978439 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_978439 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 57) (hex := hex_978439)
  decide +kernel
#print axioms cover_978439

def state_978500 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 176) else (if j.val < 3 then 126 else (if j.val < 4 then 174 else 115)))
def hex_978500 : String := "4442404106074143064442400641064306080606430744424007414307070707078507"
theorem cover_978500 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_978500 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 35) (hex := hex_978500)
  decide +kernel
#print axioms cover_978500

def state_978535 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 176) else (if j.val < 3 then 126 else (if j.val < 4 then 175 else 115)))
def hex_978535 : String := "44424041434408050943070A4143440805440805434442404108074108088542050744080585420585"
theorem cover_978535 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_978535 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 41) (hex := hex_978535)
  decide +kernel
#print axioms cover_978535

def state_978576 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 177) else (if j.val < 3 then 126 else (if j.val < 4 then 87 else 115)))
def hex_978576 : String := "4307444240074143070A0A8507"
theorem cover_978576 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_978576 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_978576)
  decide +kernel
#print axioms cover_978576

def state_978591 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 191 else 176) else (if j.val < 3 then 126 else (if j.val < 4 then 174 else 115)))
def hex_978591 : String := "44424041430A4442404108430A080A850A4344090744424041430944080509098542400505850A850A"
theorem cover_978591 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_978591 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 41) (hex := hex_978591)
  decide +kernel
#print axioms cover_978591

def state_978632 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 191 else 176) else (if j.val < 3 then 126 else (if j.val < 4 then 175 else 115)))
def hex_978632 : String := "44424041434408050543444240410843080541084309058542058544080541430A0543444240410506060942058544060585420585"
theorem cover_978632 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_978632 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 53) (hex := hex_978632)
  decide +kernel
#print axioms cover_978632
end Mub6.Numerical.CircleFullD0.Forest
