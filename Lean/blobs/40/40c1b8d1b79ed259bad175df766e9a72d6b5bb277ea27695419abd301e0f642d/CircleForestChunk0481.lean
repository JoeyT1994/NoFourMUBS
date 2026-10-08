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
def state_1304156 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
def hex_1304156 : String := "42434442430709074243064440070706074409424409404106430709410743424408060708094344090707"
theorem cover_1304156 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1304156 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 43) (hex := hex_1304156)
  decide +kernel
#print axioms cover_1304156

def state_1304201 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 2)))
def hex_1304201 : String := "4441420509054142434405064440424143064409064305440540420507050A0540420607424405060743074407074243054405404142050705050A"
theorem cover_1304201 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1304201 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 59) (hex := hex_1304201)
  decide +kernel
#print axioms cover_1304201

def state_1304261 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 4)))
def hex_1304261 : String := "410942400A0506"
theorem cover_1304261 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1304261 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1304261)
  decide +kernel
#print axioms cover_1304261

def state_1304272 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 10) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 10)))
def hex_1304272 : String := "4342410944094340424144094306094443050943054042410944094340B80509094241080509094241440543050805410905090909"
theorem cover_1304272 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1304272 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 17) (count := 53) (hex := hex_1304272)
  decide +kernel
#print axioms cover_1304272

def state_1304325 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 10) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 10)))
def hex_1304325 : String := "43424108440540430508054109440940090509"
theorem cover_1304325 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1304325 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_1304325)
  decide +kernel
#print axioms cover_1304325

def state_1304349 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 20) else (if j.val < 3 then 24 else (if j.val < 4 then 14 else 22)))
def hex_1304349 : String := "43064009420807"
theorem cover_1304349 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1304349 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1304349)
  decide +kernel
#print axioms cover_1304349

def state_1304360 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 21) else (if j.val < 3 then 48 else (if j.val < 4 then 28 else 44)))
def hex_1304360 : String := "410643064042444106430640B84244410643050841064305400642064405064409070607424441064305404244054105054405410605050644410643050907"
theorem cover_1304360 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1304360 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 16) (count := 63) (hex := hex_1304360)
  decide +kernel
#print axioms cover_1304360

def state_1304423 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 21) else (if j.val < 3 then 48 else (if j.val < 4 then 28 else 45)))
def hex_1304423 : String := "06"
theorem cover_1304423 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1304423 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1304423)
  decide +kernel
#print axioms cover_1304423
end Mub6.Numerical.CircleFullD0.Forest
