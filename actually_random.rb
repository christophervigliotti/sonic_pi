# define the path
mymusicpath = "/Users/chris/Library/Mobile Documents/com~apple~CloudDocs/Multimedia/Samples/Drum/Bitkits/Drums/Tom/"

# get only wav files(as an array)
files = Dir[
  mymusicpath + "*.wav"
]

# summon a new random number generator
rgen = Random.new

# pick a random location in the array
rspot = rgen.rand(0...(files.size - 1))

# play the file
sample files[rspot]