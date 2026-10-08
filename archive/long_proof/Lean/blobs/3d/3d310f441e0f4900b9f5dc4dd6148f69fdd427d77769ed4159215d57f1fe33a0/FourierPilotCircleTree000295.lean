import FourierPilotCircleTree000296
import FourierPilotCircleTree000337
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000295
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, false]
def state : State := ![3, 2, 2, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree000296.state FourierPilotCircleTree000337.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000296.covered FourierPilotCircleTree000337.covered
#print axioms covered
end FourierPilotCircleTree000295
