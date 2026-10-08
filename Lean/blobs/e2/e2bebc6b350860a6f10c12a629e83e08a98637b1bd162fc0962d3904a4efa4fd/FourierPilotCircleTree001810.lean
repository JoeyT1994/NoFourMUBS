import FourierPilotCircleTree001811
import FourierPilotCircleTree001830
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001810
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, false]
def state : State := ![6, 4, 4, 7, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree001811.state FourierPilotCircleTree001830.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001811.covered FourierPilotCircleTree001830.covered
#print axioms covered
end FourierPilotCircleTree001810
