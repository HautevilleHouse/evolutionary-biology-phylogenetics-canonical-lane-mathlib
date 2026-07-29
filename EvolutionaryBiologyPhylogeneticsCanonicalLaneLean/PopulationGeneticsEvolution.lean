import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyPhylogeneticsCanonicalLaneLean

structure PopulationGeneticsEvolutionPackage where
  effectivePopulationSize : Type u
  selectionCoefficient : Type v
  fixationProbability : Prop
  geneticDriftModel : Prop
  alleleFrequencyTrajectory : Prop

structure PopulationGeneticsEvolutionEvidence (P : PopulationGeneticsEvolutionPackage) where
  fixationProbabilityClosed : P.fixationProbability
  geneticDriftModelClosed : P.geneticDriftModel
  alleleFrequencyTrajectoryClosed : P.alleleFrequencyTrajectory

def PopulationGeneticsEvolutionClosed (P : PopulationGeneticsEvolutionPackage) : Prop :=
  P.fixationProbability ∧ P.geneticDriftModel ∧ P.alleleFrequencyTrajectory

theorem population_genetics_evolution_closed_from_evidence
    (P : PopulationGeneticsEvolutionPackage) (E : PopulationGeneticsEvolutionEvidence P) :
    PopulationGeneticsEvolutionClosed P := by
  exact And.intro E.fixationProbabilityClosed
    (And.intro E.geneticDriftModelClosed E.alleleFrequencyTrajectoryClosed)

end EvolutionaryBiologyPhylogeneticsCanonicalLaneLean
end HautevilleHouse