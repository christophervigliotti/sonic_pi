def one_loop(wavpath)
  # define the path
  # live_loop :flibble do
  
  # get only wav files(as an array)
  files = Dir[
    wavpath + "*.wav"
  ]
  
  # summon a new random number generator
  rgen = Random.new
  
  # repeat this until the array is empty
  until files.size == 0 do
    puts 'one_loop loop'
    # pick a random location in the array
    rspot = rgen.rand(0...files.size)
    # play the file
    sample files[rspot]
    sleep 1
    files.delete_at(rspot)
  end
  # end
end

one_loop("/Users/chris/Library/Mobile Documents/com~apple~CloudDocs/Multimedia/Samples/One Shot/Bitkits/Blip & Blop/")
one_loop("/Users/chris/Library/Mobile Documents/com~apple~CloudDocs/Multimedia/Samples/One Shot/Bitkits/Glitch/")