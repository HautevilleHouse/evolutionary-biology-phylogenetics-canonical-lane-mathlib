import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyPhylogeneticsCanonicalLaneLean

structure HardyWeinbergEquilibriumPackage where
  expectedGenotypeFrequencies : Type u
  observedGenotypeFrequencies : Type v
  chiSquaredStatistic : Prop
  pValueThreshold : Prop
  populationLarge : Prop
  randomMating : Prop
  noSelection : Prop
  noMutation : Prop
  noGeneFlow : Prop

default instance : Inhabited HardyWeinbergEquilibriumPackage := by
  refine ⟨{ expectedGenotypeFrequencies := (),
    observedGenotypeFrequencies := (),
    chiSquaredStatistic := False,
    pValueThreshold := False,
    populationLarge := False,
    randomMating := False,
    noSelection := False,
    noMutation := False,
    noGeneFlow := False }⟩

structure HardyWeinbergEquilibriumEvidence (H : HardyWeinbergEquilibriumPackage) where
  chiSquaredStatisticClosed : H.chiSquaredStatistic
  pValueThresholdClosed : H.pValueThreshold
  assumptionsClosed : H.populationLarge ∧ H.randomMating ∧ H.noSelection ∧ H.noMutation ∧ H.noGeneFlow

def HardyWeinbergEquilibriumClosed (H : HardyWeinbergEquilibriumPackage) : Prop :=
  H.chiSquaredStatistic ∧ H.pValueThreshold ∧ H.populationLarge ∧ H.randomMating ∧ H.noSelection ∧ H.noMutation ∧ H.noGeneFlow

theorem hardy_weinberg_equilibrium_closed_from_evidence
    (H : HardyWeinbergEquilibriumPackage) (E : HardyWeinbergEquilibriumEvidence H) :
    HardyWeinbergEquilibriumClosed H := by
  exact And.intro E.chiSquaredStatisticClosed
    (And.intro E.pValueThresholdClosed E.assumptionsClosed)

end EvolutionaryBiologyPhylogeneticsCanonicalLaneLean
end HautevilleHouse
