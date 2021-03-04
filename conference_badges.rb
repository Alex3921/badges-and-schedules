# Write your code here.


# Write a badge_maker method that, when provided a person's name, 
# will create and return a message.

def badge_maker(name)
    "Hello, my name is #{name}."
end


# Write a batch_badge_creator method that takes an array of names 
# as an argument and returns an array of badge messages.

def batch_badge_creator(speaker_lineup)
    speaker_lineup.collect{|speaker| badge_maker(speaker)}
end


# Write a method called assign_rooms that takes the list of speakers 
# and assigns each speaker to a room. Make sure that each room only has one speaker.

def assign_rooms(speakers)
  assigned_rooms = []
  speakers.map.with_index(1) { |speaker, index| assigned_rooms << "Hello, #{speaker}! You'll be assigned to room #{index}!"}
  return assigned_rooms
end


# Create a method called printer that will output first the results of the 
# batch_badge_creator method and then of the assign_rooms method to the screen.

def printer(speakers)
    batch_badge_creator(speakers).each do |badge|
        puts badge
    end
    assign_rooms(speakers).each do |assignment|
        puts assignment
    end
end
