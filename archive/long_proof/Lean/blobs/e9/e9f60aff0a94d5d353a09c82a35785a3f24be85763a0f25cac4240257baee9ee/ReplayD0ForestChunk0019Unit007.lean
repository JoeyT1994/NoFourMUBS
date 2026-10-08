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
def state_1481339 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 12)))
def hex_1481339 : String := "414240434405410505440505434405050A40434408424108404306050508444241080508424140434442050842074140430844080708404306050844420541404405430805080542054140434442050842074140430780094043070509440A4205418005434408090A0543080A400543050541404308440842414043440842414043088008404306440642418006060808444241404408800840440543060508074241804043444205064241800541800644420507420541804043050543440505054344084241800508440A420541804043080508410707084043440642414006080506444205064241400543050505414006070643084408420A0807084043084408424140430605430805050808430844084241080808420540434405414205060544414205060541420540060805430844084142050805"
theorem cover_1481339 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1481339 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 26) (count := 313) (hex := hex_1481339)
  decide +kernel
#print axioms cover_1481339

def state_1481654 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 8) else (if j.val < 3 then 8 else (if j.val < 4 then 12 else 13)))
def hex_1481654 : String := "404309444107050709"
theorem cover_1481654 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1481654 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1481654)
  decide +kernel
#print axioms cover_1481654

def state_1481665 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 8) else (if j.val < 3 then 9 else (if j.val < 4 then 24 else 13)))
def hex_1481665 : String := "4442410940430944090909414043084408090840430844084209080842094105400A09"
theorem cover_1481665 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1481665 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 35) (hex := hex_1481665)
  decide +kernel
#print axioms cover_1481665

def state_1481702 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 8) else (if j.val < 3 then 18 else (if j.val < 4 then 25 else 26)))
def hex_1481702 : String := "414043440909444207414043440707444207418040430744050743074405060709404344420541070507440507430944050942074107400709094043444205414043090509050944054205414043070709054309440509"
theorem cover_1481702 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1481702 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 15) (count := 87) (hex := hex_1481702)
  decide +kernel
#print axioms cover_1481702

def state_1481792 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 16) else (if j.val < 3 then 19 else (if j.val < 4 then 50 else 26)))
def hex_1481792 : String := "44424140430844420905050840430844424109060642090A0808420905"
theorem cover_1481792 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1481792 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 29) (hex := hex_1481792)
  decide +kernel
#print axioms cover_1481792

def state_1481824 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 32) else (if j.val < 3 then 38 else (if j.val < 4 then 51 else 52)))
def hex_1481824 : String := "40434442414043098009404344090944424109400709418040060842070A094105400A08420905444241804043444241804043440507054309054180404306440642410A05064344084209084442418005084241800541804006430844060A42410707410A400A43094442090A094442418005418040434442050642418005410A40064306054405084344420507424180054180404344050A074344050707440542050742084180400843444241804005054180400A430A444205070A42080A44420841804008434407080708434442094180404308440809080944424180054180404344420507424109054180404307074307074442050742050743440809440A420507420941804043444209410940430944070909094442064106404344070606060643090641804043444241804006430607070A440742410A400A430A440707074344084241054043080A08054407424180404344070A074344070907074241404309060640434442070A07084309064105400A430544424105400A06050543440809444241094043094442064106404308060606094140430544070508404308440742410640430806060708420641054043050606"
theorem cover_1481824 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1481824 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 20) (count := 441) (hex := hex_1481824)
  decide +kernel
#print axioms cover_1481824


end Mub6.Numerical.CircleFullD0.Forest
