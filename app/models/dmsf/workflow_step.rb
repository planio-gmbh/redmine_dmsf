# == Schema Information
#
# Table name: dmsf_workflow_step
#
#  id                 :integer          not null, primary key
#  workflow_id        :integer          not mull
#  step               :boolean          not null
#  user_id            :integer          not null
#  operator           :boolean          not null
#
module Dmsf
  class WorkflowStep < Dmsf::ActiveRecordBase
    belongs_to :workflow
    
    has_many :workflow_step_assignments, :dependent => :destroy
        
    validates :workflow_id, :presence => true
    validates :step, :presence => true
    validates :user_id, :presence => true
    validates :operator, :presence => true
  end
end