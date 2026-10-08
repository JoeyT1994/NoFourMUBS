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
def state_151001 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 46) else (if j.val < 3 then 45 else (if j.val < 4 then 55 else 27)))
def hex_151001 : String := "444007074041424344070606434440410606418D070606074142430A0743444041420743440706060707404106060A0707"
theorem cover_151001 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_151001 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 49) (hex := hex_151001)
  decide +kernel
#print axioms cover_151001

def state_151050 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 47) else (if j.val < 3 then 22 else (if j.val < 4 then 27 else 27)))
def hex_151050 : String := "42074344070907"
theorem cover_151050 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_151050 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_151050)
  decide +kernel
#print axioms cover_151050

def state_151057 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 23) else (if j.val < 3 then 22 else (if j.val < 4 then 27 else 27)))
def hex_151057 : String := "41420A434440410A0A0A0A44074041420A430A07070A4207430A07"
theorem cover_151057 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_151057 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 27) (hex := hex_151057)
  decide +kernel
#print axioms cover_151057

def state_151086 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 23) else (if j.val < 3 then 23 else (if j.val < 4 then 26 else 26)))
def hex_151086 : String := "404142060642060606"
theorem cover_151086 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_151086 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_151086)
  decide +kernel
#print axioms cover_151086

def state_151096 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 23) else (if j.val < 3 then 23 else (if j.val < 4 then 26 else 27)))
def hex_151096 : String := "4142434406074440414243064406404107050A43064405054243064405050541420606420606404108420905084307444005080842430A4440050A0A430505"
theorem cover_151096 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_151096 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 63) (hex := hex_151096)
  decide +kernel
#print axioms cover_151096

def state_151159 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 23) else (if j.val < 3 then 23 else (if j.val < 4 then 26 else 27)))
def hex_151159 : String := "41424306444006060A08420A4306440608"
theorem cover_151159 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_151159 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 17) (hex := hex_151159)
  decide +kernel
#print axioms cover_151159

def state_151178 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 23) else (if j.val < 3 then 23 else (if j.val < 4 then 27 else 26)))
def hex_151178 : String := "414244430607434041424406430640410905094406430505424406430505054142060642060640414207090707440943400509094244074340050707440505"
theorem cover_151178 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_151178 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 63) (hex := hex_151178)
  decide +kernel
#print axioms cover_151178

def state_151241 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 23) else (if j.val < 3 then 23 else (if j.val < 4 then 27 else 26)))
def hex_151241 : String := "4142440643400606090942074406430607"
theorem cover_151241 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_151241 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 17) (hex := hex_151241)
  decide +kernel
#print axioms cover_151241
end Mub6.Numerical.CircleFullPrototype.Forest
