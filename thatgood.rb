use_bpm 175
# I assigning a variab;
a ="C:/Users/carlos_ordonez/Downloads/challenge_d/travis_sounds/skrt.wav"
b ="C:/Users/carlos_ordonez/Downloads/challenge_d/travis_sounds/ohh.wav"
c ="C:/Users/carlos_ordonez/Downloads/challenge_d/travis_sounds/dope.wav"
another_variable = 2
nocap ="C:/Users/carlos_ordonez/Downloads/challenge_d/travis_sounds/NoCap.wav"
Ice = "C:/Users/carlos_ordonez/Downloads/challenge_d/travis_sounds/Gaby and Alex Pretend Play Selling Ice Cream and other Fun Kids Food Toys.wav"
#I'm defining the 1st and 2nd measure as a function becasue it repeats twice ------------------------------------------------------------------------------------------------------------------------------------------------
define :m2 do
  print "m2 start"
  play:e4
  sleep 0.5
  play:d4
  sleep 0.5
  play:c4
  sleep 1
  play:c4
  sleep 0.5
  play:d4
  sleep 0.5
  play:c4
  sleep 0.5
  play:g3
  sleep 0.5
  play:e3
  sleep 0.5
  play:f3
  sleep 0.5
  play:g3
  sleep 0.5
  play:a3
  sleep 0.5
  play:g3
  sleep 0.5
  play:f3
  sleep 0.5
  play:g3
  sleep 1
end
#I'm defining the parameterised function to allow me to specify the notes I'm playing and also specify the amp for the notes I choose.----------------------------------------------------------------------------------------
define :Second_Melody do |n1, n2, n3, n4, n5, n6, n7, n8, x |
  play n1, amp: x
  sleep 2
  play n2, amp: x
  sleep 2
  play n3, amp: x
  sleep 2
  play n4, amp: x
  sleep 2
  play n5, amp: x
  sleep 2
  play n6, amp: x
  sleep 2
  play n7, amp: x
  sleep 2
  play n8, amp: x
  sleep 2
end
# I'm defining the 3rd and 4th measure of my song in the arrays along with their unique sleeps -------------------------------------------------------------------------------------------------------------------------------
my_note = [:c4,:d4,:e4,:e4,:e4,:c4,:d4,:d4,:e4,:d4,:c4,:d4]
my_sleep = [0.5, 0.5, 1, 1, 1, 0.5, 0.5, 0.5,0.5,0.5,0.5,1]
# I'm defining the 7th and 8th measure of my song in the arrays along with their unique sleeps -------------------------------------------------------------------------------------------------------------------------------
my_notes = [:c4,:d4,:e4,:g4,:a4,:g4,:e4,:c4,:e4,:f4,:e4,:c4]
my_sleeps = [0.5, 0.5, 0.5, 1, 0.5, 0.5, 0.5,0.5, 0.5,1,1,1]

sample nocap, amp: 3
#sample duration = 8.781944444444443 ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
sleep 8.781944444444443
#This is the loop that determines which sample to play randomly -------------------------------------------------------------------------------------------------------------------------------------------------------------
live_loop :randomness do
  8.times do
    sample choose([a, b, c])
    sleep 8
  end
  stop
end
#This sample plays one of the main instruments the "heavy kick" 15 times then stops------------------------------------------------------------------------------------------------------------------------------------------
live_loop :drums do
  15.times do
    sample :drum_heavy_kick
    sleep 1.5
    sample :drum_heavy_kick
    sleep 1.5
    sample :drum_heavy_kick
    sleep 0.5
    sample :drum_heavy_kick
    sleep 0.5
  end
  stop
end
#This sample plays one of the main instruments the "snap" 15 times at an amp pf 1.5 (.5 louder then ) then stops ------------------------------------------------------------------------------------------------------------
live_loop :snap do
  15.times do
    sample :perc_snap, amp: 1.5
    sleep 2
    sample :perc_snap, amp: 1.5
    sleep 2
  end
  stop
end

#This is where I am calling my parameterised function and I'm specifying the 8 different notes that defined. I am also defining a ninth value as a variable that controls the amp. -----------------------------------------
Second_Melody :c3, :e3, :g3, :b3, :c3, :b3, :g3, :e3, another_variable

use_bpm 175
#This is the loop that is my melody, it is composed of 2 functions and two arrays.------------------------------------------------------------------------------------------------------------------------------------------
live_loop:Full_Melody do
  2.times do
    i = 0
    m2
    print "hey"
    i = 0
    12.times do
      play my_note[i]
      sleep my_sleep[i]
      i = i + 1
      print "turkey"
    end
    m2
    i = 0
    12.times do
      play my_notes[i]
      sleep my_sleeps[i]
      i = i + 1
      if i==0
      else print "bowwow"
      end
    end
  end
  stop
end

sleep 60
#This controls the outro the outro and lowers the amp to a volume of 0.4 ----------------------------------------------------------------------------------------------------------------------------------------------------
b = 4
4.times do
  b = b - 0.9
  print "decrease the rate by 1"
  sample Ice, amp: b
  sleep 6.211315192743764
end




