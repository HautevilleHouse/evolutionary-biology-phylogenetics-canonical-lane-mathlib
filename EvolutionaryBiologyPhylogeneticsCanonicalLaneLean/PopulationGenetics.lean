import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyPhylogeneticsCanonicalLaneLean

structure PopulationGeneticsPackage where
  effectivePopulationSize : Nat
  mutationRate : Float
  migrationRate : Float
  selectionCoefficient : Float
  wrightFisherModel : Prop
  coalescentTheory : Prop
  alleleFrequencySpectrum : Type u

structure PopulationGeneticsEvidence (P : PopulationGeneticsPackage) where
  effectivePopulationSizePositive : P.effectivePopulationSize > 0
  mutationRateNonnegative : P.mutationRate ≥ 0
  migrationRateNonnegative : P.migrationRate ≥ 0
  selectionCoefficientReal : Prop
  wrightFisherModelClosed : P.wrightFisherModel
  coalescentTheoryClosed : P.coalescentTheory
  alleleFrequencySpectrumDerived : Prop

def PopulationGeneticsClosed (P : PopulationGeneticsPackage) : Prop :=
  P.effectivePopulationSize > 0 ∧ P.mutationRate ≥ 0 ∧ P.migrationRate ≥ 0 ∧
  P.wrightFisherModel ∧ P.coalescentTheory

theorem population_genetics_closed_from_evidence (P : PopulationGeneticsPackage) (E : PopulationGeneticsEvidence P) : PopulationGeneticsClosed P := by
  exact And.intro E.effectivePopulationSizePositive (And.intro E.mutationRateNonnegative (And.intro E.migrationRateNonnegative (And.intro E.wrightFisherModelClosed E.coalescentTheoryClosed)))

end EvolutionaryBiologyPhylogeneticsCanonicalLaneLean
end HautevilleHouse