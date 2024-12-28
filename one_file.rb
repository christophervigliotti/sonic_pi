rgen = Random.new
live_loop :flibble do
  puts 'loop start'
  the_rate = 1 # rgen.rand(-1.45...1.45)
  the_start = rgen.rand(0.00010...0.99999)
  the_end = the_start + 0.00001
  the_rate = rgen.rand(0.65...0.85)
  the_sleep = rgen.rand(3.0001...5.9999)
  puts the_start
  puts 'playing sound segment now'
  sample "/Users/chris/Library/Mobile Documents/com~apple~CloudDocs/Chris/Documents/Code/Sonic Pi/harvard_list_01.wav", rate: the_rate, start: the_start, end: the_end
  sleep the_sleep
  puts 'loop end'
end