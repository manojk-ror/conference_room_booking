class CreateConferenceRooms < ActiveRecord::Migration[5.0]
  def change
    create_table :conference_rooms do |t|
      t.string :name
      t.integer :capacity
      t.string :floor
      t.string :location
      t.string :phone
      t.boolean :slide_projector, default: :true
      t.boolean :film_projector
      t.boolean :remote_control_for_projectors, default: :true
      t.boolean :wifi_capability
      t.boolean :video_conferencing_system
      t.boolean :smart_board
      t.boolean :loudspeakers, default: :true
      t.boolean :laser_pointers, default: :true
      t.boolean :projector_screens, default: :true
      t.boolean :microphones, default: :true
      t.boolean :computer, default: :true
      t.boolean :room_sound_proofed, default: :true
      t.boolean :electrical_power_sufficient, default: :true
      t.boolean :emergency_alarms, default: :true
      t.boolean :cctv
      t.boolean :air_conditioning, default: :true
      t.boolean :cd_dvd_player, default: :true
      t.boolean :high_speed_internet, default: :true
      t.boolean :intelligent_lighting
      t.boolean :comfortable_adjustable_chairs

      t.timestamps
    end
  end
end
