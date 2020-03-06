use_bpm 129
lemon = "C:/Users/carlos_ordonez/Downloads/challenge_d/travis_sounds/khaled1.wav"
dj = "C:/Users/carlos_ordonez/Downloads/challenge_d/travis_sounds/boiiii.wav"
vocals = "C:/Users/carlos_ordonez/Downloads/challenge_d/travis_sounds/lemon.wav"
sample lemon, amp: 4
sleep 9
notes = [:b1, :c2, :db2, :d2, :e2]
define:pop do
  play:e4
  play:g4
end
define:pep do
  play:e4
  play:g4
  play:c3
end
define:popp do
  play:g4
  play:d4
end
live_loop :fjf do
  b = 0
  30.times do
    b = 0
    a = 10
    play notes[b], amp: a
    sleep 2
    a = a - 1
    print a
    print b
    b = b + 1
    if
      b > 5
    else
      print"power"
    end
    a = 10
  end
  stop
end

x = 0.5
#It wouldn't make sense to add array's or changing the varibles in my code
live_loop:reel do
  3.times do
    pep
    sleep x
    play :c4
    sleep x
    pop
    sleep x
    play :c4
    sleep x
    pop
    sleep x
    play :c4
    sleep x
    pop
    sleep x
    play :c4
    sleep x
    pep
    sleep x
    play :c4
    sleep x
    pop
    sleep x
    play :c4
    sleep x
    play :e4
    play :a4
    play :a3
    sleep x
    play :c4
    sleep x
    play :e4
    play :g4
    play :g3
    sleep x
    play :c4
    sleep x
    play :g4
    play :d4
    sleep x
    play :c4
    sleep x
    popp
    sleep x
    play :c4
    sleep x
    popp
    sleep x
    play :c4
    sleep x
    play :g4
    play :d4
    play :b2
    sleep x
    play :c4
    sleep x
    popp
    sleep x
    play :c4
    sleep x
    play :a4
    play :d4
    play :a3
    sleep x
    play :c4
    sleep x
    play :g4
    play :d4
    play :g3
    sleep x
    play :c4
    sleep x
  end
  stop
end
sleep 20


live_loop:vocals do
  5.times do
    sample vocals
    sleep 5
  end
  stop
end
sleep 22

live_loop:s do
  1.times do
    sample dj
    sleep 8
  end
  stop
end














