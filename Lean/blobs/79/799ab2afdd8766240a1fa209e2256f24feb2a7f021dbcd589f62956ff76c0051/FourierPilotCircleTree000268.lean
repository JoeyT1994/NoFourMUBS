import FourierPilotCircleTree000269
import FourierPilotCircleTree000290
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000268
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, false]
def state : State := ![11, 7, 7, 7, 10]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree000269.state FourierPilotCircleTree000290.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000269.covered FourierPilotCircleTree000290.covered
#print axioms covered
end FourierPilotCircleTree000268
