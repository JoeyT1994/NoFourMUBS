import FourierPilotCircleTree001293
import FourierPilotCircleTree001302
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001292
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, true, false]
def state : State := ![111, 40, 32, 34, 61]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree001293.state FourierPilotCircleTree001302.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001293.covered FourierPilotCircleTree001302.covered
#print axioms covered
end FourierPilotCircleTree001292
