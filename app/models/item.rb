class Item < ActiveRecord::Base
  belongs_to :note
  belongs_to :category
  validates_associated :category
  validates_presence_of :category, :message=>"não é valido!"
  validates_format_of :done_before_type_cast, :with => /[01]/, :message=>"must be 0 or 1"
  validates_inclusion_of :priority, :in=>1..5, :message=>"must be between 1 (high) and 5 (low)"
  validates_presence_of :description
  validates_length_of :description, :maximum=>40
  validates_format_of :private_before_type_cast, :with => /[01]/, :message=>"must be 0 or 1"

  def before_destroy
    unless note_id.nil?
      Note.find(note_id).destroy
    end
  end
end

