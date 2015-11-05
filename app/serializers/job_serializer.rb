class JobSerializer < ActiveModel::Serializer

  attributes  :id,
              :user_id,
              :ever_work_for_6_plus_months_with_regular_solvent_exposure?,
              :ever_work_for_6_plus_months_with_regular_metal_fume_exposure?,
              :ever_work_for_6_plus_months_with_regular_pesticide_exposure?
end
