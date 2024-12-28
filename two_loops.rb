# i am a function, you have to call me in order for me to run (see bottom of page)
def two_loops(wavpath,anotherwavpath)

  # get only wav files(as arrays)
  files = Dir[
    wavpath + "*.wav"
  ]
  anotherfiles = Dir[
    anotherwavpath + "*.wav"
  ]
  
  # summon a new random number generator
  rgen = Random.new
  
  # repeat this until either array is empty
  until files.size == 0 || anotherfiles.size == 0 do

    # pick a random location in each of the arrays
    rspot = rgen.rand(0...files.size)
    anotherspot = rgen.rand(0...anotherfiles.size)

    with_fx :reverb do # first reverb
      with_fx :echo, phase: rgen.rand(1.33...1.66) do # then echo, which is used as a delay here to set random phase
        (rgen.rand(1...4)).times do # play the files between 1 and 4 times
          # play the files, which different rates, start times and end times each time the code is fired
          sample files[rspot], rate: rgen.rand(-1.45...1.45), start: rgen.rand(0.1...0.7), end: rgen.rand(0.1...0.7)
          sample files[anotherspot], rate: rgen.rand(-1.45...1.45), start: rgen.rand(0.1...0.7), end: rgen.rand(0.1...0.7) 
        end
      end
    end
    sleep 1
    files.delete_at(rspot)
    files.delete_at(anotherspot)
  end
  # end
end
live_loop :flibble do
  two_loops(
    "/Users/chris/Library/Mobile Documents/com~apple~CloudDocs/Multimedia/Samples/One Shot/Bitkits/Blip & Blop/",
    "/Users/chris/Library/Mobile Documents/com~apple~CloudDocs/Multimedia/Samples/One Shot/Bitkits/Glitch/"
  )
end