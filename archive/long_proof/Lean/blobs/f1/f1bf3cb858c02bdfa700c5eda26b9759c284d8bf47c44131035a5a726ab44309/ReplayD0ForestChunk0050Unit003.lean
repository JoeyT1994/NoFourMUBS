import D0FullInterface
import ChartPartitionJoined
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_2562171 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 1)))
def hex_2562171 : String := "44404142434441070541070744410707414207430707074344054144050A0A4441430509094143444042074105430507424105430507054042074144430507070742410807414405080A44404207414344050707074241434405070707414305440508434405400705094042074143440707070742414308070741430844080843444007080A44400707074344400942060A0A440940074206430A0742434405420606064344050A4409430A09414243440640410507410605444041050606404142064306060606430544054041434405420605444241050605424108064108430606430644060641430544050606424305440506430A064041424307444142064306060708434441440A0707074441434440074206080844400742410806410843060808070642434407070743440707440606414243444007410507084440414206064243070606410642434406400742050606064041084208064108424308080843444041090709094440414344060606430A0641060640080642430744400742430744064140064243070606074306064007424307414440420706424307410844070808080707430A4440430A06064006430706"
theorem cover_2562171 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2562171 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 17) (count := 439) (hex := hex_2562171)
  decide +kernel
#print axioms cover_2562171

def state_2562612 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
def hex_2562612 : String := "41424344074142430744074007094307070744074142440740074341420907070707074344414309070741434440074207414344084007084407400742074106070740074241430707074143444042074107070840080844400742410807410A430707400A42084108440A0843070744400742070740074241440743070707414443400642070606430A0644074307050744074144074007420743410607060742430744070743440743090707"
theorem cover_2562612 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2562612 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 17) (count := 173) (hex := hex_2562612)
  decide +kernel
#print axioms cover_2562612

def state_2562787 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 2)))
def hex_2562787 : String := "4344400741050740414243064409414206440906064344074143064440070606064441400742070707414440420707420943414407060641440709074042430607430707420643064144400706404206430607060644400709400706420643060741420643064440414243050543050542060741050640414442064306414009050606060606444007410507404142444309074309094407434144400742090740420707420943414409400909094144074007090744074007094144074007420807074209074142440A094443404142050507050A4340414442094341400905090942064341440906060944090641440A4206430609064041440A0908410A0842064407430608"
theorem cover_2562787 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2562787 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 18) (count := 263) (hex := hex_2562787)
  decide +kernel
#print axioms cover_2562787

def state_2563052 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 4)))
def hex_2563052 : String := "4041430842070707410507"
theorem cover_2563052 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2563052 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_2563052)
  decide +kernel
#print axioms cover_2563052

def state_2563066 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 7 else (if j.val < 4 then 12 else 5)))
def hex_2563066 : String := "4442414308400708074108430840070842414308444042070808400806430644400706064143084408084344080644404207410807084042440741080644410807410843060506"
theorem cover_2563066 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2563066 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 71) (hex := hex_2563066)
  decide +kernel
#print axioms cover_2563066

def state_2563138 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 7 else (if j.val < 4 then 13 else 10)))
def hex_2563138 : String := "4241400743440542070844054207070741404344054241430706074106430706440606430844054241050741054006054007430807"
theorem cover_2563138 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2563138 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 53) (hex := hex_2563138)
  decide +kernel
#print axioms cover_2563138


end Mub6.Numerical.CircleFullD0.Forest
