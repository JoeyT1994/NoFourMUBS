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
def state_49766 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 38) else (if j.val < 3 then 17 else (if j.val < 4 then 47 else 27)))
def hex_49766 : String := "4442430A080A08"
theorem cover_49766 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_49766 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_49766)
  decide +kernel
#print axioms cover_49766

def state_49773 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 38) else (if j.val < 3 then 17 else (if j.val < 4 then 47 else 27)))
def hex_49773 : String := "44424341400A4442430A090A0A400A4442060A0A4109400844420643060908430A4140054442430A05050A400A4442430A410940074406080A0A0A"
theorem cover_49773 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_49773 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 59) (hex := hex_49773)
  decide +kernel
#print axioms cover_49773

def state_49832 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 39) else (if j.val < 3 then 17 else (if j.val < 4 then 47 else 27)))
def hex_49832 : String := "400844424341400A4406080641400844060806430A41400844424306060A08400844060808"
theorem cover_49832 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_49832 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 37) (hex := hex_49832)
  decide +kernel
#print axioms cover_49832

def state_49871 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 18) else (if j.val < 3 then 16 else (if j.val < 4 then 23 else 27)))
def hex_49871 : String := "43074041074442094307090741074442070707"
theorem cover_49871 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_49871 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_49871)
  decide +kernel
#print axioms cover_49871

def state_49890 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 18) else (if j.val < 3 then 17 else (if j.val < 4 then 23 else 27)))
def hex_49890 : String := "430740414442070707444243074009410744080743404107440807074041054442434005070505420705410744080707410744424307404107440807070807"
theorem cover_49890 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_49890 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 63) (hex := hex_49890)
  decide +kernel
#print axioms cover_49890

def state_49954 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 16 else (if j.val < 4 then 23 else 27)))
def hex_49954 : String := "434041444205430540410705050505054041444243050943404144420506070505400941090542430509430740084107054405054144050505"
theorem cover_49954 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_49954 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 57) (hex := hex_49954)
  decide +kernel
#print axioms cover_49954
end Mub6.Numerical.CircleFullPrototype.Forest
