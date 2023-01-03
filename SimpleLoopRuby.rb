#Piano
in_thread do
  use_synth :piano
  2.times do
    play chord( :D5, :major)
    sleep 0.25
    play chord( :D5, :major)
    sleep 0.75
    play chord( :D5, :major)
    sleep 0.25
    
    play chord( :A4, :major)
    sleep 0.5
    play chord( :A4, :major)
    sleep 0.5
    
    play chord( :G, :major)
    sleep 0.5
    play chord( :G, :major)
    sleep 0.5
    
    play chord( :A, :major)
    sleep 1
  end
  # Fast piano
  8.times do
    play chord( :G, :major)
    sleep 0.25
  end
  
  8.times do
    play chord( :A, :major)
    sleep 0.25
  end
  
  play chord( :D5, :major)
end


#Bass
in_thread do
  use_synth :sine
  2.times do
    play :D2, release: 0.35, amp: 0.5
    sleep 0.25
    play :D2, release: 0.35, amp: 0.5
    sleep 0.75
    play :D2, release: 0.35, amp: 0.5
    sleep 0.25
    
    play :A2, release: 0.35, amp: 0.5
    sleep 0.5
    play :A2, release: 0.35, amp: 0.5
    sleep 0.5
    
    play :G2, release: 0.35, amp: 0.5
    sleep 0.5
    play :G2, release: 0.35, amp: 0.5
    sleep 0.5
    
    play :A2, release: 0.35, amp: 0.5
    sleep 1
  end
  # Faster Bass
  8.times do
    play :G2, release: 0.25, amp: 0.5
    sleep 0.25
  end
  
  8.times do
    play :A2, release: 0.25, amp: 0.5
    sleep 0.25
  end
  
  play :D2, amp: 0.5, release: 0.75
end

# Drums
in_thread do
  25.times do
    sample :drum_heavy_kick
    sleep 0.5
  end
end

in_thread do
  10.times do
    sleep 0.5
    sample :drum_snare_hard
    sleep 0.5
  end
end

in_thread do
  25.times do
    sample :drum_cymbal_closed
    sleep 0.25
  end
end

in_thread do
  4.times do
    sample :drum_cymbal_open, amp: 0.25, release: 0.5
    sleep 4
  end
end

in_thread do
  sleep 3.9
  4.times do
    sample :drum_snare_soft
    sleep 4
  end
end

in_thread do
  sleep 25
  sample :drum_cymbal_open
end


