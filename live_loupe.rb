live_loop :flibble do
  # define the path
  mymusicpath = "/Users/chris/Library/Mobile Documents/com~apple~CloudDocs/Multimedia/Samples/Drum/Bitkits/Drums/Tom/"

  # get only wav files(as an array)
  files = Dir[
    mymusicpath + "*.wav"
  ]

  # summon a new random number generator
  rgen = Random.new

  # repeat this until the array is empty
  until files.size == 0 do
    
    # pick a random location in the array
    rspot = rgen.rand(0...files.size)
    
    # play the file
    sample files[rspot]
    
    # chill out
    sleep 0.5
    
    # delete a file
    files.delete_at(rspot)
  end
end