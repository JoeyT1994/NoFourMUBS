import FourierPilotCircleTree001268
import FourierPilotCircleTree001269
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001267
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, true, false]
def state : State := ![6, 5, 4, 4, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree001268.state FourierPilotCircleTree001269.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001268.covered FourierPilotCircleTree001269.covered
#print axioms covered
end FourierPilotCircleTree001267
