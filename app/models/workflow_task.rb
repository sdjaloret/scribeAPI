class WorkflowTask
  include Mongoid::Document

  field    :key,                                     type: String
  field    :tool,                                    type: String
  field    :instruction,                             type: String
  field    :help,                                    type: String
  field    :generates_subjects,                      type: Boolean
  field    :generates_subject_type,                  type: String
  field    :tool_config,                             type: Hash
  field    :next_task,                               type: String

  embedded_in :workflow

  def find_tool_box(subToolIndex)
    tool_config["tools"][subToolIndex] if tool_config["tools"]
  end

end